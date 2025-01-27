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
(declare-sort T@Field_10141_53 0)
(declare-sort T@Field_10154_10155 0)
(declare-sort T@Field_16425_16427 0)
(declare-sort T@Field_17445_17446 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_16376_3301 0)
(declare-sort T@Field_21537_21542 0)
(declare-sort T@Field_6148_17446 0)
(declare-sort T@Field_6148_21542 0)
(declare-sort T@Field_17445_21459 0)
(declare-sort T@Field_17445_6144 0)
(declare-sort T@Field_17445_53 0)
(declare-sort T@Field_17445_3301 0)
(declare-datatypes ((T@PolymorphicMapType_10102 0)) (((PolymorphicMapType_10102 (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| (Array T@Ref T@Field_17445_17446 Real)) (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| (Array T@Ref T@Field_16425_16427 Real)) (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| (Array T@Ref T@Field_16376_3301 Real)) (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| (Array T@Ref T@Field_10154_10155 Real)) (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| (Array T@Ref T@Field_17445_21459 Real)) (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| (Array T@Ref T@Field_17445_3301 Real)) (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| (Array T@Ref T@Field_17445_6144 Real)) (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| (Array T@Ref T@Field_17445_53 Real)) (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| (Array T@Ref T@Field_21537_21542 Real)) (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| (Array T@Ref T@Field_6148_17446 Real)) (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| (Array T@Ref T@Field_10141_53 Real)) (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| (Array T@Ref T@Field_6148_21542 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10630 0)) (((PolymorphicMapType_10630 (|PolymorphicMapType_10630_6148_21710#PolymorphicMapType_10630| (Array T@Ref T@Field_16425_16427 Bool)) (|PolymorphicMapType_10630_6146_3301#PolymorphicMapType_10630| (Array T@Ref T@Field_16376_3301 Bool)) (|PolymorphicMapType_10630_6143_6144#PolymorphicMapType_10630| (Array T@Ref T@Field_10154_10155 Bool)) (|PolymorphicMapType_10630_6148_53#PolymorphicMapType_10630| (Array T@Ref T@Field_10141_53 Bool)) (|PolymorphicMapType_10630_6148_17446#PolymorphicMapType_10630| (Array T@Ref T@Field_6148_17446 Bool)) (|PolymorphicMapType_10630_6148_32165#PolymorphicMapType_10630| (Array T@Ref T@Field_6148_21542 Bool)) (|PolymorphicMapType_10630_17445_32409#PolymorphicMapType_10630| (Array T@Ref T@Field_17445_21459 Bool)) (|PolymorphicMapType_10630_17445_3301#PolymorphicMapType_10630| (Array T@Ref T@Field_17445_3301 Bool)) (|PolymorphicMapType_10630_17445_6144#PolymorphicMapType_10630| (Array T@Ref T@Field_17445_6144 Bool)) (|PolymorphicMapType_10630_17445_53#PolymorphicMapType_10630| (Array T@Ref T@Field_17445_53 Bool)) (|PolymorphicMapType_10630_17445_17446#PolymorphicMapType_10630| (Array T@Ref T@Field_17445_17446 Bool)) (|PolymorphicMapType_10630_17445_33431#PolymorphicMapType_10630| (Array T@Ref T@Field_21537_21542 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10081 0)) (((PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| (Array T@Ref T@Field_10141_53 Bool)) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| (Array T@Ref T@Field_10154_10155 T@Ref)) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| (Array T@Ref T@Field_16425_16427 (Array T@Ref Bool))) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| (Array T@Ref T@Field_17445_17446 T@FrameType)) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| (Array T@Ref T@Field_16376_3301 Int)) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| (Array T@Ref T@Field_21537_21542 T@PolymorphicMapType_10630)) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| (Array T@Ref T@Field_6148_17446 T@FrameType)) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| (Array T@Ref T@Field_6148_21542 T@PolymorphicMapType_10630)) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| (Array T@Ref T@Field_17445_21459 (Array T@Ref Bool))) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| (Array T@Ref T@Field_17445_6144 T@Ref)) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| (Array T@Ref T@Field_17445_53 Bool)) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| (Array T@Ref T@Field_17445_3301 Int)) ) ) ))
(declare-fun $allocated () T@Field_10141_53)
(declare-fun next () T@Field_10154_10155)
(declare-fun val () T@Field_16376_3301)
(declare-fun nodes_1 () T@Field_16425_16427)
(declare-fun succHeap (T@PolymorphicMapType_10081 T@PolymorphicMapType_10081) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10081 T@PolymorphicMapType_10081) Bool)
(declare-fun state (T@PolymorphicMapType_10081 T@PolymorphicMapType_10102) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10102) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10630)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun List (T@Ref) T@Field_17445_17446)
(declare-fun IsPredicateField_6233_6234 (T@Field_17445_17446) Bool)
(declare-fun |length'| (T@PolymorphicMapType_10081 T@Ref) Int)
(declare-fun dummyFunction_3701 (Int) Bool)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_6233| (T@PolymorphicMapType_10081 T@Field_17445_17446) Bool)
(declare-fun |List#everUsed_6233| (T@Field_17445_17446) Bool)
(declare-fun |Set#Union_6158| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_6158| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun length_1 (T@PolymorphicMapType_10081 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Set#Card_6158| ((Array T@Ref Bool)) Int)
(declare-fun |Set#Singleton_6158| (T@Ref) (Array T@Ref Bool))
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10081 T@PolymorphicMapType_10081 T@PolymorphicMapType_10102) Bool)
(declare-fun HasDirectPerm_17445_17446 (T@PolymorphicMapType_10102 T@Ref T@Field_17445_17446) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6233 (T@Field_17445_17446) T@Field_21537_21542)
(declare-fun IsPredicateField_6148_30509 (T@Field_6148_17446) Bool)
(declare-fun HasDirectPerm_6148_17446 (T@PolymorphicMapType_10102 T@Ref T@Field_6148_17446) Bool)
(declare-fun PredicateMaskField_6148 (T@Field_6148_17446) T@Field_6148_21542)
(declare-fun IsWandField_17445_34596 (T@Field_17445_17446) Bool)
(declare-fun WandMaskField_17445 (T@Field_17445_17446) T@Field_21537_21542)
(declare-fun IsWandField_6148_34239 (T@Field_6148_17446) Bool)
(declare-fun WandMaskField_6148 (T@Field_6148_17446) T@Field_6148_21542)
(declare-fun |List#condqp1| (T@PolymorphicMapType_10081 T@Ref) Int)
(declare-fun |sk_List#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |List#condqp2| (T@PolymorphicMapType_10081 T@Ref) Int)
(declare-fun |sk_List#condqp2| (Int Int) T@Ref)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |List#sm| (T@Ref) T@Field_21537_21542)
(declare-fun |set'| (T@PolymorphicMapType_10081) (Array T@Ref Bool))
(declare-fun |set#trigger| (T@FrameType) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_10081)
(declare-fun ZeroMask () T@PolymorphicMapType_10102)
(declare-fun InsidePredicate_17445_17445 (T@Field_17445_17446 T@FrameType T@Field_17445_17446 T@FrameType) Bool)
(declare-fun InsidePredicate_10141_10141 (T@Field_6148_17446 T@FrameType T@Field_6148_17446 T@FrameType) Bool)
(declare-fun IsPredicateField_6143_6144 (T@Field_10154_10155) Bool)
(declare-fun IsWandField_6143_6144 (T@Field_10154_10155) Bool)
(declare-fun IsPredicateField_6146_3301 (T@Field_16376_3301) Bool)
(declare-fun IsWandField_6146_3301 (T@Field_16376_3301) Bool)
(declare-fun IsPredicateField_6148_16451 (T@Field_16425_16427) Bool)
(declare-fun IsWandField_6148_16478 (T@Field_16425_16427) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6148_42758 (T@Field_6148_21542) Bool)
(declare-fun IsWandField_6148_42774 (T@Field_6148_21542) Bool)
(declare-fun IsPredicateField_6148_53 (T@Field_10141_53) Bool)
(declare-fun IsWandField_6148_53 (T@Field_10141_53) Bool)
(declare-fun IsPredicateField_6233_41796 (T@Field_21537_21542) Bool)
(declare-fun IsWandField_6233_41812 (T@Field_21537_21542) Bool)
(declare-fun IsPredicateField_6233_53 (T@Field_17445_53) Bool)
(declare-fun IsWandField_6233_53 (T@Field_17445_53) Bool)
(declare-fun IsPredicateField_6233_6144 (T@Field_17445_6144) Bool)
(declare-fun IsWandField_6233_6144 (T@Field_17445_6144) Bool)
(declare-fun IsPredicateField_6233_3301 (T@Field_17445_3301) Bool)
(declare-fun IsWandField_6233_3301 (T@Field_17445_3301) Bool)
(declare-fun IsPredicateField_6233_41119 (T@Field_17445_21459) Bool)
(declare-fun IsWandField_6233_41135 (T@Field_17445_21459) Bool)
(declare-fun HasDirectPerm_17445_30264 (T@PolymorphicMapType_10102 T@Ref T@Field_21537_21542) Bool)
(declare-fun HasDirectPerm_17445_3301 (T@PolymorphicMapType_10102 T@Ref T@Field_17445_3301) Bool)
(declare-fun HasDirectPerm_17445_53 (T@PolymorphicMapType_10102 T@Ref T@Field_17445_53) Bool)
(declare-fun HasDirectPerm_17445_6144 (T@PolymorphicMapType_10102 T@Ref T@Field_17445_6144) Bool)
(declare-fun HasDirectPerm_17445_29137 (T@PolymorphicMapType_10102 T@Ref T@Field_17445_21459) Bool)
(declare-fun HasDirectPerm_6148_28857 (T@PolymorphicMapType_10102 T@Ref T@Field_6148_21542) Bool)
(declare-fun HasDirectPerm_6148_3301 (T@PolymorphicMapType_10102 T@Ref T@Field_16376_3301) Bool)
(declare-fun HasDirectPerm_6148_53 (T@PolymorphicMapType_10102 T@Ref T@Field_10141_53) Bool)
(declare-fun HasDirectPerm_6143_6144 (T@PolymorphicMapType_10102 T@Ref T@Field_10154_10155) Bool)
(declare-fun HasDirectPerm_6148_21459 (T@PolymorphicMapType_10102 T@Ref T@Field_16425_16427) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun set_2 (T@PolymorphicMapType_10081) (Array T@Ref Bool))
(declare-fun dummyFunction_16563 ((Array T@Ref Bool)) Bool)
(declare-fun |set#triggerStateless| () (Array T@Ref Bool))
(declare-fun sumMask (T@PolymorphicMapType_10102 T@PolymorphicMapType_10102 T@PolymorphicMapType_10102) Bool)
(declare-fun |Set#Difference_6158| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_6158| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_6233_6234 (T@Field_17445_17446) Int)
(declare-fun |Set#Empty_6158| () (Array T@Ref Bool))
(declare-fun |set#frame| (T@FrameType) (Array T@Ref Bool))
(declare-fun InsidePredicate_17445_10141 (T@Field_17445_17446 T@FrameType T@Field_6148_17446 T@FrameType) Bool)
(declare-fun InsidePredicate_10141_17445 (T@Field_6148_17446 T@FrameType T@Field_17445_17446 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_10081) (Heap1 T@PolymorphicMapType_10081) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10081) (Mask T@PolymorphicMapType_10102) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10081) (Heap1@@0 T@PolymorphicMapType_10081) (Heap2 T@PolymorphicMapType_10081) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_21537_21542) ) (!  (not (select (|PolymorphicMapType_10630_17445_33431#PolymorphicMapType_10630| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_17445_33431#PolymorphicMapType_10630| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17445_17446) ) (!  (not (select (|PolymorphicMapType_10630_17445_17446#PolymorphicMapType_10630| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_17445_17446#PolymorphicMapType_10630| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17445_53) ) (!  (not (select (|PolymorphicMapType_10630_17445_53#PolymorphicMapType_10630| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_17445_53#PolymorphicMapType_10630| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_17445_6144) ) (!  (not (select (|PolymorphicMapType_10630_17445_6144#PolymorphicMapType_10630| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_17445_6144#PolymorphicMapType_10630| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_17445_3301) ) (!  (not (select (|PolymorphicMapType_10630_17445_3301#PolymorphicMapType_10630| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_17445_3301#PolymorphicMapType_10630| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_17445_21459) ) (!  (not (select (|PolymorphicMapType_10630_17445_32409#PolymorphicMapType_10630| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_17445_32409#PolymorphicMapType_10630| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6148_21542) ) (!  (not (select (|PolymorphicMapType_10630_6148_32165#PolymorphicMapType_10630| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_6148_32165#PolymorphicMapType_10630| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6148_17446) ) (!  (not (select (|PolymorphicMapType_10630_6148_17446#PolymorphicMapType_10630| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_6148_17446#PolymorphicMapType_10630| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10141_53) ) (!  (not (select (|PolymorphicMapType_10630_6148_53#PolymorphicMapType_10630| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_6148_53#PolymorphicMapType_10630| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_10154_10155) ) (!  (not (select (|PolymorphicMapType_10630_6143_6144#PolymorphicMapType_10630| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_6143_6144#PolymorphicMapType_10630| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_16376_3301) ) (!  (not (select (|PolymorphicMapType_10630_6146_3301#PolymorphicMapType_10630| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_6146_3301#PolymorphicMapType_10630| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_16425_16427) ) (!  (not (select (|PolymorphicMapType_10630_6148_21710#PolymorphicMapType_10630| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10630_6148_21710#PolymorphicMapType_10630| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.301:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_6233_6234 (List this))
 :qid |stdinbpl.653:15|
 :skolemid |108|
 :pattern ( (List this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10081) (this@@0 T@Ref) ) (! (dummyFunction_3701 (|length#triggerStateless| this@@0))
 :qid |stdinbpl.471:15|
 :skolemid |87|
 :pattern ( (|length'| Heap@@0 this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10081) (this@@1 T@Ref) ) (! (|List#everUsed_6233| (List this@@1))
 :qid |stdinbpl.672:15|
 :skolemid |112|
 :pattern ( (|List#trigger_6233| Heap@@1 (List this@@1)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_6158| (|Set#Union_6158| a@@0 b@@0) b@@0) (|Set#Union_6158| a@@0 b@@0))
 :qid |stdinbpl.253:18|
 :skolemid |38|
 :pattern ( (|Set#Union_6158| (|Set#Union_6158| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6158| (|Set#Intersection_6158| a@@1 b@@1) b@@1) (|Set#Intersection_6158| a@@1 b@@1))
 :qid |stdinbpl.257:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_6158| (|Set#Intersection_6158| a@@1 b@@1) b@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10081) (Mask@@0 T@PolymorphicMapType_10102) (this@@2 T@Ref) ) (!  (=> (and (state Heap@@2 Mask@@0) (< AssumeFunctionsAbove 1)) (= (length_1 Heap@@2 this@@2) (|Set#Card_6158| (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@2) this@@2 nodes_1))))
 :qid |stdinbpl.477:15|
 :skolemid |88|
 :pattern ( (state Heap@@2 Mask@@0) (length_1 Heap@@2 this@@2))
 :pattern ( (state Heap@@2 Mask@@0) (|length#triggerStateless| this@@2) (|List#trigger_6233| Heap@@2 (List this@@2)))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_6158| r) o) (= r o))
 :qid |stdinbpl.222:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_6158| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_6158| (|Set#Union_6158| a@@2 b@@2)) (|Set#Card_6158| (|Set#Intersection_6158| a@@2 b@@2))) (+ (|Set#Card_6158| a@@2) (|Set#Card_6158| b@@2)))
 :qid |stdinbpl.261:18|
 :skolemid |42|
 :pattern ( (|Set#Card_6158| (|Set#Union_6158| a@@2 b@@2)))
 :pattern ( (|Set#Card_6158| (|Set#Intersection_6158| a@@2 b@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10081) (this@@3 T@Ref) ) (!  (and (= (length_1 Heap@@3 this@@3) (|length'| Heap@@3 this@@3)) (dummyFunction_3701 (|length#triggerStateless| this@@3)))
 :qid |stdinbpl.467:15|
 :skolemid |86|
 :pattern ( (length_1 Heap@@3 this@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10081) (ExhaleHeap T@PolymorphicMapType_10081) (Mask@@1 T@PolymorphicMapType_10102) (pm_f_18 T@Field_17445_17446) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_17445_17446 Mask@@1 null pm_f_18) (IsPredicateField_6233_6234 pm_f_18)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18 T@Ref) (f_21 T@Field_16425_16427) ) (!  (=> (select (|PolymorphicMapType_10630_6148_21710#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18 f_21) (= (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@4) o2_18 f_21) (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| ExhaleHeap) o2_18 f_21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| ExhaleHeap) o2_18 f_21))
)) (forall ((o2_18@@0 T@Ref) (f_21@@0 T@Field_16376_3301) ) (!  (=> (select (|PolymorphicMapType_10630_6146_3301#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18@@0 f_21@@0) (= (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@4) o2_18@@0 f_21@@0) (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| ExhaleHeap) o2_18@@0 f_21@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| ExhaleHeap) o2_18@@0 f_21@@0))
))) (forall ((o2_18@@1 T@Ref) (f_21@@1 T@Field_10154_10155) ) (!  (=> (select (|PolymorphicMapType_10630_6143_6144#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18@@1 f_21@@1) (= (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@4) o2_18@@1 f_21@@1) (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| ExhaleHeap) o2_18@@1 f_21@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| ExhaleHeap) o2_18@@1 f_21@@1))
))) (forall ((o2_18@@2 T@Ref) (f_21@@2 T@Field_10141_53) ) (!  (=> (select (|PolymorphicMapType_10630_6148_53#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18@@2 f_21@@2) (= (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@4) o2_18@@2 f_21@@2) (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap) o2_18@@2 f_21@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap) o2_18@@2 f_21@@2))
))) (forall ((o2_18@@3 T@Ref) (f_21@@3 T@Field_6148_17446) ) (!  (=> (select (|PolymorphicMapType_10630_6148_17446#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18@@3 f_21@@3) (= (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@4) o2_18@@3 f_21@@3) (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| ExhaleHeap) o2_18@@3 f_21@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| ExhaleHeap) o2_18@@3 f_21@@3))
))) (forall ((o2_18@@4 T@Ref) (f_21@@4 T@Field_6148_21542) ) (!  (=> (select (|PolymorphicMapType_10630_6148_32165#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18@@4 f_21@@4) (= (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@4) o2_18@@4 f_21@@4) (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap) o2_18@@4 f_21@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap) o2_18@@4 f_21@@4))
))) (forall ((o2_18@@5 T@Ref) (f_21@@5 T@Field_17445_21459) ) (!  (=> (select (|PolymorphicMapType_10630_17445_32409#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18@@5 f_21@@5) (= (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@4) o2_18@@5 f_21@@5) (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| ExhaleHeap) o2_18@@5 f_21@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| ExhaleHeap) o2_18@@5 f_21@@5))
))) (forall ((o2_18@@6 T@Ref) (f_21@@6 T@Field_17445_3301) ) (!  (=> (select (|PolymorphicMapType_10630_17445_3301#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18@@6 f_21@@6) (= (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@4) o2_18@@6 f_21@@6) (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| ExhaleHeap) o2_18@@6 f_21@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| ExhaleHeap) o2_18@@6 f_21@@6))
))) (forall ((o2_18@@7 T@Ref) (f_21@@7 T@Field_17445_6144) ) (!  (=> (select (|PolymorphicMapType_10630_17445_6144#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18@@7 f_21@@7) (= (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@4) o2_18@@7 f_21@@7) (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| ExhaleHeap) o2_18@@7 f_21@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| ExhaleHeap) o2_18@@7 f_21@@7))
))) (forall ((o2_18@@8 T@Ref) (f_21@@8 T@Field_17445_53) ) (!  (=> (select (|PolymorphicMapType_10630_17445_53#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18@@8 f_21@@8) (= (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@4) o2_18@@8 f_21@@8) (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| ExhaleHeap) o2_18@@8 f_21@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| ExhaleHeap) o2_18@@8 f_21@@8))
))) (forall ((o2_18@@9 T@Ref) (f_21@@9 T@Field_17445_17446) ) (!  (=> (select (|PolymorphicMapType_10630_17445_17446#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18@@9 f_21@@9) (= (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@4) o2_18@@9 f_21@@9) (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| ExhaleHeap) o2_18@@9 f_21@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| ExhaleHeap) o2_18@@9 f_21@@9))
))) (forall ((o2_18@@10 T@Ref) (f_21@@10 T@Field_21537_21542) ) (!  (=> (select (|PolymorphicMapType_10630_17445_33431#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) null (PredicateMaskField_6233 pm_f_18))) o2_18@@10 f_21@@10) (= (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@4) o2_18@@10 f_21@@10) (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap) o2_18@@10 f_21@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap) o2_18@@10 f_21@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_6233_6234 pm_f_18))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10081) (ExhaleHeap@@0 T@PolymorphicMapType_10081) (Mask@@2 T@PolymorphicMapType_10102) (pm_f_18@@0 T@Field_6148_17446) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_6148_17446 Mask@@2 null pm_f_18@@0) (IsPredicateField_6148_30509 pm_f_18@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@11 T@Ref) (f_21@@11 T@Field_16425_16427) ) (!  (=> (select (|PolymorphicMapType_10630_6148_21710#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@11 f_21@@11) (= (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@5) o2_18@@11 f_21@@11) (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@11 f_21@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@11 f_21@@11))
)) (forall ((o2_18@@12 T@Ref) (f_21@@12 T@Field_16376_3301) ) (!  (=> (select (|PolymorphicMapType_10630_6146_3301#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@12 f_21@@12) (= (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@5) o2_18@@12 f_21@@12) (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@12 f_21@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@12 f_21@@12))
))) (forall ((o2_18@@13 T@Ref) (f_21@@13 T@Field_10154_10155) ) (!  (=> (select (|PolymorphicMapType_10630_6143_6144#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@13 f_21@@13) (= (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@5) o2_18@@13 f_21@@13) (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@13 f_21@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@13 f_21@@13))
))) (forall ((o2_18@@14 T@Ref) (f_21@@14 T@Field_10141_53) ) (!  (=> (select (|PolymorphicMapType_10630_6148_53#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@14 f_21@@14) (= (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@5) o2_18@@14 f_21@@14) (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@14 f_21@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@14 f_21@@14))
))) (forall ((o2_18@@15 T@Ref) (f_21@@15 T@Field_6148_17446) ) (!  (=> (select (|PolymorphicMapType_10630_6148_17446#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@15 f_21@@15) (= (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@5) o2_18@@15 f_21@@15) (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@15 f_21@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@15 f_21@@15))
))) (forall ((o2_18@@16 T@Ref) (f_21@@16 T@Field_6148_21542) ) (!  (=> (select (|PolymorphicMapType_10630_6148_32165#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@16 f_21@@16) (= (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) o2_18@@16 f_21@@16) (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@16 f_21@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@16 f_21@@16))
))) (forall ((o2_18@@17 T@Ref) (f_21@@17 T@Field_17445_21459) ) (!  (=> (select (|PolymorphicMapType_10630_17445_32409#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@17 f_21@@17) (= (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@5) o2_18@@17 f_21@@17) (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@17 f_21@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@17 f_21@@17))
))) (forall ((o2_18@@18 T@Ref) (f_21@@18 T@Field_17445_3301) ) (!  (=> (select (|PolymorphicMapType_10630_17445_3301#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@18 f_21@@18) (= (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@5) o2_18@@18 f_21@@18) (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@18 f_21@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@18 f_21@@18))
))) (forall ((o2_18@@19 T@Ref) (f_21@@19 T@Field_17445_6144) ) (!  (=> (select (|PolymorphicMapType_10630_17445_6144#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@19 f_21@@19) (= (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@5) o2_18@@19 f_21@@19) (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@19 f_21@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@19 f_21@@19))
))) (forall ((o2_18@@20 T@Ref) (f_21@@20 T@Field_17445_53) ) (!  (=> (select (|PolymorphicMapType_10630_17445_53#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@20 f_21@@20) (= (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@5) o2_18@@20 f_21@@20) (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@20 f_21@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@20 f_21@@20))
))) (forall ((o2_18@@21 T@Ref) (f_21@@21 T@Field_17445_17446) ) (!  (=> (select (|PolymorphicMapType_10630_17445_17446#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@21 f_21@@21) (= (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@5) o2_18@@21 f_21@@21) (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@21 f_21@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@21 f_21@@21))
))) (forall ((o2_18@@22 T@Ref) (f_21@@22 T@Field_21537_21542) ) (!  (=> (select (|PolymorphicMapType_10630_17445_33431#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@5) null (PredicateMaskField_6148 pm_f_18@@0))) o2_18@@22 f_21@@22) (= (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@5) o2_18@@22 f_21@@22) (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@22 f_21@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@0) o2_18@@22 f_21@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_6148_30509 pm_f_18@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10081) (ExhaleHeap@@1 T@PolymorphicMapType_10081) (Mask@@3 T@PolymorphicMapType_10102) (pm_f_18@@1 T@Field_17445_17446) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_17445_17446 Mask@@3 null pm_f_18@@1) (IsWandField_17445_34596 pm_f_18@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@23 T@Ref) (f_21@@23 T@Field_16425_16427) ) (!  (=> (select (|PolymorphicMapType_10630_6148_21710#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@23 f_21@@23) (= (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@6) o2_18@@23 f_21@@23) (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@23 f_21@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@23 f_21@@23))
)) (forall ((o2_18@@24 T@Ref) (f_21@@24 T@Field_16376_3301) ) (!  (=> (select (|PolymorphicMapType_10630_6146_3301#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@24 f_21@@24) (= (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@6) o2_18@@24 f_21@@24) (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@24 f_21@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@24 f_21@@24))
))) (forall ((o2_18@@25 T@Ref) (f_21@@25 T@Field_10154_10155) ) (!  (=> (select (|PolymorphicMapType_10630_6143_6144#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@25 f_21@@25) (= (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@6) o2_18@@25 f_21@@25) (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@25 f_21@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@25 f_21@@25))
))) (forall ((o2_18@@26 T@Ref) (f_21@@26 T@Field_10141_53) ) (!  (=> (select (|PolymorphicMapType_10630_6148_53#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@26 f_21@@26) (= (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@6) o2_18@@26 f_21@@26) (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@26 f_21@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@26 f_21@@26))
))) (forall ((o2_18@@27 T@Ref) (f_21@@27 T@Field_6148_17446) ) (!  (=> (select (|PolymorphicMapType_10630_6148_17446#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@27 f_21@@27) (= (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@6) o2_18@@27 f_21@@27) (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@27 f_21@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@27 f_21@@27))
))) (forall ((o2_18@@28 T@Ref) (f_21@@28 T@Field_6148_21542) ) (!  (=> (select (|PolymorphicMapType_10630_6148_32165#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@28 f_21@@28) (= (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@6) o2_18@@28 f_21@@28) (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@28 f_21@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@28 f_21@@28))
))) (forall ((o2_18@@29 T@Ref) (f_21@@29 T@Field_17445_21459) ) (!  (=> (select (|PolymorphicMapType_10630_17445_32409#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@29 f_21@@29) (= (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@6) o2_18@@29 f_21@@29) (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@29 f_21@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@29 f_21@@29))
))) (forall ((o2_18@@30 T@Ref) (f_21@@30 T@Field_17445_3301) ) (!  (=> (select (|PolymorphicMapType_10630_17445_3301#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@30 f_21@@30) (= (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@6) o2_18@@30 f_21@@30) (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@30 f_21@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@30 f_21@@30))
))) (forall ((o2_18@@31 T@Ref) (f_21@@31 T@Field_17445_6144) ) (!  (=> (select (|PolymorphicMapType_10630_17445_6144#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@31 f_21@@31) (= (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@6) o2_18@@31 f_21@@31) (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@31 f_21@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@31 f_21@@31))
))) (forall ((o2_18@@32 T@Ref) (f_21@@32 T@Field_17445_53) ) (!  (=> (select (|PolymorphicMapType_10630_17445_53#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@32 f_21@@32) (= (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@6) o2_18@@32 f_21@@32) (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@32 f_21@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@32 f_21@@32))
))) (forall ((o2_18@@33 T@Ref) (f_21@@33 T@Field_17445_17446) ) (!  (=> (select (|PolymorphicMapType_10630_17445_17446#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@33 f_21@@33) (= (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@6) o2_18@@33 f_21@@33) (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@33 f_21@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@33 f_21@@33))
))) (forall ((o2_18@@34 T@Ref) (f_21@@34 T@Field_21537_21542) ) (!  (=> (select (|PolymorphicMapType_10630_17445_33431#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) null (WandMaskField_17445 pm_f_18@@1))) o2_18@@34 f_21@@34) (= (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@6) o2_18@@34 f_21@@34) (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@34 f_21@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@1) o2_18@@34 f_21@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsWandField_17445_34596 pm_f_18@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10081) (ExhaleHeap@@2 T@PolymorphicMapType_10081) (Mask@@4 T@PolymorphicMapType_10102) (pm_f_18@@2 T@Field_6148_17446) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_6148_17446 Mask@@4 null pm_f_18@@2) (IsWandField_6148_34239 pm_f_18@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@35 T@Ref) (f_21@@35 T@Field_16425_16427) ) (!  (=> (select (|PolymorphicMapType_10630_6148_21710#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@35 f_21@@35) (= (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@7) o2_18@@35 f_21@@35) (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@35 f_21@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@35 f_21@@35))
)) (forall ((o2_18@@36 T@Ref) (f_21@@36 T@Field_16376_3301) ) (!  (=> (select (|PolymorphicMapType_10630_6146_3301#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@36 f_21@@36) (= (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@7) o2_18@@36 f_21@@36) (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@36 f_21@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@36 f_21@@36))
))) (forall ((o2_18@@37 T@Ref) (f_21@@37 T@Field_10154_10155) ) (!  (=> (select (|PolymorphicMapType_10630_6143_6144#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@37 f_21@@37) (= (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@7) o2_18@@37 f_21@@37) (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@37 f_21@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@37 f_21@@37))
))) (forall ((o2_18@@38 T@Ref) (f_21@@38 T@Field_10141_53) ) (!  (=> (select (|PolymorphicMapType_10630_6148_53#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@38 f_21@@38) (= (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@7) o2_18@@38 f_21@@38) (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@38 f_21@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@38 f_21@@38))
))) (forall ((o2_18@@39 T@Ref) (f_21@@39 T@Field_6148_17446) ) (!  (=> (select (|PolymorphicMapType_10630_6148_17446#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@39 f_21@@39) (= (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@7) o2_18@@39 f_21@@39) (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@39 f_21@@39)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@39 f_21@@39))
))) (forall ((o2_18@@40 T@Ref) (f_21@@40 T@Field_6148_21542) ) (!  (=> (select (|PolymorphicMapType_10630_6148_32165#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@40 f_21@@40) (= (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) o2_18@@40 f_21@@40) (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@40 f_21@@40)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@40 f_21@@40))
))) (forall ((o2_18@@41 T@Ref) (f_21@@41 T@Field_17445_21459) ) (!  (=> (select (|PolymorphicMapType_10630_17445_32409#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@41 f_21@@41) (= (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@7) o2_18@@41 f_21@@41) (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@41 f_21@@41)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@41 f_21@@41))
))) (forall ((o2_18@@42 T@Ref) (f_21@@42 T@Field_17445_3301) ) (!  (=> (select (|PolymorphicMapType_10630_17445_3301#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@42 f_21@@42) (= (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@7) o2_18@@42 f_21@@42) (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@42 f_21@@42)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@42 f_21@@42))
))) (forall ((o2_18@@43 T@Ref) (f_21@@43 T@Field_17445_6144) ) (!  (=> (select (|PolymorphicMapType_10630_17445_6144#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@43 f_21@@43) (= (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@7) o2_18@@43 f_21@@43) (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@43 f_21@@43)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@43 f_21@@43))
))) (forall ((o2_18@@44 T@Ref) (f_21@@44 T@Field_17445_53) ) (!  (=> (select (|PolymorphicMapType_10630_17445_53#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@44 f_21@@44) (= (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@7) o2_18@@44 f_21@@44) (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@44 f_21@@44)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@44 f_21@@44))
))) (forall ((o2_18@@45 T@Ref) (f_21@@45 T@Field_17445_17446) ) (!  (=> (select (|PolymorphicMapType_10630_17445_17446#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@45 f_21@@45) (= (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@7) o2_18@@45 f_21@@45) (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@45 f_21@@45)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@45 f_21@@45))
))) (forall ((o2_18@@46 T@Ref) (f_21@@46 T@Field_21537_21542) ) (!  (=> (select (|PolymorphicMapType_10630_17445_33431#PolymorphicMapType_10630| (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@7) null (WandMaskField_6148 pm_f_18@@2))) o2_18@@46 f_21@@46) (= (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@7) o2_18@@46 f_21@@46) (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@46 f_21@@46)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@2) o2_18@@46 f_21@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_6148_34239 pm_f_18@@2))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_10081) (Heap1Heap T@PolymorphicMapType_10081) (this@@4 T@Ref) ) (!  (=> (and (=  (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap2Heap) this@@4 nodes_1) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this@@4) (|List#condqp1| Heap1Heap this@@4))) (< NoPerm FullPerm))  (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap1Heap) this@@4 nodes_1) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this@@4) (|List#condqp1| Heap1Heap this@@4))) (< NoPerm FullPerm))) (=> (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap2Heap) this@@4 nodes_1) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this@@4) (|List#condqp1| Heap1Heap this@@4))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap2Heap) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this@@4) (|List#condqp1| Heap1Heap this@@4)) val) (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap1Heap) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this@@4) (|List#condqp1| Heap1Heap this@@4)) val)))) (= (|List#condqp1| Heap2Heap this@@4) (|List#condqp1| Heap1Heap this@@4)))
 :qid |stdinbpl.683:15|
 :skolemid |113|
 :pattern ( (|List#condqp1| Heap2Heap this@@4) (|List#condqp1| Heap1Heap this@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_10081) (Heap1Heap@@0 T@PolymorphicMapType_10081) (this@@5 T@Ref) ) (!  (=> (and (=  (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap2Heap@@0) this@@5 nodes_1) (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@5) (|List#condqp2| Heap1Heap@@0 this@@5))) (< NoPerm FullPerm))  (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap1Heap@@0) this@@5 nodes_1) (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@5) (|List#condqp2| Heap1Heap@@0 this@@5))) (< NoPerm FullPerm))) (=> (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap2Heap@@0) this@@5 nodes_1) (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@5) (|List#condqp2| Heap1Heap@@0 this@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap2Heap@@0) (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@5) (|List#condqp2| Heap1Heap@@0 this@@5)) next) (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap1Heap@@0) (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@5) (|List#condqp2| Heap1Heap@@0 this@@5)) next)))) (= (|List#condqp2| Heap2Heap@@0 this@@5) (|List#condqp2| Heap1Heap@@0 this@@5)))
 :qid |stdinbpl.694:15|
 :skolemid |114|
 :pattern ( (|List#condqp2| Heap2Heap@@0 this@@5) (|List#condqp2| Heap1Heap@@0 this@@5) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.304:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10081) (ExhaleHeap@@3 T@PolymorphicMapType_10081) (Mask@@5 T@PolymorphicMapType_10102) (pm_f_18@@3 T@Field_17445_17446) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_17445_17446 Mask@@5 null pm_f_18@@3) (IsPredicateField_6233_6234 pm_f_18@@3)) (= (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@8) null (PredicateMaskField_6233 pm_f_18@@3)) (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@3) null (PredicateMaskField_6233 pm_f_18@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsPredicateField_6233_6234 pm_f_18@@3) (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@3) null (PredicateMaskField_6233 pm_f_18@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10081) (ExhaleHeap@@4 T@PolymorphicMapType_10081) (Mask@@6 T@PolymorphicMapType_10102) (pm_f_18@@4 T@Field_6148_17446) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_6148_17446 Mask@@6 null pm_f_18@@4) (IsPredicateField_6148_30509 pm_f_18@@4)) (= (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@9) null (PredicateMaskField_6148 pm_f_18@@4)) (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@4) null (PredicateMaskField_6148 pm_f_18@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsPredicateField_6148_30509 pm_f_18@@4) (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@4) null (PredicateMaskField_6148 pm_f_18@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10081) (ExhaleHeap@@5 T@PolymorphicMapType_10081) (Mask@@7 T@PolymorphicMapType_10102) (pm_f_18@@5 T@Field_17445_17446) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_17445_17446 Mask@@7 null pm_f_18@@5) (IsWandField_17445_34596 pm_f_18@@5)) (= (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@10) null (WandMaskField_17445 pm_f_18@@5)) (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@5) null (WandMaskField_17445 pm_f_18@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsWandField_17445_34596 pm_f_18@@5) (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@5) null (WandMaskField_17445 pm_f_18@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10081) (ExhaleHeap@@6 T@PolymorphicMapType_10081) (Mask@@8 T@PolymorphicMapType_10102) (pm_f_18@@6 T@Field_6148_17446) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_6148_17446 Mask@@8 null pm_f_18@@6) (IsWandField_6148_34239 pm_f_18@@6)) (= (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@11) null (WandMaskField_6148 pm_f_18@@6)) (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@6) null (WandMaskField_6148 pm_f_18@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsWandField_6148_34239 pm_f_18@@6) (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@6) null (WandMaskField_6148 pm_f_18@@6)))
)))
(assert (forall ((this@@6 T@Ref) (this2 T@Ref) ) (!  (=> (= (List this@@6) (List this2)) (= this@@6 this2))
 :qid |stdinbpl.663:15|
 :skolemid |110|
 :pattern ( (List this@@6) (List this2))
)))
(assert (forall ((this@@7 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|List#sm| this@@7) (|List#sm| this2@@0)) (= this@@7 this2@@0))
 :qid |stdinbpl.667:15|
 :skolemid |111|
 :pattern ( (|List#sm| this@@7) (|List#sm| this2@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10081) (Mask@@9 T@PolymorphicMapType_10102) ) (!  (=> (and (state Heap@@12 Mask@@9) (or (< AssumeFunctionsAbove 0) (|set#trigger| EmptyFrame))) (= (|Set#Card_6158| (|set'| Heap@@12)) 0))
 :qid |stdinbpl.433:15|
 :skolemid |85|
 :pattern ( (state Heap@@12 Mask@@9) (|set'| Heap@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10081) (ExhaleHeap@@7 T@PolymorphicMapType_10081) (Mask@@10 T@PolymorphicMapType_10102) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@13) o_39 $allocated) (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap@@7) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap@@7) o_39 $allocated))
)))
(assert (forall ((p T@Field_17445_17446) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17445_17445 p v_1 p w))
 :qid |stdinbpl.199:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17445_17445 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6148_17446) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10141_10141 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.199:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10141_10141 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_6143_6144 next)))
(assert  (not (IsWandField_6143_6144 next)))
(assert  (not (IsPredicateField_6146_3301 val)))
(assert  (not (IsWandField_6146_3301 val)))
(assert  (not (IsPredicateField_6148_16451 nodes_1)))
(assert  (not (IsWandField_6148_16478 nodes_1)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10081) (ExhaleHeap@@8 T@PolymorphicMapType_10081) (Mask@@11 T@PolymorphicMapType_10102) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10102) (o_2@@11 T@Ref) (f_4@@11 T@Field_6148_21542) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6148_42758 f_4@@11))) (not (IsWandField_6148_42774 f_4@@11))) (<= (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10102) (o_2@@12 T@Ref) (f_4@@12 T@Field_10141_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6148_53 f_4@@12))) (not (IsWandField_6148_53 f_4@@12))) (<= (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10102) (o_2@@13 T@Ref) (f_4@@13 T@Field_10154_10155) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6143_6144 f_4@@13))) (not (IsWandField_6143_6144 f_4@@13))) (<= (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10102) (o_2@@14 T@Ref) (f_4@@14 T@Field_16376_3301) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6146_3301 f_4@@14))) (not (IsWandField_6146_3301 f_4@@14))) (<= (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10102) (o_2@@15 T@Ref) (f_4@@15 T@Field_16425_16427) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6148_16451 f_4@@15))) (not (IsWandField_6148_16478 f_4@@15))) (<= (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10102) (o_2@@16 T@Ref) (f_4@@16 T@Field_6148_17446) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6148_30509 f_4@@16))) (not (IsWandField_6148_34239 f_4@@16))) (<= (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10102) (o_2@@17 T@Ref) (f_4@@17 T@Field_21537_21542) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6233_41796 f_4@@17))) (not (IsWandField_6233_41812 f_4@@17))) (<= (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10102) (o_2@@18 T@Ref) (f_4@@18 T@Field_17445_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6233_53 f_4@@18))) (not (IsWandField_6233_53 f_4@@18))) (<= (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10102) (o_2@@19 T@Ref) (f_4@@19 T@Field_17445_6144) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| Mask@@20) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6233_6144 f_4@@19))) (not (IsWandField_6233_6144 f_4@@19))) (<= (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| Mask@@20) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| Mask@@20) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10102) (o_2@@20 T@Ref) (f_4@@20 T@Field_17445_3301) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| Mask@@21) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6233_3301 f_4@@20))) (not (IsWandField_6233_3301 f_4@@20))) (<= (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| Mask@@21) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| Mask@@21) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10102) (o_2@@21 T@Ref) (f_4@@21 T@Field_17445_21459) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| Mask@@22) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_6233_41119 f_4@@21))) (not (IsWandField_6233_41135 f_4@@21))) (<= (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| Mask@@22) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| Mask@@22) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10102) (o_2@@22 T@Ref) (f_4@@22 T@Field_17445_17446) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| Mask@@23) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_6233_6234 f_4@@22))) (not (IsWandField_17445_34596 f_4@@22))) (<= (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| Mask@@23) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| Mask@@23) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10102) (o_2@@23 T@Ref) (f_4@@23 T@Field_21537_21542) ) (! (= (HasDirectPerm_17445_30264 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17445_30264 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10102) (o_2@@24 T@Ref) (f_4@@24 T@Field_17445_17446) ) (! (= (HasDirectPerm_17445_17446 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17445_17446 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10102) (o_2@@25 T@Ref) (f_4@@25 T@Field_17445_3301) ) (! (= (HasDirectPerm_17445_3301 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17445_3301 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10102) (o_2@@26 T@Ref) (f_4@@26 T@Field_17445_53) ) (! (= (HasDirectPerm_17445_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17445_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10102) (o_2@@27 T@Ref) (f_4@@27 T@Field_17445_6144) ) (! (= (HasDirectPerm_17445_6144 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17445_6144 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10102) (o_2@@28 T@Ref) (f_4@@28 T@Field_17445_21459) ) (! (= (HasDirectPerm_17445_29137 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17445_29137 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10102) (o_2@@29 T@Ref) (f_4@@29 T@Field_6148_21542) ) (! (= (HasDirectPerm_6148_28857 Mask@@30 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| Mask@@30) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6148_28857 Mask@@30 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_10102) (o_2@@30 T@Ref) (f_4@@30 T@Field_6148_17446) ) (! (= (HasDirectPerm_6148_17446 Mask@@31 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| Mask@@31) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6148_17446 Mask@@31 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_10102) (o_2@@31 T@Ref) (f_4@@31 T@Field_16376_3301) ) (! (= (HasDirectPerm_6148_3301 Mask@@32 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| Mask@@32) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6148_3301 Mask@@32 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_10102) (o_2@@32 T@Ref) (f_4@@32 T@Field_10141_53) ) (! (= (HasDirectPerm_6148_53 Mask@@33 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| Mask@@33) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6148_53 Mask@@33 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_10102) (o_2@@33 T@Ref) (f_4@@33 T@Field_10154_10155) ) (! (= (HasDirectPerm_6143_6144 Mask@@34 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| Mask@@34) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6143_6144 Mask@@34 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_10102) (o_2@@34 T@Ref) (f_4@@34 T@Field_16425_16427) ) (! (= (HasDirectPerm_6148_21459 Mask@@35 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| Mask@@35) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6148_21459 Mask@@35 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.187:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10081) (ExhaleHeap@@9 T@PolymorphicMapType_10081) (Mask@@36 T@PolymorphicMapType_10102) (o_39@@0 T@Ref) (f_21@@47 T@Field_21537_21542) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@36) (=> (HasDirectPerm_17445_30264 Mask@@36 o_39@@0 f_21@@47) (= (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@15) o_39@@0 f_21@@47) (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@9) o_39@@0 f_21@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@36) (select (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| ExhaleHeap@@9) o_39@@0 f_21@@47))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10081) (ExhaleHeap@@10 T@PolymorphicMapType_10081) (Mask@@37 T@PolymorphicMapType_10102) (o_39@@1 T@Ref) (f_21@@48 T@Field_17445_17446) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@37) (=> (HasDirectPerm_17445_17446 Mask@@37 o_39@@1 f_21@@48) (= (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@16) o_39@@1 f_21@@48) (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| ExhaleHeap@@10) o_39@@1 f_21@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@37) (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| ExhaleHeap@@10) o_39@@1 f_21@@48))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10081) (ExhaleHeap@@11 T@PolymorphicMapType_10081) (Mask@@38 T@PolymorphicMapType_10102) (o_39@@2 T@Ref) (f_21@@49 T@Field_17445_3301) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@38) (=> (HasDirectPerm_17445_3301 Mask@@38 o_39@@2 f_21@@49) (= (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@17) o_39@@2 f_21@@49) (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| ExhaleHeap@@11) o_39@@2 f_21@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@38) (select (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| ExhaleHeap@@11) o_39@@2 f_21@@49))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10081) (ExhaleHeap@@12 T@PolymorphicMapType_10081) (Mask@@39 T@PolymorphicMapType_10102) (o_39@@3 T@Ref) (f_21@@50 T@Field_17445_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@39) (=> (HasDirectPerm_17445_53 Mask@@39 o_39@@3 f_21@@50) (= (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@18) o_39@@3 f_21@@50) (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| ExhaleHeap@@12) o_39@@3 f_21@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@39) (select (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| ExhaleHeap@@12) o_39@@3 f_21@@50))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10081) (ExhaleHeap@@13 T@PolymorphicMapType_10081) (Mask@@40 T@PolymorphicMapType_10102) (o_39@@4 T@Ref) (f_21@@51 T@Field_17445_6144) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@40) (=> (HasDirectPerm_17445_6144 Mask@@40 o_39@@4 f_21@@51) (= (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@19) o_39@@4 f_21@@51) (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| ExhaleHeap@@13) o_39@@4 f_21@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@40) (select (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| ExhaleHeap@@13) o_39@@4 f_21@@51))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10081) (ExhaleHeap@@14 T@PolymorphicMapType_10081) (Mask@@41 T@PolymorphicMapType_10102) (o_39@@5 T@Ref) (f_21@@52 T@Field_17445_21459) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@41) (=> (HasDirectPerm_17445_29137 Mask@@41 o_39@@5 f_21@@52) (= (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@20) o_39@@5 f_21@@52) (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| ExhaleHeap@@14) o_39@@5 f_21@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@41) (select (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| ExhaleHeap@@14) o_39@@5 f_21@@52))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10081) (ExhaleHeap@@15 T@PolymorphicMapType_10081) (Mask@@42 T@PolymorphicMapType_10102) (o_39@@6 T@Ref) (f_21@@53 T@Field_6148_21542) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@42) (=> (HasDirectPerm_6148_28857 Mask@@42 o_39@@6 f_21@@53) (= (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@21) o_39@@6 f_21@@53) (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@15) o_39@@6 f_21@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@42) (select (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| ExhaleHeap@@15) o_39@@6 f_21@@53))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10081) (ExhaleHeap@@16 T@PolymorphicMapType_10081) (Mask@@43 T@PolymorphicMapType_10102) (o_39@@7 T@Ref) (f_21@@54 T@Field_6148_17446) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@43) (=> (HasDirectPerm_6148_17446 Mask@@43 o_39@@7 f_21@@54) (= (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@22) o_39@@7 f_21@@54) (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| ExhaleHeap@@16) o_39@@7 f_21@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@43) (select (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| ExhaleHeap@@16) o_39@@7 f_21@@54))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10081) (ExhaleHeap@@17 T@PolymorphicMapType_10081) (Mask@@44 T@PolymorphicMapType_10102) (o_39@@8 T@Ref) (f_21@@55 T@Field_16376_3301) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@44) (=> (HasDirectPerm_6148_3301 Mask@@44 o_39@@8 f_21@@55) (= (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@23) o_39@@8 f_21@@55) (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| ExhaleHeap@@17) o_39@@8 f_21@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@44) (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| ExhaleHeap@@17) o_39@@8 f_21@@55))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10081) (ExhaleHeap@@18 T@PolymorphicMapType_10081) (Mask@@45 T@PolymorphicMapType_10102) (o_39@@9 T@Ref) (f_21@@56 T@Field_10141_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@45) (=> (HasDirectPerm_6148_53 Mask@@45 o_39@@9 f_21@@56) (= (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@24) o_39@@9 f_21@@56) (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap@@18) o_39@@9 f_21@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@45) (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| ExhaleHeap@@18) o_39@@9 f_21@@56))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10081) (ExhaleHeap@@19 T@PolymorphicMapType_10081) (Mask@@46 T@PolymorphicMapType_10102) (o_39@@10 T@Ref) (f_21@@57 T@Field_10154_10155) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@46) (=> (HasDirectPerm_6143_6144 Mask@@46 o_39@@10 f_21@@57) (= (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@25) o_39@@10 f_21@@57) (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| ExhaleHeap@@19) o_39@@10 f_21@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@46) (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| ExhaleHeap@@19) o_39@@10 f_21@@57))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10081) (ExhaleHeap@@20 T@PolymorphicMapType_10081) (Mask@@47 T@PolymorphicMapType_10102) (o_39@@11 T@Ref) (f_21@@58 T@Field_16425_16427) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@47) (=> (HasDirectPerm_6148_21459 Mask@@47 o_39@@11 f_21@@58) (= (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@26) o_39@@11 f_21@@58) (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| ExhaleHeap@@20) o_39@@11 f_21@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@47) (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| ExhaleHeap@@20) o_39@@11 f_21@@58))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10081) ) (!  (and (= (set_2 Heap@@27) (|set'| Heap@@27)) (dummyFunction_16563 |set#triggerStateless|))
 :qid |stdinbpl.416:15|
 :skolemid |82|
 :pattern ( (set_2 Heap@@27))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_6148_21542) ) (! (= (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_10141_53) ) (! (= (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_10154_10155) ) (! (= (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_16376_3301) ) (! (= (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_16425_16427) ) (! (= (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_6148_17446) ) (! (= (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_21537_21542) ) (! (= (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_17445_53) ) (! (= (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_17445_6144) ) (! (= (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_17445_3301) ) (! (= (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_17445_21459) ) (! (= (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_17445_17446) ) (! (= (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10102) (SummandMask1 T@PolymorphicMapType_10102) (SummandMask2 T@PolymorphicMapType_10102) (o_2@@47 T@Ref) (f_4@@47 T@Field_6148_21542) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10102) (SummandMask1@@0 T@PolymorphicMapType_10102) (SummandMask2@@0 T@PolymorphicMapType_10102) (o_2@@48 T@Ref) (f_4@@48 T@Field_10141_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10102) (SummandMask1@@1 T@PolymorphicMapType_10102) (SummandMask2@@1 T@PolymorphicMapType_10102) (o_2@@49 T@Ref) (f_4@@49 T@Field_10154_10155) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10102) (SummandMask1@@2 T@PolymorphicMapType_10102) (SummandMask2@@2 T@PolymorphicMapType_10102) (o_2@@50 T@Ref) (f_4@@50 T@Field_16376_3301) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10102) (SummandMask1@@3 T@PolymorphicMapType_10102) (SummandMask2@@3 T@PolymorphicMapType_10102) (o_2@@51 T@Ref) (f_4@@51 T@Field_16425_16427) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10102) (SummandMask1@@4 T@PolymorphicMapType_10102) (SummandMask2@@4 T@PolymorphicMapType_10102) (o_2@@52 T@Ref) (f_4@@52 T@Field_6148_17446) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10102) (SummandMask1@@5 T@PolymorphicMapType_10102) (SummandMask2@@5 T@PolymorphicMapType_10102) (o_2@@53 T@Ref) (f_4@@53 T@Field_21537_21542) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10102) (SummandMask1@@6 T@PolymorphicMapType_10102) (SummandMask2@@6 T@PolymorphicMapType_10102) (o_2@@54 T@Ref) (f_4@@54 T@Field_17445_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10102) (SummandMask1@@7 T@PolymorphicMapType_10102) (SummandMask2@@7 T@PolymorphicMapType_10102) (o_2@@55 T@Ref) (f_4@@55 T@Field_17445_6144) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10102) (SummandMask1@@8 T@PolymorphicMapType_10102) (SummandMask2@@8 T@PolymorphicMapType_10102) (o_2@@56 T@Ref) (f_4@@56 T@Field_17445_3301) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_10102) (SummandMask1@@9 T@PolymorphicMapType_10102) (SummandMask2@@9 T@PolymorphicMapType_10102) (o_2@@57 T@Ref) (f_4@@57 T@Field_17445_21459) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_10102) (SummandMask1@@10 T@PolymorphicMapType_10102) (SummandMask2@@10 T@PolymorphicMapType_10102) (o_2@@58 T@Ref) (f_4@@58 T@Field_17445_17446) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_6158| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.250:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_6158| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_6158| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_6158| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_6158| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.265:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_6158| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_6158| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_6158| a@@6 x) y))
 :qid |stdinbpl.230:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_6158| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_6158| a@@7 b@@5) y@@0))
 :qid |stdinbpl.240:18|
 :skolemid |35|
 :pattern ( (|Set#Union_6158| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_6158| a@@8 b@@6) y@@1))
 :qid |stdinbpl.242:18|
 :skolemid |36|
 :pattern ( (|Set#Union_6158| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_6158| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.226:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_6158| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_6158| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.267:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_6158| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_6158| (|Set#Difference_6158| a@@11 b@@8)) (|Set#Card_6158| (|Set#Difference_6158| b@@8 a@@11))) (|Set#Card_6158| (|Set#Intersection_6158| a@@11 b@@8))) (|Set#Card_6158| (|Set#Union_6158| a@@11 b@@8))) (= (|Set#Card_6158| (|Set#Difference_6158| a@@11 b@@8)) (- (|Set#Card_6158| a@@11) (|Set#Card_6158| (|Set#Intersection_6158| a@@11 b@@8)))))
 :qid |stdinbpl.269:18|
 :skolemid |45|
 :pattern ( (|Set#Card_6158| (|Set#Difference_6158| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_6158| s))
 :qid |stdinbpl.212:18|
 :skolemid |22|
 :pattern ( (|Set#Card_6158| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_6158| a@@12 x@@1) x@@1)
 :qid |stdinbpl.228:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_6158| a@@12 x@@1))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10081) (Mask@@48 T@PolymorphicMapType_10102) (this@@8 T@Ref) ) (!  (=> (state Heap@@28 Mask@@48) (= (|length'| Heap@@28 this@@8) (|length#frame| (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@28) null (List this@@8)) this@@8)))
 :qid |stdinbpl.484:15|
 :skolemid |89|
 :pattern ( (state Heap@@28 Mask@@48) (|length'| Heap@@28 this@@8))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_6158| (|Set#UnionOne_6158| a@@13 x@@2)) (|Set#Card_6158| a@@13)))
 :qid |stdinbpl.232:18|
 :skolemid |32|
 :pattern ( (|Set#Card_6158| (|Set#UnionOne_6158| a@@13 x@@2)))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (getPredWandId_6233_6234 (List this@@9)) 0)
 :qid |stdinbpl.657:15|
 :skolemid |109|
 :pattern ( (List this@@9))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_6158| (|Set#Singleton_6158| r@@0)) 1)
 :qid |stdinbpl.223:18|
 :skolemid |28|
 :pattern ( (|Set#Card_6158| (|Set#Singleton_6158| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_6158| r@@1) r@@1)
 :qid |stdinbpl.221:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_6158| r@@1))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10081) ) (! (dummyFunction_16563 |set#triggerStateless|)
 :qid |stdinbpl.420:15|
 :skolemid |83|
 :pattern ( (|set'| Heap@@29))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_6158| a@@14 (|Set#Union_6158| a@@14 b@@9)) (|Set#Union_6158| a@@14 b@@9))
 :qid |stdinbpl.255:18|
 :skolemid |39|
 :pattern ( (|Set#Union_6158| a@@14 (|Set#Union_6158| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6158| a@@15 (|Set#Intersection_6158| a@@15 b@@10)) (|Set#Intersection_6158| a@@15 b@@10))
 :qid |stdinbpl.259:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_6158| a@@15 (|Set#Intersection_6158| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_6158| o@@3))
 :qid |stdinbpl.215:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_6158| o@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10081) (Mask@@49 T@PolymorphicMapType_10102) ) (!  (=> (state Heap@@30 Mask@@49) (= (|set'| Heap@@30) (|set#frame| EmptyFrame)))
 :qid |stdinbpl.427:15|
 :skolemid |84|
 :pattern ( (state Heap@@30 Mask@@49) (|set'| Heap@@30))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10081) (o_38 T@Ref) (f_23 T@Field_21537_21542) (v T@PolymorphicMapType_10630) ) (! (succHeap Heap@@31 (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@31) (store (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@31) o_38 f_23 v) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@31) (store (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@31) o_38 f_23 v) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@31) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10081) (o_38@@0 T@Ref) (f_23@@0 T@Field_17445_3301) (v@@0 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@32) (store (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@32) o_38@@0 f_23@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@32) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@32) (store (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@32) o_38@@0 f_23@@0 v@@0)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10081) (o_38@@1 T@Ref) (f_23@@1 T@Field_17445_17446) (v@@1 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@33) (store (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@33) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@33) (store (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@33) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@33) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10081) (o_38@@2 T@Ref) (f_23@@2 T@Field_17445_21459) (v@@2 (Array T@Ref Bool)) ) (! (succHeap Heap@@34 (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@34) (store (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@34) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@34) (store (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@34) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@34) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_10081) (o_38@@3 T@Ref) (f_23@@3 T@Field_17445_6144) (v@@3 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@35) (store (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@35) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@35) (store (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@35) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@35) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_10081) (o_38@@4 T@Ref) (f_23@@4 T@Field_17445_53) (v@@4 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@36) (store (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@36) o_38@@4 f_23@@4 v@@4) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@36) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@36) (store (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@36) o_38@@4 f_23@@4 v@@4) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_10081) (o_38@@5 T@Ref) (f_23@@5 T@Field_6148_21542) (v@@5 T@PolymorphicMapType_10630) ) (! (succHeap Heap@@37 (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@37) (store (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@37) o_38@@5 f_23@@5 v@@5) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@37) (store (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@37) o_38@@5 f_23@@5 v@@5) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@37) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_10081) (o_38@@6 T@Ref) (f_23@@6 T@Field_16376_3301) (v@@6 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@38) (store (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@38) o_38@@6 f_23@@6 v@@6) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@38) (store (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@38) o_38@@6 f_23@@6 v@@6) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@38) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_10081) (o_38@@7 T@Ref) (f_23@@7 T@Field_6148_17446) (v@@7 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@39) (store (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@39) o_38@@7 f_23@@7 v@@7) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@39) (store (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@39) o_38@@7 f_23@@7 v@@7) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@39) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_10081) (o_38@@8 T@Ref) (f_23@@8 T@Field_16425_16427) (v@@8 (Array T@Ref Bool)) ) (! (succHeap Heap@@40 (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@40) (store (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@40) o_38@@8 f_23@@8 v@@8) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@40) (store (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@40) o_38@@8 f_23@@8 v@@8) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@40) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_10081) (o_38@@9 T@Ref) (f_23@@9 T@Field_10154_10155) (v@@9 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@41) (store (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@41) o_38@@9 f_23@@9 v@@9) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@41) (store (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@41) o_38@@9 f_23@@9 v@@9) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@41) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_10081) (o_38@@10 T@Ref) (f_23@@10 T@Field_10141_53) (v@@10 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_10081 (store (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@42) o_38@@10 f_23@@10 v@@10) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10081 (store (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@42) o_38@@10 f_23@@10 v@@10) (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6237_21629#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6148_17446#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_6148_28899#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_17445_29179#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_17445_6144#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_17445_53#PolymorphicMapType_10081| Heap@@42) (|PolymorphicMapType_10081_17445_3301#PolymorphicMapType_10081| Heap@@42)))
)))
(assert (forall ((this@@10 T@Ref) ) (! (= (PredicateMaskField_6233 (List this@@10)) (|List#sm| this@@10))
 :qid |stdinbpl.649:15|
 :skolemid |107|
 :pattern ( (PredicateMaskField_6233 (List this@@10)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.299:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.300:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_6158| s@@0) 0) (= s@@0 |Set#Empty_6158|)) (=> (not (= (|Set#Card_6158| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.218:33|
 :skolemid |24|
))))
 :qid |stdinbpl.216:18|
 :skolemid |25|
 :pattern ( (|Set#Card_6158| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_6158| (|Set#UnionOne_6158| a@@18 x@@4)) (+ (|Set#Card_6158| a@@18) 1)))
 :qid |stdinbpl.234:18|
 :skolemid |33|
 :pattern ( (|Set#Card_6158| (|Set#UnionOne_6158| a@@18 x@@4)))
)))
(assert (forall ((o_38@@11 T@Ref) (f_51 T@Field_10154_10155) (Heap@@43 T@PolymorphicMapType_10081) ) (!  (=> (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@43) o_38@@11 $allocated) (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@43) (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@43) o_38@@11 f_51) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@43) o_38@@11 f_51))
)))
(assert (forall ((p@@2 T@Field_17445_17446) (v_1@@1 T@FrameType) (q T@Field_17445_17446) (w@@1 T@FrameType) (r@@2 T@Field_17445_17446) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17445_17445 p@@2 v_1@@1 q w@@1) (InsidePredicate_17445_17445 q w@@1 r@@2 u)) (InsidePredicate_17445_17445 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17445_17445 p@@2 v_1@@1 q w@@1) (InsidePredicate_17445_17445 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_17445_17446) (v_1@@2 T@FrameType) (q@@0 T@Field_17445_17446) (w@@2 T@FrameType) (r@@3 T@Field_6148_17446) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_17445_17445 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_17445_10141 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_17445_10141 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17445_17445 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_17445_10141 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_17445_17446) (v_1@@3 T@FrameType) (q@@1 T@Field_6148_17446) (w@@3 T@FrameType) (r@@4 T@Field_17445_17446) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_17445_10141 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10141_17445 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_17445_17445 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17445_10141 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10141_17445 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_17445_17446) (v_1@@4 T@FrameType) (q@@2 T@Field_6148_17446) (w@@4 T@FrameType) (r@@5 T@Field_6148_17446) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_17445_10141 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10141_10141 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_17445_10141 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17445_10141 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10141_10141 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_6148_17446) (v_1@@5 T@FrameType) (q@@3 T@Field_17445_17446) (w@@5 T@FrameType) (r@@6 T@Field_17445_17446) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10141_17445 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_17445_17445 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_10141_17445 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10141_17445 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_17445_17445 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_6148_17446) (v_1@@6 T@FrameType) (q@@4 T@Field_17445_17446) (w@@6 T@FrameType) (r@@7 T@Field_6148_17446) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10141_17445 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_17445_10141 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_10141_10141 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10141_17445 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_17445_10141 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_6148_17446) (v_1@@7 T@FrameType) (q@@5 T@Field_6148_17446) (w@@7 T@FrameType) (r@@8 T@Field_17445_17446) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10141_10141 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10141_17445 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_10141_17445 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10141_10141 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10141_17445 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_6148_17446) (v_1@@8 T@FrameType) (q@@6 T@Field_6148_17446) (w@@8 T@FrameType) (r@@9 T@Field_6148_17446) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10141_10141 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10141_10141 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_10141_10141 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10141_10141 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10141_10141 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.305:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_6158| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.238:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_6158| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@44 () T@PolymorphicMapType_10081)
(declare-fun this@@11 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_10102)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_18266 ((Array T@Ref Bool)) T@FrameType)
(declare-fun FrameFragment_4795 (Int) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_10102)
(declare-fun QPMask@0 () T@PolymorphicMapType_10102)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_10102)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(set-info :boogie-vc-id |length#definedness|)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (state Heap@@44 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_10081_5838_53#PolymorphicMapType_10081| Heap@@44) this@@11 $allocated)) (and (= AssumeFunctionsAbove 1) (= Mask@0 (PolymorphicMapType_10102 (store (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| ZeroMask) null (List this@@11) (+ (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| ZeroMask) null (List this@@11)) FullPerm)) (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| ZeroMask) (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| ZeroMask) (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| ZeroMask) (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| ZeroMask) (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| ZeroMask) (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| ZeroMask) (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| ZeroMask) (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| ZeroMask) (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| ZeroMask) (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| ZeroMask) (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| ZeroMask))))) (and (and (state Heap@@44 Mask@0) (state Heap@@44 Mask@0)) (and (|List#trigger_6233| Heap@@44 (List this@@11)) (= (select (|PolymorphicMapType_10081_6233_6234#PolymorphicMapType_10081| Heap@@44) null (List this@@11)) (CombineFrames (FrameFragment_18266 (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1)) (CombineFrames (FrameFragment_4795 (|List#condqp1| Heap@@44 this@@11)) (FrameFragment_4795 (|List#condqp2| Heap@@44 this@@11)))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| Mask@0) null (List this@@11))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| Mask@0) null (List this@@11)))) (=> (not (= this@@11 null)) (=> (and (= UnfoldingMask@0 (PolymorphicMapType_10102 (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| Mask@0) (store (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| Mask@0) this@@11 nodes_1 (+ (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| Mask@0) this@@11 nodes_1) FullPerm)) (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| Mask@0) (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| Mask@0) (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| Mask@0) (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| Mask@0) (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| Mask@0) (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| Mask@0) (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| Mask@0) (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| Mask@0) (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| Mask@0) (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| Mask@0))) (state Heap@@44 UnfoldingMask@0)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall ((r_1 T@Ref) (r_52 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1 r_52)) (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1)) (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_52)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1 r_52)))
 :qid |stdinbpl.538:17|
 :skolemid |90|
))) (=> (forall ((r_1@@0 T@Ref) (r_52@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1@@0 r_52@@0)) (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1@@0)) (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_52@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1@@0 r_52@@0)))
 :qid |stdinbpl.538:17|
 :skolemid |90|
)) (=> (and (and (forall ((r_1@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1@@1) (< NoPerm FullPerm)) (and (qpRange1 r_1@@1) (= (invRecv1 r_1@@1) r_1@@1)))
 :qid |stdinbpl.544:24|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@44) r_1@@1 val))
 :pattern ( (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| QPMask@0) r_1@@1 val))
 :pattern ( (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) (invRecv1 o_9)) (< NoPerm FullPerm)) (qpRange1 o_9)) (= (invRecv1 o_9) o_9))
 :qid |stdinbpl.548:24|
 :skolemid |92|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((r_1@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1@@2) (not (= r_1@@2 null)))
 :qid |stdinbpl.554:24|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10081_6146_3301#PolymorphicMapType_10081| Heap@@44) r_1@@2 val))
 :pattern ( (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| QPMask@0) r_1@@2 val))
 :pattern ( (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| QPMask@0) o_9@@0 val) (+ (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@0 val) FullPerm)))) (=> (not (and (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| QPMask@0) o_9@@0 val) (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@0 val))))
 :qid |stdinbpl.560:24|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| QPMask@0) o_9@@0 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_10141_53) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_10154_10155) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_16376_3301) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_16425_16427) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_6148_17446) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| QPMask@0) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_6148_21542) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@6 f_5@@4) (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| QPMask@0) o_9@@6 f_5@@4)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| QPMask@0) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_17445_53) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@7 f_5@@5) (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| QPMask@0) o_9@@7 f_5@@5)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| QPMask@0) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_17445_6144) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@8 f_5@@6) (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| QPMask@0) o_9@@8 f_5@@6)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| QPMask@0) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_17445_3301) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@9 f_5@@7) (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| QPMask@0) o_9@@9 f_5@@7)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| QPMask@0) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_17445_21459) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@10 f_5@@8) (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| QPMask@0) o_9@@10 f_5@@8)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| QPMask@0) o_9@@10 f_5@@8))
))) (forall ((o_9@@11 T@Ref) (f_5@@9 T@Field_17445_17446) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@11 f_5@@9) (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| QPMask@0) o_9@@11 f_5@@9)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| QPMask@0) o_9@@11 f_5@@9))
))) (forall ((o_9@@12 T@Ref) (f_5@@10 T@Field_21537_21542) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@12 f_5@@10) (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| QPMask@0) o_9@@12 f_5@@10)))
 :qid |stdinbpl.564:31|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| UnfoldingMask@0) o_9@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| QPMask@0) o_9@@12 f_5@@10))
))) (state Heap@@44 QPMask@0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((r_1_1 T@Ref) (r_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1 r_1_2)) (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1_1)) (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1_1 r_1_2)))
 :qid |stdinbpl.572:17|
 :skolemid |96|
))) (=> (forall ((r_1_1@@0 T@Ref) (r_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1@@0 r_1_2@@0)) (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1_1@@0)) (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1_1@@0 r_1_2@@0)))
 :qid |stdinbpl.572:17|
 :skolemid |96|
)) (=> (and (and (forall ((r_1_1@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1_1@@1) (< NoPerm FullPerm)) (and (qpRange2 r_1_1@@1) (= (invRecv2 r_1_1@@1) r_1_1@@1)))
 :qid |stdinbpl.578:24|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@44) r_1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@1) r_1_1@@1 next))
 :pattern ( (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1_1@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) (invRecv2 o_9@@13)) (< NoPerm FullPerm)) (qpRange2 o_9@@13)) (= (invRecv2 o_9@@13) o_9@@13))
 :qid |stdinbpl.582:24|
 :skolemid |98|
 :pattern ( (invRecv2 o_9@@13))
))) (and (forall ((r_1_1@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1_1@@2) (not (= r_1_1@@2 null)))
 :qid |stdinbpl.588:24|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@44) r_1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@1) r_1_1@@2 next))
 :pattern ( (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_1_1@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) (invRecv2 o_9@@14)) (< NoPerm FullPerm)) (qpRange2 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_9@@14) o_9@@14)) (= (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@1) o_9@@14 next) (+ (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@0) o_9@@14 next) FullPerm)))) (=> (not (and (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) (invRecv2 o_9@@14)) (< NoPerm FullPerm)) (qpRange2 o_9@@14))) (= (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@1) o_9@@14 next) (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@0) o_9@@14 next))))
 :qid |stdinbpl.594:24|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@1) o_9@@14 next))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@11 T@Field_10141_53) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| QPMask@0) o_9@@15 f_5@@11) (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| QPMask@1) o_9@@15 f_5@@11)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| QPMask@0) o_9@@15 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_10102_6148_53#PolymorphicMapType_10102| QPMask@1) o_9@@15 f_5@@11))
)) (forall ((o_9@@16 T@Ref) (f_5@@12 T@Field_10154_10155) ) (!  (=> (not (= f_5@@12 next)) (= (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@0) o_9@@16 f_5@@12) (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@1) o_9@@16 f_5@@12)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@0) o_9@@16 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_10102_6143_6144#PolymorphicMapType_10102| QPMask@1) o_9@@16 f_5@@12))
))) (forall ((o_9@@17 T@Ref) (f_5@@13 T@Field_16376_3301) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| QPMask@0) o_9@@17 f_5@@13) (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| QPMask@1) o_9@@17 f_5@@13)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| QPMask@0) o_9@@17 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_10102_6146_3301#PolymorphicMapType_10102| QPMask@1) o_9@@17 f_5@@13))
))) (forall ((o_9@@18 T@Ref) (f_5@@14 T@Field_16425_16427) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| QPMask@0) o_9@@18 f_5@@14) (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| QPMask@1) o_9@@18 f_5@@14)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| QPMask@0) o_9@@18 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_10102_6148_18592#PolymorphicMapType_10102| QPMask@1) o_9@@18 f_5@@14))
))) (forall ((o_9@@19 T@Ref) (f_5@@15 T@Field_6148_17446) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| QPMask@0) o_9@@19 f_5@@15) (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| QPMask@1) o_9@@19 f_5@@15)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| QPMask@0) o_9@@19 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_10102_6148_6234#PolymorphicMapType_10102| QPMask@1) o_9@@19 f_5@@15))
))) (forall ((o_9@@20 T@Ref) (f_5@@16 T@Field_6148_21542) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| QPMask@0) o_9@@20 f_5@@16) (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| QPMask@1) o_9@@20 f_5@@16)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| QPMask@0) o_9@@20 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_10102_6148_40012#PolymorphicMapType_10102| QPMask@1) o_9@@20 f_5@@16))
))) (forall ((o_9@@21 T@Ref) (f_5@@17 T@Field_17445_53) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| QPMask@0) o_9@@21 f_5@@17) (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| QPMask@1) o_9@@21 f_5@@17)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| QPMask@0) o_9@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_10102_6233_53#PolymorphicMapType_10102| QPMask@1) o_9@@21 f_5@@17))
))) (forall ((o_9@@22 T@Ref) (f_5@@18 T@Field_17445_6144) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| QPMask@0) o_9@@22 f_5@@18) (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| QPMask@1) o_9@@22 f_5@@18)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| QPMask@0) o_9@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_10102_6233_6144#PolymorphicMapType_10102| QPMask@1) o_9@@22 f_5@@18))
))) (forall ((o_9@@23 T@Ref) (f_5@@19 T@Field_17445_3301) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| QPMask@0) o_9@@23 f_5@@19) (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| QPMask@1) o_9@@23 f_5@@19)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| QPMask@0) o_9@@23 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_10102_6233_3301#PolymorphicMapType_10102| QPMask@1) o_9@@23 f_5@@19))
))) (forall ((o_9@@24 T@Ref) (f_5@@20 T@Field_17445_21459) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| QPMask@0) o_9@@24 f_5@@20) (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| QPMask@1) o_9@@24 f_5@@20)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| QPMask@0) o_9@@24 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_10102_6233_39211#PolymorphicMapType_10102| QPMask@1) o_9@@24 f_5@@20))
))) (forall ((o_9@@25 T@Ref) (f_5@@21 T@Field_17445_17446) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| QPMask@0) o_9@@25 f_5@@21) (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| QPMask@1) o_9@@25 f_5@@21)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| QPMask@0) o_9@@25 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_10102_6233_6234#PolymorphicMapType_10102| QPMask@1) o_9@@25 f_5@@21))
))) (forall ((o_9@@26 T@Ref) (f_5@@22 T@Field_21537_21542) ) (!  (=> true (= (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| QPMask@0) o_9@@26 f_5@@22) (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| QPMask@1) o_9@@26 f_5@@22)))
 :qid |stdinbpl.598:31|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| QPMask@0) o_9@@26 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_10102_6233_39543#PolymorphicMapType_10102| QPMask@1) o_9@@26 f_5@@22))
))) (and (and (state Heap@@44 QPMask@1) (forall ((r_2 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) r_2) (not (= (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@44) r_2 next) null))) (select (select (|PolymorphicMapType_10081_6148_17364#PolymorphicMapType_10081| Heap@@44) this@@11 nodes_1) (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@44) r_2 next)))
 :qid |stdinbpl.604:22|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_10081_5841_5842#PolymorphicMapType_10081| Heap@@44) r_2 next))
))) (and (state Heap@@44 QPMask@1) (= (ControlFlow 0 2) (- 0 1))))) (HasDirectPerm_6148_21459 QPMask@1 this@@11 nodes_1)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
