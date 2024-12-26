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
(declare-sort T@Field_4638_53 0)
(declare-sort T@Field_4651_4652 0)
(declare-sort T@Field_4638_1255 0)
(declare-sort T@Field_4638_7980 0)
(declare-sort T@Field_4638_7990 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_7964_53 0)
(declare-sort T@Field_7964_4652 0)
(declare-sort T@Field_7964_1255 0)
(declare-sort T@Field_7975_7980 0)
(declare-sort T@Field_7989_7990 0)
(declare-sort T@Field_8375_53 0)
(declare-sort T@Field_8375_4652 0)
(declare-sort T@Field_8375_1255 0)
(declare-sort T@Field_8387_8392 0)
(declare-sort T@Field_8375_8376 0)
(declare-sort T@Field_8604_53 0)
(declare-sort T@Field_8604_4652 0)
(declare-sort T@Field_8604_1255 0)
(declare-sort T@Field_8616_8621 0)
(declare-sort T@Field_8604_8605 0)
(declare-datatypes ((T@PolymorphicMapType_4599 0)) (((PolymorphicMapType_4599 (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| (Array T@Ref T@Field_8375_8376 Real)) (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| (Array T@Ref T@Field_8604_8605 Real)) (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| (Array T@Ref T@Field_7964_1255 Real)) (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| (Array T@Ref T@Field_8375_1255 Real)) (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| (Array T@Ref T@Field_8375_53 Real)) (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| (Array T@Ref T@Field_8375_4652 Real)) (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| (Array T@Ref T@Field_8387_8392 Real)) (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| (Array T@Ref T@Field_8604_1255 Real)) (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| (Array T@Ref T@Field_8604_53 Real)) (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| (Array T@Ref T@Field_8604_4652 Real)) (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| (Array T@Ref T@Field_8616_8621 Real)) (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| (Array T@Ref T@Field_7989_7990 Real)) (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| (Array T@Ref T@Field_7964_53 Real)) (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| (Array T@Ref T@Field_7964_4652 Real)) (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| (Array T@Ref T@Field_7975_7980 Real)) (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| (Array T@Ref T@Field_4638_7990 Real)) (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| (Array T@Ref T@Field_4638_1255 Real)) (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| (Array T@Ref T@Field_4638_53 Real)) (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| (Array T@Ref T@Field_4651_4652 Real)) (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| (Array T@Ref T@Field_4638_7980 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5127 0)) (((PolymorphicMapType_5127 (|PolymorphicMapType_5127_4638_53#PolymorphicMapType_5127| (Array T@Ref T@Field_4638_53 Bool)) (|PolymorphicMapType_5127_4638_4652#PolymorphicMapType_5127| (Array T@Ref T@Field_4651_4652 Bool)) (|PolymorphicMapType_5127_4638_1255#PolymorphicMapType_5127| (Array T@Ref T@Field_4638_1255 Bool)) (|PolymorphicMapType_5127_4638_19460#PolymorphicMapType_5127| (Array T@Ref T@Field_4638_7980 Bool)) (|PolymorphicMapType_5127_4638_7990#PolymorphicMapType_5127| (Array T@Ref T@Field_4638_7990 Bool)) (|PolymorphicMapType_5127_7964_53#PolymorphicMapType_5127| (Array T@Ref T@Field_7964_53 Bool)) (|PolymorphicMapType_5127_7964_4652#PolymorphicMapType_5127| (Array T@Ref T@Field_7964_4652 Bool)) (|PolymorphicMapType_5127_7964_1255#PolymorphicMapType_5127| (Array T@Ref T@Field_7964_1255 Bool)) (|PolymorphicMapType_5127_7964_20508#PolymorphicMapType_5127| (Array T@Ref T@Field_7975_7980 Bool)) (|PolymorphicMapType_5127_7964_7990#PolymorphicMapType_5127| (Array T@Ref T@Field_7989_7990 Bool)) (|PolymorphicMapType_5127_8375_53#PolymorphicMapType_5127| (Array T@Ref T@Field_8375_53 Bool)) (|PolymorphicMapType_5127_8375_4652#PolymorphicMapType_5127| (Array T@Ref T@Field_8375_4652 Bool)) (|PolymorphicMapType_5127_8375_1255#PolymorphicMapType_5127| (Array T@Ref T@Field_8375_1255 Bool)) (|PolymorphicMapType_5127_8375_21556#PolymorphicMapType_5127| (Array T@Ref T@Field_8387_8392 Bool)) (|PolymorphicMapType_5127_8375_7990#PolymorphicMapType_5127| (Array T@Ref T@Field_8375_8376 Bool)) (|PolymorphicMapType_5127_8604_53#PolymorphicMapType_5127| (Array T@Ref T@Field_8604_53 Bool)) (|PolymorphicMapType_5127_8604_4652#PolymorphicMapType_5127| (Array T@Ref T@Field_8604_4652 Bool)) (|PolymorphicMapType_5127_8604_1255#PolymorphicMapType_5127| (Array T@Ref T@Field_8604_1255 Bool)) (|PolymorphicMapType_5127_8604_22604#PolymorphicMapType_5127| (Array T@Ref T@Field_8616_8621 Bool)) (|PolymorphicMapType_5127_8604_7990#PolymorphicMapType_5127| (Array T@Ref T@Field_8604_8605 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4578 0)) (((PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| (Array T@Ref T@Field_4638_53 Bool)) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| (Array T@Ref T@Field_4651_4652 T@Ref)) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| (Array T@Ref T@Field_4638_1255 Int)) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| (Array T@Ref T@Field_4638_7980 T@PolymorphicMapType_5127)) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| (Array T@Ref T@Field_4638_7990 T@FrameType)) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| (Array T@Ref T@Field_7964_53 Bool)) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| (Array T@Ref T@Field_7964_4652 T@Ref)) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| (Array T@Ref T@Field_7964_1255 Int)) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| (Array T@Ref T@Field_7975_7980 T@PolymorphicMapType_5127)) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| (Array T@Ref T@Field_7989_7990 T@FrameType)) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| (Array T@Ref T@Field_8375_53 Bool)) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| (Array T@Ref T@Field_8375_4652 T@Ref)) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| (Array T@Ref T@Field_8375_1255 Int)) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| (Array T@Ref T@Field_8387_8392 T@PolymorphicMapType_5127)) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| (Array T@Ref T@Field_8375_8376 T@FrameType)) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| (Array T@Ref T@Field_8604_53 Bool)) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| (Array T@Ref T@Field_8604_4652 T@Ref)) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| (Array T@Ref T@Field_8604_1255 Int)) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| (Array T@Ref T@Field_8616_8621 T@PolymorphicMapType_5127)) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| (Array T@Ref T@Field_8604_8605 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_4578 T@PolymorphicMapType_4578) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4578 T@PolymorphicMapType_4578) Bool)
(declare-fun state (T@PolymorphicMapType_4578 T@PolymorphicMapType_4599) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4599) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5127)
(declare-fun IsPredicateField_2731_2732 (T@Field_8375_8376) Bool)
(declare-fun P () T@Field_8375_8376)
(declare-fun getPredWandId_2731_2732 (T@Field_8375_8376) Int)
(declare-fun wand (Int) T@Field_7964_1255)
(declare-fun IsWandField_2723_1255 (T@Field_7964_1255) Bool)
(declare-fun |wand#ft| (Int) T@Field_7989_7990)
(declare-fun IsWandField_2728_2729 (T@Field_7989_7990) Bool)
(declare-fun Q (Int) T@Field_8604_8605)
(declare-fun IsPredicateField_2743_2744 (T@Field_8604_8605) Bool)
(declare-fun |Q#trigger_2743| (T@PolymorphicMapType_4578 T@Field_8604_8605) Bool)
(declare-fun |Q#everUsed_2743| (T@Field_8604_8605) Bool)
(declare-fun IsPredicateField_2723_1255 (T@Field_7964_1255) Bool)
(declare-fun IsPredicateField_2728_2729 (T@Field_7989_7990) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4578 T@PolymorphicMapType_4578 T@PolymorphicMapType_4599) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2743 (T@Field_8604_8605) T@Field_8616_8621)
(declare-fun HasDirectPerm_8604_7990 (T@PolymorphicMapType_4599 T@Ref T@Field_8604_8605) Bool)
(declare-fun PredicateMaskField_2731 (T@Field_8375_8376) T@Field_8387_8392)
(declare-fun HasDirectPerm_8375_7990 (T@PolymorphicMapType_4599 T@Ref T@Field_8375_8376) Bool)
(declare-fun PredicateMaskField_7964 (T@Field_7989_7990) T@Field_7975_7980)
(declare-fun HasDirectPerm_7964_7990 (T@PolymorphicMapType_4599 T@Ref T@Field_7989_7990) Bool)
(declare-fun IsPredicateField_4638_17505 (T@Field_4638_7990) Bool)
(declare-fun PredicateMaskField_4638 (T@Field_4638_7990) T@Field_4638_7980)
(declare-fun HasDirectPerm_4638_7990 (T@PolymorphicMapType_4599 T@Ref T@Field_4638_7990) Bool)
(declare-fun IsWandField_8604_25217 (T@Field_8604_8605) Bool)
(declare-fun WandMaskField_8604 (T@Field_8604_8605) T@Field_8616_8621)
(declare-fun IsWandField_8375_24860 (T@Field_8375_8376) Bool)
(declare-fun WandMaskField_8375 (T@Field_8375_8376) T@Field_8387_8392)
(declare-fun WandMaskField_2728 (T@Field_7989_7990) T@Field_7975_7980)
(declare-fun IsWandField_4638_24178 (T@Field_4638_7990) Bool)
(declare-fun WandMaskField_4638 (T@Field_4638_7990) T@Field_4638_7980)
(declare-fun |Q#sm| (Int) T@Field_8616_8621)
(declare-fun dummyHeap () T@PolymorphicMapType_4578)
(declare-fun ZeroMask () T@PolymorphicMapType_4599)
(declare-fun $allocated () T@Field_4638_53)
(declare-fun InsidePredicate_8604_8604 (T@Field_8604_8605 T@FrameType T@Field_8604_8605 T@FrameType) Bool)
(declare-fun InsidePredicate_8375_8375 (T@Field_8375_8376 T@FrameType T@Field_8375_8376 T@FrameType) Bool)
(declare-fun InsidePredicate_7964_7964 (T@Field_7989_7990 T@FrameType T@Field_7989_7990 T@FrameType) Bool)
(declare-fun InsidePredicate_4638_4638 (T@Field_4638_7990 T@FrameType T@Field_4638_7990 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4638_38936 (T@Field_4638_7980) Bool)
(declare-fun IsWandField_4638_38952 (T@Field_4638_7980) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4638_4652 (T@Field_4651_4652) Bool)
(declare-fun IsWandField_4638_4652 (T@Field_4651_4652) Bool)
(declare-fun IsPredicateField_4638_53 (T@Field_4638_53) Bool)
(declare-fun IsWandField_4638_53 (T@Field_4638_53) Bool)
(declare-fun IsPredicateField_4638_1255 (T@Field_4638_1255) Bool)
(declare-fun IsWandField_4638_1255 (T@Field_4638_1255) Bool)
(declare-fun IsPredicateField_2723_38105 (T@Field_7975_7980) Bool)
(declare-fun IsWandField_2723_38121 (T@Field_7975_7980) Bool)
(declare-fun IsPredicateField_2723_4652 (T@Field_7964_4652) Bool)
(declare-fun IsWandField_2723_4652 (T@Field_7964_4652) Bool)
(declare-fun IsPredicateField_2723_53 (T@Field_7964_53) Bool)
(declare-fun IsWandField_2723_53 (T@Field_7964_53) Bool)
(declare-fun IsPredicateField_2743_37288 (T@Field_8616_8621) Bool)
(declare-fun IsWandField_2743_37304 (T@Field_8616_8621) Bool)
(declare-fun IsPredicateField_2743_4652 (T@Field_8604_4652) Bool)
(declare-fun IsWandField_2743_4652 (T@Field_8604_4652) Bool)
(declare-fun IsPredicateField_2743_53 (T@Field_8604_53) Bool)
(declare-fun IsWandField_2743_53 (T@Field_8604_53) Bool)
(declare-fun IsPredicateField_2743_1255 (T@Field_8604_1255) Bool)
(declare-fun IsWandField_2743_1255 (T@Field_8604_1255) Bool)
(declare-fun IsPredicateField_2731_36457 (T@Field_8387_8392) Bool)
(declare-fun IsWandField_2731_36473 (T@Field_8387_8392) Bool)
(declare-fun IsPredicateField_2731_4652 (T@Field_8375_4652) Bool)
(declare-fun IsWandField_2731_4652 (T@Field_8375_4652) Bool)
(declare-fun IsPredicateField_2731_53 (T@Field_8375_53) Bool)
(declare-fun IsWandField_2731_53 (T@Field_8375_53) Bool)
(declare-fun IsPredicateField_2731_1255 (T@Field_8375_1255) Bool)
(declare-fun IsWandField_2731_1255 (T@Field_8375_1255) Bool)
(declare-fun HasDirectPerm_8604_16989 (T@PolymorphicMapType_4599 T@Ref T@Field_8616_8621) Bool)
(declare-fun HasDirectPerm_8604_1255 (T@PolymorphicMapType_4599 T@Ref T@Field_8604_1255) Bool)
(declare-fun HasDirectPerm_8604_4652 (T@PolymorphicMapType_4599 T@Ref T@Field_8604_4652) Bool)
(declare-fun HasDirectPerm_8604_53 (T@PolymorphicMapType_4599 T@Ref T@Field_8604_53) Bool)
(declare-fun HasDirectPerm_8375_15811 (T@PolymorphicMapType_4599 T@Ref T@Field_8387_8392) Bool)
(declare-fun HasDirectPerm_8375_1255 (T@PolymorphicMapType_4599 T@Ref T@Field_8375_1255) Bool)
(declare-fun HasDirectPerm_8375_4652 (T@PolymorphicMapType_4599 T@Ref T@Field_8375_4652) Bool)
(declare-fun HasDirectPerm_8375_53 (T@PolymorphicMapType_4599 T@Ref T@Field_8375_53) Bool)
(declare-fun HasDirectPerm_7964_14633 (T@PolymorphicMapType_4599 T@Ref T@Field_7975_7980) Bool)
(declare-fun HasDirectPerm_7964_1255 (T@PolymorphicMapType_4599 T@Ref T@Field_7964_1255) Bool)
(declare-fun HasDirectPerm_7964_4652 (T@PolymorphicMapType_4599 T@Ref T@Field_7964_4652) Bool)
(declare-fun HasDirectPerm_7964_53 (T@PolymorphicMapType_4599 T@Ref T@Field_7964_53) Bool)
(declare-fun HasDirectPerm_4638_13455 (T@PolymorphicMapType_4599 T@Ref T@Field_4638_7980) Bool)
(declare-fun HasDirectPerm_4638_1255 (T@PolymorphicMapType_4599 T@Ref T@Field_4638_1255) Bool)
(declare-fun HasDirectPerm_4638_4652 (T@PolymorphicMapType_4599 T@Ref T@Field_4651_4652) Bool)
(declare-fun HasDirectPerm_4638_53 (T@PolymorphicMapType_4599 T@Ref T@Field_4638_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4599 T@PolymorphicMapType_4599 T@PolymorphicMapType_4599) Bool)
(declare-fun getPredWandId_2743_2744 (T@Field_8604_8605) Int)
(declare-fun getPredWandId_2723_1255 (T@Field_7964_1255) Int)
(declare-fun |P#trigger_2731| (T@PolymorphicMapType_4578 T@Field_8375_8376) Bool)
(declare-fun |P#everUsed_2731| (T@Field_8375_8376) Bool)
(declare-fun |P#sm| () T@Field_8387_8392)
(declare-fun |wand#sm| (Int) T@Field_7975_7980)
(declare-fun InsidePredicate_8604_8375 (T@Field_8604_8605 T@FrameType T@Field_8375_8376 T@FrameType) Bool)
(declare-fun InsidePredicate_8604_7964 (T@Field_8604_8605 T@FrameType T@Field_7989_7990 T@FrameType) Bool)
(declare-fun InsidePredicate_8604_4638 (T@Field_8604_8605 T@FrameType T@Field_4638_7990 T@FrameType) Bool)
(declare-fun InsidePredicate_8375_8604 (T@Field_8375_8376 T@FrameType T@Field_8604_8605 T@FrameType) Bool)
(declare-fun InsidePredicate_8375_7964 (T@Field_8375_8376 T@FrameType T@Field_7989_7990 T@FrameType) Bool)
(declare-fun InsidePredicate_8375_4638 (T@Field_8375_8376 T@FrameType T@Field_4638_7990 T@FrameType) Bool)
(declare-fun InsidePredicate_7964_8604 (T@Field_7989_7990 T@FrameType T@Field_8604_8605 T@FrameType) Bool)
(declare-fun InsidePredicate_7964_8375 (T@Field_7989_7990 T@FrameType T@Field_8375_8376 T@FrameType) Bool)
(declare-fun InsidePredicate_7964_4638 (T@Field_7989_7990 T@FrameType T@Field_4638_7990 T@FrameType) Bool)
(declare-fun InsidePredicate_4638_8604 (T@Field_4638_7990 T@FrameType T@Field_8604_8605 T@FrameType) Bool)
(declare-fun InsidePredicate_4638_8375 (T@Field_4638_7990 T@FrameType T@Field_8375_8376 T@FrameType) Bool)
(declare-fun InsidePredicate_4638_7964 (T@Field_4638_7990 T@FrameType T@Field_7989_7990 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4578) (Heap1 T@PolymorphicMapType_4578) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4578) (Mask T@PolymorphicMapType_4599) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4578) (Heap1@@0 T@PolymorphicMapType_4578) (Heap2 T@PolymorphicMapType_4578) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8604_8605) ) (!  (not (select (|PolymorphicMapType_5127_8604_7990#PolymorphicMapType_5127| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_8604_7990#PolymorphicMapType_5127| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8616_8621) ) (!  (not (select (|PolymorphicMapType_5127_8604_22604#PolymorphicMapType_5127| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_8604_22604#PolymorphicMapType_5127| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8604_1255) ) (!  (not (select (|PolymorphicMapType_5127_8604_1255#PolymorphicMapType_5127| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_8604_1255#PolymorphicMapType_5127| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8604_4652) ) (!  (not (select (|PolymorphicMapType_5127_8604_4652#PolymorphicMapType_5127| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_8604_4652#PolymorphicMapType_5127| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8604_53) ) (!  (not (select (|PolymorphicMapType_5127_8604_53#PolymorphicMapType_5127| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_8604_53#PolymorphicMapType_5127| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8375_8376) ) (!  (not (select (|PolymorphicMapType_5127_8375_7990#PolymorphicMapType_5127| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_8375_7990#PolymorphicMapType_5127| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8387_8392) ) (!  (not (select (|PolymorphicMapType_5127_8375_21556#PolymorphicMapType_5127| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_8375_21556#PolymorphicMapType_5127| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8375_1255) ) (!  (not (select (|PolymorphicMapType_5127_8375_1255#PolymorphicMapType_5127| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_8375_1255#PolymorphicMapType_5127| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8375_4652) ) (!  (not (select (|PolymorphicMapType_5127_8375_4652#PolymorphicMapType_5127| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_8375_4652#PolymorphicMapType_5127| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8375_53) ) (!  (not (select (|PolymorphicMapType_5127_8375_53#PolymorphicMapType_5127| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_8375_53#PolymorphicMapType_5127| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_7989_7990) ) (!  (not (select (|PolymorphicMapType_5127_7964_7990#PolymorphicMapType_5127| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_7964_7990#PolymorphicMapType_5127| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_7975_7980) ) (!  (not (select (|PolymorphicMapType_5127_7964_20508#PolymorphicMapType_5127| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_7964_20508#PolymorphicMapType_5127| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_7964_1255) ) (!  (not (select (|PolymorphicMapType_5127_7964_1255#PolymorphicMapType_5127| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_7964_1255#PolymorphicMapType_5127| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_7964_4652) ) (!  (not (select (|PolymorphicMapType_5127_7964_4652#PolymorphicMapType_5127| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_7964_4652#PolymorphicMapType_5127| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_7964_53) ) (!  (not (select (|PolymorphicMapType_5127_7964_53#PolymorphicMapType_5127| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_7964_53#PolymorphicMapType_5127| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4638_7990) ) (!  (not (select (|PolymorphicMapType_5127_4638_7990#PolymorphicMapType_5127| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_4638_7990#PolymorphicMapType_5127| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4638_7980) ) (!  (not (select (|PolymorphicMapType_5127_4638_19460#PolymorphicMapType_5127| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_4638_19460#PolymorphicMapType_5127| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_4638_1255) ) (!  (not (select (|PolymorphicMapType_5127_4638_1255#PolymorphicMapType_5127| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_4638_1255#PolymorphicMapType_5127| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4651_4652) ) (!  (not (select (|PolymorphicMapType_5127_4638_4652#PolymorphicMapType_5127| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_4638_4652#PolymorphicMapType_5127| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_4638_53) ) (!  (not (select (|PolymorphicMapType_5127_4638_53#PolymorphicMapType_5127| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5127_4638_53#PolymorphicMapType_5127| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (IsPredicateField_2731_2732 P))
(assert (= (getPredWandId_2731_2732 P) 0))
(assert (forall ((arg1 Int) ) (! (IsWandField_2723_1255 (wand arg1))
 :qid |stdinbpl.205:15|
 :skolemid |22|
 :pattern ( (wand arg1))
)))
(assert (forall ((arg1@@0 Int) ) (! (IsWandField_2728_2729 (|wand#ft| arg1@@0))
 :qid |stdinbpl.209:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@0))
)))
(assert (forall ((n Int) ) (! (IsPredicateField_2743_2744 (Q n))
 :qid |stdinbpl.263:15|
 :skolemid |31|
 :pattern ( (Q n))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4578) (n@@0 Int) ) (! (|Q#everUsed_2743| (Q n@@0))
 :qid |stdinbpl.282:15|
 :skolemid |35|
 :pattern ( (|Q#trigger_2743| Heap@@0 (Q n@@0)))
)))
(assert (forall ((arg1@@1 Int) ) (!  (not (IsPredicateField_2723_1255 (wand arg1@@1)))
 :qid |stdinbpl.213:15|
 :skolemid |24|
 :pattern ( (wand arg1@@1))
)))
(assert (forall ((arg1@@2 Int) ) (!  (not (IsPredicateField_2728_2729 (|wand#ft| arg1@@2)))
 :qid |stdinbpl.217:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4578) (ExhaleHeap T@PolymorphicMapType_4578) (Mask@@0 T@PolymorphicMapType_4599) (pm_f_9 T@Field_8604_8605) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8604_7990 Mask@@0 null pm_f_9) (IsPredicateField_2743_2744 pm_f_9)) (= (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@1) null (PredicateMaskField_2743 pm_f_9)) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap) null (PredicateMaskField_2743 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_2743_2744 pm_f_9) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap) null (PredicateMaskField_2743 pm_f_9)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4578) (ExhaleHeap@@0 T@PolymorphicMapType_4578) (Mask@@1 T@PolymorphicMapType_4599) (pm_f_9@@0 T@Field_8375_8376) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8375_7990 Mask@@1 null pm_f_9@@0) (IsPredicateField_2731_2732 pm_f_9@@0)) (= (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@2) null (PredicateMaskField_2731 pm_f_9@@0)) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@0) null (PredicateMaskField_2731 pm_f_9@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2731_2732 pm_f_9@@0) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@0) null (PredicateMaskField_2731 pm_f_9@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4578) (ExhaleHeap@@1 T@PolymorphicMapType_4578) (Mask@@2 T@PolymorphicMapType_4599) (pm_f_9@@1 T@Field_7989_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7964_7990 Mask@@2 null pm_f_9@@1) (IsPredicateField_2728_2729 pm_f_9@@1)) (= (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@3) null (PredicateMaskField_7964 pm_f_9@@1)) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@1) null (PredicateMaskField_7964 pm_f_9@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_2728_2729 pm_f_9@@1) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@1) null (PredicateMaskField_7964 pm_f_9@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4578) (ExhaleHeap@@2 T@PolymorphicMapType_4578) (Mask@@3 T@PolymorphicMapType_4599) (pm_f_9@@2 T@Field_4638_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4638_7990 Mask@@3 null pm_f_9@@2) (IsPredicateField_4638_17505 pm_f_9@@2)) (= (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@4) null (PredicateMaskField_4638 pm_f_9@@2)) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@2) null (PredicateMaskField_4638 pm_f_9@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsPredicateField_4638_17505 pm_f_9@@2) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@2) null (PredicateMaskField_4638 pm_f_9@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4578) (ExhaleHeap@@3 T@PolymorphicMapType_4578) (Mask@@4 T@PolymorphicMapType_4599) (pm_f_9@@3 T@Field_8604_8605) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8604_7990 Mask@@4 null pm_f_9@@3) (IsWandField_8604_25217 pm_f_9@@3)) (= (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@5) null (WandMaskField_8604 pm_f_9@@3)) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@3) null (WandMaskField_8604 pm_f_9@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsWandField_8604_25217 pm_f_9@@3) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@3) null (WandMaskField_8604 pm_f_9@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4578) (ExhaleHeap@@4 T@PolymorphicMapType_4578) (Mask@@5 T@PolymorphicMapType_4599) (pm_f_9@@4 T@Field_8375_8376) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8375_7990 Mask@@5 null pm_f_9@@4) (IsWandField_8375_24860 pm_f_9@@4)) (= (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@6) null (WandMaskField_8375 pm_f_9@@4)) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@4) null (WandMaskField_8375 pm_f_9@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_8375_24860 pm_f_9@@4) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@4) null (WandMaskField_8375 pm_f_9@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4578) (ExhaleHeap@@5 T@PolymorphicMapType_4578) (Mask@@6 T@PolymorphicMapType_4599) (pm_f_9@@5 T@Field_7989_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7964_7990 Mask@@6 null pm_f_9@@5) (IsWandField_2728_2729 pm_f_9@@5)) (= (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@7) null (WandMaskField_2728 pm_f_9@@5)) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@5) null (WandMaskField_2728 pm_f_9@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_2728_2729 pm_f_9@@5) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@5) null (WandMaskField_2728 pm_f_9@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4578) (ExhaleHeap@@6 T@PolymorphicMapType_4578) (Mask@@7 T@PolymorphicMapType_4599) (pm_f_9@@6 T@Field_4638_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4638_7990 Mask@@7 null pm_f_9@@6) (IsWandField_4638_24178 pm_f_9@@6)) (= (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@8) null (WandMaskField_4638 pm_f_9@@6)) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@6) null (WandMaskField_4638 pm_f_9@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_4638_24178 pm_f_9@@6) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@6) null (WandMaskField_4638 pm_f_9@@6)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4578) (ExhaleHeap@@7 T@PolymorphicMapType_4578) (Mask@@8 T@PolymorphicMapType_4599) (pm_f_9@@7 T@Field_8604_8605) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_8604_7990 Mask@@8 null pm_f_9@@7) (IsPredicateField_2743_2744 pm_f_9@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_4638_53) ) (!  (=> (select (|PolymorphicMapType_5127_4638_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9 f_24) (= (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@9) o2_9 f_24) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_4651_4652) ) (!  (=> (select (|PolymorphicMapType_5127_4638_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@9) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_4638_1255) ) (!  (=> (select (|PolymorphicMapType_5127_4638_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@9) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_4638_7980) ) (!  (=> (select (|PolymorphicMapType_5127_4638_19460#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@9) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_4638_7990) ) (!  (=> (select (|PolymorphicMapType_5127_4638_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@9) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@3 f_24@@3))
))) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_7964_53) ) (!  (=> (select (|PolymorphicMapType_5127_7964_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@9) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_7964_4652) ) (!  (=> (select (|PolymorphicMapType_5127_7964_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@9) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_7964_1255) ) (!  (=> (select (|PolymorphicMapType_5127_7964_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@9) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_7975_7980) ) (!  (=> (select (|PolymorphicMapType_5127_7964_20508#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@9) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_7989_7990) ) (!  (=> (select (|PolymorphicMapType_5127_7964_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@9) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@8 f_24@@8))
))) (forall ((o2_9@@9 T@Ref) (f_24@@9 T@Field_8375_53) ) (!  (=> (select (|PolymorphicMapType_5127_8375_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@9 f_24@@9) (= (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@9) o2_9@@9 f_24@@9) (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@9 f_24@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@9 f_24@@9))
))) (forall ((o2_9@@10 T@Ref) (f_24@@10 T@Field_8375_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8375_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@10 f_24@@10) (= (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@9) o2_9@@10 f_24@@10) (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@10 f_24@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@10 f_24@@10))
))) (forall ((o2_9@@11 T@Ref) (f_24@@11 T@Field_8375_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8375_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@11 f_24@@11) (= (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@9) o2_9@@11 f_24@@11) (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@11 f_24@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@11 f_24@@11))
))) (forall ((o2_9@@12 T@Ref) (f_24@@12 T@Field_8387_8392) ) (!  (=> (select (|PolymorphicMapType_5127_8375_21556#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@12 f_24@@12) (= (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@9) o2_9@@12 f_24@@12) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@12 f_24@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@12 f_24@@12))
))) (forall ((o2_9@@13 T@Ref) (f_24@@13 T@Field_8375_8376) ) (!  (=> (select (|PolymorphicMapType_5127_8375_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@13 f_24@@13) (= (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@9) o2_9@@13 f_24@@13) (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@13 f_24@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@13 f_24@@13))
))) (forall ((o2_9@@14 T@Ref) (f_24@@14 T@Field_8604_53) ) (!  (=> (select (|PolymorphicMapType_5127_8604_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@14 f_24@@14) (= (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@9) o2_9@@14 f_24@@14) (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@14 f_24@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@14 f_24@@14))
))) (forall ((o2_9@@15 T@Ref) (f_24@@15 T@Field_8604_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8604_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@15 f_24@@15) (= (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@9) o2_9@@15 f_24@@15) (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@15 f_24@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@15 f_24@@15))
))) (forall ((o2_9@@16 T@Ref) (f_24@@16 T@Field_8604_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8604_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@16 f_24@@16) (= (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@9) o2_9@@16 f_24@@16) (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@16 f_24@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@16 f_24@@16))
))) (forall ((o2_9@@17 T@Ref) (f_24@@17 T@Field_8616_8621) ) (!  (=> (select (|PolymorphicMapType_5127_8604_22604#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@17 f_24@@17) (= (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) o2_9@@17 f_24@@17) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@17 f_24@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@17 f_24@@17))
))) (forall ((o2_9@@18 T@Ref) (f_24@@18 T@Field_8604_8605) ) (!  (=> (select (|PolymorphicMapType_5127_8604_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@9) null (PredicateMaskField_2743 pm_f_9@@7))) o2_9@@18 f_24@@18) (= (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@9) o2_9@@18 f_24@@18) (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@18 f_24@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@7) o2_9@@18 f_24@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (IsPredicateField_2743_2744 pm_f_9@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4578) (ExhaleHeap@@8 T@PolymorphicMapType_4578) (Mask@@9 T@PolymorphicMapType_4599) (pm_f_9@@8 T@Field_8375_8376) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_8375_7990 Mask@@9 null pm_f_9@@8) (IsPredicateField_2731_2732 pm_f_9@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@19 T@Ref) (f_24@@19 T@Field_4638_53) ) (!  (=> (select (|PolymorphicMapType_5127_4638_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@19 f_24@@19) (= (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@10) o2_9@@19 f_24@@19) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@19 f_24@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@19 f_24@@19))
)) (forall ((o2_9@@20 T@Ref) (f_24@@20 T@Field_4651_4652) ) (!  (=> (select (|PolymorphicMapType_5127_4638_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@20 f_24@@20) (= (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@10) o2_9@@20 f_24@@20) (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@20 f_24@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@20 f_24@@20))
))) (forall ((o2_9@@21 T@Ref) (f_24@@21 T@Field_4638_1255) ) (!  (=> (select (|PolymorphicMapType_5127_4638_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@21 f_24@@21) (= (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@10) o2_9@@21 f_24@@21) (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@21 f_24@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@21 f_24@@21))
))) (forall ((o2_9@@22 T@Ref) (f_24@@22 T@Field_4638_7980) ) (!  (=> (select (|PolymorphicMapType_5127_4638_19460#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@22 f_24@@22) (= (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@10) o2_9@@22 f_24@@22) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@22 f_24@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@22 f_24@@22))
))) (forall ((o2_9@@23 T@Ref) (f_24@@23 T@Field_4638_7990) ) (!  (=> (select (|PolymorphicMapType_5127_4638_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@23 f_24@@23) (= (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@10) o2_9@@23 f_24@@23) (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@23 f_24@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@23 f_24@@23))
))) (forall ((o2_9@@24 T@Ref) (f_24@@24 T@Field_7964_53) ) (!  (=> (select (|PolymorphicMapType_5127_7964_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@24 f_24@@24) (= (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@10) o2_9@@24 f_24@@24) (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@24 f_24@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@24 f_24@@24))
))) (forall ((o2_9@@25 T@Ref) (f_24@@25 T@Field_7964_4652) ) (!  (=> (select (|PolymorphicMapType_5127_7964_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@25 f_24@@25) (= (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@10) o2_9@@25 f_24@@25) (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@25 f_24@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@25 f_24@@25))
))) (forall ((o2_9@@26 T@Ref) (f_24@@26 T@Field_7964_1255) ) (!  (=> (select (|PolymorphicMapType_5127_7964_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@26 f_24@@26) (= (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@10) o2_9@@26 f_24@@26) (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@26 f_24@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@26 f_24@@26))
))) (forall ((o2_9@@27 T@Ref) (f_24@@27 T@Field_7975_7980) ) (!  (=> (select (|PolymorphicMapType_5127_7964_20508#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@27 f_24@@27) (= (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@10) o2_9@@27 f_24@@27) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@27 f_24@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@27 f_24@@27))
))) (forall ((o2_9@@28 T@Ref) (f_24@@28 T@Field_7989_7990) ) (!  (=> (select (|PolymorphicMapType_5127_7964_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@28 f_24@@28) (= (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@10) o2_9@@28 f_24@@28) (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@28 f_24@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@28 f_24@@28))
))) (forall ((o2_9@@29 T@Ref) (f_24@@29 T@Field_8375_53) ) (!  (=> (select (|PolymorphicMapType_5127_8375_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@29 f_24@@29) (= (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@10) o2_9@@29 f_24@@29) (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@29 f_24@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@29 f_24@@29))
))) (forall ((o2_9@@30 T@Ref) (f_24@@30 T@Field_8375_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8375_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@30 f_24@@30) (= (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@10) o2_9@@30 f_24@@30) (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@30 f_24@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@30 f_24@@30))
))) (forall ((o2_9@@31 T@Ref) (f_24@@31 T@Field_8375_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8375_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@31 f_24@@31) (= (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@10) o2_9@@31 f_24@@31) (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@31 f_24@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@31 f_24@@31))
))) (forall ((o2_9@@32 T@Ref) (f_24@@32 T@Field_8387_8392) ) (!  (=> (select (|PolymorphicMapType_5127_8375_21556#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@32 f_24@@32) (= (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) o2_9@@32 f_24@@32) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@32 f_24@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@32 f_24@@32))
))) (forall ((o2_9@@33 T@Ref) (f_24@@33 T@Field_8375_8376) ) (!  (=> (select (|PolymorphicMapType_5127_8375_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@33 f_24@@33) (= (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@10) o2_9@@33 f_24@@33) (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@33 f_24@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@33 f_24@@33))
))) (forall ((o2_9@@34 T@Ref) (f_24@@34 T@Field_8604_53) ) (!  (=> (select (|PolymorphicMapType_5127_8604_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@34 f_24@@34) (= (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@10) o2_9@@34 f_24@@34) (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@34 f_24@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@34 f_24@@34))
))) (forall ((o2_9@@35 T@Ref) (f_24@@35 T@Field_8604_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8604_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@35 f_24@@35) (= (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@10) o2_9@@35 f_24@@35) (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@35 f_24@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@35 f_24@@35))
))) (forall ((o2_9@@36 T@Ref) (f_24@@36 T@Field_8604_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8604_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@36 f_24@@36) (= (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@10) o2_9@@36 f_24@@36) (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@36 f_24@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@36 f_24@@36))
))) (forall ((o2_9@@37 T@Ref) (f_24@@37 T@Field_8616_8621) ) (!  (=> (select (|PolymorphicMapType_5127_8604_22604#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@37 f_24@@37) (= (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@10) o2_9@@37 f_24@@37) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@37 f_24@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@37 f_24@@37))
))) (forall ((o2_9@@38 T@Ref) (f_24@@38 T@Field_8604_8605) ) (!  (=> (select (|PolymorphicMapType_5127_8604_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@10) null (PredicateMaskField_2731 pm_f_9@@8))) o2_9@@38 f_24@@38) (= (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@10) o2_9@@38 f_24@@38) (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@38 f_24@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@8) o2_9@@38 f_24@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (IsPredicateField_2731_2732 pm_f_9@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4578) (ExhaleHeap@@9 T@PolymorphicMapType_4578) (Mask@@10 T@PolymorphicMapType_4599) (pm_f_9@@9 T@Field_7989_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_7964_7990 Mask@@10 null pm_f_9@@9) (IsPredicateField_2728_2729 pm_f_9@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@39 T@Ref) (f_24@@39 T@Field_4638_53) ) (!  (=> (select (|PolymorphicMapType_5127_4638_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@39 f_24@@39) (= (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@11) o2_9@@39 f_24@@39) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@39 f_24@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@39 f_24@@39))
)) (forall ((o2_9@@40 T@Ref) (f_24@@40 T@Field_4651_4652) ) (!  (=> (select (|PolymorphicMapType_5127_4638_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@40 f_24@@40) (= (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@11) o2_9@@40 f_24@@40) (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@40 f_24@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@40 f_24@@40))
))) (forall ((o2_9@@41 T@Ref) (f_24@@41 T@Field_4638_1255) ) (!  (=> (select (|PolymorphicMapType_5127_4638_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@41 f_24@@41) (= (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@11) o2_9@@41 f_24@@41) (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@41 f_24@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@41 f_24@@41))
))) (forall ((o2_9@@42 T@Ref) (f_24@@42 T@Field_4638_7980) ) (!  (=> (select (|PolymorphicMapType_5127_4638_19460#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@42 f_24@@42) (= (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@11) o2_9@@42 f_24@@42) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@42 f_24@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@42 f_24@@42))
))) (forall ((o2_9@@43 T@Ref) (f_24@@43 T@Field_4638_7990) ) (!  (=> (select (|PolymorphicMapType_5127_4638_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@43 f_24@@43) (= (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@11) o2_9@@43 f_24@@43) (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@43 f_24@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@43 f_24@@43))
))) (forall ((o2_9@@44 T@Ref) (f_24@@44 T@Field_7964_53) ) (!  (=> (select (|PolymorphicMapType_5127_7964_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@44 f_24@@44) (= (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@11) o2_9@@44 f_24@@44) (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@44 f_24@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@44 f_24@@44))
))) (forall ((o2_9@@45 T@Ref) (f_24@@45 T@Field_7964_4652) ) (!  (=> (select (|PolymorphicMapType_5127_7964_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@45 f_24@@45) (= (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@11) o2_9@@45 f_24@@45) (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@45 f_24@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@45 f_24@@45))
))) (forall ((o2_9@@46 T@Ref) (f_24@@46 T@Field_7964_1255) ) (!  (=> (select (|PolymorphicMapType_5127_7964_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@46 f_24@@46) (= (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@11) o2_9@@46 f_24@@46) (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@46 f_24@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@46 f_24@@46))
))) (forall ((o2_9@@47 T@Ref) (f_24@@47 T@Field_7975_7980) ) (!  (=> (select (|PolymorphicMapType_5127_7964_20508#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@47 f_24@@47) (= (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) o2_9@@47 f_24@@47) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@47 f_24@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@47 f_24@@47))
))) (forall ((o2_9@@48 T@Ref) (f_24@@48 T@Field_7989_7990) ) (!  (=> (select (|PolymorphicMapType_5127_7964_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@48 f_24@@48) (= (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@11) o2_9@@48 f_24@@48) (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@48 f_24@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@48 f_24@@48))
))) (forall ((o2_9@@49 T@Ref) (f_24@@49 T@Field_8375_53) ) (!  (=> (select (|PolymorphicMapType_5127_8375_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@49 f_24@@49) (= (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@11) o2_9@@49 f_24@@49) (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@49 f_24@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@49 f_24@@49))
))) (forall ((o2_9@@50 T@Ref) (f_24@@50 T@Field_8375_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8375_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@50 f_24@@50) (= (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@11) o2_9@@50 f_24@@50) (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@50 f_24@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@50 f_24@@50))
))) (forall ((o2_9@@51 T@Ref) (f_24@@51 T@Field_8375_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8375_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@51 f_24@@51) (= (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@11) o2_9@@51 f_24@@51) (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@51 f_24@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@51 f_24@@51))
))) (forall ((o2_9@@52 T@Ref) (f_24@@52 T@Field_8387_8392) ) (!  (=> (select (|PolymorphicMapType_5127_8375_21556#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@52 f_24@@52) (= (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@11) o2_9@@52 f_24@@52) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@52 f_24@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@52 f_24@@52))
))) (forall ((o2_9@@53 T@Ref) (f_24@@53 T@Field_8375_8376) ) (!  (=> (select (|PolymorphicMapType_5127_8375_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@53 f_24@@53) (= (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@11) o2_9@@53 f_24@@53) (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@53 f_24@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@53 f_24@@53))
))) (forall ((o2_9@@54 T@Ref) (f_24@@54 T@Field_8604_53) ) (!  (=> (select (|PolymorphicMapType_5127_8604_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@54 f_24@@54) (= (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@11) o2_9@@54 f_24@@54) (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@54 f_24@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@54 f_24@@54))
))) (forall ((o2_9@@55 T@Ref) (f_24@@55 T@Field_8604_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8604_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@55 f_24@@55) (= (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@11) o2_9@@55 f_24@@55) (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@55 f_24@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@55 f_24@@55))
))) (forall ((o2_9@@56 T@Ref) (f_24@@56 T@Field_8604_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8604_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@56 f_24@@56) (= (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@11) o2_9@@56 f_24@@56) (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@56 f_24@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@56 f_24@@56))
))) (forall ((o2_9@@57 T@Ref) (f_24@@57 T@Field_8616_8621) ) (!  (=> (select (|PolymorphicMapType_5127_8604_22604#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@57 f_24@@57) (= (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@11) o2_9@@57 f_24@@57) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@57 f_24@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@57 f_24@@57))
))) (forall ((o2_9@@58 T@Ref) (f_24@@58 T@Field_8604_8605) ) (!  (=> (select (|PolymorphicMapType_5127_8604_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@11) null (PredicateMaskField_7964 pm_f_9@@9))) o2_9@@58 f_24@@58) (= (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@11) o2_9@@58 f_24@@58) (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@58 f_24@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@9) o2_9@@58 f_24@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (IsPredicateField_2728_2729 pm_f_9@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4578) (ExhaleHeap@@10 T@PolymorphicMapType_4578) (Mask@@11 T@PolymorphicMapType_4599) (pm_f_9@@10 T@Field_4638_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_4638_7990 Mask@@11 null pm_f_9@@10) (IsPredicateField_4638_17505 pm_f_9@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@59 T@Ref) (f_24@@59 T@Field_4638_53) ) (!  (=> (select (|PolymorphicMapType_5127_4638_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@59 f_24@@59) (= (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@12) o2_9@@59 f_24@@59) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@59 f_24@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@59 f_24@@59))
)) (forall ((o2_9@@60 T@Ref) (f_24@@60 T@Field_4651_4652) ) (!  (=> (select (|PolymorphicMapType_5127_4638_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@60 f_24@@60) (= (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@12) o2_9@@60 f_24@@60) (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@60 f_24@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@60 f_24@@60))
))) (forall ((o2_9@@61 T@Ref) (f_24@@61 T@Field_4638_1255) ) (!  (=> (select (|PolymorphicMapType_5127_4638_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@61 f_24@@61) (= (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@12) o2_9@@61 f_24@@61) (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@61 f_24@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@61 f_24@@61))
))) (forall ((o2_9@@62 T@Ref) (f_24@@62 T@Field_4638_7980) ) (!  (=> (select (|PolymorphicMapType_5127_4638_19460#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@62 f_24@@62) (= (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) o2_9@@62 f_24@@62) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@62 f_24@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@62 f_24@@62))
))) (forall ((o2_9@@63 T@Ref) (f_24@@63 T@Field_4638_7990) ) (!  (=> (select (|PolymorphicMapType_5127_4638_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@63 f_24@@63) (= (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@12) o2_9@@63 f_24@@63) (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@63 f_24@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@63 f_24@@63))
))) (forall ((o2_9@@64 T@Ref) (f_24@@64 T@Field_7964_53) ) (!  (=> (select (|PolymorphicMapType_5127_7964_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@64 f_24@@64) (= (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@12) o2_9@@64 f_24@@64) (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@64 f_24@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@64 f_24@@64))
))) (forall ((o2_9@@65 T@Ref) (f_24@@65 T@Field_7964_4652) ) (!  (=> (select (|PolymorphicMapType_5127_7964_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@65 f_24@@65) (= (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@12) o2_9@@65 f_24@@65) (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@65 f_24@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@65 f_24@@65))
))) (forall ((o2_9@@66 T@Ref) (f_24@@66 T@Field_7964_1255) ) (!  (=> (select (|PolymorphicMapType_5127_7964_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@66 f_24@@66) (= (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@12) o2_9@@66 f_24@@66) (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@66 f_24@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@66 f_24@@66))
))) (forall ((o2_9@@67 T@Ref) (f_24@@67 T@Field_7975_7980) ) (!  (=> (select (|PolymorphicMapType_5127_7964_20508#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@67 f_24@@67) (= (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@12) o2_9@@67 f_24@@67) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@67 f_24@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@67 f_24@@67))
))) (forall ((o2_9@@68 T@Ref) (f_24@@68 T@Field_7989_7990) ) (!  (=> (select (|PolymorphicMapType_5127_7964_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@68 f_24@@68) (= (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@12) o2_9@@68 f_24@@68) (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@68 f_24@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@68 f_24@@68))
))) (forall ((o2_9@@69 T@Ref) (f_24@@69 T@Field_8375_53) ) (!  (=> (select (|PolymorphicMapType_5127_8375_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@69 f_24@@69) (= (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@12) o2_9@@69 f_24@@69) (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@69 f_24@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@69 f_24@@69))
))) (forall ((o2_9@@70 T@Ref) (f_24@@70 T@Field_8375_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8375_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@70 f_24@@70) (= (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@12) o2_9@@70 f_24@@70) (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@70 f_24@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@70 f_24@@70))
))) (forall ((o2_9@@71 T@Ref) (f_24@@71 T@Field_8375_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8375_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@71 f_24@@71) (= (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@12) o2_9@@71 f_24@@71) (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@71 f_24@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@71 f_24@@71))
))) (forall ((o2_9@@72 T@Ref) (f_24@@72 T@Field_8387_8392) ) (!  (=> (select (|PolymorphicMapType_5127_8375_21556#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@72 f_24@@72) (= (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@12) o2_9@@72 f_24@@72) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@72 f_24@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@72 f_24@@72))
))) (forall ((o2_9@@73 T@Ref) (f_24@@73 T@Field_8375_8376) ) (!  (=> (select (|PolymorphicMapType_5127_8375_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@73 f_24@@73) (= (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@12) o2_9@@73 f_24@@73) (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@73 f_24@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@73 f_24@@73))
))) (forall ((o2_9@@74 T@Ref) (f_24@@74 T@Field_8604_53) ) (!  (=> (select (|PolymorphicMapType_5127_8604_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@74 f_24@@74) (= (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@12) o2_9@@74 f_24@@74) (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@74 f_24@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@74 f_24@@74))
))) (forall ((o2_9@@75 T@Ref) (f_24@@75 T@Field_8604_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8604_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@75 f_24@@75) (= (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@12) o2_9@@75 f_24@@75) (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@75 f_24@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@75 f_24@@75))
))) (forall ((o2_9@@76 T@Ref) (f_24@@76 T@Field_8604_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8604_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@76 f_24@@76) (= (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@12) o2_9@@76 f_24@@76) (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@76 f_24@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@76 f_24@@76))
))) (forall ((o2_9@@77 T@Ref) (f_24@@77 T@Field_8616_8621) ) (!  (=> (select (|PolymorphicMapType_5127_8604_22604#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@77 f_24@@77) (= (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@12) o2_9@@77 f_24@@77) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@77 f_24@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@77 f_24@@77))
))) (forall ((o2_9@@78 T@Ref) (f_24@@78 T@Field_8604_8605) ) (!  (=> (select (|PolymorphicMapType_5127_8604_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@12) null (PredicateMaskField_4638 pm_f_9@@10))) o2_9@@78 f_24@@78) (= (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@12) o2_9@@78 f_24@@78) (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@78 f_24@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@10) o2_9@@78 f_24@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (IsPredicateField_4638_17505 pm_f_9@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4578) (ExhaleHeap@@11 T@PolymorphicMapType_4578) (Mask@@12 T@PolymorphicMapType_4599) (pm_f_9@@11 T@Field_8604_8605) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_8604_7990 Mask@@12 null pm_f_9@@11) (IsWandField_8604_25217 pm_f_9@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@79 T@Ref) (f_24@@79 T@Field_4638_53) ) (!  (=> (select (|PolymorphicMapType_5127_4638_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@79 f_24@@79) (= (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@13) o2_9@@79 f_24@@79) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@79 f_24@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@79 f_24@@79))
)) (forall ((o2_9@@80 T@Ref) (f_24@@80 T@Field_4651_4652) ) (!  (=> (select (|PolymorphicMapType_5127_4638_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@80 f_24@@80) (= (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@13) o2_9@@80 f_24@@80) (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@80 f_24@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@80 f_24@@80))
))) (forall ((o2_9@@81 T@Ref) (f_24@@81 T@Field_4638_1255) ) (!  (=> (select (|PolymorphicMapType_5127_4638_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@81 f_24@@81) (= (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@13) o2_9@@81 f_24@@81) (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@81 f_24@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@81 f_24@@81))
))) (forall ((o2_9@@82 T@Ref) (f_24@@82 T@Field_4638_7980) ) (!  (=> (select (|PolymorphicMapType_5127_4638_19460#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@82 f_24@@82) (= (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@13) o2_9@@82 f_24@@82) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@82 f_24@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@82 f_24@@82))
))) (forall ((o2_9@@83 T@Ref) (f_24@@83 T@Field_4638_7990) ) (!  (=> (select (|PolymorphicMapType_5127_4638_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@83 f_24@@83) (= (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@13) o2_9@@83 f_24@@83) (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@83 f_24@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@83 f_24@@83))
))) (forall ((o2_9@@84 T@Ref) (f_24@@84 T@Field_7964_53) ) (!  (=> (select (|PolymorphicMapType_5127_7964_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@84 f_24@@84) (= (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@13) o2_9@@84 f_24@@84) (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@84 f_24@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@84 f_24@@84))
))) (forall ((o2_9@@85 T@Ref) (f_24@@85 T@Field_7964_4652) ) (!  (=> (select (|PolymorphicMapType_5127_7964_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@85 f_24@@85) (= (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@13) o2_9@@85 f_24@@85) (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@85 f_24@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@85 f_24@@85))
))) (forall ((o2_9@@86 T@Ref) (f_24@@86 T@Field_7964_1255) ) (!  (=> (select (|PolymorphicMapType_5127_7964_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@86 f_24@@86) (= (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@13) o2_9@@86 f_24@@86) (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@86 f_24@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@86 f_24@@86))
))) (forall ((o2_9@@87 T@Ref) (f_24@@87 T@Field_7975_7980) ) (!  (=> (select (|PolymorphicMapType_5127_7964_20508#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@87 f_24@@87) (= (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@13) o2_9@@87 f_24@@87) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@87 f_24@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@87 f_24@@87))
))) (forall ((o2_9@@88 T@Ref) (f_24@@88 T@Field_7989_7990) ) (!  (=> (select (|PolymorphicMapType_5127_7964_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@88 f_24@@88) (= (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@13) o2_9@@88 f_24@@88) (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@88 f_24@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@88 f_24@@88))
))) (forall ((o2_9@@89 T@Ref) (f_24@@89 T@Field_8375_53) ) (!  (=> (select (|PolymorphicMapType_5127_8375_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@89 f_24@@89) (= (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@13) o2_9@@89 f_24@@89) (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@89 f_24@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@89 f_24@@89))
))) (forall ((o2_9@@90 T@Ref) (f_24@@90 T@Field_8375_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8375_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@90 f_24@@90) (= (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@13) o2_9@@90 f_24@@90) (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@90 f_24@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@90 f_24@@90))
))) (forall ((o2_9@@91 T@Ref) (f_24@@91 T@Field_8375_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8375_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@91 f_24@@91) (= (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@13) o2_9@@91 f_24@@91) (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@91 f_24@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@91 f_24@@91))
))) (forall ((o2_9@@92 T@Ref) (f_24@@92 T@Field_8387_8392) ) (!  (=> (select (|PolymorphicMapType_5127_8375_21556#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@92 f_24@@92) (= (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@13) o2_9@@92 f_24@@92) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@92 f_24@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@92 f_24@@92))
))) (forall ((o2_9@@93 T@Ref) (f_24@@93 T@Field_8375_8376) ) (!  (=> (select (|PolymorphicMapType_5127_8375_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@93 f_24@@93) (= (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@13) o2_9@@93 f_24@@93) (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@93 f_24@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@93 f_24@@93))
))) (forall ((o2_9@@94 T@Ref) (f_24@@94 T@Field_8604_53) ) (!  (=> (select (|PolymorphicMapType_5127_8604_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@94 f_24@@94) (= (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@13) o2_9@@94 f_24@@94) (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@94 f_24@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@94 f_24@@94))
))) (forall ((o2_9@@95 T@Ref) (f_24@@95 T@Field_8604_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8604_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@95 f_24@@95) (= (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@13) o2_9@@95 f_24@@95) (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@95 f_24@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@95 f_24@@95))
))) (forall ((o2_9@@96 T@Ref) (f_24@@96 T@Field_8604_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8604_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@96 f_24@@96) (= (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@13) o2_9@@96 f_24@@96) (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@96 f_24@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@96 f_24@@96))
))) (forall ((o2_9@@97 T@Ref) (f_24@@97 T@Field_8616_8621) ) (!  (=> (select (|PolymorphicMapType_5127_8604_22604#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@97 f_24@@97) (= (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) o2_9@@97 f_24@@97) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@97 f_24@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@97 f_24@@97))
))) (forall ((o2_9@@98 T@Ref) (f_24@@98 T@Field_8604_8605) ) (!  (=> (select (|PolymorphicMapType_5127_8604_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@13) null (WandMaskField_8604 pm_f_9@@11))) o2_9@@98 f_24@@98) (= (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@13) o2_9@@98 f_24@@98) (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@98 f_24@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@11) o2_9@@98 f_24@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@12) (IsWandField_8604_25217 pm_f_9@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4578) (ExhaleHeap@@12 T@PolymorphicMapType_4578) (Mask@@13 T@PolymorphicMapType_4599) (pm_f_9@@12 T@Field_8375_8376) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_8375_7990 Mask@@13 null pm_f_9@@12) (IsWandField_8375_24860 pm_f_9@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@99 T@Ref) (f_24@@99 T@Field_4638_53) ) (!  (=> (select (|PolymorphicMapType_5127_4638_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@99 f_24@@99) (= (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@14) o2_9@@99 f_24@@99) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@99 f_24@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@99 f_24@@99))
)) (forall ((o2_9@@100 T@Ref) (f_24@@100 T@Field_4651_4652) ) (!  (=> (select (|PolymorphicMapType_5127_4638_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@100 f_24@@100) (= (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@14) o2_9@@100 f_24@@100) (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@100 f_24@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@100 f_24@@100))
))) (forall ((o2_9@@101 T@Ref) (f_24@@101 T@Field_4638_1255) ) (!  (=> (select (|PolymorphicMapType_5127_4638_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@101 f_24@@101) (= (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@14) o2_9@@101 f_24@@101) (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@101 f_24@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@101 f_24@@101))
))) (forall ((o2_9@@102 T@Ref) (f_24@@102 T@Field_4638_7980) ) (!  (=> (select (|PolymorphicMapType_5127_4638_19460#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@102 f_24@@102) (= (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@14) o2_9@@102 f_24@@102) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@102 f_24@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@102 f_24@@102))
))) (forall ((o2_9@@103 T@Ref) (f_24@@103 T@Field_4638_7990) ) (!  (=> (select (|PolymorphicMapType_5127_4638_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@103 f_24@@103) (= (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@14) o2_9@@103 f_24@@103) (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@103 f_24@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@103 f_24@@103))
))) (forall ((o2_9@@104 T@Ref) (f_24@@104 T@Field_7964_53) ) (!  (=> (select (|PolymorphicMapType_5127_7964_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@104 f_24@@104) (= (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@14) o2_9@@104 f_24@@104) (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@104 f_24@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@104 f_24@@104))
))) (forall ((o2_9@@105 T@Ref) (f_24@@105 T@Field_7964_4652) ) (!  (=> (select (|PolymorphicMapType_5127_7964_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@105 f_24@@105) (= (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@14) o2_9@@105 f_24@@105) (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@105 f_24@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@105 f_24@@105))
))) (forall ((o2_9@@106 T@Ref) (f_24@@106 T@Field_7964_1255) ) (!  (=> (select (|PolymorphicMapType_5127_7964_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@106 f_24@@106) (= (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@14) o2_9@@106 f_24@@106) (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@106 f_24@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@106 f_24@@106))
))) (forall ((o2_9@@107 T@Ref) (f_24@@107 T@Field_7975_7980) ) (!  (=> (select (|PolymorphicMapType_5127_7964_20508#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@107 f_24@@107) (= (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@14) o2_9@@107 f_24@@107) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@107 f_24@@107)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@107 f_24@@107))
))) (forall ((o2_9@@108 T@Ref) (f_24@@108 T@Field_7989_7990) ) (!  (=> (select (|PolymorphicMapType_5127_7964_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@108 f_24@@108) (= (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@14) o2_9@@108 f_24@@108) (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@108 f_24@@108)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@108 f_24@@108))
))) (forall ((o2_9@@109 T@Ref) (f_24@@109 T@Field_8375_53) ) (!  (=> (select (|PolymorphicMapType_5127_8375_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@109 f_24@@109) (= (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@14) o2_9@@109 f_24@@109) (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@109 f_24@@109)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@109 f_24@@109))
))) (forall ((o2_9@@110 T@Ref) (f_24@@110 T@Field_8375_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8375_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@110 f_24@@110) (= (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@14) o2_9@@110 f_24@@110) (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@110 f_24@@110)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@110 f_24@@110))
))) (forall ((o2_9@@111 T@Ref) (f_24@@111 T@Field_8375_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8375_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@111 f_24@@111) (= (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@14) o2_9@@111 f_24@@111) (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@111 f_24@@111)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@111 f_24@@111))
))) (forall ((o2_9@@112 T@Ref) (f_24@@112 T@Field_8387_8392) ) (!  (=> (select (|PolymorphicMapType_5127_8375_21556#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@112 f_24@@112) (= (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) o2_9@@112 f_24@@112) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@112 f_24@@112)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@112 f_24@@112))
))) (forall ((o2_9@@113 T@Ref) (f_24@@113 T@Field_8375_8376) ) (!  (=> (select (|PolymorphicMapType_5127_8375_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@113 f_24@@113) (= (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@14) o2_9@@113 f_24@@113) (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@113 f_24@@113)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@113 f_24@@113))
))) (forall ((o2_9@@114 T@Ref) (f_24@@114 T@Field_8604_53) ) (!  (=> (select (|PolymorphicMapType_5127_8604_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@114 f_24@@114) (= (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@14) o2_9@@114 f_24@@114) (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@114 f_24@@114)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@114 f_24@@114))
))) (forall ((o2_9@@115 T@Ref) (f_24@@115 T@Field_8604_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8604_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@115 f_24@@115) (= (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@14) o2_9@@115 f_24@@115) (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@115 f_24@@115)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@115 f_24@@115))
))) (forall ((o2_9@@116 T@Ref) (f_24@@116 T@Field_8604_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8604_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@116 f_24@@116) (= (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@14) o2_9@@116 f_24@@116) (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@116 f_24@@116)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@116 f_24@@116))
))) (forall ((o2_9@@117 T@Ref) (f_24@@117 T@Field_8616_8621) ) (!  (=> (select (|PolymorphicMapType_5127_8604_22604#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@117 f_24@@117) (= (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@14) o2_9@@117 f_24@@117) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@117 f_24@@117)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@117 f_24@@117))
))) (forall ((o2_9@@118 T@Ref) (f_24@@118 T@Field_8604_8605) ) (!  (=> (select (|PolymorphicMapType_5127_8604_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@14) null (WandMaskField_8375 pm_f_9@@12))) o2_9@@118 f_24@@118) (= (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@14) o2_9@@118 f_24@@118) (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@118 f_24@@118)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@12) o2_9@@118 f_24@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@13) (IsWandField_8375_24860 pm_f_9@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4578) (ExhaleHeap@@13 T@PolymorphicMapType_4578) (Mask@@14 T@PolymorphicMapType_4599) (pm_f_9@@13 T@Field_7989_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_7964_7990 Mask@@14 null pm_f_9@@13) (IsWandField_2728_2729 pm_f_9@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@119 T@Ref) (f_24@@119 T@Field_4638_53) ) (!  (=> (select (|PolymorphicMapType_5127_4638_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@119 f_24@@119) (= (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@15) o2_9@@119 f_24@@119) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@119 f_24@@119)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@119 f_24@@119))
)) (forall ((o2_9@@120 T@Ref) (f_24@@120 T@Field_4651_4652) ) (!  (=> (select (|PolymorphicMapType_5127_4638_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@120 f_24@@120) (= (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@15) o2_9@@120 f_24@@120) (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@120 f_24@@120)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@120 f_24@@120))
))) (forall ((o2_9@@121 T@Ref) (f_24@@121 T@Field_4638_1255) ) (!  (=> (select (|PolymorphicMapType_5127_4638_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@121 f_24@@121) (= (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@15) o2_9@@121 f_24@@121) (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@121 f_24@@121)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@121 f_24@@121))
))) (forall ((o2_9@@122 T@Ref) (f_24@@122 T@Field_4638_7980) ) (!  (=> (select (|PolymorphicMapType_5127_4638_19460#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@122 f_24@@122) (= (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@15) o2_9@@122 f_24@@122) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@122 f_24@@122)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@122 f_24@@122))
))) (forall ((o2_9@@123 T@Ref) (f_24@@123 T@Field_4638_7990) ) (!  (=> (select (|PolymorphicMapType_5127_4638_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@123 f_24@@123) (= (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@15) o2_9@@123 f_24@@123) (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@123 f_24@@123)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@123 f_24@@123))
))) (forall ((o2_9@@124 T@Ref) (f_24@@124 T@Field_7964_53) ) (!  (=> (select (|PolymorphicMapType_5127_7964_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@124 f_24@@124) (= (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@15) o2_9@@124 f_24@@124) (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@124 f_24@@124)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@124 f_24@@124))
))) (forall ((o2_9@@125 T@Ref) (f_24@@125 T@Field_7964_4652) ) (!  (=> (select (|PolymorphicMapType_5127_7964_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@125 f_24@@125) (= (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@15) o2_9@@125 f_24@@125) (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@125 f_24@@125)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@125 f_24@@125))
))) (forall ((o2_9@@126 T@Ref) (f_24@@126 T@Field_7964_1255) ) (!  (=> (select (|PolymorphicMapType_5127_7964_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@126 f_24@@126) (= (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@15) o2_9@@126 f_24@@126) (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@126 f_24@@126)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@126 f_24@@126))
))) (forall ((o2_9@@127 T@Ref) (f_24@@127 T@Field_7975_7980) ) (!  (=> (select (|PolymorphicMapType_5127_7964_20508#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@127 f_24@@127) (= (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) o2_9@@127 f_24@@127) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@127 f_24@@127)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@127 f_24@@127))
))) (forall ((o2_9@@128 T@Ref) (f_24@@128 T@Field_7989_7990) ) (!  (=> (select (|PolymorphicMapType_5127_7964_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@128 f_24@@128) (= (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@15) o2_9@@128 f_24@@128) (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@128 f_24@@128)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@128 f_24@@128))
))) (forall ((o2_9@@129 T@Ref) (f_24@@129 T@Field_8375_53) ) (!  (=> (select (|PolymorphicMapType_5127_8375_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@129 f_24@@129) (= (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@15) o2_9@@129 f_24@@129) (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@129 f_24@@129)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@129 f_24@@129))
))) (forall ((o2_9@@130 T@Ref) (f_24@@130 T@Field_8375_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8375_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@130 f_24@@130) (= (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@15) o2_9@@130 f_24@@130) (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@130 f_24@@130)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@130 f_24@@130))
))) (forall ((o2_9@@131 T@Ref) (f_24@@131 T@Field_8375_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8375_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@131 f_24@@131) (= (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@15) o2_9@@131 f_24@@131) (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@131 f_24@@131)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@131 f_24@@131))
))) (forall ((o2_9@@132 T@Ref) (f_24@@132 T@Field_8387_8392) ) (!  (=> (select (|PolymorphicMapType_5127_8375_21556#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@132 f_24@@132) (= (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@15) o2_9@@132 f_24@@132) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@132 f_24@@132)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@132 f_24@@132))
))) (forall ((o2_9@@133 T@Ref) (f_24@@133 T@Field_8375_8376) ) (!  (=> (select (|PolymorphicMapType_5127_8375_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@133 f_24@@133) (= (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@15) o2_9@@133 f_24@@133) (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@133 f_24@@133)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@133 f_24@@133))
))) (forall ((o2_9@@134 T@Ref) (f_24@@134 T@Field_8604_53) ) (!  (=> (select (|PolymorphicMapType_5127_8604_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@134 f_24@@134) (= (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@15) o2_9@@134 f_24@@134) (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@134 f_24@@134)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@134 f_24@@134))
))) (forall ((o2_9@@135 T@Ref) (f_24@@135 T@Field_8604_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8604_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@135 f_24@@135) (= (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@15) o2_9@@135 f_24@@135) (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@135 f_24@@135)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@135 f_24@@135))
))) (forall ((o2_9@@136 T@Ref) (f_24@@136 T@Field_8604_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8604_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@136 f_24@@136) (= (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@15) o2_9@@136 f_24@@136) (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@136 f_24@@136)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@136 f_24@@136))
))) (forall ((o2_9@@137 T@Ref) (f_24@@137 T@Field_8616_8621) ) (!  (=> (select (|PolymorphicMapType_5127_8604_22604#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@137 f_24@@137) (= (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@15) o2_9@@137 f_24@@137) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@137 f_24@@137)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@137 f_24@@137))
))) (forall ((o2_9@@138 T@Ref) (f_24@@138 T@Field_8604_8605) ) (!  (=> (select (|PolymorphicMapType_5127_8604_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@15) null (WandMaskField_2728 pm_f_9@@13))) o2_9@@138 f_24@@138) (= (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@15) o2_9@@138 f_24@@138) (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@138 f_24@@138)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@13) o2_9@@138 f_24@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@14) (IsWandField_2728_2729 pm_f_9@@13))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4578) (ExhaleHeap@@14 T@PolymorphicMapType_4578) (Mask@@15 T@PolymorphicMapType_4599) (pm_f_9@@14 T@Field_4638_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_4638_7990 Mask@@15 null pm_f_9@@14) (IsWandField_4638_24178 pm_f_9@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@139 T@Ref) (f_24@@139 T@Field_4638_53) ) (!  (=> (select (|PolymorphicMapType_5127_4638_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@139 f_24@@139) (= (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@16) o2_9@@139 f_24@@139) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@139 f_24@@139)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@139 f_24@@139))
)) (forall ((o2_9@@140 T@Ref) (f_24@@140 T@Field_4651_4652) ) (!  (=> (select (|PolymorphicMapType_5127_4638_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@140 f_24@@140) (= (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@16) o2_9@@140 f_24@@140) (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@140 f_24@@140)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@140 f_24@@140))
))) (forall ((o2_9@@141 T@Ref) (f_24@@141 T@Field_4638_1255) ) (!  (=> (select (|PolymorphicMapType_5127_4638_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@141 f_24@@141) (= (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@16) o2_9@@141 f_24@@141) (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@141 f_24@@141)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@141 f_24@@141))
))) (forall ((o2_9@@142 T@Ref) (f_24@@142 T@Field_4638_7980) ) (!  (=> (select (|PolymorphicMapType_5127_4638_19460#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@142 f_24@@142) (= (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) o2_9@@142 f_24@@142) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@142 f_24@@142)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@142 f_24@@142))
))) (forall ((o2_9@@143 T@Ref) (f_24@@143 T@Field_4638_7990) ) (!  (=> (select (|PolymorphicMapType_5127_4638_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@143 f_24@@143) (= (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@16) o2_9@@143 f_24@@143) (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@143 f_24@@143)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@143 f_24@@143))
))) (forall ((o2_9@@144 T@Ref) (f_24@@144 T@Field_7964_53) ) (!  (=> (select (|PolymorphicMapType_5127_7964_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@144 f_24@@144) (= (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@16) o2_9@@144 f_24@@144) (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@144 f_24@@144)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@144 f_24@@144))
))) (forall ((o2_9@@145 T@Ref) (f_24@@145 T@Field_7964_4652) ) (!  (=> (select (|PolymorphicMapType_5127_7964_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@145 f_24@@145) (= (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@16) o2_9@@145 f_24@@145) (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@145 f_24@@145)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@145 f_24@@145))
))) (forall ((o2_9@@146 T@Ref) (f_24@@146 T@Field_7964_1255) ) (!  (=> (select (|PolymorphicMapType_5127_7964_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@146 f_24@@146) (= (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@16) o2_9@@146 f_24@@146) (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@146 f_24@@146)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@146 f_24@@146))
))) (forall ((o2_9@@147 T@Ref) (f_24@@147 T@Field_7975_7980) ) (!  (=> (select (|PolymorphicMapType_5127_7964_20508#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@147 f_24@@147) (= (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@16) o2_9@@147 f_24@@147) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@147 f_24@@147)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@147 f_24@@147))
))) (forall ((o2_9@@148 T@Ref) (f_24@@148 T@Field_7989_7990) ) (!  (=> (select (|PolymorphicMapType_5127_7964_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@148 f_24@@148) (= (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@16) o2_9@@148 f_24@@148) (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@148 f_24@@148)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@148 f_24@@148))
))) (forall ((o2_9@@149 T@Ref) (f_24@@149 T@Field_8375_53) ) (!  (=> (select (|PolymorphicMapType_5127_8375_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@149 f_24@@149) (= (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@16) o2_9@@149 f_24@@149) (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@149 f_24@@149)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@149 f_24@@149))
))) (forall ((o2_9@@150 T@Ref) (f_24@@150 T@Field_8375_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8375_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@150 f_24@@150) (= (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@16) o2_9@@150 f_24@@150) (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@150 f_24@@150)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@150 f_24@@150))
))) (forall ((o2_9@@151 T@Ref) (f_24@@151 T@Field_8375_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8375_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@151 f_24@@151) (= (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@16) o2_9@@151 f_24@@151) (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@151 f_24@@151)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@151 f_24@@151))
))) (forall ((o2_9@@152 T@Ref) (f_24@@152 T@Field_8387_8392) ) (!  (=> (select (|PolymorphicMapType_5127_8375_21556#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@152 f_24@@152) (= (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@16) o2_9@@152 f_24@@152) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@152 f_24@@152)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@152 f_24@@152))
))) (forall ((o2_9@@153 T@Ref) (f_24@@153 T@Field_8375_8376) ) (!  (=> (select (|PolymorphicMapType_5127_8375_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@153 f_24@@153) (= (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@16) o2_9@@153 f_24@@153) (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@153 f_24@@153)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@153 f_24@@153))
))) (forall ((o2_9@@154 T@Ref) (f_24@@154 T@Field_8604_53) ) (!  (=> (select (|PolymorphicMapType_5127_8604_53#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@154 f_24@@154) (= (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@16) o2_9@@154 f_24@@154) (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@154 f_24@@154)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@154 f_24@@154))
))) (forall ((o2_9@@155 T@Ref) (f_24@@155 T@Field_8604_4652) ) (!  (=> (select (|PolymorphicMapType_5127_8604_4652#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@155 f_24@@155) (= (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@16) o2_9@@155 f_24@@155) (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@155 f_24@@155)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@155 f_24@@155))
))) (forall ((o2_9@@156 T@Ref) (f_24@@156 T@Field_8604_1255) ) (!  (=> (select (|PolymorphicMapType_5127_8604_1255#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@156 f_24@@156) (= (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@16) o2_9@@156 f_24@@156) (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@156 f_24@@156)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@156 f_24@@156))
))) (forall ((o2_9@@157 T@Ref) (f_24@@157 T@Field_8616_8621) ) (!  (=> (select (|PolymorphicMapType_5127_8604_22604#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@157 f_24@@157) (= (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@16) o2_9@@157 f_24@@157) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@157 f_24@@157)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@157 f_24@@157))
))) (forall ((o2_9@@158 T@Ref) (f_24@@158 T@Field_8604_8605) ) (!  (=> (select (|PolymorphicMapType_5127_8604_7990#PolymorphicMapType_5127| (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@16) null (WandMaskField_4638 pm_f_9@@14))) o2_9@@158 f_24@@158) (= (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@16) o2_9@@158 f_24@@158) (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@158 f_24@@158)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@14) o2_9@@158 f_24@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@15) (IsWandField_4638_24178 pm_f_9@@14))
)))
(assert (forall ((arg1@@3 Int) (arg1_2 Int) ) (!  (=> (= (wand arg1@@3) (wand arg1_2)) (= arg1@@3 arg1_2))
 :qid |stdinbpl.229:15|
 :skolemid |28|
 :pattern ( (wand arg1@@3) (wand arg1_2))
)))
(assert (forall ((n@@1 Int) (n2 Int) ) (!  (=> (= (Q n@@1) (Q n2)) (= n@@1 n2))
 :qid |stdinbpl.273:15|
 :skolemid |33|
 :pattern ( (Q n@@1) (Q n2))
)))
(assert (forall ((n@@2 Int) (n2@@0 Int) ) (!  (=> (= (|Q#sm| n@@2) (|Q#sm| n2@@0)) (= n@@2 n2@@0))
 :qid |stdinbpl.277:15|
 :skolemid |34|
 :pattern ( (|Q#sm| n@@2) (|Q#sm| n2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4578) (ExhaleHeap@@15 T@PolymorphicMapType_4578) (Mask@@16 T@PolymorphicMapType_4599) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@17) o_27 $allocated) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@15) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@15) o_27 $allocated))
)))
(assert (forall ((p T@Field_8604_8605) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8604_8604 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8604_8604 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8375_8376) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8375_8375 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8375_8375 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_7989_7990) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_7964_7964 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7964_7964 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_4638_7990) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_4638_4638 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4638_4638 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4578) (ExhaleHeap@@16 T@PolymorphicMapType_4578) (Mask@@17 T@PolymorphicMapType_4599) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@18 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4599) (o_2@@19 T@Ref) (f_4@@19 T@Field_4638_7980) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4638_38936 f_4@@19))) (not (IsWandField_4638_38952 f_4@@19))) (<= (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4599) (o_2@@20 T@Ref) (f_4@@20 T@Field_4651_4652) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4638_4652 f_4@@20))) (not (IsWandField_4638_4652 f_4@@20))) (<= (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4599) (o_2@@21 T@Ref) (f_4@@21 T@Field_4638_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4638_53 f_4@@21))) (not (IsWandField_4638_53 f_4@@21))) (<= (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4599) (o_2@@22 T@Ref) (f_4@@22 T@Field_4638_1255) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4638_1255 f_4@@22))) (not (IsWandField_4638_1255 f_4@@22))) (<= (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4599) (o_2@@23 T@Ref) (f_4@@23 T@Field_4638_7990) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_4638_17505 f_4@@23))) (not (IsWandField_4638_24178 f_4@@23))) (<= (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4599) (o_2@@24 T@Ref) (f_4@@24 T@Field_7975_7980) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_2723_38105 f_4@@24))) (not (IsWandField_2723_38121 f_4@@24))) (<= (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4599) (o_2@@25 T@Ref) (f_4@@25 T@Field_7964_4652) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_2723_4652 f_4@@25))) (not (IsWandField_2723_4652 f_4@@25))) (<= (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4599) (o_2@@26 T@Ref) (f_4@@26 T@Field_7964_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_2723_53 f_4@@26))) (not (IsWandField_2723_53 f_4@@26))) (<= (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4599) (o_2@@27 T@Ref) (f_4@@27 T@Field_7964_1255) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_2723_1255 f_4@@27))) (not (IsWandField_2723_1255 f_4@@27))) (<= (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4599) (o_2@@28 T@Ref) (f_4@@28 T@Field_7989_7990) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_2728_2729 f_4@@28))) (not (IsWandField_2728_2729 f_4@@28))) (<= (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4599) (o_2@@29 T@Ref) (f_4@@29 T@Field_8616_8621) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_2743_37288 f_4@@29))) (not (IsWandField_2743_37304 f_4@@29))) (<= (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4599) (o_2@@30 T@Ref) (f_4@@30 T@Field_8604_4652) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_2743_4652 f_4@@30))) (not (IsWandField_2743_4652 f_4@@30))) (<= (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_4599) (o_2@@31 T@Ref) (f_4@@31 T@Field_8604_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_2743_53 f_4@@31))) (not (IsWandField_2743_53 f_4@@31))) (<= (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_4599) (o_2@@32 T@Ref) (f_4@@32 T@Field_8604_1255) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_2743_1255 f_4@@32))) (not (IsWandField_2743_1255 f_4@@32))) (<= (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_4599) (o_2@@33 T@Ref) (f_4@@33 T@Field_8604_8605) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_2743_2744 f_4@@33))) (not (IsWandField_8604_25217 f_4@@33))) (<= (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_4599) (o_2@@34 T@Ref) (f_4@@34 T@Field_8387_8392) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_2731_36457 f_4@@34))) (not (IsWandField_2731_36473 f_4@@34))) (<= (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_4599) (o_2@@35 T@Ref) (f_4@@35 T@Field_8375_4652) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_2731_4652 f_4@@35))) (not (IsWandField_2731_4652 f_4@@35))) (<= (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_4599) (o_2@@36 T@Ref) (f_4@@36 T@Field_8375_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_2731_53 f_4@@36))) (not (IsWandField_2731_53 f_4@@36))) (<= (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_4599) (o_2@@37 T@Ref) (f_4@@37 T@Field_8375_1255) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_2731_1255 f_4@@37))) (not (IsWandField_2731_1255 f_4@@37))) (<= (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_4599) (o_2@@38 T@Ref) (f_4@@38 T@Field_8375_8376) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_2731_2732 f_4@@38))) (not (IsWandField_8375_24860 f_4@@38))) (<= (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_4599) (o_2@@39 T@Ref) (f_4@@39 T@Field_8604_8605) ) (! (= (HasDirectPerm_8604_7990 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8604_7990 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_4599) (o_2@@40 T@Ref) (f_4@@40 T@Field_8616_8621) ) (! (= (HasDirectPerm_8604_16989 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8604_16989 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_4599) (o_2@@41 T@Ref) (f_4@@41 T@Field_8604_1255) ) (! (= (HasDirectPerm_8604_1255 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8604_1255 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_4599) (o_2@@42 T@Ref) (f_4@@42 T@Field_8604_4652) ) (! (= (HasDirectPerm_8604_4652 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8604_4652 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_4599) (o_2@@43 T@Ref) (f_4@@43 T@Field_8604_53) ) (! (= (HasDirectPerm_8604_53 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8604_53 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_4599) (o_2@@44 T@Ref) (f_4@@44 T@Field_8375_8376) ) (! (= (HasDirectPerm_8375_7990 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8375_7990 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_4599) (o_2@@45 T@Ref) (f_4@@45 T@Field_8387_8392) ) (! (= (HasDirectPerm_8375_15811 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8375_15811 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_4599) (o_2@@46 T@Ref) (f_4@@46 T@Field_8375_1255) ) (! (= (HasDirectPerm_8375_1255 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8375_1255 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_4599) (o_2@@47 T@Ref) (f_4@@47 T@Field_8375_4652) ) (! (= (HasDirectPerm_8375_4652 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8375_4652 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_4599) (o_2@@48 T@Ref) (f_4@@48 T@Field_8375_53) ) (! (= (HasDirectPerm_8375_53 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8375_53 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_4599) (o_2@@49 T@Ref) (f_4@@49 T@Field_7989_7990) ) (! (= (HasDirectPerm_7964_7990 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7964_7990 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_4599) (o_2@@50 T@Ref) (f_4@@50 T@Field_7975_7980) ) (! (= (HasDirectPerm_7964_14633 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7964_14633 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_4599) (o_2@@51 T@Ref) (f_4@@51 T@Field_7964_1255) ) (! (= (HasDirectPerm_7964_1255 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7964_1255 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_4599) (o_2@@52 T@Ref) (f_4@@52 T@Field_7964_4652) ) (! (= (HasDirectPerm_7964_4652 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7964_4652 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_4599) (o_2@@53 T@Ref) (f_4@@53 T@Field_7964_53) ) (! (= (HasDirectPerm_7964_53 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7964_53 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_4599) (o_2@@54 T@Ref) (f_4@@54 T@Field_4638_7990) ) (! (= (HasDirectPerm_4638_7990 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4638_7990 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_4599) (o_2@@55 T@Ref) (f_4@@55 T@Field_4638_7980) ) (! (= (HasDirectPerm_4638_13455 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4638_13455 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_4599) (o_2@@56 T@Ref) (f_4@@56 T@Field_4638_1255) ) (! (= (HasDirectPerm_4638_1255 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4638_1255 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_4599) (o_2@@57 T@Ref) (f_4@@57 T@Field_4651_4652) ) (! (= (HasDirectPerm_4638_4652 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4638_4652 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_4599) (o_2@@58 T@Ref) (f_4@@58 T@Field_4638_53) ) (! (= (HasDirectPerm_4638_53 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4638_53 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4578) (ExhaleHeap@@17 T@PolymorphicMapType_4578) (Mask@@58 T@PolymorphicMapType_4599) (o_27@@0 T@Ref) (f_24@@159 T@Field_8604_8605) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_8604_7990 Mask@@58 o_27@@0 f_24@@159) (= (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@19) o_27@@0 f_24@@159) (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@17) o_27@@0 f_24@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| ExhaleHeap@@17) o_27@@0 f_24@@159))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4578) (ExhaleHeap@@18 T@PolymorphicMapType_4578) (Mask@@59 T@PolymorphicMapType_4599) (o_27@@1 T@Ref) (f_24@@160 T@Field_8616_8621) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_8604_16989 Mask@@59 o_27@@1 f_24@@160) (= (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@20) o_27@@1 f_24@@160) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@18) o_27@@1 f_24@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| ExhaleHeap@@18) o_27@@1 f_24@@160))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4578) (ExhaleHeap@@19 T@PolymorphicMapType_4578) (Mask@@60 T@PolymorphicMapType_4599) (o_27@@2 T@Ref) (f_24@@161 T@Field_8604_1255) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_8604_1255 Mask@@60 o_27@@2 f_24@@161) (= (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@21) o_27@@2 f_24@@161) (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@19) o_27@@2 f_24@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| ExhaleHeap@@19) o_27@@2 f_24@@161))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4578) (ExhaleHeap@@20 T@PolymorphicMapType_4578) (Mask@@61 T@PolymorphicMapType_4599) (o_27@@3 T@Ref) (f_24@@162 T@Field_8604_4652) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_8604_4652 Mask@@61 o_27@@3 f_24@@162) (= (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@22) o_27@@3 f_24@@162) (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@20) o_27@@3 f_24@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| ExhaleHeap@@20) o_27@@3 f_24@@162))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4578) (ExhaleHeap@@21 T@PolymorphicMapType_4578) (Mask@@62 T@PolymorphicMapType_4599) (o_27@@4 T@Ref) (f_24@@163 T@Field_8604_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_8604_53 Mask@@62 o_27@@4 f_24@@163) (= (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@23) o_27@@4 f_24@@163) (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@21) o_27@@4 f_24@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| ExhaleHeap@@21) o_27@@4 f_24@@163))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4578) (ExhaleHeap@@22 T@PolymorphicMapType_4578) (Mask@@63 T@PolymorphicMapType_4599) (o_27@@5 T@Ref) (f_24@@164 T@Field_8375_8376) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_8375_7990 Mask@@63 o_27@@5 f_24@@164) (= (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@24) o_27@@5 f_24@@164) (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@22) o_27@@5 f_24@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| ExhaleHeap@@22) o_27@@5 f_24@@164))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4578) (ExhaleHeap@@23 T@PolymorphicMapType_4578) (Mask@@64 T@PolymorphicMapType_4599) (o_27@@6 T@Ref) (f_24@@165 T@Field_8387_8392) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_8375_15811 Mask@@64 o_27@@6 f_24@@165) (= (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@25) o_27@@6 f_24@@165) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@23) o_27@@6 f_24@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| ExhaleHeap@@23) o_27@@6 f_24@@165))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4578) (ExhaleHeap@@24 T@PolymorphicMapType_4578) (Mask@@65 T@PolymorphicMapType_4599) (o_27@@7 T@Ref) (f_24@@166 T@Field_8375_1255) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_8375_1255 Mask@@65 o_27@@7 f_24@@166) (= (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@26) o_27@@7 f_24@@166) (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@24) o_27@@7 f_24@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| ExhaleHeap@@24) o_27@@7 f_24@@166))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4578) (ExhaleHeap@@25 T@PolymorphicMapType_4578) (Mask@@66 T@PolymorphicMapType_4599) (o_27@@8 T@Ref) (f_24@@167 T@Field_8375_4652) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_8375_4652 Mask@@66 o_27@@8 f_24@@167) (= (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@27) o_27@@8 f_24@@167) (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@25) o_27@@8 f_24@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| ExhaleHeap@@25) o_27@@8 f_24@@167))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4578) (ExhaleHeap@@26 T@PolymorphicMapType_4578) (Mask@@67 T@PolymorphicMapType_4599) (o_27@@9 T@Ref) (f_24@@168 T@Field_8375_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_8375_53 Mask@@67 o_27@@9 f_24@@168) (= (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@28) o_27@@9 f_24@@168) (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@26) o_27@@9 f_24@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| ExhaleHeap@@26) o_27@@9 f_24@@168))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4578) (ExhaleHeap@@27 T@PolymorphicMapType_4578) (Mask@@68 T@PolymorphicMapType_4599) (o_27@@10 T@Ref) (f_24@@169 T@Field_7989_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_7964_7990 Mask@@68 o_27@@10 f_24@@169) (= (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@29) o_27@@10 f_24@@169) (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@27) o_27@@10 f_24@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| ExhaleHeap@@27) o_27@@10 f_24@@169))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4578) (ExhaleHeap@@28 T@PolymorphicMapType_4578) (Mask@@69 T@PolymorphicMapType_4599) (o_27@@11 T@Ref) (f_24@@170 T@Field_7975_7980) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_7964_14633 Mask@@69 o_27@@11 f_24@@170) (= (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@30) o_27@@11 f_24@@170) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@28) o_27@@11 f_24@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| ExhaleHeap@@28) o_27@@11 f_24@@170))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_4578) (ExhaleHeap@@29 T@PolymorphicMapType_4578) (Mask@@70 T@PolymorphicMapType_4599) (o_27@@12 T@Ref) (f_24@@171 T@Field_7964_1255) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_7964_1255 Mask@@70 o_27@@12 f_24@@171) (= (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@31) o_27@@12 f_24@@171) (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@29) o_27@@12 f_24@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| ExhaleHeap@@29) o_27@@12 f_24@@171))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_4578) (ExhaleHeap@@30 T@PolymorphicMapType_4578) (Mask@@71 T@PolymorphicMapType_4599) (o_27@@13 T@Ref) (f_24@@172 T@Field_7964_4652) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_7964_4652 Mask@@71 o_27@@13 f_24@@172) (= (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@32) o_27@@13 f_24@@172) (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@30) o_27@@13 f_24@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| ExhaleHeap@@30) o_27@@13 f_24@@172))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_4578) (ExhaleHeap@@31 T@PolymorphicMapType_4578) (Mask@@72 T@PolymorphicMapType_4599) (o_27@@14 T@Ref) (f_24@@173 T@Field_7964_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_7964_53 Mask@@72 o_27@@14 f_24@@173) (= (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@33) o_27@@14 f_24@@173) (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@31) o_27@@14 f_24@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| ExhaleHeap@@31) o_27@@14 f_24@@173))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_4578) (ExhaleHeap@@32 T@PolymorphicMapType_4578) (Mask@@73 T@PolymorphicMapType_4599) (o_27@@15 T@Ref) (f_24@@174 T@Field_4638_7990) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_4638_7990 Mask@@73 o_27@@15 f_24@@174) (= (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@34) o_27@@15 f_24@@174) (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@32) o_27@@15 f_24@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| ExhaleHeap@@32) o_27@@15 f_24@@174))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_4578) (ExhaleHeap@@33 T@PolymorphicMapType_4578) (Mask@@74 T@PolymorphicMapType_4599) (o_27@@16 T@Ref) (f_24@@175 T@Field_4638_7980) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_4638_13455 Mask@@74 o_27@@16 f_24@@175) (= (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@35) o_27@@16 f_24@@175) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@33) o_27@@16 f_24@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| ExhaleHeap@@33) o_27@@16 f_24@@175))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_4578) (ExhaleHeap@@34 T@PolymorphicMapType_4578) (Mask@@75 T@PolymorphicMapType_4599) (o_27@@17 T@Ref) (f_24@@176 T@Field_4638_1255) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_4638_1255 Mask@@75 o_27@@17 f_24@@176) (= (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@36) o_27@@17 f_24@@176) (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@34) o_27@@17 f_24@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| ExhaleHeap@@34) o_27@@17 f_24@@176))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_4578) (ExhaleHeap@@35 T@PolymorphicMapType_4578) (Mask@@76 T@PolymorphicMapType_4599) (o_27@@18 T@Ref) (f_24@@177 T@Field_4651_4652) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_4638_4652 Mask@@76 o_27@@18 f_24@@177) (= (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@37) o_27@@18 f_24@@177) (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@35) o_27@@18 f_24@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| ExhaleHeap@@35) o_27@@18 f_24@@177))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_4578) (ExhaleHeap@@36 T@PolymorphicMapType_4578) (Mask@@77 T@PolymorphicMapType_4599) (o_27@@19 T@Ref) (f_24@@178 T@Field_4638_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_4638_53 Mask@@77 o_27@@19 f_24@@178) (= (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@38) o_27@@19 f_24@@178) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@36) o_27@@19 f_24@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| ExhaleHeap@@36) o_27@@19 f_24@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_4638_7980) ) (! (= (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_4651_4652) ) (! (= (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_4638_53) ) (! (= (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_4638_1255) ) (! (= (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_4638_7990) ) (! (= (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_7975_7980) ) (! (= (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_7964_4652) ) (! (= (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_7964_53) ) (! (= (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_7964_1255) ) (! (= (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_7989_7990) ) (! (= (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_8616_8621) ) (! (= (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_8604_4652) ) (! (= (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_8604_53) ) (! (= (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_8604_1255) ) (! (= (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_8604_8605) ) (! (= (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_8387_8392) ) (! (= (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_8375_4652) ) (! (= (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_8375_53) ) (! (= (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_8375_1255) ) (! (= (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_8375_8376) ) (! (= (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4599) (SummandMask1 T@PolymorphicMapType_4599) (SummandMask2 T@PolymorphicMapType_4599) (o_2@@79 T@Ref) (f_4@@79 T@Field_4638_7980) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4599_4638_34318#PolymorphicMapType_4599| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4599) (SummandMask1@@0 T@PolymorphicMapType_4599) (SummandMask2@@0 T@PolymorphicMapType_4599) (o_2@@80 T@Ref) (f_4@@80 T@Field_4651_4652) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4599_4638_4652#PolymorphicMapType_4599| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4599) (SummandMask1@@1 T@PolymorphicMapType_4599) (SummandMask2@@1 T@PolymorphicMapType_4599) (o_2@@81 T@Ref) (f_4@@81 T@Field_4638_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4599_4638_53#PolymorphicMapType_4599| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4599) (SummandMask1@@2 T@PolymorphicMapType_4599) (SummandMask2@@2 T@PolymorphicMapType_4599) (o_2@@82 T@Ref) (f_4@@82 T@Field_4638_1255) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4599_4638_1255#PolymorphicMapType_4599| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4599) (SummandMask1@@3 T@PolymorphicMapType_4599) (SummandMask2@@3 T@PolymorphicMapType_4599) (o_2@@83 T@Ref) (f_4@@83 T@Field_4638_7990) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4599_4638_2732#PolymorphicMapType_4599| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4599) (SummandMask1@@4 T@PolymorphicMapType_4599) (SummandMask2@@4 T@PolymorphicMapType_4599) (o_2@@84 T@Ref) (f_4@@84 T@Field_7975_7980) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4599_2723_33892#PolymorphicMapType_4599| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4599) (SummandMask1@@5 T@PolymorphicMapType_4599) (SummandMask2@@5 T@PolymorphicMapType_4599) (o_2@@85 T@Ref) (f_4@@85 T@Field_7964_4652) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4599_2723_4652#PolymorphicMapType_4599| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4599) (SummandMask1@@6 T@PolymorphicMapType_4599) (SummandMask2@@6 T@PolymorphicMapType_4599) (o_2@@86 T@Ref) (f_4@@86 T@Field_7964_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4599_2723_53#PolymorphicMapType_4599| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4599) (SummandMask1@@7 T@PolymorphicMapType_4599) (SummandMask2@@7 T@PolymorphicMapType_4599) (o_2@@87 T@Ref) (f_4@@87 T@Field_7964_1255) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4599_2723_1255#PolymorphicMapType_4599| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4599) (SummandMask1@@8 T@PolymorphicMapType_4599) (SummandMask2@@8 T@PolymorphicMapType_4599) (o_2@@88 T@Ref) (f_4@@88 T@Field_7989_7990) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4599_2723_2732#PolymorphicMapType_4599| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_4599) (SummandMask1@@9 T@PolymorphicMapType_4599) (SummandMask2@@9 T@PolymorphicMapType_4599) (o_2@@89 T@Ref) (f_4@@89 T@Field_8616_8621) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4599_2743_33478#PolymorphicMapType_4599| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_4599) (SummandMask1@@10 T@PolymorphicMapType_4599) (SummandMask2@@10 T@PolymorphicMapType_4599) (o_2@@90 T@Ref) (f_4@@90 T@Field_8604_4652) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4599_2743_4652#PolymorphicMapType_4599| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_4599) (SummandMask1@@11 T@PolymorphicMapType_4599) (SummandMask2@@11 T@PolymorphicMapType_4599) (o_2@@91 T@Ref) (f_4@@91 T@Field_8604_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_4599_2743_53#PolymorphicMapType_4599| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_4599) (SummandMask1@@12 T@PolymorphicMapType_4599) (SummandMask2@@12 T@PolymorphicMapType_4599) (o_2@@92 T@Ref) (f_4@@92 T@Field_8604_1255) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_4599_2743_1255#PolymorphicMapType_4599| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_4599) (SummandMask1@@13 T@PolymorphicMapType_4599) (SummandMask2@@13 T@PolymorphicMapType_4599) (o_2@@93 T@Ref) (f_4@@93 T@Field_8604_8605) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_4599_2743_2744#PolymorphicMapType_4599| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_4599) (SummandMask1@@14 T@PolymorphicMapType_4599) (SummandMask2@@14 T@PolymorphicMapType_4599) (o_2@@94 T@Ref) (f_4@@94 T@Field_8387_8392) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_4599_2731_33067#PolymorphicMapType_4599| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_4599) (SummandMask1@@15 T@PolymorphicMapType_4599) (SummandMask2@@15 T@PolymorphicMapType_4599) (o_2@@95 T@Ref) (f_4@@95 T@Field_8375_4652) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_4599_2731_4652#PolymorphicMapType_4599| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_4599) (SummandMask1@@16 T@PolymorphicMapType_4599) (SummandMask2@@16 T@PolymorphicMapType_4599) (o_2@@96 T@Ref) (f_4@@96 T@Field_8375_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_4599_2731_53#PolymorphicMapType_4599| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_4599) (SummandMask1@@17 T@PolymorphicMapType_4599) (SummandMask2@@17 T@PolymorphicMapType_4599) (o_2@@97 T@Ref) (f_4@@97 T@Field_8375_1255) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_4599_2731_1255#PolymorphicMapType_4599| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_4599) (SummandMask1@@18 T@PolymorphicMapType_4599) (SummandMask2@@18 T@PolymorphicMapType_4599) (o_2@@98 T@Ref) (f_4@@98 T@Field_8375_8376) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_4599_2731_2732#PolymorphicMapType_4599| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((n@@3 Int) ) (! (= (getPredWandId_2743_2744 (Q n@@3)) 1)
 :qid |stdinbpl.267:15|
 :skolemid |32|
 :pattern ( (Q n@@3))
)))
(assert (forall ((arg1@@4 Int) ) (! (= (getPredWandId_2723_1255 (wand arg1@@4)) 2)
 :qid |stdinbpl.225:15|
 :skolemid |27|
 :pattern ( (wand arg1@@4))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_4578) ) (! (|P#everUsed_2731| P)
 :qid |stdinbpl.247:15|
 :skolemid |29|
 :pattern ( (|P#trigger_2731| Heap@@39 P))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_4578) (o_20 T@Ref) (f_31 T@Field_8604_8605) (v T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@40) (store (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@40) o_20 f_31 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@40) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@40) (store (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@40) o_20 f_31 v)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_4578) (o_20@@0 T@Ref) (f_31@@0 T@Field_8616_8621) (v@@0 T@PolymorphicMapType_5127) ) (! (succHeap Heap@@41 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@41) (store (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@41) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@41) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@41) (store (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@41) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_4578) (o_20@@1 T@Ref) (f_31@@1 T@Field_8604_1255) (v@@1 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@42) (store (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@42) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@42) (store (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@42) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@42) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_4578) (o_20@@2 T@Ref) (f_31@@2 T@Field_8604_4652) (v@@2 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@43) (store (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@43) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@43) (store (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@43) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@43) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_4578) (o_20@@3 T@Ref) (f_31@@3 T@Field_8604_53) (v@@3 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@44) (store (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@44) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@44) (store (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@44) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@44) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_4578) (o_20@@4 T@Ref) (f_31@@4 T@Field_8375_8376) (v@@4 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@45) (store (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@45) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@45) (store (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@45) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@45) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_4578) (o_20@@5 T@Ref) (f_31@@5 T@Field_8387_8392) (v@@5 T@PolymorphicMapType_5127) ) (! (succHeap Heap@@46 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@46) (store (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@46) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@46) (store (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@46) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@46) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_4578) (o_20@@6 T@Ref) (f_31@@6 T@Field_8375_1255) (v@@6 Int) ) (! (succHeap Heap@@47 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@47) (store (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@47) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@47) (store (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@47) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@47) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_4578) (o_20@@7 T@Ref) (f_31@@7 T@Field_8375_4652) (v@@7 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@48) (store (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@48) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@48) (store (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@48) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@48) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_4578) (o_20@@8 T@Ref) (f_31@@8 T@Field_8375_53) (v@@8 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@49) (store (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@49) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@49) (store (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@49) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@49) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_4578) (o_20@@9 T@Ref) (f_31@@9 T@Field_7989_7990) (v@@9 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@50) (store (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@50) o_20@@9 f_31@@9 v@@9) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@50) (store (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@50) o_20@@9 f_31@@9 v@@9) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@50) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_4578) (o_20@@10 T@Ref) (f_31@@10 T@Field_7975_7980) (v@@10 T@PolymorphicMapType_5127) ) (! (succHeap Heap@@51 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@51) (store (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@51) o_20@@10 f_31@@10 v@@10) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@51) (store (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@51) o_20@@10 f_31@@10 v@@10) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@51) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_4578) (o_20@@11 T@Ref) (f_31@@11 T@Field_7964_1255) (v@@11 Int) ) (! (succHeap Heap@@52 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@52) (store (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@52) o_20@@11 f_31@@11 v@@11) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@52) (store (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@52) o_20@@11 f_31@@11 v@@11) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@52) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_4578) (o_20@@12 T@Ref) (f_31@@12 T@Field_7964_4652) (v@@12 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@53) (store (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@53) o_20@@12 f_31@@12 v@@12) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@53) (store (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@53) o_20@@12 f_31@@12 v@@12) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@53) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_4578) (o_20@@13 T@Ref) (f_31@@13 T@Field_7964_53) (v@@13 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@54) (store (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@54) o_20@@13 f_31@@13 v@@13) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@54) (store (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@54) o_20@@13 f_31@@13 v@@13) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@54) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_4578) (o_20@@14 T@Ref) (f_31@@14 T@Field_4638_7990) (v@@14 T@FrameType) ) (! (succHeap Heap@@55 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@55) (store (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@55) o_20@@14 f_31@@14 v@@14) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@55) (store (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@55) o_20@@14 f_31@@14 v@@14) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@55) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_4578) (o_20@@15 T@Ref) (f_31@@15 T@Field_4638_7980) (v@@15 T@PolymorphicMapType_5127) ) (! (succHeap Heap@@56 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@56) (store (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@56) o_20@@15 f_31@@15 v@@15) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@56) (store (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@56) o_20@@15 f_31@@15 v@@15) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@56) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_4578) (o_20@@16 T@Ref) (f_31@@16 T@Field_4638_1255) (v@@16 Int) ) (! (succHeap Heap@@57 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@57) (store (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@57) o_20@@16 f_31@@16 v@@16) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@57) (store (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@57) o_20@@16 f_31@@16 v@@16) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@57) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_4578) (o_20@@17 T@Ref) (f_31@@17 T@Field_4651_4652) (v@@17 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@58) (store (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@58) o_20@@17 f_31@@17 v@@17) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@58) (store (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@58) o_20@@17 f_31@@17 v@@17) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@58) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_4578) (o_20@@18 T@Ref) (f_31@@18 T@Field_4638_53) (v@@18 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_4578 (store (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@59) o_20@@18 f_31@@18 v@@18) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4578 (store (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@59) o_20@@18 f_31@@18 v@@18) (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_4638_1255#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_4638_13497#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_4638_7990#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_7964_53#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_7964_4652#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_7964_1255#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_7964_14675#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_7964_7990#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8375_53#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8375_4652#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8375_1255#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8375_15853#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8375_7990#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8604_53#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8604_4652#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8604_1255#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8604_17031#PolymorphicMapType_4578| Heap@@59) (|PolymorphicMapType_4578_8604_7990#PolymorphicMapType_4578| Heap@@59)))
)))
(assert (forall ((n@@4 Int) ) (! (= (PredicateMaskField_2743 (Q n@@4)) (|Q#sm| n@@4))
 :qid |stdinbpl.259:15|
 :skolemid |30|
 :pattern ( (PredicateMaskField_2743 (Q n@@4)))
)))
(assert (= (PredicateMaskField_2731 P) |P#sm|))
(assert (forall ((arg1@@5 Int) ) (! (= (|wand#sm| arg1@@5) (WandMaskField_2728 (|wand#ft| arg1@@5)))
 :qid |stdinbpl.221:15|
 :skolemid |26|
 :pattern ( (WandMaskField_2728 (|wand#ft| arg1@@5)))
)))
(assert (forall ((o_20@@19 T@Ref) (f_17 T@Field_4651_4652) (Heap@@60 T@PolymorphicMapType_4578) ) (!  (=> (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@60) o_20@@19 $allocated) (select (|PolymorphicMapType_4578_2595_53#PolymorphicMapType_4578| Heap@@60) (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@60) o_20@@19 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4578_2598_2599#PolymorphicMapType_4578| Heap@@60) o_20@@19 f_17))
)))
(assert (forall ((p@@4 T@Field_8604_8605) (v_1@@3 T@FrameType) (q T@Field_8604_8605) (w@@3 T@FrameType) (r T@Field_8604_8605) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8604_8604 p@@4 v_1@@3 q w@@3) (InsidePredicate_8604_8604 q w@@3 r u)) (InsidePredicate_8604_8604 p@@4 v_1@@3 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_8604 p@@4 v_1@@3 q w@@3) (InsidePredicate_8604_8604 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_8604_8605) (v_1@@4 T@FrameType) (q@@0 T@Field_8604_8605) (w@@4 T@FrameType) (r@@0 T@Field_8375_8376) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_8604 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_8604_8375 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_8604_8375 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_8604 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_8604_8375 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_8604_8605) (v_1@@5 T@FrameType) (q@@1 T@Field_8604_8605) (w@@5 T@FrameType) (r@@1 T@Field_7989_7990) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_8604 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_8604_7964 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_8604_7964 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_8604 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_8604_7964 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_8604_8605) (v_1@@6 T@FrameType) (q@@2 T@Field_8604_8605) (w@@6 T@FrameType) (r@@2 T@Field_4638_7990) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_8604 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_8604_4638 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_8604_4638 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_8604 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_8604_4638 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_8604_8605) (v_1@@7 T@FrameType) (q@@3 T@Field_8375_8376) (w@@7 T@FrameType) (r@@3 T@Field_8604_8605) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_8375 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_8375_8604 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_8604_8604 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_8375 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_8375_8604 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_8604_8605) (v_1@@8 T@FrameType) (q@@4 T@Field_8375_8376) (w@@8 T@FrameType) (r@@4 T@Field_8375_8376) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_8375 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_8375_8375 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_8604_8375 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_8375 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_8375_8375 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_8604_8605) (v_1@@9 T@FrameType) (q@@5 T@Field_8375_8376) (w@@9 T@FrameType) (r@@5 T@Field_7989_7990) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_8375 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_8375_7964 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_8604_7964 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_8375 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_8375_7964 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_8604_8605) (v_1@@10 T@FrameType) (q@@6 T@Field_8375_8376) (w@@10 T@FrameType) (r@@6 T@Field_4638_7990) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_8375 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_8375_4638 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_8604_4638 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_8375 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_8375_4638 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_8604_8605) (v_1@@11 T@FrameType) (q@@7 T@Field_7989_7990) (w@@11 T@FrameType) (r@@7 T@Field_8604_8605) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_7964 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_7964_8604 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_8604_8604 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_7964 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_7964_8604 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_8604_8605) (v_1@@12 T@FrameType) (q@@8 T@Field_7989_7990) (w@@12 T@FrameType) (r@@8 T@Field_8375_8376) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_7964 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_7964_8375 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_8604_8375 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_7964 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_7964_8375 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_8604_8605) (v_1@@13 T@FrameType) (q@@9 T@Field_7989_7990) (w@@13 T@FrameType) (r@@9 T@Field_7989_7990) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_7964 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_7964_7964 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_8604_7964 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_7964 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_7964_7964 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_8604_8605) (v_1@@14 T@FrameType) (q@@10 T@Field_7989_7990) (w@@14 T@FrameType) (r@@10 T@Field_4638_7990) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_7964 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_7964_4638 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_8604_4638 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_7964 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_7964_4638 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_8604_8605) (v_1@@15 T@FrameType) (q@@11 T@Field_4638_7990) (w@@15 T@FrameType) (r@@11 T@Field_8604_8605) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_4638 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_4638_8604 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_8604_8604 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_4638 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_4638_8604 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_8604_8605) (v_1@@16 T@FrameType) (q@@12 T@Field_4638_7990) (w@@16 T@FrameType) (r@@12 T@Field_8375_8376) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_4638 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_4638_8375 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_8604_8375 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_4638 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_4638_8375 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_8604_8605) (v_1@@17 T@FrameType) (q@@13 T@Field_4638_7990) (w@@17 T@FrameType) (r@@13 T@Field_7989_7990) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_4638 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_4638_7964 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_8604_7964 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_4638 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_4638_7964 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_8604_8605) (v_1@@18 T@FrameType) (q@@14 T@Field_4638_7990) (w@@18 T@FrameType) (r@@14 T@Field_4638_7990) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_8604_4638 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_4638_4638 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_8604_4638 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8604_4638 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_4638_4638 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_8375_8376) (v_1@@19 T@FrameType) (q@@15 T@Field_8604_8605) (w@@19 T@FrameType) (r@@15 T@Field_8604_8605) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_8604 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_8604_8604 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_8375_8604 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_8604 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_8604_8604 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_8375_8376) (v_1@@20 T@FrameType) (q@@16 T@Field_8604_8605) (w@@20 T@FrameType) (r@@16 T@Field_8375_8376) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_8604 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_8604_8375 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_8375_8375 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_8604 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_8604_8375 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_8375_8376) (v_1@@21 T@FrameType) (q@@17 T@Field_8604_8605) (w@@21 T@FrameType) (r@@17 T@Field_7989_7990) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_8604 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_8604_7964 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_8375_7964 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_8604 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_8604_7964 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_8375_8376) (v_1@@22 T@FrameType) (q@@18 T@Field_8604_8605) (w@@22 T@FrameType) (r@@18 T@Field_4638_7990) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_8604 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_8604_4638 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_8375_4638 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_8604 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_8604_4638 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_8375_8376) (v_1@@23 T@FrameType) (q@@19 T@Field_8375_8376) (w@@23 T@FrameType) (r@@19 T@Field_8604_8605) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_8375 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_8375_8604 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_8375_8604 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_8375 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_8375_8604 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_8375_8376) (v_1@@24 T@FrameType) (q@@20 T@Field_8375_8376) (w@@24 T@FrameType) (r@@20 T@Field_8375_8376) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_8375 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_8375_8375 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_8375_8375 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_8375 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_8375_8375 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_8375_8376) (v_1@@25 T@FrameType) (q@@21 T@Field_8375_8376) (w@@25 T@FrameType) (r@@21 T@Field_7989_7990) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_8375 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_8375_7964 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_8375_7964 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_8375 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_8375_7964 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_8375_8376) (v_1@@26 T@FrameType) (q@@22 T@Field_8375_8376) (w@@26 T@FrameType) (r@@22 T@Field_4638_7990) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_8375 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_8375_4638 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_8375_4638 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_8375 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_8375_4638 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_8375_8376) (v_1@@27 T@FrameType) (q@@23 T@Field_7989_7990) (w@@27 T@FrameType) (r@@23 T@Field_8604_8605) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_7964 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_7964_8604 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_8375_8604 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_7964 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_7964_8604 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_8375_8376) (v_1@@28 T@FrameType) (q@@24 T@Field_7989_7990) (w@@28 T@FrameType) (r@@24 T@Field_8375_8376) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_7964 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_7964_8375 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_8375_8375 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_7964 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_7964_8375 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_8375_8376) (v_1@@29 T@FrameType) (q@@25 T@Field_7989_7990) (w@@29 T@FrameType) (r@@25 T@Field_7989_7990) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_7964 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_7964_7964 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_8375_7964 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_7964 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_7964_7964 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_8375_8376) (v_1@@30 T@FrameType) (q@@26 T@Field_7989_7990) (w@@30 T@FrameType) (r@@26 T@Field_4638_7990) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_7964 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_7964_4638 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_8375_4638 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_7964 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_7964_4638 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_8375_8376) (v_1@@31 T@FrameType) (q@@27 T@Field_4638_7990) (w@@31 T@FrameType) (r@@27 T@Field_8604_8605) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_4638 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_4638_8604 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_8375_8604 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_4638 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_4638_8604 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_8375_8376) (v_1@@32 T@FrameType) (q@@28 T@Field_4638_7990) (w@@32 T@FrameType) (r@@28 T@Field_8375_8376) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_4638 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_4638_8375 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_8375_8375 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_4638 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_4638_8375 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_8375_8376) (v_1@@33 T@FrameType) (q@@29 T@Field_4638_7990) (w@@33 T@FrameType) (r@@29 T@Field_7989_7990) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_4638 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_4638_7964 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_8375_7964 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_4638 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_4638_7964 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_8375_8376) (v_1@@34 T@FrameType) (q@@30 T@Field_4638_7990) (w@@34 T@FrameType) (r@@30 T@Field_4638_7990) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_8375_4638 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_4638_4638 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_8375_4638 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8375_4638 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_4638_4638 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_7989_7990) (v_1@@35 T@FrameType) (q@@31 T@Field_8604_8605) (w@@35 T@FrameType) (r@@31 T@Field_8604_8605) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_8604 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_8604_8604 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_7964_8604 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_8604 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_8604_8604 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_7989_7990) (v_1@@36 T@FrameType) (q@@32 T@Field_8604_8605) (w@@36 T@FrameType) (r@@32 T@Field_8375_8376) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_8604 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_8604_8375 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_7964_8375 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_8604 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_8604_8375 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_7989_7990) (v_1@@37 T@FrameType) (q@@33 T@Field_8604_8605) (w@@37 T@FrameType) (r@@33 T@Field_7989_7990) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_8604 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_8604_7964 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_7964_7964 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_8604 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_8604_7964 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_7989_7990) (v_1@@38 T@FrameType) (q@@34 T@Field_8604_8605) (w@@38 T@FrameType) (r@@34 T@Field_4638_7990) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_8604 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_8604_4638 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_7964_4638 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_8604 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_8604_4638 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_7989_7990) (v_1@@39 T@FrameType) (q@@35 T@Field_8375_8376) (w@@39 T@FrameType) (r@@35 T@Field_8604_8605) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_8375 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_8375_8604 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_7964_8604 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_8375 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_8375_8604 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_7989_7990) (v_1@@40 T@FrameType) (q@@36 T@Field_8375_8376) (w@@40 T@FrameType) (r@@36 T@Field_8375_8376) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_8375 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_8375_8375 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_7964_8375 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_8375 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_8375_8375 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_7989_7990) (v_1@@41 T@FrameType) (q@@37 T@Field_8375_8376) (w@@41 T@FrameType) (r@@37 T@Field_7989_7990) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_8375 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_8375_7964 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_7964_7964 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_8375 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_8375_7964 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_7989_7990) (v_1@@42 T@FrameType) (q@@38 T@Field_8375_8376) (w@@42 T@FrameType) (r@@38 T@Field_4638_7990) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_8375 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_8375_4638 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_7964_4638 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_8375 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_8375_4638 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_7989_7990) (v_1@@43 T@FrameType) (q@@39 T@Field_7989_7990) (w@@43 T@FrameType) (r@@39 T@Field_8604_8605) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_7964 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_7964_8604 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_7964_8604 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_7964 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_7964_8604 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_7989_7990) (v_1@@44 T@FrameType) (q@@40 T@Field_7989_7990) (w@@44 T@FrameType) (r@@40 T@Field_8375_8376) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_7964 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_7964_8375 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_7964_8375 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_7964 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_7964_8375 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_7989_7990) (v_1@@45 T@FrameType) (q@@41 T@Field_7989_7990) (w@@45 T@FrameType) (r@@41 T@Field_7989_7990) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_7964 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_7964_7964 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_7964_7964 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_7964 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_7964_7964 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_7989_7990) (v_1@@46 T@FrameType) (q@@42 T@Field_7989_7990) (w@@46 T@FrameType) (r@@42 T@Field_4638_7990) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_7964 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_7964_4638 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_7964_4638 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_7964 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_7964_4638 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_7989_7990) (v_1@@47 T@FrameType) (q@@43 T@Field_4638_7990) (w@@47 T@FrameType) (r@@43 T@Field_8604_8605) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_4638 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_4638_8604 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_7964_8604 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_4638 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_4638_8604 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_7989_7990) (v_1@@48 T@FrameType) (q@@44 T@Field_4638_7990) (w@@48 T@FrameType) (r@@44 T@Field_8375_8376) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_4638 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_4638_8375 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_7964_8375 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_4638 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_4638_8375 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_7989_7990) (v_1@@49 T@FrameType) (q@@45 T@Field_4638_7990) (w@@49 T@FrameType) (r@@45 T@Field_7989_7990) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_4638 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_4638_7964 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_7964_7964 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_4638 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_4638_7964 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_7989_7990) (v_1@@50 T@FrameType) (q@@46 T@Field_4638_7990) (w@@50 T@FrameType) (r@@46 T@Field_4638_7990) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_7964_4638 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_4638_4638 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_7964_4638 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7964_4638 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_4638_4638 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_4638_7990) (v_1@@51 T@FrameType) (q@@47 T@Field_8604_8605) (w@@51 T@FrameType) (r@@47 T@Field_8604_8605) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_8604 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_8604_8604 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_4638_8604 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_8604 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_8604_8604 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_4638_7990) (v_1@@52 T@FrameType) (q@@48 T@Field_8604_8605) (w@@52 T@FrameType) (r@@48 T@Field_8375_8376) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_8604 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_8604_8375 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_4638_8375 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_8604 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_8604_8375 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_4638_7990) (v_1@@53 T@FrameType) (q@@49 T@Field_8604_8605) (w@@53 T@FrameType) (r@@49 T@Field_7989_7990) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_8604 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_8604_7964 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_4638_7964 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_8604 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_8604_7964 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_4638_7990) (v_1@@54 T@FrameType) (q@@50 T@Field_8604_8605) (w@@54 T@FrameType) (r@@50 T@Field_4638_7990) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_8604 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_8604_4638 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_4638_4638 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_8604 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_8604_4638 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_4638_7990) (v_1@@55 T@FrameType) (q@@51 T@Field_8375_8376) (w@@55 T@FrameType) (r@@51 T@Field_8604_8605) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_8375 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_8375_8604 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_4638_8604 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_8375 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_8375_8604 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_4638_7990) (v_1@@56 T@FrameType) (q@@52 T@Field_8375_8376) (w@@56 T@FrameType) (r@@52 T@Field_8375_8376) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_8375 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_8375_8375 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_4638_8375 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_8375 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_8375_8375 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_4638_7990) (v_1@@57 T@FrameType) (q@@53 T@Field_8375_8376) (w@@57 T@FrameType) (r@@53 T@Field_7989_7990) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_8375 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_8375_7964 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_4638_7964 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_8375 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_8375_7964 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_4638_7990) (v_1@@58 T@FrameType) (q@@54 T@Field_8375_8376) (w@@58 T@FrameType) (r@@54 T@Field_4638_7990) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_8375 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_8375_4638 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_4638_4638 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_8375 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_8375_4638 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_4638_7990) (v_1@@59 T@FrameType) (q@@55 T@Field_7989_7990) (w@@59 T@FrameType) (r@@55 T@Field_8604_8605) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_7964 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_7964_8604 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_4638_8604 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_7964 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_7964_8604 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_4638_7990) (v_1@@60 T@FrameType) (q@@56 T@Field_7989_7990) (w@@60 T@FrameType) (r@@56 T@Field_8375_8376) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_7964 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_7964_8375 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_4638_8375 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_7964 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_7964_8375 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_4638_7990) (v_1@@61 T@FrameType) (q@@57 T@Field_7989_7990) (w@@61 T@FrameType) (r@@57 T@Field_7989_7990) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_7964 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_7964_7964 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_4638_7964 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_7964 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_7964_7964 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_4638_7990) (v_1@@62 T@FrameType) (q@@58 T@Field_7989_7990) (w@@62 T@FrameType) (r@@58 T@Field_4638_7990) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_7964 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_7964_4638 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_4638_4638 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_7964 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_7964_4638 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_4638_7990) (v_1@@63 T@FrameType) (q@@59 T@Field_4638_7990) (w@@63 T@FrameType) (r@@59 T@Field_8604_8605) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_4638 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_4638_8604 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_4638_8604 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_4638 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_4638_8604 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_4638_7990) (v_1@@64 T@FrameType) (q@@60 T@Field_4638_7990) (w@@64 T@FrameType) (r@@60 T@Field_8375_8376) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_4638 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_4638_8375 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_4638_8375 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_4638 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_4638_8375 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_4638_7990) (v_1@@65 T@FrameType) (q@@61 T@Field_4638_7990) (w@@65 T@FrameType) (r@@61 T@Field_7989_7990) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_4638 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_4638_7964 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_4638_7964 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_4638 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_4638_7964 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_4638_7990) (v_1@@66 T@FrameType) (q@@62 T@Field_4638_7990) (w@@66 T@FrameType) (r@@62 T@Field_4638_7990) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_4638_4638 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_4638_4638 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_4638_4638 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4638_4638 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_4638_4638 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_4 () Int)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun Heap@@61 () T@PolymorphicMapType_4578)
(set-info :boogie-vc-id test03)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon8_Then_correct true))
(let ((anon4_correct true))
(let ((anon7_Then_correct  (=> (= i_4 0) (and (=> (= (ControlFlow 0 6) 5) anon8_Then_correct) (=> (= (ControlFlow 0 6) 3) anon4_correct)))))
(let ((anon7_Else_correct  (=> (and (not (= i_4 0)) (= (ControlFlow 0 4) 3)) anon4_correct)))
(let ((anon6_Else_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (= i_1 0)) (= i_1_1 0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) false)
 :qid |stdinbpl.478:17|
 :skolemid |45|
 :pattern ( (neverTriggered3 i_1) (neverTriggered3 i_1_1))
)))))
(let ((anon0_correct  (=> (and (state Heap@@61 ZeroMask) AssumePermUpperBound) (and (and (=> (= (ControlFlow 0 7) 2) anon6_Else_correct) (=> (= (ControlFlow 0 7) 6) anon7_Then_correct)) (=> (= (ControlFlow 0 7) 4) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid