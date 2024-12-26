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
(declare-sort T@Field_12149_53 0)
(declare-sort T@Field_12162_12163 0)
(declare-sort T@Field_18326_3238 0)
(declare-sort T@Field_12149_29945 0)
(declare-sort T@Field_12149_29812 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12110 0)) (((PolymorphicMapType_12110 (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| (Array T@Ref T@Field_18326_3238 Real)) (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| (Array T@Ref T@Field_12149_53 Real)) (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| (Array T@Ref T@Field_12162_12163 Real)) (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| (Array T@Ref T@Field_12149_29812 Real)) (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| (Array T@Ref T@Field_12149_29945 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12638 0)) (((PolymorphicMapType_12638 (|PolymorphicMapType_12638_12149_53#PolymorphicMapType_12638| (Array T@Ref T@Field_12149_53 Bool)) (|PolymorphicMapType_12638_12149_12163#PolymorphicMapType_12638| (Array T@Ref T@Field_12162_12163 Bool)) (|PolymorphicMapType_12638_12149_3238#PolymorphicMapType_12638| (Array T@Ref T@Field_18326_3238 Bool)) (|PolymorphicMapType_12638_12149_29812#PolymorphicMapType_12638| (Array T@Ref T@Field_12149_29812 Bool)) (|PolymorphicMapType_12638_12149_31123#PolymorphicMapType_12638| (Array T@Ref T@Field_12149_29945 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12089 0)) (((PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| (Array T@Ref T@Field_12149_53 Bool)) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| (Array T@Ref T@Field_12162_12163 T@Ref)) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| (Array T@Ref T@Field_18326_3238 Int)) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| (Array T@Ref T@Field_12149_29945 T@PolymorphicMapType_12638)) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| (Array T@Ref T@Field_12149_29812 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12149_53)
(declare-fun f_7 () T@Field_18326_3238)
(declare-fun state (T@PolymorphicMapType_12089 T@PolymorphicMapType_12110) Bool)
(declare-fun |function2'| (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun |function2#frame| (T@FrameType Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |function4'| (T@PolymorphicMapType_12089 Bool Bool) Bool)
(declare-fun |function4#frame| (T@FrameType Bool Bool) Bool)
(declare-fun |function5'| (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun |function5#frame| (T@FrameType Int Int) Bool)
(declare-fun |function6'| (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun |function6#frame| (T@FrameType Int Int) Bool)
(declare-fun |function7'| (T@PolymorphicMapType_12089 Bool Int) Bool)
(declare-fun |function7#frame| (T@FrameType Bool Int) Bool)
(declare-fun |function8'| (T@PolymorphicMapType_12089 Bool Int) Bool)
(declare-fun |function8#frame| (T@FrameType Bool Int) Bool)
(declare-fun succHeap (T@PolymorphicMapType_12089 T@PolymorphicMapType_12089) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12089 T@PolymorphicMapType_12089) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12110) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12638)
(declare-fun dummyFunction_3346 (Bool) Bool)
(declare-fun |function2#triggerStateless| (Int Int) Bool)
(declare-fun |function4#triggerStateless| (Bool Bool) Bool)
(declare-fun |function5#triggerStateless| (Int Int) Bool)
(declare-fun |function6#triggerStateless| (Int Int) Bool)
(declare-fun |function7#triggerStateless| (Bool Int) Bool)
(declare-fun |function8#triggerStateless| (Bool Int) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |function1'| (T@PolymorphicMapType_12089 Int) Bool)
(declare-fun |function1#triggerStateless| (Int) Bool)
(declare-fun |function3'| (T@PolymorphicMapType_12089 Bool) Bool)
(declare-fun |function3#triggerStateless| (Bool) Bool)
(declare-fun |function10'| (T@PolymorphicMapType_12089 Int) Bool)
(declare-fun |function10#triggerStateless| (Int) Bool)
(declare-fun |function11'| (T@PolymorphicMapType_12089 (Array T@Ref Bool)) Bool)
(declare-fun |function11#triggerStateless| ((Array T@Ref Bool)) Bool)
(declare-fun |Set#Union_7926| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_7926| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_7926| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_7926| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12089 T@PolymorphicMapType_12089 T@PolymorphicMapType_12110) Bool)
(declare-fun IsPredicateField_12149_29903 (T@Field_12149_29812) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12149 (T@Field_12149_29812) T@Field_12149_29945)
(declare-fun HasDirectPerm_12149_29876 (T@PolymorphicMapType_12110 T@Ref T@Field_12149_29812) Bool)
(declare-fun IsWandField_12149_31650 (T@Field_12149_29812) Bool)
(declare-fun WandMaskField_12149 (T@Field_12149_29812) T@Field_12149_29945)
(declare-fun function11 (T@PolymorphicMapType_12089 (Array T@Ref Bool)) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_12089)
(declare-fun ZeroMask () T@PolymorphicMapType_12110)
(declare-fun InsidePredicate_12149_12149 (T@Field_12149_29812 T@FrameType T@Field_12149_29812 T@FrameType) Bool)
(declare-fun IsPredicateField_7769_3238 (T@Field_18326_3238) Bool)
(declare-fun IsWandField_7769_3238 (T@Field_18326_3238) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7769_35196 (T@Field_12149_29945) Bool)
(declare-fun IsWandField_7769_35212 (T@Field_12149_29945) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7769_12163 (T@Field_12162_12163) Bool)
(declare-fun IsWandField_7769_12163 (T@Field_12162_12163) Bool)
(declare-fun IsPredicateField_7769_53 (T@Field_12149_53) Bool)
(declare-fun IsWandField_7769_53 (T@Field_12149_53) Bool)
(declare-fun HasDirectPerm_12149_35650 (T@PolymorphicMapType_12110 T@Ref T@Field_12149_29945) Bool)
(declare-fun HasDirectPerm_12149_3238 (T@PolymorphicMapType_12110 T@Ref T@Field_18326_3238) Bool)
(declare-fun HasDirectPerm_12149_12163 (T@PolymorphicMapType_12110 T@Ref T@Field_12162_12163) Bool)
(declare-fun HasDirectPerm_12149_53 (T@PolymorphicMapType_12110 T@Ref T@Field_12149_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12110 T@PolymorphicMapType_12110 T@PolymorphicMapType_12110) Bool)
(declare-fun |Set#Difference_7926| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_7926| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |function1#frame| (T@FrameType Int) Bool)
(declare-fun |function3#frame| (T@FrameType Bool) Bool)
(declare-fun |function10#frame| (T@FrameType Int) Bool)
(declare-fun function1 (T@PolymorphicMapType_12089 Int) Bool)
(declare-fun function3 (T@PolymorphicMapType_12089 Bool) Bool)
(declare-fun function10 (T@PolymorphicMapType_12089 Int) Bool)
(declare-fun |function0'| (T@PolymorphicMapType_12089) Bool)
(declare-fun |function0#frame| (T@FrameType) Bool)
(declare-fun |function9'| (T@PolymorphicMapType_12089) Bool)
(declare-fun |function9#frame| (T@FrameType) Bool)
(declare-fun |function0#triggerStateless| () Bool)
(declare-fun |function9#triggerStateless| () Bool)
(declare-fun |function11#frame| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun FrameFragment_5700 (Int) T@FrameType)
(declare-fun |function11#condqp1| (T@PolymorphicMapType_12089 (Array T@Ref Bool)) Int)
(declare-fun |Set#Empty_7926| () (Array T@Ref Bool))
(declare-fun |sk_function11#condqp1| (Int Int) T@Ref)
(declare-fun function0 (T@PolymorphicMapType_12089) Bool)
(declare-fun function9 (T@PolymorphicMapType_12089) Bool)
(declare-fun function2 (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun function4 (T@PolymorphicMapType_12089 Bool Bool) Bool)
(declare-fun function5 (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun function6 (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun function7 (T@PolymorphicMapType_12089 Bool Int) Bool)
(declare-fun function8 (T@PolymorphicMapType_12089 Bool Int) Bool)
(assert (forall ((Heap T@PolymorphicMapType_12089) (Mask T@PolymorphicMapType_12110) (y Int) (z Int) ) (!  (=> (state Heap Mask) (= (|function2'| Heap y z) (|function2#frame| EmptyFrame y z)))
 :qid |stdinbpl.531:15|
 :skolemid |92|
 :pattern ( (state Heap Mask) (|function2'| Heap y z))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12089) (Mask@@0 T@PolymorphicMapType_12110) (b_24 Bool) (c Bool) ) (!  (=> (state Heap@@0 Mask@@0) (= (|function4'| Heap@@0 b_24 c) (|function4#frame| EmptyFrame b_24 c)))
 :qid |stdinbpl.637:15|
 :skolemid |100|
 :pattern ( (state Heap@@0 Mask@@0) (|function4'| Heap@@0 b_24 c))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12089) (Mask@@1 T@PolymorphicMapType_12110) (x Int) (y@@0 Int) ) (!  (=> (state Heap@@1 Mask@@1) (= (|function5'| Heap@@1 x y@@0) (|function5#frame| EmptyFrame x y@@0)))
 :qid |stdinbpl.690:15|
 :skolemid |104|
 :pattern ( (state Heap@@1 Mask@@1) (|function5'| Heap@@1 x y@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12089) (Mask@@2 T@PolymorphicMapType_12110) (z@@0 Int) (w_2 Int) ) (!  (=> (state Heap@@2 Mask@@2) (= (|function6'| Heap@@2 z@@0 w_2) (|function6#frame| EmptyFrame z@@0 w_2)))
 :qid |stdinbpl.735:15|
 :skolemid |107|
 :pattern ( (state Heap@@2 Mask@@2) (|function6'| Heap@@2 z@@0 w_2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12089) (Mask@@3 T@PolymorphicMapType_12110) (b_24@@0 Bool) (z@@1 Int) ) (!  (=> (state Heap@@3 Mask@@3) (= (|function7'| Heap@@3 b_24@@0 z@@1) (|function7#frame| EmptyFrame b_24@@0 z@@1)))
 :qid |stdinbpl.797:15|
 :skolemid |112|
 :pattern ( (state Heap@@3 Mask@@3) (|function7'| Heap@@3 b_24@@0 z@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12089) (Mask@@4 T@PolymorphicMapType_12110) (b_24@@1 Bool) (z@@2 Int) ) (!  (=> (state Heap@@4 Mask@@4) (= (|function8'| Heap@@4 b_24@@1 z@@2) (|function8#frame| EmptyFrame b_24@@1 z@@2)))
 :qid |stdinbpl.843:15|
 :skolemid |115|
 :pattern ( (state Heap@@4 Mask@@4) (|function8'| Heap@@4 b_24@@1 z@@2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12089) (Heap1 T@PolymorphicMapType_12089) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12089) (Mask@@5 T@PolymorphicMapType_12110) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12089) (Heap1@@0 T@PolymorphicMapType_12089) (Heap2 T@PolymorphicMapType_12089) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12149_29945) ) (!  (not (select (|PolymorphicMapType_12638_12149_31123#PolymorphicMapType_12638| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12638_12149_31123#PolymorphicMapType_12638| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12149_29812) ) (!  (not (select (|PolymorphicMapType_12638_12149_29812#PolymorphicMapType_12638| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12638_12149_29812#PolymorphicMapType_12638| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18326_3238) ) (!  (not (select (|PolymorphicMapType_12638_12149_3238#PolymorphicMapType_12638| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12638_12149_3238#PolymorphicMapType_12638| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12162_12163) ) (!  (not (select (|PolymorphicMapType_12638_12149_12163#PolymorphicMapType_12638| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12638_12149_12163#PolymorphicMapType_12638| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12149_53) ) (!  (not (select (|PolymorphicMapType_12638_12149_53#PolymorphicMapType_12638| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12638_12149_53#PolymorphicMapType_12638| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12089) (y@@1 Int) (z@@3 Int) ) (! (dummyFunction_3346 (|function2#triggerStateless| y@@1 z@@3))
 :qid |stdinbpl.524:15|
 :skolemid |91|
 :pattern ( (|function2'| Heap@@6 y@@1 z@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12089) (b_24@@2 Bool) (c@@0 Bool) ) (! (dummyFunction_3346 (|function4#triggerStateless| b_24@@2 c@@0))
 :qid |stdinbpl.630:15|
 :skolemid |99|
 :pattern ( (|function4'| Heap@@7 b_24@@2 c@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12089) (x@@0 Int) (y@@2 Int) ) (! (dummyFunction_3346 (|function5#triggerStateless| x@@0 y@@2))
 :qid |stdinbpl.683:15|
 :skolemid |103|
 :pattern ( (|function5'| Heap@@8 x@@0 y@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12089) (z@@4 Int) (w_2@@0 Int) ) (! (dummyFunction_3346 (|function6#triggerStateless| z@@4 w_2@@0))
 :qid |stdinbpl.728:15|
 :skolemid |106|
 :pattern ( (|function6'| Heap@@9 z@@4 w_2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12089) (b_24@@3 Bool) (z@@5 Int) ) (! (dummyFunction_3346 (|function7#triggerStateless| b_24@@3 z@@5))
 :qid |stdinbpl.790:15|
 :skolemid |111|
 :pattern ( (|function7'| Heap@@10 b_24@@3 z@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12089) (b_24@@4 Bool) (z@@6 Int) ) (! (dummyFunction_3346 (|function8#triggerStateless| b_24@@4 z@@6))
 :qid |stdinbpl.836:15|
 :skolemid |114|
 :pattern ( (|function8'| Heap@@11 b_24@@4 z@@6))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.305:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12089) (z@@7 Int) ) (! (dummyFunction_3346 (|function1#triggerStateless| z@@7))
 :qid |stdinbpl.471:15|
 :skolemid |87|
 :pattern ( (|function1'| Heap@@12 z@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12089) (b_24@@5 Bool) ) (! (dummyFunction_3346 (|function3#triggerStateless| b_24@@5))
 :qid |stdinbpl.577:15|
 :skolemid |95|
 :pattern ( (|function3'| Heap@@13 b_24@@5))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12089) (z@@8 Int) ) (! (dummyFunction_3346 (|function10#triggerStateless| z@@8))
 :qid |stdinbpl.942:15|
 :skolemid |122|
 :pattern ( (|function10'| Heap@@14 z@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12089) (s_2 (Array T@Ref Bool)) ) (! (dummyFunction_3346 (|function11#triggerStateless| s_2))
 :qid |stdinbpl.995:15|
 :skolemid |126|
 :pattern ( (|function11'| Heap@@15 s_2))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_7926| (|Set#Union_7926| a@@0 b@@0) b@@0) (|Set#Union_7926| a@@0 b@@0))
 :qid |stdinbpl.257:18|
 :skolemid |38|
 :pattern ( (|Set#Union_7926| (|Set#Union_7926| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_7926| (|Set#Intersection_7926| a@@1 b@@1) b@@1) (|Set#Intersection_7926| a@@1 b@@1))
 :qid |stdinbpl.261:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_7926| (|Set#Intersection_7926| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_7926| r) o) (= r o))
 :qid |stdinbpl.226:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_7926| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_7926| (|Set#Union_7926| a@@2 b@@2)) (|Set#Card_7926| (|Set#Intersection_7926| a@@2 b@@2))) (+ (|Set#Card_7926| a@@2) (|Set#Card_7926| b@@2)))
 :qid |stdinbpl.265:18|
 :skolemid |42|
 :pattern ( (|Set#Card_7926| (|Set#Union_7926| a@@2 b@@2)))
 :pattern ( (|Set#Card_7926| (|Set#Intersection_7926| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.308:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12089) (ExhaleHeap T@PolymorphicMapType_12089) (Mask@@6 T@PolymorphicMapType_12110) (pm_f_12 T@Field_12149_29812) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap Mask@@6) (=> (and (HasDirectPerm_12149_29876 Mask@@6 null pm_f_12) (IsPredicateField_12149_29903 pm_f_12)) (= (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@16) null (PredicateMaskField_12149 pm_f_12)) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap) null (PredicateMaskField_12149 pm_f_12)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap Mask@@6) (IsPredicateField_12149_29903 pm_f_12) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap) null (PredicateMaskField_12149 pm_f_12)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12089) (ExhaleHeap@@0 T@PolymorphicMapType_12089) (Mask@@7 T@PolymorphicMapType_12110) (pm_f_12@@0 T@Field_12149_29812) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@0 Mask@@7) (=> (and (HasDirectPerm_12149_29876 Mask@@7 null pm_f_12@@0) (IsWandField_12149_31650 pm_f_12@@0)) (= (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@17) null (WandMaskField_12149 pm_f_12@@0)) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@0) null (WandMaskField_12149 pm_f_12@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@0 Mask@@7) (IsWandField_12149_31650 pm_f_12@@0) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@0) null (WandMaskField_12149 pm_f_12@@0)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12089) (Mask@@8 T@PolymorphicMapType_12110) (s_2@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@18 Mask@@8) (< AssumeFunctionsAbove 3)) (function11 Heap@@18 s_2@@0))
 :qid |stdinbpl.1001:15|
 :skolemid |127|
 :pattern ( (state Heap@@18 Mask@@8) (function11 Heap@@18 s_2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12089) (ExhaleHeap@@1 T@PolymorphicMapType_12089) (Mask@@9 T@PolymorphicMapType_12110) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@9) (=> (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@19) o_13 $allocated) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@1) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@9) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@1) o_13 $allocated))
)))
(assert (forall ((p T@Field_12149_29812) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12149_12149 p v_1 p w))
 :qid |stdinbpl.203:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12149_12149 p v_1 p w))
)))
(assert  (not (IsPredicateField_7769_3238 f_7)))
(assert  (not (IsWandField_7769_3238 f_7)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12089) (ExhaleHeap@@2 T@PolymorphicMapType_12089) (Mask@@10 T@PolymorphicMapType_12110) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@2 Mask@@10) (succHeap Heap@@20 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@2 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12110) (o_2@@4 T@Ref) (f_4@@4 T@Field_12149_29945) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_7769_35196 f_4@@4))) (not (IsWandField_7769_35212 f_4@@4))) (<= (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12110) (o_2@@5 T@Ref) (f_4@@5 T@Field_12149_29812) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_12149_29903 f_4@@5))) (not (IsWandField_12149_31650 f_4@@5))) (<= (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12110) (o_2@@6 T@Ref) (f_4@@6 T@Field_12162_12163) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7769_12163 f_4@@6))) (not (IsWandField_7769_12163 f_4@@6))) (<= (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12110) (o_2@@7 T@Ref) (f_4@@7 T@Field_12149_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| Mask@@14) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_7769_53 f_4@@7))) (not (IsWandField_7769_53 f_4@@7))) (<= (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| Mask@@14) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| Mask@@14) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12110) (o_2@@8 T@Ref) (f_4@@8 T@Field_18326_3238) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| Mask@@15) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_7769_3238 f_4@@8))) (not (IsWandField_7769_3238 f_4@@8))) (<= (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| Mask@@15) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| Mask@@15) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12110) (o_2@@9 T@Ref) (f_4@@9 T@Field_12149_29945) ) (! (= (HasDirectPerm_12149_35650 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12149_35650 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12110) (o_2@@10 T@Ref) (f_4@@10 T@Field_12149_29812) ) (! (= (HasDirectPerm_12149_29876 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12149_29876 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12110) (o_2@@11 T@Ref) (f_4@@11 T@Field_18326_3238) ) (! (= (HasDirectPerm_12149_3238 Mask@@18 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| Mask@@18) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12149_3238 Mask@@18 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12110) (o_2@@12 T@Ref) (f_4@@12 T@Field_12162_12163) ) (! (= (HasDirectPerm_12149_12163 Mask@@19 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| Mask@@19) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12149_12163 Mask@@19 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12110) (o_2@@13 T@Ref) (f_4@@13 T@Field_12149_53) ) (! (= (HasDirectPerm_12149_53 Mask@@20 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| Mask@@20) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12149_53 Mask@@20 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12089) (ExhaleHeap@@3 T@PolymorphicMapType_12089) (Mask@@21 T@PolymorphicMapType_12110) (pm_f_12@@1 T@Field_12149_29812) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@3 Mask@@21) (=> (and (HasDirectPerm_12149_29876 Mask@@21 null pm_f_12@@1) (IsPredicateField_12149_29903 pm_f_12@@1)) (and (and (and (and (forall ((o2_12 T@Ref) (f_18 T@Field_12149_53) ) (!  (=> (select (|PolymorphicMapType_12638_12149_53#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) null (PredicateMaskField_12149 pm_f_12@@1))) o2_12 f_18) (= (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@21) o2_12 f_18) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12 f_18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12 f_18))
)) (forall ((o2_12@@0 T@Ref) (f_18@@0 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_12638_12149_12163#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) null (PredicateMaskField_12149 pm_f_12@@1))) o2_12@@0 f_18@@0) (= (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@21) o2_12@@0 f_18@@0) (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@0 f_18@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@0 f_18@@0))
))) (forall ((o2_12@@1 T@Ref) (f_18@@1 T@Field_18326_3238) ) (!  (=> (select (|PolymorphicMapType_12638_12149_3238#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) null (PredicateMaskField_12149 pm_f_12@@1))) o2_12@@1 f_18@@1) (= (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@21) o2_12@@1 f_18@@1) (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@1 f_18@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@1 f_18@@1))
))) (forall ((o2_12@@2 T@Ref) (f_18@@2 T@Field_12149_29812) ) (!  (=> (select (|PolymorphicMapType_12638_12149_29812#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) null (PredicateMaskField_12149 pm_f_12@@1))) o2_12@@2 f_18@@2) (= (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@21) o2_12@@2 f_18@@2) (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@2 f_18@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@2 f_18@@2))
))) (forall ((o2_12@@3 T@Ref) (f_18@@3 T@Field_12149_29945) ) (!  (=> (select (|PolymorphicMapType_12638_12149_31123#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) null (PredicateMaskField_12149 pm_f_12@@1))) o2_12@@3 f_18@@3) (= (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) o2_12@@3 f_18@@3) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@3 f_18@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@3 f_18@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@3 Mask@@21) (IsPredicateField_12149_29903 pm_f_12@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12089) (ExhaleHeap@@4 T@PolymorphicMapType_12089) (Mask@@22 T@PolymorphicMapType_12110) (pm_f_12@@2 T@Field_12149_29812) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@4 Mask@@22) (=> (and (HasDirectPerm_12149_29876 Mask@@22 null pm_f_12@@2) (IsWandField_12149_31650 pm_f_12@@2)) (and (and (and (and (forall ((o2_12@@4 T@Ref) (f_18@@4 T@Field_12149_53) ) (!  (=> (select (|PolymorphicMapType_12638_12149_53#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) null (WandMaskField_12149 pm_f_12@@2))) o2_12@@4 f_18@@4) (= (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@22) o2_12@@4 f_18@@4) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@4 f_18@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@4 f_18@@4))
)) (forall ((o2_12@@5 T@Ref) (f_18@@5 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_12638_12149_12163#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) null (WandMaskField_12149 pm_f_12@@2))) o2_12@@5 f_18@@5) (= (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@22) o2_12@@5 f_18@@5) (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@5 f_18@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@5 f_18@@5))
))) (forall ((o2_12@@6 T@Ref) (f_18@@6 T@Field_18326_3238) ) (!  (=> (select (|PolymorphicMapType_12638_12149_3238#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) null (WandMaskField_12149 pm_f_12@@2))) o2_12@@6 f_18@@6) (= (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@22) o2_12@@6 f_18@@6) (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@6 f_18@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@6 f_18@@6))
))) (forall ((o2_12@@7 T@Ref) (f_18@@7 T@Field_12149_29812) ) (!  (=> (select (|PolymorphicMapType_12638_12149_29812#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) null (WandMaskField_12149 pm_f_12@@2))) o2_12@@7 f_18@@7) (= (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@22) o2_12@@7 f_18@@7) (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@7 f_18@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@7 f_18@@7))
))) (forall ((o2_12@@8 T@Ref) (f_18@@8 T@Field_12149_29945) ) (!  (=> (select (|PolymorphicMapType_12638_12149_31123#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) null (WandMaskField_12149 pm_f_12@@2))) o2_12@@8 f_18@@8) (= (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) o2_12@@8 f_18@@8) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@8 f_18@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@8 f_18@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@4 Mask@@22) (IsWandField_12149_31650 pm_f_12@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.191:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12089) (ExhaleHeap@@5 T@PolymorphicMapType_12089) (Mask@@23 T@PolymorphicMapType_12110) (o_13@@0 T@Ref) (f_18@@9 T@Field_12149_29945) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@23) (=> (HasDirectPerm_12149_35650 Mask@@23 o_13@@0 f_18@@9) (= (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@23) o_13@@0 f_18@@9) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@5) o_13@@0 f_18@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@23) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@5) o_13@@0 f_18@@9))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12089) (ExhaleHeap@@6 T@PolymorphicMapType_12089) (Mask@@24 T@PolymorphicMapType_12110) (o_13@@1 T@Ref) (f_18@@10 T@Field_12149_29812) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@6 Mask@@24) (=> (HasDirectPerm_12149_29876 Mask@@24 o_13@@1 f_18@@10) (= (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@24) o_13@@1 f_18@@10) (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@6) o_13@@1 f_18@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@6 Mask@@24) (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@6) o_13@@1 f_18@@10))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12089) (ExhaleHeap@@7 T@PolymorphicMapType_12089) (Mask@@25 T@PolymorphicMapType_12110) (o_13@@2 T@Ref) (f_18@@11 T@Field_18326_3238) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@7 Mask@@25) (=> (HasDirectPerm_12149_3238 Mask@@25 o_13@@2 f_18@@11) (= (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@25) o_13@@2 f_18@@11) (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@7) o_13@@2 f_18@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@7 Mask@@25) (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@7) o_13@@2 f_18@@11))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12089) (ExhaleHeap@@8 T@PolymorphicMapType_12089) (Mask@@26 T@PolymorphicMapType_12110) (o_13@@3 T@Ref) (f_18@@12 T@Field_12162_12163) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@8 Mask@@26) (=> (HasDirectPerm_12149_12163 Mask@@26 o_13@@3 f_18@@12) (= (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@26) o_13@@3 f_18@@12) (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@8) o_13@@3 f_18@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@8 Mask@@26) (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@8) o_13@@3 f_18@@12))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12089) (ExhaleHeap@@9 T@PolymorphicMapType_12089) (Mask@@27 T@PolymorphicMapType_12110) (o_13@@4 T@Ref) (f_18@@13 T@Field_12149_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_12149_53 Mask@@27 o_13@@4 f_18@@13) (= (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@27) o_13@@4 f_18@@13) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@9) o_13@@4 f_18@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@9) o_13@@4 f_18@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_12149_29945) ) (! (= (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_12149_29812) ) (! (= (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12162_12163) ) (! (= (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12149_53) ) (! (= (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18326_3238) ) (! (= (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12110) (SummandMask1 T@PolymorphicMapType_12110) (SummandMask2 T@PolymorphicMapType_12110) (o_2@@19 T@Ref) (f_4@@19 T@Field_12149_29945) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12110) (SummandMask1@@0 T@PolymorphicMapType_12110) (SummandMask2@@0 T@PolymorphicMapType_12110) (o_2@@20 T@Ref) (f_4@@20 T@Field_12149_29812) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12110) (SummandMask1@@1 T@PolymorphicMapType_12110) (SummandMask2@@1 T@PolymorphicMapType_12110) (o_2@@21 T@Ref) (f_4@@21 T@Field_12162_12163) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12110) (SummandMask1@@2 T@PolymorphicMapType_12110) (SummandMask2@@2 T@PolymorphicMapType_12110) (o_2@@22 T@Ref) (f_4@@22 T@Field_12149_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12110) (SummandMask1@@3 T@PolymorphicMapType_12110) (SummandMask2@@3 T@PolymorphicMapType_12110) (o_2@@23 T@Ref) (f_4@@23 T@Field_18326_3238) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_7926| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.254:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_7926| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_7926| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_7926| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_7926| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.269:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_7926| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_7926| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x@@1 T@Ref) (y@@3 T@Ref) ) (!  (=> (select a@@6 y@@3) (select (|Set#UnionOne_7926| a@@6 x@@1) y@@3))
 :qid |stdinbpl.234:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_7926| a@@6 x@@1) (select a@@6 y@@3))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select a@@7 y@@4) (select (|Set#Union_7926| a@@7 b@@5) y@@4))
 :qid |stdinbpl.244:18|
 :skolemid |35|
 :pattern ( (|Set#Union_7926| a@@7 b@@5) (select a@@7 y@@4))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@5 T@Ref) ) (!  (=> (select b@@6 y@@5) (select (|Set#Union_7926| a@@8 b@@6) y@@5))
 :qid |stdinbpl.246:18|
 :skolemid |36|
 :pattern ( (|Set#Union_7926| a@@8 b@@6) (select b@@6 y@@5))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@2 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_7926| a@@9 x@@2) o@@2)  (or (= o@@2 x@@2) (select a@@9 o@@2)))
 :qid |stdinbpl.230:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_7926| a@@9 x@@2) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@6 T@Ref) ) (!  (=> (select b@@7 y@@6) (not (select (|Set#Difference_7926| a@@10 b@@7) y@@6)))
 :qid |stdinbpl.271:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_7926| a@@10 b@@7) (select b@@7 y@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12089) (Mask@@28 T@PolymorphicMapType_12110) (z@@9 Int) ) (!  (=> (state Heap@@28 Mask@@28) (= (|function1'| Heap@@28 z@@9) (|function1#frame| EmptyFrame z@@9)))
 :qid |stdinbpl.478:15|
 :skolemid |88|
 :pattern ( (state Heap@@28 Mask@@28) (|function1'| Heap@@28 z@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12089) (Mask@@29 T@PolymorphicMapType_12110) (b_24@@6 Bool) ) (!  (=> (state Heap@@29 Mask@@29) (= (|function3'| Heap@@29 b_24@@6) (|function3#frame| EmptyFrame b_24@@6)))
 :qid |stdinbpl.584:15|
 :skolemid |96|
 :pattern ( (state Heap@@29 Mask@@29) (|function3'| Heap@@29 b_24@@6))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12089) (Mask@@30 T@PolymorphicMapType_12110) (z@@10 Int) ) (!  (=> (state Heap@@30 Mask@@30) (= (|function10'| Heap@@30 z@@10) (|function10#frame| EmptyFrame z@@10)))
 :qid |stdinbpl.949:15|
 :skolemid |123|
 :pattern ( (state Heap@@30 Mask@@30) (|function10'| Heap@@30 z@@10))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_7926| (|Set#Difference_7926| a@@11 b@@8)) (|Set#Card_7926| (|Set#Difference_7926| b@@8 a@@11))) (|Set#Card_7926| (|Set#Intersection_7926| a@@11 b@@8))) (|Set#Card_7926| (|Set#Union_7926| a@@11 b@@8))) (= (|Set#Card_7926| (|Set#Difference_7926| a@@11 b@@8)) (- (|Set#Card_7926| a@@11) (|Set#Card_7926| (|Set#Intersection_7926| a@@11 b@@8)))))
 :qid |stdinbpl.273:18|
 :skolemid |45|
 :pattern ( (|Set#Card_7926| (|Set#Difference_7926| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_7926| s))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Set#Card_7926| s))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12089) (z@@11 Int) ) (!  (and (= (function1 Heap@@31 z@@11) (|function1'| Heap@@31 z@@11)) (dummyFunction_3346 (|function1#triggerStateless| z@@11)))
 :qid |stdinbpl.467:15|
 :skolemid |86|
 :pattern ( (function1 Heap@@31 z@@11))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12089) (b_24@@7 Bool) ) (!  (and (= (function3 Heap@@32 b_24@@7) (|function3'| Heap@@32 b_24@@7)) (dummyFunction_3346 (|function3#triggerStateless| b_24@@7)))
 :qid |stdinbpl.573:15|
 :skolemid |94|
 :pattern ( (function3 Heap@@32 b_24@@7))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12089) (z@@12 Int) ) (!  (and (= (function10 Heap@@33 z@@12) (|function10'| Heap@@33 z@@12)) (dummyFunction_3346 (|function10#triggerStateless| z@@12)))
 :qid |stdinbpl.938:15|
 :skolemid |121|
 :pattern ( (function10 Heap@@33 z@@12))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12089) (s_2@@1 (Array T@Ref Bool)) ) (!  (and (= (function11 Heap@@34 s_2@@1) (|function11'| Heap@@34 s_2@@1)) (dummyFunction_3346 (|function11#triggerStateless| s_2@@1)))
 :qid |stdinbpl.991:15|
 :skolemid |125|
 :pattern ( (function11 Heap@@34 s_2@@1))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12089) (Mask@@31 T@PolymorphicMapType_12110) ) (!  (=> (state Heap@@35 Mask@@31) (= (|function0'| Heap@@35) (|function0#frame| EmptyFrame)))
 :qid |stdinbpl.425:15|
 :skolemid |84|
 :pattern ( (state Heap@@35 Mask@@31) (|function0'| Heap@@35))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12089) (Mask@@32 T@PolymorphicMapType_12110) ) (!  (=> (state Heap@@36 Mask@@32) (= (|function9'| Heap@@36) (|function9#frame| EmptyFrame)))
 :qid |stdinbpl.896:15|
 :skolemid |119|
 :pattern ( (state Heap@@36 Mask@@32) (|function9'| Heap@@36))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@3 T@Ref) ) (! (select (|Set#UnionOne_7926| a@@12 x@@3) x@@3)
 :qid |stdinbpl.232:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_7926| a@@12 x@@3))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (select a@@13 x@@4) (= (|Set#Card_7926| (|Set#UnionOne_7926| a@@13 x@@4)) (|Set#Card_7926| a@@13)))
 :qid |stdinbpl.236:18|
 :skolemid |32|
 :pattern ( (|Set#Card_7926| (|Set#UnionOne_7926| a@@13 x@@4)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_7926| (|Set#Singleton_7926| r@@0)) 1)
 :qid |stdinbpl.227:18|
 :skolemid |28|
 :pattern ( (|Set#Card_7926| (|Set#Singleton_7926| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_7926| r@@1) r@@1)
 :qid |stdinbpl.225:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_7926| r@@1))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12089) ) (! (dummyFunction_3346 |function0#triggerStateless|)
 :qid |stdinbpl.418:15|
 :skolemid |83|
 :pattern ( (|function0'| Heap@@37))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_12089) ) (! (dummyFunction_3346 |function9#triggerStateless|)
 :qid |stdinbpl.889:15|
 :skolemid |118|
 :pattern ( (|function9'| Heap@@38))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_7926| a@@14 (|Set#Union_7926| a@@14 b@@9)) (|Set#Union_7926| a@@14 b@@9))
 :qid |stdinbpl.259:18|
 :skolemid |39|
 :pattern ( (|Set#Union_7926| a@@14 (|Set#Union_7926| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_7926| a@@15 (|Set#Intersection_7926| a@@15 b@@10)) (|Set#Intersection_7926| a@@15 b@@10))
 :qid |stdinbpl.263:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_7926| a@@15 (|Set#Intersection_7926| a@@15 b@@10)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12089) (Mask@@33 T@PolymorphicMapType_12110) (s_2@@2 (Array T@Ref Bool)) ) (!  (=> (state Heap@@39 Mask@@33) (= (|function11'| Heap@@39 s_2@@2) (|function11#frame| (FrameFragment_5700 (|function11#condqp1| Heap@@39 s_2@@2)) s_2@@2)))
 :qid |stdinbpl.1008:15|
 :skolemid |128|
 :pattern ( (state Heap@@39 Mask@@33) (|function11'| Heap@@39 s_2@@2))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_7926| o@@3))
 :qid |stdinbpl.219:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_7926| o@@3))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_12089) (o_34 T@Ref) (f_36 T@Field_12149_29812) (v T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@40) (store (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@40) o_34 f_36 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@40) (store (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@40) o_34 f_36 v)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_12089) (o_34@@0 T@Ref) (f_36@@0 T@Field_12149_29945) (v@@0 T@PolymorphicMapType_12638) ) (! (succHeap Heap@@41 (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@41) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@41) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@41) (store (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@41) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@41) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@41) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@41) (store (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@41) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_12089) (o_34@@1 T@Ref) (f_36@@1 T@Field_18326_3238) (v@@1 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@42) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@42) (store (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@42) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@42) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@42) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@42) (store (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@42) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@42) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_12089) (o_34@@2 T@Ref) (f_36@@2 T@Field_12162_12163) (v@@2 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@43) (store (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@43) o_34@@2 f_36@@2 v@@2) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@43) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@43) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@43) (store (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@43) o_34@@2 f_36@@2 v@@2) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@43) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@43) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_12089) (o_34@@3 T@Ref) (f_36@@3 T@Field_12149_53) (v@@3 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_12089 (store (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@44) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12089 (store (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@44) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@44)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.303:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.304:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_7926| s@@0) 0) (= s@@0 |Set#Empty_7926|)) (=> (not (= (|Set#Card_7926| s@@0) 0)) (exists ((x@@5 T@Ref) ) (! (select s@@0 x@@5)
 :qid |stdinbpl.222:33|
 :skolemid |24|
))))
 :qid |stdinbpl.220:18|
 :skolemid |25|
 :pattern ( (|Set#Card_7926| s@@0))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_12089) (Heap1Heap T@PolymorphicMapType_12089) (s_2@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select s_2@@3 (|sk_function11#condqp1| (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3))) (< NoPerm FullPerm))  (and (select s_2@@3 (|sk_function11#condqp1| (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3))) (< NoPerm FullPerm))) (=> (and (select s_2@@3 (|sk_function11#condqp1| (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap2Heap) (|sk_function11#condqp1| (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3)) f_7) (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap1Heap) (|sk_function11#condqp1| (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3)) f_7)))) (= (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3)))
 :qid |stdinbpl.1018:15|
 :skolemid |129|
 :pattern ( (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (not (select a@@18 x@@6)) (= (|Set#Card_7926| (|Set#UnionOne_7926| a@@18 x@@6)) (+ (|Set#Card_7926| a@@18) 1)))
 :qid |stdinbpl.238:18|
 :skolemid |33|
 :pattern ( (|Set#Card_7926| (|Set#UnionOne_7926| a@@18 x@@6)))
)))
(assert (forall ((o_34@@4 T@Ref) (f_40 T@Field_12162_12163) (Heap@@45 T@PolymorphicMapType_12089) ) (!  (=> (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@45) o_34@@4 $allocated) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@45) (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@45) o_34@@4 f_40) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@45) o_34@@4 f_40))
)))
(assert (forall ((p@@1 T@Field_12149_29812) (v_1@@0 T@FrameType) (q T@Field_12149_29812) (w@@0 T@FrameType) (r@@2 T@Field_12149_29812) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12149_12149 p@@1 v_1@@0 q w@@0) (InsidePredicate_12149_12149 q w@@0 r@@2 u)) (InsidePredicate_12149_12149 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.198:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12149_12149 p@@1 v_1@@0 q w@@0) (InsidePredicate_12149_12149 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.309:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_12089) ) (!  (and (= (function0 Heap@@46) (|function0'| Heap@@46)) (dummyFunction_3346 |function0#triggerStateless|))
 :qid |stdinbpl.414:15|
 :skolemid |82|
 :pattern ( (function0 Heap@@46))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_12089) ) (!  (and (= (function9 Heap@@47) (|function9'| Heap@@47)) (dummyFunction_3346 |function9#triggerStateless|))
 :qid |stdinbpl.885:15|
 :skolemid |117|
 :pattern ( (function9 Heap@@47))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_7926| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.242:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_7926| a@@20 b@@13) o@@4))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_12089) (y@@7 Int) (z@@13 Int) ) (!  (and (= (function2 Heap@@48 y@@7 z@@13) (|function2'| Heap@@48 y@@7 z@@13)) (dummyFunction_3346 (|function2#triggerStateless| y@@7 z@@13)))
 :qid |stdinbpl.520:15|
 :skolemid |90|
 :pattern ( (function2 Heap@@48 y@@7 z@@13))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_12089) (b_24@@8 Bool) (c@@1 Bool) ) (!  (and (= (function4 Heap@@49 b_24@@8 c@@1) (|function4'| Heap@@49 b_24@@8 c@@1)) (dummyFunction_3346 (|function4#triggerStateless| b_24@@8 c@@1)))
 :qid |stdinbpl.626:15|
 :skolemid |98|
 :pattern ( (function4 Heap@@49 b_24@@8 c@@1))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_12089) (x@@7 Int) (y@@8 Int) ) (!  (and (= (function5 Heap@@50 x@@7 y@@8) (|function5'| Heap@@50 x@@7 y@@8)) (dummyFunction_3346 (|function5#triggerStateless| x@@7 y@@8)))
 :qid |stdinbpl.679:15|
 :skolemid |102|
 :pattern ( (function5 Heap@@50 x@@7 y@@8))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_12089) (z@@14 Int) (w_2@@1 Int) ) (!  (and (= (function6 Heap@@51 z@@14 w_2@@1) (|function6'| Heap@@51 z@@14 w_2@@1)) (dummyFunction_3346 (|function6#triggerStateless| z@@14 w_2@@1)))
 :qid |stdinbpl.724:15|
 :skolemid |105|
 :pattern ( (function6 Heap@@51 z@@14 w_2@@1))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_12089) (b_24@@9 Bool) (z@@15 Int) ) (!  (and (= (function7 Heap@@52 b_24@@9 z@@15) (|function7'| Heap@@52 b_24@@9 z@@15)) (dummyFunction_3346 (|function7#triggerStateless| b_24@@9 z@@15)))
 :qid |stdinbpl.786:15|
 :skolemid |110|
 :pattern ( (function7 Heap@@52 b_24@@9 z@@15))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_12089) (b_24@@10 Bool) (z@@16 Int) ) (!  (and (= (function8 Heap@@53 b_24@@10 z@@16) (|function8'| Heap@@53 b_24@@10 z@@16)) (dummyFunction_3346 (|function8#triggerStateless| b_24@@10 z@@16)))
 :qid |stdinbpl.832:15|
 :skolemid |113|
 :pattern ( (function8 Heap@@53 b_24@@10 z@@16))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |function5#definedness|)
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
(declare-sort T@Field_12149_53 0)
(declare-sort T@Field_12162_12163 0)
(declare-sort T@Field_18326_3238 0)
(declare-sort T@Field_12149_29945 0)
(declare-sort T@Field_12149_29812 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12110 0)) (((PolymorphicMapType_12110 (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| (Array T@Ref T@Field_18326_3238 Real)) (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| (Array T@Ref T@Field_12149_53 Real)) (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| (Array T@Ref T@Field_12162_12163 Real)) (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| (Array T@Ref T@Field_12149_29812 Real)) (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| (Array T@Ref T@Field_12149_29945 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12638 0)) (((PolymorphicMapType_12638 (|PolymorphicMapType_12638_12149_53#PolymorphicMapType_12638| (Array T@Ref T@Field_12149_53 Bool)) (|PolymorphicMapType_12638_12149_12163#PolymorphicMapType_12638| (Array T@Ref T@Field_12162_12163 Bool)) (|PolymorphicMapType_12638_12149_3238#PolymorphicMapType_12638| (Array T@Ref T@Field_18326_3238 Bool)) (|PolymorphicMapType_12638_12149_29812#PolymorphicMapType_12638| (Array T@Ref T@Field_12149_29812 Bool)) (|PolymorphicMapType_12638_12149_31123#PolymorphicMapType_12638| (Array T@Ref T@Field_12149_29945 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12089 0)) (((PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| (Array T@Ref T@Field_12149_53 Bool)) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| (Array T@Ref T@Field_12162_12163 T@Ref)) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| (Array T@Ref T@Field_18326_3238 Int)) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| (Array T@Ref T@Field_12149_29945 T@PolymorphicMapType_12638)) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| (Array T@Ref T@Field_12149_29812 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12149_53)
(declare-fun f_7 () T@Field_18326_3238)
(declare-fun state (T@PolymorphicMapType_12089 T@PolymorphicMapType_12110) Bool)
(declare-fun |function2'| (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun |function2#frame| (T@FrameType Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |function4'| (T@PolymorphicMapType_12089 Bool Bool) Bool)
(declare-fun |function4#frame| (T@FrameType Bool Bool) Bool)
(declare-fun |function5'| (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun |function5#frame| (T@FrameType Int Int) Bool)
(declare-fun |function6'| (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun |function6#frame| (T@FrameType Int Int) Bool)
(declare-fun |function7'| (T@PolymorphicMapType_12089 Bool Int) Bool)
(declare-fun |function7#frame| (T@FrameType Bool Int) Bool)
(declare-fun |function8'| (T@PolymorphicMapType_12089 Bool Int) Bool)
(declare-fun |function8#frame| (T@FrameType Bool Int) Bool)
(declare-fun succHeap (T@PolymorphicMapType_12089 T@PolymorphicMapType_12089) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12089 T@PolymorphicMapType_12089) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12110) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12638)
(declare-fun dummyFunction_3346 (Bool) Bool)
(declare-fun |function2#triggerStateless| (Int Int) Bool)
(declare-fun |function4#triggerStateless| (Bool Bool) Bool)
(declare-fun |function5#triggerStateless| (Int Int) Bool)
(declare-fun |function6#triggerStateless| (Int Int) Bool)
(declare-fun |function7#triggerStateless| (Bool Int) Bool)
(declare-fun |function8#triggerStateless| (Bool Int) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |function1'| (T@PolymorphicMapType_12089 Int) Bool)
(declare-fun |function1#triggerStateless| (Int) Bool)
(declare-fun |function3'| (T@PolymorphicMapType_12089 Bool) Bool)
(declare-fun |function3#triggerStateless| (Bool) Bool)
(declare-fun |function10'| (T@PolymorphicMapType_12089 Int) Bool)
(declare-fun |function10#triggerStateless| (Int) Bool)
(declare-fun |function11'| (T@PolymorphicMapType_12089 (Array T@Ref Bool)) Bool)
(declare-fun |function11#triggerStateless| ((Array T@Ref Bool)) Bool)
(declare-fun |Set#Union_7926| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_7926| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_7926| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_7926| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12089 T@PolymorphicMapType_12089 T@PolymorphicMapType_12110) Bool)
(declare-fun IsPredicateField_12149_29903 (T@Field_12149_29812) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12149 (T@Field_12149_29812) T@Field_12149_29945)
(declare-fun HasDirectPerm_12149_29876 (T@PolymorphicMapType_12110 T@Ref T@Field_12149_29812) Bool)
(declare-fun IsWandField_12149_31650 (T@Field_12149_29812) Bool)
(declare-fun WandMaskField_12149 (T@Field_12149_29812) T@Field_12149_29945)
(declare-fun function11 (T@PolymorphicMapType_12089 (Array T@Ref Bool)) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_12089)
(declare-fun ZeroMask () T@PolymorphicMapType_12110)
(declare-fun InsidePredicate_12149_12149 (T@Field_12149_29812 T@FrameType T@Field_12149_29812 T@FrameType) Bool)
(declare-fun IsPredicateField_7769_3238 (T@Field_18326_3238) Bool)
(declare-fun IsWandField_7769_3238 (T@Field_18326_3238) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7769_35196 (T@Field_12149_29945) Bool)
(declare-fun IsWandField_7769_35212 (T@Field_12149_29945) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7769_12163 (T@Field_12162_12163) Bool)
(declare-fun IsWandField_7769_12163 (T@Field_12162_12163) Bool)
(declare-fun IsPredicateField_7769_53 (T@Field_12149_53) Bool)
(declare-fun IsWandField_7769_53 (T@Field_12149_53) Bool)
(declare-fun HasDirectPerm_12149_35650 (T@PolymorphicMapType_12110 T@Ref T@Field_12149_29945) Bool)
(declare-fun HasDirectPerm_12149_3238 (T@PolymorphicMapType_12110 T@Ref T@Field_18326_3238) Bool)
(declare-fun HasDirectPerm_12149_12163 (T@PolymorphicMapType_12110 T@Ref T@Field_12162_12163) Bool)
(declare-fun HasDirectPerm_12149_53 (T@PolymorphicMapType_12110 T@Ref T@Field_12149_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12110 T@PolymorphicMapType_12110 T@PolymorphicMapType_12110) Bool)
(declare-fun |Set#Difference_7926| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_7926| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |function1#frame| (T@FrameType Int) Bool)
(declare-fun |function3#frame| (T@FrameType Bool) Bool)
(declare-fun |function10#frame| (T@FrameType Int) Bool)
(declare-fun function1 (T@PolymorphicMapType_12089 Int) Bool)
(declare-fun function3 (T@PolymorphicMapType_12089 Bool) Bool)
(declare-fun function10 (T@PolymorphicMapType_12089 Int) Bool)
(declare-fun |function0'| (T@PolymorphicMapType_12089) Bool)
(declare-fun |function0#frame| (T@FrameType) Bool)
(declare-fun |function9'| (T@PolymorphicMapType_12089) Bool)
(declare-fun |function9#frame| (T@FrameType) Bool)
(declare-fun |function0#triggerStateless| () Bool)
(declare-fun |function9#triggerStateless| () Bool)
(declare-fun |function11#frame| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun FrameFragment_5700 (Int) T@FrameType)
(declare-fun |function11#condqp1| (T@PolymorphicMapType_12089 (Array T@Ref Bool)) Int)
(declare-fun |Set#Empty_7926| () (Array T@Ref Bool))
(declare-fun |sk_function11#condqp1| (Int Int) T@Ref)
(declare-fun function0 (T@PolymorphicMapType_12089) Bool)
(declare-fun function9 (T@PolymorphicMapType_12089) Bool)
(declare-fun function2 (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun function4 (T@PolymorphicMapType_12089 Bool Bool) Bool)
(declare-fun function5 (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun function6 (T@PolymorphicMapType_12089 Int Int) Bool)
(declare-fun function7 (T@PolymorphicMapType_12089 Bool Int) Bool)
(declare-fun function8 (T@PolymorphicMapType_12089 Bool Int) Bool)
(assert (forall ((Heap T@PolymorphicMapType_12089) (Mask T@PolymorphicMapType_12110) (y Int) (z Int) ) (!  (=> (state Heap Mask) (= (|function2'| Heap y z) (|function2#frame| EmptyFrame y z)))
 :qid |stdinbpl.531:15|
 :skolemid |92|
 :pattern ( (state Heap Mask) (|function2'| Heap y z))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12089) (Mask@@0 T@PolymorphicMapType_12110) (b_24 Bool) (c Bool) ) (!  (=> (state Heap@@0 Mask@@0) (= (|function4'| Heap@@0 b_24 c) (|function4#frame| EmptyFrame b_24 c)))
 :qid |stdinbpl.637:15|
 :skolemid |100|
 :pattern ( (state Heap@@0 Mask@@0) (|function4'| Heap@@0 b_24 c))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12089) (Mask@@1 T@PolymorphicMapType_12110) (x Int) (y@@0 Int) ) (!  (=> (state Heap@@1 Mask@@1) (= (|function5'| Heap@@1 x y@@0) (|function5#frame| EmptyFrame x y@@0)))
 :qid |stdinbpl.690:15|
 :skolemid |104|
 :pattern ( (state Heap@@1 Mask@@1) (|function5'| Heap@@1 x y@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12089) (Mask@@2 T@PolymorphicMapType_12110) (z@@0 Int) (w_2 Int) ) (!  (=> (state Heap@@2 Mask@@2) (= (|function6'| Heap@@2 z@@0 w_2) (|function6#frame| EmptyFrame z@@0 w_2)))
 :qid |stdinbpl.735:15|
 :skolemid |107|
 :pattern ( (state Heap@@2 Mask@@2) (|function6'| Heap@@2 z@@0 w_2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12089) (Mask@@3 T@PolymorphicMapType_12110) (b_24@@0 Bool) (z@@1 Int) ) (!  (=> (state Heap@@3 Mask@@3) (= (|function7'| Heap@@3 b_24@@0 z@@1) (|function7#frame| EmptyFrame b_24@@0 z@@1)))
 :qid |stdinbpl.797:15|
 :skolemid |112|
 :pattern ( (state Heap@@3 Mask@@3) (|function7'| Heap@@3 b_24@@0 z@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12089) (Mask@@4 T@PolymorphicMapType_12110) (b_24@@1 Bool) (z@@2 Int) ) (!  (=> (state Heap@@4 Mask@@4) (= (|function8'| Heap@@4 b_24@@1 z@@2) (|function8#frame| EmptyFrame b_24@@1 z@@2)))
 :qid |stdinbpl.843:15|
 :skolemid |115|
 :pattern ( (state Heap@@4 Mask@@4) (|function8'| Heap@@4 b_24@@1 z@@2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12089) (Heap1 T@PolymorphicMapType_12089) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12089) (Mask@@5 T@PolymorphicMapType_12110) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12089) (Heap1@@0 T@PolymorphicMapType_12089) (Heap2 T@PolymorphicMapType_12089) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12149_29945) ) (!  (not (select (|PolymorphicMapType_12638_12149_31123#PolymorphicMapType_12638| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12638_12149_31123#PolymorphicMapType_12638| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12149_29812) ) (!  (not (select (|PolymorphicMapType_12638_12149_29812#PolymorphicMapType_12638| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12638_12149_29812#PolymorphicMapType_12638| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18326_3238) ) (!  (not (select (|PolymorphicMapType_12638_12149_3238#PolymorphicMapType_12638| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12638_12149_3238#PolymorphicMapType_12638| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12162_12163) ) (!  (not (select (|PolymorphicMapType_12638_12149_12163#PolymorphicMapType_12638| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12638_12149_12163#PolymorphicMapType_12638| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12149_53) ) (!  (not (select (|PolymorphicMapType_12638_12149_53#PolymorphicMapType_12638| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12638_12149_53#PolymorphicMapType_12638| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12089) (y@@1 Int) (z@@3 Int) ) (! (dummyFunction_3346 (|function2#triggerStateless| y@@1 z@@3))
 :qid |stdinbpl.524:15|
 :skolemid |91|
 :pattern ( (|function2'| Heap@@6 y@@1 z@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12089) (b_24@@2 Bool) (c@@0 Bool) ) (! (dummyFunction_3346 (|function4#triggerStateless| b_24@@2 c@@0))
 :qid |stdinbpl.630:15|
 :skolemid |99|
 :pattern ( (|function4'| Heap@@7 b_24@@2 c@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12089) (x@@0 Int) (y@@2 Int) ) (! (dummyFunction_3346 (|function5#triggerStateless| x@@0 y@@2))
 :qid |stdinbpl.683:15|
 :skolemid |103|
 :pattern ( (|function5'| Heap@@8 x@@0 y@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12089) (z@@4 Int) (w_2@@0 Int) ) (! (dummyFunction_3346 (|function6#triggerStateless| z@@4 w_2@@0))
 :qid |stdinbpl.728:15|
 :skolemid |106|
 :pattern ( (|function6'| Heap@@9 z@@4 w_2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12089) (b_24@@3 Bool) (z@@5 Int) ) (! (dummyFunction_3346 (|function7#triggerStateless| b_24@@3 z@@5))
 :qid |stdinbpl.790:15|
 :skolemid |111|
 :pattern ( (|function7'| Heap@@10 b_24@@3 z@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12089) (b_24@@4 Bool) (z@@6 Int) ) (! (dummyFunction_3346 (|function8#triggerStateless| b_24@@4 z@@6))
 :qid |stdinbpl.836:15|
 :skolemid |114|
 :pattern ( (|function8'| Heap@@11 b_24@@4 z@@6))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.305:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12089) (z@@7 Int) ) (! (dummyFunction_3346 (|function1#triggerStateless| z@@7))
 :qid |stdinbpl.471:15|
 :skolemid |87|
 :pattern ( (|function1'| Heap@@12 z@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12089) (b_24@@5 Bool) ) (! (dummyFunction_3346 (|function3#triggerStateless| b_24@@5))
 :qid |stdinbpl.577:15|
 :skolemid |95|
 :pattern ( (|function3'| Heap@@13 b_24@@5))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12089) (z@@8 Int) ) (! (dummyFunction_3346 (|function10#triggerStateless| z@@8))
 :qid |stdinbpl.942:15|
 :skolemid |122|
 :pattern ( (|function10'| Heap@@14 z@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12089) (s_2 (Array T@Ref Bool)) ) (! (dummyFunction_3346 (|function11#triggerStateless| s_2))
 :qid |stdinbpl.995:15|
 :skolemid |126|
 :pattern ( (|function11'| Heap@@15 s_2))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_7926| (|Set#Union_7926| a@@0 b@@0) b@@0) (|Set#Union_7926| a@@0 b@@0))
 :qid |stdinbpl.257:18|
 :skolemid |38|
 :pattern ( (|Set#Union_7926| (|Set#Union_7926| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_7926| (|Set#Intersection_7926| a@@1 b@@1) b@@1) (|Set#Intersection_7926| a@@1 b@@1))
 :qid |stdinbpl.261:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_7926| (|Set#Intersection_7926| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_7926| r) o) (= r o))
 :qid |stdinbpl.226:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_7926| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_7926| (|Set#Union_7926| a@@2 b@@2)) (|Set#Card_7926| (|Set#Intersection_7926| a@@2 b@@2))) (+ (|Set#Card_7926| a@@2) (|Set#Card_7926| b@@2)))
 :qid |stdinbpl.265:18|
 :skolemid |42|
 :pattern ( (|Set#Card_7926| (|Set#Union_7926| a@@2 b@@2)))
 :pattern ( (|Set#Card_7926| (|Set#Intersection_7926| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.308:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12089) (ExhaleHeap T@PolymorphicMapType_12089) (Mask@@6 T@PolymorphicMapType_12110) (pm_f_12 T@Field_12149_29812) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap Mask@@6) (=> (and (HasDirectPerm_12149_29876 Mask@@6 null pm_f_12) (IsPredicateField_12149_29903 pm_f_12)) (= (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@16) null (PredicateMaskField_12149 pm_f_12)) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap) null (PredicateMaskField_12149 pm_f_12)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap Mask@@6) (IsPredicateField_12149_29903 pm_f_12) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap) null (PredicateMaskField_12149 pm_f_12)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12089) (ExhaleHeap@@0 T@PolymorphicMapType_12089) (Mask@@7 T@PolymorphicMapType_12110) (pm_f_12@@0 T@Field_12149_29812) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@0 Mask@@7) (=> (and (HasDirectPerm_12149_29876 Mask@@7 null pm_f_12@@0) (IsWandField_12149_31650 pm_f_12@@0)) (= (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@17) null (WandMaskField_12149 pm_f_12@@0)) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@0) null (WandMaskField_12149 pm_f_12@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@0 Mask@@7) (IsWandField_12149_31650 pm_f_12@@0) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@0) null (WandMaskField_12149 pm_f_12@@0)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12089) (Mask@@8 T@PolymorphicMapType_12110) (s_2@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@18 Mask@@8) (< AssumeFunctionsAbove 3)) (function11 Heap@@18 s_2@@0))
 :qid |stdinbpl.1001:15|
 :skolemid |127|
 :pattern ( (state Heap@@18 Mask@@8) (function11 Heap@@18 s_2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12089) (ExhaleHeap@@1 T@PolymorphicMapType_12089) (Mask@@9 T@PolymorphicMapType_12110) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@9) (=> (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@19) o_13 $allocated) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@1) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@9) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@1) o_13 $allocated))
)))
(assert (forall ((p T@Field_12149_29812) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12149_12149 p v_1 p w))
 :qid |stdinbpl.203:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12149_12149 p v_1 p w))
)))
(assert  (not (IsPredicateField_7769_3238 f_7)))
(assert  (not (IsWandField_7769_3238 f_7)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12089) (ExhaleHeap@@2 T@PolymorphicMapType_12089) (Mask@@10 T@PolymorphicMapType_12110) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@2 Mask@@10) (succHeap Heap@@20 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@2 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12110) (o_2@@4 T@Ref) (f_4@@4 T@Field_12149_29945) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_7769_35196 f_4@@4))) (not (IsWandField_7769_35212 f_4@@4))) (<= (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12110) (o_2@@5 T@Ref) (f_4@@5 T@Field_12149_29812) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_12149_29903 f_4@@5))) (not (IsWandField_12149_31650 f_4@@5))) (<= (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12110) (o_2@@6 T@Ref) (f_4@@6 T@Field_12162_12163) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7769_12163 f_4@@6))) (not (IsWandField_7769_12163 f_4@@6))) (<= (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12110) (o_2@@7 T@Ref) (f_4@@7 T@Field_12149_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| Mask@@14) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_7769_53 f_4@@7))) (not (IsWandField_7769_53 f_4@@7))) (<= (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| Mask@@14) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| Mask@@14) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12110) (o_2@@8 T@Ref) (f_4@@8 T@Field_18326_3238) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| Mask@@15) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_7769_3238 f_4@@8))) (not (IsWandField_7769_3238 f_4@@8))) (<= (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| Mask@@15) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| Mask@@15) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12110) (o_2@@9 T@Ref) (f_4@@9 T@Field_12149_29945) ) (! (= (HasDirectPerm_12149_35650 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12149_35650 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12110) (o_2@@10 T@Ref) (f_4@@10 T@Field_12149_29812) ) (! (= (HasDirectPerm_12149_29876 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12149_29876 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12110) (o_2@@11 T@Ref) (f_4@@11 T@Field_18326_3238) ) (! (= (HasDirectPerm_12149_3238 Mask@@18 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| Mask@@18) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12149_3238 Mask@@18 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12110) (o_2@@12 T@Ref) (f_4@@12 T@Field_12162_12163) ) (! (= (HasDirectPerm_12149_12163 Mask@@19 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| Mask@@19) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12149_12163 Mask@@19 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12110) (o_2@@13 T@Ref) (f_4@@13 T@Field_12149_53) ) (! (= (HasDirectPerm_12149_53 Mask@@20 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| Mask@@20) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12149_53 Mask@@20 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12089) (ExhaleHeap@@3 T@PolymorphicMapType_12089) (Mask@@21 T@PolymorphicMapType_12110) (pm_f_12@@1 T@Field_12149_29812) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@3 Mask@@21) (=> (and (HasDirectPerm_12149_29876 Mask@@21 null pm_f_12@@1) (IsPredicateField_12149_29903 pm_f_12@@1)) (and (and (and (and (forall ((o2_12 T@Ref) (f_18 T@Field_12149_53) ) (!  (=> (select (|PolymorphicMapType_12638_12149_53#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) null (PredicateMaskField_12149 pm_f_12@@1))) o2_12 f_18) (= (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@21) o2_12 f_18) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12 f_18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12 f_18))
)) (forall ((o2_12@@0 T@Ref) (f_18@@0 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_12638_12149_12163#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) null (PredicateMaskField_12149 pm_f_12@@1))) o2_12@@0 f_18@@0) (= (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@21) o2_12@@0 f_18@@0) (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@0 f_18@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@0 f_18@@0))
))) (forall ((o2_12@@1 T@Ref) (f_18@@1 T@Field_18326_3238) ) (!  (=> (select (|PolymorphicMapType_12638_12149_3238#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) null (PredicateMaskField_12149 pm_f_12@@1))) o2_12@@1 f_18@@1) (= (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@21) o2_12@@1 f_18@@1) (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@1 f_18@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@1 f_18@@1))
))) (forall ((o2_12@@2 T@Ref) (f_18@@2 T@Field_12149_29812) ) (!  (=> (select (|PolymorphicMapType_12638_12149_29812#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) null (PredicateMaskField_12149 pm_f_12@@1))) o2_12@@2 f_18@@2) (= (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@21) o2_12@@2 f_18@@2) (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@2 f_18@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@2 f_18@@2))
))) (forall ((o2_12@@3 T@Ref) (f_18@@3 T@Field_12149_29945) ) (!  (=> (select (|PolymorphicMapType_12638_12149_31123#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) null (PredicateMaskField_12149 pm_f_12@@1))) o2_12@@3 f_18@@3) (= (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@21) o2_12@@3 f_18@@3) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@3 f_18@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@3) o2_12@@3 f_18@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@3 Mask@@21) (IsPredicateField_12149_29903 pm_f_12@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12089) (ExhaleHeap@@4 T@PolymorphicMapType_12089) (Mask@@22 T@PolymorphicMapType_12110) (pm_f_12@@2 T@Field_12149_29812) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@4 Mask@@22) (=> (and (HasDirectPerm_12149_29876 Mask@@22 null pm_f_12@@2) (IsWandField_12149_31650 pm_f_12@@2)) (and (and (and (and (forall ((o2_12@@4 T@Ref) (f_18@@4 T@Field_12149_53) ) (!  (=> (select (|PolymorphicMapType_12638_12149_53#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) null (WandMaskField_12149 pm_f_12@@2))) o2_12@@4 f_18@@4) (= (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@22) o2_12@@4 f_18@@4) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@4 f_18@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@4 f_18@@4))
)) (forall ((o2_12@@5 T@Ref) (f_18@@5 T@Field_12162_12163) ) (!  (=> (select (|PolymorphicMapType_12638_12149_12163#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) null (WandMaskField_12149 pm_f_12@@2))) o2_12@@5 f_18@@5) (= (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@22) o2_12@@5 f_18@@5) (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@5 f_18@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@5 f_18@@5))
))) (forall ((o2_12@@6 T@Ref) (f_18@@6 T@Field_18326_3238) ) (!  (=> (select (|PolymorphicMapType_12638_12149_3238#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) null (WandMaskField_12149 pm_f_12@@2))) o2_12@@6 f_18@@6) (= (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@22) o2_12@@6 f_18@@6) (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@6 f_18@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@6 f_18@@6))
))) (forall ((o2_12@@7 T@Ref) (f_18@@7 T@Field_12149_29812) ) (!  (=> (select (|PolymorphicMapType_12638_12149_29812#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) null (WandMaskField_12149 pm_f_12@@2))) o2_12@@7 f_18@@7) (= (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@22) o2_12@@7 f_18@@7) (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@7 f_18@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@7 f_18@@7))
))) (forall ((o2_12@@8 T@Ref) (f_18@@8 T@Field_12149_29945) ) (!  (=> (select (|PolymorphicMapType_12638_12149_31123#PolymorphicMapType_12638| (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) null (WandMaskField_12149 pm_f_12@@2))) o2_12@@8 f_18@@8) (= (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@22) o2_12@@8 f_18@@8) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@8 f_18@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@4) o2_12@@8 f_18@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@4 Mask@@22) (IsWandField_12149_31650 pm_f_12@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.191:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12089) (ExhaleHeap@@5 T@PolymorphicMapType_12089) (Mask@@23 T@PolymorphicMapType_12110) (o_13@@0 T@Ref) (f_18@@9 T@Field_12149_29945) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@23) (=> (HasDirectPerm_12149_35650 Mask@@23 o_13@@0 f_18@@9) (= (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@23) o_13@@0 f_18@@9) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@5) o_13@@0 f_18@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@23) (select (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| ExhaleHeap@@5) o_13@@0 f_18@@9))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12089) (ExhaleHeap@@6 T@PolymorphicMapType_12089) (Mask@@24 T@PolymorphicMapType_12110) (o_13@@1 T@Ref) (f_18@@10 T@Field_12149_29812) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@6 Mask@@24) (=> (HasDirectPerm_12149_29876 Mask@@24 o_13@@1 f_18@@10) (= (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@24) o_13@@1 f_18@@10) (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@6) o_13@@1 f_18@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@6 Mask@@24) (select (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| ExhaleHeap@@6) o_13@@1 f_18@@10))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12089) (ExhaleHeap@@7 T@PolymorphicMapType_12089) (Mask@@25 T@PolymorphicMapType_12110) (o_13@@2 T@Ref) (f_18@@11 T@Field_18326_3238) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@7 Mask@@25) (=> (HasDirectPerm_12149_3238 Mask@@25 o_13@@2 f_18@@11) (= (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@25) o_13@@2 f_18@@11) (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@7) o_13@@2 f_18@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@7 Mask@@25) (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| ExhaleHeap@@7) o_13@@2 f_18@@11))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12089) (ExhaleHeap@@8 T@PolymorphicMapType_12089) (Mask@@26 T@PolymorphicMapType_12110) (o_13@@3 T@Ref) (f_18@@12 T@Field_12162_12163) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@8 Mask@@26) (=> (HasDirectPerm_12149_12163 Mask@@26 o_13@@3 f_18@@12) (= (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@26) o_13@@3 f_18@@12) (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@8) o_13@@3 f_18@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@8 Mask@@26) (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| ExhaleHeap@@8) o_13@@3 f_18@@12))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12089) (ExhaleHeap@@9 T@PolymorphicMapType_12089) (Mask@@27 T@PolymorphicMapType_12110) (o_13@@4 T@Ref) (f_18@@13 T@Field_12149_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_12149_53 Mask@@27 o_13@@4 f_18@@13) (= (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@27) o_13@@4 f_18@@13) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@9) o_13@@4 f_18@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| ExhaleHeap@@9) o_13@@4 f_18@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_12149_29945) ) (! (= (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_12149_29812) ) (! (= (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12162_12163) ) (! (= (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12149_53) ) (! (= (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18326_3238) ) (! (= (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12110) (SummandMask1 T@PolymorphicMapType_12110) (SummandMask2 T@PolymorphicMapType_12110) (o_2@@19 T@Ref) (f_4@@19 T@Field_12149_29945) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12110_7769_34067#PolymorphicMapType_12110| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12110) (SummandMask1@@0 T@PolymorphicMapType_12110) (SummandMask2@@0 T@PolymorphicMapType_12110) (o_2@@20 T@Ref) (f_4@@20 T@Field_12149_29812) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12110_7769_29812#PolymorphicMapType_12110| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12110) (SummandMask1@@1 T@PolymorphicMapType_12110) (SummandMask2@@1 T@PolymorphicMapType_12110) (o_2@@21 T@Ref) (f_4@@21 T@Field_12162_12163) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12110_7769_12163#PolymorphicMapType_12110| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12110) (SummandMask1@@2 T@PolymorphicMapType_12110) (SummandMask2@@2 T@PolymorphicMapType_12110) (o_2@@22 T@Ref) (f_4@@22 T@Field_12149_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12110_7769_53#PolymorphicMapType_12110| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12110) (SummandMask1@@3 T@PolymorphicMapType_12110) (SummandMask2@@3 T@PolymorphicMapType_12110) (o_2@@23 T@Ref) (f_4@@23 T@Field_18326_3238) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12110_7769_3238#PolymorphicMapType_12110| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_7926| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.254:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_7926| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_7926| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_7926| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_7926| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.269:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_7926| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_7926| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x@@1 T@Ref) (y@@3 T@Ref) ) (!  (=> (select a@@6 y@@3) (select (|Set#UnionOne_7926| a@@6 x@@1) y@@3))
 :qid |stdinbpl.234:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_7926| a@@6 x@@1) (select a@@6 y@@3))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select a@@7 y@@4) (select (|Set#Union_7926| a@@7 b@@5) y@@4))
 :qid |stdinbpl.244:18|
 :skolemid |35|
 :pattern ( (|Set#Union_7926| a@@7 b@@5) (select a@@7 y@@4))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@5 T@Ref) ) (!  (=> (select b@@6 y@@5) (select (|Set#Union_7926| a@@8 b@@6) y@@5))
 :qid |stdinbpl.246:18|
 :skolemid |36|
 :pattern ( (|Set#Union_7926| a@@8 b@@6) (select b@@6 y@@5))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@2 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_7926| a@@9 x@@2) o@@2)  (or (= o@@2 x@@2) (select a@@9 o@@2)))
 :qid |stdinbpl.230:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_7926| a@@9 x@@2) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@6 T@Ref) ) (!  (=> (select b@@7 y@@6) (not (select (|Set#Difference_7926| a@@10 b@@7) y@@6)))
 :qid |stdinbpl.271:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_7926| a@@10 b@@7) (select b@@7 y@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12089) (Mask@@28 T@PolymorphicMapType_12110) (z@@9 Int) ) (!  (=> (state Heap@@28 Mask@@28) (= (|function1'| Heap@@28 z@@9) (|function1#frame| EmptyFrame z@@9)))
 :qid |stdinbpl.478:15|
 :skolemid |88|
 :pattern ( (state Heap@@28 Mask@@28) (|function1'| Heap@@28 z@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12089) (Mask@@29 T@PolymorphicMapType_12110) (b_24@@6 Bool) ) (!  (=> (state Heap@@29 Mask@@29) (= (|function3'| Heap@@29 b_24@@6) (|function3#frame| EmptyFrame b_24@@6)))
 :qid |stdinbpl.584:15|
 :skolemid |96|
 :pattern ( (state Heap@@29 Mask@@29) (|function3'| Heap@@29 b_24@@6))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12089) (Mask@@30 T@PolymorphicMapType_12110) (z@@10 Int) ) (!  (=> (state Heap@@30 Mask@@30) (= (|function10'| Heap@@30 z@@10) (|function10#frame| EmptyFrame z@@10)))
 :qid |stdinbpl.949:15|
 :skolemid |123|
 :pattern ( (state Heap@@30 Mask@@30) (|function10'| Heap@@30 z@@10))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_7926| (|Set#Difference_7926| a@@11 b@@8)) (|Set#Card_7926| (|Set#Difference_7926| b@@8 a@@11))) (|Set#Card_7926| (|Set#Intersection_7926| a@@11 b@@8))) (|Set#Card_7926| (|Set#Union_7926| a@@11 b@@8))) (= (|Set#Card_7926| (|Set#Difference_7926| a@@11 b@@8)) (- (|Set#Card_7926| a@@11) (|Set#Card_7926| (|Set#Intersection_7926| a@@11 b@@8)))))
 :qid |stdinbpl.273:18|
 :skolemid |45|
 :pattern ( (|Set#Card_7926| (|Set#Difference_7926| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_7926| s))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Set#Card_7926| s))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12089) (z@@11 Int) ) (!  (and (= (function1 Heap@@31 z@@11) (|function1'| Heap@@31 z@@11)) (dummyFunction_3346 (|function1#triggerStateless| z@@11)))
 :qid |stdinbpl.467:15|
 :skolemid |86|
 :pattern ( (function1 Heap@@31 z@@11))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12089) (b_24@@7 Bool) ) (!  (and (= (function3 Heap@@32 b_24@@7) (|function3'| Heap@@32 b_24@@7)) (dummyFunction_3346 (|function3#triggerStateless| b_24@@7)))
 :qid |stdinbpl.573:15|
 :skolemid |94|
 :pattern ( (function3 Heap@@32 b_24@@7))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12089) (z@@12 Int) ) (!  (and (= (function10 Heap@@33 z@@12) (|function10'| Heap@@33 z@@12)) (dummyFunction_3346 (|function10#triggerStateless| z@@12)))
 :qid |stdinbpl.938:15|
 :skolemid |121|
 :pattern ( (function10 Heap@@33 z@@12))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12089) (s_2@@1 (Array T@Ref Bool)) ) (!  (and (= (function11 Heap@@34 s_2@@1) (|function11'| Heap@@34 s_2@@1)) (dummyFunction_3346 (|function11#triggerStateless| s_2@@1)))
 :qid |stdinbpl.991:15|
 :skolemid |125|
 :pattern ( (function11 Heap@@34 s_2@@1))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12089) (Mask@@31 T@PolymorphicMapType_12110) ) (!  (=> (state Heap@@35 Mask@@31) (= (|function0'| Heap@@35) (|function0#frame| EmptyFrame)))
 :qid |stdinbpl.425:15|
 :skolemid |84|
 :pattern ( (state Heap@@35 Mask@@31) (|function0'| Heap@@35))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12089) (Mask@@32 T@PolymorphicMapType_12110) ) (!  (=> (state Heap@@36 Mask@@32) (= (|function9'| Heap@@36) (|function9#frame| EmptyFrame)))
 :qid |stdinbpl.896:15|
 :skolemid |119|
 :pattern ( (state Heap@@36 Mask@@32) (|function9'| Heap@@36))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@3 T@Ref) ) (! (select (|Set#UnionOne_7926| a@@12 x@@3) x@@3)
 :qid |stdinbpl.232:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_7926| a@@12 x@@3))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (select a@@13 x@@4) (= (|Set#Card_7926| (|Set#UnionOne_7926| a@@13 x@@4)) (|Set#Card_7926| a@@13)))
 :qid |stdinbpl.236:18|
 :skolemid |32|
 :pattern ( (|Set#Card_7926| (|Set#UnionOne_7926| a@@13 x@@4)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_7926| (|Set#Singleton_7926| r@@0)) 1)
 :qid |stdinbpl.227:18|
 :skolemid |28|
 :pattern ( (|Set#Card_7926| (|Set#Singleton_7926| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_7926| r@@1) r@@1)
 :qid |stdinbpl.225:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_7926| r@@1))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12089) ) (! (dummyFunction_3346 |function0#triggerStateless|)
 :qid |stdinbpl.418:15|
 :skolemid |83|
 :pattern ( (|function0'| Heap@@37))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_12089) ) (! (dummyFunction_3346 |function9#triggerStateless|)
 :qid |stdinbpl.889:15|
 :skolemid |118|
 :pattern ( (|function9'| Heap@@38))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_7926| a@@14 (|Set#Union_7926| a@@14 b@@9)) (|Set#Union_7926| a@@14 b@@9))
 :qid |stdinbpl.259:18|
 :skolemid |39|
 :pattern ( (|Set#Union_7926| a@@14 (|Set#Union_7926| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_7926| a@@15 (|Set#Intersection_7926| a@@15 b@@10)) (|Set#Intersection_7926| a@@15 b@@10))
 :qid |stdinbpl.263:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_7926| a@@15 (|Set#Intersection_7926| a@@15 b@@10)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12089) (Mask@@33 T@PolymorphicMapType_12110) (s_2@@2 (Array T@Ref Bool)) ) (!  (=> (state Heap@@39 Mask@@33) (= (|function11'| Heap@@39 s_2@@2) (|function11#frame| (FrameFragment_5700 (|function11#condqp1| Heap@@39 s_2@@2)) s_2@@2)))
 :qid |stdinbpl.1008:15|
 :skolemid |128|
 :pattern ( (state Heap@@39 Mask@@33) (|function11'| Heap@@39 s_2@@2))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_7926| o@@3))
 :qid |stdinbpl.219:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_7926| o@@3))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_12089) (o_34 T@Ref) (f_36 T@Field_12149_29812) (v T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@40) (store (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@40) o_34 f_36 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@40) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@40) (store (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@40) o_34 f_36 v)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_12089) (o_34@@0 T@Ref) (f_36@@0 T@Field_12149_29945) (v@@0 T@PolymorphicMapType_12638) ) (! (succHeap Heap@@41 (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@41) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@41) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@41) (store (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@41) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@41) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@41) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@41) (store (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@41) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_12089) (o_34@@1 T@Ref) (f_36@@1 T@Field_18326_3238) (v@@1 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@42) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@42) (store (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@42) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@42) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@42) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@42) (store (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@42) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@42) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_12089) (o_34@@2 T@Ref) (f_36@@2 T@Field_12162_12163) (v@@2 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@43) (store (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@43) o_34@@2 f_36@@2 v@@2) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@43) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@43) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12089 (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@43) (store (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@43) o_34@@2 f_36@@2 v@@2) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@43) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@43) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_12089) (o_34@@3 T@Ref) (f_36@@3 T@Field_12149_53) (v@@3 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_12089 (store (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@44) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12089 (store (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@44) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_12149_29989#PolymorphicMapType_12089| Heap@@44) (|PolymorphicMapType_12089_12149_29812#PolymorphicMapType_12089| Heap@@44)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.303:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.304:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_7926| s@@0) 0) (= s@@0 |Set#Empty_7926|)) (=> (not (= (|Set#Card_7926| s@@0) 0)) (exists ((x@@5 T@Ref) ) (! (select s@@0 x@@5)
 :qid |stdinbpl.222:33|
 :skolemid |24|
))))
 :qid |stdinbpl.220:18|
 :skolemid |25|
 :pattern ( (|Set#Card_7926| s@@0))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_12089) (Heap1Heap T@PolymorphicMapType_12089) (s_2@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select s_2@@3 (|sk_function11#condqp1| (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3))) (< NoPerm FullPerm))  (and (select s_2@@3 (|sk_function11#condqp1| (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3))) (< NoPerm FullPerm))) (=> (and (select s_2@@3 (|sk_function11#condqp1| (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap2Heap) (|sk_function11#condqp1| (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3)) f_7) (select (|PolymorphicMapType_12089_7769_3238#PolymorphicMapType_12089| Heap1Heap) (|sk_function11#condqp1| (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3)) f_7)))) (= (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3)))
 :qid |stdinbpl.1018:15|
 :skolemid |129|
 :pattern ( (|function11#condqp1| Heap2Heap s_2@@3) (|function11#condqp1| Heap1Heap s_2@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (not (select a@@18 x@@6)) (= (|Set#Card_7926| (|Set#UnionOne_7926| a@@18 x@@6)) (+ (|Set#Card_7926| a@@18) 1)))
 :qid |stdinbpl.238:18|
 :skolemid |33|
 :pattern ( (|Set#Card_7926| (|Set#UnionOne_7926| a@@18 x@@6)))
)))
(assert (forall ((o_34@@4 T@Ref) (f_40 T@Field_12162_12163) (Heap@@45 T@PolymorphicMapType_12089) ) (!  (=> (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@45) o_34@@4 $allocated) (select (|PolymorphicMapType_12089_7472_53#PolymorphicMapType_12089| Heap@@45) (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@45) o_34@@4 f_40) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12089_7475_7476#PolymorphicMapType_12089| Heap@@45) o_34@@4 f_40))
)))
(assert (forall ((p@@1 T@Field_12149_29812) (v_1@@0 T@FrameType) (q T@Field_12149_29812) (w@@0 T@FrameType) (r@@2 T@Field_12149_29812) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12149_12149 p@@1 v_1@@0 q w@@0) (InsidePredicate_12149_12149 q w@@0 r@@2 u)) (InsidePredicate_12149_12149 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.198:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12149_12149 p@@1 v_1@@0 q w@@0) (InsidePredicate_12149_12149 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.309:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_12089) ) (!  (and (= (function0 Heap@@46) (|function0'| Heap@@46)) (dummyFunction_3346 |function0#triggerStateless|))
 :qid |stdinbpl.414:15|
 :skolemid |82|
 :pattern ( (function0 Heap@@46))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_12089) ) (!  (and (= (function9 Heap@@47) (|function9'| Heap@@47)) (dummyFunction_3346 |function9#triggerStateless|))
 :qid |stdinbpl.885:15|
 :skolemid |117|
 :pattern ( (function9 Heap@@47))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_7926| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.242:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_7926| a@@20 b@@13) o@@4))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_12089) (y@@7 Int) (z@@13 Int) ) (!  (and (= (function2 Heap@@48 y@@7 z@@13) (|function2'| Heap@@48 y@@7 z@@13)) (dummyFunction_3346 (|function2#triggerStateless| y@@7 z@@13)))
 :qid |stdinbpl.520:15|
 :skolemid |90|
 :pattern ( (function2 Heap@@48 y@@7 z@@13))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_12089) (b_24@@8 Bool) (c@@1 Bool) ) (!  (and (= (function4 Heap@@49 b_24@@8 c@@1) (|function4'| Heap@@49 b_24@@8 c@@1)) (dummyFunction_3346 (|function4#triggerStateless| b_24@@8 c@@1)))
 :qid |stdinbpl.626:15|
 :skolemid |98|
 :pattern ( (function4 Heap@@49 b_24@@8 c@@1))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_12089) (x@@7 Int) (y@@8 Int) ) (!  (and (= (function5 Heap@@50 x@@7 y@@8) (|function5'| Heap@@50 x@@7 y@@8)) (dummyFunction_3346 (|function5#triggerStateless| x@@7 y@@8)))
 :qid |stdinbpl.679:15|
 :skolemid |102|
 :pattern ( (function5 Heap@@50 x@@7 y@@8))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_12089) (z@@14 Int) (w_2@@1 Int) ) (!  (and (= (function6 Heap@@51 z@@14 w_2@@1) (|function6'| Heap@@51 z@@14 w_2@@1)) (dummyFunction_3346 (|function6#triggerStateless| z@@14 w_2@@1)))
 :qid |stdinbpl.724:15|
 :skolemid |105|
 :pattern ( (function6 Heap@@51 z@@14 w_2@@1))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_12089) (b_24@@9 Bool) (z@@15 Int) ) (!  (and (= (function7 Heap@@52 b_24@@9 z@@15) (|function7'| Heap@@52 b_24@@9 z@@15)) (dummyFunction_3346 (|function7#triggerStateless| b_24@@9 z@@15)))
 :qid |stdinbpl.786:15|
 :skolemid |110|
 :pattern ( (function7 Heap@@52 b_24@@9 z@@15))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_12089) (b_24@@10 Bool) (z@@16 Int) ) (!  (and (= (function8 Heap@@53 b_24@@10 z@@16) (|function8'| Heap@@53 b_24@@10 z@@16)) (dummyFunction_3346 (|function8#triggerStateless| b_24@@10 z@@16)))
 :qid |stdinbpl.832:15|
 :skolemid |113|
 :pattern ( (function8 Heap@@53 b_24@@10 z@@16))
)))
; Valid

