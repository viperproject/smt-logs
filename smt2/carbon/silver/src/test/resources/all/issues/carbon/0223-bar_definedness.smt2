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
(declare-sort T@Field_10939_53 0)
(declare-sort T@Field_10952_10953 0)
(declare-sort T@Field_17132_3334 0)
(declare-sort T@Field_17884_17885 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_20029_20034 0)
(declare-sort T@Field_6569_17885 0)
(declare-sort T@Field_6569_20034 0)
(declare-sort T@Field_17884_3334 0)
(declare-sort T@Field_17884_53 0)
(declare-sort T@Field_17884_10953 0)
(declare-datatypes ((T@PolymorphicMapType_10900 0)) (((PolymorphicMapType_10900 (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| (Array T@Ref T@Field_17884_17885 Real)) (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| (Array T@Ref T@Field_17132_3334 Real)) (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| (Array T@Ref T@Field_17884_3334 Real)) (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| (Array T@Ref T@Field_17884_53 Real)) (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| (Array T@Ref T@Field_17884_10953 Real)) (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| (Array T@Ref T@Field_20029_20034 Real)) (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| (Array T@Ref T@Field_6569_17885 Real)) (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| (Array T@Ref T@Field_10939_53 Real)) (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| (Array T@Ref T@Field_10952_10953 Real)) (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| (Array T@Ref T@Field_6569_20034 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11428 0)) (((PolymorphicMapType_11428 (|PolymorphicMapType_11428_6569_3334#PolymorphicMapType_11428| (Array T@Ref T@Field_17132_3334 Bool)) (|PolymorphicMapType_11428_6569_53#PolymorphicMapType_11428| (Array T@Ref T@Field_10939_53 Bool)) (|PolymorphicMapType_11428_6569_10953#PolymorphicMapType_11428| (Array T@Ref T@Field_10952_10953 Bool)) (|PolymorphicMapType_11428_6569_17885#PolymorphicMapType_11428| (Array T@Ref T@Field_6569_17885 Bool)) (|PolymorphicMapType_11428_6569_33187#PolymorphicMapType_11428| (Array T@Ref T@Field_6569_20034 Bool)) (|PolymorphicMapType_11428_17884_3334#PolymorphicMapType_11428| (Array T@Ref T@Field_17884_3334 Bool)) (|PolymorphicMapType_11428_17884_53#PolymorphicMapType_11428| (Array T@Ref T@Field_17884_53 Bool)) (|PolymorphicMapType_11428_17884_10953#PolymorphicMapType_11428| (Array T@Ref T@Field_17884_10953 Bool)) (|PolymorphicMapType_11428_17884_17885#PolymorphicMapType_11428| (Array T@Ref T@Field_17884_17885 Bool)) (|PolymorphicMapType_11428_17884_34235#PolymorphicMapType_11428| (Array T@Ref T@Field_20029_20034 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10879 0)) (((PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| (Array T@Ref T@Field_10939_53 Bool)) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| (Array T@Ref T@Field_10952_10953 T@Ref)) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| (Array T@Ref T@Field_17132_3334 Int)) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| (Array T@Ref T@Field_17884_17885 T@FrameType)) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| (Array T@Ref T@Field_20029_20034 T@PolymorphicMapType_11428)) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| (Array T@Ref T@Field_6569_17885 T@FrameType)) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| (Array T@Ref T@Field_6569_20034 T@PolymorphicMapType_11428)) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| (Array T@Ref T@Field_17884_3334 Int)) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| (Array T@Ref T@Field_17884_53 Bool)) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| (Array T@Ref T@Field_17884_10953 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_10939_53)
(declare-fun val () T@Field_17132_3334)
(declare-fun succHeap (T@PolymorphicMapType_10879 T@PolymorphicMapType_10879) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10879 T@PolymorphicMapType_10879) Bool)
(declare-fun state (T@PolymorphicMapType_10879 T@PolymorphicMapType_10900) Bool)
(declare-fun get (T@PolymorphicMapType_10879 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_10900) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11428)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun bar_2 (T@Ref) T@Field_17884_17885)
(declare-fun IsPredicateField_6615_6616 (T@Field_17884_17885) Bool)
(declare-fun |get'| (T@PolymorphicMapType_10879 T@Ref) Int)
(declare-fun dummyFunction_3669 (Int) Bool)
(declare-fun |get#triggerStateless| (T@Ref) Int)
(declare-fun |bar#trigger_1_6615| (T@PolymorphicMapType_10879 T@Field_17884_17885) Bool)
(declare-fun |bar#everUsed_6615| (T@Field_17884_17885) Bool)
(declare-fun |Set#Union_6592| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_6592| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_6592| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_6592| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10879 T@PolymorphicMapType_10879 T@PolymorphicMapType_10900) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6615 (T@Field_17884_17885) T@Field_20029_20034)
(declare-fun HasDirectPerm_17884_17885 (T@PolymorphicMapType_10900 T@Ref T@Field_17884_17885) Bool)
(declare-fun IsPredicateField_6569_31715 (T@Field_6569_17885) Bool)
(declare-fun PredicateMaskField_6569 (T@Field_6569_17885) T@Field_6569_20034)
(declare-fun HasDirectPerm_6569_17885 (T@PolymorphicMapType_10900 T@Ref T@Field_6569_17885) Bool)
(declare-fun IsWandField_17884_35400 (T@Field_17884_17885) Bool)
(declare-fun WandMaskField_17884 (T@Field_17884_17885) T@Field_20029_20034)
(declare-fun IsWandField_6569_35043 (T@Field_6569_17885) Bool)
(declare-fun WandMaskField_6569 (T@Field_6569_17885) T@Field_6569_20034)
(declare-fun |bar#sm| (T@Ref) T@Field_20029_20034)
(declare-fun dummyHeap () T@PolymorphicMapType_10879)
(declare-fun ZeroMask () T@PolymorphicMapType_10900)
(declare-fun InsidePredicate_17884_17884 (T@Field_17884_17885 T@FrameType T@Field_17884_17885 T@FrameType) Bool)
(declare-fun InsidePredicate_10939_10939 (T@Field_6569_17885 T@FrameType T@Field_6569_17885 T@FrameType) Bool)
(declare-fun IsPredicateField_6569_3334 (T@Field_17132_3334) Bool)
(declare-fun IsWandField_6569_3334 (T@Field_17132_3334) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6569_42332 (T@Field_6569_20034) Bool)
(declare-fun IsWandField_6569_42348 (T@Field_6569_20034) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6569_10953 (T@Field_10952_10953) Bool)
(declare-fun IsWandField_6569_10953 (T@Field_10952_10953) Bool)
(declare-fun IsPredicateField_6569_53 (T@Field_10939_53) Bool)
(declare-fun IsWandField_6569_53 (T@Field_10939_53) Bool)
(declare-fun IsPredicateField_6615_41515 (T@Field_20029_20034) Bool)
(declare-fun IsWandField_6615_41531 (T@Field_20029_20034) Bool)
(declare-fun IsPredicateField_6615_10953 (T@Field_17884_10953) Bool)
(declare-fun IsWandField_6615_10953 (T@Field_17884_10953) Bool)
(declare-fun IsPredicateField_6615_53 (T@Field_17884_53) Bool)
(declare-fun IsWandField_6615_53 (T@Field_17884_53) Bool)
(declare-fun IsPredicateField_6615_3334 (T@Field_17884_3334) Bool)
(declare-fun IsWandField_6615_3334 (T@Field_17884_3334) Bool)
(declare-fun HasDirectPerm_17884_31470 (T@PolymorphicMapType_10900 T@Ref T@Field_20029_20034) Bool)
(declare-fun HasDirectPerm_17884_10953 (T@PolymorphicMapType_10900 T@Ref T@Field_17884_10953) Bool)
(declare-fun HasDirectPerm_17884_53 (T@PolymorphicMapType_10900 T@Ref T@Field_17884_53) Bool)
(declare-fun HasDirectPerm_17884_3334 (T@PolymorphicMapType_10900 T@Ref T@Field_17884_3334) Bool)
(declare-fun HasDirectPerm_6569_30309 (T@PolymorphicMapType_10900 T@Ref T@Field_6569_20034) Bool)
(declare-fun HasDirectPerm_6569_10953 (T@PolymorphicMapType_10900 T@Ref T@Field_10952_10953) Bool)
(declare-fun HasDirectPerm_6569_53 (T@PolymorphicMapType_10900 T@Ref T@Field_10939_53) Bool)
(declare-fun HasDirectPerm_6569_3334 (T@PolymorphicMapType_10900 T@Ref T@Field_17132_3334) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |get#condqp1| (T@PolymorphicMapType_10879 T@Ref) Int)
(declare-fun |sk_get#condqp1| (Int Int) T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_10900 T@PolymorphicMapType_10900 T@PolymorphicMapType_10900) Bool)
(declare-fun |Set#Difference_6592| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_6658| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_6615_6616 (T@Field_17884_17885) Int)
(declare-fun |Set#Empty_6592| () (Array T@Ref Bool))
(declare-fun |get#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_3515 (Int) T@FrameType)
(declare-fun InsidePredicate_17884_10939 (T@Field_17884_17885 T@FrameType T@Field_6569_17885 T@FrameType) Bool)
(declare-fun InsidePredicate_10939_17884 (T@Field_6569_17885 T@FrameType T@Field_17884_17885 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_10879) (Heap1 T@PolymorphicMapType_10879) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10879) (Mask T@PolymorphicMapType_10900) (x T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (get Heap x) (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap) x val)))
 :qid |stdinbpl.425:15|
 :skolemid |84|
 :pattern ( (state Heap Mask) (get Heap x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10879) (Mask@@0 T@PolymorphicMapType_10900) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10879) (Heap1@@0 T@PolymorphicMapType_10879) (Heap2 T@PolymorphicMapType_10879) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_20029_20034) ) (!  (not (select (|PolymorphicMapType_11428_17884_34235#PolymorphicMapType_11428| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11428_17884_34235#PolymorphicMapType_11428| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17884_17885) ) (!  (not (select (|PolymorphicMapType_11428_17884_17885#PolymorphicMapType_11428| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11428_17884_17885#PolymorphicMapType_11428| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17884_10953) ) (!  (not (select (|PolymorphicMapType_11428_17884_10953#PolymorphicMapType_11428| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11428_17884_10953#PolymorphicMapType_11428| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_17884_53) ) (!  (not (select (|PolymorphicMapType_11428_17884_53#PolymorphicMapType_11428| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11428_17884_53#PolymorphicMapType_11428| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_17884_3334) ) (!  (not (select (|PolymorphicMapType_11428_17884_3334#PolymorphicMapType_11428| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11428_17884_3334#PolymorphicMapType_11428| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6569_20034) ) (!  (not (select (|PolymorphicMapType_11428_6569_33187#PolymorphicMapType_11428| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11428_6569_33187#PolymorphicMapType_11428| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6569_17885) ) (!  (not (select (|PolymorphicMapType_11428_6569_17885#PolymorphicMapType_11428| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11428_6569_17885#PolymorphicMapType_11428| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_10952_10953) ) (!  (not (select (|PolymorphicMapType_11428_6569_10953#PolymorphicMapType_11428| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11428_6569_10953#PolymorphicMapType_11428| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10939_53) ) (!  (not (select (|PolymorphicMapType_11428_6569_53#PolymorphicMapType_11428| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11428_6569_53#PolymorphicMapType_11428| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_17132_3334) ) (!  (not (select (|PolymorphicMapType_11428_6569_3334#PolymorphicMapType_11428| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11428_6569_3334#PolymorphicMapType_11428| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.306:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_6615_6616 (bar_2 x@@0))
 :qid |stdinbpl.565:15|
 :skolemid |94|
 :pattern ( (bar_2 x@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10879) (x@@1 T@Ref) ) (! (dummyFunction_3669 (|get#triggerStateless| x@@1))
 :qid |stdinbpl.419:15|
 :skolemid |83|
 :pattern ( (|get'| Heap@@1 x@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10879) (x@@2 T@Ref) ) (! (|bar#everUsed_6615| (bar_2 x@@2))
 :qid |stdinbpl.584:15|
 :skolemid |98|
 :pattern ( (|bar#trigger_1_6615| Heap@@2 (bar_2 x@@2)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_6592| (|Set#Union_6592| a@@0 b@@0) b@@0) (|Set#Union_6592| a@@0 b@@0))
 :qid |stdinbpl.258:18|
 :skolemid |38|
 :pattern ( (|Set#Union_6592| (|Set#Union_6592| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6592| (|Set#Intersection_6592| a@@1 b@@1) b@@1) (|Set#Intersection_6592| a@@1 b@@1))
 :qid |stdinbpl.262:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_6592| (|Set#Intersection_6592| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_6592| r) o) (= r o))
 :qid |stdinbpl.227:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_6592| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_6592| (|Set#Union_6592| a@@2 b@@2)) (|Set#Card_6592| (|Set#Intersection_6592| a@@2 b@@2))) (+ (|Set#Card_6592| a@@2) (|Set#Card_6592| b@@2)))
 :qid |stdinbpl.266:18|
 :skolemid |42|
 :pattern ( (|Set#Card_6592| (|Set#Union_6592| a@@2 b@@2)))
 :pattern ( (|Set#Card_6592| (|Set#Intersection_6592| a@@2 b@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10879) (x@@3 T@Ref) ) (!  (and (= (get Heap@@3 x@@3) (|get'| Heap@@3 x@@3)) (dummyFunction_3669 (|get#triggerStateless| x@@3)))
 :qid |stdinbpl.415:15|
 :skolemid |82|
 :pattern ( (get Heap@@3 x@@3))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.309:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10879) (ExhaleHeap T@PolymorphicMapType_10879) (Mask@@1 T@PolymorphicMapType_10900) (pm_f_5 T@Field_17884_17885) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_17884_17885 Mask@@1 null pm_f_5) (IsPredicateField_6615_6616 pm_f_5)) (= (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@4) null (PredicateMaskField_6615 pm_f_5)) (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap) null (PredicateMaskField_6615 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_6615_6616 pm_f_5) (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap) null (PredicateMaskField_6615 pm_f_5)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10879) (ExhaleHeap@@0 T@PolymorphicMapType_10879) (Mask@@2 T@PolymorphicMapType_10900) (pm_f_5@@0 T@Field_6569_17885) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_6569_17885 Mask@@2 null pm_f_5@@0) (IsPredicateField_6569_31715 pm_f_5@@0)) (= (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@5) null (PredicateMaskField_6569 pm_f_5@@0)) (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@0) null (PredicateMaskField_6569 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_6569_31715 pm_f_5@@0) (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@0) null (PredicateMaskField_6569 pm_f_5@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10879) (ExhaleHeap@@1 T@PolymorphicMapType_10879) (Mask@@3 T@PolymorphicMapType_10900) (pm_f_5@@1 T@Field_17884_17885) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_17884_17885 Mask@@3 null pm_f_5@@1) (IsWandField_17884_35400 pm_f_5@@1)) (= (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@6) null (WandMaskField_17884 pm_f_5@@1)) (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@1) null (WandMaskField_17884 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsWandField_17884_35400 pm_f_5@@1) (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@1) null (WandMaskField_17884 pm_f_5@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10879) (ExhaleHeap@@2 T@PolymorphicMapType_10879) (Mask@@4 T@PolymorphicMapType_10900) (pm_f_5@@2 T@Field_6569_17885) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_6569_17885 Mask@@4 null pm_f_5@@2) (IsWandField_6569_35043 pm_f_5@@2)) (= (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@7) null (WandMaskField_6569 pm_f_5@@2)) (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@2) null (WandMaskField_6569 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_6569_35043 pm_f_5@@2) (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@2) null (WandMaskField_6569 pm_f_5@@2)))
)))
(assert (forall ((x@@4 T@Ref) (x2 T@Ref) ) (!  (=> (= (bar_2 x@@4) (bar_2 x2)) (= x@@4 x2))
 :qid |stdinbpl.575:15|
 :skolemid |96|
 :pattern ( (bar_2 x@@4) (bar_2 x2))
)))
(assert (forall ((x@@5 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|bar#sm| x@@5) (|bar#sm| x2@@0)) (= x@@5 x2@@0))
 :qid |stdinbpl.579:15|
 :skolemid |97|
 :pattern ( (|bar#sm| x@@5) (|bar#sm| x2@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10879) (ExhaleHeap@@3 T@PolymorphicMapType_10879) (Mask@@5 T@PolymorphicMapType_10900) (pm_f_5@@3 T@Field_17884_17885) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_17884_17885 Mask@@5 null pm_f_5@@3) (IsPredicateField_6615_6616 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_17132_3334) ) (!  (=> (select (|PolymorphicMapType_11428_6569_3334#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@8) null (PredicateMaskField_6615 pm_f_5@@3))) o2_5 f_16) (= (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@8) o2_5 f_16) (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_10939_53) ) (!  (=> (select (|PolymorphicMapType_11428_6569_53#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@8) null (PredicateMaskField_6615 pm_f_5@@3))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@8) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_10952_10953) ) (!  (=> (select (|PolymorphicMapType_11428_6569_10953#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@8) null (PredicateMaskField_6615 pm_f_5@@3))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@8) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_6569_17885) ) (!  (=> (select (|PolymorphicMapType_11428_6569_17885#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@8) null (PredicateMaskField_6615 pm_f_5@@3))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@8) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_6569_20034) ) (!  (=> (select (|PolymorphicMapType_11428_6569_33187#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@8) null (PredicateMaskField_6615 pm_f_5@@3))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@8) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_17884_3334) ) (!  (=> (select (|PolymorphicMapType_11428_17884_3334#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@8) null (PredicateMaskField_6615 pm_f_5@@3))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@8) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_17884_53) ) (!  (=> (select (|PolymorphicMapType_11428_17884_53#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@8) null (PredicateMaskField_6615 pm_f_5@@3))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@8) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_17884_10953) ) (!  (=> (select (|PolymorphicMapType_11428_17884_10953#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@8) null (PredicateMaskField_6615 pm_f_5@@3))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@8) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_17884_17885) ) (!  (=> (select (|PolymorphicMapType_11428_17884_17885#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@8) null (PredicateMaskField_6615 pm_f_5@@3))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@8) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_20029_20034) ) (!  (=> (select (|PolymorphicMapType_11428_17884_34235#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@8) null (PredicateMaskField_6615 pm_f_5@@3))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@8) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@3) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsPredicateField_6615_6616 pm_f_5@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10879) (ExhaleHeap@@4 T@PolymorphicMapType_10879) (Mask@@6 T@PolymorphicMapType_10900) (pm_f_5@@4 T@Field_6569_17885) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_6569_17885 Mask@@6 null pm_f_5@@4) (IsPredicateField_6569_31715 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_17132_3334) ) (!  (=> (select (|PolymorphicMapType_11428_6569_3334#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@9) null (PredicateMaskField_6569 pm_f_5@@4))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@9) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@9 f_16@@9))
)) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_10939_53) ) (!  (=> (select (|PolymorphicMapType_11428_6569_53#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@9) null (PredicateMaskField_6569 pm_f_5@@4))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@9) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_10952_10953) ) (!  (=> (select (|PolymorphicMapType_11428_6569_10953#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@9) null (PredicateMaskField_6569 pm_f_5@@4))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@9) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_6569_17885) ) (!  (=> (select (|PolymorphicMapType_11428_6569_17885#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@9) null (PredicateMaskField_6569 pm_f_5@@4))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@9) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_6569_20034) ) (!  (=> (select (|PolymorphicMapType_11428_6569_33187#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@9) null (PredicateMaskField_6569 pm_f_5@@4))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@9) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_17884_3334) ) (!  (=> (select (|PolymorphicMapType_11428_17884_3334#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@9) null (PredicateMaskField_6569 pm_f_5@@4))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@9) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@14 f_16@@14))
))) (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_17884_53) ) (!  (=> (select (|PolymorphicMapType_11428_17884_53#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@9) null (PredicateMaskField_6569 pm_f_5@@4))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@9) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@15 f_16@@15))
))) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_17884_10953) ) (!  (=> (select (|PolymorphicMapType_11428_17884_10953#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@9) null (PredicateMaskField_6569 pm_f_5@@4))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@9) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_17884_17885) ) (!  (=> (select (|PolymorphicMapType_11428_17884_17885#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@9) null (PredicateMaskField_6569 pm_f_5@@4))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@9) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_20029_20034) ) (!  (=> (select (|PolymorphicMapType_11428_17884_34235#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@9) null (PredicateMaskField_6569 pm_f_5@@4))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@9) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@4) o2_5@@18 f_16@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsPredicateField_6569_31715 pm_f_5@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10879) (ExhaleHeap@@5 T@PolymorphicMapType_10879) (Mask@@7 T@PolymorphicMapType_10900) (pm_f_5@@5 T@Field_17884_17885) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_17884_17885 Mask@@7 null pm_f_5@@5) (IsWandField_17884_35400 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_17132_3334) ) (!  (=> (select (|PolymorphicMapType_11428_6569_3334#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@10) null (WandMaskField_17884 pm_f_5@@5))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@10) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@19 f_16@@19))
)) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_10939_53) ) (!  (=> (select (|PolymorphicMapType_11428_6569_53#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@10) null (WandMaskField_17884 pm_f_5@@5))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@10) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_10952_10953) ) (!  (=> (select (|PolymorphicMapType_11428_6569_10953#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@10) null (WandMaskField_17884 pm_f_5@@5))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@10) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_6569_17885) ) (!  (=> (select (|PolymorphicMapType_11428_6569_17885#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@10) null (WandMaskField_17884 pm_f_5@@5))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@10) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@22 f_16@@22))
))) (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_6569_20034) ) (!  (=> (select (|PolymorphicMapType_11428_6569_33187#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@10) null (WandMaskField_17884 pm_f_5@@5))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@10) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@23 f_16@@23))
))) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_17884_3334) ) (!  (=> (select (|PolymorphicMapType_11428_17884_3334#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@10) null (WandMaskField_17884 pm_f_5@@5))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@10) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_17884_53) ) (!  (=> (select (|PolymorphicMapType_11428_17884_53#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@10) null (WandMaskField_17884 pm_f_5@@5))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@10) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_17884_10953) ) (!  (=> (select (|PolymorphicMapType_11428_17884_10953#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@10) null (WandMaskField_17884 pm_f_5@@5))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@10) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_17884_17885) ) (!  (=> (select (|PolymorphicMapType_11428_17884_17885#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@10) null (WandMaskField_17884 pm_f_5@@5))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@10) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_20029_20034) ) (!  (=> (select (|PolymorphicMapType_11428_17884_34235#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@10) null (WandMaskField_17884 pm_f_5@@5))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@10) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@5) o2_5@@28 f_16@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsWandField_17884_35400 pm_f_5@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10879) (ExhaleHeap@@6 T@PolymorphicMapType_10879) (Mask@@8 T@PolymorphicMapType_10900) (pm_f_5@@6 T@Field_6569_17885) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_6569_17885 Mask@@8 null pm_f_5@@6) (IsWandField_6569_35043 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_17132_3334) ) (!  (=> (select (|PolymorphicMapType_11428_6569_3334#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@11) null (WandMaskField_6569 pm_f_5@@6))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@11) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@29 f_16@@29))
)) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_10939_53) ) (!  (=> (select (|PolymorphicMapType_11428_6569_53#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@11) null (WandMaskField_6569 pm_f_5@@6))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@11) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@30 f_16@@30))
))) (forall ((o2_5@@31 T@Ref) (f_16@@31 T@Field_10952_10953) ) (!  (=> (select (|PolymorphicMapType_11428_6569_10953#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@11) null (WandMaskField_6569 pm_f_5@@6))) o2_5@@31 f_16@@31) (= (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@11) o2_5@@31 f_16@@31) (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@31 f_16@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@31 f_16@@31))
))) (forall ((o2_5@@32 T@Ref) (f_16@@32 T@Field_6569_17885) ) (!  (=> (select (|PolymorphicMapType_11428_6569_17885#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@11) null (WandMaskField_6569 pm_f_5@@6))) o2_5@@32 f_16@@32) (= (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@11) o2_5@@32 f_16@@32) (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@32 f_16@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@32 f_16@@32))
))) (forall ((o2_5@@33 T@Ref) (f_16@@33 T@Field_6569_20034) ) (!  (=> (select (|PolymorphicMapType_11428_6569_33187#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@11) null (WandMaskField_6569 pm_f_5@@6))) o2_5@@33 f_16@@33) (= (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@11) o2_5@@33 f_16@@33) (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@33 f_16@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@33 f_16@@33))
))) (forall ((o2_5@@34 T@Ref) (f_16@@34 T@Field_17884_3334) ) (!  (=> (select (|PolymorphicMapType_11428_17884_3334#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@11) null (WandMaskField_6569 pm_f_5@@6))) o2_5@@34 f_16@@34) (= (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@11) o2_5@@34 f_16@@34) (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@34 f_16@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@34 f_16@@34))
))) (forall ((o2_5@@35 T@Ref) (f_16@@35 T@Field_17884_53) ) (!  (=> (select (|PolymorphicMapType_11428_17884_53#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@11) null (WandMaskField_6569 pm_f_5@@6))) o2_5@@35 f_16@@35) (= (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@11) o2_5@@35 f_16@@35) (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@35 f_16@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@35 f_16@@35))
))) (forall ((o2_5@@36 T@Ref) (f_16@@36 T@Field_17884_10953) ) (!  (=> (select (|PolymorphicMapType_11428_17884_10953#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@11) null (WandMaskField_6569 pm_f_5@@6))) o2_5@@36 f_16@@36) (= (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@11) o2_5@@36 f_16@@36) (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@36 f_16@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@36 f_16@@36))
))) (forall ((o2_5@@37 T@Ref) (f_16@@37 T@Field_17884_17885) ) (!  (=> (select (|PolymorphicMapType_11428_17884_17885#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@11) null (WandMaskField_6569 pm_f_5@@6))) o2_5@@37 f_16@@37) (= (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@11) o2_5@@37 f_16@@37) (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@37 f_16@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@37 f_16@@37))
))) (forall ((o2_5@@38 T@Ref) (f_16@@38 T@Field_20029_20034) ) (!  (=> (select (|PolymorphicMapType_11428_17884_34235#PolymorphicMapType_11428| (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@11) null (WandMaskField_6569 pm_f_5@@6))) o2_5@@38 f_16@@38) (= (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@11) o2_5@@38 f_16@@38) (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@38 f_16@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@6) o2_5@@38 f_16@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsWandField_6569_35043 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10879) (ExhaleHeap@@7 T@PolymorphicMapType_10879) (Mask@@9 T@PolymorphicMapType_10900) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@12) o_12 $allocated) (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_17884_17885) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17884_17884 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17884_17884 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6569_17885) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10939_10939 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10939_10939 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_6569_3334 val)))
(assert  (not (IsWandField_6569_3334 val)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10879) (ExhaleHeap@@8 T@PolymorphicMapType_10879) (Mask@@10 T@PolymorphicMapType_10900) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@13 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10900) (o_2@@9 T@Ref) (f_4@@9 T@Field_6569_20034) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6569_42332 f_4@@9))) (not (IsWandField_6569_42348 f_4@@9))) (<= (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10900) (o_2@@10 T@Ref) (f_4@@10 T@Field_10952_10953) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6569_10953 f_4@@10))) (not (IsWandField_6569_10953 f_4@@10))) (<= (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10900) (o_2@@11 T@Ref) (f_4@@11 T@Field_10939_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6569_53 f_4@@11))) (not (IsWandField_6569_53 f_4@@11))) (<= (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10900) (o_2@@12 T@Ref) (f_4@@12 T@Field_17132_3334) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6569_3334 f_4@@12))) (not (IsWandField_6569_3334 f_4@@12))) (<= (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10900) (o_2@@13 T@Ref) (f_4@@13 T@Field_6569_17885) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6569_31715 f_4@@13))) (not (IsWandField_6569_35043 f_4@@13))) (<= (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10900) (o_2@@14 T@Ref) (f_4@@14 T@Field_20029_20034) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6615_41515 f_4@@14))) (not (IsWandField_6615_41531 f_4@@14))) (<= (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10900) (o_2@@15 T@Ref) (f_4@@15 T@Field_17884_10953) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6615_10953 f_4@@15))) (not (IsWandField_6615_10953 f_4@@15))) (<= (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10900) (o_2@@16 T@Ref) (f_4@@16 T@Field_17884_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6615_53 f_4@@16))) (not (IsWandField_6615_53 f_4@@16))) (<= (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10900) (o_2@@17 T@Ref) (f_4@@17 T@Field_17884_3334) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6615_3334 f_4@@17))) (not (IsWandField_6615_3334 f_4@@17))) (<= (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10900) (o_2@@18 T@Ref) (f_4@@18 T@Field_17884_17885) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6615_6616 f_4@@18))) (not (IsWandField_17884_35400 f_4@@18))) (<= (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10900) (o_2@@19 T@Ref) (f_4@@19 T@Field_20029_20034) ) (! (= (HasDirectPerm_17884_31470 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17884_31470 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10900) (o_2@@20 T@Ref) (f_4@@20 T@Field_17884_17885) ) (! (= (HasDirectPerm_17884_17885 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17884_17885 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10900) (o_2@@21 T@Ref) (f_4@@21 T@Field_17884_10953) ) (! (= (HasDirectPerm_17884_10953 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17884_10953 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10900) (o_2@@22 T@Ref) (f_4@@22 T@Field_17884_53) ) (! (= (HasDirectPerm_17884_53 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17884_53 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10900) (o_2@@23 T@Ref) (f_4@@23 T@Field_17884_3334) ) (! (= (HasDirectPerm_17884_3334 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17884_3334 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10900) (o_2@@24 T@Ref) (f_4@@24 T@Field_6569_20034) ) (! (= (HasDirectPerm_6569_30309 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6569_30309 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10900) (o_2@@25 T@Ref) (f_4@@25 T@Field_6569_17885) ) (! (= (HasDirectPerm_6569_17885 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6569_17885 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10900) (o_2@@26 T@Ref) (f_4@@26 T@Field_10952_10953) ) (! (= (HasDirectPerm_6569_10953 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6569_10953 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10900) (o_2@@27 T@Ref) (f_4@@27 T@Field_10939_53) ) (! (= (HasDirectPerm_6569_53 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6569_53 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10900) (o_2@@28 T@Ref) (f_4@@28 T@Field_17132_3334) ) (! (= (HasDirectPerm_6569_3334 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6569_3334 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10879) (ExhaleHeap@@9 T@PolymorphicMapType_10879) (Mask@@31 T@PolymorphicMapType_10900) (o_12@@0 T@Ref) (f_16@@39 T@Field_20029_20034) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_17884_31470 Mask@@31 o_12@@0 f_16@@39) (= (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@14) o_12@@0 f_16@@39) (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@9) o_12@@0 f_16@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| ExhaleHeap@@9) o_12@@0 f_16@@39))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10879) (ExhaleHeap@@10 T@PolymorphicMapType_10879) (Mask@@32 T@PolymorphicMapType_10900) (o_12@@1 T@Ref) (f_16@@40 T@Field_17884_17885) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_17884_17885 Mask@@32 o_12@@1 f_16@@40) (= (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@15) o_12@@1 f_16@@40) (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| ExhaleHeap@@10) o_12@@1 f_16@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| ExhaleHeap@@10) o_12@@1 f_16@@40))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10879) (ExhaleHeap@@11 T@PolymorphicMapType_10879) (Mask@@33 T@PolymorphicMapType_10900) (o_12@@2 T@Ref) (f_16@@41 T@Field_17884_10953) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_17884_10953 Mask@@33 o_12@@2 f_16@@41) (= (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@16) o_12@@2 f_16@@41) (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| ExhaleHeap@@11) o_12@@2 f_16@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| ExhaleHeap@@11) o_12@@2 f_16@@41))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10879) (ExhaleHeap@@12 T@PolymorphicMapType_10879) (Mask@@34 T@PolymorphicMapType_10900) (o_12@@3 T@Ref) (f_16@@42 T@Field_17884_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_17884_53 Mask@@34 o_12@@3 f_16@@42) (= (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@17) o_12@@3 f_16@@42) (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| ExhaleHeap@@12) o_12@@3 f_16@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| ExhaleHeap@@12) o_12@@3 f_16@@42))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10879) (ExhaleHeap@@13 T@PolymorphicMapType_10879) (Mask@@35 T@PolymorphicMapType_10900) (o_12@@4 T@Ref) (f_16@@43 T@Field_17884_3334) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_17884_3334 Mask@@35 o_12@@4 f_16@@43) (= (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@18) o_12@@4 f_16@@43) (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| ExhaleHeap@@13) o_12@@4 f_16@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| ExhaleHeap@@13) o_12@@4 f_16@@43))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10879) (ExhaleHeap@@14 T@PolymorphicMapType_10879) (Mask@@36 T@PolymorphicMapType_10900) (o_12@@5 T@Ref) (f_16@@44 T@Field_6569_20034) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_6569_30309 Mask@@36 o_12@@5 f_16@@44) (= (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@19) o_12@@5 f_16@@44) (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@14) o_12@@5 f_16@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| ExhaleHeap@@14) o_12@@5 f_16@@44))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10879) (ExhaleHeap@@15 T@PolymorphicMapType_10879) (Mask@@37 T@PolymorphicMapType_10900) (o_12@@6 T@Ref) (f_16@@45 T@Field_6569_17885) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_6569_17885 Mask@@37 o_12@@6 f_16@@45) (= (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@20) o_12@@6 f_16@@45) (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| ExhaleHeap@@15) o_12@@6 f_16@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| ExhaleHeap@@15) o_12@@6 f_16@@45))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10879) (ExhaleHeap@@16 T@PolymorphicMapType_10879) (Mask@@38 T@PolymorphicMapType_10900) (o_12@@7 T@Ref) (f_16@@46 T@Field_10952_10953) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_6569_10953 Mask@@38 o_12@@7 f_16@@46) (= (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@21) o_12@@7 f_16@@46) (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| ExhaleHeap@@16) o_12@@7 f_16@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| ExhaleHeap@@16) o_12@@7 f_16@@46))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10879) (ExhaleHeap@@17 T@PolymorphicMapType_10879) (Mask@@39 T@PolymorphicMapType_10900) (o_12@@8 T@Ref) (f_16@@47 T@Field_10939_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_6569_53 Mask@@39 o_12@@8 f_16@@47) (= (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@22) o_12@@8 f_16@@47) (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@17) o_12@@8 f_16@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| ExhaleHeap@@17) o_12@@8 f_16@@47))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10879) (ExhaleHeap@@18 T@PolymorphicMapType_10879) (Mask@@40 T@PolymorphicMapType_10900) (o_12@@9 T@Ref) (f_16@@48 T@Field_17132_3334) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_6569_3334 Mask@@40 o_12@@9 f_16@@48) (= (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@23) o_12@@9 f_16@@48) (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| ExhaleHeap@@18) o_12@@9 f_16@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| ExhaleHeap@@18) o_12@@9 f_16@@48))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_10879) (Heap1Heap T@PolymorphicMapType_10879) (x@@6 T@Ref) ) (!  (=> (and (=  (and (select (|Set#Singleton_6592| x@@6) (|sk_get#condqp1| (|get#condqp1| Heap2Heap x@@6) (|get#condqp1| Heap1Heap x@@6))) (< NoPerm FullPerm))  (and (select (|Set#Singleton_6592| x@@6) (|sk_get#condqp1| (|get#condqp1| Heap2Heap x@@6) (|get#condqp1| Heap1Heap x@@6))) (< NoPerm FullPerm))) (=> (and (select (|Set#Singleton_6592| x@@6) (|sk_get#condqp1| (|get#condqp1| Heap2Heap x@@6) (|get#condqp1| Heap1Heap x@@6))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap2Heap) null (bar_2 (|sk_get#condqp1| (|get#condqp1| Heap2Heap x@@6) (|get#condqp1| Heap1Heap x@@6)))) (select (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap1Heap) null (bar_2 (|sk_get#condqp1| (|get#condqp1| Heap2Heap x@@6) (|get#condqp1| Heap1Heap x@@6))))))) (= (|get#condqp1| Heap2Heap x@@6) (|get#condqp1| Heap1Heap x@@6)))
 :qid |stdinbpl.442:15|
 :skolemid |86|
 :pattern ( (|get#condqp1| Heap2Heap x@@6) (|get#condqp1| Heap1Heap x@@6) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_6569_20034) ) (! (= (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_10952_10953) ) (! (= (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_10939_53) ) (! (= (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_17132_3334) ) (! (= (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_6569_17885) ) (! (= (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_20029_20034) ) (! (= (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_17884_10953) ) (! (= (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_17884_53) ) (! (= (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_17884_3334) ) (! (= (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_17884_17885) ) (! (= (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10900) (SummandMask1 T@PolymorphicMapType_10900) (SummandMask2 T@PolymorphicMapType_10900) (o_2@@39 T@Ref) (f_4@@39 T@Field_6569_20034) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10900_6569_40040#PolymorphicMapType_10900| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10900) (SummandMask1@@0 T@PolymorphicMapType_10900) (SummandMask2@@0 T@PolymorphicMapType_10900) (o_2@@40 T@Ref) (f_4@@40 T@Field_10952_10953) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10900_6569_10953#PolymorphicMapType_10900| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10900) (SummandMask1@@1 T@PolymorphicMapType_10900) (SummandMask2@@1 T@PolymorphicMapType_10900) (o_2@@41 T@Ref) (f_4@@41 T@Field_10939_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10900_6569_53#PolymorphicMapType_10900| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10900) (SummandMask1@@2 T@PolymorphicMapType_10900) (SummandMask2@@2 T@PolymorphicMapType_10900) (o_2@@42 T@Ref) (f_4@@42 T@Field_17132_3334) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10900_6569_3334#PolymorphicMapType_10900| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10900) (SummandMask1@@3 T@PolymorphicMapType_10900) (SummandMask2@@3 T@PolymorphicMapType_10900) (o_2@@43 T@Ref) (f_4@@43 T@Field_6569_17885) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10900_6569_6616#PolymorphicMapType_10900| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10900) (SummandMask1@@4 T@PolymorphicMapType_10900) (SummandMask2@@4 T@PolymorphicMapType_10900) (o_2@@44 T@Ref) (f_4@@44 T@Field_20029_20034) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10900_6615_39626#PolymorphicMapType_10900| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10900) (SummandMask1@@5 T@PolymorphicMapType_10900) (SummandMask2@@5 T@PolymorphicMapType_10900) (o_2@@45 T@Ref) (f_4@@45 T@Field_17884_10953) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10900_6615_10953#PolymorphicMapType_10900| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10900) (SummandMask1@@6 T@PolymorphicMapType_10900) (SummandMask2@@6 T@PolymorphicMapType_10900) (o_2@@46 T@Ref) (f_4@@46 T@Field_17884_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10900_6615_53#PolymorphicMapType_10900| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10900) (SummandMask1@@7 T@PolymorphicMapType_10900) (SummandMask2@@7 T@PolymorphicMapType_10900) (o_2@@47 T@Ref) (f_4@@47 T@Field_17884_3334) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10900_6615_3334#PolymorphicMapType_10900| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10900) (SummandMask1@@8 T@PolymorphicMapType_10900) (SummandMask2@@8 T@PolymorphicMapType_10900) (o_2@@48 T@Ref) (f_4@@48 T@Field_17884_17885) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10900_6615_6616#PolymorphicMapType_10900| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_6592| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.255:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_6592| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_6592| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_6592| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_6592| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.270:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_6592| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_6592| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x@@7 T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_6658| a@@6 x@@7) y))
 :qid |stdinbpl.235:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_6658| a@@6 x@@7) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_6592| a@@7 b@@5) y@@0))
 :qid |stdinbpl.245:18|
 :skolemid |35|
 :pattern ( (|Set#Union_6592| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_6592| a@@8 b@@6) y@@1))
 :qid |stdinbpl.247:18|
 :skolemid |36|
 :pattern ( (|Set#Union_6592| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@8 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_6658| a@@9 x@@8) o@@2)  (or (= o@@2 x@@8) (select a@@9 o@@2)))
 :qid |stdinbpl.231:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_6658| a@@9 x@@8) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_6592| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.272:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_6592| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_6592| (|Set#Difference_6592| a@@11 b@@8)) (|Set#Card_6592| (|Set#Difference_6592| b@@8 a@@11))) (|Set#Card_6592| (|Set#Intersection_6592| a@@11 b@@8))) (|Set#Card_6592| (|Set#Union_6592| a@@11 b@@8))) (= (|Set#Card_6592| (|Set#Difference_6592| a@@11 b@@8)) (- (|Set#Card_6592| a@@11) (|Set#Card_6592| (|Set#Intersection_6592| a@@11 b@@8)))))
 :qid |stdinbpl.274:18|
 :skolemid |45|
 :pattern ( (|Set#Card_6592| (|Set#Difference_6592| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_6592| s))
 :qid |stdinbpl.217:18|
 :skolemid |22|
 :pattern ( (|Set#Card_6592| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@9 T@Ref) ) (! (select (|Set#UnionOne_6658| a@@12 x@@9) x@@9)
 :qid |stdinbpl.233:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_6658| a@@12 x@@9))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@10 T@Ref) ) (!  (=> (select a@@13 x@@10) (= (|Set#Card_6592| (|Set#UnionOne_6658| a@@13 x@@10)) (|Set#Card_6592| a@@13)))
 :qid |stdinbpl.237:18|
 :skolemid |32|
 :pattern ( (|Set#Card_6592| (|Set#UnionOne_6658| a@@13 x@@10)))
)))
(assert (forall ((x@@11 T@Ref) ) (! (= (getPredWandId_6615_6616 (bar_2 x@@11)) 0)
 :qid |stdinbpl.569:15|
 :skolemid |95|
 :pattern ( (bar_2 x@@11))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_6592| (|Set#Singleton_6592| r@@0)) 1)
 :qid |stdinbpl.228:18|
 :skolemid |28|
 :pattern ( (|Set#Card_6592| (|Set#Singleton_6592| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_6592| r@@1) r@@1)
 :qid |stdinbpl.226:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_6592| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_6592| a@@14 (|Set#Union_6592| a@@14 b@@9)) (|Set#Union_6592| a@@14 b@@9))
 :qid |stdinbpl.260:18|
 :skolemid |39|
 :pattern ( (|Set#Union_6592| a@@14 (|Set#Union_6592| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6592| a@@15 (|Set#Intersection_6592| a@@15 b@@10)) (|Set#Intersection_6592| a@@15 b@@10))
 :qid |stdinbpl.264:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_6592| a@@15 (|Set#Intersection_6592| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_6592| o@@3))
 :qid |stdinbpl.220:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_6592| o@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10879) (o_11 T@Ref) (f_17 T@Field_20029_20034) (v T@PolymorphicMapType_11428) ) (! (succHeap Heap@@24 (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@24) (store (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@24) o_11 f_17 v) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@24) (store (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@24) o_11 f_17 v) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@24) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10879) (o_11@@0 T@Ref) (f_17@@0 T@Field_17884_17885) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@25) (store (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@25) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@25) (store (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@25) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@25) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10879) (o_11@@1 T@Ref) (f_17@@1 T@Field_17884_3334) (v@@1 Int) ) (! (succHeap Heap@@26 (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@26) (store (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@26) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@26) (store (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@26) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@26) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10879) (o_11@@2 T@Ref) (f_17@@2 T@Field_17884_10953) (v@@2 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@27) (store (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@27) o_11@@2 f_17@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@27) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@27) (store (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@27) o_11@@2 f_17@@2 v@@2)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10879) (o_11@@3 T@Ref) (f_17@@3 T@Field_17884_53) (v@@3 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@28) (store (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@28) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@28) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@28) (store (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@28) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10879) (o_11@@4 T@Ref) (f_17@@4 T@Field_6569_20034) (v@@4 T@PolymorphicMapType_11428) ) (! (succHeap Heap@@29 (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@29) (store (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@29) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@29) (store (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@29) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@29) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10879) (o_11@@5 T@Ref) (f_17@@5 T@Field_6569_17885) (v@@5 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@30) (store (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@30) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@30) (store (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@30) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@30) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10879) (o_11@@6 T@Ref) (f_17@@6 T@Field_17132_3334) (v@@6 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@31) (store (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@31) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@31) (store (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@31) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@31) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10879) (o_11@@7 T@Ref) (f_17@@7 T@Field_10952_10953) (v@@7 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@32) (store (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@32) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10879 (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@32) (store (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@32) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@32) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10879) (o_11@@8 T@Ref) (f_17@@8 T@Field_10939_53) (v@@8 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_10879 (store (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@33) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10879 (store (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@33) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_6569_3334#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_6615_6616#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_6619_20121#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_6569_17885#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_6569_30351#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_17884_3334#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_17884_53#PolymorphicMapType_10879| Heap@@33) (|PolymorphicMapType_10879_17884_10953#PolymorphicMapType_10879| Heap@@33)))
)))
(assert (forall ((x@@12 T@Ref) ) (! (= (PredicateMaskField_6615 (bar_2 x@@12)) (|bar#sm| x@@12))
 :qid |stdinbpl.561:15|
 :skolemid |93|
 :pattern ( (PredicateMaskField_6615 (bar_2 x@@12)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.304:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.305:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_6592| s@@0) 0) (= s@@0 |Set#Empty_6592|)) (=> (not (= (|Set#Card_6592| s@@0) 0)) (exists ((x@@13 T@Ref) ) (! (select s@@0 x@@13)
 :qid |stdinbpl.223:33|
 :skolemid |24|
))))
 :qid |stdinbpl.221:18|
 :skolemid |25|
 :pattern ( (|Set#Card_6592| s@@0))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10879) (Mask@@41 T@PolymorphicMapType_10900) (x@@14 T@Ref) ) (!  (=> (state Heap@@34 Mask@@41) (= (|get'| Heap@@34 x@@14) (|get#frame| (FrameFragment_3515 (|get#condqp1| Heap@@34 x@@14)) x@@14)))
 :qid |stdinbpl.432:15|
 :skolemid |85|
 :pattern ( (state Heap@@34 Mask@@41) (|get'| Heap@@34 x@@14))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@15 T@Ref) ) (!  (=> (not (select a@@18 x@@15)) (= (|Set#Card_6592| (|Set#UnionOne_6658| a@@18 x@@15)) (+ (|Set#Card_6592| a@@18) 1)))
 :qid |stdinbpl.239:18|
 :skolemid |33|
 :pattern ( (|Set#Card_6592| (|Set#UnionOne_6658| a@@18 x@@15)))
)))
(assert (forall ((o_11@@9 T@Ref) (f_10 T@Field_10952_10953) (Heap@@35 T@PolymorphicMapType_10879) ) (!  (=> (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@35) o_11@@9 $allocated) (select (|PolymorphicMapType_10879_6256_53#PolymorphicMapType_10879| Heap@@35) (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@35) o_11@@9 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10879_6259_6260#PolymorphicMapType_10879| Heap@@35) o_11@@9 f_10))
)))
(assert (forall ((p@@2 T@Field_17884_17885) (v_1@@1 T@FrameType) (q T@Field_17884_17885) (w@@1 T@FrameType) (r@@2 T@Field_17884_17885) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17884_17884 p@@2 v_1@@1 q w@@1) (InsidePredicate_17884_17884 q w@@1 r@@2 u)) (InsidePredicate_17884_17884 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17884_17884 p@@2 v_1@@1 q w@@1) (InsidePredicate_17884_17884 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_17884_17885) (v_1@@2 T@FrameType) (q@@0 T@Field_17884_17885) (w@@2 T@FrameType) (r@@3 T@Field_6569_17885) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_17884_17884 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_17884_10939 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_17884_10939 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17884_17884 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_17884_10939 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_17884_17885) (v_1@@3 T@FrameType) (q@@1 T@Field_6569_17885) (w@@3 T@FrameType) (r@@4 T@Field_17884_17885) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_17884_10939 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10939_17884 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_17884_17884 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17884_10939 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10939_17884 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_17884_17885) (v_1@@4 T@FrameType) (q@@2 T@Field_6569_17885) (w@@4 T@FrameType) (r@@5 T@Field_6569_17885) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_17884_10939 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10939_10939 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_17884_10939 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17884_10939 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10939_10939 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_6569_17885) (v_1@@5 T@FrameType) (q@@3 T@Field_17884_17885) (w@@5 T@FrameType) (r@@6 T@Field_17884_17885) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10939_17884 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_17884_17884 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_10939_17884 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10939_17884 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_17884_17884 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_6569_17885) (v_1@@6 T@FrameType) (q@@4 T@Field_17884_17885) (w@@6 T@FrameType) (r@@7 T@Field_6569_17885) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10939_17884 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_17884_10939 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_10939_10939 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10939_17884 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_17884_10939 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_6569_17885) (v_1@@7 T@FrameType) (q@@5 T@Field_6569_17885) (w@@7 T@FrameType) (r@@8 T@Field_17884_17885) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10939_10939 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10939_17884 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_10939_17884 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10939_10939 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10939_17884 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_6569_17885) (v_1@@8 T@FrameType) (q@@6 T@Field_6569_17885) (w@@8 T@FrameType) (r@@9 T@Field_6569_17885) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10939_10939 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10939_10939 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_10939_10939 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10939_10939 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10939_10939 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.310:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_6592| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.243:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_6592| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |bar#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
