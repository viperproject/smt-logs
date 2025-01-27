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
(declare-sort T@Field_15741_53 0)
(declare-sort T@Field_15754_15755 0)
(declare-sort T@Field_22027_3610 0)
(declare-sort T@Field_9998_47170 0)
(declare-sort T@Field_9998_47037 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_15702 0)) (((PolymorphicMapType_15702 (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| (Array T@Ref T@Field_15754_15755 Real)) (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| (Array T@Ref T@Field_22027_3610 Real)) (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| (Array T@Ref T@Field_15741_53 Real)) (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| (Array T@Ref T@Field_9998_47037 Real)) (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| (Array T@Ref T@Field_9998_47170 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16230 0)) (((PolymorphicMapType_16230 (|PolymorphicMapType_16230_15741_53#PolymorphicMapType_16230| (Array T@Ref T@Field_15741_53 Bool)) (|PolymorphicMapType_16230_15741_15755#PolymorphicMapType_16230| (Array T@Ref T@Field_15754_15755 Bool)) (|PolymorphicMapType_16230_15741_3610#PolymorphicMapType_16230| (Array T@Ref T@Field_22027_3610 Bool)) (|PolymorphicMapType_16230_15741_47037#PolymorphicMapType_16230| (Array T@Ref T@Field_9998_47037 Bool)) (|PolymorphicMapType_16230_15741_48348#PolymorphicMapType_16230| (Array T@Ref T@Field_9998_47170 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15681 0)) (((PolymorphicMapType_15681 (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| (Array T@Ref T@Field_15741_53 Bool)) (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| (Array T@Ref T@Field_15754_15755 T@Ref)) (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| (Array T@Ref T@Field_22027_3610 Int)) (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| (Array T@Ref T@Field_9998_47170 T@PolymorphicMapType_16230)) (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| (Array T@Ref T@Field_9998_47037 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_15741_53)
(declare-fun f_7 () T@Field_15754_15755)
(declare-fun g () T@Field_22027_3610)
(declare-fun succHeap (T@PolymorphicMapType_15681 T@PolymorphicMapType_15681) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15681 T@PolymorphicMapType_15681) Bool)
(declare-fun state (T@PolymorphicMapType_15681 T@PolymorphicMapType_15702) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15702) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16230)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_10049| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_10049| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_10049| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_10049| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15681 T@PolymorphicMapType_15681 T@PolymorphicMapType_15702) Bool)
(declare-fun IsPredicateField_9998_47128 (T@Field_9998_47037) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9998 (T@Field_9998_47037) T@Field_9998_47170)
(declare-fun HasDirectPerm_9998_47101 (T@PolymorphicMapType_15702 T@Ref T@Field_9998_47037) Bool)
(declare-fun IsWandField_9998_48875 (T@Field_9998_47037) Bool)
(declare-fun WandMaskField_9998 (T@Field_9998_47037) T@Field_9998_47170)
(declare-fun dummyHeap () T@PolymorphicMapType_15681)
(declare-fun ZeroMask () T@PolymorphicMapType_15702)
(declare-fun InsidePredicate_15741_15741 (T@Field_9998_47037 T@FrameType T@Field_9998_47037 T@FrameType) Bool)
(declare-fun IsPredicateField_9998_9999 (T@Field_15754_15755) Bool)
(declare-fun IsWandField_9998_9999 (T@Field_15754_15755) Bool)
(declare-fun IsPredicateField_10001_3610 (T@Field_22027_3610) Bool)
(declare-fun IsWandField_10001_3610 (T@Field_22027_3610) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9998_52392 (T@Field_9998_47170) Bool)
(declare-fun IsWandField_9998_52408 (T@Field_9998_47170) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9998_53 (T@Field_15741_53) Bool)
(declare-fun IsWandField_9998_53 (T@Field_15741_53) Bool)
(declare-fun HasDirectPerm_9998_52846 (T@PolymorphicMapType_15702 T@Ref T@Field_9998_47170) Bool)
(declare-fun HasDirectPerm_9998_3610 (T@PolymorphicMapType_15702 T@Ref T@Field_22027_3610) Bool)
(declare-fun HasDirectPerm_9998_53 (T@PolymorphicMapType_15702 T@Ref T@Field_15741_53) Bool)
(declare-fun HasDirectPerm_9998_9999 (T@PolymorphicMapType_15702 T@Ref T@Field_15754_15755) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15702 T@PolymorphicMapType_15702 T@PolymorphicMapType_15702) Bool)
(declare-fun |Set#Difference_10049| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_10049| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_10049| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_15681) (Heap1 T@PolymorphicMapType_15681) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15681) (Mask T@PolymorphicMapType_15702) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15681) (Heap1@@0 T@PolymorphicMapType_15681) (Heap2 T@PolymorphicMapType_15681) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9998_47170) ) (!  (not (select (|PolymorphicMapType_16230_15741_48348#PolymorphicMapType_16230| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16230_15741_48348#PolymorphicMapType_16230| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9998_47037) ) (!  (not (select (|PolymorphicMapType_16230_15741_47037#PolymorphicMapType_16230| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16230_15741_47037#PolymorphicMapType_16230| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_22027_3610) ) (!  (not (select (|PolymorphicMapType_16230_15741_3610#PolymorphicMapType_16230| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16230_15741_3610#PolymorphicMapType_16230| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_15754_15755) ) (!  (not (select (|PolymorphicMapType_16230_15741_15755#PolymorphicMapType_16230| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16230_15741_15755#PolymorphicMapType_16230| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_15741_53) ) (!  (not (select (|PolymorphicMapType_16230_15741_53#PolymorphicMapType_16230| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16230_15741_53#PolymorphicMapType_16230| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.336:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_10049| (|Set#Union_10049| a@@0 b@@0) b@@0) (|Set#Union_10049| a@@0 b@@0))
 :qid |stdinbpl.288:18|
 :skolemid |38|
 :pattern ( (|Set#Union_10049| (|Set#Union_10049| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_10049| (|Set#Intersection_10049| a@@1 b@@1) b@@1) (|Set#Intersection_10049| a@@1 b@@1))
 :qid |stdinbpl.292:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_10049| (|Set#Intersection_10049| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_10049| r) o) (= r o))
 :qid |stdinbpl.257:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_10049| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_10049| (|Set#Union_10049| a@@2 b@@2)) (|Set#Card_10049| (|Set#Intersection_10049| a@@2 b@@2))) (+ (|Set#Card_10049| a@@2) (|Set#Card_10049| b@@2)))
 :qid |stdinbpl.296:18|
 :skolemid |42|
 :pattern ( (|Set#Card_10049| (|Set#Union_10049| a@@2 b@@2)))
 :pattern ( (|Set#Card_10049| (|Set#Intersection_10049| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.339:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15681) (ExhaleHeap T@PolymorphicMapType_15681) (Mask@@0 T@PolymorphicMapType_15702) (pm_f_37 T@Field_9998_47037) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9998_47101 Mask@@0 null pm_f_37) (IsPredicateField_9998_47128 pm_f_37)) (= (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@0) null (PredicateMaskField_9998 pm_f_37)) (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| ExhaleHeap) null (PredicateMaskField_9998 pm_f_37)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9998_47128 pm_f_37) (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| ExhaleHeap) null (PredicateMaskField_9998 pm_f_37)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15681) (ExhaleHeap@@0 T@PolymorphicMapType_15681) (Mask@@1 T@PolymorphicMapType_15702) (pm_f_37@@0 T@Field_9998_47037) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9998_47101 Mask@@1 null pm_f_37@@0) (IsWandField_9998_48875 pm_f_37@@0)) (= (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@1) null (WandMaskField_9998 pm_f_37@@0)) (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| ExhaleHeap@@0) null (WandMaskField_9998 pm_f_37@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_9998_48875 pm_f_37@@0) (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| ExhaleHeap@@0) null (WandMaskField_9998 pm_f_37@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15681) (ExhaleHeap@@1 T@PolymorphicMapType_15681) (Mask@@2 T@PolymorphicMapType_15702) (o_20 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@2) o_20 $allocated) (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| ExhaleHeap@@1) o_20 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| ExhaleHeap@@1) o_20 $allocated))
)))
(assert (forall ((p T@Field_9998_47037) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15741_15741 p v_1 p w))
 :qid |stdinbpl.234:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15741_15741 p v_1 p w))
)))
(assert  (not (IsPredicateField_9998_9999 f_7)))
(assert  (not (IsWandField_9998_9999 f_7)))
(assert  (not (IsPredicateField_10001_3610 g)))
(assert  (not (IsWandField_10001_3610 g)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15681) (ExhaleHeap@@2 T@PolymorphicMapType_15681) (Mask@@3 T@PolymorphicMapType_15702) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_15702) (o_2@@4 T@Ref) (f_4@@4 T@Field_9998_47170) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_9998_52392 f_4@@4))) (not (IsWandField_9998_52408 f_4@@4))) (<= (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_15702) (o_2@@5 T@Ref) (f_4@@5 T@Field_9998_47037) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_9998_47128 f_4@@5))) (not (IsWandField_9998_48875 f_4@@5))) (<= (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_15702) (o_2@@6 T@Ref) (f_4@@6 T@Field_15741_53) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_9998_53 f_4@@6))) (not (IsWandField_9998_53 f_4@@6))) (<= (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_15702) (o_2@@7 T@Ref) (f_4@@7 T@Field_22027_3610) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_10001_3610 f_4@@7))) (not (IsWandField_10001_3610 f_4@@7))) (<= (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_15702) (o_2@@8 T@Ref) (f_4@@8 T@Field_15754_15755) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9998_9999 f_4@@8))) (not (IsWandField_9998_9999 f_4@@8))) (<= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_15702) (o_2@@9 T@Ref) (f_4@@9 T@Field_9998_47170) ) (! (= (HasDirectPerm_9998_52846 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9998_52846 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_15702) (o_2@@10 T@Ref) (f_4@@10 T@Field_9998_47037) ) (! (= (HasDirectPerm_9998_47101 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9998_47101 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15702) (o_2@@11 T@Ref) (f_4@@11 T@Field_22027_3610) ) (! (= (HasDirectPerm_9998_3610 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9998_3610 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15702) (o_2@@12 T@Ref) (f_4@@12 T@Field_15741_53) ) (! (= (HasDirectPerm_9998_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9998_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15702) (o_2@@13 T@Ref) (f_4@@13 T@Field_15754_15755) ) (! (= (HasDirectPerm_9998_9999 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9998_9999 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15681) (ExhaleHeap@@3 T@PolymorphicMapType_15681) (Mask@@14 T@PolymorphicMapType_15702) (pm_f_37@@1 T@Field_9998_47037) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_9998_47101 Mask@@14 null pm_f_37@@1) (IsPredicateField_9998_47128 pm_f_37@@1)) (and (and (and (and (forall ((o2_37 T@Ref) (f_29 T@Field_15741_53) ) (!  (=> (select (|PolymorphicMapType_16230_15741_53#PolymorphicMapType_16230| (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@4) null (PredicateMaskField_9998 pm_f_37@@1))) o2_37 f_29) (= (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@4) o2_37 f_29) (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| ExhaleHeap@@3) o2_37 f_29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| ExhaleHeap@@3) o2_37 f_29))
)) (forall ((o2_37@@0 T@Ref) (f_29@@0 T@Field_15754_15755) ) (!  (=> (select (|PolymorphicMapType_16230_15741_15755#PolymorphicMapType_16230| (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@4) null (PredicateMaskField_9998 pm_f_37@@1))) o2_37@@0 f_29@@0) (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@4) o2_37@@0 f_29@@0) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| ExhaleHeap@@3) o2_37@@0 f_29@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| ExhaleHeap@@3) o2_37@@0 f_29@@0))
))) (forall ((o2_37@@1 T@Ref) (f_29@@1 T@Field_22027_3610) ) (!  (=> (select (|PolymorphicMapType_16230_15741_3610#PolymorphicMapType_16230| (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@4) null (PredicateMaskField_9998 pm_f_37@@1))) o2_37@@1 f_29@@1) (= (select (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@4) o2_37@@1 f_29@@1) (select (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| ExhaleHeap@@3) o2_37@@1 f_29@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| ExhaleHeap@@3) o2_37@@1 f_29@@1))
))) (forall ((o2_37@@2 T@Ref) (f_29@@2 T@Field_9998_47037) ) (!  (=> (select (|PolymorphicMapType_16230_15741_47037#PolymorphicMapType_16230| (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@4) null (PredicateMaskField_9998 pm_f_37@@1))) o2_37@@2 f_29@@2) (= (select (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@4) o2_37@@2 f_29@@2) (select (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| ExhaleHeap@@3) o2_37@@2 f_29@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| ExhaleHeap@@3) o2_37@@2 f_29@@2))
))) (forall ((o2_37@@3 T@Ref) (f_29@@3 T@Field_9998_47170) ) (!  (=> (select (|PolymorphicMapType_16230_15741_48348#PolymorphicMapType_16230| (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@4) null (PredicateMaskField_9998 pm_f_37@@1))) o2_37@@3 f_29@@3) (= (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@4) o2_37@@3 f_29@@3) (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| ExhaleHeap@@3) o2_37@@3 f_29@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| ExhaleHeap@@3) o2_37@@3 f_29@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_9998_47128 pm_f_37@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15681) (ExhaleHeap@@4 T@PolymorphicMapType_15681) (Mask@@15 T@PolymorphicMapType_15702) (pm_f_37@@2 T@Field_9998_47037) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_9998_47101 Mask@@15 null pm_f_37@@2) (IsWandField_9998_48875 pm_f_37@@2)) (and (and (and (and (forall ((o2_37@@4 T@Ref) (f_29@@4 T@Field_15741_53) ) (!  (=> (select (|PolymorphicMapType_16230_15741_53#PolymorphicMapType_16230| (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@5) null (WandMaskField_9998 pm_f_37@@2))) o2_37@@4 f_29@@4) (= (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@5) o2_37@@4 f_29@@4) (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| ExhaleHeap@@4) o2_37@@4 f_29@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| ExhaleHeap@@4) o2_37@@4 f_29@@4))
)) (forall ((o2_37@@5 T@Ref) (f_29@@5 T@Field_15754_15755) ) (!  (=> (select (|PolymorphicMapType_16230_15741_15755#PolymorphicMapType_16230| (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@5) null (WandMaskField_9998 pm_f_37@@2))) o2_37@@5 f_29@@5) (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@5) o2_37@@5 f_29@@5) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| ExhaleHeap@@4) o2_37@@5 f_29@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| ExhaleHeap@@4) o2_37@@5 f_29@@5))
))) (forall ((o2_37@@6 T@Ref) (f_29@@6 T@Field_22027_3610) ) (!  (=> (select (|PolymorphicMapType_16230_15741_3610#PolymorphicMapType_16230| (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@5) null (WandMaskField_9998 pm_f_37@@2))) o2_37@@6 f_29@@6) (= (select (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@5) o2_37@@6 f_29@@6) (select (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| ExhaleHeap@@4) o2_37@@6 f_29@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| ExhaleHeap@@4) o2_37@@6 f_29@@6))
))) (forall ((o2_37@@7 T@Ref) (f_29@@7 T@Field_9998_47037) ) (!  (=> (select (|PolymorphicMapType_16230_15741_47037#PolymorphicMapType_16230| (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@5) null (WandMaskField_9998 pm_f_37@@2))) o2_37@@7 f_29@@7) (= (select (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@5) o2_37@@7 f_29@@7) (select (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| ExhaleHeap@@4) o2_37@@7 f_29@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| ExhaleHeap@@4) o2_37@@7 f_29@@7))
))) (forall ((o2_37@@8 T@Ref) (f_29@@8 T@Field_9998_47170) ) (!  (=> (select (|PolymorphicMapType_16230_15741_48348#PolymorphicMapType_16230| (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@5) null (WandMaskField_9998 pm_f_37@@2))) o2_37@@8 f_29@@8) (= (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@5) o2_37@@8 f_29@@8) (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| ExhaleHeap@@4) o2_37@@8 f_29@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| ExhaleHeap@@4) o2_37@@8 f_29@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_9998_48875 pm_f_37@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.222:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15681) (ExhaleHeap@@5 T@PolymorphicMapType_15681) (Mask@@16 T@PolymorphicMapType_15702) (o_20@@0 T@Ref) (f_29@@9 T@Field_9998_47170) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_9998_52846 Mask@@16 o_20@@0 f_29@@9) (= (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@6) o_20@@0 f_29@@9) (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| ExhaleHeap@@5) o_20@@0 f_29@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| ExhaleHeap@@5) o_20@@0 f_29@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15681) (ExhaleHeap@@6 T@PolymorphicMapType_15681) (Mask@@17 T@PolymorphicMapType_15702) (o_20@@1 T@Ref) (f_29@@10 T@Field_9998_47037) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_9998_47101 Mask@@17 o_20@@1 f_29@@10) (= (select (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@7) o_20@@1 f_29@@10) (select (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| ExhaleHeap@@6) o_20@@1 f_29@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| ExhaleHeap@@6) o_20@@1 f_29@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15681) (ExhaleHeap@@7 T@PolymorphicMapType_15681) (Mask@@18 T@PolymorphicMapType_15702) (o_20@@2 T@Ref) (f_29@@11 T@Field_22027_3610) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_9998_3610 Mask@@18 o_20@@2 f_29@@11) (= (select (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@8) o_20@@2 f_29@@11) (select (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| ExhaleHeap@@7) o_20@@2 f_29@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| ExhaleHeap@@7) o_20@@2 f_29@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15681) (ExhaleHeap@@8 T@PolymorphicMapType_15681) (Mask@@19 T@PolymorphicMapType_15702) (o_20@@3 T@Ref) (f_29@@12 T@Field_15741_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_9998_53 Mask@@19 o_20@@3 f_29@@12) (= (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@9) o_20@@3 f_29@@12) (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| ExhaleHeap@@8) o_20@@3 f_29@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| ExhaleHeap@@8) o_20@@3 f_29@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15681) (ExhaleHeap@@9 T@PolymorphicMapType_15681) (Mask@@20 T@PolymorphicMapType_15702) (o_20@@4 T@Ref) (f_29@@13 T@Field_15754_15755) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_9998_9999 Mask@@20 o_20@@4 f_29@@13) (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@10) o_20@@4 f_29@@13) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| ExhaleHeap@@9) o_20@@4 f_29@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| ExhaleHeap@@9) o_20@@4 f_29@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9998_47170) ) (! (= (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9998_47037) ) (! (= (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_15741_53) ) (! (= (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_22027_3610) ) (! (= (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15754_15755) ) (! (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15702) (SummandMask1 T@PolymorphicMapType_15702) (SummandMask2 T@PolymorphicMapType_15702) (o_2@@19 T@Ref) (f_4@@19 T@Field_9998_47170) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15702) (SummandMask1@@0 T@PolymorphicMapType_15702) (SummandMask2@@0 T@PolymorphicMapType_15702) (o_2@@20 T@Ref) (f_4@@20 T@Field_9998_47037) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15702) (SummandMask1@@1 T@PolymorphicMapType_15702) (SummandMask2@@1 T@PolymorphicMapType_15702) (o_2@@21 T@Ref) (f_4@@21 T@Field_15741_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15702) (SummandMask1@@2 T@PolymorphicMapType_15702) (SummandMask2@@2 T@PolymorphicMapType_15702) (o_2@@22 T@Ref) (f_4@@22 T@Field_22027_3610) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15702) (SummandMask1@@3 T@PolymorphicMapType_15702) (SummandMask2@@3 T@PolymorphicMapType_15702) (o_2@@23 T@Ref) (f_4@@23 T@Field_15754_15755) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_10049| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.285:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_10049| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_10049| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_10049| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_10049| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.300:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_10049| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_10049| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_10049| a@@6 x) y))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_10049| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_10049| a@@7 b@@5) y@@0))
 :qid |stdinbpl.275:18|
 :skolemid |35|
 :pattern ( (|Set#Union_10049| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_10049| a@@8 b@@6) y@@1))
 :qid |stdinbpl.277:18|
 :skolemid |36|
 :pattern ( (|Set#Union_10049| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_10049| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.261:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_10049| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_10049| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.302:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_10049| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_10049| (|Set#Difference_10049| a@@11 b@@8)) (|Set#Card_10049| (|Set#Difference_10049| b@@8 a@@11))) (|Set#Card_10049| (|Set#Intersection_10049| a@@11 b@@8))) (|Set#Card_10049| (|Set#Union_10049| a@@11 b@@8))) (= (|Set#Card_10049| (|Set#Difference_10049| a@@11 b@@8)) (- (|Set#Card_10049| a@@11) (|Set#Card_10049| (|Set#Intersection_10049| a@@11 b@@8)))))
 :qid |stdinbpl.304:18|
 :skolemid |45|
 :pattern ( (|Set#Card_10049| (|Set#Difference_10049| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_10049| s))
 :qid |stdinbpl.247:18|
 :skolemid |22|
 :pattern ( (|Set#Card_10049| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_10049| a@@12 x@@1) x@@1)
 :qid |stdinbpl.263:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_10049| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_10049| (|Set#UnionOne_10049| a@@13 x@@2)) (|Set#Card_10049| a@@13)))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Set#Card_10049| (|Set#UnionOne_10049| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_10049| (|Set#Singleton_10049| r@@0)) 1)
 :qid |stdinbpl.258:18|
 :skolemid |28|
 :pattern ( (|Set#Card_10049| (|Set#Singleton_10049| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_10049| r@@1) r@@1)
 :qid |stdinbpl.256:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_10049| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_10049| a@@14 (|Set#Union_10049| a@@14 b@@9)) (|Set#Union_10049| a@@14 b@@9))
 :qid |stdinbpl.290:18|
 :skolemid |39|
 :pattern ( (|Set#Union_10049| a@@14 (|Set#Union_10049| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_10049| a@@15 (|Set#Intersection_10049| a@@15 b@@10)) (|Set#Intersection_10049| a@@15 b@@10))
 :qid |stdinbpl.294:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_10049| a@@15 (|Set#Intersection_10049| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_10049| o@@3))
 :qid |stdinbpl.250:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_10049| o@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15681) (o_13 T@Ref) (f_66 T@Field_9998_47037) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_15681 (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@11) (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@11) (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@11) (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@11) (store (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@11) o_13 f_66 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15681 (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@11) (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@11) (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@11) (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@11) (store (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@11) o_13 f_66 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15681) (o_13@@0 T@Ref) (f_66@@0 T@Field_9998_47170) (v@@0 T@PolymorphicMapType_16230) ) (! (succHeap Heap@@12 (PolymorphicMapType_15681 (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@12) (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@12) (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@12) (store (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@12) o_13@@0 f_66@@0 v@@0) (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15681 (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@12) (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@12) (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@12) (store (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@12) o_13@@0 f_66@@0 v@@0) (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15681) (o_13@@1 T@Ref) (f_66@@1 T@Field_22027_3610) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_15681 (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@13) (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@13) (store (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@13) o_13@@1 f_66@@1 v@@1) (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@13) (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15681 (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@13) (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@13) (store (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@13) o_13@@1 f_66@@1 v@@1) (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@13) (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15681) (o_13@@2 T@Ref) (f_66@@2 T@Field_15754_15755) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_15681 (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@14) (store (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@14) o_13@@2 f_66@@2 v@@2) (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@14) (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@14) (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15681 (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@14) (store (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@14) o_13@@2 f_66@@2 v@@2) (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@14) (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@14) (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15681) (o_13@@3 T@Ref) (f_66@@3 T@Field_15741_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_15681 (store (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@15) o_13@@3 f_66@@3 v@@3) (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@15) (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@15) (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@15) (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15681 (store (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@15) o_13@@3 f_66@@3 v@@3) (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@15) (|PolymorphicMapType_15681_10001_3610#PolymorphicMapType_15681| Heap@@15) (|PolymorphicMapType_15681_9998_47214#PolymorphicMapType_15681| Heap@@15) (|PolymorphicMapType_15681_15741_47037#PolymorphicMapType_15681| Heap@@15)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.334:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.335:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_10049| s@@0) 0) (= s@@0 |Set#Empty_10049|)) (=> (not (= (|Set#Card_10049| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.253:33|
 :skolemid |24|
))))
 :qid |stdinbpl.251:18|
 :skolemid |25|
 :pattern ( (|Set#Card_10049| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_10049| (|Set#UnionOne_10049| a@@18 x@@4)) (+ (|Set#Card_10049| a@@18) 1)))
 :qid |stdinbpl.269:18|
 :skolemid |33|
 :pattern ( (|Set#Card_10049| (|Set#UnionOne_10049| a@@18 x@@4)))
)))
(assert (forall ((o_13@@4 T@Ref) (f_20 T@Field_15754_15755) (Heap@@16 T@PolymorphicMapType_15681) ) (!  (=> (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@16) o_13@@4 $allocated) (select (|PolymorphicMapType_15681_9641_53#PolymorphicMapType_15681| Heap@@16) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@16) o_13@@4 f_20) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@16) o_13@@4 f_20))
)))
(assert (forall ((p@@1 T@Field_9998_47037) (v_1@@0 T@FrameType) (q T@Field_9998_47037) (w@@0 T@FrameType) (r@@2 T@Field_9998_47037) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15741_15741 p@@1 v_1@@0 q w@@0) (InsidePredicate_15741_15741 q w@@0 r@@2 u)) (InsidePredicate_15741_15741 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.229:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15741_15741 p@@1 v_1@@0 q w@@0) (InsidePredicate_15741_15741 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.340:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_10049| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.273:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_10049| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun S () (Array T@Ref Bool))
(declare-fun s_17 () T@Ref)
(declare-fun QPMask@4 () T@PolymorphicMapType_15702)
(declare-fun PostHeap@0 () T@PolymorphicMapType_15681)
(declare-fun s1_7 () T@Ref)
(declare-fun s2_7 () T@Ref)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) T@Ref)
(declare-fun s1_4_1 () T@Ref)
(declare-fun s2_4_1 () T@Ref)
(declare-fun Heap@@17 () T@PolymorphicMapType_15681)
(declare-fun neverTriggered11 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_15702)
(declare-fun neverTriggered10 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_15702)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) T@Ref)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_15702)
(declare-fun s_16 () T@Ref)
(declare-fun s1_6 () T@Ref)
(declare-fun s2_6 () T@Ref)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) T@Ref)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 43) (let ((anon20_correct true))
(let ((anon37_Else_correct  (=> (and (not (select S s_17)) (= (ControlFlow 0 32) 29)) anon20_correct)))
(let ((anon37_Then_correct  (=> (select S s_17) (and (=> (= (ControlFlow 0 30) (- 0 31)) (HasDirectPerm_9998_9999 QPMask@4 s_17 f_7)) (=> (HasDirectPerm_9998_9999 QPMask@4 s_17 f_7) (=> (= (ControlFlow 0 30) 29) anon20_correct))))))
(let ((anon36_Else_correct  (=> (= (ControlFlow 0 28) (- 0 27)) (forall ((s_7_1 T@Ref) (s_7_2 T@Ref) ) (!  (=> (and (and (and (and (not (= s_7_1 s_7_2)) (select S s_7_1)) (select S s_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| PostHeap@0) s_7_1 f_7) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| PostHeap@0) s_7_2 f_7))))
 :qid |stdinbpl.1047:15|
 :skolemid |133|
)))))
(let ((anon34_Else_correct  (=> (and (forall ((s1_3_1 T@Ref) (s2_3_1 T@Ref) ) (!  (=> (and (select S s1_3_1) (and (select S s2_3_1) (not (= s1_3_1 s2_3_1)))) (not (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| PostHeap@0) s1_3_1 f_7) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| PostHeap@0) s2_3_1 f_7))))
 :qid |stdinbpl.1031:20|
 :skolemid |132|
 :pattern ( (select S s1_3_1) (select S s2_3_1))
)) (state PostHeap@0 QPMask@4)) (and (and (=> (= (ControlFlow 0 33) 28) anon36_Else_correct) (=> (= (ControlFlow 0 33) 30) anon37_Then_correct)) (=> (= (ControlFlow 0 33) 32) anon37_Else_correct)))))
(let ((anon16_correct true))
(let ((anon35_Else_correct  (=> (and (not (and (select S s1_7) (and (select S s2_7) (not (= s1_7 s2_7))))) (= (ControlFlow 0 26) 22)) anon16_correct)))
(let ((anon35_Then_correct  (=> (and (select S s1_7) (and (select S s2_7) (not (= s1_7 s2_7)))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (HasDirectPerm_9998_9999 QPMask@4 s1_7 f_7)) (=> (HasDirectPerm_9998_9999 QPMask@4 s1_7 f_7) (and (=> (= (ControlFlow 0 23) (- 0 24)) (HasDirectPerm_9998_9999 QPMask@4 s2_7 f_7)) (=> (HasDirectPerm_9998_9999 QPMask@4 s2_7 f_7) (=> (= (ControlFlow 0 23) 22) anon16_correct))))))))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 34) (- 0 35)) (forall ((s_5_1 T@Ref) (s_5_2 T@Ref) ) (!  (=> (and (and (and (and (not (= s_5_1 s_5_2)) (select S s_5_1)) (select S s_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_5_1 s_5_2)))
 :qid |stdinbpl.987:15|
 :skolemid |126|
))) (=> (forall ((s_5_1@@0 T@Ref) (s_5_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_5_1@@0 s_5_2@@0)) (select S s_5_1@@0)) (select S s_5_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_5_1@@0 s_5_2@@0)))
 :qid |stdinbpl.987:15|
 :skolemid |126|
)) (=> (and (and (forall ((s_5_1@@1 T@Ref) ) (!  (=> (and (select S s_5_1@@1) (< NoPerm FullPerm)) (and (qpRange8 s_5_1@@1) (= (invRecv8 s_5_1@@1) s_5_1@@1)))
 :qid |stdinbpl.993:22|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| PostHeap@0) s_5_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@4) s_5_1@@1 f_7))
 :pattern ( (select S s_5_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select S (invRecv8 o_9)) (< NoPerm FullPerm)) (qpRange8 o_9)) (= (invRecv8 o_9) o_9))
 :qid |stdinbpl.997:22|
 :skolemid |128|
 :pattern ( (invRecv8 o_9))
))) (and (forall ((s_5_1@@2 T@Ref) ) (!  (=> (select S s_5_1@@2) (not (= s_5_1@@2 null)))
 :qid |stdinbpl.1003:22|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| PostHeap@0) s_5_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@4) s_5_1@@2 f_7))
 :pattern ( (select S s_5_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select S (invRecv8 o_9@@0)) (< NoPerm FullPerm)) (qpRange8 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv8 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@4) o_9@@0 f_7) (+ (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (select S (invRecv8 o_9@@0)) (< NoPerm FullPerm)) (qpRange8 o_9@@0))) (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@4) o_9@@0 f_7) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.1009:22|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@4) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_15741_53) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| QPMask@4) o_9@@1 f_5)))
 :qid |stdinbpl.1013:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| QPMask@4) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_15754_15755) ) (!  (=> (not (= f_5@@0 f_7)) (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@4) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1013:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@4) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_22027_3610) ) (!  (=> true (= (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@4) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1013:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@4) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_9998_47037) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| QPMask@4) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1013:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| QPMask@4) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_9998_47170) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| QPMask@4) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1013:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| QPMask@4) o_9@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@4) (state PostHeap@0 QPMask@4))) (and (and (=> (= (ControlFlow 0 34) 33) anon34_Else_correct) (=> (= (ControlFlow 0 34) 23) anon35_Then_correct)) (=> (= (ControlFlow 0 34) 26) anon35_Else_correct))))))))
(let ((anon33_Then_correct true))
(let ((anon32_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 36) 21) anon33_Then_correct) (=> (= (ControlFlow 0 36) 34) anon33_Else_correct)))))
(let ((anon25_correct true))
(let ((anon39_Else_correct  (=> (and (not (and (select S s1_4_1) (and (select S s2_4_1) (not (= s1_4_1 s2_4_1))))) (= (ControlFlow 0 17) 14)) anon25_correct)))
(let ((anon39_Then_correct  (=> (and (select S s1_4_1) (and (select S s2_4_1) (not (= s1_4_1 s2_4_1)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s1_4_1 f_7) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s2_4_1 f_7)))) (=> (not (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s1_4_1 f_7) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s2_4_1 f_7))) (=> (= (ControlFlow 0 15) 14) anon25_correct))))))
(let ((anon38_Else_correct  (=> (forall ((s1_5_1 T@Ref) (s2_5_1 T@Ref) ) (!  (=> (and (select S s1_5_1) (and (select S s2_5_1) (not (= s1_5_1 s2_5_1)))) (not (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s1_5_1 f_7) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s2_5_1 f_7))))
 :qid |stdinbpl.1135:20|
 :skolemid |145|
 :pattern ( (select S s1_5_1) (select S s2_5_1))
)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((s_9_1 T@Ref) (s_9_2 T@Ref) ) (!  (=> (and (and (and (and (not (= s_9_1 s_9_2)) (select S s_9_1)) (select S s_9_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_9_1 f_7) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_9_2 f_7))))
 :qid |stdinbpl.1146:17|
 :skolemid |146|
 :pattern ( (neverTriggered11 s_9_1) (neverTriggered11 s_9_2))
))) (=> (forall ((s_9_1@@0 T@Ref) (s_9_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_9_1@@0 s_9_2@@0)) (select S s_9_1@@0)) (select S s_9_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_9_1@@0 f_7) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_9_2@@0 f_7))))
 :qid |stdinbpl.1146:17|
 :skolemid |146|
 :pattern ( (neverTriggered11 s_9_1@@0) (neverTriggered11 s_9_2@@0))
)) (=> (= (ControlFlow 0 12) (- 0 11)) (forall ((s_9_1@@1 T@Ref) ) (!  (=> (select S s_9_1@@1) (>= (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@2) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_9_1@@1 f_7) g) FullPerm))
 :qid |stdinbpl.1153:17|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_9_1@@1 f_7))
 :pattern ( (select S s_9_1@@1))
))))))))
(let ((anon32_Else_correct  (and (=> (= (ControlFlow 0 18) (- 0 20)) (forall ((s_8 T@Ref) (s_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= s_8 s_8_1)) (select S s_8)) (select S s_8_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_8 s_8_1)))
 :qid |stdinbpl.1094:17|
 :skolemid |139|
 :pattern ( (neverTriggered10 s_8) (neverTriggered10 s_8_1))
))) (=> (forall ((s_8@@0 T@Ref) (s_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_8@@0 s_8_1@@0)) (select S s_8@@0)) (select S s_8_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_8@@0 s_8_1@@0)))
 :qid |stdinbpl.1094:17|
 :skolemid |139|
 :pattern ( (neverTriggered10 s_8@@0) (neverTriggered10 s_8_1@@0))
)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall ((s_8@@1 T@Ref) ) (!  (=> (select S s_8@@1) (>= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@1) s_8@@1 f_7) FullPerm))
 :qid |stdinbpl.1101:17|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_8@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@2) s_8@@1 f_7))
 :pattern ( (select S s_8@@1))
))) (=> (forall ((s_8@@2 T@Ref) ) (!  (=> (select S s_8@@2) (>= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@1) s_8@@2 f_7) FullPerm))
 :qid |stdinbpl.1101:17|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_8@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@2) s_8@@2 f_7))
 :pattern ( (select S s_8@@2))
)) (=> (forall ((s_8@@3 T@Ref) ) (!  (=> (and (select S s_8@@3) (< NoPerm FullPerm)) (and (qpRange10 s_8@@3) (= (invRecv10 s_8@@3) s_8@@3)))
 :qid |stdinbpl.1107:22|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_8@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@2) s_8@@3 f_7))
 :pattern ( (select S s_8@@3))
)) (=> (and (forall ((o_9@@6 T@Ref) ) (!  (=> (and (select S (invRecv10 o_9@@6)) (and (< NoPerm FullPerm) (qpRange10 o_9@@6))) (= (invRecv10 o_9@@6) o_9@@6))
 :qid |stdinbpl.1111:22|
 :skolemid |142|
 :pattern ( (invRecv10 o_9@@6))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (select S (invRecv10 o_9@@7)) (and (< NoPerm FullPerm) (qpRange10 o_9@@7))) (and (= (invRecv10 o_9@@7) o_9@@7) (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@2) o_9@@7 f_7) (- (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@1) o_9@@7 f_7) FullPerm)))) (=> (not (and (select S (invRecv10 o_9@@7)) (and (< NoPerm FullPerm) (qpRange10 o_9@@7)))) (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@2) o_9@@7 f_7) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@1) o_9@@7 f_7))))
 :qid |stdinbpl.1117:22|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@2) o_9@@7 f_7))
))) (=> (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_15741_53) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| QPMask@1) o_9@@8 f_5@@4) (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| QPMask@2) o_9@@8 f_5@@4)))
 :qid |stdinbpl.1123:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| QPMask@2) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_15754_15755) ) (!  (=> (not (= f_5@@5 f_7)) (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@1) o_9@@9 f_5@@5) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@2) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1123:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@2) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_22027_3610) ) (!  (=> true (= (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@1) o_9@@10 f_5@@6) (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@2) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1123:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@2) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_9998_47037) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| QPMask@1) o_9@@11 f_5@@7) (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| QPMask@2) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1123:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| QPMask@2) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_9998_47170) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| QPMask@1) o_9@@12 f_5@@8) (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| QPMask@2) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1123:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| QPMask@2) o_9@@12 f_5@@8))
))) (and (and (=> (= (ControlFlow 0 18) 12) anon38_Else_correct) (=> (= (ControlFlow 0 18) 15) anon39_Then_correct)) (=> (= (ControlFlow 0 18) 17) anon39_Else_correct)))))))))))
(let ((anon30_Else_correct  (and (=> (= (ControlFlow 0 37) (- 0 38)) (forall ((s_3_1 T@Ref) (s_3_2 T@Ref) ) (!  (=> (and (and (and (and (not (= s_3_1 s_3_2)) (select S s_3_1)) (select S s_3_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_3_1 f_7) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_3_2 f_7))))
 :qid |stdinbpl.936:15|
 :skolemid |120|
))) (=> (forall ((s_3_1@@0 T@Ref) (s_3_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_3_1@@0 s_3_2@@0)) (select S s_3_1@@0)) (select S s_3_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_3_1@@0 f_7) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_3_2@@0 f_7))))
 :qid |stdinbpl.936:15|
 :skolemid |120|
)) (=> (and (and (forall ((s_3_1@@1 T@Ref) ) (!  (=> (and (select S s_3_1@@1) (< NoPerm FullPerm)) (and (qpRange7 (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_3_1@@1 f_7)) (= (invRecv7 (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_3_1@@1 f_7)) s_3_1@@1)))
 :qid |stdinbpl.942:22|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_3_1@@1 f_7))
 :pattern ( (select S s_3_1@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (select S (invRecv7 o_9@@13)) (< NoPerm FullPerm)) (qpRange7 o_9@@13)) (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) (invRecv7 o_9@@13) f_7) o_9@@13))
 :qid |stdinbpl.946:22|
 :skolemid |122|
 :pattern ( (invRecv7 o_9@@13))
))) (and (forall ((s_3_1@@2 T@Ref) ) (!  (=> (select S s_3_1@@2) (not (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_3_1@@2 f_7) null)))
 :qid |stdinbpl.952:22|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_3_1@@2 f_7))
 :pattern ( (select S s_3_1@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (select S (invRecv7 o_9@@14)) (< NoPerm FullPerm)) (qpRange7 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) (invRecv7 o_9@@14) f_7) o_9@@14)) (= (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@1) o_9@@14 g) (+ (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@0) o_9@@14 g) FullPerm)))) (=> (not (and (and (select S (invRecv7 o_9@@14)) (< NoPerm FullPerm)) (qpRange7 o_9@@14))) (= (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@1) o_9@@14 g) (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@0) o_9@@14 g))))
 :qid |stdinbpl.958:22|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@1) o_9@@14 g))
)))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_15741_53) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| QPMask@0) o_9@@15 f_5@@9) (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| QPMask@1) o_9@@15 f_5@@9)))
 :qid |stdinbpl.962:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| QPMask@0) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| QPMask@1) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_15754_15755) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@0) o_9@@16 f_5@@10) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@1) o_9@@16 f_5@@10)))
 :qid |stdinbpl.962:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@0) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@1) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_22027_3610) ) (!  (=> (not (= f_5@@11 g)) (= (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@0) o_9@@17 f_5@@11) (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@1) o_9@@17 f_5@@11)))
 :qid |stdinbpl.962:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@0) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@1) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_9998_47037) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| QPMask@0) o_9@@18 f_5@@12) (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| QPMask@1) o_9@@18 f_5@@12)))
 :qid |stdinbpl.962:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| QPMask@0) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| QPMask@1) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_9998_47170) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| QPMask@0) o_9@@19 f_5@@13) (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| QPMask@1) o_9@@19 f_5@@13)))
 :qid |stdinbpl.962:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| QPMask@0) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| QPMask@1) o_9@@19 f_5@@13))
))) (and (state Heap@@17 QPMask@1) (state Heap@@17 QPMask@1))) (and (=> (= (ControlFlow 0 37) 36) anon32_Then_correct) (=> (= (ControlFlow 0 37) 18) anon32_Else_correct))))))))
(let ((anon9_correct true))
(let ((anon31_Else_correct  (=> (and (not (select S s_16)) (= (ControlFlow 0 10) 7)) anon9_correct)))
(let ((anon31_Then_correct  (=> (select S s_16) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_9998_9999 QPMask@0 s_16 f_7)) (=> (HasDirectPerm_9998_9999 QPMask@0 s_16 f_7) (=> (= (ControlFlow 0 8) 7) anon9_correct))))))
(let ((anon28_Else_correct  (=> (and (forall ((s1_1_1 T@Ref) (s2_1_1 T@Ref) ) (!  (=> (and (select S s1_1_1) (and (select S s2_1_1) (not (= s1_1_1 s2_1_1)))) (not (= (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s1_1_1 f_7) (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s2_1_1 f_7))))
 :qid |stdinbpl.920:20|
 :skolemid |119|
 :pattern ( (select S s1_1_1) (select S s2_1_1))
)) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 39) 37) anon30_Else_correct) (=> (= (ControlFlow 0 39) 8) anon31_Then_correct)) (=> (= (ControlFlow 0 39) 10) anon31_Else_correct)))))
(let ((anon5_correct true))
(let ((anon29_Else_correct  (=> (and (not (and (select S s1_6) (and (select S s2_6) (not (= s1_6 s2_6))))) (= (ControlFlow 0 6) 2)) anon5_correct)))
(let ((anon29_Then_correct  (=> (and (select S s1_6) (and (select S s2_6) (not (= s1_6 s2_6)))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (HasDirectPerm_9998_9999 QPMask@0 s1_6 f_7)) (=> (HasDirectPerm_9998_9999 QPMask@0 s1_6 f_7) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_9998_9999 QPMask@0 s2_6 f_7)) (=> (HasDirectPerm_9998_9999 QPMask@0 s2_6 f_7) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))))
(let ((anon27_Else_correct  (and (=> (= (ControlFlow 0 40) (- 0 41)) (forall ((s_1_1 T@Ref) (s_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= s_1_1 s_1_2)) (select S s_1_1)) (select S s_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_1_1 s_1_2)))
 :qid |stdinbpl.876:15|
 :skolemid |113|
))) (=> (forall ((s_1_1@@0 T@Ref) (s_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_1_1@@0 s_1_2@@0)) (select S s_1_1@@0)) (select S s_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_1_1@@0 s_1_2@@0)))
 :qid |stdinbpl.876:15|
 :skolemid |113|
)) (=> (and (and (forall ((s_1_1@@1 T@Ref) ) (!  (=> (and (select S s_1_1@@1) (< NoPerm FullPerm)) (and (qpRange6 s_1_1@@1) (= (invRecv6 s_1_1@@1) s_1_1@@1)))
 :qid |stdinbpl.882:22|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_1_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@0) s_1_1@@1 f_7))
 :pattern ( (select S s_1_1@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (select S (invRecv6 o_9@@20)) (< NoPerm FullPerm)) (qpRange6 o_9@@20)) (= (invRecv6 o_9@@20) o_9@@20))
 :qid |stdinbpl.886:22|
 :skolemid |115|
 :pattern ( (invRecv6 o_9@@20))
))) (and (forall ((s_1_1@@2 T@Ref) ) (!  (=> (select S s_1_1@@2) (not (= s_1_1@@2 null)))
 :qid |stdinbpl.892:22|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_15681_9644_9645#PolymorphicMapType_15681| Heap@@17) s_1_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@0) s_1_1@@2 f_7))
 :pattern ( (select S s_1_1@@2))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (select S (invRecv6 o_9@@21)) (< NoPerm FullPerm)) (qpRange6 o_9@@21)) (and (=> (< NoPerm FullPerm) (= (invRecv6 o_9@@21) o_9@@21)) (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@0) o_9@@21 f_7) (+ (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ZeroMask) o_9@@21 f_7) FullPerm)))) (=> (not (and (and (select S (invRecv6 o_9@@21)) (< NoPerm FullPerm)) (qpRange6 o_9@@21))) (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@0) o_9@@21 f_7) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ZeroMask) o_9@@21 f_7))))
 :qid |stdinbpl.898:22|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@0) o_9@@21 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_15741_53) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| ZeroMask) o_9@@22 f_5@@14) (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| QPMask@0) o_9@@22 f_5@@14)))
 :qid |stdinbpl.902:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| ZeroMask) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_15702_9998_53#PolymorphicMapType_15702| QPMask@0) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_15754_15755) ) (!  (=> (not (= f_5@@15 f_7)) (= (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ZeroMask) o_9@@23 f_5@@15) (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@0) o_9@@23 f_5@@15)))
 :qid |stdinbpl.902:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| ZeroMask) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_15702_9998_9999#PolymorphicMapType_15702| QPMask@0) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_22027_3610) ) (!  (=> true (= (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| ZeroMask) o_9@@24 f_5@@16) (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@0) o_9@@24 f_5@@16)))
 :qid |stdinbpl.902:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| ZeroMask) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_15702_10001_3610#PolymorphicMapType_15702| QPMask@0) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_9998_47037) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| ZeroMask) o_9@@25 f_5@@17) (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| QPMask@0) o_9@@25 f_5@@17)))
 :qid |stdinbpl.902:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| ZeroMask) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_15702_9998_47037#PolymorphicMapType_15702| QPMask@0) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_9998_47170) ) (!  (=> true (= (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| ZeroMask) o_9@@26 f_5@@18) (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| QPMask@0) o_9@@26 f_5@@18)))
 :qid |stdinbpl.902:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| ZeroMask) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_15702_9998_51277#PolymorphicMapType_15702| QPMask@0) o_9@@26 f_5@@18))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 40) 39) anon28_Else_correct) (=> (= (ControlFlow 0 40) 3) anon29_Then_correct)) (=> (= (ControlFlow 0 40) 6) anon29_Else_correct))))))))
(let ((anon27_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 42) 1) anon27_Then_correct) (=> (= (ControlFlow 0 42) 40) anon27_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 43) 42) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
