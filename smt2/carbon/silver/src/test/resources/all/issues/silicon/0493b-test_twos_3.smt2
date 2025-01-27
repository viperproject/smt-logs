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
(declare-sort T@Field_26443_53 0)
(declare-sort T@Field_26456_26457 0)
(declare-sort T@Field_32744_4198 0)
(declare-sort T@Field_35231_35232 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_37402_37403 0)
(declare-sort T@Field_39010_39015 0)
(declare-sort T@Field_39918_39923 0)
(declare-sort T@Field_16691_16890 0)
(declare-sort T@Field_16691_39015 0)
(declare-sort T@Field_16889_4198 0)
(declare-sort T@Field_16889_53 0)
(declare-sort T@Field_16889_26457 0)
(declare-sort T@Field_16914_4198 0)
(declare-sort T@Field_16914_53 0)
(declare-sort T@Field_16914_26457 0)
(declare-datatypes ((T@PolymorphicMapType_26404 0)) (((PolymorphicMapType_26404 (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| (Array T@Ref T@Field_32744_4198 Real)) (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| (Array T@Ref T@Field_35231_35232 Real)) (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| (Array T@Ref T@Field_37402_37403 Real)) (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| (Array T@Ref T@Field_16691_16890 Real)) (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| (Array T@Ref T@Field_26443_53 Real)) (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| (Array T@Ref T@Field_26456_26457 Real)) (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| (Array T@Ref T@Field_16691_39015 Real)) (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| (Array T@Ref T@Field_16889_4198 Real)) (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| (Array T@Ref T@Field_16889_53 Real)) (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| (Array T@Ref T@Field_16889_26457 Real)) (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| (Array T@Ref T@Field_39010_39015 Real)) (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| (Array T@Ref T@Field_16914_4198 Real)) (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| (Array T@Ref T@Field_16914_53 Real)) (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| (Array T@Ref T@Field_16914_26457 Real)) (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| (Array T@Ref T@Field_39918_39923 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_26932 0)) (((PolymorphicMapType_26932 (|PolymorphicMapType_26932_16691_4198#PolymorphicMapType_26932| (Array T@Ref T@Field_32744_4198 Bool)) (|PolymorphicMapType_26932_16691_53#PolymorphicMapType_26932| (Array T@Ref T@Field_26443_53 Bool)) (|PolymorphicMapType_26932_16691_26457#PolymorphicMapType_26932| (Array T@Ref T@Field_26456_26457 Bool)) (|PolymorphicMapType_26932_16691_35232#PolymorphicMapType_26932| (Array T@Ref T@Field_16691_16890 Bool)) (|PolymorphicMapType_26932_16691_83865#PolymorphicMapType_26932| (Array T@Ref T@Field_16691_39015 Bool)) (|PolymorphicMapType_26932_35231_4198#PolymorphicMapType_26932| (Array T@Ref T@Field_16889_4198 Bool)) (|PolymorphicMapType_26932_35231_53#PolymorphicMapType_26932| (Array T@Ref T@Field_16889_53 Bool)) (|PolymorphicMapType_26932_35231_26457#PolymorphicMapType_26932| (Array T@Ref T@Field_16889_26457 Bool)) (|PolymorphicMapType_26932_35231_35232#PolymorphicMapType_26932| (Array T@Ref T@Field_35231_35232 Bool)) (|PolymorphicMapType_26932_35231_84913#PolymorphicMapType_26932| (Array T@Ref T@Field_39010_39015 Bool)) (|PolymorphicMapType_26932_37402_4198#PolymorphicMapType_26932| (Array T@Ref T@Field_16914_4198 Bool)) (|PolymorphicMapType_26932_37402_53#PolymorphicMapType_26932| (Array T@Ref T@Field_16914_53 Bool)) (|PolymorphicMapType_26932_37402_26457#PolymorphicMapType_26932| (Array T@Ref T@Field_16914_26457 Bool)) (|PolymorphicMapType_26932_37402_35232#PolymorphicMapType_26932| (Array T@Ref T@Field_37402_37403 Bool)) (|PolymorphicMapType_26932_37402_85961#PolymorphicMapType_26932| (Array T@Ref T@Field_39918_39923 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_26383 0)) (((PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| (Array T@Ref T@Field_26443_53 Bool)) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| (Array T@Ref T@Field_26456_26457 T@Ref)) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| (Array T@Ref T@Field_32744_4198 Int)) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| (Array T@Ref T@Field_35231_35232 T@FrameType)) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| (Array T@Ref T@Field_37402_37403 T@FrameType)) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| (Array T@Ref T@Field_39010_39015 T@PolymorphicMapType_26932)) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| (Array T@Ref T@Field_39918_39923 T@PolymorphicMapType_26932)) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| (Array T@Ref T@Field_16691_16890 T@FrameType)) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| (Array T@Ref T@Field_16691_39015 T@PolymorphicMapType_26932)) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| (Array T@Ref T@Field_16889_4198 Int)) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| (Array T@Ref T@Field_16889_53 Bool)) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| (Array T@Ref T@Field_16889_26457 T@Ref)) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| (Array T@Ref T@Field_16914_4198 Int)) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| (Array T@Ref T@Field_16914_53 Bool)) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| (Array T@Ref T@Field_16914_26457 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_26443_53)
(declare-fun val () T@Field_32744_4198)
(declare-fun succHeap (T@PolymorphicMapType_26383 T@PolymorphicMapType_26383) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_26383 T@PolymorphicMapType_26383) Bool)
(declare-fun |foo_twos#condqp3| (T@PolymorphicMapType_26383 (Array T@Ref Bool) (Array Int Bool)) Int)
(declare-fun |sk_foo_twos#condqp3| (Int Int) T@Ref)
(declare-fun |sk_foo_twos#condqp3_1| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun null () T@Ref)
(declare-fun two (T@Ref Int) T@Field_37402_37403)
(declare-fun state (T@PolymorphicMapType_26383 T@PolymorphicMapType_26404) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_26404) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_26932)
(declare-fun IsPredicateField_16914_16915 (T@Field_37402_37403) Bool)
(declare-fun |foo_twos'| (T@PolymorphicMapType_26383 (Array T@Ref Bool) (Array Int Bool)) Int)
(declare-fun dummyFunction_4495 (Int) Bool)
(declare-fun |foo_twos#triggerStateless| ((Array T@Ref Bool) (Array Int Bool)) Int)
(declare-fun |two#trigger_16914| (T@PolymorphicMapType_26383 T@Field_37402_37403) Bool)
(declare-fun |two#everUsed_16914| (T@Field_37402_37403) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun one (T@Ref) T@Field_35231_35232)
(declare-fun IsPredicateField_16889_16890 (T@Field_35231_35232) Bool)
(declare-fun |foo_vals'| (T@PolymorphicMapType_26383 (Array T@Ref Bool)) Int)
(declare-fun |foo_vals#triggerStateless| ((Array T@Ref Bool)) Int)
(declare-fun |foo_ones'| (T@PolymorphicMapType_26383 (Array T@Ref Bool)) Int)
(declare-fun |foo_ones#triggerStateless| ((Array T@Ref Bool)) Int)
(declare-fun |one#trigger_16889| (T@PolymorphicMapType_26383 T@Field_35231_35232) Bool)
(declare-fun |one#everUsed_16889| (T@Field_35231_35232) Bool)
(declare-fun |Set#Union_13862| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Union_17073| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_13862| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_17073| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_13862| (Int) (Array Int Bool))
(declare-fun |Set#Singleton_17073| (T@Ref) (Array T@Ref Bool))
(declare-fun |foo_ones#condqp2| (T@PolymorphicMapType_26383 (Array T@Ref Bool)) Int)
(declare-fun |sk_foo_ones#condqp2| (Int Int) T@Ref)
(declare-fun |Set#Card_13862| ((Array Int Bool)) Int)
(declare-fun |Set#Card_17073| ((Array T@Ref Bool)) Int)
(declare-fun foo_vals (T@PolymorphicMapType_26383 (Array T@Ref Bool)) Int)
(declare-fun foo_ones (T@PolymorphicMapType_26383 (Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_26383 T@PolymorphicMapType_26383 T@PolymorphicMapType_26404) Bool)
(declare-fun PredicateMaskField_16914 (T@Field_37402_37403) T@Field_39918_39923)
(declare-fun HasDirectPerm_16914_16915 (T@PolymorphicMapType_26404 T@Ref T@Field_37402_37403) Bool)
(declare-fun PredicateMaskField_16889 (T@Field_35231_35232) T@Field_39010_39015)
(declare-fun HasDirectPerm_16889_16890 (T@PolymorphicMapType_26404 T@Ref T@Field_35231_35232) Bool)
(declare-fun IsPredicateField_16691_82068 (T@Field_16691_16890) Bool)
(declare-fun PredicateMaskField_16691 (T@Field_16691_16890) T@Field_16691_39015)
(declare-fun HasDirectPerm_16691_16890 (T@PolymorphicMapType_26404 T@Ref T@Field_16691_16890) Bool)
(declare-fun IsWandField_16914_87764 (T@Field_37402_37403) Bool)
(declare-fun WandMaskField_16914 (T@Field_37402_37403) T@Field_39918_39923)
(declare-fun IsWandField_16889_87407 (T@Field_35231_35232) Bool)
(declare-fun WandMaskField_16889 (T@Field_35231_35232) T@Field_39010_39015)
(declare-fun IsWandField_16691_87050 (T@Field_16691_16890) Bool)
(declare-fun WandMaskField_16691 (T@Field_16691_16890) T@Field_16691_39015)
(declare-fun |two#sm| (T@Ref Int) T@Field_39918_39923)
(declare-fun |one#sm| (T@Ref) T@Field_39010_39015)
(declare-fun dummyHeap () T@PolymorphicMapType_26383)
(declare-fun ZeroMask () T@PolymorphicMapType_26404)
(declare-fun InsidePredicate_37402_37402 (T@Field_37402_37403 T@FrameType T@Field_37402_37403 T@FrameType) Bool)
(declare-fun InsidePredicate_35231_35231 (T@Field_35231_35232 T@FrameType T@Field_35231_35232 T@FrameType) Bool)
(declare-fun InsidePredicate_26443_26443 (T@Field_16691_16890 T@FrameType T@Field_16691_16890 T@FrameType) Bool)
(declare-fun IsPredicateField_16691_4198 (T@Field_32744_4198) Bool)
(declare-fun IsWandField_16691_4198 (T@Field_32744_4198) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_16914_98082 (T@Field_39918_39923) Bool)
(declare-fun IsWandField_16914_98098 (T@Field_39918_39923) Bool)
(declare-fun IsPredicateField_16914_26457 (T@Field_16914_26457) Bool)
(declare-fun IsWandField_16914_26457 (T@Field_16914_26457) Bool)
(declare-fun IsPredicateField_16914_53 (T@Field_16914_53) Bool)
(declare-fun IsWandField_16914_53 (T@Field_16914_53) Bool)
(declare-fun IsPredicateField_16914_4198 (T@Field_16914_4198) Bool)
(declare-fun IsWandField_16914_4198 (T@Field_16914_4198) Bool)
(declare-fun IsPredicateField_16889_97251 (T@Field_39010_39015) Bool)
(declare-fun IsWandField_16889_97267 (T@Field_39010_39015) Bool)
(declare-fun IsPredicateField_16889_26457 (T@Field_16889_26457) Bool)
(declare-fun IsWandField_16889_26457 (T@Field_16889_26457) Bool)
(declare-fun IsPredicateField_16889_53 (T@Field_16889_53) Bool)
(declare-fun IsWandField_16889_53 (T@Field_16889_53) Bool)
(declare-fun IsPredicateField_16889_4198 (T@Field_16889_4198) Bool)
(declare-fun IsWandField_16889_4198 (T@Field_16889_4198) Bool)
(declare-fun IsPredicateField_16691_96420 (T@Field_16691_39015) Bool)
(declare-fun IsWandField_16691_96436 (T@Field_16691_39015) Bool)
(declare-fun IsPredicateField_16691_26457 (T@Field_26456_26457) Bool)
(declare-fun IsWandField_16691_26457 (T@Field_26456_26457) Bool)
(declare-fun IsPredicateField_16691_53 (T@Field_26443_53) Bool)
(declare-fun IsWandField_16691_53 (T@Field_26443_53) Bool)
(declare-fun HasDirectPerm_16914_81823 (T@PolymorphicMapType_26404 T@Ref T@Field_39918_39923) Bool)
(declare-fun HasDirectPerm_16914_26457 (T@PolymorphicMapType_26404 T@Ref T@Field_16914_26457) Bool)
(declare-fun HasDirectPerm_16914_53 (T@PolymorphicMapType_26404 T@Ref T@Field_16914_53) Bool)
(declare-fun HasDirectPerm_16914_4198 (T@PolymorphicMapType_26404 T@Ref T@Field_16914_4198) Bool)
(declare-fun HasDirectPerm_16889_80725 (T@PolymorphicMapType_26404 T@Ref T@Field_39010_39015) Bool)
(declare-fun HasDirectPerm_16889_26457 (T@PolymorphicMapType_26404 T@Ref T@Field_16889_26457) Bool)
(declare-fun HasDirectPerm_16889_53 (T@PolymorphicMapType_26404 T@Ref T@Field_16889_53) Bool)
(declare-fun HasDirectPerm_16889_4198 (T@PolymorphicMapType_26404 T@Ref T@Field_16889_4198) Bool)
(declare-fun HasDirectPerm_16691_79584 (T@PolymorphicMapType_26404 T@Ref T@Field_16691_39015) Bool)
(declare-fun HasDirectPerm_16691_26457 (T@PolymorphicMapType_26404 T@Ref T@Field_26456_26457) Bool)
(declare-fun HasDirectPerm_16691_53 (T@PolymorphicMapType_26404 T@Ref T@Field_26443_53) Bool)
(declare-fun HasDirectPerm_16691_4198 (T@PolymorphicMapType_26404 T@Ref T@Field_32744_4198) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun foo_twos (T@PolymorphicMapType_26383 (Array T@Ref Bool) (Array Int Bool)) Int)
(declare-fun |foo_twos#frame| (T@FrameType (Array T@Ref Bool) (Array Int Bool)) Int)
(declare-fun FrameFragment_4348 (Int) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_26404 T@PolymorphicMapType_26404 T@PolymorphicMapType_26404) Bool)
(declare-fun |Set#Difference_13832| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Difference_17067| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_13862| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Set#UnionOne_17073| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_16914_16915 (T@Field_37402_37403) Int)
(declare-fun getPredWandId_16889_16890 (T@Field_35231_35232) Int)
(declare-fun |Set#Empty_13862| () (Array Int Bool))
(declare-fun |Set#Empty_17073| () (Array T@Ref Bool))
(declare-fun |foo_vals#frame| (T@FrameType (Array T@Ref Bool)) Int)
(declare-fun |foo_vals#condqp1| (T@PolymorphicMapType_26383 (Array T@Ref Bool)) Int)
(declare-fun |foo_ones#frame| (T@FrameType (Array T@Ref Bool)) Int)
(declare-fun |sk_foo_vals#condqp1| (Int Int) T@Ref)
(declare-fun InsidePredicate_37402_35231 (T@Field_37402_37403 T@FrameType T@Field_35231_35232 T@FrameType) Bool)
(declare-fun InsidePredicate_37402_26443 (T@Field_37402_37403 T@FrameType T@Field_16691_16890 T@FrameType) Bool)
(declare-fun InsidePredicate_35231_37402 (T@Field_35231_35232 T@FrameType T@Field_37402_37403 T@FrameType) Bool)
(declare-fun InsidePredicate_35231_26443 (T@Field_35231_35232 T@FrameType T@Field_16691_16890 T@FrameType) Bool)
(declare-fun InsidePredicate_26443_37402 (T@Field_16691_16890 T@FrameType T@Field_37402_37403 T@FrameType) Bool)
(declare-fun InsidePredicate_26443_35231 (T@Field_16691_16890 T@FrameType T@Field_35231_35232 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_26383) (Heap1 T@PolymorphicMapType_26383) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_26383) (Heap1Heap T@PolymorphicMapType_26383) (vas (Array T@Ref Bool)) (vis (Array Int Bool)) ) (!  (=> (and (=  (and (and (select vas (|sk_foo_twos#condqp3| (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis))) (select vis (|sk_foo_twos#condqp3_1| (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis)))) (< NoPerm FullPerm))  (and (and (select vas (|sk_foo_twos#condqp3| (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis))) (select vis (|sk_foo_twos#condqp3_1| (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis)))) (< NoPerm FullPerm))) (=> (and (and (select vas (|sk_foo_twos#condqp3| (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis))) (select vis (|sk_foo_twos#condqp3_1| (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap2Heap) null (two (|sk_foo_twos#condqp3| (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis)) (|sk_foo_twos#condqp3_1| (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis)))) (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap1Heap) null (two (|sk_foo_twos#condqp3| (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis)) (|sk_foo_twos#condqp3_1| (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis))))))) (= (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis)))
 :qid |stdinbpl.713:15|
 :skolemid |105|
 :pattern ( (|foo_twos#condqp3| Heap2Heap vas vis) (|foo_twos#condqp3| Heap1Heap vas vis) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap T@PolymorphicMapType_26383) (Mask T@PolymorphicMapType_26404) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_26383) (Heap1@@0 T@PolymorphicMapType_26383) (Heap2 T@PolymorphicMapType_26383) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_39918_39923) ) (!  (not (select (|PolymorphicMapType_26932_37402_85961#PolymorphicMapType_26932| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_37402_85961#PolymorphicMapType_26932| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_37402_37403) ) (!  (not (select (|PolymorphicMapType_26932_37402_35232#PolymorphicMapType_26932| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_37402_35232#PolymorphicMapType_26932| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16914_26457) ) (!  (not (select (|PolymorphicMapType_26932_37402_26457#PolymorphicMapType_26932| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_37402_26457#PolymorphicMapType_26932| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16914_53) ) (!  (not (select (|PolymorphicMapType_26932_37402_53#PolymorphicMapType_26932| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_37402_53#PolymorphicMapType_26932| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16914_4198) ) (!  (not (select (|PolymorphicMapType_26932_37402_4198#PolymorphicMapType_26932| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_37402_4198#PolymorphicMapType_26932| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_39010_39015) ) (!  (not (select (|PolymorphicMapType_26932_35231_84913#PolymorphicMapType_26932| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_35231_84913#PolymorphicMapType_26932| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_35231_35232) ) (!  (not (select (|PolymorphicMapType_26932_35231_35232#PolymorphicMapType_26932| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_35231_35232#PolymorphicMapType_26932| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16889_26457) ) (!  (not (select (|PolymorphicMapType_26932_35231_26457#PolymorphicMapType_26932| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_35231_26457#PolymorphicMapType_26932| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_16889_53) ) (!  (not (select (|PolymorphicMapType_26932_35231_53#PolymorphicMapType_26932| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_35231_53#PolymorphicMapType_26932| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_16889_4198) ) (!  (not (select (|PolymorphicMapType_26932_35231_4198#PolymorphicMapType_26932| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_35231_4198#PolymorphicMapType_26932| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_16691_39015) ) (!  (not (select (|PolymorphicMapType_26932_16691_83865#PolymorphicMapType_26932| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_16691_83865#PolymorphicMapType_26932| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_16691_16890) ) (!  (not (select (|PolymorphicMapType_26932_16691_35232#PolymorphicMapType_26932| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_16691_35232#PolymorphicMapType_26932| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_26456_26457) ) (!  (not (select (|PolymorphicMapType_26932_16691_26457#PolymorphicMapType_26932| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_16691_26457#PolymorphicMapType_26932| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_26443_53) ) (!  (not (select (|PolymorphicMapType_26932_16691_53#PolymorphicMapType_26932| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_16691_53#PolymorphicMapType_26932| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_32744_4198) ) (!  (not (select (|PolymorphicMapType_26932_16691_4198#PolymorphicMapType_26932| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26932_16691_4198#PolymorphicMapType_26932| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((a_2 T@Ref) (i Int) ) (! (IsPredicateField_16914_16915 (two a_2 i))
 :qid |stdinbpl.847:15|
 :skolemid |119|
 :pattern ( (two a_2 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_26383) (vas@@0 (Array T@Ref Bool)) (vis@@0 (Array Int Bool)) ) (! (dummyFunction_4495 (|foo_twos#triggerStateless| vas@@0 vis@@0))
 :qid |stdinbpl.695:15|
 :skolemid |103|
 :pattern ( (|foo_twos'| Heap@@0 vas@@0 vis@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_26383) (a_2@@0 T@Ref) (i@@0 Int) ) (! (|two#everUsed_16914| (two a_2@@0 i@@0))
 :qid |stdinbpl.866:15|
 :skolemid |123|
 :pattern ( (|two#trigger_16914| Heap@@1 (two a_2@@0 i@@0)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.392:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a_2@@1 T@Ref) ) (! (IsPredicateField_16889_16890 (one a_2@@1))
 :qid |stdinbpl.792:15|
 :skolemid |113|
 :pattern ( (one a_2@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_26383) (vas@@1 (Array T@Ref Bool)) ) (! (dummyFunction_4495 (|foo_vals#triggerStateless| vas@@1))
 :qid |stdinbpl.505:15|
 :skolemid |83|
 :pattern ( (|foo_vals'| Heap@@2 vas@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_26383) (vas@@2 (Array T@Ref Bool)) ) (! (dummyFunction_4495 (|foo_ones#triggerStateless| vas@@2))
 :qid |stdinbpl.599:15|
 :skolemid |93|
 :pattern ( (|foo_ones'| Heap@@3 vas@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_26383) (a_2@@2 T@Ref) ) (! (|one#everUsed_16889| (one a_2@@2))
 :qid |stdinbpl.811:15|
 :skolemid |117|
 :pattern ( (|one#trigger_16889| Heap@@4 (one a_2@@2)))
)))
(assert (forall ((a@@0 (Array Int Bool)) (b@@0 (Array Int Bool)) ) (! (= (|Set#Union_13862| (|Set#Union_13862| a@@0 b@@0) b@@0) (|Set#Union_13862| a@@0 b@@0))
 :qid |stdinbpl.344:18|
 :skolemid |38|
 :pattern ( (|Set#Union_13862| (|Set#Union_13862| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Union_17073| (|Set#Union_17073| a@@1 b@@1) b@@1) (|Set#Union_17073| a@@1 b@@1))
 :qid |stdinbpl.344:18|
 :skolemid |38|
 :pattern ( (|Set#Union_17073| (|Set#Union_17073| a@@1 b@@1) b@@1))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (|Set#Intersection_13862| (|Set#Intersection_13862| a@@2 b@@2) b@@2) (|Set#Intersection_13862| a@@2 b@@2))
 :qid |stdinbpl.348:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_13862| (|Set#Intersection_13862| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_17073| (|Set#Intersection_17073| a@@3 b@@3) b@@3) (|Set#Intersection_17073| a@@3 b@@3))
 :qid |stdinbpl.348:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_17073| (|Set#Intersection_17073| a@@3 b@@3) b@@3))
)))
(assert (forall ((r Int) (o Int) ) (! (= (select (|Set#Singleton_13862| r) o) (= r o))
 :qid |stdinbpl.313:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_13862| r) o))
)))
(assert (forall ((r@@0 T@Ref) (o@@0 T@Ref) ) (! (= (select (|Set#Singleton_17073| r@@0) o@@0) (= r@@0 o@@0))
 :qid |stdinbpl.313:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_17073| r@@0) o@@0))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_26383) (Heap1Heap@@0 T@PolymorphicMapType_26383) (vas@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select vas@@3 (|sk_foo_ones#condqp2| (|foo_ones#condqp2| Heap2Heap@@0 vas@@3) (|foo_ones#condqp2| Heap1Heap@@0 vas@@3))) (< NoPerm FullPerm))  (and (select vas@@3 (|sk_foo_ones#condqp2| (|foo_ones#condqp2| Heap2Heap@@0 vas@@3) (|foo_ones#condqp2| Heap1Heap@@0 vas@@3))) (< NoPerm FullPerm))) (=> (and (select vas@@3 (|sk_foo_ones#condqp2| (|foo_ones#condqp2| Heap2Heap@@0 vas@@3) (|foo_ones#condqp2| Heap1Heap@@0 vas@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap2Heap@@0) null (one (|sk_foo_ones#condqp2| (|foo_ones#condqp2| Heap2Heap@@0 vas@@3) (|foo_ones#condqp2| Heap1Heap@@0 vas@@3)))) (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap1Heap@@0) null (one (|sk_foo_ones#condqp2| (|foo_ones#condqp2| Heap2Heap@@0 vas@@3) (|foo_ones#condqp2| Heap1Heap@@0 vas@@3))))))) (= (|foo_ones#condqp2| Heap2Heap@@0 vas@@3) (|foo_ones#condqp2| Heap1Heap@@0 vas@@3)))
 :qid |stdinbpl.616:15|
 :skolemid |95|
 :pattern ( (|foo_ones#condqp2| Heap2Heap@@0 vas@@3) (|foo_ones#condqp2| Heap1Heap@@0 vas@@3) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((a@@4 (Array Int Bool)) (b@@4 (Array Int Bool)) ) (! (= (+ (|Set#Card_13862| (|Set#Union_13862| a@@4 b@@4)) (|Set#Card_13862| (|Set#Intersection_13862| a@@4 b@@4))) (+ (|Set#Card_13862| a@@4) (|Set#Card_13862| b@@4)))
 :qid |stdinbpl.352:18|
 :skolemid |42|
 :pattern ( (|Set#Card_13862| (|Set#Union_13862| a@@4 b@@4)))
 :pattern ( (|Set#Card_13862| (|Set#Intersection_13862| a@@4 b@@4)))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_17073| (|Set#Union_17073| a@@5 b@@5)) (|Set#Card_17073| (|Set#Intersection_17073| a@@5 b@@5))) (+ (|Set#Card_17073| a@@5) (|Set#Card_17073| b@@5)))
 :qid |stdinbpl.352:18|
 :skolemid |42|
 :pattern ( (|Set#Card_17073| (|Set#Union_17073| a@@5 b@@5)))
 :pattern ( (|Set#Card_17073| (|Set#Intersection_17073| a@@5 b@@5)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_26383) (vas@@4 (Array T@Ref Bool)) ) (!  (and (= (foo_vals Heap@@5 vas@@4) (|foo_vals'| Heap@@5 vas@@4)) (dummyFunction_4495 (|foo_vals#triggerStateless| vas@@4)))
 :qid |stdinbpl.501:15|
 :skolemid |82|
 :pattern ( (foo_vals Heap@@5 vas@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_26383) (vas@@5 (Array T@Ref Bool)) ) (!  (and (= (foo_ones Heap@@6 vas@@5) (|foo_ones'| Heap@@6 vas@@5)) (dummyFunction_4495 (|foo_ones#triggerStateless| vas@@5)))
 :qid |stdinbpl.595:15|
 :skolemid |92|
 :pattern ( (foo_ones Heap@@6 vas@@5))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |stdinbpl.395:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_26383) (ExhaleHeap T@PolymorphicMapType_26383) (Mask@@0 T@PolymorphicMapType_26404) (pm_f_24 T@Field_37402_37403) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16914_16915 Mask@@0 null pm_f_24) (IsPredicateField_16914_16915 pm_f_24)) (= (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@7) null (PredicateMaskField_16914 pm_f_24)) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap) null (PredicateMaskField_16914 pm_f_24)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@0) (IsPredicateField_16914_16915 pm_f_24) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap) null (PredicateMaskField_16914 pm_f_24)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_26383) (ExhaleHeap@@0 T@PolymorphicMapType_26383) (Mask@@1 T@PolymorphicMapType_26404) (pm_f_24@@0 T@Field_35231_35232) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16889_16890 Mask@@1 null pm_f_24@@0) (IsPredicateField_16889_16890 pm_f_24@@0)) (= (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@8) null (PredicateMaskField_16889 pm_f_24@@0)) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@0) null (PredicateMaskField_16889 pm_f_24@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@1) (IsPredicateField_16889_16890 pm_f_24@@0) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@0) null (PredicateMaskField_16889 pm_f_24@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_26383) (ExhaleHeap@@1 T@PolymorphicMapType_26383) (Mask@@2 T@PolymorphicMapType_26404) (pm_f_24@@1 T@Field_16691_16890) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_16691_16890 Mask@@2 null pm_f_24@@1) (IsPredicateField_16691_82068 pm_f_24@@1)) (= (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@9) null (PredicateMaskField_16691 pm_f_24@@1)) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@1) null (PredicateMaskField_16691 pm_f_24@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@2) (IsPredicateField_16691_82068 pm_f_24@@1) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@1) null (PredicateMaskField_16691 pm_f_24@@1)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_26383) (ExhaleHeap@@2 T@PolymorphicMapType_26383) (Mask@@3 T@PolymorphicMapType_26404) (pm_f_24@@2 T@Field_37402_37403) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_16914_16915 Mask@@3 null pm_f_24@@2) (IsWandField_16914_87764 pm_f_24@@2)) (= (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@10) null (WandMaskField_16914 pm_f_24@@2)) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@2) null (WandMaskField_16914 pm_f_24@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@3) (IsWandField_16914_87764 pm_f_24@@2) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@2) null (WandMaskField_16914 pm_f_24@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_26383) (ExhaleHeap@@3 T@PolymorphicMapType_26383) (Mask@@4 T@PolymorphicMapType_26404) (pm_f_24@@3 T@Field_35231_35232) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_16889_16890 Mask@@4 null pm_f_24@@3) (IsWandField_16889_87407 pm_f_24@@3)) (= (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@11) null (WandMaskField_16889 pm_f_24@@3)) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@3) null (WandMaskField_16889 pm_f_24@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@4) (IsWandField_16889_87407 pm_f_24@@3) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@3) null (WandMaskField_16889 pm_f_24@@3)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_26383) (ExhaleHeap@@4 T@PolymorphicMapType_26383) (Mask@@5 T@PolymorphicMapType_26404) (pm_f_24@@4 T@Field_16691_16890) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_16691_16890 Mask@@5 null pm_f_24@@4) (IsWandField_16691_87050 pm_f_24@@4)) (= (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@12) null (WandMaskField_16691 pm_f_24@@4)) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@4) null (WandMaskField_16691 pm_f_24@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@5) (IsWandField_16691_87050 pm_f_24@@4) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@4) null (WandMaskField_16691 pm_f_24@@4)))
)))
(assert (forall ((a_2@@3 T@Ref) (i@@1 Int) (a2 T@Ref) (i2 Int) ) (!  (=> (= (two a_2@@3 i@@1) (two a2 i2)) (and (= a_2@@3 a2) (= i@@1 i2)))
 :qid |stdinbpl.857:15|
 :skolemid |121|
 :pattern ( (two a_2@@3 i@@1) (two a2 i2))
)))
(assert (forall ((a_2@@4 T@Ref) (i@@2 Int) (a2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|two#sm| a_2@@4 i@@2) (|two#sm| a2@@0 i2@@0)) (and (= a_2@@4 a2@@0) (= i@@2 i2@@0)))
 :qid |stdinbpl.861:15|
 :skolemid |122|
 :pattern ( (|two#sm| a_2@@4 i@@2) (|two#sm| a2@@0 i2@@0))
)))
(assert (forall ((a_2@@5 T@Ref) (a2@@1 T@Ref) ) (!  (=> (= (one a_2@@5) (one a2@@1)) (= a_2@@5 a2@@1))
 :qid |stdinbpl.802:15|
 :skolemid |115|
 :pattern ( (one a_2@@5) (one a2@@1))
)))
(assert (forall ((a_2@@6 T@Ref) (a2@@2 T@Ref) ) (!  (=> (= (|one#sm| a_2@@6) (|one#sm| a2@@2)) (= a_2@@6 a2@@2))
 :qid |stdinbpl.806:15|
 :skolemid |116|
 :pattern ( (|one#sm| a_2@@6) (|one#sm| a2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_26383) (ExhaleHeap@@5 T@PolymorphicMapType_26383) (Mask@@6 T@PolymorphicMapType_26404) (o_52 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@13) o_52 $allocated) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@5) o_52 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@5) o_52 $allocated))
)))
(assert (forall ((p T@Field_37402_37403) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_37402_37402 p v_1 p w))
 :qid |stdinbpl.290:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_37402_37402 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_35231_35232) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_35231_35231 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.290:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35231_35231 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_16691_16890) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_26443_26443 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.290:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26443_26443 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_16691_4198 val)))
(assert  (not (IsWandField_16691_4198 val)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_26383) (ExhaleHeap@@6 T@PolymorphicMapType_26383) (Mask@@7 T@PolymorphicMapType_26404) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@14 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_26404) (o_2@@14 T@Ref) (f_4@@14 T@Field_39918_39923) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_16914_98082 f_4@@14))) (not (IsWandField_16914_98098 f_4@@14))) (<= (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_26404) (o_2@@15 T@Ref) (f_4@@15 T@Field_16914_26457) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_16914_26457 f_4@@15))) (not (IsWandField_16914_26457 f_4@@15))) (<= (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_26404) (o_2@@16 T@Ref) (f_4@@16 T@Field_16914_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_16914_53 f_4@@16))) (not (IsWandField_16914_53 f_4@@16))) (<= (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_26404) (o_2@@17 T@Ref) (f_4@@17 T@Field_37402_37403) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_16914_16915 f_4@@17))) (not (IsWandField_16914_87764 f_4@@17))) (<= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_26404) (o_2@@18 T@Ref) (f_4@@18 T@Field_16914_4198) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_16914_4198 f_4@@18))) (not (IsWandField_16914_4198 f_4@@18))) (<= (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_26404) (o_2@@19 T@Ref) (f_4@@19 T@Field_39010_39015) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_16889_97251 f_4@@19))) (not (IsWandField_16889_97267 f_4@@19))) (<= (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_26404) (o_2@@20 T@Ref) (f_4@@20 T@Field_16889_26457) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_16889_26457 f_4@@20))) (not (IsWandField_16889_26457 f_4@@20))) (<= (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_26404) (o_2@@21 T@Ref) (f_4@@21 T@Field_16889_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_16889_53 f_4@@21))) (not (IsWandField_16889_53 f_4@@21))) (<= (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_26404) (o_2@@22 T@Ref) (f_4@@22 T@Field_35231_35232) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_16889_16890 f_4@@22))) (not (IsWandField_16889_87407 f_4@@22))) (<= (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_26404) (o_2@@23 T@Ref) (f_4@@23 T@Field_16889_4198) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_16889_4198 f_4@@23))) (not (IsWandField_16889_4198 f_4@@23))) (<= (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_26404) (o_2@@24 T@Ref) (f_4@@24 T@Field_16691_39015) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_16691_96420 f_4@@24))) (not (IsWandField_16691_96436 f_4@@24))) (<= (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_26404) (o_2@@25 T@Ref) (f_4@@25 T@Field_26456_26457) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_16691_26457 f_4@@25))) (not (IsWandField_16691_26457 f_4@@25))) (<= (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_26404) (o_2@@26 T@Ref) (f_4@@26 T@Field_26443_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_16691_53 f_4@@26))) (not (IsWandField_16691_53 f_4@@26))) (<= (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_26404) (o_2@@27 T@Ref) (f_4@@27 T@Field_16691_16890) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_16691_82068 f_4@@27))) (not (IsWandField_16691_87050 f_4@@27))) (<= (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_26404) (o_2@@28 T@Ref) (f_4@@28 T@Field_32744_4198) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_16691_4198 f_4@@28))) (not (IsWandField_16691_4198 f_4@@28))) (<= (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_26404) (o_2@@29 T@Ref) (f_4@@29 T@Field_39918_39923) ) (! (= (HasDirectPerm_16914_81823 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16914_81823 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_26404) (o_2@@30 T@Ref) (f_4@@30 T@Field_16914_26457) ) (! (= (HasDirectPerm_16914_26457 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16914_26457 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_26404) (o_2@@31 T@Ref) (f_4@@31 T@Field_16914_53) ) (! (= (HasDirectPerm_16914_53 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16914_53 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_26404) (o_2@@32 T@Ref) (f_4@@32 T@Field_37402_37403) ) (! (= (HasDirectPerm_16914_16915 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16914_16915 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_26404) (o_2@@33 T@Ref) (f_4@@33 T@Field_16914_4198) ) (! (= (HasDirectPerm_16914_4198 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16914_4198 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_26404) (o_2@@34 T@Ref) (f_4@@34 T@Field_39010_39015) ) (! (= (HasDirectPerm_16889_80725 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16889_80725 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_26404) (o_2@@35 T@Ref) (f_4@@35 T@Field_16889_26457) ) (! (= (HasDirectPerm_16889_26457 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16889_26457 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_26404) (o_2@@36 T@Ref) (f_4@@36 T@Field_16889_53) ) (! (= (HasDirectPerm_16889_53 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16889_53 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_26404) (o_2@@37 T@Ref) (f_4@@37 T@Field_35231_35232) ) (! (= (HasDirectPerm_16889_16890 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16889_16890 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_26404) (o_2@@38 T@Ref) (f_4@@38 T@Field_16889_4198) ) (! (= (HasDirectPerm_16889_4198 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16889_4198 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_26404) (o_2@@39 T@Ref) (f_4@@39 T@Field_16691_39015) ) (! (= (HasDirectPerm_16691_79584 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16691_79584 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_26404) (o_2@@40 T@Ref) (f_4@@40 T@Field_26456_26457) ) (! (= (HasDirectPerm_16691_26457 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16691_26457 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_26404) (o_2@@41 T@Ref) (f_4@@41 T@Field_26443_53) ) (! (= (HasDirectPerm_16691_53 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16691_53 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_26404) (o_2@@42 T@Ref) (f_4@@42 T@Field_16691_16890) ) (! (= (HasDirectPerm_16691_16890 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16691_16890 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_26404) (o_2@@43 T@Ref) (f_4@@43 T@Field_32744_4198) ) (! (= (HasDirectPerm_16691_4198 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16691_4198 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.278:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_26383) (ExhaleHeap@@7 T@PolymorphicMapType_26383) (Mask@@38 T@PolymorphicMapType_26404) (o_52@@0 T@Ref) (f_63 T@Field_39918_39923) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_16914_81823 Mask@@38 o_52@@0 f_63) (= (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@15) o_52@@0 f_63) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@7) o_52@@0 f_63))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@7) o_52@@0 f_63))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_26383) (ExhaleHeap@@8 T@PolymorphicMapType_26383) (Mask@@39 T@PolymorphicMapType_26404) (o_52@@1 T@Ref) (f_63@@0 T@Field_16914_26457) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_16914_26457 Mask@@39 o_52@@1 f_63@@0) (= (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@16) o_52@@1 f_63@@0) (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@8) o_52@@1 f_63@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@8) o_52@@1 f_63@@0))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_26383) (ExhaleHeap@@9 T@PolymorphicMapType_26383) (Mask@@40 T@PolymorphicMapType_26404) (o_52@@2 T@Ref) (f_63@@1 T@Field_16914_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_16914_53 Mask@@40 o_52@@2 f_63@@1) (= (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@17) o_52@@2 f_63@@1) (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@9) o_52@@2 f_63@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@9) o_52@@2 f_63@@1))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_26383) (ExhaleHeap@@10 T@PolymorphicMapType_26383) (Mask@@41 T@PolymorphicMapType_26404) (o_52@@3 T@Ref) (f_63@@2 T@Field_37402_37403) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_16914_16915 Mask@@41 o_52@@3 f_63@@2) (= (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@18) o_52@@3 f_63@@2) (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@10) o_52@@3 f_63@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@10) o_52@@3 f_63@@2))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_26383) (ExhaleHeap@@11 T@PolymorphicMapType_26383) (Mask@@42 T@PolymorphicMapType_26404) (o_52@@4 T@Ref) (f_63@@3 T@Field_16914_4198) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_16914_4198 Mask@@42 o_52@@4 f_63@@3) (= (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@19) o_52@@4 f_63@@3) (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@11) o_52@@4 f_63@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@11) o_52@@4 f_63@@3))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_26383) (ExhaleHeap@@12 T@PolymorphicMapType_26383) (Mask@@43 T@PolymorphicMapType_26404) (o_52@@5 T@Ref) (f_63@@4 T@Field_39010_39015) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_16889_80725 Mask@@43 o_52@@5 f_63@@4) (= (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@20) o_52@@5 f_63@@4) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@12) o_52@@5 f_63@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@12) o_52@@5 f_63@@4))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_26383) (ExhaleHeap@@13 T@PolymorphicMapType_26383) (Mask@@44 T@PolymorphicMapType_26404) (o_52@@6 T@Ref) (f_63@@5 T@Field_16889_26457) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_16889_26457 Mask@@44 o_52@@6 f_63@@5) (= (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@21) o_52@@6 f_63@@5) (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@13) o_52@@6 f_63@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@13) o_52@@6 f_63@@5))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_26383) (ExhaleHeap@@14 T@PolymorphicMapType_26383) (Mask@@45 T@PolymorphicMapType_26404) (o_52@@7 T@Ref) (f_63@@6 T@Field_16889_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_16889_53 Mask@@45 o_52@@7 f_63@@6) (= (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@22) o_52@@7 f_63@@6) (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@14) o_52@@7 f_63@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@14) o_52@@7 f_63@@6))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_26383) (ExhaleHeap@@15 T@PolymorphicMapType_26383) (Mask@@46 T@PolymorphicMapType_26404) (o_52@@8 T@Ref) (f_63@@7 T@Field_35231_35232) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_16889_16890 Mask@@46 o_52@@8 f_63@@7) (= (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@23) o_52@@8 f_63@@7) (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@15) o_52@@8 f_63@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@15) o_52@@8 f_63@@7))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_26383) (ExhaleHeap@@16 T@PolymorphicMapType_26383) (Mask@@47 T@PolymorphicMapType_26404) (o_52@@9 T@Ref) (f_63@@8 T@Field_16889_4198) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_16889_4198 Mask@@47 o_52@@9 f_63@@8) (= (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@24) o_52@@9 f_63@@8) (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@16) o_52@@9 f_63@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@16) o_52@@9 f_63@@8))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_26383) (ExhaleHeap@@17 T@PolymorphicMapType_26383) (Mask@@48 T@PolymorphicMapType_26404) (o_52@@10 T@Ref) (f_63@@9 T@Field_16691_39015) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_16691_79584 Mask@@48 o_52@@10 f_63@@9) (= (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@25) o_52@@10 f_63@@9) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@17) o_52@@10 f_63@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@17) o_52@@10 f_63@@9))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_26383) (ExhaleHeap@@18 T@PolymorphicMapType_26383) (Mask@@49 T@PolymorphicMapType_26404) (o_52@@11 T@Ref) (f_63@@10 T@Field_26456_26457) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_16691_26457 Mask@@49 o_52@@11 f_63@@10) (= (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@26) o_52@@11 f_63@@10) (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@18) o_52@@11 f_63@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@18) o_52@@11 f_63@@10))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_26383) (ExhaleHeap@@19 T@PolymorphicMapType_26383) (Mask@@50 T@PolymorphicMapType_26404) (o_52@@12 T@Ref) (f_63@@11 T@Field_26443_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_16691_53 Mask@@50 o_52@@12 f_63@@11) (= (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@27) o_52@@12 f_63@@11) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@19) o_52@@12 f_63@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@19) o_52@@12 f_63@@11))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_26383) (ExhaleHeap@@20 T@PolymorphicMapType_26383) (Mask@@51 T@PolymorphicMapType_26404) (o_52@@13 T@Ref) (f_63@@12 T@Field_16691_16890) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_16691_16890 Mask@@51 o_52@@13 f_63@@12) (= (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@28) o_52@@13 f_63@@12) (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@20) o_52@@13 f_63@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@20) o_52@@13 f_63@@12))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_26383) (ExhaleHeap@@21 T@PolymorphicMapType_26383) (Mask@@52 T@PolymorphicMapType_26404) (o_52@@14 T@Ref) (f_63@@13 T@Field_32744_4198) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_16691_4198 Mask@@52 o_52@@14 f_63@@13) (= (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@29) o_52@@14 f_63@@13) (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@21) o_52@@14 f_63@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@21) o_52@@14 f_63@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_39918_39923) ) (! (= (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_16914_26457) ) (! (= (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_16914_53) ) (! (= (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_37402_37403) ) (! (= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_16914_4198) ) (! (= (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_39010_39015) ) (! (= (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_16889_26457) ) (! (= (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_16889_53) ) (! (= (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_35231_35232) ) (! (= (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_16889_4198) ) (! (= (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_16691_39015) ) (! (= (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_26456_26457) ) (! (= (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_26443_53) ) (! (= (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_16691_16890) ) (! (= (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_32744_4198) ) (! (= (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_26383) (vas@@6 (Array T@Ref Bool)) (vis@@1 (Array Int Bool)) ) (!  (and (= (foo_twos Heap@@30 vas@@6 vis@@1) (|foo_twos'| Heap@@30 vas@@6 vis@@1)) (dummyFunction_4495 (|foo_twos#triggerStateless| vas@@6 vis@@1)))
 :qid |stdinbpl.691:15|
 :skolemid |102|
 :pattern ( (foo_twos Heap@@30 vas@@6 vis@@1))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_26383) (Mask@@53 T@PolymorphicMapType_26404) (vas@@7 (Array T@Ref Bool)) (vis@@2 (Array Int Bool)) ) (!  (=> (state Heap@@31 Mask@@53) (= (|foo_twos'| Heap@@31 vas@@7 vis@@2) (|foo_twos#frame| (FrameFragment_4348 (|foo_twos#condqp3| Heap@@31 vas@@7 vis@@2)) vas@@7 vis@@2)))
 :qid |stdinbpl.702:15|
 :skolemid |104|
 :pattern ( (state Heap@@31 Mask@@53) (|foo_twos'| Heap@@31 vas@@7 vis@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_26404) (SummandMask1 T@PolymorphicMapType_26404) (SummandMask2 T@PolymorphicMapType_26404) (o_2@@59 T@Ref) (f_4@@59 T@Field_39918_39923) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_26404) (SummandMask1@@0 T@PolymorphicMapType_26404) (SummandMask2@@0 T@PolymorphicMapType_26404) (o_2@@60 T@Ref) (f_4@@60 T@Field_16914_26457) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_26404) (SummandMask1@@1 T@PolymorphicMapType_26404) (SummandMask2@@1 T@PolymorphicMapType_26404) (o_2@@61 T@Ref) (f_4@@61 T@Field_16914_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_26404) (SummandMask1@@2 T@PolymorphicMapType_26404) (SummandMask2@@2 T@PolymorphicMapType_26404) (o_2@@62 T@Ref) (f_4@@62 T@Field_37402_37403) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_26404) (SummandMask1@@3 T@PolymorphicMapType_26404) (SummandMask2@@3 T@PolymorphicMapType_26404) (o_2@@63 T@Ref) (f_4@@63 T@Field_16914_4198) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_26404) (SummandMask1@@4 T@PolymorphicMapType_26404) (SummandMask2@@4 T@PolymorphicMapType_26404) (o_2@@64 T@Ref) (f_4@@64 T@Field_39010_39015) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_26404) (SummandMask1@@5 T@PolymorphicMapType_26404) (SummandMask2@@5 T@PolymorphicMapType_26404) (o_2@@65 T@Ref) (f_4@@65 T@Field_16889_26457) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_26404) (SummandMask1@@6 T@PolymorphicMapType_26404) (SummandMask2@@6 T@PolymorphicMapType_26404) (o_2@@66 T@Ref) (f_4@@66 T@Field_16889_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_26404) (SummandMask1@@7 T@PolymorphicMapType_26404) (SummandMask2@@7 T@PolymorphicMapType_26404) (o_2@@67 T@Ref) (f_4@@67 T@Field_35231_35232) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_26404) (SummandMask1@@8 T@PolymorphicMapType_26404) (SummandMask2@@8 T@PolymorphicMapType_26404) (o_2@@68 T@Ref) (f_4@@68 T@Field_16889_4198) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_26404) (SummandMask1@@9 T@PolymorphicMapType_26404) (SummandMask2@@9 T@PolymorphicMapType_26404) (o_2@@69 T@Ref) (f_4@@69 T@Field_16691_39015) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_26404) (SummandMask1@@10 T@PolymorphicMapType_26404) (SummandMask2@@10 T@PolymorphicMapType_26404) (o_2@@70 T@Ref) (f_4@@70 T@Field_26456_26457) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_26404) (SummandMask1@@11 T@PolymorphicMapType_26404) (SummandMask2@@11 T@PolymorphicMapType_26404) (o_2@@71 T@Ref) (f_4@@71 T@Field_26443_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_26404) (SummandMask1@@12 T@PolymorphicMapType_26404) (SummandMask2@@12 T@PolymorphicMapType_26404) (o_2@@72 T@Ref) (f_4@@72 T@Field_16691_16890) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_26404) (SummandMask1@@13 T@PolymorphicMapType_26404) (SummandMask2@@13 T@PolymorphicMapType_26404) (o_2@@73 T@Ref) (f_4@@73 T@Field_32744_4198) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_26383) (ExhaleHeap@@22 T@PolymorphicMapType_26383) (Mask@@54 T@PolymorphicMapType_26404) (pm_f_24@@5 T@Field_37402_37403) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@54) (=> (and (HasDirectPerm_16914_16915 Mask@@54 null pm_f_24@@5) (IsPredicateField_16914_16915 pm_f_24@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_24 T@Ref) (f_63@@14 T@Field_32744_4198) ) (!  (=> (select (|PolymorphicMapType_26932_16691_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24 f_63@@14) (= (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@32) o2_24 f_63@@14) (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24 f_63@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24 f_63@@14))
)) (forall ((o2_24@@0 T@Ref) (f_63@@15 T@Field_26443_53) ) (!  (=> (select (|PolymorphicMapType_26932_16691_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@0 f_63@@15) (= (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@32) o2_24@@0 f_63@@15) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@0 f_63@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@0 f_63@@15))
))) (forall ((o2_24@@1 T@Ref) (f_63@@16 T@Field_26456_26457) ) (!  (=> (select (|PolymorphicMapType_26932_16691_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@1 f_63@@16) (= (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@32) o2_24@@1 f_63@@16) (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@1 f_63@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@1 f_63@@16))
))) (forall ((o2_24@@2 T@Ref) (f_63@@17 T@Field_16691_16890) ) (!  (=> (select (|PolymorphicMapType_26932_16691_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@2 f_63@@17) (= (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@32) o2_24@@2 f_63@@17) (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@2 f_63@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@2 f_63@@17))
))) (forall ((o2_24@@3 T@Ref) (f_63@@18 T@Field_16691_39015) ) (!  (=> (select (|PolymorphicMapType_26932_16691_83865#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@3 f_63@@18) (= (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@32) o2_24@@3 f_63@@18) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@3 f_63@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@3 f_63@@18))
))) (forall ((o2_24@@4 T@Ref) (f_63@@19 T@Field_16889_4198) ) (!  (=> (select (|PolymorphicMapType_26932_35231_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@4 f_63@@19) (= (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@32) o2_24@@4 f_63@@19) (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@4 f_63@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@4 f_63@@19))
))) (forall ((o2_24@@5 T@Ref) (f_63@@20 T@Field_16889_53) ) (!  (=> (select (|PolymorphicMapType_26932_35231_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@5 f_63@@20) (= (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@32) o2_24@@5 f_63@@20) (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@5 f_63@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@5 f_63@@20))
))) (forall ((o2_24@@6 T@Ref) (f_63@@21 T@Field_16889_26457) ) (!  (=> (select (|PolymorphicMapType_26932_35231_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@6 f_63@@21) (= (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@32) o2_24@@6 f_63@@21) (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@6 f_63@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@6 f_63@@21))
))) (forall ((o2_24@@7 T@Ref) (f_63@@22 T@Field_35231_35232) ) (!  (=> (select (|PolymorphicMapType_26932_35231_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@7 f_63@@22) (= (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@32) o2_24@@7 f_63@@22) (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@7 f_63@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@7 f_63@@22))
))) (forall ((o2_24@@8 T@Ref) (f_63@@23 T@Field_39010_39015) ) (!  (=> (select (|PolymorphicMapType_26932_35231_84913#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@8 f_63@@23) (= (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@32) o2_24@@8 f_63@@23) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@8 f_63@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@8 f_63@@23))
))) (forall ((o2_24@@9 T@Ref) (f_63@@24 T@Field_16914_4198) ) (!  (=> (select (|PolymorphicMapType_26932_37402_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@9 f_63@@24) (= (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@32) o2_24@@9 f_63@@24) (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@9 f_63@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@9 f_63@@24))
))) (forall ((o2_24@@10 T@Ref) (f_63@@25 T@Field_16914_53) ) (!  (=> (select (|PolymorphicMapType_26932_37402_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@10 f_63@@25) (= (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@32) o2_24@@10 f_63@@25) (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@10 f_63@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@10 f_63@@25))
))) (forall ((o2_24@@11 T@Ref) (f_63@@26 T@Field_16914_26457) ) (!  (=> (select (|PolymorphicMapType_26932_37402_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@11 f_63@@26) (= (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@32) o2_24@@11 f_63@@26) (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@11 f_63@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@11 f_63@@26))
))) (forall ((o2_24@@12 T@Ref) (f_63@@27 T@Field_37402_37403) ) (!  (=> (select (|PolymorphicMapType_26932_37402_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@12 f_63@@27) (= (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@32) o2_24@@12 f_63@@27) (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@12 f_63@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@12 f_63@@27))
))) (forall ((o2_24@@13 T@Ref) (f_63@@28 T@Field_39918_39923) ) (!  (=> (select (|PolymorphicMapType_26932_37402_85961#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) null (PredicateMaskField_16914 pm_f_24@@5))) o2_24@@13 f_63@@28) (= (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@32) o2_24@@13 f_63@@28) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@13 f_63@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@22) o2_24@@13 f_63@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@54) (IsPredicateField_16914_16915 pm_f_24@@5))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_26383) (ExhaleHeap@@23 T@PolymorphicMapType_26383) (Mask@@55 T@PolymorphicMapType_26404) (pm_f_24@@6 T@Field_35231_35232) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@55) (=> (and (HasDirectPerm_16889_16890 Mask@@55 null pm_f_24@@6) (IsPredicateField_16889_16890 pm_f_24@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_24@@14 T@Ref) (f_63@@29 T@Field_32744_4198) ) (!  (=> (select (|PolymorphicMapType_26932_16691_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@14 f_63@@29) (= (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@33) o2_24@@14 f_63@@29) (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@14 f_63@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@14 f_63@@29))
)) (forall ((o2_24@@15 T@Ref) (f_63@@30 T@Field_26443_53) ) (!  (=> (select (|PolymorphicMapType_26932_16691_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@15 f_63@@30) (= (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@33) o2_24@@15 f_63@@30) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@15 f_63@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@15 f_63@@30))
))) (forall ((o2_24@@16 T@Ref) (f_63@@31 T@Field_26456_26457) ) (!  (=> (select (|PolymorphicMapType_26932_16691_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@16 f_63@@31) (= (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@33) o2_24@@16 f_63@@31) (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@16 f_63@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@16 f_63@@31))
))) (forall ((o2_24@@17 T@Ref) (f_63@@32 T@Field_16691_16890) ) (!  (=> (select (|PolymorphicMapType_26932_16691_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@17 f_63@@32) (= (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@33) o2_24@@17 f_63@@32) (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@17 f_63@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@17 f_63@@32))
))) (forall ((o2_24@@18 T@Ref) (f_63@@33 T@Field_16691_39015) ) (!  (=> (select (|PolymorphicMapType_26932_16691_83865#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@18 f_63@@33) (= (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@33) o2_24@@18 f_63@@33) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@18 f_63@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@18 f_63@@33))
))) (forall ((o2_24@@19 T@Ref) (f_63@@34 T@Field_16889_4198) ) (!  (=> (select (|PolymorphicMapType_26932_35231_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@19 f_63@@34) (= (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@33) o2_24@@19 f_63@@34) (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@19 f_63@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@19 f_63@@34))
))) (forall ((o2_24@@20 T@Ref) (f_63@@35 T@Field_16889_53) ) (!  (=> (select (|PolymorphicMapType_26932_35231_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@20 f_63@@35) (= (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@33) o2_24@@20 f_63@@35) (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@20 f_63@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@20 f_63@@35))
))) (forall ((o2_24@@21 T@Ref) (f_63@@36 T@Field_16889_26457) ) (!  (=> (select (|PolymorphicMapType_26932_35231_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@21 f_63@@36) (= (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@33) o2_24@@21 f_63@@36) (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@21 f_63@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@21 f_63@@36))
))) (forall ((o2_24@@22 T@Ref) (f_63@@37 T@Field_35231_35232) ) (!  (=> (select (|PolymorphicMapType_26932_35231_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@22 f_63@@37) (= (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@33) o2_24@@22 f_63@@37) (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@22 f_63@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@22 f_63@@37))
))) (forall ((o2_24@@23 T@Ref) (f_63@@38 T@Field_39010_39015) ) (!  (=> (select (|PolymorphicMapType_26932_35231_84913#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@23 f_63@@38) (= (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) o2_24@@23 f_63@@38) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@23 f_63@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@23 f_63@@38))
))) (forall ((o2_24@@24 T@Ref) (f_63@@39 T@Field_16914_4198) ) (!  (=> (select (|PolymorphicMapType_26932_37402_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@24 f_63@@39) (= (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@33) o2_24@@24 f_63@@39) (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@24 f_63@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@24 f_63@@39))
))) (forall ((o2_24@@25 T@Ref) (f_63@@40 T@Field_16914_53) ) (!  (=> (select (|PolymorphicMapType_26932_37402_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@25 f_63@@40) (= (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@33) o2_24@@25 f_63@@40) (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@25 f_63@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@25 f_63@@40))
))) (forall ((o2_24@@26 T@Ref) (f_63@@41 T@Field_16914_26457) ) (!  (=> (select (|PolymorphicMapType_26932_37402_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@26 f_63@@41) (= (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@33) o2_24@@26 f_63@@41) (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@26 f_63@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@26 f_63@@41))
))) (forall ((o2_24@@27 T@Ref) (f_63@@42 T@Field_37402_37403) ) (!  (=> (select (|PolymorphicMapType_26932_37402_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@27 f_63@@42) (= (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@33) o2_24@@27 f_63@@42) (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@27 f_63@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@27 f_63@@42))
))) (forall ((o2_24@@28 T@Ref) (f_63@@43 T@Field_39918_39923) ) (!  (=> (select (|PolymorphicMapType_26932_37402_85961#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@33) null (PredicateMaskField_16889 pm_f_24@@6))) o2_24@@28 f_63@@43) (= (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@33) o2_24@@28 f_63@@43) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@28 f_63@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@23) o2_24@@28 f_63@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@55) (IsPredicateField_16889_16890 pm_f_24@@6))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_26383) (ExhaleHeap@@24 T@PolymorphicMapType_26383) (Mask@@56 T@PolymorphicMapType_26404) (pm_f_24@@7 T@Field_16691_16890) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@56) (=> (and (HasDirectPerm_16691_16890 Mask@@56 null pm_f_24@@7) (IsPredicateField_16691_82068 pm_f_24@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_24@@29 T@Ref) (f_63@@44 T@Field_32744_4198) ) (!  (=> (select (|PolymorphicMapType_26932_16691_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@29 f_63@@44) (= (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@34) o2_24@@29 f_63@@44) (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@29 f_63@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@29 f_63@@44))
)) (forall ((o2_24@@30 T@Ref) (f_63@@45 T@Field_26443_53) ) (!  (=> (select (|PolymorphicMapType_26932_16691_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@30 f_63@@45) (= (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@34) o2_24@@30 f_63@@45) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@30 f_63@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@30 f_63@@45))
))) (forall ((o2_24@@31 T@Ref) (f_63@@46 T@Field_26456_26457) ) (!  (=> (select (|PolymorphicMapType_26932_16691_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@31 f_63@@46) (= (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@34) o2_24@@31 f_63@@46) (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@31 f_63@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@31 f_63@@46))
))) (forall ((o2_24@@32 T@Ref) (f_63@@47 T@Field_16691_16890) ) (!  (=> (select (|PolymorphicMapType_26932_16691_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@32 f_63@@47) (= (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@34) o2_24@@32 f_63@@47) (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@32 f_63@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@32 f_63@@47))
))) (forall ((o2_24@@33 T@Ref) (f_63@@48 T@Field_16691_39015) ) (!  (=> (select (|PolymorphicMapType_26932_16691_83865#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@33 f_63@@48) (= (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) o2_24@@33 f_63@@48) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@33 f_63@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@33 f_63@@48))
))) (forall ((o2_24@@34 T@Ref) (f_63@@49 T@Field_16889_4198) ) (!  (=> (select (|PolymorphicMapType_26932_35231_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@34 f_63@@49) (= (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@34) o2_24@@34 f_63@@49) (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@34 f_63@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@34 f_63@@49))
))) (forall ((o2_24@@35 T@Ref) (f_63@@50 T@Field_16889_53) ) (!  (=> (select (|PolymorphicMapType_26932_35231_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@35 f_63@@50) (= (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@34) o2_24@@35 f_63@@50) (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@35 f_63@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@35 f_63@@50))
))) (forall ((o2_24@@36 T@Ref) (f_63@@51 T@Field_16889_26457) ) (!  (=> (select (|PolymorphicMapType_26932_35231_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@36 f_63@@51) (= (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@34) o2_24@@36 f_63@@51) (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@36 f_63@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@36 f_63@@51))
))) (forall ((o2_24@@37 T@Ref) (f_63@@52 T@Field_35231_35232) ) (!  (=> (select (|PolymorphicMapType_26932_35231_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@37 f_63@@52) (= (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@34) o2_24@@37 f_63@@52) (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@37 f_63@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@37 f_63@@52))
))) (forall ((o2_24@@38 T@Ref) (f_63@@53 T@Field_39010_39015) ) (!  (=> (select (|PolymorphicMapType_26932_35231_84913#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@38 f_63@@53) (= (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@34) o2_24@@38 f_63@@53) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@38 f_63@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@38 f_63@@53))
))) (forall ((o2_24@@39 T@Ref) (f_63@@54 T@Field_16914_4198) ) (!  (=> (select (|PolymorphicMapType_26932_37402_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@39 f_63@@54) (= (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@34) o2_24@@39 f_63@@54) (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@39 f_63@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@39 f_63@@54))
))) (forall ((o2_24@@40 T@Ref) (f_63@@55 T@Field_16914_53) ) (!  (=> (select (|PolymorphicMapType_26932_37402_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@40 f_63@@55) (= (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@34) o2_24@@40 f_63@@55) (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@40 f_63@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@40 f_63@@55))
))) (forall ((o2_24@@41 T@Ref) (f_63@@56 T@Field_16914_26457) ) (!  (=> (select (|PolymorphicMapType_26932_37402_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@41 f_63@@56) (= (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@34) o2_24@@41 f_63@@56) (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@41 f_63@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@41 f_63@@56))
))) (forall ((o2_24@@42 T@Ref) (f_63@@57 T@Field_37402_37403) ) (!  (=> (select (|PolymorphicMapType_26932_37402_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@42 f_63@@57) (= (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@34) o2_24@@42 f_63@@57) (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@42 f_63@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@42 f_63@@57))
))) (forall ((o2_24@@43 T@Ref) (f_63@@58 T@Field_39918_39923) ) (!  (=> (select (|PolymorphicMapType_26932_37402_85961#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@34) null (PredicateMaskField_16691 pm_f_24@@7))) o2_24@@43 f_63@@58) (= (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@34) o2_24@@43 f_63@@58) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@43 f_63@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@24) o2_24@@43 f_63@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@56) (IsPredicateField_16691_82068 pm_f_24@@7))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_26383) (ExhaleHeap@@25 T@PolymorphicMapType_26383) (Mask@@57 T@PolymorphicMapType_26404) (pm_f_24@@8 T@Field_37402_37403) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@25 Mask@@57) (=> (and (HasDirectPerm_16914_16915 Mask@@57 null pm_f_24@@8) (IsWandField_16914_87764 pm_f_24@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_24@@44 T@Ref) (f_63@@59 T@Field_32744_4198) ) (!  (=> (select (|PolymorphicMapType_26932_16691_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@44 f_63@@59) (= (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@35) o2_24@@44 f_63@@59) (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@44 f_63@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@44 f_63@@59))
)) (forall ((o2_24@@45 T@Ref) (f_63@@60 T@Field_26443_53) ) (!  (=> (select (|PolymorphicMapType_26932_16691_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@45 f_63@@60) (= (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@35) o2_24@@45 f_63@@60) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@45 f_63@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@45 f_63@@60))
))) (forall ((o2_24@@46 T@Ref) (f_63@@61 T@Field_26456_26457) ) (!  (=> (select (|PolymorphicMapType_26932_16691_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@46 f_63@@61) (= (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@35) o2_24@@46 f_63@@61) (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@46 f_63@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@46 f_63@@61))
))) (forall ((o2_24@@47 T@Ref) (f_63@@62 T@Field_16691_16890) ) (!  (=> (select (|PolymorphicMapType_26932_16691_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@47 f_63@@62) (= (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@35) o2_24@@47 f_63@@62) (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@47 f_63@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@47 f_63@@62))
))) (forall ((o2_24@@48 T@Ref) (f_63@@63 T@Field_16691_39015) ) (!  (=> (select (|PolymorphicMapType_26932_16691_83865#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@48 f_63@@63) (= (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@35) o2_24@@48 f_63@@63) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@48 f_63@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@48 f_63@@63))
))) (forall ((o2_24@@49 T@Ref) (f_63@@64 T@Field_16889_4198) ) (!  (=> (select (|PolymorphicMapType_26932_35231_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@49 f_63@@64) (= (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@35) o2_24@@49 f_63@@64) (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@49 f_63@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@49 f_63@@64))
))) (forall ((o2_24@@50 T@Ref) (f_63@@65 T@Field_16889_53) ) (!  (=> (select (|PolymorphicMapType_26932_35231_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@50 f_63@@65) (= (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@35) o2_24@@50 f_63@@65) (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@50 f_63@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@50 f_63@@65))
))) (forall ((o2_24@@51 T@Ref) (f_63@@66 T@Field_16889_26457) ) (!  (=> (select (|PolymorphicMapType_26932_35231_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@51 f_63@@66) (= (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@35) o2_24@@51 f_63@@66) (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@51 f_63@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@51 f_63@@66))
))) (forall ((o2_24@@52 T@Ref) (f_63@@67 T@Field_35231_35232) ) (!  (=> (select (|PolymorphicMapType_26932_35231_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@52 f_63@@67) (= (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@35) o2_24@@52 f_63@@67) (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@52 f_63@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@52 f_63@@67))
))) (forall ((o2_24@@53 T@Ref) (f_63@@68 T@Field_39010_39015) ) (!  (=> (select (|PolymorphicMapType_26932_35231_84913#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@53 f_63@@68) (= (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@35) o2_24@@53 f_63@@68) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@53 f_63@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@53 f_63@@68))
))) (forall ((o2_24@@54 T@Ref) (f_63@@69 T@Field_16914_4198) ) (!  (=> (select (|PolymorphicMapType_26932_37402_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@54 f_63@@69) (= (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@35) o2_24@@54 f_63@@69) (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@54 f_63@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@54 f_63@@69))
))) (forall ((o2_24@@55 T@Ref) (f_63@@70 T@Field_16914_53) ) (!  (=> (select (|PolymorphicMapType_26932_37402_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@55 f_63@@70) (= (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@35) o2_24@@55 f_63@@70) (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@55 f_63@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@55 f_63@@70))
))) (forall ((o2_24@@56 T@Ref) (f_63@@71 T@Field_16914_26457) ) (!  (=> (select (|PolymorphicMapType_26932_37402_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@56 f_63@@71) (= (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@35) o2_24@@56 f_63@@71) (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@56 f_63@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@56 f_63@@71))
))) (forall ((o2_24@@57 T@Ref) (f_63@@72 T@Field_37402_37403) ) (!  (=> (select (|PolymorphicMapType_26932_37402_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@57 f_63@@72) (= (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@35) o2_24@@57 f_63@@72) (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@57 f_63@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@57 f_63@@72))
))) (forall ((o2_24@@58 T@Ref) (f_63@@73 T@Field_39918_39923) ) (!  (=> (select (|PolymorphicMapType_26932_37402_85961#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) null (WandMaskField_16914 pm_f_24@@8))) o2_24@@58 f_63@@73) (= (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@35) o2_24@@58 f_63@@73) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@58 f_63@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@25) o2_24@@58 f_63@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@25 Mask@@57) (IsWandField_16914_87764 pm_f_24@@8))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_26383) (ExhaleHeap@@26 T@PolymorphicMapType_26383) (Mask@@58 T@PolymorphicMapType_26404) (pm_f_24@@9 T@Field_35231_35232) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@26 Mask@@58) (=> (and (HasDirectPerm_16889_16890 Mask@@58 null pm_f_24@@9) (IsWandField_16889_87407 pm_f_24@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_24@@59 T@Ref) (f_63@@74 T@Field_32744_4198) ) (!  (=> (select (|PolymorphicMapType_26932_16691_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@59 f_63@@74) (= (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@36) o2_24@@59 f_63@@74) (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@59 f_63@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@59 f_63@@74))
)) (forall ((o2_24@@60 T@Ref) (f_63@@75 T@Field_26443_53) ) (!  (=> (select (|PolymorphicMapType_26932_16691_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@60 f_63@@75) (= (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@36) o2_24@@60 f_63@@75) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@60 f_63@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@60 f_63@@75))
))) (forall ((o2_24@@61 T@Ref) (f_63@@76 T@Field_26456_26457) ) (!  (=> (select (|PolymorphicMapType_26932_16691_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@61 f_63@@76) (= (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@36) o2_24@@61 f_63@@76) (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@61 f_63@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@61 f_63@@76))
))) (forall ((o2_24@@62 T@Ref) (f_63@@77 T@Field_16691_16890) ) (!  (=> (select (|PolymorphicMapType_26932_16691_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@62 f_63@@77) (= (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@36) o2_24@@62 f_63@@77) (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@62 f_63@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@62 f_63@@77))
))) (forall ((o2_24@@63 T@Ref) (f_63@@78 T@Field_16691_39015) ) (!  (=> (select (|PolymorphicMapType_26932_16691_83865#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@63 f_63@@78) (= (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@36) o2_24@@63 f_63@@78) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@63 f_63@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@63 f_63@@78))
))) (forall ((o2_24@@64 T@Ref) (f_63@@79 T@Field_16889_4198) ) (!  (=> (select (|PolymorphicMapType_26932_35231_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@64 f_63@@79) (= (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@36) o2_24@@64 f_63@@79) (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@64 f_63@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@64 f_63@@79))
))) (forall ((o2_24@@65 T@Ref) (f_63@@80 T@Field_16889_53) ) (!  (=> (select (|PolymorphicMapType_26932_35231_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@65 f_63@@80) (= (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@36) o2_24@@65 f_63@@80) (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@65 f_63@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@65 f_63@@80))
))) (forall ((o2_24@@66 T@Ref) (f_63@@81 T@Field_16889_26457) ) (!  (=> (select (|PolymorphicMapType_26932_35231_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@66 f_63@@81) (= (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@36) o2_24@@66 f_63@@81) (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@66 f_63@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@66 f_63@@81))
))) (forall ((o2_24@@67 T@Ref) (f_63@@82 T@Field_35231_35232) ) (!  (=> (select (|PolymorphicMapType_26932_35231_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@67 f_63@@82) (= (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@36) o2_24@@67 f_63@@82) (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@67 f_63@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@67 f_63@@82))
))) (forall ((o2_24@@68 T@Ref) (f_63@@83 T@Field_39010_39015) ) (!  (=> (select (|PolymorphicMapType_26932_35231_84913#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@68 f_63@@83) (= (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) o2_24@@68 f_63@@83) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@68 f_63@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@68 f_63@@83))
))) (forall ((o2_24@@69 T@Ref) (f_63@@84 T@Field_16914_4198) ) (!  (=> (select (|PolymorphicMapType_26932_37402_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@69 f_63@@84) (= (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@36) o2_24@@69 f_63@@84) (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@69 f_63@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@69 f_63@@84))
))) (forall ((o2_24@@70 T@Ref) (f_63@@85 T@Field_16914_53) ) (!  (=> (select (|PolymorphicMapType_26932_37402_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@70 f_63@@85) (= (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@36) o2_24@@70 f_63@@85) (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@70 f_63@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@70 f_63@@85))
))) (forall ((o2_24@@71 T@Ref) (f_63@@86 T@Field_16914_26457) ) (!  (=> (select (|PolymorphicMapType_26932_37402_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@71 f_63@@86) (= (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@36) o2_24@@71 f_63@@86) (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@71 f_63@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@71 f_63@@86))
))) (forall ((o2_24@@72 T@Ref) (f_63@@87 T@Field_37402_37403) ) (!  (=> (select (|PolymorphicMapType_26932_37402_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@72 f_63@@87) (= (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@36) o2_24@@72 f_63@@87) (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@72 f_63@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@72 f_63@@87))
))) (forall ((o2_24@@73 T@Ref) (f_63@@88 T@Field_39918_39923) ) (!  (=> (select (|PolymorphicMapType_26932_37402_85961#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@36) null (WandMaskField_16889 pm_f_24@@9))) o2_24@@73 f_63@@88) (= (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@36) o2_24@@73 f_63@@88) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@73 f_63@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@26) o2_24@@73 f_63@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@26 Mask@@58) (IsWandField_16889_87407 pm_f_24@@9))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_26383) (ExhaleHeap@@27 T@PolymorphicMapType_26383) (Mask@@59 T@PolymorphicMapType_26404) (pm_f_24@@10 T@Field_16691_16890) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@27 Mask@@59) (=> (and (HasDirectPerm_16691_16890 Mask@@59 null pm_f_24@@10) (IsWandField_16691_87050 pm_f_24@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_24@@74 T@Ref) (f_63@@89 T@Field_32744_4198) ) (!  (=> (select (|PolymorphicMapType_26932_16691_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@74 f_63@@89) (= (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@37) o2_24@@74 f_63@@89) (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@74 f_63@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@74 f_63@@89))
)) (forall ((o2_24@@75 T@Ref) (f_63@@90 T@Field_26443_53) ) (!  (=> (select (|PolymorphicMapType_26932_16691_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@75 f_63@@90) (= (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@37) o2_24@@75 f_63@@90) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@75 f_63@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@75 f_63@@90))
))) (forall ((o2_24@@76 T@Ref) (f_63@@91 T@Field_26456_26457) ) (!  (=> (select (|PolymorphicMapType_26932_16691_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@76 f_63@@91) (= (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@37) o2_24@@76 f_63@@91) (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@76 f_63@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@76 f_63@@91))
))) (forall ((o2_24@@77 T@Ref) (f_63@@92 T@Field_16691_16890) ) (!  (=> (select (|PolymorphicMapType_26932_16691_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@77 f_63@@92) (= (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@37) o2_24@@77 f_63@@92) (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@77 f_63@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@77 f_63@@92))
))) (forall ((o2_24@@78 T@Ref) (f_63@@93 T@Field_16691_39015) ) (!  (=> (select (|PolymorphicMapType_26932_16691_83865#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@78 f_63@@93) (= (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) o2_24@@78 f_63@@93) (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@78 f_63@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@78 f_63@@93))
))) (forall ((o2_24@@79 T@Ref) (f_63@@94 T@Field_16889_4198) ) (!  (=> (select (|PolymorphicMapType_26932_35231_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@79 f_63@@94) (= (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@37) o2_24@@79 f_63@@94) (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@79 f_63@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@79 f_63@@94))
))) (forall ((o2_24@@80 T@Ref) (f_63@@95 T@Field_16889_53) ) (!  (=> (select (|PolymorphicMapType_26932_35231_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@80 f_63@@95) (= (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@37) o2_24@@80 f_63@@95) (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@80 f_63@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@80 f_63@@95))
))) (forall ((o2_24@@81 T@Ref) (f_63@@96 T@Field_16889_26457) ) (!  (=> (select (|PolymorphicMapType_26932_35231_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@81 f_63@@96) (= (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@37) o2_24@@81 f_63@@96) (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@81 f_63@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@81 f_63@@96))
))) (forall ((o2_24@@82 T@Ref) (f_63@@97 T@Field_35231_35232) ) (!  (=> (select (|PolymorphicMapType_26932_35231_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@82 f_63@@97) (= (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@37) o2_24@@82 f_63@@97) (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@82 f_63@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@82 f_63@@97))
))) (forall ((o2_24@@83 T@Ref) (f_63@@98 T@Field_39010_39015) ) (!  (=> (select (|PolymorphicMapType_26932_35231_84913#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@83 f_63@@98) (= (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@37) o2_24@@83 f_63@@98) (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@83 f_63@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@83 f_63@@98))
))) (forall ((o2_24@@84 T@Ref) (f_63@@99 T@Field_16914_4198) ) (!  (=> (select (|PolymorphicMapType_26932_37402_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@84 f_63@@99) (= (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@37) o2_24@@84 f_63@@99) (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@84 f_63@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@84 f_63@@99))
))) (forall ((o2_24@@85 T@Ref) (f_63@@100 T@Field_16914_53) ) (!  (=> (select (|PolymorphicMapType_26932_37402_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@85 f_63@@100) (= (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@37) o2_24@@85 f_63@@100) (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@85 f_63@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@85 f_63@@100))
))) (forall ((o2_24@@86 T@Ref) (f_63@@101 T@Field_16914_26457) ) (!  (=> (select (|PolymorphicMapType_26932_37402_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@86 f_63@@101) (= (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@37) o2_24@@86 f_63@@101) (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@86 f_63@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@86 f_63@@101))
))) (forall ((o2_24@@87 T@Ref) (f_63@@102 T@Field_37402_37403) ) (!  (=> (select (|PolymorphicMapType_26932_37402_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@87 f_63@@102) (= (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@37) o2_24@@87 f_63@@102) (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@87 f_63@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@87 f_63@@102))
))) (forall ((o2_24@@88 T@Ref) (f_63@@103 T@Field_39918_39923) ) (!  (=> (select (|PolymorphicMapType_26932_37402_85961#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@37) null (WandMaskField_16691 pm_f_24@@10))) o2_24@@88 f_63@@103) (= (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@37) o2_24@@88 f_63@@103) (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@88 f_63@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@@27) o2_24@@88 f_63@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@27 Mask@@59) (IsWandField_16691_87050 pm_f_24@@10))
)))
(assert (forall ((a@@7 (Array Int Bool)) (b@@6 (Array Int Bool)) (o@@1 Int) ) (! (= (select (|Set#Intersection_13862| a@@7 b@@6) o@@1)  (and (select a@@7 o@@1) (select b@@6 o@@1)))
 :qid |stdinbpl.341:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_13862| a@@7 b@@6) o@@1))
 :pattern ( (|Set#Intersection_13862| a@@7 b@@6) (select a@@7 o@@1))
 :pattern ( (|Set#Intersection_13862| a@@7 b@@6) (select b@@6 o@@1))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Intersection_17073| a@@8 b@@7) o@@2)  (and (select a@@8 o@@2) (select b@@7 o@@2)))
 :qid |stdinbpl.341:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_17073| a@@8 b@@7) o@@2))
 :pattern ( (|Set#Intersection_17073| a@@8 b@@7) (select a@@8 o@@2))
 :pattern ( (|Set#Intersection_17073| a@@8 b@@7) (select b@@7 o@@2))
)))
(assert (forall ((a@@9 (Array Int Bool)) (b@@8 (Array Int Bool)) (o@@3 Int) ) (! (= (select (|Set#Difference_13832| a@@9 b@@8) o@@3)  (and (select a@@9 o@@3) (not (select b@@8 o@@3))))
 :qid |stdinbpl.356:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_13832| a@@9 b@@8) o@@3))
 :pattern ( (|Set#Difference_13832| a@@9 b@@8) (select a@@9 o@@3))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Difference_17067| a@@10 b@@9) o@@4)  (and (select a@@10 o@@4) (not (select b@@9 o@@4))))
 :qid |stdinbpl.356:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_17067| a@@10 b@@9) o@@4))
 :pattern ( (|Set#Difference_17067| a@@10 b@@9) (select a@@10 o@@4))
)))
(assert (forall ((a@@11 (Array Int Bool)) (x Int) (y Int) ) (!  (=> (select a@@11 y) (select (|Set#UnionOne_13862| a@@11 x) y))
 :qid |stdinbpl.321:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_13862| a@@11 x) (select a@@11 y))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@0 T@Ref) (y@@0 T@Ref) ) (!  (=> (select a@@12 y@@0) (select (|Set#UnionOne_17073| a@@12 x@@0) y@@0))
 :qid |stdinbpl.321:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_17073| a@@12 x@@0) (select a@@12 y@@0))
)))
(assert (forall ((a@@13 (Array Int Bool)) (b@@10 (Array Int Bool)) (y@@1 Int) ) (!  (=> (select a@@13 y@@1) (select (|Set#Union_13862| a@@13 b@@10) y@@1))
 :qid |stdinbpl.331:18|
 :skolemid |35|
 :pattern ( (|Set#Union_13862| a@@13 b@@10) (select a@@13 y@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select a@@14 y@@2) (select (|Set#Union_17073| a@@14 b@@11) y@@2))
 :qid |stdinbpl.331:18|
 :skolemid |35|
 :pattern ( (|Set#Union_17073| a@@14 b@@11) (select a@@14 y@@2))
)))
(assert (forall ((a@@15 (Array Int Bool)) (b@@12 (Array Int Bool)) (y@@3 Int) ) (!  (=> (select b@@12 y@@3) (select (|Set#Union_13862| a@@15 b@@12) y@@3))
 :qid |stdinbpl.333:18|
 :skolemid |36|
 :pattern ( (|Set#Union_13862| a@@15 b@@12) (select b@@12 y@@3))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select b@@13 y@@4) (select (|Set#Union_17073| a@@16 b@@13) y@@4))
 :qid |stdinbpl.333:18|
 :skolemid |36|
 :pattern ( (|Set#Union_17073| a@@16 b@@13) (select b@@13 y@@4))
)))
(assert (forall ((a@@17 (Array Int Bool)) (x@@1 Int) (o@@5 Int) ) (! (= (select (|Set#UnionOne_13862| a@@17 x@@1) o@@5)  (or (= o@@5 x@@1) (select a@@17 o@@5)))
 :qid |stdinbpl.317:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_13862| a@@17 x@@1) o@@5))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@2 T@Ref) (o@@6 T@Ref) ) (! (= (select (|Set#UnionOne_17073| a@@18 x@@2) o@@6)  (or (= o@@6 x@@2) (select a@@18 o@@6)))
 :qid |stdinbpl.317:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_17073| a@@18 x@@2) o@@6))
)))
(assert (forall ((a@@19 (Array Int Bool)) (b@@14 (Array Int Bool)) (y@@5 Int) ) (!  (=> (select b@@14 y@@5) (not (select (|Set#Difference_13832| a@@19 b@@14) y@@5)))
 :qid |stdinbpl.358:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_13832| a@@19 b@@14) (select b@@14 y@@5))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (y@@6 T@Ref) ) (!  (=> (select b@@15 y@@6) (not (select (|Set#Difference_17067| a@@20 b@@15) y@@6)))
 :qid |stdinbpl.358:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_17067| a@@20 b@@15) (select b@@15 y@@6))
)))
(assert (forall ((a@@21 (Array Int Bool)) (b@@16 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_13862| (|Set#Difference_13832| a@@21 b@@16)) (|Set#Card_13862| (|Set#Difference_13832| b@@16 a@@21))) (|Set#Card_13862| (|Set#Intersection_13862| a@@21 b@@16))) (|Set#Card_13862| (|Set#Union_13862| a@@21 b@@16))) (= (|Set#Card_13862| (|Set#Difference_13832| a@@21 b@@16)) (- (|Set#Card_13862| a@@21) (|Set#Card_13862| (|Set#Intersection_13862| a@@21 b@@16)))))
 :qid |stdinbpl.360:18|
 :skolemid |45|
 :pattern ( (|Set#Card_13862| (|Set#Difference_13832| a@@21 b@@16)))
)))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@17 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_17073| (|Set#Difference_17067| a@@22 b@@17)) (|Set#Card_17073| (|Set#Difference_17067| b@@17 a@@22))) (|Set#Card_17073| (|Set#Intersection_17073| a@@22 b@@17))) (|Set#Card_17073| (|Set#Union_17073| a@@22 b@@17))) (= (|Set#Card_17073| (|Set#Difference_17067| a@@22 b@@17)) (- (|Set#Card_17073| a@@22) (|Set#Card_17073| (|Set#Intersection_17073| a@@22 b@@17)))))
 :qid |stdinbpl.360:18|
 :skolemid |45|
 :pattern ( (|Set#Card_17073| (|Set#Difference_17067| a@@22 b@@17)))
)))
(assert (forall ((s (Array Int Bool)) ) (! (<= 0 (|Set#Card_13862| s))
 :qid |stdinbpl.303:18|
 :skolemid |22|
 :pattern ( (|Set#Card_13862| s))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_17073| s@@0))
 :qid |stdinbpl.303:18|
 :skolemid |22|
 :pattern ( (|Set#Card_17073| s@@0))
)))
(assert (forall ((a_2@@7 T@Ref) (i@@3 Int) ) (! (= (getPredWandId_16914_16915 (two a_2@@7 i@@3)) 1)
 :qid |stdinbpl.851:15|
 :skolemid |120|
 :pattern ( (two a_2@@7 i@@3))
)))
(assert (forall ((a@@23 (Array Int Bool)) (x@@3 Int) ) (! (select (|Set#UnionOne_13862| a@@23 x@@3) x@@3)
 :qid |stdinbpl.319:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_13862| a@@23 x@@3))
)))
(assert (forall ((a@@24 (Array T@Ref Bool)) (x@@4 T@Ref) ) (! (select (|Set#UnionOne_17073| a@@24 x@@4) x@@4)
 :qid |stdinbpl.319:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_17073| a@@24 x@@4))
)))
(assert (forall ((a@@25 (Array Int Bool)) (x@@5 Int) ) (!  (=> (select a@@25 x@@5) (= (|Set#Card_13862| (|Set#UnionOne_13862| a@@25 x@@5)) (|Set#Card_13862| a@@25)))
 :qid |stdinbpl.323:18|
 :skolemid |32|
 :pattern ( (|Set#Card_13862| (|Set#UnionOne_13862| a@@25 x@@5)))
)))
(assert (forall ((a@@26 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (select a@@26 x@@6) (= (|Set#Card_17073| (|Set#UnionOne_17073| a@@26 x@@6)) (|Set#Card_17073| a@@26)))
 :qid |stdinbpl.323:18|
 :skolemid |32|
 :pattern ( (|Set#Card_17073| (|Set#UnionOne_17073| a@@26 x@@6)))
)))
(assert (forall ((a_2@@8 T@Ref) ) (! (= (getPredWandId_16889_16890 (one a_2@@8)) 0)
 :qid |stdinbpl.796:15|
 :skolemid |114|
 :pattern ( (one a_2@@8))
)))
(assert (forall ((r@@1 Int) ) (! (= (|Set#Card_13862| (|Set#Singleton_13862| r@@1)) 1)
 :qid |stdinbpl.314:18|
 :skolemid |28|
 :pattern ( (|Set#Card_13862| (|Set#Singleton_13862| r@@1)))
)))
(assert (forall ((r@@2 T@Ref) ) (! (= (|Set#Card_17073| (|Set#Singleton_17073| r@@2)) 1)
 :qid |stdinbpl.314:18|
 :skolemid |28|
 :pattern ( (|Set#Card_17073| (|Set#Singleton_17073| r@@2)))
)))
(assert (forall ((r@@3 Int) ) (! (select (|Set#Singleton_13862| r@@3) r@@3)
 :qid |stdinbpl.312:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_13862| r@@3))
)))
(assert (forall ((r@@4 T@Ref) ) (! (select (|Set#Singleton_17073| r@@4) r@@4)
 :qid |stdinbpl.312:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_17073| r@@4))
)))
(assert (forall ((a@@27 (Array Int Bool)) (b@@18 (Array Int Bool)) ) (! (= (|Set#Union_13862| a@@27 (|Set#Union_13862| a@@27 b@@18)) (|Set#Union_13862| a@@27 b@@18))
 :qid |stdinbpl.346:18|
 :skolemid |39|
 :pattern ( (|Set#Union_13862| a@@27 (|Set#Union_13862| a@@27 b@@18)))
)))
(assert (forall ((a@@28 (Array T@Ref Bool)) (b@@19 (Array T@Ref Bool)) ) (! (= (|Set#Union_17073| a@@28 (|Set#Union_17073| a@@28 b@@19)) (|Set#Union_17073| a@@28 b@@19))
 :qid |stdinbpl.346:18|
 :skolemid |39|
 :pattern ( (|Set#Union_17073| a@@28 (|Set#Union_17073| a@@28 b@@19)))
)))
(assert (forall ((a@@29 (Array Int Bool)) (b@@20 (Array Int Bool)) ) (! (= (|Set#Intersection_13862| a@@29 (|Set#Intersection_13862| a@@29 b@@20)) (|Set#Intersection_13862| a@@29 b@@20))
 :qid |stdinbpl.350:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_13862| a@@29 (|Set#Intersection_13862| a@@29 b@@20)))
)))
(assert (forall ((a@@30 (Array T@Ref Bool)) (b@@21 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_17073| a@@30 (|Set#Intersection_17073| a@@30 b@@21)) (|Set#Intersection_17073| a@@30 b@@21))
 :qid |stdinbpl.350:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_17073| a@@30 (|Set#Intersection_17073| a@@30 b@@21)))
)))
(assert (forall ((a_2@@9 T@Ref) (i@@4 Int) ) (! (= (PredicateMaskField_16914 (two a_2@@9 i@@4)) (|two#sm| a_2@@9 i@@4))
 :qid |stdinbpl.843:15|
 :skolemid |118|
 :pattern ( (PredicateMaskField_16914 (two a_2@@9 i@@4)))
)))
(assert (forall ((o@@7 Int) ) (!  (not (select |Set#Empty_13862| o@@7))
 :qid |stdinbpl.306:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_13862| o@@7))
)))
(assert (forall ((o@@8 T@Ref) ) (!  (not (select |Set#Empty_17073| o@@8))
 :qid |stdinbpl.306:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_17073| o@@8))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_26383) (o_23 T@Ref) (f_65 T@Field_39918_39923) (v T@PolymorphicMapType_26932) ) (! (succHeap Heap@@38 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@38) (store (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@38) o_23 f_65 v) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@38) (store (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@38) o_23 f_65 v) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@38) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_26383) (o_23@@0 T@Ref) (f_65@@0 T@Field_37402_37403) (v@@0 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@39) (store (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@39) o_23@@0 f_65@@0 v@@0) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@39) (store (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@39) o_23@@0 f_65@@0 v@@0) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@39) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_26383) (o_23@@1 T@Ref) (f_65@@1 T@Field_16914_4198) (v@@1 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@40) (store (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@40) o_23@@1 f_65@@1 v@@1) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@40) (store (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@40) o_23@@1 f_65@@1 v@@1) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@40) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_26383) (o_23@@2 T@Ref) (f_65@@2 T@Field_16914_26457) (v@@2 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@41) (store (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@41) o_23@@2 f_65@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@41) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@41) (store (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@41) o_23@@2 f_65@@2 v@@2)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_26383) (o_23@@3 T@Ref) (f_65@@3 T@Field_16914_53) (v@@3 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@42) (store (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@42) o_23@@3 f_65@@3 v@@3) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@42) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@42) (store (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@42) o_23@@3 f_65@@3 v@@3) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_26383) (o_23@@4 T@Ref) (f_65@@4 T@Field_39010_39015) (v@@4 T@PolymorphicMapType_26932) ) (! (succHeap Heap@@43 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@43) (store (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@43) o_23@@4 f_65@@4 v@@4) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@43) (store (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@43) o_23@@4 f_65@@4 v@@4) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@43) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_26383) (o_23@@5 T@Ref) (f_65@@5 T@Field_35231_35232) (v@@5 T@FrameType) ) (! (succHeap Heap@@44 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@44) (store (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@44) o_23@@5 f_65@@5 v@@5) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@44) (store (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@44) o_23@@5 f_65@@5 v@@5) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@44) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_26383) (o_23@@6 T@Ref) (f_65@@6 T@Field_16889_4198) (v@@6 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@45) (store (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@45) o_23@@6 f_65@@6 v@@6) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@45) (store (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@45) o_23@@6 f_65@@6 v@@6) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@45) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_26383) (o_23@@7 T@Ref) (f_65@@7 T@Field_16889_26457) (v@@7 T@Ref) ) (! (succHeap Heap@@46 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@46) (store (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@46) o_23@@7 f_65@@7 v@@7) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@46) (store (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@46) o_23@@7 f_65@@7 v@@7) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@46) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_26383) (o_23@@8 T@Ref) (f_65@@8 T@Field_16889_53) (v@@8 Bool) ) (! (succHeap Heap@@47 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@47) (store (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@47) o_23@@8 f_65@@8 v@@8) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@47) (store (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@47) o_23@@8 f_65@@8 v@@8) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@47) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_26383) (o_23@@9 T@Ref) (f_65@@9 T@Field_16691_39015) (v@@9 T@PolymorphicMapType_26932) ) (! (succHeap Heap@@48 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@48) (store (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@48) o_23@@9 f_65@@9 v@@9) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@48) (store (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@48) o_23@@9 f_65@@9 v@@9) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@48) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_26383) (o_23@@10 T@Ref) (f_65@@10 T@Field_16691_16890) (v@@10 T@FrameType) ) (! (succHeap Heap@@49 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@49) (store (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@49) o_23@@10 f_65@@10 v@@10) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@49) (store (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@49) o_23@@10 f_65@@10 v@@10) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@49) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_26383) (o_23@@11 T@Ref) (f_65@@11 T@Field_32744_4198) (v@@11 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@50) (store (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@50) o_23@@11 f_65@@11 v@@11) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@50) (store (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@50) o_23@@11 f_65@@11 v@@11) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@50) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_26383) (o_23@@12 T@Ref) (f_65@@12 T@Field_26456_26457) (v@@12 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@51) (store (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@51) o_23@@12 f_65@@12 v@@12) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@51) (store (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@51) o_23@@12 f_65@@12 v@@12) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@51) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_26383) (o_23@@13 T@Ref) (f_65@@13 T@Field_26443_53) (v@@13 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_26383 (store (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@52) o_23@@13 f_65@@13 v@@13) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26383 (store (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@52) o_23@@13 f_65@@13 v@@13) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@@52) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@@52)))
)))
(assert (forall ((a_2@@10 T@Ref) ) (! (= (PredicateMaskField_16889 (one a_2@@10)) (|one#sm| a_2@@10))
 :qid |stdinbpl.788:15|
 :skolemid |112|
 :pattern ( (PredicateMaskField_16889 (one a_2@@10)))
)))
(assert (forall ((a@@31 Int) (b@@22 Int) ) (! (= (<= a@@31 b@@22) (= (|Math#min| a@@31 b@@22) a@@31))
 :qid |stdinbpl.390:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@31 b@@22))
)))
(assert (forall ((a@@32 Int) (b@@23 Int) ) (! (= (<= b@@23 a@@32) (= (|Math#min| a@@32 b@@23) b@@23))
 :qid |stdinbpl.391:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@32 b@@23))
)))
(assert (forall ((s@@1 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_13862| s@@1) 0) (= s@@1 |Set#Empty_13862|)) (=> (not (= (|Set#Card_13862| s@@1) 0)) (exists ((x@@7 Int) ) (! (select s@@1 x@@7)
 :qid |stdinbpl.309:33|
 :skolemid |24|
))))
 :qid |stdinbpl.307:18|
 :skolemid |25|
 :pattern ( (|Set#Card_13862| s@@1))
)))
(assert (forall ((s@@2 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_17073| s@@2) 0) (= s@@2 |Set#Empty_17073|)) (=> (not (= (|Set#Card_17073| s@@2) 0)) (exists ((x@@8 T@Ref) ) (! (select s@@2 x@@8)
 :qid |stdinbpl.309:33|
 :skolemid |24|
))))
 :qid |stdinbpl.307:18|
 :skolemid |25|
 :pattern ( (|Set#Card_17073| s@@2))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_26383) (Mask@@60 T@PolymorphicMapType_26404) (vas@@8 (Array T@Ref Bool)) ) (!  (=> (state Heap@@53 Mask@@60) (= (|foo_vals'| Heap@@53 vas@@8) (|foo_vals#frame| (FrameFragment_4348 (|foo_vals#condqp1| Heap@@53 vas@@8)) vas@@8)))
 :qid |stdinbpl.512:15|
 :skolemid |84|
 :pattern ( (state Heap@@53 Mask@@60) (|foo_vals'| Heap@@53 vas@@8))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_26383) (Mask@@61 T@PolymorphicMapType_26404) (vas@@9 (Array T@Ref Bool)) ) (!  (=> (state Heap@@54 Mask@@61) (= (|foo_ones'| Heap@@54 vas@@9) (|foo_ones#frame| (FrameFragment_4348 (|foo_ones#condqp2| Heap@@54 vas@@9)) vas@@9)))
 :qid |stdinbpl.606:15|
 :skolemid |94|
 :pattern ( (state Heap@@54 Mask@@61) (|foo_ones'| Heap@@54 vas@@9))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_26383) (Heap1Heap@@1 T@PolymorphicMapType_26383) (vas@@10 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select vas@@10 (|sk_foo_vals#condqp1| (|foo_vals#condqp1| Heap2Heap@@1 vas@@10) (|foo_vals#condqp1| Heap1Heap@@1 vas@@10))) (< NoPerm FullPerm))  (and (select vas@@10 (|sk_foo_vals#condqp1| (|foo_vals#condqp1| Heap2Heap@@1 vas@@10) (|foo_vals#condqp1| Heap1Heap@@1 vas@@10))) (< NoPerm FullPerm))) (=> (and (select vas@@10 (|sk_foo_vals#condqp1| (|foo_vals#condqp1| Heap2Heap@@1 vas@@10) (|foo_vals#condqp1| Heap1Heap@@1 vas@@10))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap2Heap@@1) (|sk_foo_vals#condqp1| (|foo_vals#condqp1| Heap2Heap@@1 vas@@10) (|foo_vals#condqp1| Heap1Heap@@1 vas@@10)) val) (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap1Heap@@1) (|sk_foo_vals#condqp1| (|foo_vals#condqp1| Heap2Heap@@1 vas@@10) (|foo_vals#condqp1| Heap1Heap@@1 vas@@10)) val)))) (= (|foo_vals#condqp1| Heap2Heap@@1 vas@@10) (|foo_vals#condqp1| Heap1Heap@@1 vas@@10)))
 :qid |stdinbpl.522:15|
 :skolemid |85|
 :pattern ( (|foo_vals#condqp1| Heap2Heap@@1 vas@@10) (|foo_vals#condqp1| Heap1Heap@@1 vas@@10) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((a@@33 (Array Int Bool)) (x@@9 Int) ) (!  (=> (not (select a@@33 x@@9)) (= (|Set#Card_13862| (|Set#UnionOne_13862| a@@33 x@@9)) (+ (|Set#Card_13862| a@@33) 1)))
 :qid |stdinbpl.325:18|
 :skolemid |33|
 :pattern ( (|Set#Card_13862| (|Set#UnionOne_13862| a@@33 x@@9)))
)))
(assert (forall ((a@@34 (Array T@Ref Bool)) (x@@10 T@Ref) ) (!  (=> (not (select a@@34 x@@10)) (= (|Set#Card_17073| (|Set#UnionOne_17073| a@@34 x@@10)) (+ (|Set#Card_17073| a@@34) 1)))
 :qid |stdinbpl.325:18|
 :skolemid |33|
 :pattern ( (|Set#Card_17073| (|Set#UnionOne_17073| a@@34 x@@10)))
)))
(assert (forall ((o_23@@14 T@Ref) (f_15 T@Field_26456_26457) (Heap@@55 T@PolymorphicMapType_26383) ) (!  (=> (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@55) o_23@@14 $allocated) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@55) (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@55) o_23@@14 f_15) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@@55) o_23@@14 f_15))
)))
(assert (forall ((p@@3 T@Field_37402_37403) (v_1@@2 T@FrameType) (q T@Field_37402_37403) (w@@2 T@FrameType) (r@@5 T@Field_37402_37403) (u T@FrameType) ) (!  (=> (and (InsidePredicate_37402_37402 p@@3 v_1@@2 q w@@2) (InsidePredicate_37402_37402 q w@@2 r@@5 u)) (InsidePredicate_37402_37402 p@@3 v_1@@2 r@@5 u))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37402_37402 p@@3 v_1@@2 q w@@2) (InsidePredicate_37402_37402 q w@@2 r@@5 u))
)))
(assert (forall ((p@@4 T@Field_37402_37403) (v_1@@3 T@FrameType) (q@@0 T@Field_37402_37403) (w@@3 T@FrameType) (r@@6 T@Field_35231_35232) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_37402_37402 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_37402_35231 q@@0 w@@3 r@@6 u@@0)) (InsidePredicate_37402_35231 p@@4 v_1@@3 r@@6 u@@0))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37402_37402 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_37402_35231 q@@0 w@@3 r@@6 u@@0))
)))
(assert (forall ((p@@5 T@Field_37402_37403) (v_1@@4 T@FrameType) (q@@1 T@Field_37402_37403) (w@@4 T@FrameType) (r@@7 T@Field_16691_16890) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_37402_37402 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_37402_26443 q@@1 w@@4 r@@7 u@@1)) (InsidePredicate_37402_26443 p@@5 v_1@@4 r@@7 u@@1))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37402_37402 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_37402_26443 q@@1 w@@4 r@@7 u@@1))
)))
(assert (forall ((p@@6 T@Field_37402_37403) (v_1@@5 T@FrameType) (q@@2 T@Field_35231_35232) (w@@5 T@FrameType) (r@@8 T@Field_37402_37403) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_37402_35231 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_35231_37402 q@@2 w@@5 r@@8 u@@2)) (InsidePredicate_37402_37402 p@@6 v_1@@5 r@@8 u@@2))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37402_35231 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_35231_37402 q@@2 w@@5 r@@8 u@@2))
)))
(assert (forall ((p@@7 T@Field_37402_37403) (v_1@@6 T@FrameType) (q@@3 T@Field_35231_35232) (w@@6 T@FrameType) (r@@9 T@Field_35231_35232) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_37402_35231 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_35231_35231 q@@3 w@@6 r@@9 u@@3)) (InsidePredicate_37402_35231 p@@7 v_1@@6 r@@9 u@@3))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37402_35231 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_35231_35231 q@@3 w@@6 r@@9 u@@3))
)))
(assert (forall ((p@@8 T@Field_37402_37403) (v_1@@7 T@FrameType) (q@@4 T@Field_35231_35232) (w@@7 T@FrameType) (r@@10 T@Field_16691_16890) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_37402_35231 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_35231_26443 q@@4 w@@7 r@@10 u@@4)) (InsidePredicate_37402_26443 p@@8 v_1@@7 r@@10 u@@4))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37402_35231 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_35231_26443 q@@4 w@@7 r@@10 u@@4))
)))
(assert (forall ((p@@9 T@Field_37402_37403) (v_1@@8 T@FrameType) (q@@5 T@Field_16691_16890) (w@@8 T@FrameType) (r@@11 T@Field_37402_37403) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_37402_26443 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_26443_37402 q@@5 w@@8 r@@11 u@@5)) (InsidePredicate_37402_37402 p@@9 v_1@@8 r@@11 u@@5))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37402_26443 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_26443_37402 q@@5 w@@8 r@@11 u@@5))
)))
(assert (forall ((p@@10 T@Field_37402_37403) (v_1@@9 T@FrameType) (q@@6 T@Field_16691_16890) (w@@9 T@FrameType) (r@@12 T@Field_35231_35232) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_37402_26443 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_26443_35231 q@@6 w@@9 r@@12 u@@6)) (InsidePredicate_37402_35231 p@@10 v_1@@9 r@@12 u@@6))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37402_26443 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_26443_35231 q@@6 w@@9 r@@12 u@@6))
)))
(assert (forall ((p@@11 T@Field_37402_37403) (v_1@@10 T@FrameType) (q@@7 T@Field_16691_16890) (w@@10 T@FrameType) (r@@13 T@Field_16691_16890) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_37402_26443 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_26443_26443 q@@7 w@@10 r@@13 u@@7)) (InsidePredicate_37402_26443 p@@11 v_1@@10 r@@13 u@@7))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37402_26443 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_26443_26443 q@@7 w@@10 r@@13 u@@7))
)))
(assert (forall ((p@@12 T@Field_35231_35232) (v_1@@11 T@FrameType) (q@@8 T@Field_37402_37403) (w@@11 T@FrameType) (r@@14 T@Field_37402_37403) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_35231_37402 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_37402_37402 q@@8 w@@11 r@@14 u@@8)) (InsidePredicate_35231_37402 p@@12 v_1@@11 r@@14 u@@8))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35231_37402 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_37402_37402 q@@8 w@@11 r@@14 u@@8))
)))
(assert (forall ((p@@13 T@Field_35231_35232) (v_1@@12 T@FrameType) (q@@9 T@Field_37402_37403) (w@@12 T@FrameType) (r@@15 T@Field_35231_35232) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_35231_37402 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_37402_35231 q@@9 w@@12 r@@15 u@@9)) (InsidePredicate_35231_35231 p@@13 v_1@@12 r@@15 u@@9))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35231_37402 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_37402_35231 q@@9 w@@12 r@@15 u@@9))
)))
(assert (forall ((p@@14 T@Field_35231_35232) (v_1@@13 T@FrameType) (q@@10 T@Field_37402_37403) (w@@13 T@FrameType) (r@@16 T@Field_16691_16890) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_35231_37402 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_37402_26443 q@@10 w@@13 r@@16 u@@10)) (InsidePredicate_35231_26443 p@@14 v_1@@13 r@@16 u@@10))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35231_37402 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_37402_26443 q@@10 w@@13 r@@16 u@@10))
)))
(assert (forall ((p@@15 T@Field_35231_35232) (v_1@@14 T@FrameType) (q@@11 T@Field_35231_35232) (w@@14 T@FrameType) (r@@17 T@Field_37402_37403) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_35231_35231 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_35231_37402 q@@11 w@@14 r@@17 u@@11)) (InsidePredicate_35231_37402 p@@15 v_1@@14 r@@17 u@@11))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35231_35231 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_35231_37402 q@@11 w@@14 r@@17 u@@11))
)))
(assert (forall ((p@@16 T@Field_35231_35232) (v_1@@15 T@FrameType) (q@@12 T@Field_35231_35232) (w@@15 T@FrameType) (r@@18 T@Field_35231_35232) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_35231_35231 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_35231_35231 q@@12 w@@15 r@@18 u@@12)) (InsidePredicate_35231_35231 p@@16 v_1@@15 r@@18 u@@12))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35231_35231 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_35231_35231 q@@12 w@@15 r@@18 u@@12))
)))
(assert (forall ((p@@17 T@Field_35231_35232) (v_1@@16 T@FrameType) (q@@13 T@Field_35231_35232) (w@@16 T@FrameType) (r@@19 T@Field_16691_16890) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_35231_35231 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_35231_26443 q@@13 w@@16 r@@19 u@@13)) (InsidePredicate_35231_26443 p@@17 v_1@@16 r@@19 u@@13))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35231_35231 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_35231_26443 q@@13 w@@16 r@@19 u@@13))
)))
(assert (forall ((p@@18 T@Field_35231_35232) (v_1@@17 T@FrameType) (q@@14 T@Field_16691_16890) (w@@17 T@FrameType) (r@@20 T@Field_37402_37403) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_35231_26443 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_26443_37402 q@@14 w@@17 r@@20 u@@14)) (InsidePredicate_35231_37402 p@@18 v_1@@17 r@@20 u@@14))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35231_26443 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_26443_37402 q@@14 w@@17 r@@20 u@@14))
)))
(assert (forall ((p@@19 T@Field_35231_35232) (v_1@@18 T@FrameType) (q@@15 T@Field_16691_16890) (w@@18 T@FrameType) (r@@21 T@Field_35231_35232) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_35231_26443 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_26443_35231 q@@15 w@@18 r@@21 u@@15)) (InsidePredicate_35231_35231 p@@19 v_1@@18 r@@21 u@@15))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35231_26443 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_26443_35231 q@@15 w@@18 r@@21 u@@15))
)))
(assert (forall ((p@@20 T@Field_35231_35232) (v_1@@19 T@FrameType) (q@@16 T@Field_16691_16890) (w@@19 T@FrameType) (r@@22 T@Field_16691_16890) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_35231_26443 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_26443_26443 q@@16 w@@19 r@@22 u@@16)) (InsidePredicate_35231_26443 p@@20 v_1@@19 r@@22 u@@16))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35231_26443 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_26443_26443 q@@16 w@@19 r@@22 u@@16))
)))
(assert (forall ((p@@21 T@Field_16691_16890) (v_1@@20 T@FrameType) (q@@17 T@Field_37402_37403) (w@@20 T@FrameType) (r@@23 T@Field_37402_37403) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_26443_37402 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_37402_37402 q@@17 w@@20 r@@23 u@@17)) (InsidePredicate_26443_37402 p@@21 v_1@@20 r@@23 u@@17))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26443_37402 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_37402_37402 q@@17 w@@20 r@@23 u@@17))
)))
(assert (forall ((p@@22 T@Field_16691_16890) (v_1@@21 T@FrameType) (q@@18 T@Field_37402_37403) (w@@21 T@FrameType) (r@@24 T@Field_35231_35232) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_26443_37402 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_37402_35231 q@@18 w@@21 r@@24 u@@18)) (InsidePredicate_26443_35231 p@@22 v_1@@21 r@@24 u@@18))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26443_37402 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_37402_35231 q@@18 w@@21 r@@24 u@@18))
)))
(assert (forall ((p@@23 T@Field_16691_16890) (v_1@@22 T@FrameType) (q@@19 T@Field_37402_37403) (w@@22 T@FrameType) (r@@25 T@Field_16691_16890) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_26443_37402 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_37402_26443 q@@19 w@@22 r@@25 u@@19)) (InsidePredicate_26443_26443 p@@23 v_1@@22 r@@25 u@@19))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26443_37402 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_37402_26443 q@@19 w@@22 r@@25 u@@19))
)))
(assert (forall ((p@@24 T@Field_16691_16890) (v_1@@23 T@FrameType) (q@@20 T@Field_35231_35232) (w@@23 T@FrameType) (r@@26 T@Field_37402_37403) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_26443_35231 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_35231_37402 q@@20 w@@23 r@@26 u@@20)) (InsidePredicate_26443_37402 p@@24 v_1@@23 r@@26 u@@20))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26443_35231 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_35231_37402 q@@20 w@@23 r@@26 u@@20))
)))
(assert (forall ((p@@25 T@Field_16691_16890) (v_1@@24 T@FrameType) (q@@21 T@Field_35231_35232) (w@@24 T@FrameType) (r@@27 T@Field_35231_35232) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_26443_35231 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_35231_35231 q@@21 w@@24 r@@27 u@@21)) (InsidePredicate_26443_35231 p@@25 v_1@@24 r@@27 u@@21))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26443_35231 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_35231_35231 q@@21 w@@24 r@@27 u@@21))
)))
(assert (forall ((p@@26 T@Field_16691_16890) (v_1@@25 T@FrameType) (q@@22 T@Field_35231_35232) (w@@25 T@FrameType) (r@@28 T@Field_16691_16890) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_26443_35231 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_35231_26443 q@@22 w@@25 r@@28 u@@22)) (InsidePredicate_26443_26443 p@@26 v_1@@25 r@@28 u@@22))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26443_35231 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_35231_26443 q@@22 w@@25 r@@28 u@@22))
)))
(assert (forall ((p@@27 T@Field_16691_16890) (v_1@@26 T@FrameType) (q@@23 T@Field_16691_16890) (w@@26 T@FrameType) (r@@29 T@Field_37402_37403) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_26443_26443 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_26443_37402 q@@23 w@@26 r@@29 u@@23)) (InsidePredicate_26443_37402 p@@27 v_1@@26 r@@29 u@@23))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26443_26443 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_26443_37402 q@@23 w@@26 r@@29 u@@23))
)))
(assert (forall ((p@@28 T@Field_16691_16890) (v_1@@27 T@FrameType) (q@@24 T@Field_16691_16890) (w@@27 T@FrameType) (r@@30 T@Field_35231_35232) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_26443_26443 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_26443_35231 q@@24 w@@27 r@@30 u@@24)) (InsidePredicate_26443_35231 p@@28 v_1@@27 r@@30 u@@24))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26443_26443 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_26443_35231 q@@24 w@@27 r@@30 u@@24))
)))
(assert (forall ((p@@29 T@Field_16691_16890) (v_1@@28 T@FrameType) (q@@25 T@Field_16691_16890) (w@@28 T@FrameType) (r@@31 T@Field_16691_16890) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_26443_26443 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_26443_26443 q@@25 w@@28 r@@31 u@@25)) (InsidePredicate_26443_26443 p@@29 v_1@@28 r@@31 u@@25))
 :qid |stdinbpl.285:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26443_26443 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_26443_26443 q@@25 w@@28 r@@31 u@@25))
)))
(assert (forall ((a@@35 Int) ) (!  (=> (< a@@35 0) (= (|Math#clip| a@@35) 0))
 :qid |stdinbpl.396:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@35))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@36 (Array Int Bool)) (b@@24 (Array Int Bool)) (o@@9 Int) ) (! (= (select (|Set#Union_13862| a@@36 b@@24) o@@9)  (or (select a@@36 o@@9) (select b@@24 o@@9)))
 :qid |stdinbpl.329:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_13862| a@@36 b@@24) o@@9))
)))
(assert (forall ((a@@37 (Array T@Ref Bool)) (b@@25 (Array T@Ref Bool)) (o@@10 T@Ref) ) (! (= (select (|Set#Union_17073| a@@37 b@@25) o@@10)  (or (select a@@37 o@@10) (select b@@25 o@@10)))
 :qid |stdinbpl.329:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_17073| a@@37 b@@25) o@@10))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_26383)
(declare-fun vas@@11 () (Array T@Ref Bool))
(declare-fun vis@@3 () (Array Int Bool))
(declare-fun neverTriggered42 (T@Ref Int) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_26404)
(declare-fun neverTriggered40 (T@Ref Int) Bool)
(declare-fun bs () (Array T@Ref Bool))
(declare-fun b1 () T@Ref)
(declare-fun js () (Array Int Bool))
(declare-fun j1_2 () Int)
(declare-fun Heap@6 () T@PolymorphicMapType_26383)
(declare-fun Mask@4 () T@PolymorphicMapType_26404)
(declare-fun invRecv39 (T@Ref Int) T@Ref)
(declare-fun invRecv40 (T@Ref Int) Int)
(declare-fun qpRange40 (T@Ref Int) Bool)
(declare-fun getPredWandId_16691_4198 (T@Field_32744_4198) Int)
(declare-fun getPredWandId_16691_16890 (T@Field_16691_16890) Int)
(declare-fun getPredWandId_16691_53 (T@Field_26443_53) Int)
(declare-fun getPredWandId_16691_26457 (T@Field_26456_26457) Int)
(declare-fun getPredWandId_16691_111174 (T@Field_16691_39015) Int)
(declare-fun getPredWandId_16889_4198 (T@Field_16889_4198) Int)
(declare-fun getPredWandId_16889_53 (T@Field_16889_53) Int)
(declare-fun getPredWandId_16889_26457 (T@Field_16889_26457) Int)
(declare-fun getPredWandId_16889_111983 (T@Field_39010_39015) Int)
(declare-fun getPredWandId_16914_4198 (T@Field_16914_4198) Int)
(declare-fun getPredWandId_16914_53 (T@Field_16914_53) Int)
(declare-fun getPredWandId_16914_26457 (T@Field_16914_26457) Int)
(declare-fun getPredWandId_16914_112792 (T@Field_39918_39923) Int)
(declare-fun Heap@5 () T@PolymorphicMapType_26383)
(declare-fun a1 () T@Ref)
(declare-fun i1_9 () Int)
(declare-fun Heap@2 () T@PolymorphicMapType_26383)
(declare-fun Heap@3 () T@PolymorphicMapType_26383)
(declare-fun Heap@4 () T@PolymorphicMapType_26383)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@3 () T@PolymorphicMapType_26404)
(declare-fun Mask@2 () T@PolymorphicMapType_26404)
(declare-fun Mask@1 () T@PolymorphicMapType_26404)
(declare-fun Heap@1 () T@PolymorphicMapType_26383)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_26383)
(declare-fun Heap@0 () T@PolymorphicMapType_26383)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_26404)
(declare-fun QPMask@1 () T@PolymorphicMapType_26404)
(declare-fun Heap@@56 () T@PolymorphicMapType_26383)
(declare-fun neverTriggered38 (T@Ref Int) Bool)
(declare-fun neverTriggered36 (T@Ref Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_26404)
(declare-fun invRecv35 (T@Ref Int) T@Ref)
(declare-fun invRecv36 (T@Ref Int) Int)
(declare-fun qpRange36 (T@Ref Int) Bool)
(declare-fun neverTriggered34 (T@Ref Int) Bool)
(declare-fun invRecv33 (T@Ref Int) T@Ref)
(declare-fun invRecv34 (T@Ref Int) Int)
(declare-fun qpRange34 (T@Ref Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id test_twos_3)
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
 (=> (= (ControlFlow 0 0) 41) (let ((anon30_Else_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (= (foo_twos ExhaleHeap@2 vas@@11 vis@@3) 0))))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (forall ((a_8_1 T@Ref) (i_8_1 Int) (a_8_2 T@Ref) (i_8_2 Int) ) (!  (=> (and (and (and (and (and (not (= a_8_1 a_8_2)) (not (= i_8_1 i_8_2))) (and (select vas@@11 a_8_1) (select vis@@3 i_8_1))) (and (select vas@@11 a_8_2) (select vis@@3 i_8_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_8_1 a_8_2)) (not (= i_8_1 i_8_2))))
 :qid |stdinbpl.2641:21|
 :skolemid |256|
 :pattern ( (neverTriggered42 a_8_1 i_8_1) (neverTriggered42 a_8_2 i_8_2))
))) (=> (forall ((a_8_1@@0 T@Ref) (i_8_1@@0 Int) (a_8_2@@0 T@Ref) (i_8_2@@0 Int) ) (!  (=> (and (and (and (and (and (not (= a_8_1@@0 a_8_2@@0)) (not (= i_8_1@@0 i_8_2@@0))) (and (select vas@@11 a_8_1@@0) (select vis@@3 i_8_1@@0))) (and (select vas@@11 a_8_2@@0) (select vis@@3 i_8_2@@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_8_1@@0 a_8_2@@0)) (not (= i_8_1@@0 i_8_2@@0))))
 :qid |stdinbpl.2641:21|
 :skolemid |256|
 :pattern ( (neverTriggered42 a_8_1@@0 i_8_1@@0) (neverTriggered42 a_8_2@@0 i_8_2@@0))
)) (=> (= (ControlFlow 0 8) (- 0 7)) (forall ((a_8_1@@1 T@Ref) (i_8_1@@1 Int) ) (!  (=> (and (select vas@@11 a_8_1@@1) (select vis@@3 i_8_1@@1)) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@3) null (two a_8_1@@1 i_8_1@@1)) NoPerm)))
 :qid |stdinbpl.2648:21|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@2) null (two a_8_1@@1 i_8_1@@1)))
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@3) null (two a_8_1@@1 i_8_1@@1)))
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@2) null (two a_8_1@@1 i_8_1@@1)))
)))))))
(let ((anon29_Else_correct  (and (=> (= (ControlFlow 0 12) (- 0 14)) (forall ((a$1_1 T@Ref) (i$1_1 Int) (a$1_1_1 T@Ref) (i$1_1_1 Int) ) (!  (=> (and (and (and (and (and (not (= a$1_1 a$1_1_1)) (not (= i$1_1 i$1_1_1))) (and (select (|Set#Difference_17067| bs (|Set#Singleton_17073| b1)) a$1_1) (select (|Set#Difference_13832| js (|Set#Singleton_13862| j1_2)) i$1_1))) (and (select (|Set#Difference_17067| bs (|Set#Singleton_17073| b1)) a$1_1_1) (select (|Set#Difference_13832| js (|Set#Singleton_13862| j1_2)) i$1_1_1))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a$1_1 a$1_1_1)) (not (= i$1_1 i$1_1_1))))
 :qid |stdinbpl.2581:17|
 :skolemid |249|
 :pattern ( (neverTriggered40 a$1_1 i$1_1) (neverTriggered40 a$1_1_1 i$1_1_1))
))) (=> (forall ((a$1_1@@0 T@Ref) (i$1_1@@0 Int) (a$1_1_1@@0 T@Ref) (i$1_1_1@@0 Int) ) (!  (=> (and (and (and (and (and (not (= a$1_1@@0 a$1_1_1@@0)) (not (= i$1_1@@0 i$1_1_1@@0))) (and (select (|Set#Difference_17067| bs (|Set#Singleton_17073| b1)) a$1_1@@0) (select (|Set#Difference_13832| js (|Set#Singleton_13862| j1_2)) i$1_1@@0))) (and (select (|Set#Difference_17067| bs (|Set#Singleton_17073| b1)) a$1_1_1@@0) (select (|Set#Difference_13832| js (|Set#Singleton_13862| j1_2)) i$1_1_1@@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a$1_1@@0 a$1_1_1@@0)) (not (= i$1_1@@0 i$1_1_1@@0))))
 :qid |stdinbpl.2581:17|
 :skolemid |249|
 :pattern ( (neverTriggered40 a$1_1@@0 i$1_1@@0) (neverTriggered40 a$1_1_1@@0 i$1_1_1@@0))
)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((a$1_1@@1 T@Ref) (i$1_1@@1 Int) ) (!  (=> (and (select (|Set#Difference_17067| bs (|Set#Singleton_17073| b1)) a$1_1@@1) (select (|Set#Difference_13832| js (|Set#Singleton_13862| j1_2)) i$1_1@@1)) (>= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@4) null (two a$1_1@@1 i$1_1@@1)) FullPerm))
 :qid |stdinbpl.2588:17|
 :skolemid |250|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@6) null (two a$1_1@@1 i$1_1@@1)))
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@4) null (two a$1_1@@1 i$1_1@@1)))
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@6) null (two a$1_1@@1 i$1_1@@1)))
))) (=> (forall ((a$1_1@@2 T@Ref) (i$1_1@@2 Int) ) (!  (=> (and (select (|Set#Difference_17067| bs (|Set#Singleton_17073| b1)) a$1_1@@2) (select (|Set#Difference_13832| js (|Set#Singleton_13862| j1_2)) i$1_1@@2)) (>= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@4) null (two a$1_1@@2 i$1_1@@2)) FullPerm))
 :qid |stdinbpl.2588:17|
 :skolemid |250|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@6) null (two a$1_1@@2 i$1_1@@2)))
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@4) null (two a$1_1@@2 i$1_1@@2)))
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@6) null (two a$1_1@@2 i$1_1@@2)))
)) (=> (and (and (forall ((a$1_1@@3 T@Ref) (i$1_1@@3 Int) ) (!  (=> (and (and (select (|Set#Difference_17067| bs (|Set#Singleton_17073| b1)) a$1_1@@3) (select (|Set#Difference_13832| js (|Set#Singleton_13862| j1_2)) i$1_1@@3)) (< NoPerm FullPerm)) (and (and (= (invRecv39 a$1_1@@3 i$1_1@@3) a$1_1@@3) (= (invRecv40 a$1_1@@3 i$1_1@@3) i$1_1@@3)) (qpRange40 a$1_1@@3 i$1_1@@3)))
 :qid |stdinbpl.2594:22|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@6) null (two a$1_1@@3 i$1_1@@3)))
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@4) null (two a$1_1@@3 i$1_1@@3)))
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@6) null (two a$1_1@@3 i$1_1@@3)))
)) (forall ((a_7 T@Ref) (i_7_1 Int) ) (!  (=> (and (and (and (select (|Set#Difference_17067| bs (|Set#Singleton_17073| b1)) (invRecv39 a_7 i_7_1)) (select (|Set#Difference_13832| js (|Set#Singleton_13862| j1_2)) (invRecv40 a_7 i_7_1))) (< NoPerm FullPerm)) (qpRange40 a_7 i_7_1)) (and (= (invRecv39 a_7 i_7_1) a_7) (= (invRecv40 a_7 i_7_1) i_7_1)))
 :qid |stdinbpl.2598:22|
 :skolemid |252|
 :pattern ( (invRecv39 a_7 i_7_1) (invRecv40 a_7 i_7_1))
))) (and (forall ((a_7@@0 T@Ref) (i_7_1@@0 Int) ) (!  (=> (and (and (and (select (|Set#Difference_17067| bs (|Set#Singleton_17073| b1)) (invRecv39 a_7@@0 i_7_1@@0)) (select (|Set#Difference_13832| js (|Set#Singleton_13862| j1_2)) (invRecv40 a_7@@0 i_7_1@@0))) (< NoPerm FullPerm)) (qpRange40 a_7@@0 i_7_1@@0)) (and (and (= (invRecv39 a_7@@0 i_7_1@@0) a_7@@0) (= (invRecv40 a_7@@0 i_7_1@@0) i_7_1@@0)) (= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@3) null (two a_7@@0 i_7_1@@0)) (- (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@4) null (two a_7@@0 i_7_1@@0)) FullPerm))))
 :qid |stdinbpl.2604:22|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@3) null (two a_7@@0 i_7_1@@0)))
)) (forall ((a_7@@1 T@Ref) (i_7_1@@1 Int) ) (!  (=> (not (and (and (and (select (|Set#Difference_17067| bs (|Set#Singleton_17073| b1)) (invRecv39 a_7@@1 i_7_1@@1)) (select (|Set#Difference_13832| js (|Set#Singleton_13862| j1_2)) (invRecv40 a_7@@1 i_7_1@@1))) (< NoPerm FullPerm)) (qpRange40 a_7@@1 i_7_1@@1))) (= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@3) null (two a_7@@1 i_7_1@@1)) (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@4) null (two a_7@@1 i_7_1@@1))))
 :qid |stdinbpl.2608:22|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@3) null (two a_7@@1 i_7_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_32744_4198) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_16691_4198 f_5))) (not (= (getPredWandId_16691_4198 f_5) 1))) (= (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@4) o_9 f_5) (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| QPMask@3) o_9 f_5)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@4) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| QPMask@3) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_16691_16890) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_16691_82068 f_5@@0))) (not (= (getPredWandId_16691_16890 f_5@@0) 1))) (= (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| Mask@4) o_9@@0 f_5@@0) (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| QPMask@3) o_9@@0 f_5@@0)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| Mask@4) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| QPMask@3) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_26443_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_16691_53 f_5@@1))) (not (= (getPredWandId_16691_53 f_5@@1) 1))) (= (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| Mask@4) o_9@@1 f_5@@1) (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| QPMask@3) o_9@@1 f_5@@1)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| Mask@4) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| QPMask@3) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_26456_26457) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_16691_26457 f_5@@2))) (not (= (getPredWandId_16691_26457 f_5@@2) 1))) (= (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| Mask@4) o_9@@2 f_5@@2) (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| QPMask@3) o_9@@2 f_5@@2)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| Mask@4) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| QPMask@3) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_16691_39015) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_16691_96420 f_5@@3))) (not (= (getPredWandId_16691_111174 f_5@@3) 1))) (= (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| Mask@4) o_9@@3 f_5@@3) (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| QPMask@3) o_9@@3 f_5@@3)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| Mask@4) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| QPMask@3) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_16889_4198) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_16889_4198 f_5@@4))) (not (= (getPredWandId_16889_4198 f_5@@4) 1))) (= (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| Mask@4) o_9@@4 f_5@@4) (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| QPMask@3) o_9@@4 f_5@@4)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| Mask@4) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| QPMask@3) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_35231_35232) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_16889_16890 f_5@@5))) (not (= (getPredWandId_16889_16890 f_5@@5) 1))) (= (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| Mask@4) o_9@@5 f_5@@5) (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| QPMask@3) o_9@@5 f_5@@5)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| Mask@4) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| QPMask@3) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_16889_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_16889_53 f_5@@6))) (not (= (getPredWandId_16889_53 f_5@@6) 1))) (= (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| Mask@4) o_9@@6 f_5@@6) (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| QPMask@3) o_9@@6 f_5@@6)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| Mask@4) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| QPMask@3) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_16889_26457) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_16889_26457 f_5@@7))) (not (= (getPredWandId_16889_26457 f_5@@7) 1))) (= (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| Mask@4) o_9@@7 f_5@@7) (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| QPMask@3) o_9@@7 f_5@@7)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| Mask@4) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| QPMask@3) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_39010_39015) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_16889_97251 f_5@@8))) (not (= (getPredWandId_16889_111983 f_5@@8) 1))) (= (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| Mask@4) o_9@@8 f_5@@8) (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| QPMask@3) o_9@@8 f_5@@8)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| Mask@4) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| QPMask@3) o_9@@8 f_5@@8))
))) (forall ((o_9@@9 T@Ref) (f_5@@9 T@Field_16914_4198) ) (!  (=> (or (or (not (= o_9@@9 null)) (not (IsPredicateField_16914_4198 f_5@@9))) (not (= (getPredWandId_16914_4198 f_5@@9) 1))) (= (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| Mask@4) o_9@@9 f_5@@9) (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| QPMask@3) o_9@@9 f_5@@9)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| Mask@4) o_9@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| QPMask@3) o_9@@9 f_5@@9))
))) (forall ((o_9@@10 T@Ref) (f_5@@10 T@Field_37402_37403) ) (!  (=> (or (or (not (= o_9@@10 null)) (not (IsPredicateField_16914_16915 f_5@@10))) (not (= (getPredWandId_16914_16915 f_5@@10) 1))) (= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@4) o_9@@10 f_5@@10) (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@3) o_9@@10 f_5@@10)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@4) o_9@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@3) o_9@@10 f_5@@10))
))) (forall ((o_9@@11 T@Ref) (f_5@@11 T@Field_16914_53) ) (!  (=> (or (or (not (= o_9@@11 null)) (not (IsPredicateField_16914_53 f_5@@11))) (not (= (getPredWandId_16914_53 f_5@@11) 1))) (= (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| Mask@4) o_9@@11 f_5@@11) (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| QPMask@3) o_9@@11 f_5@@11)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| Mask@4) o_9@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| QPMask@3) o_9@@11 f_5@@11))
))) (forall ((o_9@@12 T@Ref) (f_5@@12 T@Field_16914_26457) ) (!  (=> (or (or (not (= o_9@@12 null)) (not (IsPredicateField_16914_26457 f_5@@12))) (not (= (getPredWandId_16914_26457 f_5@@12) 1))) (= (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| Mask@4) o_9@@12 f_5@@12) (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| QPMask@3) o_9@@12 f_5@@12)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| Mask@4) o_9@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| QPMask@3) o_9@@12 f_5@@12))
))) (forall ((o_9@@13 T@Ref) (f_5@@13 T@Field_39918_39923) ) (!  (=> (or (or (not (= o_9@@13 null)) (not (IsPredicateField_16914_98082 f_5@@13))) (not (= (getPredWandId_16914_112792 f_5@@13) 1))) (= (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| Mask@4) o_9@@13 f_5@@13) (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| QPMask@3) o_9@@13 f_5@@13)))
 :qid |stdinbpl.2614:29|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| Mask@4) o_9@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| QPMask@3) o_9@@13 f_5@@13))
))) (and (IdenticalOnKnownLocations Heap@6 ExhaleHeap@2 QPMask@3) (state ExhaleHeap@2 QPMask@3))) (and (=> (= (ControlFlow 0 12) 8) anon30_Then_correct) (=> (= (ControlFlow 0 12) 11) anon30_Else_correct))))))))))
(let ((anon29_Then_correct true))
(let ((anon16_correct  (=> (= Heap@6 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@5) (store (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9) (PolymorphicMapType_26932 (store (|PolymorphicMapType_26932_16691_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) a1 val true) (|PolymorphicMapType_26932_16691_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_16691_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_16691_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_16691_83865#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_35231_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_35231_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_35231_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_35231_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_35231_84913#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_37402_4198#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_37402_53#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_37402_26457#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_37402_35232#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))) (|PolymorphicMapType_26932_37402_85961#PolymorphicMapType_26932| (select (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@5) null (|two#sm| a1 i1_9))))) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@5) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@5))) (=> (and (state Heap@6 Mask@4) (state Heap@6 Mask@4)) (and (=> (= (ControlFlow 0 15) 6) anon29_Then_correct) (=> (= (ControlFlow 0 15) 12) anon29_Else_correct))))))
(let ((anon28_Else_correct  (=> (HasDirectPerm_16914_16915 Mask@4 null (two a1 i1_9)) (=> (and (= Heap@5 Heap@2) (= (ControlFlow 0 17) 15)) anon16_correct))))
(let ((anon28_Then_correct  (=> (not (HasDirectPerm_16914_16915 Mask@4 null (two a1 i1_9))) (=> (and (and (= Heap@3 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@2) (store (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@2) null (|two#sm| a1 i1_9) ZeroPMask) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@2) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@2))) (= Heap@4 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@3) (store (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@3) null (two a1 i1_9) freshVersion@0) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@3) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 16) 15))) anon16_correct))))
(let ((anon14_correct  (=> (and (= Mask@3 (PolymorphicMapType_26404 (store (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@2) a1 val (- (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@2) a1 val) FullPerm)) (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| Mask@2) (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| Mask@2))) (= Mask@4 (PolymorphicMapType_26404 (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| Mask@3) (store (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@3) null (two a1 i1_9) (+ (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@3) null (two a1 i1_9)) FullPerm)) (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| Mask@3) (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| Mask@3)))) (=> (and (and (state Heap@2 Mask@4) (state Heap@2 Mask@4)) (and (|two#trigger_16914| Heap@2 (two a1 i1_9)) (= (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@2) null (two a1 i1_9)) (FrameFragment_4348 (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@2) a1 val))))) (and (=> (= (ControlFlow 0 18) 16) anon28_Then_correct) (=> (= (ControlFlow 0 18) 17) anon28_Else_correct))))))
(let ((anon27_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 21) 18)) anon14_correct)))
(let ((anon27_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (<= FullPerm (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@2) a1 val))) (=> (<= FullPerm (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@2) a1 val)) (=> (= (ControlFlow 0 19) 18) anon14_correct))))))
(let ((anon12_correct  (=> (not (= a1 null)) (=> (and (and (= Mask@2 (PolymorphicMapType_26404 (store (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@1) a1 val (+ (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@1) a1 val) FullPerm)) (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| Mask@1) (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| Mask@1))) (state Heap@1 Mask@2)) (and (state Heap@1 Mask@2) (state Heap@1 Mask@2))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (HasDirectPerm_16691_4198 Mask@2 a1 val)) (=> (HasDirectPerm_16691_4198 Mask@2 a1 val) (and (=> (= (ControlFlow 0 22) (- 0 23)) (= FullPerm (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@2) a1 val))) (=> (= FullPerm (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@2) a1 val)) (=> (and (= Heap@2 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| Heap@1) (store (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@1) a1 val (- (+ 1 (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| Heap@1) a1 val)) 1)) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| Heap@1) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| Heap@1))) (state Heap@2 Mask@2)) (and (=> (= (ControlFlow 0 22) 19) anon27_Then_correct) (=> (= (ControlFlow 0 22) 21) anon27_Else_correct)))))))))))
(let ((anon26_Else_correct  (=> (HasDirectPerm_16914_16915 Mask@1 null (two a1 i1_9)) (=> (and (= Heap@1 ExhaleHeap@1) (= (ControlFlow 0 26) 22)) anon12_correct))))
(let ((anon26_Then_correct  (=> (and (and (not (HasDirectPerm_16914_16915 Mask@1 null (two a1 i1_9))) (= Heap@0 (PolymorphicMapType_26383 (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16273_16274#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16889_16890#PolymorphicMapType_26383| ExhaleHeap@1) (store (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@1) null (two a1 i1_9) newVersion@0) (|PolymorphicMapType_26383_16893_57020#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16918_67905#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16691_16890#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16691_79626#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16889_4198#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16889_53#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16889_26457#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16914_4198#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16914_53#PolymorphicMapType_26383| ExhaleHeap@1) (|PolymorphicMapType_26383_16914_26457#PolymorphicMapType_26383| ExhaleHeap@1)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 25) 22))) anon12_correct)))
(let ((anon10_correct  (=> (= Mask@1 (PolymorphicMapType_26404 (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| Mask@0) (store (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@0) null (two a1 i1_9) (- (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@0) null (two a1 i1_9)) FullPerm)) (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| Mask@0) (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| Mask@0))) (and (=> (= (ControlFlow 0 27) 25) anon26_Then_correct) (=> (= (ControlFlow 0 27) 26) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 30) 27)) anon10_correct)))
(let ((anon25_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= FullPerm (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@0) null (two a1 i1_9)))) (=> (<= FullPerm (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| Mask@0) null (two a1 i1_9))) (=> (= (ControlFlow 0 28) 27) anon10_correct))))))
(let ((anon8_correct  (=> (= Mask@0 (PolymorphicMapType_26404 (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| QPMask@1) (store (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) null (two b1 j1_2) (- (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) null (two b1 j1_2)) FullPerm)) (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| QPMask@1) (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| QPMask@1))) (=> (and (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@1 Mask@0) (state ExhaleHeap@1 Mask@0)) (=> (and (and (and (select vas@@11 a1) (state ExhaleHeap@1 Mask@0)) (and (state ExhaleHeap@1 Mask@0) (select vis@@3 i1_9))) (and (and (state ExhaleHeap@1 Mask@0) (state ExhaleHeap@1 Mask@0)) (and (|two#trigger_16914| ExhaleHeap@1 (two a1 i1_9)) (= (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| ExhaleHeap@1) null (two a1 i1_9)) (FrameFragment_4348 (select (|PolymorphicMapType_26383_16691_4198#PolymorphicMapType_26383| ExhaleHeap@1) a1 val)))))) (and (=> (= (ControlFlow 0 31) 28) anon25_Then_correct) (=> (= (ControlFlow 0 31) 30) anon25_Else_correct)))))))
(let ((anon24_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 34) 31)) anon8_correct)))
(let ((anon24_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (<= FullPerm (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) null (two b1 j1_2)))) (=> (<= FullPerm (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) null (two b1 j1_2))) (=> (= (ControlFlow 0 32) 31) anon8_correct))))))
(let ((anon23_Else_correct  (=> (= (foo_twos Heap@@56 vas@@11 vis@@3) 0) (=> (and (and (and (state Heap@@56 QPMask@1) (state Heap@@56 QPMask@1)) (and (select bs b1) (state Heap@@56 QPMask@1))) (and (and (state Heap@@56 QPMask@1) (select js j1_2)) (and (state Heap@@56 QPMask@1) (state Heap@@56 QPMask@1)))) (and (=> (= (ControlFlow 0 35) 32) anon24_Then_correct) (=> (= (ControlFlow 0 35) 34) anon24_Else_correct))))))
(let ((anon23_Then_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((a_5_1 T@Ref) (i_5_1 Int) (a_5_2 T@Ref) (i_5_2 Int) ) (!  (=> (and (and (and (and (and (not (= a_5_1 a_5_2)) (not (= i_5_1 i_5_2))) (and (select vas@@11 a_5_1) (select vis@@3 i_5_1))) (and (select vas@@11 a_5_2) (select vis@@3 i_5_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_5_1 a_5_2)) (not (= i_5_1 i_5_2))))
 :qid |stdinbpl.2438:21|
 :skolemid |245|
 :pattern ( (neverTriggered38 a_5_1 i_5_1) (neverTriggered38 a_5_2 i_5_2))
))) (=> (forall ((a_5_1@@0 T@Ref) (i_5_1@@0 Int) (a_5_2@@0 T@Ref) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (and (not (= a_5_1@@0 a_5_2@@0)) (not (= i_5_1@@0 i_5_2@@0))) (and (select vas@@11 a_5_1@@0) (select vis@@3 i_5_1@@0))) (and (select vas@@11 a_5_2@@0) (select vis@@3 i_5_2@@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_5_1@@0 a_5_2@@0)) (not (= i_5_1@@0 i_5_2@@0))))
 :qid |stdinbpl.2438:21|
 :skolemid |245|
 :pattern ( (neverTriggered38 a_5_1@@0 i_5_1@@0) (neverTriggered38 a_5_2@@0 i_5_2@@0))
)) (=> (= (ControlFlow 0 4) (- 0 3)) (forall ((a_5_1@@1 T@Ref) (i_5_1@@1 Int) ) (!  (=> (and (select vas@@11 a_5_1@@1) (select vis@@3 i_5_1@@1)) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) null (two a_5_1@@1 i_5_1@@1)) NoPerm)))
 :qid |stdinbpl.2445:21|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@56) null (two a_5_1@@1 i_5_1@@1)))
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) null (two a_5_1@@1 i_5_1@@1)))
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@56) null (two a_5_1@@1 i_5_1@@1)))
)))))))
(let ((anon22_Else_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((a$0_1 T@Ref) (i$0_1 Int) (a$0_1_1 T@Ref) (i$0_1_2 Int) ) (!  (=> (and (and (and (and (and (not (= a$0_1 a$0_1_1)) (not (= i$0_1 i$0_1_2))) (and (select bs a$0_1) (select js i$0_1))) (and (select bs a$0_1_1) (select js i$0_1_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a$0_1 a$0_1_1)) (not (= i$0_1 i$0_1_2))))
 :qid |stdinbpl.2388:17|
 :skolemid |239|
 :pattern ( (neverTriggered36 a$0_1 i$0_1) (neverTriggered36 a$0_1_1 i$0_1_2))
))) (=> (forall ((a$0_1@@0 T@Ref) (i$0_1@@0 Int) (a$0_1_1@@0 T@Ref) (i$0_1_2@@0 Int) ) (!  (=> (and (and (and (and (and (not (= a$0_1@@0 a$0_1_1@@0)) (not (= i$0_1@@0 i$0_1_2@@0))) (and (select bs a$0_1@@0) (select js i$0_1@@0))) (and (select bs a$0_1_1@@0) (select js i$0_1_2@@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a$0_1@@0 a$0_1_1@@0)) (not (= i$0_1@@0 i$0_1_2@@0))))
 :qid |stdinbpl.2388:17|
 :skolemid |239|
 :pattern ( (neverTriggered36 a$0_1@@0 i$0_1@@0) (neverTriggered36 a$0_1_1@@0 i$0_1_2@@0))
)) (=> (forall ((a$0_1@@1 T@Ref) (i$0_1@@1 Int) ) (!  (=> (and (and (select bs a$0_1@@1) (select js i$0_1@@1)) (< NoPerm FullPerm)) (and (and (= (invRecv35 a$0_1@@1 i$0_1@@1) a$0_1@@1) (= (invRecv36 a$0_1@@1 i$0_1@@1) i$0_1@@1)) (qpRange36 a$0_1@@1 i$0_1@@1)))
 :qid |stdinbpl.2394:22|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@56) null (two a$0_1@@1 i$0_1@@1)))
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@0) null (two a$0_1@@1 i$0_1@@1)))
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@56) null (two a$0_1@@1 i$0_1@@1)))
)) (=> (and (forall ((a_4 T@Ref) (i_4_1 Int) ) (!  (=> (and (and (and (select bs (invRecv35 a_4 i_4_1)) (select js (invRecv36 a_4 i_4_1))) (< NoPerm FullPerm)) (qpRange36 a_4 i_4_1)) (and (= (invRecv35 a_4 i_4_1) a_4) (= (invRecv36 a_4 i_4_1) i_4_1)))
 :qid |stdinbpl.2398:22|
 :skolemid |241|
 :pattern ( (invRecv35 a_4 i_4_1) (invRecv36 a_4 i_4_1))
)) (forall ((a_4@@0 T@Ref) (i_4_1@@0 Int) ) (!  (=> (and (and (and (select bs (invRecv35 a_4@@0 i_4_1@@0)) (select js (invRecv36 a_4@@0 i_4_1@@0))) (< NoPerm FullPerm)) (qpRange36 a_4@@0 i_4_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv35 a_4@@0 i_4_1@@0) a_4@@0) (= (invRecv36 a_4@@0 i_4_1@@0) i_4_1@@0))) (= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) null (two a_4@@0 i_4_1@@0)) (+ (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@0) null (two a_4@@0 i_4_1@@0)) FullPerm))))
 :qid |stdinbpl.2404:22|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) null (two a_4@@0 i_4_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@14 T@Ref) (f_5@@14 T@Field_32744_4198) ) (!  (=> (or (or (not (= o_9@@14 null)) (not (IsPredicateField_16691_4198 f_5@@14))) (not (= (getPredWandId_16691_4198 f_5@@14) 1))) (= (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| QPMask@0) o_9@@14 f_5@@14) (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| QPMask@1) o_9@@14 f_5@@14)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| QPMask@0) o_9@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| QPMask@1) o_9@@14 f_5@@14))
)) (forall ((o_9@@15 T@Ref) (f_5@@15 T@Field_16691_16890) ) (!  (=> (or (or (not (= o_9@@15 null)) (not (IsPredicateField_16691_82068 f_5@@15))) (not (= (getPredWandId_16691_16890 f_5@@15) 1))) (= (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| QPMask@0) o_9@@15 f_5@@15) (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| QPMask@1) o_9@@15 f_5@@15)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| QPMask@0) o_9@@15 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| QPMask@1) o_9@@15 f_5@@15))
))) (forall ((o_9@@16 T@Ref) (f_5@@16 T@Field_26443_53) ) (!  (=> (or (or (not (= o_9@@16 null)) (not (IsPredicateField_16691_53 f_5@@16))) (not (= (getPredWandId_16691_53 f_5@@16) 1))) (= (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| QPMask@0) o_9@@16 f_5@@16) (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| QPMask@1) o_9@@16 f_5@@16)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| QPMask@0) o_9@@16 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| QPMask@1) o_9@@16 f_5@@16))
))) (forall ((o_9@@17 T@Ref) (f_5@@17 T@Field_26456_26457) ) (!  (=> (or (or (not (= o_9@@17 null)) (not (IsPredicateField_16691_26457 f_5@@17))) (not (= (getPredWandId_16691_26457 f_5@@17) 1))) (= (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| QPMask@0) o_9@@17 f_5@@17) (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| QPMask@1) o_9@@17 f_5@@17)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| QPMask@0) o_9@@17 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| QPMask@1) o_9@@17 f_5@@17))
))) (forall ((o_9@@18 T@Ref) (f_5@@18 T@Field_16691_39015) ) (!  (=> (or (or (not (= o_9@@18 null)) (not (IsPredicateField_16691_96420 f_5@@18))) (not (= (getPredWandId_16691_111174 f_5@@18) 1))) (= (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| QPMask@0) o_9@@18 f_5@@18) (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| QPMask@1) o_9@@18 f_5@@18)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| QPMask@0) o_9@@18 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| QPMask@1) o_9@@18 f_5@@18))
))) (forall ((o_9@@19 T@Ref) (f_5@@19 T@Field_16889_4198) ) (!  (=> (or (or (not (= o_9@@19 null)) (not (IsPredicateField_16889_4198 f_5@@19))) (not (= (getPredWandId_16889_4198 f_5@@19) 1))) (= (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| QPMask@0) o_9@@19 f_5@@19) (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| QPMask@1) o_9@@19 f_5@@19)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| QPMask@0) o_9@@19 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| QPMask@1) o_9@@19 f_5@@19))
))) (forall ((o_9@@20 T@Ref) (f_5@@20 T@Field_35231_35232) ) (!  (=> (or (or (not (= o_9@@20 null)) (not (IsPredicateField_16889_16890 f_5@@20))) (not (= (getPredWandId_16889_16890 f_5@@20) 1))) (= (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| QPMask@0) o_9@@20 f_5@@20) (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| QPMask@1) o_9@@20 f_5@@20)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| QPMask@0) o_9@@20 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| QPMask@1) o_9@@20 f_5@@20))
))) (forall ((o_9@@21 T@Ref) (f_5@@21 T@Field_16889_53) ) (!  (=> (or (or (not (= o_9@@21 null)) (not (IsPredicateField_16889_53 f_5@@21))) (not (= (getPredWandId_16889_53 f_5@@21) 1))) (= (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| QPMask@0) o_9@@21 f_5@@21) (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| QPMask@1) o_9@@21 f_5@@21)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| QPMask@0) o_9@@21 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| QPMask@1) o_9@@21 f_5@@21))
))) (forall ((o_9@@22 T@Ref) (f_5@@22 T@Field_16889_26457) ) (!  (=> (or (or (not (= o_9@@22 null)) (not (IsPredicateField_16889_26457 f_5@@22))) (not (= (getPredWandId_16889_26457 f_5@@22) 1))) (= (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| QPMask@0) o_9@@22 f_5@@22) (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| QPMask@1) o_9@@22 f_5@@22)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| QPMask@0) o_9@@22 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| QPMask@1) o_9@@22 f_5@@22))
))) (forall ((o_9@@23 T@Ref) (f_5@@23 T@Field_39010_39015) ) (!  (=> (or (or (not (= o_9@@23 null)) (not (IsPredicateField_16889_97251 f_5@@23))) (not (= (getPredWandId_16889_111983 f_5@@23) 1))) (= (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| QPMask@0) o_9@@23 f_5@@23) (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| QPMask@1) o_9@@23 f_5@@23)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| QPMask@0) o_9@@23 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| QPMask@1) o_9@@23 f_5@@23))
))) (forall ((o_9@@24 T@Ref) (f_5@@24 T@Field_16914_4198) ) (!  (=> (or (or (not (= o_9@@24 null)) (not (IsPredicateField_16914_4198 f_5@@24))) (not (= (getPredWandId_16914_4198 f_5@@24) 1))) (= (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| QPMask@0) o_9@@24 f_5@@24) (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| QPMask@1) o_9@@24 f_5@@24)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| QPMask@0) o_9@@24 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| QPMask@1) o_9@@24 f_5@@24))
))) (forall ((o_9@@25 T@Ref) (f_5@@25 T@Field_37402_37403) ) (!  (=> (or (or (not (= o_9@@25 null)) (not (IsPredicateField_16914_16915 f_5@@25))) (not (= (getPredWandId_16914_16915 f_5@@25) 1))) (= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@0) o_9@@25 f_5@@25) (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) o_9@@25 f_5@@25)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@0) o_9@@25 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) o_9@@25 f_5@@25))
))) (forall ((o_9@@26 T@Ref) (f_5@@26 T@Field_16914_53) ) (!  (=> (or (or (not (= o_9@@26 null)) (not (IsPredicateField_16914_53 f_5@@26))) (not (= (getPredWandId_16914_53 f_5@@26) 1))) (= (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| QPMask@0) o_9@@26 f_5@@26) (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| QPMask@1) o_9@@26 f_5@@26)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| QPMask@0) o_9@@26 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| QPMask@1) o_9@@26 f_5@@26))
))) (forall ((o_9@@27 T@Ref) (f_5@@27 T@Field_16914_26457) ) (!  (=> (or (or (not (= o_9@@27 null)) (not (IsPredicateField_16914_26457 f_5@@27))) (not (= (getPredWandId_16914_26457 f_5@@27) 1))) (= (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| QPMask@0) o_9@@27 f_5@@27) (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| QPMask@1) o_9@@27 f_5@@27)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| QPMask@0) o_9@@27 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| QPMask@1) o_9@@27 f_5@@27))
))) (forall ((o_9@@28 T@Ref) (f_5@@28 T@Field_39918_39923) ) (!  (=> (or (or (not (= o_9@@28 null)) (not (IsPredicateField_16914_98082 f_5@@28))) (not (= (getPredWandId_16914_112792 f_5@@28) 1))) (= (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| QPMask@0) o_9@@28 f_5@@28) (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| QPMask@1) o_9@@28 f_5@@28)))
 :qid |stdinbpl.2410:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| QPMask@0) o_9@@28 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| QPMask@1) o_9@@28 f_5@@28))
))) (forall ((a_4@@1 T@Ref) (i_4_1@@1 Int) ) (!  (=> (not (and (and (and (select bs (invRecv35 a_4@@1 i_4_1@@1)) (select js (invRecv36 a_4@@1 i_4_1@@1))) (< NoPerm FullPerm)) (qpRange36 a_4@@1 i_4_1@@1))) (= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) null (two a_4@@1 i_4_1@@1)) (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@0) null (two a_4@@1 i_4_1@@1))))
 :qid |stdinbpl.2414:22|
 :skolemid |244|
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@1) null (two a_4@@1 i_4_1@@1)))
))) (and (and (state Heap@@56 QPMask@1) (state Heap@@56 QPMask@1)) (and (state Heap@@56 QPMask@1) (state Heap@@56 QPMask@1)))) (and (=> (= (ControlFlow 0 36) 4) anon23_Then_correct) (=> (= (ControlFlow 0 36) 35) anon23_Else_correct)))))))))
(let ((anon22_Then_correct true))
(let ((anon21_Else_correct  (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((a_1_1 T@Ref) (i_1 Int) (a_1_2 T@Ref) (i_1_1 Int) ) (!  (=> (and (and (and (and (and (not (= a_1_1 a_1_2)) (not (= i_1 i_1_1))) (and (select vas@@11 a_1_1) (select vis@@3 i_1))) (and (select vas@@11 a_1_2) (select vis@@3 i_1_1))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_1_1 a_1_2)) (not (= i_1 i_1_1))))
 :qid |stdinbpl.2347:17|
 :skolemid |233|
 :pattern ( (neverTriggered34 a_1_1 i_1) (neverTriggered34 a_1_2 i_1_1))
))) (=> (forall ((a_1_1@@0 T@Ref) (i_1@@0 Int) (a_1_2@@0 T@Ref) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (and (not (= a_1_1@@0 a_1_2@@0)) (not (= i_1@@0 i_1_1@@0))) (and (select vas@@11 a_1_1@@0) (select vis@@3 i_1@@0))) (and (select vas@@11 a_1_2@@0) (select vis@@3 i_1_1@@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_1_1@@0 a_1_2@@0)) (not (= i_1@@0 i_1_1@@0))))
 :qid |stdinbpl.2347:17|
 :skolemid |233|
 :pattern ( (neverTriggered34 a_1_1@@0 i_1@@0) (neverTriggered34 a_1_2@@0 i_1_1@@0))
)) (=> (forall ((a_1_1@@1 T@Ref) (i_1@@1 Int) ) (!  (=> (and (and (select vas@@11 a_1_1@@1) (select vis@@3 i_1@@1)) (< NoPerm FullPerm)) (and (and (= (invRecv33 a_1_1@@1 i_1@@1) a_1_1@@1) (= (invRecv34 a_1_1@@1 i_1@@1) i_1@@1)) (qpRange34 a_1_1@@1 i_1@@1)))
 :qid |stdinbpl.2353:22|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@56) null (two a_1_1@@1 i_1@@1)))
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| ZeroMask) null (two a_1_1@@1 i_1@@1)))
 :pattern ( (select (|PolymorphicMapType_26383_16914_16915#PolymorphicMapType_26383| Heap@@56) null (two a_1_1@@1 i_1@@1)))
)) (=> (and (forall ((a_2_1 T@Ref) (i_2_1 Int) ) (!  (=> (and (and (and (select vas@@11 (invRecv33 a_2_1 i_2_1)) (select vis@@3 (invRecv34 a_2_1 i_2_1))) (< NoPerm FullPerm)) (qpRange34 a_2_1 i_2_1)) (and (= (invRecv33 a_2_1 i_2_1) a_2_1) (= (invRecv34 a_2_1 i_2_1) i_2_1)))
 :qid |stdinbpl.2357:22|
 :skolemid |235|
 :pattern ( (invRecv33 a_2_1 i_2_1) (invRecv34 a_2_1 i_2_1))
)) (forall ((a_2_1@@0 T@Ref) (i_2_1@@0 Int) ) (!  (=> (and (and (and (select vas@@11 (invRecv33 a_2_1@@0 i_2_1@@0)) (select vis@@3 (invRecv34 a_2_1@@0 i_2_1@@0))) (< NoPerm FullPerm)) (qpRange34 a_2_1@@0 i_2_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv33 a_2_1@@0 i_2_1@@0) a_2_1@@0) (= (invRecv34 a_2_1@@0 i_2_1@@0) i_2_1@@0))) (= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@0) null (two a_2_1@@0 i_2_1@@0)) (+ (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| ZeroMask) null (two a_2_1@@0 i_2_1@@0)) FullPerm))))
 :qid |stdinbpl.2363:22|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@0) null (two a_2_1@@0 i_2_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@29 T@Field_32744_4198) ) (!  (=> (or (or (not (= o_9@@29 null)) (not (IsPredicateField_16691_4198 f_5@@29))) (not (= (getPredWandId_16691_4198 f_5@@29) 1))) (= (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| ZeroMask) o_9@@29 f_5@@29) (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| QPMask@0) o_9@@29 f_5@@29)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| ZeroMask) o_9@@29 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_26404_16691_4198#PolymorphicMapType_26404| QPMask@0) o_9@@29 f_5@@29))
)) (forall ((o_9@@30 T@Ref) (f_5@@30 T@Field_16691_16890) ) (!  (=> (or (or (not (= o_9@@30 null)) (not (IsPredicateField_16691_82068 f_5@@30))) (not (= (getPredWandId_16691_16890 f_5@@30) 1))) (= (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| ZeroMask) o_9@@30 f_5@@30) (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| QPMask@0) o_9@@30 f_5@@30)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| ZeroMask) o_9@@30 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_26404_16691_16890#PolymorphicMapType_26404| QPMask@0) o_9@@30 f_5@@30))
))) (forall ((o_9@@31 T@Ref) (f_5@@31 T@Field_26443_53) ) (!  (=> (or (or (not (= o_9@@31 null)) (not (IsPredicateField_16691_53 f_5@@31))) (not (= (getPredWandId_16691_53 f_5@@31) 1))) (= (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| ZeroMask) o_9@@31 f_5@@31) (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| QPMask@0) o_9@@31 f_5@@31)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| ZeroMask) o_9@@31 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_26404_16691_53#PolymorphicMapType_26404| QPMask@0) o_9@@31 f_5@@31))
))) (forall ((o_9@@32 T@Ref) (f_5@@32 T@Field_26456_26457) ) (!  (=> (or (or (not (= o_9@@32 null)) (not (IsPredicateField_16691_26457 f_5@@32))) (not (= (getPredWandId_16691_26457 f_5@@32) 1))) (= (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| ZeroMask) o_9@@32 f_5@@32) (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| QPMask@0) o_9@@32 f_5@@32)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| ZeroMask) o_9@@32 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_26404_16691_26457#PolymorphicMapType_26404| QPMask@0) o_9@@32 f_5@@32))
))) (forall ((o_9@@33 T@Ref) (f_5@@33 T@Field_16691_39015) ) (!  (=> (or (or (not (= o_9@@33 null)) (not (IsPredicateField_16691_96420 f_5@@33))) (not (= (getPredWandId_16691_111174 f_5@@33) 1))) (= (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| ZeroMask) o_9@@33 f_5@@33) (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| QPMask@0) o_9@@33 f_5@@33)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| ZeroMask) o_9@@33 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_26404_16691_93805#PolymorphicMapType_26404| QPMask@0) o_9@@33 f_5@@33))
))) (forall ((o_9@@34 T@Ref) (f_5@@34 T@Field_16889_4198) ) (!  (=> (or (or (not (= o_9@@34 null)) (not (IsPredicateField_16889_4198 f_5@@34))) (not (= (getPredWandId_16889_4198 f_5@@34) 1))) (= (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| ZeroMask) o_9@@34 f_5@@34) (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| QPMask@0) o_9@@34 f_5@@34)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| ZeroMask) o_9@@34 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_26404_16889_4198#PolymorphicMapType_26404| QPMask@0) o_9@@34 f_5@@34))
))) (forall ((o_9@@35 T@Ref) (f_5@@35 T@Field_35231_35232) ) (!  (=> (or (or (not (= o_9@@35 null)) (not (IsPredicateField_16889_16890 f_5@@35))) (not (= (getPredWandId_16889_16890 f_5@@35) 1))) (= (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| ZeroMask) o_9@@35 f_5@@35) (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| QPMask@0) o_9@@35 f_5@@35)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| ZeroMask) o_9@@35 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_26404_16889_16890#PolymorphicMapType_26404| QPMask@0) o_9@@35 f_5@@35))
))) (forall ((o_9@@36 T@Ref) (f_5@@36 T@Field_16889_53) ) (!  (=> (or (or (not (= o_9@@36 null)) (not (IsPredicateField_16889_53 f_5@@36))) (not (= (getPredWandId_16889_53 f_5@@36) 1))) (= (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| ZeroMask) o_9@@36 f_5@@36) (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| QPMask@0) o_9@@36 f_5@@36)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| ZeroMask) o_9@@36 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_26404_16889_53#PolymorphicMapType_26404| QPMask@0) o_9@@36 f_5@@36))
))) (forall ((o_9@@37 T@Ref) (f_5@@37 T@Field_16889_26457) ) (!  (=> (or (or (not (= o_9@@37 null)) (not (IsPredicateField_16889_26457 f_5@@37))) (not (= (getPredWandId_16889_26457 f_5@@37) 1))) (= (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| ZeroMask) o_9@@37 f_5@@37) (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| QPMask@0) o_9@@37 f_5@@37)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| ZeroMask) o_9@@37 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_26404_16889_26457#PolymorphicMapType_26404| QPMask@0) o_9@@37 f_5@@37))
))) (forall ((o_9@@38 T@Ref) (f_5@@38 T@Field_39010_39015) ) (!  (=> (or (or (not (= o_9@@38 null)) (not (IsPredicateField_16889_97251 f_5@@38))) (not (= (getPredWandId_16889_111983 f_5@@38) 1))) (= (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| ZeroMask) o_9@@38 f_5@@38) (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| QPMask@0) o_9@@38 f_5@@38)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| ZeroMask) o_9@@38 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_26404_16889_94216#PolymorphicMapType_26404| QPMask@0) o_9@@38 f_5@@38))
))) (forall ((o_9@@39 T@Ref) (f_5@@39 T@Field_16914_4198) ) (!  (=> (or (or (not (= o_9@@39 null)) (not (IsPredicateField_16914_4198 f_5@@39))) (not (= (getPredWandId_16914_4198 f_5@@39) 1))) (= (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| ZeroMask) o_9@@39 f_5@@39) (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| QPMask@0) o_9@@39 f_5@@39)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| ZeroMask) o_9@@39 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_26404_16914_4198#PolymorphicMapType_26404| QPMask@0) o_9@@39 f_5@@39))
))) (forall ((o_9@@40 T@Ref) (f_5@@40 T@Field_37402_37403) ) (!  (=> (or (or (not (= o_9@@40 null)) (not (IsPredicateField_16914_16915 f_5@@40))) (not (= (getPredWandId_16914_16915 f_5@@40) 1))) (= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| ZeroMask) o_9@@40 f_5@@40) (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@0) o_9@@40 f_5@@40)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| ZeroMask) o_9@@40 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@0) o_9@@40 f_5@@40))
))) (forall ((o_9@@41 T@Ref) (f_5@@41 T@Field_16914_53) ) (!  (=> (or (or (not (= o_9@@41 null)) (not (IsPredicateField_16914_53 f_5@@41))) (not (= (getPredWandId_16914_53 f_5@@41) 1))) (= (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| ZeroMask) o_9@@41 f_5@@41) (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| QPMask@0) o_9@@41 f_5@@41)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| ZeroMask) o_9@@41 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_26404_16914_53#PolymorphicMapType_26404| QPMask@0) o_9@@41 f_5@@41))
))) (forall ((o_9@@42 T@Ref) (f_5@@42 T@Field_16914_26457) ) (!  (=> (or (or (not (= o_9@@42 null)) (not (IsPredicateField_16914_26457 f_5@@42))) (not (= (getPredWandId_16914_26457 f_5@@42) 1))) (= (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| ZeroMask) o_9@@42 f_5@@42) (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| QPMask@0) o_9@@42 f_5@@42)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| ZeroMask) o_9@@42 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_26404_16914_26457#PolymorphicMapType_26404| QPMask@0) o_9@@42 f_5@@42))
))) (forall ((o_9@@43 T@Ref) (f_5@@43 T@Field_39918_39923) ) (!  (=> (or (or (not (= o_9@@43 null)) (not (IsPredicateField_16914_98082 f_5@@43))) (not (= (getPredWandId_16914_112792 f_5@@43) 1))) (= (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| ZeroMask) o_9@@43 f_5@@43) (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| QPMask@0) o_9@@43 f_5@@43)))
 :qid |stdinbpl.2369:29|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| ZeroMask) o_9@@43 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_26404_16914_94627#PolymorphicMapType_26404| QPMask@0) o_9@@43 f_5@@43))
))) (and (forall ((a_2_1@@1 T@Ref) (i_2_1@@1 Int) ) (!  (=> (not (and (and (and (select vas@@11 (invRecv33 a_2_1@@1 i_2_1@@1)) (select vis@@3 (invRecv34 a_2_1@@1 i_2_1@@1))) (< NoPerm FullPerm)) (qpRange34 a_2_1@@1 i_2_1@@1))) (= (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@0) null (two a_2_1@@1 i_2_1@@1)) (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| ZeroMask) null (two a_2_1@@1 i_2_1@@1))))
 :qid |stdinbpl.2373:22|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_26404_16914_16915#PolymorphicMapType_26404| QPMask@0) null (two a_2_1@@1 i_2_1@@1)))
)) (state Heap@@56 QPMask@0))) (and (=> (= (ControlFlow 0 38) 2) anon22_Then_correct) (=> (= (ControlFlow 0 38) 36) anon22_Else_correct)))))))))
(let ((anon21_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@56 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@56) b1 $allocated) (select (|PolymorphicMapType_26383_16270_53#PolymorphicMapType_26383| Heap@@56) a1 $allocated))) (and (=> (= (ControlFlow 0 40) 1) anon21_Then_correct) (=> (= (ControlFlow 0 40) 38) anon21_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 41) 40) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
