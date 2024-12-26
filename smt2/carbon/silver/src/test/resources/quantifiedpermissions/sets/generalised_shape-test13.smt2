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
(declare-sort T@Field_41803_53 0)
(declare-sort T@Field_41816_41817 0)
(declare-sort T@Field_48139_4195 0)
(declare-sort T@Field_48239_48240 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_24592_24604 0)
(declare-sort T@Field_24592_48260 0)
(declare-sort T@Field_24603_4195 0)
(declare-sort T@Field_24603_24595 0)
(declare-sort T@Field_24603_53 0)
(declare-sort T@Field_48255_48260 0)
(declare-datatypes ((T@PolymorphicMapType_41764 0)) (((PolymorphicMapType_41764 (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| (Array T@Ref T@Field_48139_4195 Real)) (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| (Array T@Ref T@Field_41816_41817 Real)) (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| (Array T@Ref T@Field_48239_48240 Real)) (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| (Array T@Ref T@Field_24592_24604 Real)) (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| (Array T@Ref T@Field_41803_53 Real)) (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| (Array T@Ref T@Field_24592_48260 Real)) (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| (Array T@Ref T@Field_24603_4195 Real)) (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| (Array T@Ref T@Field_24603_24595 Real)) (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| (Array T@Ref T@Field_24603_53 Real)) (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| (Array T@Ref T@Field_48255_48260 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_42292 0)) (((PolymorphicMapType_42292 (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| (Array T@Ref T@Field_41803_53 Bool)) (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| (Array T@Ref T@Field_41816_41817 Bool)) (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| (Array T@Ref T@Field_48139_4195 Bool)) (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| (Array T@Ref T@Field_24592_24604 Bool)) (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| (Array T@Ref T@Field_24592_48260 Bool)) (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| (Array T@Ref T@Field_24603_53 Bool)) (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| (Array T@Ref T@Field_24603_24595 Bool)) (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| (Array T@Ref T@Field_24603_4195 Bool)) (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| (Array T@Ref T@Field_48239_48240 Bool)) (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| (Array T@Ref T@Field_48255_48260 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_41743 0)) (((PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| (Array T@Ref T@Field_41803_53 Bool)) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| (Array T@Ref T@Field_41816_41817 T@Ref)) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| (Array T@Ref T@Field_48139_4195 Int)) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| (Array T@Ref T@Field_48239_48240 T@FrameType)) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| (Array T@Ref T@Field_24592_24604 T@FrameType)) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| (Array T@Ref T@Field_24592_48260 T@PolymorphicMapType_42292)) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| (Array T@Ref T@Field_24603_4195 Int)) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| (Array T@Ref T@Field_24603_24595 T@Ref)) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| (Array T@Ref T@Field_24603_53 Bool)) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| (Array T@Ref T@Field_48255_48260 T@PolymorphicMapType_42292)) ) ) ))
(declare-fun $allocated () T@Field_41803_53)
(declare-fun f_7 () T@Field_48139_4195)
(declare-fun g () T@Field_41816_41817)
(declare-fun succHeap (T@PolymorphicMapType_41743 T@PolymorphicMapType_41743) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_41743 T@PolymorphicMapType_41743) Bool)
(declare-fun state (T@PolymorphicMapType_41743 T@PolymorphicMapType_41764) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_41764) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_42292)
(declare-fun P ((Array T@Ref Bool) (Array T@Ref Bool)) T@Field_48239_48240)
(declare-fun IsPredicateField_24603_24604 (T@Field_48239_48240) Bool)
(declare-fun |P#trigger_24603| (T@PolymorphicMapType_41743 T@Field_48239_48240) Bool)
(declare-fun |P#everUsed_24603| (T@Field_48239_48240) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_24817| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_24817| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_24817| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_24817| ((Array T@Ref Bool)) Int)
(declare-fun |P#condqp3| (T@PolymorphicMapType_41743 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |sk_P#condqp3| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_41743 T@PolymorphicMapType_41743 T@PolymorphicMapType_41764) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_24603 (T@Field_48239_48240) T@Field_48255_48260)
(declare-fun HasDirectPerm_24603_24604 (T@PolymorphicMapType_41764 T@Ref T@Field_48239_48240) Bool)
(declare-fun IsPredicateField_24592_137875 (T@Field_24592_24604) Bool)
(declare-fun PredicateMaskField_24592 (T@Field_24592_24604) T@Field_24592_48260)
(declare-fun HasDirectPerm_24592_24604 (T@PolymorphicMapType_41764 T@Ref T@Field_24592_24604) Bool)
(declare-fun IsWandField_24603_141572 (T@Field_48239_48240) Bool)
(declare-fun WandMaskField_24603 (T@Field_48239_48240) T@Field_48255_48260)
(declare-fun IsWandField_24592_141215 (T@Field_24592_24604) Bool)
(declare-fun WandMaskField_24592 (T@Field_24592_24604) T@Field_24592_48260)
(declare-fun |P#sm| ((Array T@Ref Bool) (Array T@Ref Bool)) T@Field_48255_48260)
(declare-fun dummyHeap () T@PolymorphicMapType_41743)
(declare-fun ZeroMask () T@PolymorphicMapType_41764)
(declare-fun InsidePredicate_48239_48239 (T@Field_48239_48240 T@FrameType T@Field_48239_48240 T@FrameType) Bool)
(declare-fun InsidePredicate_41803_41803 (T@Field_24592_24604 T@FrameType T@Field_24592_24604 T@FrameType) Bool)
(declare-fun IsPredicateField_24592_4195 (T@Field_48139_4195) Bool)
(declare-fun IsWandField_24592_4195 (T@Field_48139_4195) Bool)
(declare-fun IsPredicateField_24594_24595 (T@Field_41816_41817) Bool)
(declare-fun IsWandField_24594_24595 (T@Field_41816_41817) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_24603_148475 (T@Field_48255_48260) Bool)
(declare-fun IsWandField_24603_148491 (T@Field_48255_48260) Bool)
(declare-fun IsPredicateField_24603_53 (T@Field_24603_53) Bool)
(declare-fun IsWandField_24603_53 (T@Field_24603_53) Bool)
(declare-fun IsPredicateField_24603_24595 (T@Field_24603_24595) Bool)
(declare-fun IsWandField_24603_24595 (T@Field_24603_24595) Bool)
(declare-fun IsPredicateField_24603_4195 (T@Field_24603_4195) Bool)
(declare-fun IsWandField_24603_4195 (T@Field_24603_4195) Bool)
(declare-fun IsPredicateField_24592_147644 (T@Field_24592_48260) Bool)
(declare-fun IsWandField_24592_147660 (T@Field_24592_48260) Bool)
(declare-fun IsPredicateField_24592_53 (T@Field_41803_53) Bool)
(declare-fun IsWandField_24592_53 (T@Field_41803_53) Bool)
(declare-fun HasDirectPerm_24603_137587 (T@PolymorphicMapType_41764 T@Ref T@Field_48255_48260) Bool)
(declare-fun HasDirectPerm_24603_53 (T@PolymorphicMapType_41764 T@Ref T@Field_24603_53) Bool)
(declare-fun HasDirectPerm_24603_24595 (T@PolymorphicMapType_41764 T@Ref T@Field_24603_24595) Bool)
(declare-fun HasDirectPerm_24603_4195 (T@PolymorphicMapType_41764 T@Ref T@Field_24603_4195) Bool)
(declare-fun HasDirectPerm_24592_136446 (T@PolymorphicMapType_41764 T@Ref T@Field_24592_48260) Bool)
(declare-fun HasDirectPerm_24592_53 (T@PolymorphicMapType_41764 T@Ref T@Field_41803_53) Bool)
(declare-fun HasDirectPerm_24594_24595 (T@PolymorphicMapType_41764 T@Ref T@Field_41816_41817) Bool)
(declare-fun HasDirectPerm_24592_4195 (T@PolymorphicMapType_41764 T@Ref T@Field_48139_4195) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_41764 T@PolymorphicMapType_41764 T@PolymorphicMapType_41764) Bool)
(declare-fun |Set#Difference_24817| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_24918| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_24603_24604 (T@Field_48239_48240) Int)
(declare-fun |Set#Empty_24817| () (Array T@Ref Bool))
(declare-fun |P#condqp1| (T@PolymorphicMapType_41743 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |sk_P#condqp1| (Int Int) T@Ref)
(declare-fun |P#condqp2| (T@PolymorphicMapType_41743 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |sk_P#condqp2| (Int Int) T@Ref)
(declare-fun InsidePredicate_48239_41803 (T@Field_48239_48240 T@FrameType T@Field_24592_24604 T@FrameType) Bool)
(declare-fun InsidePredicate_41803_48239 (T@Field_24592_24604 T@FrameType T@Field_48239_48240 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_41743) (Heap1 T@PolymorphicMapType_41743) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_41743) (Mask T@PolymorphicMapType_41764) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_41743) (Heap1@@0 T@PolymorphicMapType_41743) (Heap2 T@PolymorphicMapType_41743) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_48255_48260) ) (!  (not (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_48239_48240) ) (!  (not (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_24603_4195) ) (!  (not (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_24603_24595) ) (!  (not (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_24603_53) ) (!  (not (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_24592_48260) ) (!  (not (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_24592_24604) ) (!  (not (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_48139_4195) ) (!  (not (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_41816_41817) ) (!  (not (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_41803_53) ) (!  (not (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((xs (Array T@Ref Bool)) (ys (Array T@Ref Bool)) ) (! (IsPredicateField_24603_24604 (P xs ys))
 :qid |stdinbpl.527:15|
 :skolemid |83|
 :pattern ( (P xs ys))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_41743) (xs@@0 (Array T@Ref Bool)) (ys@@0 (Array T@Ref Bool)) ) (! (|P#everUsed_24603| (P xs@@0 ys@@0))
 :qid |stdinbpl.546:15|
 :skolemid |87|
 :pattern ( (|P#trigger_24603| Heap@@0 (P xs@@0 ys@@0)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.411:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_24817| (|Set#Union_24817| a@@0 b@@0) b@@0) (|Set#Union_24817| a@@0 b@@0))
 :qid |stdinbpl.363:18|
 :skolemid |38|
 :pattern ( (|Set#Union_24817| (|Set#Union_24817| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_24817| (|Set#Intersection_24817| a@@1 b@@1) b@@1) (|Set#Intersection_24817| a@@1 b@@1))
 :qid |stdinbpl.367:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_24817| (|Set#Intersection_24817| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_24817| r) o) (= r o))
 :qid |stdinbpl.332:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_24817| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_24817| (|Set#Union_24817| a@@2 b@@2)) (|Set#Card_24817| (|Set#Intersection_24817| a@@2 b@@2))) (+ (|Set#Card_24817| a@@2) (|Set#Card_24817| b@@2)))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Set#Card_24817| (|Set#Union_24817| a@@2 b@@2)))
 :pattern ( (|Set#Card_24817| (|Set#Intersection_24817| a@@2 b@@2)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_41743) (Heap1Heap T@PolymorphicMapType_41743) (xs@@1 (Array T@Ref Bool)) (ys@@1 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (and (select xs@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1))) (and (not (select ys@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)))) (and (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) f_7) 0)) (not (select xs@@1 (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap2Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) g)))))) (< NoPerm FullPerm))  (and (and (select xs@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1))) (and (not (select ys@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)))) (and (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap1Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) f_7) 0)) (not (select xs@@1 (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap1Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) g)))))) (< NoPerm FullPerm))) (=> (and (and (select xs@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1))) (and (not (select ys@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)))) (and (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) f_7) 0)) (not (select xs@@1 (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap2Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) g)))))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap2Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) g) f_7) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap1Heap) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap1Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) g) f_7)))) (= (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)))
 :qid |stdinbpl.579:15|
 :skolemid |90|
 :pattern ( (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.414:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_41743) (ExhaleHeap T@PolymorphicMapType_41743) (Mask@@0 T@PolymorphicMapType_41764) (pm_f_12 T@Field_48239_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_24603_24604 Mask@@0 null pm_f_12) (IsPredicateField_24603_24604 pm_f_12)) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@1) null (PredicateMaskField_24603 pm_f_12)) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap) null (PredicateMaskField_24603 pm_f_12)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_24603_24604 pm_f_12) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap) null (PredicateMaskField_24603 pm_f_12)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_41743) (ExhaleHeap@@0 T@PolymorphicMapType_41743) (Mask@@1 T@PolymorphicMapType_41764) (pm_f_12@@0 T@Field_24592_24604) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_24592_24604 Mask@@1 null pm_f_12@@0) (IsPredicateField_24592_137875 pm_f_12@@0)) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@2) null (PredicateMaskField_24592 pm_f_12@@0)) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@0) null (PredicateMaskField_24592 pm_f_12@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_24592_137875 pm_f_12@@0) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@0) null (PredicateMaskField_24592 pm_f_12@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_41743) (ExhaleHeap@@1 T@PolymorphicMapType_41743) (Mask@@2 T@PolymorphicMapType_41764) (pm_f_12@@1 T@Field_48239_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_24603_24604 Mask@@2 null pm_f_12@@1) (IsWandField_24603_141572 pm_f_12@@1)) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@3) null (WandMaskField_24603 pm_f_12@@1)) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@1) null (WandMaskField_24603 pm_f_12@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_24603_141572 pm_f_12@@1) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@1) null (WandMaskField_24603 pm_f_12@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_41743) (ExhaleHeap@@2 T@PolymorphicMapType_41743) (Mask@@3 T@PolymorphicMapType_41764) (pm_f_12@@2 T@Field_24592_24604) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_24592_24604 Mask@@3 null pm_f_12@@2) (IsWandField_24592_141215 pm_f_12@@2)) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@4) null (WandMaskField_24592 pm_f_12@@2)) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@2) null (WandMaskField_24592 pm_f_12@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_24592_141215 pm_f_12@@2) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@2) null (WandMaskField_24592 pm_f_12@@2)))
)))
(assert (forall ((xs@@2 (Array T@Ref Bool)) (ys@@2 (Array T@Ref Bool)) (xs2 (Array T@Ref Bool)) (ys2 (Array T@Ref Bool)) ) (!  (=> (= (P xs@@2 ys@@2) (P xs2 ys2)) (and (= xs@@2 xs2) (= ys@@2 ys2)))
 :qid |stdinbpl.537:15|
 :skolemid |85|
 :pattern ( (P xs@@2 ys@@2) (P xs2 ys2))
)))
(assert (forall ((xs@@3 (Array T@Ref Bool)) (ys@@3 (Array T@Ref Bool)) (xs2@@0 (Array T@Ref Bool)) (ys2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|P#sm| xs@@3 ys@@3) (|P#sm| xs2@@0 ys2@@0)) (and (= xs@@3 xs2@@0) (= ys@@3 ys2@@0)))
 :qid |stdinbpl.541:15|
 :skolemid |86|
 :pattern ( (|P#sm| xs@@3 ys@@3) (|P#sm| xs2@@0 ys2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_41743) (ExhaleHeap@@3 T@PolymorphicMapType_41743) (Mask@@4 T@PolymorphicMapType_41764) (pm_f_12@@3 T@Field_48239_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_24603_24604 Mask@@4 null pm_f_12@@3) (IsPredicateField_24603_24604 pm_f_12@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_12 T@Ref) (f_18 T@Field_41803_53) ) (!  (=> (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12 f_18) (= (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@5) o2_12 f_18) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12 f_18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12 f_18))
)) (forall ((o2_12@@0 T@Ref) (f_18@@0 T@Field_41816_41817) ) (!  (=> (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@0 f_18@@0) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@5) o2_12@@0 f_18@@0) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@0 f_18@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@0 f_18@@0))
))) (forall ((o2_12@@1 T@Ref) (f_18@@1 T@Field_48139_4195) ) (!  (=> (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@1 f_18@@1) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@5) o2_12@@1 f_18@@1) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@1 f_18@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@1 f_18@@1))
))) (forall ((o2_12@@2 T@Ref) (f_18@@2 T@Field_24592_24604) ) (!  (=> (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@2 f_18@@2) (= (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@5) o2_12@@2 f_18@@2) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@2 f_18@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@2 f_18@@2))
))) (forall ((o2_12@@3 T@Ref) (f_18@@3 T@Field_24592_48260) ) (!  (=> (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@3 f_18@@3) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@5) o2_12@@3 f_18@@3) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@3 f_18@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@3 f_18@@3))
))) (forall ((o2_12@@4 T@Ref) (f_18@@4 T@Field_24603_53) ) (!  (=> (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@4 f_18@@4) (= (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@5) o2_12@@4 f_18@@4) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@4 f_18@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@4 f_18@@4))
))) (forall ((o2_12@@5 T@Ref) (f_18@@5 T@Field_24603_24595) ) (!  (=> (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@5 f_18@@5) (= (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@5) o2_12@@5 f_18@@5) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@5 f_18@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@5 f_18@@5))
))) (forall ((o2_12@@6 T@Ref) (f_18@@6 T@Field_24603_4195) ) (!  (=> (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@6 f_18@@6) (= (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@5) o2_12@@6 f_18@@6) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@6 f_18@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@6 f_18@@6))
))) (forall ((o2_12@@7 T@Ref) (f_18@@7 T@Field_48239_48240) ) (!  (=> (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@7 f_18@@7) (= (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@5) o2_12@@7 f_18@@7) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@7 f_18@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@7 f_18@@7))
))) (forall ((o2_12@@8 T@Ref) (f_18@@8 T@Field_48255_48260) ) (!  (=> (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@8 f_18@@8) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) o2_12@@8 f_18@@8) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@8 f_18@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@8 f_18@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_24603_24604 pm_f_12@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_41743) (ExhaleHeap@@4 T@PolymorphicMapType_41743) (Mask@@5 T@PolymorphicMapType_41764) (pm_f_12@@4 T@Field_24592_24604) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_24592_24604 Mask@@5 null pm_f_12@@4) (IsPredicateField_24592_137875 pm_f_12@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_12@@9 T@Ref) (f_18@@9 T@Field_41803_53) ) (!  (=> (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@9 f_18@@9) (= (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@6) o2_12@@9 f_18@@9) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@9 f_18@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@9 f_18@@9))
)) (forall ((o2_12@@10 T@Ref) (f_18@@10 T@Field_41816_41817) ) (!  (=> (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@10 f_18@@10) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@6) o2_12@@10 f_18@@10) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@10 f_18@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@10 f_18@@10))
))) (forall ((o2_12@@11 T@Ref) (f_18@@11 T@Field_48139_4195) ) (!  (=> (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@11 f_18@@11) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@6) o2_12@@11 f_18@@11) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@11 f_18@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@11 f_18@@11))
))) (forall ((o2_12@@12 T@Ref) (f_18@@12 T@Field_24592_24604) ) (!  (=> (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@12 f_18@@12) (= (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@6) o2_12@@12 f_18@@12) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@12 f_18@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@12 f_18@@12))
))) (forall ((o2_12@@13 T@Ref) (f_18@@13 T@Field_24592_48260) ) (!  (=> (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@13 f_18@@13) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) o2_12@@13 f_18@@13) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@13 f_18@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@13 f_18@@13))
))) (forall ((o2_12@@14 T@Ref) (f_18@@14 T@Field_24603_53) ) (!  (=> (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@14 f_18@@14) (= (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@6) o2_12@@14 f_18@@14) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@14 f_18@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@14 f_18@@14))
))) (forall ((o2_12@@15 T@Ref) (f_18@@15 T@Field_24603_24595) ) (!  (=> (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@15 f_18@@15) (= (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@6) o2_12@@15 f_18@@15) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@15 f_18@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@15 f_18@@15))
))) (forall ((o2_12@@16 T@Ref) (f_18@@16 T@Field_24603_4195) ) (!  (=> (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@16 f_18@@16) (= (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@6) o2_12@@16 f_18@@16) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@16 f_18@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@16 f_18@@16))
))) (forall ((o2_12@@17 T@Ref) (f_18@@17 T@Field_48239_48240) ) (!  (=> (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@17 f_18@@17) (= (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@6) o2_12@@17 f_18@@17) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@17 f_18@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@17 f_18@@17))
))) (forall ((o2_12@@18 T@Ref) (f_18@@18 T@Field_48255_48260) ) (!  (=> (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@18 f_18@@18) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@6) o2_12@@18 f_18@@18) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@18 f_18@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@18 f_18@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_24592_137875 pm_f_12@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_41743) (ExhaleHeap@@5 T@PolymorphicMapType_41743) (Mask@@6 T@PolymorphicMapType_41764) (pm_f_12@@5 T@Field_48239_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_24603_24604 Mask@@6 null pm_f_12@@5) (IsWandField_24603_141572 pm_f_12@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_12@@19 T@Ref) (f_18@@19 T@Field_41803_53) ) (!  (=> (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@19 f_18@@19) (= (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@7) o2_12@@19 f_18@@19) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@19 f_18@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@19 f_18@@19))
)) (forall ((o2_12@@20 T@Ref) (f_18@@20 T@Field_41816_41817) ) (!  (=> (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@20 f_18@@20) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@7) o2_12@@20 f_18@@20) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@20 f_18@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@20 f_18@@20))
))) (forall ((o2_12@@21 T@Ref) (f_18@@21 T@Field_48139_4195) ) (!  (=> (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@21 f_18@@21) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@7) o2_12@@21 f_18@@21) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@21 f_18@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@21 f_18@@21))
))) (forall ((o2_12@@22 T@Ref) (f_18@@22 T@Field_24592_24604) ) (!  (=> (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@22 f_18@@22) (= (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@7) o2_12@@22 f_18@@22) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@22 f_18@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@22 f_18@@22))
))) (forall ((o2_12@@23 T@Ref) (f_18@@23 T@Field_24592_48260) ) (!  (=> (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@23 f_18@@23) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@7) o2_12@@23 f_18@@23) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@23 f_18@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@23 f_18@@23))
))) (forall ((o2_12@@24 T@Ref) (f_18@@24 T@Field_24603_53) ) (!  (=> (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@24 f_18@@24) (= (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@7) o2_12@@24 f_18@@24) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@24 f_18@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@24 f_18@@24))
))) (forall ((o2_12@@25 T@Ref) (f_18@@25 T@Field_24603_24595) ) (!  (=> (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@25 f_18@@25) (= (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@7) o2_12@@25 f_18@@25) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@25 f_18@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@25 f_18@@25))
))) (forall ((o2_12@@26 T@Ref) (f_18@@26 T@Field_24603_4195) ) (!  (=> (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@26 f_18@@26) (= (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@7) o2_12@@26 f_18@@26) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@26 f_18@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@26 f_18@@26))
))) (forall ((o2_12@@27 T@Ref) (f_18@@27 T@Field_48239_48240) ) (!  (=> (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@27 f_18@@27) (= (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@7) o2_12@@27 f_18@@27) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@27 f_18@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@27 f_18@@27))
))) (forall ((o2_12@@28 T@Ref) (f_18@@28 T@Field_48255_48260) ) (!  (=> (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@28 f_18@@28) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) o2_12@@28 f_18@@28) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@28 f_18@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@28 f_18@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_24603_141572 pm_f_12@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_41743) (ExhaleHeap@@6 T@PolymorphicMapType_41743) (Mask@@7 T@PolymorphicMapType_41764) (pm_f_12@@6 T@Field_24592_24604) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_24592_24604 Mask@@7 null pm_f_12@@6) (IsWandField_24592_141215 pm_f_12@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_12@@29 T@Ref) (f_18@@29 T@Field_41803_53) ) (!  (=> (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@29 f_18@@29) (= (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@8) o2_12@@29 f_18@@29) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@29 f_18@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@29 f_18@@29))
)) (forall ((o2_12@@30 T@Ref) (f_18@@30 T@Field_41816_41817) ) (!  (=> (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@30 f_18@@30) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@8) o2_12@@30 f_18@@30) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@30 f_18@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@30 f_18@@30))
))) (forall ((o2_12@@31 T@Ref) (f_18@@31 T@Field_48139_4195) ) (!  (=> (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@31 f_18@@31) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@8) o2_12@@31 f_18@@31) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@31 f_18@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@31 f_18@@31))
))) (forall ((o2_12@@32 T@Ref) (f_18@@32 T@Field_24592_24604) ) (!  (=> (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@32 f_18@@32) (= (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@8) o2_12@@32 f_18@@32) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@32 f_18@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@32 f_18@@32))
))) (forall ((o2_12@@33 T@Ref) (f_18@@33 T@Field_24592_48260) ) (!  (=> (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@33 f_18@@33) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) o2_12@@33 f_18@@33) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@33 f_18@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@33 f_18@@33))
))) (forall ((o2_12@@34 T@Ref) (f_18@@34 T@Field_24603_53) ) (!  (=> (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@34 f_18@@34) (= (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@8) o2_12@@34 f_18@@34) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@34 f_18@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@34 f_18@@34))
))) (forall ((o2_12@@35 T@Ref) (f_18@@35 T@Field_24603_24595) ) (!  (=> (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@35 f_18@@35) (= (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@8) o2_12@@35 f_18@@35) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@35 f_18@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@35 f_18@@35))
))) (forall ((o2_12@@36 T@Ref) (f_18@@36 T@Field_24603_4195) ) (!  (=> (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@36 f_18@@36) (= (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@8) o2_12@@36 f_18@@36) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@36 f_18@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@36 f_18@@36))
))) (forall ((o2_12@@37 T@Ref) (f_18@@37 T@Field_48239_48240) ) (!  (=> (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@37 f_18@@37) (= (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@8) o2_12@@37 f_18@@37) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@37 f_18@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@37 f_18@@37))
))) (forall ((o2_12@@38 T@Ref) (f_18@@38 T@Field_48255_48260) ) (!  (=> (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@38 f_18@@38) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@8) o2_12@@38 f_18@@38) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@38 f_18@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@38 f_18@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_24592_141215 pm_f_12@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_41743) (ExhaleHeap@@7 T@PolymorphicMapType_41743) (Mask@@8 T@PolymorphicMapType_41764) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@9) o_13 $allocated) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@7) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@7) o_13 $allocated))
)))
(assert (forall ((p T@Field_48239_48240) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_48239_48239 p v_1 p w))
 :qid |stdinbpl.309:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_48239_48239 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_24592_24604) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_41803_41803 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.309:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_41803_41803 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_24592_4195 f_7)))
(assert  (not (IsWandField_24592_4195 f_7)))
(assert  (not (IsPredicateField_24594_24595 g)))
(assert  (not (IsWandField_24594_24595 g)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_41743) (ExhaleHeap@@8 T@PolymorphicMapType_41743) (Mask@@9 T@PolymorphicMapType_41764) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_41764) (o_2@@9 T@Ref) (f_4@@9 T@Field_48255_48260) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_24603_148475 f_4@@9))) (not (IsWandField_24603_148491 f_4@@9))) (<= (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_41764) (o_2@@10 T@Ref) (f_4@@10 T@Field_24603_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_24603_53 f_4@@10))) (not (IsWandField_24603_53 f_4@@10))) (<= (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_41764) (o_2@@11 T@Ref) (f_4@@11 T@Field_48239_48240) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_24603_24604 f_4@@11))) (not (IsWandField_24603_141572 f_4@@11))) (<= (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_41764) (o_2@@12 T@Ref) (f_4@@12 T@Field_24603_24595) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_24603_24595 f_4@@12))) (not (IsWandField_24603_24595 f_4@@12))) (<= (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_41764) (o_2@@13 T@Ref) (f_4@@13 T@Field_24603_4195) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_24603_4195 f_4@@13))) (not (IsWandField_24603_4195 f_4@@13))) (<= (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_41764) (o_2@@14 T@Ref) (f_4@@14 T@Field_24592_48260) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_24592_147644 f_4@@14))) (not (IsWandField_24592_147660 f_4@@14))) (<= (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_41764) (o_2@@15 T@Ref) (f_4@@15 T@Field_41803_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_24592_53 f_4@@15))) (not (IsWandField_24592_53 f_4@@15))) (<= (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_41764) (o_2@@16 T@Ref) (f_4@@16 T@Field_24592_24604) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_24592_137875 f_4@@16))) (not (IsWandField_24592_141215 f_4@@16))) (<= (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_41764) (o_2@@17 T@Ref) (f_4@@17 T@Field_41816_41817) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_24594_24595 f_4@@17))) (not (IsWandField_24594_24595 f_4@@17))) (<= (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_41764) (o_2@@18 T@Ref) (f_4@@18 T@Field_48139_4195) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_24592_4195 f_4@@18))) (not (IsWandField_24592_4195 f_4@@18))) (<= (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_41764) (o_2@@19 T@Ref) (f_4@@19 T@Field_48255_48260) ) (! (= (HasDirectPerm_24603_137587 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24603_137587 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_41764) (o_2@@20 T@Ref) (f_4@@20 T@Field_24603_53) ) (! (= (HasDirectPerm_24603_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24603_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_41764) (o_2@@21 T@Ref) (f_4@@21 T@Field_48239_48240) ) (! (= (HasDirectPerm_24603_24604 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24603_24604 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_41764) (o_2@@22 T@Ref) (f_4@@22 T@Field_24603_24595) ) (! (= (HasDirectPerm_24603_24595 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24603_24595 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_41764) (o_2@@23 T@Ref) (f_4@@23 T@Field_24603_4195) ) (! (= (HasDirectPerm_24603_4195 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24603_4195 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_41764) (o_2@@24 T@Ref) (f_4@@24 T@Field_24592_48260) ) (! (= (HasDirectPerm_24592_136446 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24592_136446 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_41764) (o_2@@25 T@Ref) (f_4@@25 T@Field_41803_53) ) (! (= (HasDirectPerm_24592_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24592_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_41764) (o_2@@26 T@Ref) (f_4@@26 T@Field_24592_24604) ) (! (= (HasDirectPerm_24592_24604 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24592_24604 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_41764) (o_2@@27 T@Ref) (f_4@@27 T@Field_41816_41817) ) (! (= (HasDirectPerm_24594_24595 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24594_24595 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_41764) (o_2@@28 T@Ref) (f_4@@28 T@Field_48139_4195) ) (! (= (HasDirectPerm_24592_4195 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24592_4195 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.297:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_41743) (ExhaleHeap@@9 T@PolymorphicMapType_41743) (Mask@@30 T@PolymorphicMapType_41764) (o_13@@0 T@Ref) (f_18@@39 T@Field_48255_48260) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_24603_137587 Mask@@30 o_13@@0 f_18@@39) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@11) o_13@@0 f_18@@39) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@9) o_13@@0 f_18@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@9) o_13@@0 f_18@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_41743) (ExhaleHeap@@10 T@PolymorphicMapType_41743) (Mask@@31 T@PolymorphicMapType_41764) (o_13@@1 T@Ref) (f_18@@40 T@Field_24603_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_24603_53 Mask@@31 o_13@@1 f_18@@40) (= (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@12) o_13@@1 f_18@@40) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@10) o_13@@1 f_18@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@10) o_13@@1 f_18@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_41743) (ExhaleHeap@@11 T@PolymorphicMapType_41743) (Mask@@32 T@PolymorphicMapType_41764) (o_13@@2 T@Ref) (f_18@@41 T@Field_48239_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_24603_24604 Mask@@32 o_13@@2 f_18@@41) (= (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@13) o_13@@2 f_18@@41) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@11) o_13@@2 f_18@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@11) o_13@@2 f_18@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_41743) (ExhaleHeap@@12 T@PolymorphicMapType_41743) (Mask@@33 T@PolymorphicMapType_41764) (o_13@@3 T@Ref) (f_18@@42 T@Field_24603_24595) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_24603_24595 Mask@@33 o_13@@3 f_18@@42) (= (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@14) o_13@@3 f_18@@42) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@12) o_13@@3 f_18@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@12) o_13@@3 f_18@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_41743) (ExhaleHeap@@13 T@PolymorphicMapType_41743) (Mask@@34 T@PolymorphicMapType_41764) (o_13@@4 T@Ref) (f_18@@43 T@Field_24603_4195) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_24603_4195 Mask@@34 o_13@@4 f_18@@43) (= (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@15) o_13@@4 f_18@@43) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@13) o_13@@4 f_18@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@13) o_13@@4 f_18@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_41743) (ExhaleHeap@@14 T@PolymorphicMapType_41743) (Mask@@35 T@PolymorphicMapType_41764) (o_13@@5 T@Ref) (f_18@@44 T@Field_24592_48260) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_24592_136446 Mask@@35 o_13@@5 f_18@@44) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@16) o_13@@5 f_18@@44) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@14) o_13@@5 f_18@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@14) o_13@@5 f_18@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_41743) (ExhaleHeap@@15 T@PolymorphicMapType_41743) (Mask@@36 T@PolymorphicMapType_41764) (o_13@@6 T@Ref) (f_18@@45 T@Field_41803_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_24592_53 Mask@@36 o_13@@6 f_18@@45) (= (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@17) o_13@@6 f_18@@45) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@15) o_13@@6 f_18@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@15) o_13@@6 f_18@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_41743) (ExhaleHeap@@16 T@PolymorphicMapType_41743) (Mask@@37 T@PolymorphicMapType_41764) (o_13@@7 T@Ref) (f_18@@46 T@Field_24592_24604) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_24592_24604 Mask@@37 o_13@@7 f_18@@46) (= (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@18) o_13@@7 f_18@@46) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@16) o_13@@7 f_18@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@16) o_13@@7 f_18@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_41743) (ExhaleHeap@@17 T@PolymorphicMapType_41743) (Mask@@38 T@PolymorphicMapType_41764) (o_13@@8 T@Ref) (f_18@@47 T@Field_41816_41817) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_24594_24595 Mask@@38 o_13@@8 f_18@@47) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@19) o_13@@8 f_18@@47) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@17) o_13@@8 f_18@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@17) o_13@@8 f_18@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_41743) (ExhaleHeap@@18 T@PolymorphicMapType_41743) (Mask@@39 T@PolymorphicMapType_41764) (o_13@@9 T@Ref) (f_18@@48 T@Field_48139_4195) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_24592_4195 Mask@@39 o_13@@9 f_18@@48) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@20) o_13@@9 f_18@@48) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@18) o_13@@9 f_18@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@18) o_13@@9 f_18@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_48255_48260) ) (! (= (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_24603_53) ) (! (= (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_48239_48240) ) (! (= (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_24603_24595) ) (! (= (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_24603_4195) ) (! (= (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_24592_48260) ) (! (= (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_41803_53) ) (! (= (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_24592_24604) ) (! (= (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_41816_41817) ) (! (= (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_48139_4195) ) (! (= (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_41764) (SummandMask1 T@PolymorphicMapType_41764) (SummandMask2 T@PolymorphicMapType_41764) (o_2@@39 T@Ref) (f_4@@39 T@Field_48255_48260) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_41764) (SummandMask1@@0 T@PolymorphicMapType_41764) (SummandMask2@@0 T@PolymorphicMapType_41764) (o_2@@40 T@Ref) (f_4@@40 T@Field_24603_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_41764) (SummandMask1@@1 T@PolymorphicMapType_41764) (SummandMask2@@1 T@PolymorphicMapType_41764) (o_2@@41 T@Ref) (f_4@@41 T@Field_48239_48240) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_41764) (SummandMask1@@2 T@PolymorphicMapType_41764) (SummandMask2@@2 T@PolymorphicMapType_41764) (o_2@@42 T@Ref) (f_4@@42 T@Field_24603_24595) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_41764) (SummandMask1@@3 T@PolymorphicMapType_41764) (SummandMask2@@3 T@PolymorphicMapType_41764) (o_2@@43 T@Ref) (f_4@@43 T@Field_24603_4195) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_41764) (SummandMask1@@4 T@PolymorphicMapType_41764) (SummandMask2@@4 T@PolymorphicMapType_41764) (o_2@@44 T@Ref) (f_4@@44 T@Field_24592_48260) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_41764) (SummandMask1@@5 T@PolymorphicMapType_41764) (SummandMask2@@5 T@PolymorphicMapType_41764) (o_2@@45 T@Ref) (f_4@@45 T@Field_41803_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_41764) (SummandMask1@@6 T@PolymorphicMapType_41764) (SummandMask2@@6 T@PolymorphicMapType_41764) (o_2@@46 T@Ref) (f_4@@46 T@Field_24592_24604) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_41764) (SummandMask1@@7 T@PolymorphicMapType_41764) (SummandMask2@@7 T@PolymorphicMapType_41764) (o_2@@47 T@Ref) (f_4@@47 T@Field_41816_41817) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_41764) (SummandMask1@@8 T@PolymorphicMapType_41764) (SummandMask2@@8 T@PolymorphicMapType_41764) (o_2@@48 T@Ref) (f_4@@48 T@Field_48139_4195) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_24817| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.360:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_24817| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_24817| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_24817| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_24817| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.375:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_24817| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_24817| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_24918| a@@6 x) y))
 :qid |stdinbpl.340:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_24918| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_24817| a@@7 b@@5) y@@0))
 :qid |stdinbpl.350:18|
 :skolemid |35|
 :pattern ( (|Set#Union_24817| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_24817| a@@8 b@@6) y@@1))
 :qid |stdinbpl.352:18|
 :skolemid |36|
 :pattern ( (|Set#Union_24817| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_24918| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.336:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_24918| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_24817| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.377:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_24817| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_24817| (|Set#Difference_24817| a@@11 b@@8)) (|Set#Card_24817| (|Set#Difference_24817| b@@8 a@@11))) (|Set#Card_24817| (|Set#Intersection_24817| a@@11 b@@8))) (|Set#Card_24817| (|Set#Union_24817| a@@11 b@@8))) (= (|Set#Card_24817| (|Set#Difference_24817| a@@11 b@@8)) (- (|Set#Card_24817| a@@11) (|Set#Card_24817| (|Set#Intersection_24817| a@@11 b@@8)))))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Set#Card_24817| (|Set#Difference_24817| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_24817| s))
 :qid |stdinbpl.322:18|
 :skolemid |22|
 :pattern ( (|Set#Card_24817| s))
)))
(assert (forall ((xs@@4 (Array T@Ref Bool)) (ys@@4 (Array T@Ref Bool)) ) (! (= (getPredWandId_24603_24604 (P xs@@4 ys@@4)) 0)
 :qid |stdinbpl.531:15|
 :skolemid |84|
 :pattern ( (P xs@@4 ys@@4))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_24918| a@@12 x@@1) x@@1)
 :qid |stdinbpl.338:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_24918| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_24817| (|Set#UnionOne_24918| a@@13 x@@2)) (|Set#Card_24817| a@@13)))
 :qid |stdinbpl.342:18|
 :skolemid |32|
 :pattern ( (|Set#Card_24817| (|Set#UnionOne_24918| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_24817| (|Set#Singleton_24817| r@@0)) 1)
 :qid |stdinbpl.333:18|
 :skolemid |28|
 :pattern ( (|Set#Card_24817| (|Set#Singleton_24817| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_24817| r@@1) r@@1)
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_24817| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_24817| a@@14 (|Set#Union_24817| a@@14 b@@9)) (|Set#Union_24817| a@@14 b@@9))
 :qid |stdinbpl.365:18|
 :skolemid |39|
 :pattern ( (|Set#Union_24817| a@@14 (|Set#Union_24817| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_24817| a@@15 (|Set#Intersection_24817| a@@15 b@@10)) (|Set#Intersection_24817| a@@15 b@@10))
 :qid |stdinbpl.369:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_24817| a@@15 (|Set#Intersection_24817| a@@15 b@@10)))
)))
(assert (forall ((xs@@5 (Array T@Ref Bool)) (ys@@5 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_24603 (P xs@@5 ys@@5)) (|P#sm| xs@@5 ys@@5))
 :qid |stdinbpl.523:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_24603 (P xs@@5 ys@@5)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_24817| o@@3))
 :qid |stdinbpl.325:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_24817| o@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_41743) (o_34 T@Ref) (f_36 T@Field_48255_48260) (v T@PolymorphicMapType_42292) ) (! (succHeap Heap@@21 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@21) (store (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@21) o_34 f_36 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@21) (store (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@21) o_34 f_36 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_41743) (o_34@@0 T@Ref) (f_36@@0 T@Field_48239_48240) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@22) (store (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@22) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@22) (store (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@22) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_41743) (o_34@@1 T@Ref) (f_36@@1 T@Field_24603_4195) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@23) (store (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@23) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@23) (store (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@23) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_41743) (o_34@@2 T@Ref) (f_36@@2 T@Field_24603_24595) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@24) (store (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@24) o_34@@2 f_36@@2 v@@2) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@24) (store (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@24) o_34@@2 f_36@@2 v@@2) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_41743) (o_34@@3 T@Ref) (f_36@@3 T@Field_24603_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@25) (store (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@25) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@25) (store (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@25) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_41743) (o_34@@4 T@Ref) (f_36@@4 T@Field_24592_48260) (v@@4 T@PolymorphicMapType_42292) ) (! (succHeap Heap@@26 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@26) (store (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@26) o_34@@4 f_36@@4 v@@4) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@26) (store (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@26) o_34@@4 f_36@@4 v@@4) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_41743) (o_34@@5 T@Ref) (f_36@@5 T@Field_24592_24604) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@27) (store (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@27) o_34@@5 f_36@@5 v@@5) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@27) (store (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@27) o_34@@5 f_36@@5 v@@5) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_41743) (o_34@@6 T@Ref) (f_36@@6 T@Field_48139_4195) (v@@6 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@28) (store (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@28) o_34@@6 f_36@@6 v@@6) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@28) (store (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@28) o_34@@6 f_36@@6 v@@6) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_41743) (o_34@@7 T@Ref) (f_36@@7 T@Field_41816_41817) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@29) (store (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@29) o_34@@7 f_36@@7 v@@7) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@29) (store (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@29) o_34@@7 f_36@@7 v@@7) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_41743) (o_34@@8 T@Ref) (f_36@@8 T@Field_41803_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_41743 (store (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@30) o_34@@8 f_36@@8 v@@8) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (store (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@30) o_34@@8 f_36@@8 v@@8) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@30)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.409:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.410:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_41743) (Heap1Heap@@0 T@PolymorphicMapType_41743) (xs@@6 (Array T@Ref Bool)) (ys@@6 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (and (select xs@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))) (not (select ys@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))))) (< NoPerm FullPerm))  (and (and (select xs@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))) (not (select ys@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))))) (< NoPerm FullPerm))) (=> (and (and (select xs@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))) (not (select ys@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap@@0) (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6)) f_7) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap1Heap@@0) (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6)) f_7)))) (= (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6)))
 :qid |stdinbpl.557:15|
 :skolemid |88|
 :pattern ( (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_24817| s@@0) 0) (= s@@0 |Set#Empty_24817|)) (=> (not (= (|Set#Card_24817| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.328:33|
 :skolemid |24|
))))
 :qid |stdinbpl.326:18|
 :skolemid |25|
 :pattern ( (|Set#Card_24817| s@@0))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_41743) (Heap1Heap@@1 T@PolymorphicMapType_41743) (xs@@7 (Array T@Ref Bool)) (ys@@7 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (and (select xs@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7))) (and (not (select ys@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)))) (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap@@1) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)) f_7) 0)))) (< NoPerm FullPerm))  (and (and (select xs@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7))) (and (not (select ys@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)))) (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap1Heap@@1) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)) f_7) 0)))) (< NoPerm FullPerm))) (=> (and (and (select xs@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7))) (and (not (select ys@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)))) (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap@@1) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)) f_7) 0)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap2Heap@@1) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)) g) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap1Heap@@1) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)) g)))) (= (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)))
 :qid |stdinbpl.568:15|
 :skolemid |89|
 :pattern ( (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_24817| (|Set#UnionOne_24918| a@@18 x@@4)) (+ (|Set#Card_24817| a@@18) 1)))
 :qid |stdinbpl.344:18|
 :skolemid |33|
 :pattern ( (|Set#Card_24817| (|Set#UnionOne_24918| a@@18 x@@4)))
)))
(assert (forall ((o_34@@9 T@Ref) (f_40 T@Field_41816_41817) (Heap@@31 T@PolymorphicMapType_41743) ) (!  (=> (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@31) o_34@@9 $allocated) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@31) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@31) o_34@@9 f_40) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@31) o_34@@9 f_40))
)))
(assert (forall ((p@@2 T@Field_48239_48240) (v_1@@1 T@FrameType) (q T@Field_48239_48240) (w@@1 T@FrameType) (r@@2 T@Field_48239_48240) (u T@FrameType) ) (!  (=> (and (InsidePredicate_48239_48239 p@@2 v_1@@1 q w@@1) (InsidePredicate_48239_48239 q w@@1 r@@2 u)) (InsidePredicate_48239_48239 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_48239_48239 p@@2 v_1@@1 q w@@1) (InsidePredicate_48239_48239 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_48239_48240) (v_1@@2 T@FrameType) (q@@0 T@Field_48239_48240) (w@@2 T@FrameType) (r@@3 T@Field_24592_24604) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_48239_48239 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_48239_41803 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_48239_41803 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_48239_48239 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_48239_41803 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_48239_48240) (v_1@@3 T@FrameType) (q@@1 T@Field_24592_24604) (w@@3 T@FrameType) (r@@4 T@Field_48239_48240) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_48239_41803 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_41803_48239 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_48239_48239 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_48239_41803 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_41803_48239 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_48239_48240) (v_1@@4 T@FrameType) (q@@2 T@Field_24592_24604) (w@@4 T@FrameType) (r@@5 T@Field_24592_24604) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_48239_41803 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_41803_41803 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_48239_41803 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_48239_41803 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_41803_41803 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_24592_24604) (v_1@@5 T@FrameType) (q@@3 T@Field_48239_48240) (w@@5 T@FrameType) (r@@6 T@Field_48239_48240) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_41803_48239 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_48239_48239 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_41803_48239 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41803_48239 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_48239_48239 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_24592_24604) (v_1@@6 T@FrameType) (q@@4 T@Field_48239_48240) (w@@6 T@FrameType) (r@@7 T@Field_24592_24604) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_41803_48239 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_48239_41803 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_41803_41803 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41803_48239 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_48239_41803 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_24592_24604) (v_1@@7 T@FrameType) (q@@5 T@Field_24592_24604) (w@@7 T@FrameType) (r@@8 T@Field_48239_48240) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_41803_41803 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_41803_48239 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_41803_48239 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41803_41803 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_41803_48239 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_24592_24604) (v_1@@8 T@FrameType) (q@@6 T@Field_24592_24604) (w@@8 T@FrameType) (r@@9 T@Field_24592_24604) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_41803_41803 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_41803_41803 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_41803_41803 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41803_41803 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_41803_41803 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.415:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_24817| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.348:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_24817| a@@20 b@@13) o@@4))
)))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x1_2 () T@Ref)
(declare-fun x_14 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_41743)
(declare-fun neverTriggered14 (T@Ref) Bool)
(declare-fun Heap@@32 () T@PolymorphicMapType_41743)
(declare-fun Mask@1 () T@PolymorphicMapType_41764)
(declare-fun Mask@0 () T@PolymorphicMapType_41764)
(set-info :boogie-vc-id test13)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon4_correct true))
(let ((anon9_Else_correct  (=> (and (not (select (|Set#Singleton_24817| x1_2) x_14)) (= (ControlFlow 0 9) 6)) anon4_correct)))
(let ((anon9_Then_correct  (=> (select (|Set#Singleton_24817| x1_2) x_14) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_24594_24595 ZeroMask x_14 g)) (=> (HasDirectPerm_24594_24595 ZeroMask x_14 g) (=> (= (ControlFlow 0 7) 6) anon4_correct))))))
(let ((anon8_Else_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select (|Set#Singleton_24817| x1_2) x_1)) (select (|Set#Singleton_24817| x1_2) x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| PostHeap@0) x_1 g) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| PostHeap@0) x_1_1 g))))
 :qid |stdinbpl.1462:15|
 :skolemid |164|
)))))
(let ((anon7_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 10) 5) anon8_Else_correct) (=> (= (ControlFlow 0 10) 7) anon9_Then_correct)) (=> (= (ControlFlow 0 10) 9) anon9_Else_correct)))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((x_2_2 T@Ref) (x_2_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_2_2 x_2_3)) (select (|Set#Singleton_24817| x1_2) x_2_2)) (select (|Set#Singleton_24817| x1_2) x_2_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@32) x_2_2 g) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@32) x_2_3 g))))
 :qid |stdinbpl.1509:17|
 :skolemid |170|
 :pattern ( (neverTriggered14 x_2_2) (neverTriggered14 x_2_3))
))) (=> (forall ((x_2_2@@0 T@Ref) (x_2_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_2_2@@0 x_2_3@@0)) (select (|Set#Singleton_24817| x1_2) x_2_2@@0)) (select (|Set#Singleton_24817| x1_2) x_2_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@32) x_2_2@@0 g) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@32) x_2_3@@0 g))))
 :qid |stdinbpl.1509:17|
 :skolemid |170|
 :pattern ( (neverTriggered14 x_2_2@@0) (neverTriggered14 x_2_3@@0))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((x_2_2@@1 T@Ref) ) (!  (=> (select (|Set#Singleton_24817| x1_2) x_2_2@@1) (>= (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| Mask@1) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@32) x_2_2@@1 g) f_7) FullPerm))
 :qid |stdinbpl.1516:17|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@32) x_2_2@@1 g))
 :pattern ( (select (|Set#Singleton_24817| x1_2) x_2_2@@1))
)))))))
(let ((anon0_correct  (=> (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@32) x1_2 $allocated) (not (= x1_2 null))) (and (= Mask@0 (PolymorphicMapType_41764 (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| ZeroMask) (store (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| ZeroMask) x1_2 g (+ (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| ZeroMask) x1_2 g) FullPerm)) (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| ZeroMask) (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| ZeroMask) (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| ZeroMask) (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| ZeroMask) (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| ZeroMask) (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| ZeroMask) (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| ZeroMask) (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| ZeroMask))) (state Heap@@32 Mask@0))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_24594_24595 Mask@0 x1_2 g)) (=> (HasDirectPerm_24594_24595 Mask@0 x1_2 g) (=> (and (and (not (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@32) x1_2 g) null)) (= Mask@1 (PolymorphicMapType_41764 (store (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| Mask@0) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@32) x1_2 g) f_7 (+ (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| Mask@0) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@32) x1_2 g) f_7) FullPerm)) (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| Mask@0) (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| Mask@0) (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| Mask@0) (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| Mask@0) (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| Mask@0) (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| Mask@0) (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| Mask@0) (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| Mask@0) (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| Mask@0)))) (and (state Heap@@32 Mask@1) (state Heap@@32 Mask@1))) (and (=> (= (ControlFlow 0 11) 10) anon7_Then_correct) (=> (= (ControlFlow 0 11) 2) anon7_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13) 11) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 8))))
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
(declare-sort T@Field_41803_53 0)
(declare-sort T@Field_41816_41817 0)
(declare-sort T@Field_48139_4195 0)
(declare-sort T@Field_48239_48240 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_24592_24604 0)
(declare-sort T@Field_24592_48260 0)
(declare-sort T@Field_24603_4195 0)
(declare-sort T@Field_24603_24595 0)
(declare-sort T@Field_24603_53 0)
(declare-sort T@Field_48255_48260 0)
(declare-datatypes ((T@PolymorphicMapType_41764 0)) (((PolymorphicMapType_41764 (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| (Array T@Ref T@Field_48139_4195 Real)) (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| (Array T@Ref T@Field_41816_41817 Real)) (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| (Array T@Ref T@Field_48239_48240 Real)) (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| (Array T@Ref T@Field_24592_24604 Real)) (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| (Array T@Ref T@Field_41803_53 Real)) (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| (Array T@Ref T@Field_24592_48260 Real)) (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| (Array T@Ref T@Field_24603_4195 Real)) (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| (Array T@Ref T@Field_24603_24595 Real)) (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| (Array T@Ref T@Field_24603_53 Real)) (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| (Array T@Ref T@Field_48255_48260 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_42292 0)) (((PolymorphicMapType_42292 (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| (Array T@Ref T@Field_41803_53 Bool)) (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| (Array T@Ref T@Field_41816_41817 Bool)) (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| (Array T@Ref T@Field_48139_4195 Bool)) (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| (Array T@Ref T@Field_24592_24604 Bool)) (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| (Array T@Ref T@Field_24592_48260 Bool)) (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| (Array T@Ref T@Field_24603_53 Bool)) (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| (Array T@Ref T@Field_24603_24595 Bool)) (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| (Array T@Ref T@Field_24603_4195 Bool)) (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| (Array T@Ref T@Field_48239_48240 Bool)) (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| (Array T@Ref T@Field_48255_48260 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_41743 0)) (((PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| (Array T@Ref T@Field_41803_53 Bool)) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| (Array T@Ref T@Field_41816_41817 T@Ref)) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| (Array T@Ref T@Field_48139_4195 Int)) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| (Array T@Ref T@Field_48239_48240 T@FrameType)) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| (Array T@Ref T@Field_24592_24604 T@FrameType)) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| (Array T@Ref T@Field_24592_48260 T@PolymorphicMapType_42292)) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| (Array T@Ref T@Field_24603_4195 Int)) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| (Array T@Ref T@Field_24603_24595 T@Ref)) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| (Array T@Ref T@Field_24603_53 Bool)) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| (Array T@Ref T@Field_48255_48260 T@PolymorphicMapType_42292)) ) ) ))
(declare-fun $allocated () T@Field_41803_53)
(declare-fun f_7 () T@Field_48139_4195)
(declare-fun g () T@Field_41816_41817)
(declare-fun succHeap (T@PolymorphicMapType_41743 T@PolymorphicMapType_41743) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_41743 T@PolymorphicMapType_41743) Bool)
(declare-fun state (T@PolymorphicMapType_41743 T@PolymorphicMapType_41764) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_41764) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_42292)
(declare-fun P ((Array T@Ref Bool) (Array T@Ref Bool)) T@Field_48239_48240)
(declare-fun IsPredicateField_24603_24604 (T@Field_48239_48240) Bool)
(declare-fun |P#trigger_24603| (T@PolymorphicMapType_41743 T@Field_48239_48240) Bool)
(declare-fun |P#everUsed_24603| (T@Field_48239_48240) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_24817| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_24817| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_24817| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_24817| ((Array T@Ref Bool)) Int)
(declare-fun |P#condqp3| (T@PolymorphicMapType_41743 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |sk_P#condqp3| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_41743 T@PolymorphicMapType_41743 T@PolymorphicMapType_41764) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_24603 (T@Field_48239_48240) T@Field_48255_48260)
(declare-fun HasDirectPerm_24603_24604 (T@PolymorphicMapType_41764 T@Ref T@Field_48239_48240) Bool)
(declare-fun IsPredicateField_24592_137875 (T@Field_24592_24604) Bool)
(declare-fun PredicateMaskField_24592 (T@Field_24592_24604) T@Field_24592_48260)
(declare-fun HasDirectPerm_24592_24604 (T@PolymorphicMapType_41764 T@Ref T@Field_24592_24604) Bool)
(declare-fun IsWandField_24603_141572 (T@Field_48239_48240) Bool)
(declare-fun WandMaskField_24603 (T@Field_48239_48240) T@Field_48255_48260)
(declare-fun IsWandField_24592_141215 (T@Field_24592_24604) Bool)
(declare-fun WandMaskField_24592 (T@Field_24592_24604) T@Field_24592_48260)
(declare-fun |P#sm| ((Array T@Ref Bool) (Array T@Ref Bool)) T@Field_48255_48260)
(declare-fun dummyHeap () T@PolymorphicMapType_41743)
(declare-fun ZeroMask () T@PolymorphicMapType_41764)
(declare-fun InsidePredicate_48239_48239 (T@Field_48239_48240 T@FrameType T@Field_48239_48240 T@FrameType) Bool)
(declare-fun InsidePredicate_41803_41803 (T@Field_24592_24604 T@FrameType T@Field_24592_24604 T@FrameType) Bool)
(declare-fun IsPredicateField_24592_4195 (T@Field_48139_4195) Bool)
(declare-fun IsWandField_24592_4195 (T@Field_48139_4195) Bool)
(declare-fun IsPredicateField_24594_24595 (T@Field_41816_41817) Bool)
(declare-fun IsWandField_24594_24595 (T@Field_41816_41817) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_24603_148475 (T@Field_48255_48260) Bool)
(declare-fun IsWandField_24603_148491 (T@Field_48255_48260) Bool)
(declare-fun IsPredicateField_24603_53 (T@Field_24603_53) Bool)
(declare-fun IsWandField_24603_53 (T@Field_24603_53) Bool)
(declare-fun IsPredicateField_24603_24595 (T@Field_24603_24595) Bool)
(declare-fun IsWandField_24603_24595 (T@Field_24603_24595) Bool)
(declare-fun IsPredicateField_24603_4195 (T@Field_24603_4195) Bool)
(declare-fun IsWandField_24603_4195 (T@Field_24603_4195) Bool)
(declare-fun IsPredicateField_24592_147644 (T@Field_24592_48260) Bool)
(declare-fun IsWandField_24592_147660 (T@Field_24592_48260) Bool)
(declare-fun IsPredicateField_24592_53 (T@Field_41803_53) Bool)
(declare-fun IsWandField_24592_53 (T@Field_41803_53) Bool)
(declare-fun HasDirectPerm_24603_137587 (T@PolymorphicMapType_41764 T@Ref T@Field_48255_48260) Bool)
(declare-fun HasDirectPerm_24603_53 (T@PolymorphicMapType_41764 T@Ref T@Field_24603_53) Bool)
(declare-fun HasDirectPerm_24603_24595 (T@PolymorphicMapType_41764 T@Ref T@Field_24603_24595) Bool)
(declare-fun HasDirectPerm_24603_4195 (T@PolymorphicMapType_41764 T@Ref T@Field_24603_4195) Bool)
(declare-fun HasDirectPerm_24592_136446 (T@PolymorphicMapType_41764 T@Ref T@Field_24592_48260) Bool)
(declare-fun HasDirectPerm_24592_53 (T@PolymorphicMapType_41764 T@Ref T@Field_41803_53) Bool)
(declare-fun HasDirectPerm_24594_24595 (T@PolymorphicMapType_41764 T@Ref T@Field_41816_41817) Bool)
(declare-fun HasDirectPerm_24592_4195 (T@PolymorphicMapType_41764 T@Ref T@Field_48139_4195) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_41764 T@PolymorphicMapType_41764 T@PolymorphicMapType_41764) Bool)
(declare-fun |Set#Difference_24817| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_24918| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_24603_24604 (T@Field_48239_48240) Int)
(declare-fun |Set#Empty_24817| () (Array T@Ref Bool))
(declare-fun |P#condqp1| (T@PolymorphicMapType_41743 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |sk_P#condqp1| (Int Int) T@Ref)
(declare-fun |P#condqp2| (T@PolymorphicMapType_41743 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |sk_P#condqp2| (Int Int) T@Ref)
(declare-fun InsidePredicate_48239_41803 (T@Field_48239_48240 T@FrameType T@Field_24592_24604 T@FrameType) Bool)
(declare-fun InsidePredicate_41803_48239 (T@Field_24592_24604 T@FrameType T@Field_48239_48240 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_41743) (Heap1 T@PolymorphicMapType_41743) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_41743) (Mask T@PolymorphicMapType_41764) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_41743) (Heap1@@0 T@PolymorphicMapType_41743) (Heap2 T@PolymorphicMapType_41743) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_48255_48260) ) (!  (not (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_48239_48240) ) (!  (not (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_24603_4195) ) (!  (not (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_24603_24595) ) (!  (not (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_24603_53) ) (!  (not (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_24592_48260) ) (!  (not (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_24592_24604) ) (!  (not (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_48139_4195) ) (!  (not (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_41816_41817) ) (!  (not (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_41803_53) ) (!  (not (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((xs (Array T@Ref Bool)) (ys (Array T@Ref Bool)) ) (! (IsPredicateField_24603_24604 (P xs ys))
 :qid |stdinbpl.527:15|
 :skolemid |83|
 :pattern ( (P xs ys))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_41743) (xs@@0 (Array T@Ref Bool)) (ys@@0 (Array T@Ref Bool)) ) (! (|P#everUsed_24603| (P xs@@0 ys@@0))
 :qid |stdinbpl.546:15|
 :skolemid |87|
 :pattern ( (|P#trigger_24603| Heap@@0 (P xs@@0 ys@@0)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.411:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_24817| (|Set#Union_24817| a@@0 b@@0) b@@0) (|Set#Union_24817| a@@0 b@@0))
 :qid |stdinbpl.363:18|
 :skolemid |38|
 :pattern ( (|Set#Union_24817| (|Set#Union_24817| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_24817| (|Set#Intersection_24817| a@@1 b@@1) b@@1) (|Set#Intersection_24817| a@@1 b@@1))
 :qid |stdinbpl.367:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_24817| (|Set#Intersection_24817| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_24817| r) o) (= r o))
 :qid |stdinbpl.332:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_24817| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_24817| (|Set#Union_24817| a@@2 b@@2)) (|Set#Card_24817| (|Set#Intersection_24817| a@@2 b@@2))) (+ (|Set#Card_24817| a@@2) (|Set#Card_24817| b@@2)))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Set#Card_24817| (|Set#Union_24817| a@@2 b@@2)))
 :pattern ( (|Set#Card_24817| (|Set#Intersection_24817| a@@2 b@@2)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_41743) (Heap1Heap T@PolymorphicMapType_41743) (xs@@1 (Array T@Ref Bool)) (ys@@1 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (and (select xs@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1))) (and (not (select ys@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)))) (and (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) f_7) 0)) (not (select xs@@1 (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap2Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) g)))))) (< NoPerm FullPerm))  (and (and (select xs@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1))) (and (not (select ys@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)))) (and (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap1Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) f_7) 0)) (not (select xs@@1 (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap1Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) g)))))) (< NoPerm FullPerm))) (=> (and (and (select xs@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1))) (and (not (select ys@@1 (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)))) (and (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) f_7) 0)) (not (select xs@@1 (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap2Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) g)))))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap2Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) g) f_7) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap1Heap) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap1Heap) (|sk_P#condqp3| (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)) g) f_7)))) (= (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1)))
 :qid |stdinbpl.579:15|
 :skolemid |90|
 :pattern ( (|P#condqp3| Heap2Heap xs@@1 ys@@1) (|P#condqp3| Heap1Heap xs@@1 ys@@1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.414:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_41743) (ExhaleHeap T@PolymorphicMapType_41743) (Mask@@0 T@PolymorphicMapType_41764) (pm_f_12 T@Field_48239_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_24603_24604 Mask@@0 null pm_f_12) (IsPredicateField_24603_24604 pm_f_12)) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@1) null (PredicateMaskField_24603 pm_f_12)) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap) null (PredicateMaskField_24603 pm_f_12)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_24603_24604 pm_f_12) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap) null (PredicateMaskField_24603 pm_f_12)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_41743) (ExhaleHeap@@0 T@PolymorphicMapType_41743) (Mask@@1 T@PolymorphicMapType_41764) (pm_f_12@@0 T@Field_24592_24604) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_24592_24604 Mask@@1 null pm_f_12@@0) (IsPredicateField_24592_137875 pm_f_12@@0)) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@2) null (PredicateMaskField_24592 pm_f_12@@0)) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@0) null (PredicateMaskField_24592 pm_f_12@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_24592_137875 pm_f_12@@0) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@0) null (PredicateMaskField_24592 pm_f_12@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_41743) (ExhaleHeap@@1 T@PolymorphicMapType_41743) (Mask@@2 T@PolymorphicMapType_41764) (pm_f_12@@1 T@Field_48239_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_24603_24604 Mask@@2 null pm_f_12@@1) (IsWandField_24603_141572 pm_f_12@@1)) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@3) null (WandMaskField_24603 pm_f_12@@1)) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@1) null (WandMaskField_24603 pm_f_12@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_24603_141572 pm_f_12@@1) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@1) null (WandMaskField_24603 pm_f_12@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_41743) (ExhaleHeap@@2 T@PolymorphicMapType_41743) (Mask@@3 T@PolymorphicMapType_41764) (pm_f_12@@2 T@Field_24592_24604) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_24592_24604 Mask@@3 null pm_f_12@@2) (IsWandField_24592_141215 pm_f_12@@2)) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@4) null (WandMaskField_24592 pm_f_12@@2)) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@2) null (WandMaskField_24592 pm_f_12@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_24592_141215 pm_f_12@@2) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@2) null (WandMaskField_24592 pm_f_12@@2)))
)))
(assert (forall ((xs@@2 (Array T@Ref Bool)) (ys@@2 (Array T@Ref Bool)) (xs2 (Array T@Ref Bool)) (ys2 (Array T@Ref Bool)) ) (!  (=> (= (P xs@@2 ys@@2) (P xs2 ys2)) (and (= xs@@2 xs2) (= ys@@2 ys2)))
 :qid |stdinbpl.537:15|
 :skolemid |85|
 :pattern ( (P xs@@2 ys@@2) (P xs2 ys2))
)))
(assert (forall ((xs@@3 (Array T@Ref Bool)) (ys@@3 (Array T@Ref Bool)) (xs2@@0 (Array T@Ref Bool)) (ys2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|P#sm| xs@@3 ys@@3) (|P#sm| xs2@@0 ys2@@0)) (and (= xs@@3 xs2@@0) (= ys@@3 ys2@@0)))
 :qid |stdinbpl.541:15|
 :skolemid |86|
 :pattern ( (|P#sm| xs@@3 ys@@3) (|P#sm| xs2@@0 ys2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_41743) (ExhaleHeap@@3 T@PolymorphicMapType_41743) (Mask@@4 T@PolymorphicMapType_41764) (pm_f_12@@3 T@Field_48239_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_24603_24604 Mask@@4 null pm_f_12@@3) (IsPredicateField_24603_24604 pm_f_12@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_12 T@Ref) (f_18 T@Field_41803_53) ) (!  (=> (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12 f_18) (= (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@5) o2_12 f_18) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12 f_18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12 f_18))
)) (forall ((o2_12@@0 T@Ref) (f_18@@0 T@Field_41816_41817) ) (!  (=> (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@0 f_18@@0) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@5) o2_12@@0 f_18@@0) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@0 f_18@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@0 f_18@@0))
))) (forall ((o2_12@@1 T@Ref) (f_18@@1 T@Field_48139_4195) ) (!  (=> (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@1 f_18@@1) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@5) o2_12@@1 f_18@@1) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@1 f_18@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@1 f_18@@1))
))) (forall ((o2_12@@2 T@Ref) (f_18@@2 T@Field_24592_24604) ) (!  (=> (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@2 f_18@@2) (= (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@5) o2_12@@2 f_18@@2) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@2 f_18@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@2 f_18@@2))
))) (forall ((o2_12@@3 T@Ref) (f_18@@3 T@Field_24592_48260) ) (!  (=> (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@3 f_18@@3) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@5) o2_12@@3 f_18@@3) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@3 f_18@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@3 f_18@@3))
))) (forall ((o2_12@@4 T@Ref) (f_18@@4 T@Field_24603_53) ) (!  (=> (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@4 f_18@@4) (= (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@5) o2_12@@4 f_18@@4) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@4 f_18@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@4 f_18@@4))
))) (forall ((o2_12@@5 T@Ref) (f_18@@5 T@Field_24603_24595) ) (!  (=> (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@5 f_18@@5) (= (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@5) o2_12@@5 f_18@@5) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@5 f_18@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@5 f_18@@5))
))) (forall ((o2_12@@6 T@Ref) (f_18@@6 T@Field_24603_4195) ) (!  (=> (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@6 f_18@@6) (= (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@5) o2_12@@6 f_18@@6) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@6 f_18@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@6 f_18@@6))
))) (forall ((o2_12@@7 T@Ref) (f_18@@7 T@Field_48239_48240) ) (!  (=> (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@7 f_18@@7) (= (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@5) o2_12@@7 f_18@@7) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@7 f_18@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@7 f_18@@7))
))) (forall ((o2_12@@8 T@Ref) (f_18@@8 T@Field_48255_48260) ) (!  (=> (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) null (PredicateMaskField_24603 pm_f_12@@3))) o2_12@@8 f_18@@8) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@5) o2_12@@8 f_18@@8) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@8 f_18@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@3) o2_12@@8 f_18@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_24603_24604 pm_f_12@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_41743) (ExhaleHeap@@4 T@PolymorphicMapType_41743) (Mask@@5 T@PolymorphicMapType_41764) (pm_f_12@@4 T@Field_24592_24604) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_24592_24604 Mask@@5 null pm_f_12@@4) (IsPredicateField_24592_137875 pm_f_12@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_12@@9 T@Ref) (f_18@@9 T@Field_41803_53) ) (!  (=> (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@9 f_18@@9) (= (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@6) o2_12@@9 f_18@@9) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@9 f_18@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@9 f_18@@9))
)) (forall ((o2_12@@10 T@Ref) (f_18@@10 T@Field_41816_41817) ) (!  (=> (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@10 f_18@@10) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@6) o2_12@@10 f_18@@10) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@10 f_18@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@10 f_18@@10))
))) (forall ((o2_12@@11 T@Ref) (f_18@@11 T@Field_48139_4195) ) (!  (=> (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@11 f_18@@11) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@6) o2_12@@11 f_18@@11) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@11 f_18@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@11 f_18@@11))
))) (forall ((o2_12@@12 T@Ref) (f_18@@12 T@Field_24592_24604) ) (!  (=> (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@12 f_18@@12) (= (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@6) o2_12@@12 f_18@@12) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@12 f_18@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@12 f_18@@12))
))) (forall ((o2_12@@13 T@Ref) (f_18@@13 T@Field_24592_48260) ) (!  (=> (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@13 f_18@@13) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) o2_12@@13 f_18@@13) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@13 f_18@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@13 f_18@@13))
))) (forall ((o2_12@@14 T@Ref) (f_18@@14 T@Field_24603_53) ) (!  (=> (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@14 f_18@@14) (= (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@6) o2_12@@14 f_18@@14) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@14 f_18@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@14 f_18@@14))
))) (forall ((o2_12@@15 T@Ref) (f_18@@15 T@Field_24603_24595) ) (!  (=> (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@15 f_18@@15) (= (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@6) o2_12@@15 f_18@@15) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@15 f_18@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@15 f_18@@15))
))) (forall ((o2_12@@16 T@Ref) (f_18@@16 T@Field_24603_4195) ) (!  (=> (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@16 f_18@@16) (= (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@6) o2_12@@16 f_18@@16) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@16 f_18@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@16 f_18@@16))
))) (forall ((o2_12@@17 T@Ref) (f_18@@17 T@Field_48239_48240) ) (!  (=> (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@17 f_18@@17) (= (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@6) o2_12@@17 f_18@@17) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@17 f_18@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@17 f_18@@17))
))) (forall ((o2_12@@18 T@Ref) (f_18@@18 T@Field_48255_48260) ) (!  (=> (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@6) null (PredicateMaskField_24592 pm_f_12@@4))) o2_12@@18 f_18@@18) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@6) o2_12@@18 f_18@@18) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@18 f_18@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@4) o2_12@@18 f_18@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_24592_137875 pm_f_12@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_41743) (ExhaleHeap@@5 T@PolymorphicMapType_41743) (Mask@@6 T@PolymorphicMapType_41764) (pm_f_12@@5 T@Field_48239_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_24603_24604 Mask@@6 null pm_f_12@@5) (IsWandField_24603_141572 pm_f_12@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_12@@19 T@Ref) (f_18@@19 T@Field_41803_53) ) (!  (=> (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@19 f_18@@19) (= (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@7) o2_12@@19 f_18@@19) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@19 f_18@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@19 f_18@@19))
)) (forall ((o2_12@@20 T@Ref) (f_18@@20 T@Field_41816_41817) ) (!  (=> (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@20 f_18@@20) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@7) o2_12@@20 f_18@@20) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@20 f_18@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@20 f_18@@20))
))) (forall ((o2_12@@21 T@Ref) (f_18@@21 T@Field_48139_4195) ) (!  (=> (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@21 f_18@@21) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@7) o2_12@@21 f_18@@21) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@21 f_18@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@21 f_18@@21))
))) (forall ((o2_12@@22 T@Ref) (f_18@@22 T@Field_24592_24604) ) (!  (=> (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@22 f_18@@22) (= (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@7) o2_12@@22 f_18@@22) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@22 f_18@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@22 f_18@@22))
))) (forall ((o2_12@@23 T@Ref) (f_18@@23 T@Field_24592_48260) ) (!  (=> (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@23 f_18@@23) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@7) o2_12@@23 f_18@@23) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@23 f_18@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@23 f_18@@23))
))) (forall ((o2_12@@24 T@Ref) (f_18@@24 T@Field_24603_53) ) (!  (=> (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@24 f_18@@24) (= (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@7) o2_12@@24 f_18@@24) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@24 f_18@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@24 f_18@@24))
))) (forall ((o2_12@@25 T@Ref) (f_18@@25 T@Field_24603_24595) ) (!  (=> (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@25 f_18@@25) (= (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@7) o2_12@@25 f_18@@25) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@25 f_18@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@25 f_18@@25))
))) (forall ((o2_12@@26 T@Ref) (f_18@@26 T@Field_24603_4195) ) (!  (=> (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@26 f_18@@26) (= (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@7) o2_12@@26 f_18@@26) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@26 f_18@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@26 f_18@@26))
))) (forall ((o2_12@@27 T@Ref) (f_18@@27 T@Field_48239_48240) ) (!  (=> (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@27 f_18@@27) (= (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@7) o2_12@@27 f_18@@27) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@27 f_18@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@27 f_18@@27))
))) (forall ((o2_12@@28 T@Ref) (f_18@@28 T@Field_48255_48260) ) (!  (=> (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) null (WandMaskField_24603 pm_f_12@@5))) o2_12@@28 f_18@@28) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@7) o2_12@@28 f_18@@28) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@28 f_18@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@5) o2_12@@28 f_18@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_24603_141572 pm_f_12@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_41743) (ExhaleHeap@@6 T@PolymorphicMapType_41743) (Mask@@7 T@PolymorphicMapType_41764) (pm_f_12@@6 T@Field_24592_24604) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_24592_24604 Mask@@7 null pm_f_12@@6) (IsWandField_24592_141215 pm_f_12@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_12@@29 T@Ref) (f_18@@29 T@Field_41803_53) ) (!  (=> (select (|PolymorphicMapType_42292_41803_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@29 f_18@@29) (= (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@8) o2_12@@29 f_18@@29) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@29 f_18@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@29 f_18@@29))
)) (forall ((o2_12@@30 T@Ref) (f_18@@30 T@Field_41816_41817) ) (!  (=> (select (|PolymorphicMapType_42292_41803_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@30 f_18@@30) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@8) o2_12@@30 f_18@@30) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@30 f_18@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@30 f_18@@30))
))) (forall ((o2_12@@31 T@Ref) (f_18@@31 T@Field_48139_4195) ) (!  (=> (select (|PolymorphicMapType_42292_41803_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@31 f_18@@31) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@8) o2_12@@31 f_18@@31) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@31 f_18@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@31 f_18@@31))
))) (forall ((o2_12@@32 T@Ref) (f_18@@32 T@Field_24592_24604) ) (!  (=> (select (|PolymorphicMapType_42292_41803_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@32 f_18@@32) (= (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@8) o2_12@@32 f_18@@32) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@32 f_18@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@32 f_18@@32))
))) (forall ((o2_12@@33 T@Ref) (f_18@@33 T@Field_24592_48260) ) (!  (=> (select (|PolymorphicMapType_42292_41803_139359#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@33 f_18@@33) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) o2_12@@33 f_18@@33) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@33 f_18@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@33 f_18@@33))
))) (forall ((o2_12@@34 T@Ref) (f_18@@34 T@Field_24603_53) ) (!  (=> (select (|PolymorphicMapType_42292_48239_53#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@34 f_18@@34) (= (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@8) o2_12@@34 f_18@@34) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@34 f_18@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@34 f_18@@34))
))) (forall ((o2_12@@35 T@Ref) (f_18@@35 T@Field_24603_24595) ) (!  (=> (select (|PolymorphicMapType_42292_48239_41817#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@35 f_18@@35) (= (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@8) o2_12@@35 f_18@@35) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@35 f_18@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@35 f_18@@35))
))) (forall ((o2_12@@36 T@Ref) (f_18@@36 T@Field_24603_4195) ) (!  (=> (select (|PolymorphicMapType_42292_48239_4195#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@36 f_18@@36) (= (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@8) o2_12@@36 f_18@@36) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@36 f_18@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@36 f_18@@36))
))) (forall ((o2_12@@37 T@Ref) (f_18@@37 T@Field_48239_48240) ) (!  (=> (select (|PolymorphicMapType_42292_48239_48240#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@37 f_18@@37) (= (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@8) o2_12@@37 f_18@@37) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@37 f_18@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@37 f_18@@37))
))) (forall ((o2_12@@38 T@Ref) (f_18@@38 T@Field_48255_48260) ) (!  (=> (select (|PolymorphicMapType_42292_48239_140407#PolymorphicMapType_42292| (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@8) null (WandMaskField_24592 pm_f_12@@6))) o2_12@@38 f_18@@38) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@8) o2_12@@38 f_18@@38) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@38 f_18@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@6) o2_12@@38 f_18@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_24592_141215 pm_f_12@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_41743) (ExhaleHeap@@7 T@PolymorphicMapType_41743) (Mask@@8 T@PolymorphicMapType_41764) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@9) o_13 $allocated) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@7) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@7) o_13 $allocated))
)))
(assert (forall ((p T@Field_48239_48240) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_48239_48239 p v_1 p w))
 :qid |stdinbpl.309:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_48239_48239 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_24592_24604) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_41803_41803 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.309:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_41803_41803 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_24592_4195 f_7)))
(assert  (not (IsWandField_24592_4195 f_7)))
(assert  (not (IsPredicateField_24594_24595 g)))
(assert  (not (IsWandField_24594_24595 g)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_41743) (ExhaleHeap@@8 T@PolymorphicMapType_41743) (Mask@@9 T@PolymorphicMapType_41764) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_41764) (o_2@@9 T@Ref) (f_4@@9 T@Field_48255_48260) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_24603_148475 f_4@@9))) (not (IsWandField_24603_148491 f_4@@9))) (<= (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_41764) (o_2@@10 T@Ref) (f_4@@10 T@Field_24603_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_24603_53 f_4@@10))) (not (IsWandField_24603_53 f_4@@10))) (<= (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_41764) (o_2@@11 T@Ref) (f_4@@11 T@Field_48239_48240) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_24603_24604 f_4@@11))) (not (IsWandField_24603_141572 f_4@@11))) (<= (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_41764) (o_2@@12 T@Ref) (f_4@@12 T@Field_24603_24595) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_24603_24595 f_4@@12))) (not (IsWandField_24603_24595 f_4@@12))) (<= (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_41764) (o_2@@13 T@Ref) (f_4@@13 T@Field_24603_4195) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_24603_4195 f_4@@13))) (not (IsWandField_24603_4195 f_4@@13))) (<= (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_41764) (o_2@@14 T@Ref) (f_4@@14 T@Field_24592_48260) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_24592_147644 f_4@@14))) (not (IsWandField_24592_147660 f_4@@14))) (<= (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_41764) (o_2@@15 T@Ref) (f_4@@15 T@Field_41803_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_24592_53 f_4@@15))) (not (IsWandField_24592_53 f_4@@15))) (<= (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_41764) (o_2@@16 T@Ref) (f_4@@16 T@Field_24592_24604) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_24592_137875 f_4@@16))) (not (IsWandField_24592_141215 f_4@@16))) (<= (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_41764) (o_2@@17 T@Ref) (f_4@@17 T@Field_41816_41817) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_24594_24595 f_4@@17))) (not (IsWandField_24594_24595 f_4@@17))) (<= (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_41764) (o_2@@18 T@Ref) (f_4@@18 T@Field_48139_4195) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_24592_4195 f_4@@18))) (not (IsWandField_24592_4195 f_4@@18))) (<= (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_41764) (o_2@@19 T@Ref) (f_4@@19 T@Field_48255_48260) ) (! (= (HasDirectPerm_24603_137587 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24603_137587 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_41764) (o_2@@20 T@Ref) (f_4@@20 T@Field_24603_53) ) (! (= (HasDirectPerm_24603_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24603_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_41764) (o_2@@21 T@Ref) (f_4@@21 T@Field_48239_48240) ) (! (= (HasDirectPerm_24603_24604 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24603_24604 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_41764) (o_2@@22 T@Ref) (f_4@@22 T@Field_24603_24595) ) (! (= (HasDirectPerm_24603_24595 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24603_24595 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_41764) (o_2@@23 T@Ref) (f_4@@23 T@Field_24603_4195) ) (! (= (HasDirectPerm_24603_4195 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24603_4195 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_41764) (o_2@@24 T@Ref) (f_4@@24 T@Field_24592_48260) ) (! (= (HasDirectPerm_24592_136446 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24592_136446 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_41764) (o_2@@25 T@Ref) (f_4@@25 T@Field_41803_53) ) (! (= (HasDirectPerm_24592_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24592_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_41764) (o_2@@26 T@Ref) (f_4@@26 T@Field_24592_24604) ) (! (= (HasDirectPerm_24592_24604 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24592_24604 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_41764) (o_2@@27 T@Ref) (f_4@@27 T@Field_41816_41817) ) (! (= (HasDirectPerm_24594_24595 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24594_24595 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_41764) (o_2@@28 T@Ref) (f_4@@28 T@Field_48139_4195) ) (! (= (HasDirectPerm_24592_4195 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24592_4195 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.297:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_41743) (ExhaleHeap@@9 T@PolymorphicMapType_41743) (Mask@@30 T@PolymorphicMapType_41764) (o_13@@0 T@Ref) (f_18@@39 T@Field_48255_48260) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_24603_137587 Mask@@30 o_13@@0 f_18@@39) (= (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@11) o_13@@0 f_18@@39) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@9) o_13@@0 f_18@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| ExhaleHeap@@9) o_13@@0 f_18@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_41743) (ExhaleHeap@@10 T@PolymorphicMapType_41743) (Mask@@31 T@PolymorphicMapType_41764) (o_13@@1 T@Ref) (f_18@@40 T@Field_24603_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_24603_53 Mask@@31 o_13@@1 f_18@@40) (= (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@12) o_13@@1 f_18@@40) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@10) o_13@@1 f_18@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| ExhaleHeap@@10) o_13@@1 f_18@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_41743) (ExhaleHeap@@11 T@PolymorphicMapType_41743) (Mask@@32 T@PolymorphicMapType_41764) (o_13@@2 T@Ref) (f_18@@41 T@Field_48239_48240) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_24603_24604 Mask@@32 o_13@@2 f_18@@41) (= (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@13) o_13@@2 f_18@@41) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@11) o_13@@2 f_18@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| ExhaleHeap@@11) o_13@@2 f_18@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_41743) (ExhaleHeap@@12 T@PolymorphicMapType_41743) (Mask@@33 T@PolymorphicMapType_41764) (o_13@@3 T@Ref) (f_18@@42 T@Field_24603_24595) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_24603_24595 Mask@@33 o_13@@3 f_18@@42) (= (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@14) o_13@@3 f_18@@42) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@12) o_13@@3 f_18@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| ExhaleHeap@@12) o_13@@3 f_18@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_41743) (ExhaleHeap@@13 T@PolymorphicMapType_41743) (Mask@@34 T@PolymorphicMapType_41764) (o_13@@4 T@Ref) (f_18@@43 T@Field_24603_4195) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_24603_4195 Mask@@34 o_13@@4 f_18@@43) (= (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@15) o_13@@4 f_18@@43) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@13) o_13@@4 f_18@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| ExhaleHeap@@13) o_13@@4 f_18@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_41743) (ExhaleHeap@@14 T@PolymorphicMapType_41743) (Mask@@35 T@PolymorphicMapType_41764) (o_13@@5 T@Ref) (f_18@@44 T@Field_24592_48260) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_24592_136446 Mask@@35 o_13@@5 f_18@@44) (= (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@16) o_13@@5 f_18@@44) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@14) o_13@@5 f_18@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| ExhaleHeap@@14) o_13@@5 f_18@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_41743) (ExhaleHeap@@15 T@PolymorphicMapType_41743) (Mask@@36 T@PolymorphicMapType_41764) (o_13@@6 T@Ref) (f_18@@45 T@Field_41803_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_24592_53 Mask@@36 o_13@@6 f_18@@45) (= (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@17) o_13@@6 f_18@@45) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@15) o_13@@6 f_18@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| ExhaleHeap@@15) o_13@@6 f_18@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_41743) (ExhaleHeap@@16 T@PolymorphicMapType_41743) (Mask@@37 T@PolymorphicMapType_41764) (o_13@@7 T@Ref) (f_18@@46 T@Field_24592_24604) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_24592_24604 Mask@@37 o_13@@7 f_18@@46) (= (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@18) o_13@@7 f_18@@46) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@16) o_13@@7 f_18@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| ExhaleHeap@@16) o_13@@7 f_18@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_41743) (ExhaleHeap@@17 T@PolymorphicMapType_41743) (Mask@@38 T@PolymorphicMapType_41764) (o_13@@8 T@Ref) (f_18@@47 T@Field_41816_41817) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_24594_24595 Mask@@38 o_13@@8 f_18@@47) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@19) o_13@@8 f_18@@47) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@17) o_13@@8 f_18@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| ExhaleHeap@@17) o_13@@8 f_18@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_41743) (ExhaleHeap@@18 T@PolymorphicMapType_41743) (Mask@@39 T@PolymorphicMapType_41764) (o_13@@9 T@Ref) (f_18@@48 T@Field_48139_4195) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_24592_4195 Mask@@39 o_13@@9 f_18@@48) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@20) o_13@@9 f_18@@48) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@18) o_13@@9 f_18@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| ExhaleHeap@@18) o_13@@9 f_18@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_48255_48260) ) (! (= (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_24603_53) ) (! (= (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_48239_48240) ) (! (= (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_24603_24595) ) (! (= (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_24603_4195) ) (! (= (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_24592_48260) ) (! (= (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_41803_53) ) (! (= (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_24592_24604) ) (! (= (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_41816_41817) ) (! (= (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_48139_4195) ) (! (= (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_41764) (SummandMask1 T@PolymorphicMapType_41764) (SummandMask2 T@PolymorphicMapType_41764) (o_2@@39 T@Ref) (f_4@@39 T@Field_48255_48260) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_41764_24603_146197#PolymorphicMapType_41764| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_41764) (SummandMask1@@0 T@PolymorphicMapType_41764) (SummandMask2@@0 T@PolymorphicMapType_41764) (o_2@@40 T@Ref) (f_4@@40 T@Field_24603_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_41764_24603_53#PolymorphicMapType_41764| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_41764) (SummandMask1@@1 T@PolymorphicMapType_41764) (SummandMask2@@1 T@PolymorphicMapType_41764) (o_2@@41 T@Ref) (f_4@@41 T@Field_48239_48240) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_41764_24603_24604#PolymorphicMapType_41764| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_41764) (SummandMask1@@2 T@PolymorphicMapType_41764) (SummandMask2@@2 T@PolymorphicMapType_41764) (o_2@@42 T@Ref) (f_4@@42 T@Field_24603_24595) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_41764_24603_24595#PolymorphicMapType_41764| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_41764) (SummandMask1@@3 T@PolymorphicMapType_41764) (SummandMask2@@3 T@PolymorphicMapType_41764) (o_2@@43 T@Ref) (f_4@@43 T@Field_24603_4195) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_41764_24603_4195#PolymorphicMapType_41764| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_41764) (SummandMask1@@4 T@PolymorphicMapType_41764) (SummandMask2@@4 T@PolymorphicMapType_41764) (o_2@@44 T@Ref) (f_4@@44 T@Field_24592_48260) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_41764_24592_145786#PolymorphicMapType_41764| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_41764) (SummandMask1@@5 T@PolymorphicMapType_41764) (SummandMask2@@5 T@PolymorphicMapType_41764) (o_2@@45 T@Ref) (f_4@@45 T@Field_41803_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_41764_24592_53#PolymorphicMapType_41764| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_41764) (SummandMask1@@6 T@PolymorphicMapType_41764) (SummandMask2@@6 T@PolymorphicMapType_41764) (o_2@@46 T@Ref) (f_4@@46 T@Field_24592_24604) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_41764_24592_24604#PolymorphicMapType_41764| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_41764) (SummandMask1@@7 T@PolymorphicMapType_41764) (SummandMask2@@7 T@PolymorphicMapType_41764) (o_2@@47 T@Ref) (f_4@@47 T@Field_41816_41817) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_41764_24594_24595#PolymorphicMapType_41764| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_41764) (SummandMask1@@8 T@PolymorphicMapType_41764) (SummandMask2@@8 T@PolymorphicMapType_41764) (o_2@@48 T@Ref) (f_4@@48 T@Field_48139_4195) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_41764_24592_4195#PolymorphicMapType_41764| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_24817| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.360:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_24817| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_24817| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_24817| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_24817| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.375:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_24817| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_24817| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_24918| a@@6 x) y))
 :qid |stdinbpl.340:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_24918| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_24817| a@@7 b@@5) y@@0))
 :qid |stdinbpl.350:18|
 :skolemid |35|
 :pattern ( (|Set#Union_24817| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_24817| a@@8 b@@6) y@@1))
 :qid |stdinbpl.352:18|
 :skolemid |36|
 :pattern ( (|Set#Union_24817| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_24918| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.336:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_24918| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_24817| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.377:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_24817| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_24817| (|Set#Difference_24817| a@@11 b@@8)) (|Set#Card_24817| (|Set#Difference_24817| b@@8 a@@11))) (|Set#Card_24817| (|Set#Intersection_24817| a@@11 b@@8))) (|Set#Card_24817| (|Set#Union_24817| a@@11 b@@8))) (= (|Set#Card_24817| (|Set#Difference_24817| a@@11 b@@8)) (- (|Set#Card_24817| a@@11) (|Set#Card_24817| (|Set#Intersection_24817| a@@11 b@@8)))))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Set#Card_24817| (|Set#Difference_24817| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_24817| s))
 :qid |stdinbpl.322:18|
 :skolemid |22|
 :pattern ( (|Set#Card_24817| s))
)))
(assert (forall ((xs@@4 (Array T@Ref Bool)) (ys@@4 (Array T@Ref Bool)) ) (! (= (getPredWandId_24603_24604 (P xs@@4 ys@@4)) 0)
 :qid |stdinbpl.531:15|
 :skolemid |84|
 :pattern ( (P xs@@4 ys@@4))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_24918| a@@12 x@@1) x@@1)
 :qid |stdinbpl.338:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_24918| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_24817| (|Set#UnionOne_24918| a@@13 x@@2)) (|Set#Card_24817| a@@13)))
 :qid |stdinbpl.342:18|
 :skolemid |32|
 :pattern ( (|Set#Card_24817| (|Set#UnionOne_24918| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_24817| (|Set#Singleton_24817| r@@0)) 1)
 :qid |stdinbpl.333:18|
 :skolemid |28|
 :pattern ( (|Set#Card_24817| (|Set#Singleton_24817| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_24817| r@@1) r@@1)
 :qid |stdinbpl.331:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_24817| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_24817| a@@14 (|Set#Union_24817| a@@14 b@@9)) (|Set#Union_24817| a@@14 b@@9))
 :qid |stdinbpl.365:18|
 :skolemid |39|
 :pattern ( (|Set#Union_24817| a@@14 (|Set#Union_24817| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_24817| a@@15 (|Set#Intersection_24817| a@@15 b@@10)) (|Set#Intersection_24817| a@@15 b@@10))
 :qid |stdinbpl.369:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_24817| a@@15 (|Set#Intersection_24817| a@@15 b@@10)))
)))
(assert (forall ((xs@@5 (Array T@Ref Bool)) (ys@@5 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_24603 (P xs@@5 ys@@5)) (|P#sm| xs@@5 ys@@5))
 :qid |stdinbpl.523:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_24603 (P xs@@5 ys@@5)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_24817| o@@3))
 :qid |stdinbpl.325:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_24817| o@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_41743) (o_34 T@Ref) (f_36 T@Field_48255_48260) (v T@PolymorphicMapType_42292) ) (! (succHeap Heap@@21 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@21) (store (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@21) o_34 f_36 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@21) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@21) (store (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@21) o_34 f_36 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_41743) (o_34@@0 T@Ref) (f_36@@0 T@Field_48239_48240) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@22) (store (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@22) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@22) (store (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@22) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@22) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_41743) (o_34@@1 T@Ref) (f_36@@1 T@Field_24603_4195) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@23) (store (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@23) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@23) (store (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@23) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@23) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_41743) (o_34@@2 T@Ref) (f_36@@2 T@Field_24603_24595) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@24) (store (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@24) o_34@@2 f_36@@2 v@@2) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@24) (store (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@24) o_34@@2 f_36@@2 v@@2) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@24) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_41743) (o_34@@3 T@Ref) (f_36@@3 T@Field_24603_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@25) (store (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@25) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@25) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@25) (store (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@25) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_41743) (o_34@@4 T@Ref) (f_36@@4 T@Field_24592_48260) (v@@4 T@PolymorphicMapType_42292) ) (! (succHeap Heap@@26 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@26) (store (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@26) o_34@@4 f_36@@4 v@@4) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@26) (store (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@26) o_34@@4 f_36@@4 v@@4) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@26) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_41743) (o_34@@5 T@Ref) (f_36@@5 T@Field_24592_24604) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@27) (store (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@27) o_34@@5 f_36@@5 v@@5) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@27) (store (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@27) o_34@@5 f_36@@5 v@@5) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@27) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_41743) (o_34@@6 T@Ref) (f_36@@6 T@Field_48139_4195) (v@@6 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@28) (store (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@28) o_34@@6 f_36@@6 v@@6) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@28) (store (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@28) o_34@@6 f_36@@6 v@@6) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@28) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_41743) (o_34@@7 T@Ref) (f_36@@7 T@Field_41816_41817) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@29) (store (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@29) o_34@@7 f_36@@7 v@@7) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@29) (store (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@29) o_34@@7 f_36@@7 v@@7) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@29) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_41743) (o_34@@8 T@Ref) (f_36@@8 T@Field_41803_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_41743 (store (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@30) o_34@@8 f_36@@8 v@@8) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_41743 (store (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@30) o_34@@8 f_36@@8 v@@8) (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_24604#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_24604#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24592_136488#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_4195#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_24595#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_53#PolymorphicMapType_41743| Heap@@30) (|PolymorphicMapType_41743_24603_137629#PolymorphicMapType_41743| Heap@@30)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.409:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.410:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_41743) (Heap1Heap@@0 T@PolymorphicMapType_41743) (xs@@6 (Array T@Ref Bool)) (ys@@6 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (and (select xs@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))) (not (select ys@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))))) (< NoPerm FullPerm))  (and (and (select xs@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))) (not (select ys@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))))) (< NoPerm FullPerm))) (=> (and (and (select xs@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))) (not (select ys@@6 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6))))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap@@0) (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6)) f_7) (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap1Heap@@0) (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6)) f_7)))) (= (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6)))
 :qid |stdinbpl.557:15|
 :skolemid |88|
 :pattern ( (|P#condqp1| Heap2Heap@@0 xs@@6 ys@@6) (|P#condqp1| Heap1Heap@@0 xs@@6 ys@@6) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_24817| s@@0) 0) (= s@@0 |Set#Empty_24817|)) (=> (not (= (|Set#Card_24817| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.328:33|
 :skolemid |24|
))))
 :qid |stdinbpl.326:18|
 :skolemid |25|
 :pattern ( (|Set#Card_24817| s@@0))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_41743) (Heap1Heap@@1 T@PolymorphicMapType_41743) (xs@@7 (Array T@Ref Bool)) (ys@@7 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (and (select xs@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7))) (and (not (select ys@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)))) (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap@@1) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)) f_7) 0)))) (< NoPerm FullPerm))  (and (and (select xs@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7))) (and (not (select ys@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)))) (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap1Heap@@1) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)) f_7) 0)))) (< NoPerm FullPerm))) (=> (and (and (select xs@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7))) (and (not (select ys@@7 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)))) (not (= (select (|PolymorphicMapType_41743_24592_4195#PolymorphicMapType_41743| Heap2Heap@@1) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)) f_7) 0)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap2Heap@@1) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)) g) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap1Heap@@1) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)) g)))) (= (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7)))
 :qid |stdinbpl.568:15|
 :skolemid |89|
 :pattern ( (|P#condqp2| Heap2Heap@@1 xs@@7 ys@@7) (|P#condqp2| Heap1Heap@@1 xs@@7 ys@@7) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_24817| (|Set#UnionOne_24918| a@@18 x@@4)) (+ (|Set#Card_24817| a@@18) 1)))
 :qid |stdinbpl.344:18|
 :skolemid |33|
 :pattern ( (|Set#Card_24817| (|Set#UnionOne_24918| a@@18 x@@4)))
)))
(assert (forall ((o_34@@9 T@Ref) (f_40 T@Field_41816_41817) (Heap@@31 T@PolymorphicMapType_41743) ) (!  (=> (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@31) o_34@@9 $allocated) (select (|PolymorphicMapType_41743_24135_53#PolymorphicMapType_41743| Heap@@31) (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@31) o_34@@9 f_40) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_41743_24138_24139#PolymorphicMapType_41743| Heap@@31) o_34@@9 f_40))
)))
(assert (forall ((p@@2 T@Field_48239_48240) (v_1@@1 T@FrameType) (q T@Field_48239_48240) (w@@1 T@FrameType) (r@@2 T@Field_48239_48240) (u T@FrameType) ) (!  (=> (and (InsidePredicate_48239_48239 p@@2 v_1@@1 q w@@1) (InsidePredicate_48239_48239 q w@@1 r@@2 u)) (InsidePredicate_48239_48239 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_48239_48239 p@@2 v_1@@1 q w@@1) (InsidePredicate_48239_48239 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_48239_48240) (v_1@@2 T@FrameType) (q@@0 T@Field_48239_48240) (w@@2 T@FrameType) (r@@3 T@Field_24592_24604) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_48239_48239 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_48239_41803 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_48239_41803 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_48239_48239 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_48239_41803 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_48239_48240) (v_1@@3 T@FrameType) (q@@1 T@Field_24592_24604) (w@@3 T@FrameType) (r@@4 T@Field_48239_48240) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_48239_41803 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_41803_48239 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_48239_48239 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_48239_41803 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_41803_48239 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_48239_48240) (v_1@@4 T@FrameType) (q@@2 T@Field_24592_24604) (w@@4 T@FrameType) (r@@5 T@Field_24592_24604) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_48239_41803 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_41803_41803 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_48239_41803 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_48239_41803 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_41803_41803 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_24592_24604) (v_1@@5 T@FrameType) (q@@3 T@Field_48239_48240) (w@@5 T@FrameType) (r@@6 T@Field_48239_48240) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_41803_48239 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_48239_48239 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_41803_48239 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41803_48239 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_48239_48239 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_24592_24604) (v_1@@6 T@FrameType) (q@@4 T@Field_48239_48240) (w@@6 T@FrameType) (r@@7 T@Field_24592_24604) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_41803_48239 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_48239_41803 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_41803_41803 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41803_48239 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_48239_41803 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_24592_24604) (v_1@@7 T@FrameType) (q@@5 T@Field_24592_24604) (w@@7 T@FrameType) (r@@8 T@Field_48239_48240) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_41803_41803 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_41803_48239 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_41803_48239 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41803_41803 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_41803_48239 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_24592_24604) (v_1@@8 T@FrameType) (q@@6 T@Field_24592_24604) (w@@8 T@FrameType) (r@@9 T@Field_24592_24604) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_41803_41803 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_41803_41803 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_41803_41803 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.304:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41803_41803 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_41803_41803 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.415:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_24817| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.348:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_24817| a@@20 b@@13) o@@4))
)))
; Invalid

