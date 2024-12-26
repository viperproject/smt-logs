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
(declare-sort T@Field_8258_53 0)
(declare-sort T@Field_8271_8272 0)
(declare-sort T@Field_12310_12311 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_11601_11606 0)
(declare-sort T@Field_12323_12328 0)
(declare-sort T@Field_13546_13547 0)
(declare-sort T@Field_13559_13564 0)
(declare-sort T@Field_4667_4697 0)
(declare-sort T@Field_4667_1203 0)
(declare-sort T@Field_4667_11606 0)
(declare-sort T@Field_4696_4668 0)
(declare-sort T@Field_4696_53 0)
(declare-sort T@Field_4696_1203 0)
(declare-sort T@Field_11587_4668 0)
(declare-sort T@Field_11618_11619 0)
(declare-sort T@Field_11587_53 0)
(declare-sort T@Field_11587_1203 0)
(declare-sort T@Field_12310_4668 0)
(declare-sort T@Field_12310_53 0)
(declare-sort T@Field_12310_1203 0)
(declare-datatypes ((T@PolymorphicMapType_8219 0)) (((PolymorphicMapType_8219 (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| (Array T@Ref T@Field_8271_8272 Real)) (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| (Array T@Ref T@Field_12310_12311 Real)) (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| (Array T@Ref T@Field_13546_13547 Real)) (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| (Array T@Ref T@Field_11587_1203 Real)) (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| (Array T@Ref T@Field_4667_4697 Real)) (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| (Array T@Ref T@Field_4667_1203 Real)) (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| (Array T@Ref T@Field_8258_53 Real)) (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| (Array T@Ref T@Field_4667_11606 Real)) (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| (Array T@Ref T@Field_12310_4668 Real)) (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| (Array T@Ref T@Field_12310_1203 Real)) (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| (Array T@Ref T@Field_12310_53 Real)) (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| (Array T@Ref T@Field_12323_12328 Real)) (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| (Array T@Ref T@Field_4696_4668 Real)) (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| (Array T@Ref T@Field_4696_1203 Real)) (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| (Array T@Ref T@Field_4696_53 Real)) (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| (Array T@Ref T@Field_13559_13564 Real)) (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| (Array T@Ref T@Field_11587_4668 Real)) (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| (Array T@Ref T@Field_11618_11619 Real)) (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| (Array T@Ref T@Field_11587_53 Real)) (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| (Array T@Ref T@Field_11601_11606 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8747 0)) (((PolymorphicMapType_8747 (|PolymorphicMapType_8747_4667_4668#PolymorphicMapType_8747| (Array T@Ref T@Field_8271_8272 Bool)) (|PolymorphicMapType_8747_4667_53#PolymorphicMapType_8747| (Array T@Ref T@Field_8258_53 Bool)) (|PolymorphicMapType_8747_4667_1203#PolymorphicMapType_8747| (Array T@Ref T@Field_4667_1203 Bool)) (|PolymorphicMapType_8747_4667_32120#PolymorphicMapType_8747| (Array T@Ref T@Field_4667_11606 Bool)) (|PolymorphicMapType_8747_4667_11619#PolymorphicMapType_8747| (Array T@Ref T@Field_4667_4697 Bool)) (|PolymorphicMapType_8747_11587_4668#PolymorphicMapType_8747| (Array T@Ref T@Field_11587_4668 Bool)) (|PolymorphicMapType_8747_11587_53#PolymorphicMapType_8747| (Array T@Ref T@Field_11587_53 Bool)) (|PolymorphicMapType_8747_11587_1203#PolymorphicMapType_8747| (Array T@Ref T@Field_11587_1203 Bool)) (|PolymorphicMapType_8747_11587_33168#PolymorphicMapType_8747| (Array T@Ref T@Field_11601_11606 Bool)) (|PolymorphicMapType_8747_11587_11619#PolymorphicMapType_8747| (Array T@Ref T@Field_11618_11619 Bool)) (|PolymorphicMapType_8747_12310_4668#PolymorphicMapType_8747| (Array T@Ref T@Field_12310_4668 Bool)) (|PolymorphicMapType_8747_12310_53#PolymorphicMapType_8747| (Array T@Ref T@Field_12310_53 Bool)) (|PolymorphicMapType_8747_12310_1203#PolymorphicMapType_8747| (Array T@Ref T@Field_12310_1203 Bool)) (|PolymorphicMapType_8747_12310_34216#PolymorphicMapType_8747| (Array T@Ref T@Field_12323_12328 Bool)) (|PolymorphicMapType_8747_12310_11619#PolymorphicMapType_8747| (Array T@Ref T@Field_12310_12311 Bool)) (|PolymorphicMapType_8747_13546_4668#PolymorphicMapType_8747| (Array T@Ref T@Field_4696_4668 Bool)) (|PolymorphicMapType_8747_13546_53#PolymorphicMapType_8747| (Array T@Ref T@Field_4696_53 Bool)) (|PolymorphicMapType_8747_13546_1203#PolymorphicMapType_8747| (Array T@Ref T@Field_4696_1203 Bool)) (|PolymorphicMapType_8747_13546_35264#PolymorphicMapType_8747| (Array T@Ref T@Field_13559_13564 Bool)) (|PolymorphicMapType_8747_13546_11619#PolymorphicMapType_8747| (Array T@Ref T@Field_13546_13547 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8198 0)) (((PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| (Array T@Ref T@Field_8258_53 Bool)) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| (Array T@Ref T@Field_8271_8272 T@Ref)) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| (Array T@Ref T@Field_12310_12311 T@FrameType)) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| (Array T@Ref T@Field_11601_11606 T@PolymorphicMapType_8747)) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| (Array T@Ref T@Field_12323_12328 T@PolymorphicMapType_8747)) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| (Array T@Ref T@Field_13546_13547 T@FrameType)) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| (Array T@Ref T@Field_13559_13564 T@PolymorphicMapType_8747)) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| (Array T@Ref T@Field_4667_4697 T@FrameType)) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| (Array T@Ref T@Field_4667_1203 Int)) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| (Array T@Ref T@Field_4667_11606 T@PolymorphicMapType_8747)) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| (Array T@Ref T@Field_4696_4668 T@Ref)) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| (Array T@Ref T@Field_4696_53 Bool)) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| (Array T@Ref T@Field_4696_1203 Int)) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| (Array T@Ref T@Field_11587_4668 T@Ref)) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| (Array T@Ref T@Field_11618_11619 T@FrameType)) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| (Array T@Ref T@Field_11587_53 Bool)) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| (Array T@Ref T@Field_11587_1203 Int)) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| (Array T@Ref T@Field_12310_4668 T@Ref)) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| (Array T@Ref T@Field_12310_53 Bool)) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| (Array T@Ref T@Field_12310_1203 Int)) ) ) ))
(declare-fun $allocated () T@Field_8258_53)
(declare-fun f_7 () T@Field_8271_8272)
(declare-fun succHeap (T@PolymorphicMapType_8198 T@PolymorphicMapType_8198) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8198 T@PolymorphicMapType_8198) Bool)
(declare-fun wand (T@Ref T@Ref Real T@Ref) T@Field_11587_1203)
(declare-fun getPredWandId_4619_1203 (T@Field_11587_1203) Int)
(declare-fun state (T@PolymorphicMapType_8198 T@PolymorphicMapType_8219) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8219) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8747)
(declare-fun P (T@Ref) T@Field_12310_12311)
(declare-fun IsPredicateField_4671_4672 (T@Field_12310_12311) Bool)
(declare-fun Q (T@Ref) T@Field_13546_13547)
(declare-fun IsPredicateField_4696_4697 (T@Field_13546_13547) Bool)
(declare-fun |P#trigger_4671| (T@PolymorphicMapType_8198 T@Field_12310_12311) Bool)
(declare-fun |P#everUsed_4671| (T@Field_12310_12311) Bool)
(declare-fun |Q#trigger_4696| (T@PolymorphicMapType_8198 T@Field_13546_13547) Bool)
(declare-fun |Q#everUsed_4696| (T@Field_13546_13547) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8198 T@PolymorphicMapType_8198 T@PolymorphicMapType_8219) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4671 (T@Field_12310_12311) T@Field_12323_12328)
(declare-fun HasDirectPerm_12310_4697 (T@PolymorphicMapType_8219 T@Ref T@Field_12310_12311) Bool)
(declare-fun IsPredicateField_4632_4633 (T@Field_11618_11619) Bool)
(declare-fun PredicateMaskField_11587 (T@Field_11618_11619) T@Field_11601_11606)
(declare-fun HasDirectPerm_11587_4697 (T@PolymorphicMapType_8219 T@Ref T@Field_11618_11619) Bool)
(declare-fun PredicateMaskField_4696 (T@Field_13546_13547) T@Field_13559_13564)
(declare-fun HasDirectPerm_4696_4697 (T@PolymorphicMapType_8219 T@Ref T@Field_13546_13547) Bool)
(declare-fun IsPredicateField_4667_30180 (T@Field_4667_4697) Bool)
(declare-fun PredicateMaskField_4667 (T@Field_4667_4697) T@Field_4667_11606)
(declare-fun HasDirectPerm_4667_4697 (T@PolymorphicMapType_8219 T@Ref T@Field_4667_4697) Bool)
(declare-fun IsWandField_12310_37877 (T@Field_12310_12311) Bool)
(declare-fun WandMaskField_12310 (T@Field_12310_12311) T@Field_12323_12328)
(declare-fun IsWandField_4632_4633 (T@Field_11618_11619) Bool)
(declare-fun WandMaskField_4632 (T@Field_11618_11619) T@Field_11601_11606)
(declare-fun IsWandField_4696_37195 (T@Field_13546_13547) Bool)
(declare-fun WandMaskField_4696 (T@Field_13546_13547) T@Field_13559_13564)
(declare-fun IsWandField_4667_36838 (T@Field_4667_4697) Bool)
(declare-fun WandMaskField_4667 (T@Field_4667_4697) T@Field_4667_11606)
(declare-fun |P#sm| (T@Ref) T@Field_12323_12328)
(declare-fun |Q#sm| (T@Ref) T@Field_13559_13564)
(declare-fun dummyHeap () T@PolymorphicMapType_8198)
(declare-fun ZeroMask () T@PolymorphicMapType_8219)
(declare-fun InsidePredicate_13546_13546 (T@Field_13546_13547 T@FrameType T@Field_13546_13547 T@FrameType) Bool)
(declare-fun InsidePredicate_12310_12310 (T@Field_12310_12311 T@FrameType T@Field_12310_12311 T@FrameType) Bool)
(declare-fun InsidePredicate_11587_11587 (T@Field_11618_11619 T@FrameType T@Field_11618_11619 T@FrameType) Bool)
(declare-fun InsidePredicate_8258_8258 (T@Field_4667_4697 T@FrameType T@Field_4667_4697 T@FrameType) Bool)
(declare-fun IsPredicateField_4667_4668 (T@Field_8271_8272) Bool)
(declare-fun IsWandField_4667_4668 (T@Field_8271_8272) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4619_51567 (T@Field_11601_11606) Bool)
(declare-fun IsWandField_4619_51583 (T@Field_11601_11606) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4619_53 (T@Field_11587_53) Bool)
(declare-fun IsWandField_4619_53 (T@Field_11587_53) Bool)
(declare-fun IsPredicateField_4619_1203 (T@Field_11587_1203) Bool)
(declare-fun IsWandField_4619_1203 (T@Field_11587_1203) Bool)
(declare-fun IsPredicateField_4619_4668 (T@Field_11587_4668) Bool)
(declare-fun IsWandField_4619_4668 (T@Field_11587_4668) Bool)
(declare-fun IsPredicateField_4696_50750 (T@Field_13559_13564) Bool)
(declare-fun IsWandField_4696_50766 (T@Field_13559_13564) Bool)
(declare-fun IsPredicateField_4696_53 (T@Field_4696_53) Bool)
(declare-fun IsWandField_4696_53 (T@Field_4696_53) Bool)
(declare-fun IsPredicateField_4696_1203 (T@Field_4696_1203) Bool)
(declare-fun IsWandField_4696_1203 (T@Field_4696_1203) Bool)
(declare-fun IsPredicateField_4696_4668 (T@Field_4696_4668) Bool)
(declare-fun IsWandField_4696_4668 (T@Field_4696_4668) Bool)
(declare-fun IsPredicateField_4671_49919 (T@Field_12323_12328) Bool)
(declare-fun IsWandField_4671_49935 (T@Field_12323_12328) Bool)
(declare-fun IsPredicateField_4671_53 (T@Field_12310_53) Bool)
(declare-fun IsWandField_4671_53 (T@Field_12310_53) Bool)
(declare-fun IsPredicateField_4671_1203 (T@Field_12310_1203) Bool)
(declare-fun IsWandField_4671_1203 (T@Field_12310_1203) Bool)
(declare-fun IsPredicateField_4671_4668 (T@Field_12310_4668) Bool)
(declare-fun IsWandField_4671_4668 (T@Field_12310_4668) Bool)
(declare-fun IsPredicateField_4667_49088 (T@Field_4667_11606) Bool)
(declare-fun IsWandField_4667_49104 (T@Field_4667_11606) Bool)
(declare-fun IsPredicateField_4667_53 (T@Field_8258_53) Bool)
(declare-fun IsWandField_4667_53 (T@Field_8258_53) Bool)
(declare-fun IsPredicateField_4667_1203 (T@Field_4667_1203) Bool)
(declare-fun IsWandField_4667_1203 (T@Field_4667_1203) Bool)
(declare-fun HasDirectPerm_12310_29935 (T@PolymorphicMapType_8219 T@Ref T@Field_12323_12328) Bool)
(declare-fun HasDirectPerm_12310_1203 (T@PolymorphicMapType_8219 T@Ref T@Field_12310_1203) Bool)
(declare-fun HasDirectPerm_12310_53 (T@PolymorphicMapType_8219 T@Ref T@Field_12310_53) Bool)
(declare-fun HasDirectPerm_12310_4668 (T@PolymorphicMapType_8219 T@Ref T@Field_12310_4668) Bool)
(declare-fun HasDirectPerm_11587_28817 (T@PolymorphicMapType_8219 T@Ref T@Field_11601_11606) Bool)
(declare-fun HasDirectPerm_11587_1203 (T@PolymorphicMapType_8219 T@Ref T@Field_11587_1203) Bool)
(declare-fun HasDirectPerm_11587_53 (T@PolymorphicMapType_8219 T@Ref T@Field_11587_53) Bool)
(declare-fun HasDirectPerm_11587_4668 (T@PolymorphicMapType_8219 T@Ref T@Field_11587_4668) Bool)
(declare-fun HasDirectPerm_4696_27683 (T@PolymorphicMapType_8219 T@Ref T@Field_13559_13564) Bool)
(declare-fun HasDirectPerm_4696_1203 (T@PolymorphicMapType_8219 T@Ref T@Field_4696_1203) Bool)
(declare-fun HasDirectPerm_4696_53 (T@PolymorphicMapType_8219 T@Ref T@Field_4696_53) Bool)
(declare-fun HasDirectPerm_4696_4668 (T@PolymorphicMapType_8219 T@Ref T@Field_4696_4668) Bool)
(declare-fun HasDirectPerm_4667_26542 (T@PolymorphicMapType_8219 T@Ref T@Field_4667_11606) Bool)
(declare-fun HasDirectPerm_4667_1203 (T@PolymorphicMapType_8219 T@Ref T@Field_4667_1203) Bool)
(declare-fun HasDirectPerm_4667_53 (T@PolymorphicMapType_8219 T@Ref T@Field_8258_53) Bool)
(declare-fun HasDirectPerm_4667_4668 (T@PolymorphicMapType_8219 T@Ref T@Field_8271_8272) Bool)
(declare-fun |wand#ft| (T@Ref T@Ref Real T@Ref) T@Field_11618_11619)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (T@Ref T@Ref Real T@Ref) T@Field_11601_11606)
(declare-fun sumMask (T@PolymorphicMapType_8219 T@PolymorphicMapType_8219 T@PolymorphicMapType_8219) Bool)
(declare-fun getPredWandId_4671_4672 (T@Field_12310_12311) Int)
(declare-fun getPredWandId_4696_4697 (T@Field_13546_13547) Int)
(declare-fun InsidePredicate_13546_12310 (T@Field_13546_13547 T@FrameType T@Field_12310_12311 T@FrameType) Bool)
(declare-fun InsidePredicate_13546_11587 (T@Field_13546_13547 T@FrameType T@Field_11618_11619 T@FrameType) Bool)
(declare-fun InsidePredicate_13546_8258 (T@Field_13546_13547 T@FrameType T@Field_4667_4697 T@FrameType) Bool)
(declare-fun InsidePredicate_12310_13546 (T@Field_12310_12311 T@FrameType T@Field_13546_13547 T@FrameType) Bool)
(declare-fun InsidePredicate_12310_11587 (T@Field_12310_12311 T@FrameType T@Field_11618_11619 T@FrameType) Bool)
(declare-fun InsidePredicate_12310_8258 (T@Field_12310_12311 T@FrameType T@Field_4667_4697 T@FrameType) Bool)
(declare-fun InsidePredicate_11587_13546 (T@Field_11618_11619 T@FrameType T@Field_13546_13547 T@FrameType) Bool)
(declare-fun InsidePredicate_11587_12310 (T@Field_11618_11619 T@FrameType T@Field_12310_12311 T@FrameType) Bool)
(declare-fun InsidePredicate_11587_8258 (T@Field_11618_11619 T@FrameType T@Field_4667_4697 T@FrameType) Bool)
(declare-fun InsidePredicate_8258_13546 (T@Field_4667_4697 T@FrameType T@Field_13546_13547 T@FrameType) Bool)
(declare-fun InsidePredicate_8258_12310 (T@Field_4667_4697 T@FrameType T@Field_12310_12311 T@FrameType) Bool)
(declare-fun InsidePredicate_8258_11587 (T@Field_4667_4697 T@FrameType T@Field_11618_11619 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8198) (Heap1 T@PolymorphicMapType_8198) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) (arg3 Real) (arg4 T@Ref) ) (! (= (getPredWandId_4619_1203 (wand arg1 arg2 arg3 arg4)) 2)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((Heap T@PolymorphicMapType_8198) (Mask T@PolymorphicMapType_8219) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8198) (Heap1@@0 T@PolymorphicMapType_8198) (Heap2 T@PolymorphicMapType_8198) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13546_13547) ) (!  (not (select (|PolymorphicMapType_8747_13546_11619#PolymorphicMapType_8747| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_13546_11619#PolymorphicMapType_8747| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13559_13564) ) (!  (not (select (|PolymorphicMapType_8747_13546_35264#PolymorphicMapType_8747| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_13546_35264#PolymorphicMapType_8747| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4696_1203) ) (!  (not (select (|PolymorphicMapType_8747_13546_1203#PolymorphicMapType_8747| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_13546_1203#PolymorphicMapType_8747| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4696_53) ) (!  (not (select (|PolymorphicMapType_8747_13546_53#PolymorphicMapType_8747| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_13546_53#PolymorphicMapType_8747| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4696_4668) ) (!  (not (select (|PolymorphicMapType_8747_13546_4668#PolymorphicMapType_8747| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_13546_4668#PolymorphicMapType_8747| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12310_12311) ) (!  (not (select (|PolymorphicMapType_8747_12310_11619#PolymorphicMapType_8747| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_12310_11619#PolymorphicMapType_8747| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12323_12328) ) (!  (not (select (|PolymorphicMapType_8747_12310_34216#PolymorphicMapType_8747| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_12310_34216#PolymorphicMapType_8747| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_12310_1203) ) (!  (not (select (|PolymorphicMapType_8747_12310_1203#PolymorphicMapType_8747| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_12310_1203#PolymorphicMapType_8747| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_12310_53) ) (!  (not (select (|PolymorphicMapType_8747_12310_53#PolymorphicMapType_8747| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_12310_53#PolymorphicMapType_8747| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12310_4668) ) (!  (not (select (|PolymorphicMapType_8747_12310_4668#PolymorphicMapType_8747| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_12310_4668#PolymorphicMapType_8747| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_11618_11619) ) (!  (not (select (|PolymorphicMapType_8747_11587_11619#PolymorphicMapType_8747| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_11587_11619#PolymorphicMapType_8747| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_11601_11606) ) (!  (not (select (|PolymorphicMapType_8747_11587_33168#PolymorphicMapType_8747| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_11587_33168#PolymorphicMapType_8747| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11587_1203) ) (!  (not (select (|PolymorphicMapType_8747_11587_1203#PolymorphicMapType_8747| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_11587_1203#PolymorphicMapType_8747| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11587_53) ) (!  (not (select (|PolymorphicMapType_8747_11587_53#PolymorphicMapType_8747| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_11587_53#PolymorphicMapType_8747| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11587_4668) ) (!  (not (select (|PolymorphicMapType_8747_11587_4668#PolymorphicMapType_8747| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_11587_4668#PolymorphicMapType_8747| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4667_4697) ) (!  (not (select (|PolymorphicMapType_8747_4667_11619#PolymorphicMapType_8747| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_4667_11619#PolymorphicMapType_8747| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4667_11606) ) (!  (not (select (|PolymorphicMapType_8747_4667_32120#PolymorphicMapType_8747| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_4667_32120#PolymorphicMapType_8747| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_4667_1203) ) (!  (not (select (|PolymorphicMapType_8747_4667_1203#PolymorphicMapType_8747| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_4667_1203#PolymorphicMapType_8747| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_8258_53) ) (!  (not (select (|PolymorphicMapType_8747_4667_53#PolymorphicMapType_8747| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_4667_53#PolymorphicMapType_8747| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8271_8272) ) (!  (not (select (|PolymorphicMapType_8747_4667_4668#PolymorphicMapType_8747| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8747_4667_4668#PolymorphicMapType_8747| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_4671_4672 (P x))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (P x))
)))
(assert (forall ((y T@Ref) ) (! (IsPredicateField_4696_4697 (Q y))
 :qid |stdinbpl.294:15|
 :skolemid |36|
 :pattern ( (Q y))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8198) (x@@0 T@Ref) ) (! (|P#everUsed_4671| (P x@@0))
 :qid |stdinbpl.251:15|
 :skolemid |34|
 :pattern ( (|P#trigger_4671| Heap@@0 (P x@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8198) (y@@0 T@Ref) ) (! (|Q#everUsed_4696| (Q y@@0))
 :qid |stdinbpl.313:15|
 :skolemid |40|
 :pattern ( (|Q#trigger_4696| Heap@@1 (Q y@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8198) (ExhaleHeap T@PolymorphicMapType_8198) (Mask@@0 T@PolymorphicMapType_8219) (pm_f_13 T@Field_12310_12311) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12310_4697 Mask@@0 null pm_f_13) (IsPredicateField_4671_4672 pm_f_13)) (= (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@2) null (PredicateMaskField_4671 pm_f_13)) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap) null (PredicateMaskField_4671 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_4671_4672 pm_f_13) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap) null (PredicateMaskField_4671 pm_f_13)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8198) (ExhaleHeap@@0 T@PolymorphicMapType_8198) (Mask@@1 T@PolymorphicMapType_8219) (pm_f_13@@0 T@Field_11618_11619) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11587_4697 Mask@@1 null pm_f_13@@0) (IsPredicateField_4632_4633 pm_f_13@@0)) (= (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@3) null (PredicateMaskField_11587 pm_f_13@@0)) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@0) null (PredicateMaskField_11587 pm_f_13@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4632_4633 pm_f_13@@0) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@0) null (PredicateMaskField_11587 pm_f_13@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8198) (ExhaleHeap@@1 T@PolymorphicMapType_8198) (Mask@@2 T@PolymorphicMapType_8219) (pm_f_13@@1 T@Field_13546_13547) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4696_4697 Mask@@2 null pm_f_13@@1) (IsPredicateField_4696_4697 pm_f_13@@1)) (= (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@4) null (PredicateMaskField_4696 pm_f_13@@1)) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@1) null (PredicateMaskField_4696 pm_f_13@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4696_4697 pm_f_13@@1) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@1) null (PredicateMaskField_4696 pm_f_13@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8198) (ExhaleHeap@@2 T@PolymorphicMapType_8198) (Mask@@3 T@PolymorphicMapType_8219) (pm_f_13@@2 T@Field_4667_4697) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4667_4697 Mask@@3 null pm_f_13@@2) (IsPredicateField_4667_30180 pm_f_13@@2)) (= (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@5) null (PredicateMaskField_4667 pm_f_13@@2)) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@2) null (PredicateMaskField_4667 pm_f_13@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_4667_30180 pm_f_13@@2) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@2) null (PredicateMaskField_4667 pm_f_13@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8198) (ExhaleHeap@@3 T@PolymorphicMapType_8198) (Mask@@4 T@PolymorphicMapType_8219) (pm_f_13@@3 T@Field_12310_12311) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12310_4697 Mask@@4 null pm_f_13@@3) (IsWandField_12310_37877 pm_f_13@@3)) (= (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@6) null (WandMaskField_12310 pm_f_13@@3)) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@3) null (WandMaskField_12310 pm_f_13@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_12310_37877 pm_f_13@@3) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@3) null (WandMaskField_12310 pm_f_13@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8198) (ExhaleHeap@@4 T@PolymorphicMapType_8198) (Mask@@5 T@PolymorphicMapType_8219) (pm_f_13@@4 T@Field_11618_11619) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_11587_4697 Mask@@5 null pm_f_13@@4) (IsWandField_4632_4633 pm_f_13@@4)) (= (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@7) null (WandMaskField_4632 pm_f_13@@4)) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@4) null (WandMaskField_4632 pm_f_13@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_4632_4633 pm_f_13@@4) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@4) null (WandMaskField_4632 pm_f_13@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8198) (ExhaleHeap@@5 T@PolymorphicMapType_8198) (Mask@@6 T@PolymorphicMapType_8219) (pm_f_13@@5 T@Field_13546_13547) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_4696_4697 Mask@@6 null pm_f_13@@5) (IsWandField_4696_37195 pm_f_13@@5)) (= (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@8) null (WandMaskField_4696 pm_f_13@@5)) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@5) null (WandMaskField_4696 pm_f_13@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_4696_37195 pm_f_13@@5) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@5) null (WandMaskField_4696 pm_f_13@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8198) (ExhaleHeap@@6 T@PolymorphicMapType_8198) (Mask@@7 T@PolymorphicMapType_8219) (pm_f_13@@6 T@Field_4667_4697) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4667_4697 Mask@@7 null pm_f_13@@6) (IsWandField_4667_36838 pm_f_13@@6)) (= (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@9) null (WandMaskField_4667 pm_f_13@@6)) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@6) null (WandMaskField_4667 pm_f_13@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_4667_36838 pm_f_13@@6) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@6) null (WandMaskField_4667 pm_f_13@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8198) (ExhaleHeap@@7 T@PolymorphicMapType_8198) (Mask@@8 T@PolymorphicMapType_8219) (pm_f_13@@7 T@Field_12310_12311) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_12310_4697 Mask@@8 null pm_f_13@@7) (IsPredicateField_4671_4672 pm_f_13@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_8271_8272) ) (!  (=> (select (|PolymorphicMapType_8747_4667_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13 f_30) (= (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@10) o2_13 f_30) (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_8258_53) ) (!  (=> (select (|PolymorphicMapType_8747_4667_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@10) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_4667_1203) ) (!  (=> (select (|PolymorphicMapType_8747_4667_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@10) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_4667_11606) ) (!  (=> (select (|PolymorphicMapType_8747_4667_32120#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@10) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_4667_4697) ) (!  (=> (select (|PolymorphicMapType_8747_4667_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@10) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_11587_4668) ) (!  (=> (select (|PolymorphicMapType_8747_11587_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@10) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_11587_53) ) (!  (=> (select (|PolymorphicMapType_8747_11587_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@10) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_11587_1203) ) (!  (=> (select (|PolymorphicMapType_8747_11587_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@10) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_11601_11606) ) (!  (=> (select (|PolymorphicMapType_8747_11587_33168#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@10) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_11618_11619) ) (!  (=> (select (|PolymorphicMapType_8747_11587_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@10) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@8 f_30@@8))
))) (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_12310_4668) ) (!  (=> (select (|PolymorphicMapType_8747_12310_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@10) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@9 f_30@@9))
))) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_12310_53) ) (!  (=> (select (|PolymorphicMapType_8747_12310_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@10) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@10 f_30@@10))
))) (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_12310_1203) ) (!  (=> (select (|PolymorphicMapType_8747_12310_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@10) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@11 f_30@@11))
))) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_12323_12328) ) (!  (=> (select (|PolymorphicMapType_8747_12310_34216#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_12310_12311) ) (!  (=> (select (|PolymorphicMapType_8747_12310_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@10) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_4696_4668) ) (!  (=> (select (|PolymorphicMapType_8747_13546_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@10) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@14 f_30@@14))
))) (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_4696_53) ) (!  (=> (select (|PolymorphicMapType_8747_13546_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@10) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@15 f_30@@15))
))) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_4696_1203) ) (!  (=> (select (|PolymorphicMapType_8747_13546_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@10) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@16 f_30@@16))
))) (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_13559_13564) ) (!  (=> (select (|PolymorphicMapType_8747_13546_35264#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@10) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@17 f_30@@17))
))) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_13546_13547) ) (!  (=> (select (|PolymorphicMapType_8747_13546_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@10) null (PredicateMaskField_4671 pm_f_13@@7))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@10) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@7) o2_13@@18 f_30@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_4671_4672 pm_f_13@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8198) (ExhaleHeap@@8 T@PolymorphicMapType_8198) (Mask@@9 T@PolymorphicMapType_8219) (pm_f_13@@8 T@Field_11618_11619) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_11587_4697 Mask@@9 null pm_f_13@@8) (IsPredicateField_4632_4633 pm_f_13@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_8271_8272) ) (!  (=> (select (|PolymorphicMapType_8747_4667_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@11) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@19 f_30@@19))
)) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_8258_53) ) (!  (=> (select (|PolymorphicMapType_8747_4667_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@11) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_4667_1203) ) (!  (=> (select (|PolymorphicMapType_8747_4667_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@11) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_4667_11606) ) (!  (=> (select (|PolymorphicMapType_8747_4667_32120#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@11) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@22 f_30@@22))
))) (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_4667_4697) ) (!  (=> (select (|PolymorphicMapType_8747_4667_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@11) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@23 f_30@@23))
))) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_11587_4668) ) (!  (=> (select (|PolymorphicMapType_8747_11587_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@11) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_11587_53) ) (!  (=> (select (|PolymorphicMapType_8747_11587_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@11) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_11587_1203) ) (!  (=> (select (|PolymorphicMapType_8747_11587_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@11) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_11601_11606) ) (!  (=> (select (|PolymorphicMapType_8747_11587_33168#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_11618_11619) ) (!  (=> (select (|PolymorphicMapType_8747_11587_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@11) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@28 f_30@@28))
))) (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_12310_4668) ) (!  (=> (select (|PolymorphicMapType_8747_12310_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@11) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@29 f_30@@29))
))) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_12310_53) ) (!  (=> (select (|PolymorphicMapType_8747_12310_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@11) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@30 f_30@@30))
))) (forall ((o2_13@@31 T@Ref) (f_30@@31 T@Field_12310_1203) ) (!  (=> (select (|PolymorphicMapType_8747_12310_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@31 f_30@@31) (= (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@11) o2_13@@31 f_30@@31) (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@31 f_30@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@31 f_30@@31))
))) (forall ((o2_13@@32 T@Ref) (f_30@@32 T@Field_12323_12328) ) (!  (=> (select (|PolymorphicMapType_8747_12310_34216#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@32 f_30@@32) (= (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@11) o2_13@@32 f_30@@32) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@32 f_30@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@32 f_30@@32))
))) (forall ((o2_13@@33 T@Ref) (f_30@@33 T@Field_12310_12311) ) (!  (=> (select (|PolymorphicMapType_8747_12310_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@33 f_30@@33) (= (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@11) o2_13@@33 f_30@@33) (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@33 f_30@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@33 f_30@@33))
))) (forall ((o2_13@@34 T@Ref) (f_30@@34 T@Field_4696_4668) ) (!  (=> (select (|PolymorphicMapType_8747_13546_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@34 f_30@@34) (= (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@11) o2_13@@34 f_30@@34) (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@34 f_30@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@34 f_30@@34))
))) (forall ((o2_13@@35 T@Ref) (f_30@@35 T@Field_4696_53) ) (!  (=> (select (|PolymorphicMapType_8747_13546_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@35 f_30@@35) (= (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@11) o2_13@@35 f_30@@35) (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@35 f_30@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@35 f_30@@35))
))) (forall ((o2_13@@36 T@Ref) (f_30@@36 T@Field_4696_1203) ) (!  (=> (select (|PolymorphicMapType_8747_13546_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@36 f_30@@36) (= (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@11) o2_13@@36 f_30@@36) (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@36 f_30@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@36 f_30@@36))
))) (forall ((o2_13@@37 T@Ref) (f_30@@37 T@Field_13559_13564) ) (!  (=> (select (|PolymorphicMapType_8747_13546_35264#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@37 f_30@@37) (= (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@11) o2_13@@37 f_30@@37) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@37 f_30@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@37 f_30@@37))
))) (forall ((o2_13@@38 T@Ref) (f_30@@38 T@Field_13546_13547) ) (!  (=> (select (|PolymorphicMapType_8747_13546_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@11) null (PredicateMaskField_11587 pm_f_13@@8))) o2_13@@38 f_30@@38) (= (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@11) o2_13@@38 f_30@@38) (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@38 f_30@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@8) o2_13@@38 f_30@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsPredicateField_4632_4633 pm_f_13@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8198) (ExhaleHeap@@9 T@PolymorphicMapType_8198) (Mask@@10 T@PolymorphicMapType_8219) (pm_f_13@@9 T@Field_13546_13547) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_4696_4697 Mask@@10 null pm_f_13@@9) (IsPredicateField_4696_4697 pm_f_13@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@39 T@Ref) (f_30@@39 T@Field_8271_8272) ) (!  (=> (select (|PolymorphicMapType_8747_4667_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@39 f_30@@39) (= (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@12) o2_13@@39 f_30@@39) (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@39 f_30@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@39 f_30@@39))
)) (forall ((o2_13@@40 T@Ref) (f_30@@40 T@Field_8258_53) ) (!  (=> (select (|PolymorphicMapType_8747_4667_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@40 f_30@@40) (= (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@12) o2_13@@40 f_30@@40) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@40 f_30@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@40 f_30@@40))
))) (forall ((o2_13@@41 T@Ref) (f_30@@41 T@Field_4667_1203) ) (!  (=> (select (|PolymorphicMapType_8747_4667_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@41 f_30@@41) (= (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@12) o2_13@@41 f_30@@41) (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@41 f_30@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@41 f_30@@41))
))) (forall ((o2_13@@42 T@Ref) (f_30@@42 T@Field_4667_11606) ) (!  (=> (select (|PolymorphicMapType_8747_4667_32120#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@42 f_30@@42) (= (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@12) o2_13@@42 f_30@@42) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@42 f_30@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@42 f_30@@42))
))) (forall ((o2_13@@43 T@Ref) (f_30@@43 T@Field_4667_4697) ) (!  (=> (select (|PolymorphicMapType_8747_4667_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@43 f_30@@43) (= (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@12) o2_13@@43 f_30@@43) (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@43 f_30@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@43 f_30@@43))
))) (forall ((o2_13@@44 T@Ref) (f_30@@44 T@Field_11587_4668) ) (!  (=> (select (|PolymorphicMapType_8747_11587_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@44 f_30@@44) (= (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@12) o2_13@@44 f_30@@44) (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@44 f_30@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@44 f_30@@44))
))) (forall ((o2_13@@45 T@Ref) (f_30@@45 T@Field_11587_53) ) (!  (=> (select (|PolymorphicMapType_8747_11587_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@45 f_30@@45) (= (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@12) o2_13@@45 f_30@@45) (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@45 f_30@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@45 f_30@@45))
))) (forall ((o2_13@@46 T@Ref) (f_30@@46 T@Field_11587_1203) ) (!  (=> (select (|PolymorphicMapType_8747_11587_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@46 f_30@@46) (= (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@12) o2_13@@46 f_30@@46) (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@46 f_30@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@46 f_30@@46))
))) (forall ((o2_13@@47 T@Ref) (f_30@@47 T@Field_11601_11606) ) (!  (=> (select (|PolymorphicMapType_8747_11587_33168#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@47 f_30@@47) (= (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@12) o2_13@@47 f_30@@47) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@47 f_30@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@47 f_30@@47))
))) (forall ((o2_13@@48 T@Ref) (f_30@@48 T@Field_11618_11619) ) (!  (=> (select (|PolymorphicMapType_8747_11587_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@48 f_30@@48) (= (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@12) o2_13@@48 f_30@@48) (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@48 f_30@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@48 f_30@@48))
))) (forall ((o2_13@@49 T@Ref) (f_30@@49 T@Field_12310_4668) ) (!  (=> (select (|PolymorphicMapType_8747_12310_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@49 f_30@@49) (= (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@12) o2_13@@49 f_30@@49) (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@49 f_30@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@49 f_30@@49))
))) (forall ((o2_13@@50 T@Ref) (f_30@@50 T@Field_12310_53) ) (!  (=> (select (|PolymorphicMapType_8747_12310_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@50 f_30@@50) (= (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@12) o2_13@@50 f_30@@50) (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@50 f_30@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@50 f_30@@50))
))) (forall ((o2_13@@51 T@Ref) (f_30@@51 T@Field_12310_1203) ) (!  (=> (select (|PolymorphicMapType_8747_12310_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@51 f_30@@51) (= (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@12) o2_13@@51 f_30@@51) (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@51 f_30@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@51 f_30@@51))
))) (forall ((o2_13@@52 T@Ref) (f_30@@52 T@Field_12323_12328) ) (!  (=> (select (|PolymorphicMapType_8747_12310_34216#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@52 f_30@@52) (= (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@12) o2_13@@52 f_30@@52) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@52 f_30@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@52 f_30@@52))
))) (forall ((o2_13@@53 T@Ref) (f_30@@53 T@Field_12310_12311) ) (!  (=> (select (|PolymorphicMapType_8747_12310_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@53 f_30@@53) (= (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@12) o2_13@@53 f_30@@53) (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@53 f_30@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@53 f_30@@53))
))) (forall ((o2_13@@54 T@Ref) (f_30@@54 T@Field_4696_4668) ) (!  (=> (select (|PolymorphicMapType_8747_13546_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@54 f_30@@54) (= (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@12) o2_13@@54 f_30@@54) (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@54 f_30@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@54 f_30@@54))
))) (forall ((o2_13@@55 T@Ref) (f_30@@55 T@Field_4696_53) ) (!  (=> (select (|PolymorphicMapType_8747_13546_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@55 f_30@@55) (= (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@12) o2_13@@55 f_30@@55) (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@55 f_30@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@55 f_30@@55))
))) (forall ((o2_13@@56 T@Ref) (f_30@@56 T@Field_4696_1203) ) (!  (=> (select (|PolymorphicMapType_8747_13546_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@56 f_30@@56) (= (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@12) o2_13@@56 f_30@@56) (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@56 f_30@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@56 f_30@@56))
))) (forall ((o2_13@@57 T@Ref) (f_30@@57 T@Field_13559_13564) ) (!  (=> (select (|PolymorphicMapType_8747_13546_35264#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@57 f_30@@57) (= (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) o2_13@@57 f_30@@57) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@57 f_30@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@57 f_30@@57))
))) (forall ((o2_13@@58 T@Ref) (f_30@@58 T@Field_13546_13547) ) (!  (=> (select (|PolymorphicMapType_8747_13546_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@12) null (PredicateMaskField_4696 pm_f_13@@9))) o2_13@@58 f_30@@58) (= (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@12) o2_13@@58 f_30@@58) (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@58 f_30@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@9) o2_13@@58 f_30@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsPredicateField_4696_4697 pm_f_13@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8198) (ExhaleHeap@@10 T@PolymorphicMapType_8198) (Mask@@11 T@PolymorphicMapType_8219) (pm_f_13@@10 T@Field_4667_4697) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_4667_4697 Mask@@11 null pm_f_13@@10) (IsPredicateField_4667_30180 pm_f_13@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@59 T@Ref) (f_30@@59 T@Field_8271_8272) ) (!  (=> (select (|PolymorphicMapType_8747_4667_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@59 f_30@@59) (= (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@13) o2_13@@59 f_30@@59) (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@59 f_30@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@59 f_30@@59))
)) (forall ((o2_13@@60 T@Ref) (f_30@@60 T@Field_8258_53) ) (!  (=> (select (|PolymorphicMapType_8747_4667_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@60 f_30@@60) (= (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@13) o2_13@@60 f_30@@60) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@60 f_30@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@60 f_30@@60))
))) (forall ((o2_13@@61 T@Ref) (f_30@@61 T@Field_4667_1203) ) (!  (=> (select (|PolymorphicMapType_8747_4667_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@61 f_30@@61) (= (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@13) o2_13@@61 f_30@@61) (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@61 f_30@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@61 f_30@@61))
))) (forall ((o2_13@@62 T@Ref) (f_30@@62 T@Field_4667_11606) ) (!  (=> (select (|PolymorphicMapType_8747_4667_32120#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@62 f_30@@62) (= (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) o2_13@@62 f_30@@62) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@62 f_30@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@62 f_30@@62))
))) (forall ((o2_13@@63 T@Ref) (f_30@@63 T@Field_4667_4697) ) (!  (=> (select (|PolymorphicMapType_8747_4667_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@63 f_30@@63) (= (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@13) o2_13@@63 f_30@@63) (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@63 f_30@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@63 f_30@@63))
))) (forall ((o2_13@@64 T@Ref) (f_30@@64 T@Field_11587_4668) ) (!  (=> (select (|PolymorphicMapType_8747_11587_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@64 f_30@@64) (= (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@13) o2_13@@64 f_30@@64) (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@64 f_30@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@64 f_30@@64))
))) (forall ((o2_13@@65 T@Ref) (f_30@@65 T@Field_11587_53) ) (!  (=> (select (|PolymorphicMapType_8747_11587_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@65 f_30@@65) (= (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@13) o2_13@@65 f_30@@65) (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@65 f_30@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@65 f_30@@65))
))) (forall ((o2_13@@66 T@Ref) (f_30@@66 T@Field_11587_1203) ) (!  (=> (select (|PolymorphicMapType_8747_11587_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@66 f_30@@66) (= (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@13) o2_13@@66 f_30@@66) (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@66 f_30@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@66 f_30@@66))
))) (forall ((o2_13@@67 T@Ref) (f_30@@67 T@Field_11601_11606) ) (!  (=> (select (|PolymorphicMapType_8747_11587_33168#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@67 f_30@@67) (= (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@13) o2_13@@67 f_30@@67) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@67 f_30@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@67 f_30@@67))
))) (forall ((o2_13@@68 T@Ref) (f_30@@68 T@Field_11618_11619) ) (!  (=> (select (|PolymorphicMapType_8747_11587_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@68 f_30@@68) (= (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@13) o2_13@@68 f_30@@68) (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@68 f_30@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@68 f_30@@68))
))) (forall ((o2_13@@69 T@Ref) (f_30@@69 T@Field_12310_4668) ) (!  (=> (select (|PolymorphicMapType_8747_12310_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@69 f_30@@69) (= (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@13) o2_13@@69 f_30@@69) (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@69 f_30@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@69 f_30@@69))
))) (forall ((o2_13@@70 T@Ref) (f_30@@70 T@Field_12310_53) ) (!  (=> (select (|PolymorphicMapType_8747_12310_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@70 f_30@@70) (= (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@13) o2_13@@70 f_30@@70) (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@70 f_30@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@70 f_30@@70))
))) (forall ((o2_13@@71 T@Ref) (f_30@@71 T@Field_12310_1203) ) (!  (=> (select (|PolymorphicMapType_8747_12310_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@71 f_30@@71) (= (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@13) o2_13@@71 f_30@@71) (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@71 f_30@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@71 f_30@@71))
))) (forall ((o2_13@@72 T@Ref) (f_30@@72 T@Field_12323_12328) ) (!  (=> (select (|PolymorphicMapType_8747_12310_34216#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@72 f_30@@72) (= (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@13) o2_13@@72 f_30@@72) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@72 f_30@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@72 f_30@@72))
))) (forall ((o2_13@@73 T@Ref) (f_30@@73 T@Field_12310_12311) ) (!  (=> (select (|PolymorphicMapType_8747_12310_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@73 f_30@@73) (= (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@13) o2_13@@73 f_30@@73) (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@73 f_30@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@73 f_30@@73))
))) (forall ((o2_13@@74 T@Ref) (f_30@@74 T@Field_4696_4668) ) (!  (=> (select (|PolymorphicMapType_8747_13546_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@74 f_30@@74) (= (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@13) o2_13@@74 f_30@@74) (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@74 f_30@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@74 f_30@@74))
))) (forall ((o2_13@@75 T@Ref) (f_30@@75 T@Field_4696_53) ) (!  (=> (select (|PolymorphicMapType_8747_13546_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@75 f_30@@75) (= (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@13) o2_13@@75 f_30@@75) (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@75 f_30@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@75 f_30@@75))
))) (forall ((o2_13@@76 T@Ref) (f_30@@76 T@Field_4696_1203) ) (!  (=> (select (|PolymorphicMapType_8747_13546_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@76 f_30@@76) (= (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@13) o2_13@@76 f_30@@76) (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@76 f_30@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@76 f_30@@76))
))) (forall ((o2_13@@77 T@Ref) (f_30@@77 T@Field_13559_13564) ) (!  (=> (select (|PolymorphicMapType_8747_13546_35264#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@77 f_30@@77) (= (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@13) o2_13@@77 f_30@@77) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@77 f_30@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@77 f_30@@77))
))) (forall ((o2_13@@78 T@Ref) (f_30@@78 T@Field_13546_13547) ) (!  (=> (select (|PolymorphicMapType_8747_13546_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@13) null (PredicateMaskField_4667 pm_f_13@@10))) o2_13@@78 f_30@@78) (= (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@13) o2_13@@78 f_30@@78) (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@78 f_30@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@10) o2_13@@78 f_30@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsPredicateField_4667_30180 pm_f_13@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8198) (ExhaleHeap@@11 T@PolymorphicMapType_8198) (Mask@@12 T@PolymorphicMapType_8219) (pm_f_13@@11 T@Field_12310_12311) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_12310_4697 Mask@@12 null pm_f_13@@11) (IsWandField_12310_37877 pm_f_13@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@79 T@Ref) (f_30@@79 T@Field_8271_8272) ) (!  (=> (select (|PolymorphicMapType_8747_4667_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@79 f_30@@79) (= (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@14) o2_13@@79 f_30@@79) (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@79 f_30@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@79 f_30@@79))
)) (forall ((o2_13@@80 T@Ref) (f_30@@80 T@Field_8258_53) ) (!  (=> (select (|PolymorphicMapType_8747_4667_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@80 f_30@@80) (= (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@14) o2_13@@80 f_30@@80) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@80 f_30@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@80 f_30@@80))
))) (forall ((o2_13@@81 T@Ref) (f_30@@81 T@Field_4667_1203) ) (!  (=> (select (|PolymorphicMapType_8747_4667_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@81 f_30@@81) (= (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@14) o2_13@@81 f_30@@81) (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@81 f_30@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@81 f_30@@81))
))) (forall ((o2_13@@82 T@Ref) (f_30@@82 T@Field_4667_11606) ) (!  (=> (select (|PolymorphicMapType_8747_4667_32120#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@82 f_30@@82) (= (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@14) o2_13@@82 f_30@@82) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@82 f_30@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@82 f_30@@82))
))) (forall ((o2_13@@83 T@Ref) (f_30@@83 T@Field_4667_4697) ) (!  (=> (select (|PolymorphicMapType_8747_4667_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@83 f_30@@83) (= (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@14) o2_13@@83 f_30@@83) (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@83 f_30@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@83 f_30@@83))
))) (forall ((o2_13@@84 T@Ref) (f_30@@84 T@Field_11587_4668) ) (!  (=> (select (|PolymorphicMapType_8747_11587_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@84 f_30@@84) (= (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@14) o2_13@@84 f_30@@84) (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@84 f_30@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@84 f_30@@84))
))) (forall ((o2_13@@85 T@Ref) (f_30@@85 T@Field_11587_53) ) (!  (=> (select (|PolymorphicMapType_8747_11587_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@85 f_30@@85) (= (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@14) o2_13@@85 f_30@@85) (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@85 f_30@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@85 f_30@@85))
))) (forall ((o2_13@@86 T@Ref) (f_30@@86 T@Field_11587_1203) ) (!  (=> (select (|PolymorphicMapType_8747_11587_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@86 f_30@@86) (= (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@14) o2_13@@86 f_30@@86) (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@86 f_30@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@86 f_30@@86))
))) (forall ((o2_13@@87 T@Ref) (f_30@@87 T@Field_11601_11606) ) (!  (=> (select (|PolymorphicMapType_8747_11587_33168#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@87 f_30@@87) (= (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@14) o2_13@@87 f_30@@87) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@87 f_30@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@87 f_30@@87))
))) (forall ((o2_13@@88 T@Ref) (f_30@@88 T@Field_11618_11619) ) (!  (=> (select (|PolymorphicMapType_8747_11587_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@88 f_30@@88) (= (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@14) o2_13@@88 f_30@@88) (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@88 f_30@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@88 f_30@@88))
))) (forall ((o2_13@@89 T@Ref) (f_30@@89 T@Field_12310_4668) ) (!  (=> (select (|PolymorphicMapType_8747_12310_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@89 f_30@@89) (= (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@14) o2_13@@89 f_30@@89) (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@89 f_30@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@89 f_30@@89))
))) (forall ((o2_13@@90 T@Ref) (f_30@@90 T@Field_12310_53) ) (!  (=> (select (|PolymorphicMapType_8747_12310_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@90 f_30@@90) (= (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@14) o2_13@@90 f_30@@90) (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@90 f_30@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@90 f_30@@90))
))) (forall ((o2_13@@91 T@Ref) (f_30@@91 T@Field_12310_1203) ) (!  (=> (select (|PolymorphicMapType_8747_12310_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@91 f_30@@91) (= (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@14) o2_13@@91 f_30@@91) (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@91 f_30@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@91 f_30@@91))
))) (forall ((o2_13@@92 T@Ref) (f_30@@92 T@Field_12323_12328) ) (!  (=> (select (|PolymorphicMapType_8747_12310_34216#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@92 f_30@@92) (= (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) o2_13@@92 f_30@@92) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@92 f_30@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@92 f_30@@92))
))) (forall ((o2_13@@93 T@Ref) (f_30@@93 T@Field_12310_12311) ) (!  (=> (select (|PolymorphicMapType_8747_12310_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@93 f_30@@93) (= (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@14) o2_13@@93 f_30@@93) (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@93 f_30@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@93 f_30@@93))
))) (forall ((o2_13@@94 T@Ref) (f_30@@94 T@Field_4696_4668) ) (!  (=> (select (|PolymorphicMapType_8747_13546_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@94 f_30@@94) (= (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@14) o2_13@@94 f_30@@94) (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@94 f_30@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@94 f_30@@94))
))) (forall ((o2_13@@95 T@Ref) (f_30@@95 T@Field_4696_53) ) (!  (=> (select (|PolymorphicMapType_8747_13546_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@95 f_30@@95) (= (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@14) o2_13@@95 f_30@@95) (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@95 f_30@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@95 f_30@@95))
))) (forall ((o2_13@@96 T@Ref) (f_30@@96 T@Field_4696_1203) ) (!  (=> (select (|PolymorphicMapType_8747_13546_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@96 f_30@@96) (= (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@14) o2_13@@96 f_30@@96) (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@96 f_30@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@96 f_30@@96))
))) (forall ((o2_13@@97 T@Ref) (f_30@@97 T@Field_13559_13564) ) (!  (=> (select (|PolymorphicMapType_8747_13546_35264#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@97 f_30@@97) (= (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@14) o2_13@@97 f_30@@97) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@97 f_30@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@97 f_30@@97))
))) (forall ((o2_13@@98 T@Ref) (f_30@@98 T@Field_13546_13547) ) (!  (=> (select (|PolymorphicMapType_8747_13546_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@14) null (WandMaskField_12310 pm_f_13@@11))) o2_13@@98 f_30@@98) (= (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@14) o2_13@@98 f_30@@98) (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@98 f_30@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@11) o2_13@@98 f_30@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (IsWandField_12310_37877 pm_f_13@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8198) (ExhaleHeap@@12 T@PolymorphicMapType_8198) (Mask@@13 T@PolymorphicMapType_8219) (pm_f_13@@12 T@Field_11618_11619) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_11587_4697 Mask@@13 null pm_f_13@@12) (IsWandField_4632_4633 pm_f_13@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@99 T@Ref) (f_30@@99 T@Field_8271_8272) ) (!  (=> (select (|PolymorphicMapType_8747_4667_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@99 f_30@@99) (= (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@15) o2_13@@99 f_30@@99) (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@99 f_30@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@99 f_30@@99))
)) (forall ((o2_13@@100 T@Ref) (f_30@@100 T@Field_8258_53) ) (!  (=> (select (|PolymorphicMapType_8747_4667_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@100 f_30@@100) (= (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@15) o2_13@@100 f_30@@100) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@100 f_30@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@100 f_30@@100))
))) (forall ((o2_13@@101 T@Ref) (f_30@@101 T@Field_4667_1203) ) (!  (=> (select (|PolymorphicMapType_8747_4667_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@101 f_30@@101) (= (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@15) o2_13@@101 f_30@@101) (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@101 f_30@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@101 f_30@@101))
))) (forall ((o2_13@@102 T@Ref) (f_30@@102 T@Field_4667_11606) ) (!  (=> (select (|PolymorphicMapType_8747_4667_32120#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@102 f_30@@102) (= (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@15) o2_13@@102 f_30@@102) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@102 f_30@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@102 f_30@@102))
))) (forall ((o2_13@@103 T@Ref) (f_30@@103 T@Field_4667_4697) ) (!  (=> (select (|PolymorphicMapType_8747_4667_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@103 f_30@@103) (= (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@15) o2_13@@103 f_30@@103) (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@103 f_30@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@103 f_30@@103))
))) (forall ((o2_13@@104 T@Ref) (f_30@@104 T@Field_11587_4668) ) (!  (=> (select (|PolymorphicMapType_8747_11587_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@104 f_30@@104) (= (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@15) o2_13@@104 f_30@@104) (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@104 f_30@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@104 f_30@@104))
))) (forall ((o2_13@@105 T@Ref) (f_30@@105 T@Field_11587_53) ) (!  (=> (select (|PolymorphicMapType_8747_11587_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@105 f_30@@105) (= (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@15) o2_13@@105 f_30@@105) (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@105 f_30@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@105 f_30@@105))
))) (forall ((o2_13@@106 T@Ref) (f_30@@106 T@Field_11587_1203) ) (!  (=> (select (|PolymorphicMapType_8747_11587_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@106 f_30@@106) (= (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@15) o2_13@@106 f_30@@106) (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@106 f_30@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@106 f_30@@106))
))) (forall ((o2_13@@107 T@Ref) (f_30@@107 T@Field_11601_11606) ) (!  (=> (select (|PolymorphicMapType_8747_11587_33168#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@107 f_30@@107) (= (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) o2_13@@107 f_30@@107) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@107 f_30@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@107 f_30@@107))
))) (forall ((o2_13@@108 T@Ref) (f_30@@108 T@Field_11618_11619) ) (!  (=> (select (|PolymorphicMapType_8747_11587_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@108 f_30@@108) (= (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@15) o2_13@@108 f_30@@108) (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@108 f_30@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@108 f_30@@108))
))) (forall ((o2_13@@109 T@Ref) (f_30@@109 T@Field_12310_4668) ) (!  (=> (select (|PolymorphicMapType_8747_12310_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@109 f_30@@109) (= (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@15) o2_13@@109 f_30@@109) (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@109 f_30@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@109 f_30@@109))
))) (forall ((o2_13@@110 T@Ref) (f_30@@110 T@Field_12310_53) ) (!  (=> (select (|PolymorphicMapType_8747_12310_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@110 f_30@@110) (= (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@15) o2_13@@110 f_30@@110) (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@110 f_30@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@110 f_30@@110))
))) (forall ((o2_13@@111 T@Ref) (f_30@@111 T@Field_12310_1203) ) (!  (=> (select (|PolymorphicMapType_8747_12310_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@111 f_30@@111) (= (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@15) o2_13@@111 f_30@@111) (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@111 f_30@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@111 f_30@@111))
))) (forall ((o2_13@@112 T@Ref) (f_30@@112 T@Field_12323_12328) ) (!  (=> (select (|PolymorphicMapType_8747_12310_34216#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@112 f_30@@112) (= (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@15) o2_13@@112 f_30@@112) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@112 f_30@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@112 f_30@@112))
))) (forall ((o2_13@@113 T@Ref) (f_30@@113 T@Field_12310_12311) ) (!  (=> (select (|PolymorphicMapType_8747_12310_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@113 f_30@@113) (= (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@15) o2_13@@113 f_30@@113) (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@113 f_30@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@113 f_30@@113))
))) (forall ((o2_13@@114 T@Ref) (f_30@@114 T@Field_4696_4668) ) (!  (=> (select (|PolymorphicMapType_8747_13546_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@114 f_30@@114) (= (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@15) o2_13@@114 f_30@@114) (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@114 f_30@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@114 f_30@@114))
))) (forall ((o2_13@@115 T@Ref) (f_30@@115 T@Field_4696_53) ) (!  (=> (select (|PolymorphicMapType_8747_13546_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@115 f_30@@115) (= (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@15) o2_13@@115 f_30@@115) (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@115 f_30@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@115 f_30@@115))
))) (forall ((o2_13@@116 T@Ref) (f_30@@116 T@Field_4696_1203) ) (!  (=> (select (|PolymorphicMapType_8747_13546_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@116 f_30@@116) (= (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@15) o2_13@@116 f_30@@116) (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@116 f_30@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@116 f_30@@116))
))) (forall ((o2_13@@117 T@Ref) (f_30@@117 T@Field_13559_13564) ) (!  (=> (select (|PolymorphicMapType_8747_13546_35264#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@117 f_30@@117) (= (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@15) o2_13@@117 f_30@@117) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@117 f_30@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@117 f_30@@117))
))) (forall ((o2_13@@118 T@Ref) (f_30@@118 T@Field_13546_13547) ) (!  (=> (select (|PolymorphicMapType_8747_13546_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@15) null (WandMaskField_4632 pm_f_13@@12))) o2_13@@118 f_30@@118) (= (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@15) o2_13@@118 f_30@@118) (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@118 f_30@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@12) o2_13@@118 f_30@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (IsWandField_4632_4633 pm_f_13@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8198) (ExhaleHeap@@13 T@PolymorphicMapType_8198) (Mask@@14 T@PolymorphicMapType_8219) (pm_f_13@@13 T@Field_13546_13547) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_4696_4697 Mask@@14 null pm_f_13@@13) (IsWandField_4696_37195 pm_f_13@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@119 T@Ref) (f_30@@119 T@Field_8271_8272) ) (!  (=> (select (|PolymorphicMapType_8747_4667_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@119 f_30@@119) (= (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@16) o2_13@@119 f_30@@119) (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@119 f_30@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@119 f_30@@119))
)) (forall ((o2_13@@120 T@Ref) (f_30@@120 T@Field_8258_53) ) (!  (=> (select (|PolymorphicMapType_8747_4667_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@120 f_30@@120) (= (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@16) o2_13@@120 f_30@@120) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@120 f_30@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@120 f_30@@120))
))) (forall ((o2_13@@121 T@Ref) (f_30@@121 T@Field_4667_1203) ) (!  (=> (select (|PolymorphicMapType_8747_4667_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@121 f_30@@121) (= (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@16) o2_13@@121 f_30@@121) (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@121 f_30@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@121 f_30@@121))
))) (forall ((o2_13@@122 T@Ref) (f_30@@122 T@Field_4667_11606) ) (!  (=> (select (|PolymorphicMapType_8747_4667_32120#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@122 f_30@@122) (= (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@16) o2_13@@122 f_30@@122) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@122 f_30@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@122 f_30@@122))
))) (forall ((o2_13@@123 T@Ref) (f_30@@123 T@Field_4667_4697) ) (!  (=> (select (|PolymorphicMapType_8747_4667_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@123 f_30@@123) (= (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@16) o2_13@@123 f_30@@123) (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@123 f_30@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@123 f_30@@123))
))) (forall ((o2_13@@124 T@Ref) (f_30@@124 T@Field_11587_4668) ) (!  (=> (select (|PolymorphicMapType_8747_11587_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@124 f_30@@124) (= (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@16) o2_13@@124 f_30@@124) (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@124 f_30@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@124 f_30@@124))
))) (forall ((o2_13@@125 T@Ref) (f_30@@125 T@Field_11587_53) ) (!  (=> (select (|PolymorphicMapType_8747_11587_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@125 f_30@@125) (= (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@16) o2_13@@125 f_30@@125) (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@125 f_30@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@125 f_30@@125))
))) (forall ((o2_13@@126 T@Ref) (f_30@@126 T@Field_11587_1203) ) (!  (=> (select (|PolymorphicMapType_8747_11587_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@126 f_30@@126) (= (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@16) o2_13@@126 f_30@@126) (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@126 f_30@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@126 f_30@@126))
))) (forall ((o2_13@@127 T@Ref) (f_30@@127 T@Field_11601_11606) ) (!  (=> (select (|PolymorphicMapType_8747_11587_33168#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@127 f_30@@127) (= (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@16) o2_13@@127 f_30@@127) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@127 f_30@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@127 f_30@@127))
))) (forall ((o2_13@@128 T@Ref) (f_30@@128 T@Field_11618_11619) ) (!  (=> (select (|PolymorphicMapType_8747_11587_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@128 f_30@@128) (= (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@16) o2_13@@128 f_30@@128) (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@128 f_30@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@128 f_30@@128))
))) (forall ((o2_13@@129 T@Ref) (f_30@@129 T@Field_12310_4668) ) (!  (=> (select (|PolymorphicMapType_8747_12310_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@129 f_30@@129) (= (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@16) o2_13@@129 f_30@@129) (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@129 f_30@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@129 f_30@@129))
))) (forall ((o2_13@@130 T@Ref) (f_30@@130 T@Field_12310_53) ) (!  (=> (select (|PolymorphicMapType_8747_12310_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@130 f_30@@130) (= (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@16) o2_13@@130 f_30@@130) (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@130 f_30@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@130 f_30@@130))
))) (forall ((o2_13@@131 T@Ref) (f_30@@131 T@Field_12310_1203) ) (!  (=> (select (|PolymorphicMapType_8747_12310_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@131 f_30@@131) (= (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@16) o2_13@@131 f_30@@131) (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@131 f_30@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@131 f_30@@131))
))) (forall ((o2_13@@132 T@Ref) (f_30@@132 T@Field_12323_12328) ) (!  (=> (select (|PolymorphicMapType_8747_12310_34216#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@132 f_30@@132) (= (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@16) o2_13@@132 f_30@@132) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@132 f_30@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@132 f_30@@132))
))) (forall ((o2_13@@133 T@Ref) (f_30@@133 T@Field_12310_12311) ) (!  (=> (select (|PolymorphicMapType_8747_12310_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@133 f_30@@133) (= (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@16) o2_13@@133 f_30@@133) (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@133 f_30@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@133 f_30@@133))
))) (forall ((o2_13@@134 T@Ref) (f_30@@134 T@Field_4696_4668) ) (!  (=> (select (|PolymorphicMapType_8747_13546_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@134 f_30@@134) (= (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@16) o2_13@@134 f_30@@134) (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@134 f_30@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@134 f_30@@134))
))) (forall ((o2_13@@135 T@Ref) (f_30@@135 T@Field_4696_53) ) (!  (=> (select (|PolymorphicMapType_8747_13546_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@135 f_30@@135) (= (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@16) o2_13@@135 f_30@@135) (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@135 f_30@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@135 f_30@@135))
))) (forall ((o2_13@@136 T@Ref) (f_30@@136 T@Field_4696_1203) ) (!  (=> (select (|PolymorphicMapType_8747_13546_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@136 f_30@@136) (= (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@16) o2_13@@136 f_30@@136) (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@136 f_30@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@136 f_30@@136))
))) (forall ((o2_13@@137 T@Ref) (f_30@@137 T@Field_13559_13564) ) (!  (=> (select (|PolymorphicMapType_8747_13546_35264#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@137 f_30@@137) (= (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) o2_13@@137 f_30@@137) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@137 f_30@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@137 f_30@@137))
))) (forall ((o2_13@@138 T@Ref) (f_30@@138 T@Field_13546_13547) ) (!  (=> (select (|PolymorphicMapType_8747_13546_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@16) null (WandMaskField_4696 pm_f_13@@13))) o2_13@@138 f_30@@138) (= (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@16) o2_13@@138 f_30@@138) (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@138 f_30@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@13) o2_13@@138 f_30@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (IsWandField_4696_37195 pm_f_13@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8198) (ExhaleHeap@@14 T@PolymorphicMapType_8198) (Mask@@15 T@PolymorphicMapType_8219) (pm_f_13@@14 T@Field_4667_4697) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_4667_4697 Mask@@15 null pm_f_13@@14) (IsWandField_4667_36838 pm_f_13@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@139 T@Ref) (f_30@@139 T@Field_8271_8272) ) (!  (=> (select (|PolymorphicMapType_8747_4667_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@139 f_30@@139) (= (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@17) o2_13@@139 f_30@@139) (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@139 f_30@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@139 f_30@@139))
)) (forall ((o2_13@@140 T@Ref) (f_30@@140 T@Field_8258_53) ) (!  (=> (select (|PolymorphicMapType_8747_4667_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@140 f_30@@140) (= (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@17) o2_13@@140 f_30@@140) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@140 f_30@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@140 f_30@@140))
))) (forall ((o2_13@@141 T@Ref) (f_30@@141 T@Field_4667_1203) ) (!  (=> (select (|PolymorphicMapType_8747_4667_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@141 f_30@@141) (= (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@17) o2_13@@141 f_30@@141) (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@141 f_30@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@141 f_30@@141))
))) (forall ((o2_13@@142 T@Ref) (f_30@@142 T@Field_4667_11606) ) (!  (=> (select (|PolymorphicMapType_8747_4667_32120#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@142 f_30@@142) (= (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) o2_13@@142 f_30@@142) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@142 f_30@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@142 f_30@@142))
))) (forall ((o2_13@@143 T@Ref) (f_30@@143 T@Field_4667_4697) ) (!  (=> (select (|PolymorphicMapType_8747_4667_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@143 f_30@@143) (= (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@17) o2_13@@143 f_30@@143) (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@143 f_30@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@143 f_30@@143))
))) (forall ((o2_13@@144 T@Ref) (f_30@@144 T@Field_11587_4668) ) (!  (=> (select (|PolymorphicMapType_8747_11587_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@144 f_30@@144) (= (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@17) o2_13@@144 f_30@@144) (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@144 f_30@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@144 f_30@@144))
))) (forall ((o2_13@@145 T@Ref) (f_30@@145 T@Field_11587_53) ) (!  (=> (select (|PolymorphicMapType_8747_11587_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@145 f_30@@145) (= (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@17) o2_13@@145 f_30@@145) (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@145 f_30@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@145 f_30@@145))
))) (forall ((o2_13@@146 T@Ref) (f_30@@146 T@Field_11587_1203) ) (!  (=> (select (|PolymorphicMapType_8747_11587_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@146 f_30@@146) (= (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@17) o2_13@@146 f_30@@146) (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@146 f_30@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@146 f_30@@146))
))) (forall ((o2_13@@147 T@Ref) (f_30@@147 T@Field_11601_11606) ) (!  (=> (select (|PolymorphicMapType_8747_11587_33168#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@147 f_30@@147) (= (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@17) o2_13@@147 f_30@@147) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@147 f_30@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@147 f_30@@147))
))) (forall ((o2_13@@148 T@Ref) (f_30@@148 T@Field_11618_11619) ) (!  (=> (select (|PolymorphicMapType_8747_11587_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@148 f_30@@148) (= (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@17) o2_13@@148 f_30@@148) (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@148 f_30@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@148 f_30@@148))
))) (forall ((o2_13@@149 T@Ref) (f_30@@149 T@Field_12310_4668) ) (!  (=> (select (|PolymorphicMapType_8747_12310_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@149 f_30@@149) (= (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@17) o2_13@@149 f_30@@149) (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@149 f_30@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@149 f_30@@149))
))) (forall ((o2_13@@150 T@Ref) (f_30@@150 T@Field_12310_53) ) (!  (=> (select (|PolymorphicMapType_8747_12310_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@150 f_30@@150) (= (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@17) o2_13@@150 f_30@@150) (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@150 f_30@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@150 f_30@@150))
))) (forall ((o2_13@@151 T@Ref) (f_30@@151 T@Field_12310_1203) ) (!  (=> (select (|PolymorphicMapType_8747_12310_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@151 f_30@@151) (= (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@17) o2_13@@151 f_30@@151) (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@151 f_30@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@151 f_30@@151))
))) (forall ((o2_13@@152 T@Ref) (f_30@@152 T@Field_12323_12328) ) (!  (=> (select (|PolymorphicMapType_8747_12310_34216#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@152 f_30@@152) (= (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@17) o2_13@@152 f_30@@152) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@152 f_30@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@152 f_30@@152))
))) (forall ((o2_13@@153 T@Ref) (f_30@@153 T@Field_12310_12311) ) (!  (=> (select (|PolymorphicMapType_8747_12310_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@153 f_30@@153) (= (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@17) o2_13@@153 f_30@@153) (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@153 f_30@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@153 f_30@@153))
))) (forall ((o2_13@@154 T@Ref) (f_30@@154 T@Field_4696_4668) ) (!  (=> (select (|PolymorphicMapType_8747_13546_4668#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@154 f_30@@154) (= (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@17) o2_13@@154 f_30@@154) (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@154 f_30@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@154 f_30@@154))
))) (forall ((o2_13@@155 T@Ref) (f_30@@155 T@Field_4696_53) ) (!  (=> (select (|PolymorphicMapType_8747_13546_53#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@155 f_30@@155) (= (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@17) o2_13@@155 f_30@@155) (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@155 f_30@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@155 f_30@@155))
))) (forall ((o2_13@@156 T@Ref) (f_30@@156 T@Field_4696_1203) ) (!  (=> (select (|PolymorphicMapType_8747_13546_1203#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@156 f_30@@156) (= (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@17) o2_13@@156 f_30@@156) (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@156 f_30@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@156 f_30@@156))
))) (forall ((o2_13@@157 T@Ref) (f_30@@157 T@Field_13559_13564) ) (!  (=> (select (|PolymorphicMapType_8747_13546_35264#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@157 f_30@@157) (= (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@17) o2_13@@157 f_30@@157) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@157 f_30@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@157 f_30@@157))
))) (forall ((o2_13@@158 T@Ref) (f_30@@158 T@Field_13546_13547) ) (!  (=> (select (|PolymorphicMapType_8747_13546_11619#PolymorphicMapType_8747| (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@17) null (WandMaskField_4667 pm_f_13@@14))) o2_13@@158 f_30@@158) (= (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@17) o2_13@@158 f_30@@158) (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@158 f_30@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@14) o2_13@@158 f_30@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (IsWandField_4667_36838 pm_f_13@@14))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@1) (P x2)) (= x@@1 x2))
 :qid |stdinbpl.242:15|
 :skolemid |32|
 :pattern ( (P x@@1) (P x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@2) (|P#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.246:15|
 :skolemid |33|
 :pattern ( (|P#sm| x@@2) (|P#sm| x2@@0))
)))
(assert (forall ((y@@1 T@Ref) (y2 T@Ref) ) (!  (=> (= (Q y@@1) (Q y2)) (= y@@1 y2))
 :qid |stdinbpl.304:15|
 :skolemid |38|
 :pattern ( (Q y@@1) (Q y2))
)))
(assert (forall ((y@@2 T@Ref) (y2@@0 T@Ref) ) (!  (=> (= (|Q#sm| y@@2) (|Q#sm| y2@@0)) (= y@@2 y2@@0))
 :qid |stdinbpl.308:15|
 :skolemid |39|
 :pattern ( (|Q#sm| y@@2) (|Q#sm| y2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8198) (ExhaleHeap@@15 T@PolymorphicMapType_8198) (Mask@@16 T@PolymorphicMapType_8219) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@18) o_22 $allocated) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@15) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@15) o_22 $allocated))
)))
(assert (forall ((p T@Field_13546_13547) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13546_13546 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13546_13546 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12310_12311) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_12310_12310 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12310_12310 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_11618_11619) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_11587_11587 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11587_11587 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_4667_4697) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_8258_8258 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8258_8258 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_4667_4668 f_7)))
(assert  (not (IsWandField_4667_4668 f_7)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8198) (ExhaleHeap@@16 T@PolymorphicMapType_8198) (Mask@@17 T@PolymorphicMapType_8219) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@19 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8219) (o_2@@19 T@Ref) (f_4@@19 T@Field_11601_11606) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4619_51567 f_4@@19))) (not (IsWandField_4619_51583 f_4@@19))) (<= (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8219) (o_2@@20 T@Ref) (f_4@@20 T@Field_11587_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4619_53 f_4@@20))) (not (IsWandField_4619_53 f_4@@20))) (<= (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8219) (o_2@@21 T@Ref) (f_4@@21 T@Field_11587_1203) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4619_1203 f_4@@21))) (not (IsWandField_4619_1203 f_4@@21))) (<= (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8219) (o_2@@22 T@Ref) (f_4@@22 T@Field_11618_11619) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4632_4633 f_4@@22))) (not (IsWandField_4632_4633 f_4@@22))) (<= (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8219) (o_2@@23 T@Ref) (f_4@@23 T@Field_11587_4668) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_4619_4668 f_4@@23))) (not (IsWandField_4619_4668 f_4@@23))) (<= (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8219) (o_2@@24 T@Ref) (f_4@@24 T@Field_13559_13564) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_4696_50750 f_4@@24))) (not (IsWandField_4696_50766 f_4@@24))) (<= (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8219) (o_2@@25 T@Ref) (f_4@@25 T@Field_4696_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_4696_53 f_4@@25))) (not (IsWandField_4696_53 f_4@@25))) (<= (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8219) (o_2@@26 T@Ref) (f_4@@26 T@Field_4696_1203) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_4696_1203 f_4@@26))) (not (IsWandField_4696_1203 f_4@@26))) (<= (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8219) (o_2@@27 T@Ref) (f_4@@27 T@Field_13546_13547) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_4696_4697 f_4@@27))) (not (IsWandField_4696_37195 f_4@@27))) (<= (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8219) (o_2@@28 T@Ref) (f_4@@28 T@Field_4696_4668) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_4696_4668 f_4@@28))) (not (IsWandField_4696_4668 f_4@@28))) (<= (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8219) (o_2@@29 T@Ref) (f_4@@29 T@Field_12323_12328) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_4671_49919 f_4@@29))) (not (IsWandField_4671_49935 f_4@@29))) (<= (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8219) (o_2@@30 T@Ref) (f_4@@30 T@Field_12310_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_4671_53 f_4@@30))) (not (IsWandField_4671_53 f_4@@30))) (<= (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8219) (o_2@@31 T@Ref) (f_4@@31 T@Field_12310_1203) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_4671_1203 f_4@@31))) (not (IsWandField_4671_1203 f_4@@31))) (<= (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_8219) (o_2@@32 T@Ref) (f_4@@32 T@Field_12310_12311) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_4671_4672 f_4@@32))) (not (IsWandField_12310_37877 f_4@@32))) (<= (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_8219) (o_2@@33 T@Ref) (f_4@@33 T@Field_12310_4668) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_4671_4668 f_4@@33))) (not (IsWandField_4671_4668 f_4@@33))) (<= (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_8219) (o_2@@34 T@Ref) (f_4@@34 T@Field_4667_11606) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_4667_49088 f_4@@34))) (not (IsWandField_4667_49104 f_4@@34))) (<= (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_8219) (o_2@@35 T@Ref) (f_4@@35 T@Field_8258_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_4667_53 f_4@@35))) (not (IsWandField_4667_53 f_4@@35))) (<= (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_8219) (o_2@@36 T@Ref) (f_4@@36 T@Field_4667_1203) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_4667_1203 f_4@@36))) (not (IsWandField_4667_1203 f_4@@36))) (<= (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_8219) (o_2@@37 T@Ref) (f_4@@37 T@Field_4667_4697) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_4667_30180 f_4@@37))) (not (IsWandField_4667_36838 f_4@@37))) (<= (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_8219) (o_2@@38 T@Ref) (f_4@@38 T@Field_8271_8272) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_4667_4668 f_4@@38))) (not (IsWandField_4667_4668 f_4@@38))) (<= (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_8219) (o_2@@39 T@Ref) (f_4@@39 T@Field_12323_12328) ) (! (= (HasDirectPerm_12310_29935 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12310_29935 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_8219) (o_2@@40 T@Ref) (f_4@@40 T@Field_12310_1203) ) (! (= (HasDirectPerm_12310_1203 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12310_1203 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_8219) (o_2@@41 T@Ref) (f_4@@41 T@Field_12310_53) ) (! (= (HasDirectPerm_12310_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12310_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_8219) (o_2@@42 T@Ref) (f_4@@42 T@Field_12310_12311) ) (! (= (HasDirectPerm_12310_4697 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12310_4697 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_8219) (o_2@@43 T@Ref) (f_4@@43 T@Field_12310_4668) ) (! (= (HasDirectPerm_12310_4668 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12310_4668 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_8219) (o_2@@44 T@Ref) (f_4@@44 T@Field_11601_11606) ) (! (= (HasDirectPerm_11587_28817 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11587_28817 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_8219) (o_2@@45 T@Ref) (f_4@@45 T@Field_11587_1203) ) (! (= (HasDirectPerm_11587_1203 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11587_1203 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_8219) (o_2@@46 T@Ref) (f_4@@46 T@Field_11587_53) ) (! (= (HasDirectPerm_11587_53 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11587_53 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_8219) (o_2@@47 T@Ref) (f_4@@47 T@Field_11618_11619) ) (! (= (HasDirectPerm_11587_4697 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11587_4697 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_8219) (o_2@@48 T@Ref) (f_4@@48 T@Field_11587_4668) ) (! (= (HasDirectPerm_11587_4668 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11587_4668 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_8219) (o_2@@49 T@Ref) (f_4@@49 T@Field_13559_13564) ) (! (= (HasDirectPerm_4696_27683 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4696_27683 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_8219) (o_2@@50 T@Ref) (f_4@@50 T@Field_4696_1203) ) (! (= (HasDirectPerm_4696_1203 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4696_1203 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_8219) (o_2@@51 T@Ref) (f_4@@51 T@Field_4696_53) ) (! (= (HasDirectPerm_4696_53 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4696_53 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_8219) (o_2@@52 T@Ref) (f_4@@52 T@Field_13546_13547) ) (! (= (HasDirectPerm_4696_4697 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4696_4697 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_8219) (o_2@@53 T@Ref) (f_4@@53 T@Field_4696_4668) ) (! (= (HasDirectPerm_4696_4668 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4696_4668 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_8219) (o_2@@54 T@Ref) (f_4@@54 T@Field_4667_11606) ) (! (= (HasDirectPerm_4667_26542 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4667_26542 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_8219) (o_2@@55 T@Ref) (f_4@@55 T@Field_4667_1203) ) (! (= (HasDirectPerm_4667_1203 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4667_1203 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_8219) (o_2@@56 T@Ref) (f_4@@56 T@Field_8258_53) ) (! (= (HasDirectPerm_4667_53 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4667_53 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_8219) (o_2@@57 T@Ref) (f_4@@57 T@Field_4667_4697) ) (! (= (HasDirectPerm_4667_4697 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4667_4697 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_8219) (o_2@@58 T@Ref) (f_4@@58 T@Field_8271_8272) ) (! (= (HasDirectPerm_4667_4668 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4667_4668 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) (arg3@@0 Real) (arg4@@0 T@Ref) ) (! (IsWandField_4619_1203 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) (arg3@@1 Real) (arg4@@1 T@Ref) ) (! (IsWandField_4632_4633 (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8198) (ExhaleHeap@@17 T@PolymorphicMapType_8198) (Mask@@58 T@PolymorphicMapType_8219) (o_22@@0 T@Ref) (f_30@@159 T@Field_12323_12328) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_12310_29935 Mask@@58 o_22@@0 f_30@@159) (= (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@20) o_22@@0 f_30@@159) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@17) o_22@@0 f_30@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| ExhaleHeap@@17) o_22@@0 f_30@@159))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8198) (ExhaleHeap@@18 T@PolymorphicMapType_8198) (Mask@@59 T@PolymorphicMapType_8219) (o_22@@1 T@Ref) (f_30@@160 T@Field_12310_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_12310_1203 Mask@@59 o_22@@1 f_30@@160) (= (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@21) o_22@@1 f_30@@160) (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@18) o_22@@1 f_30@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| ExhaleHeap@@18) o_22@@1 f_30@@160))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8198) (ExhaleHeap@@19 T@PolymorphicMapType_8198) (Mask@@60 T@PolymorphicMapType_8219) (o_22@@2 T@Ref) (f_30@@161 T@Field_12310_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_12310_53 Mask@@60 o_22@@2 f_30@@161) (= (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@22) o_22@@2 f_30@@161) (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@19) o_22@@2 f_30@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| ExhaleHeap@@19) o_22@@2 f_30@@161))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8198) (ExhaleHeap@@20 T@PolymorphicMapType_8198) (Mask@@61 T@PolymorphicMapType_8219) (o_22@@3 T@Ref) (f_30@@162 T@Field_12310_12311) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_12310_4697 Mask@@61 o_22@@3 f_30@@162) (= (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@23) o_22@@3 f_30@@162) (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@20) o_22@@3 f_30@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| ExhaleHeap@@20) o_22@@3 f_30@@162))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8198) (ExhaleHeap@@21 T@PolymorphicMapType_8198) (Mask@@62 T@PolymorphicMapType_8219) (o_22@@4 T@Ref) (f_30@@163 T@Field_12310_4668) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_12310_4668 Mask@@62 o_22@@4 f_30@@163) (= (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@24) o_22@@4 f_30@@163) (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@21) o_22@@4 f_30@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| ExhaleHeap@@21) o_22@@4 f_30@@163))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8198) (ExhaleHeap@@22 T@PolymorphicMapType_8198) (Mask@@63 T@PolymorphicMapType_8219) (o_22@@5 T@Ref) (f_30@@164 T@Field_11601_11606) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_11587_28817 Mask@@63 o_22@@5 f_30@@164) (= (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@25) o_22@@5 f_30@@164) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@22) o_22@@5 f_30@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| ExhaleHeap@@22) o_22@@5 f_30@@164))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8198) (ExhaleHeap@@23 T@PolymorphicMapType_8198) (Mask@@64 T@PolymorphicMapType_8219) (o_22@@6 T@Ref) (f_30@@165 T@Field_11587_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_11587_1203 Mask@@64 o_22@@6 f_30@@165) (= (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@26) o_22@@6 f_30@@165) (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@23) o_22@@6 f_30@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| ExhaleHeap@@23) o_22@@6 f_30@@165))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8198) (ExhaleHeap@@24 T@PolymorphicMapType_8198) (Mask@@65 T@PolymorphicMapType_8219) (o_22@@7 T@Ref) (f_30@@166 T@Field_11587_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_11587_53 Mask@@65 o_22@@7 f_30@@166) (= (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@27) o_22@@7 f_30@@166) (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@24) o_22@@7 f_30@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| ExhaleHeap@@24) o_22@@7 f_30@@166))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8198) (ExhaleHeap@@25 T@PolymorphicMapType_8198) (Mask@@66 T@PolymorphicMapType_8219) (o_22@@8 T@Ref) (f_30@@167 T@Field_11618_11619) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_11587_4697 Mask@@66 o_22@@8 f_30@@167) (= (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@28) o_22@@8 f_30@@167) (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@25) o_22@@8 f_30@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| ExhaleHeap@@25) o_22@@8 f_30@@167))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8198) (ExhaleHeap@@26 T@PolymorphicMapType_8198) (Mask@@67 T@PolymorphicMapType_8219) (o_22@@9 T@Ref) (f_30@@168 T@Field_11587_4668) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_11587_4668 Mask@@67 o_22@@9 f_30@@168) (= (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@29) o_22@@9 f_30@@168) (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@26) o_22@@9 f_30@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| ExhaleHeap@@26) o_22@@9 f_30@@168))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8198) (ExhaleHeap@@27 T@PolymorphicMapType_8198) (Mask@@68 T@PolymorphicMapType_8219) (o_22@@10 T@Ref) (f_30@@169 T@Field_13559_13564) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_4696_27683 Mask@@68 o_22@@10 f_30@@169) (= (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@30) o_22@@10 f_30@@169) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@27) o_22@@10 f_30@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| ExhaleHeap@@27) o_22@@10 f_30@@169))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8198) (ExhaleHeap@@28 T@PolymorphicMapType_8198) (Mask@@69 T@PolymorphicMapType_8219) (o_22@@11 T@Ref) (f_30@@170 T@Field_4696_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_4696_1203 Mask@@69 o_22@@11 f_30@@170) (= (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@31) o_22@@11 f_30@@170) (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@28) o_22@@11 f_30@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| ExhaleHeap@@28) o_22@@11 f_30@@170))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8198) (ExhaleHeap@@29 T@PolymorphicMapType_8198) (Mask@@70 T@PolymorphicMapType_8219) (o_22@@12 T@Ref) (f_30@@171 T@Field_4696_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_4696_53 Mask@@70 o_22@@12 f_30@@171) (= (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@32) o_22@@12 f_30@@171) (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@29) o_22@@12 f_30@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| ExhaleHeap@@29) o_22@@12 f_30@@171))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8198) (ExhaleHeap@@30 T@PolymorphicMapType_8198) (Mask@@71 T@PolymorphicMapType_8219) (o_22@@13 T@Ref) (f_30@@172 T@Field_13546_13547) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_4696_4697 Mask@@71 o_22@@13 f_30@@172) (= (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@33) o_22@@13 f_30@@172) (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@30) o_22@@13 f_30@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| ExhaleHeap@@30) o_22@@13 f_30@@172))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8198) (ExhaleHeap@@31 T@PolymorphicMapType_8198) (Mask@@72 T@PolymorphicMapType_8219) (o_22@@14 T@Ref) (f_30@@173 T@Field_4696_4668) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_4696_4668 Mask@@72 o_22@@14 f_30@@173) (= (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@34) o_22@@14 f_30@@173) (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@31) o_22@@14 f_30@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| ExhaleHeap@@31) o_22@@14 f_30@@173))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8198) (ExhaleHeap@@32 T@PolymorphicMapType_8198) (Mask@@73 T@PolymorphicMapType_8219) (o_22@@15 T@Ref) (f_30@@174 T@Field_4667_11606) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_4667_26542 Mask@@73 o_22@@15 f_30@@174) (= (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@35) o_22@@15 f_30@@174) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@32) o_22@@15 f_30@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| ExhaleHeap@@32) o_22@@15 f_30@@174))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8198) (ExhaleHeap@@33 T@PolymorphicMapType_8198) (Mask@@74 T@PolymorphicMapType_8219) (o_22@@16 T@Ref) (f_30@@175 T@Field_4667_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_4667_1203 Mask@@74 o_22@@16 f_30@@175) (= (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@36) o_22@@16 f_30@@175) (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@33) o_22@@16 f_30@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| ExhaleHeap@@33) o_22@@16 f_30@@175))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_8198) (ExhaleHeap@@34 T@PolymorphicMapType_8198) (Mask@@75 T@PolymorphicMapType_8219) (o_22@@17 T@Ref) (f_30@@176 T@Field_8258_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_4667_53 Mask@@75 o_22@@17 f_30@@176) (= (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@37) o_22@@17 f_30@@176) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@34) o_22@@17 f_30@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| ExhaleHeap@@34) o_22@@17 f_30@@176))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8198) (ExhaleHeap@@35 T@PolymorphicMapType_8198) (Mask@@76 T@PolymorphicMapType_8219) (o_22@@18 T@Ref) (f_30@@177 T@Field_4667_4697) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_4667_4697 Mask@@76 o_22@@18 f_30@@177) (= (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@38) o_22@@18 f_30@@177) (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@35) o_22@@18 f_30@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| ExhaleHeap@@35) o_22@@18 f_30@@177))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_8198) (ExhaleHeap@@36 T@PolymorphicMapType_8198) (Mask@@77 T@PolymorphicMapType_8219) (o_22@@19 T@Ref) (f_30@@178 T@Field_8271_8272) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_4667_4668 Mask@@77 o_22@@19 f_30@@178) (= (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@39) o_22@@19 f_30@@178) (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@36) o_22@@19 f_30@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| ExhaleHeap@@36) o_22@@19 f_30@@178))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) (arg3@@2 Real) (arg4@@2 T@Ref) ) (!  (not (IsPredicateField_4619_1203 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg3@@3 Real) (arg4@@3 T@Ref) ) (!  (not (IsPredicateField_4632_4633 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) (arg3@@4 Real) (arg4@@4 T@Ref) ) (! (= (|wand#sm| arg1@@4 arg2@@4 arg3@@4 arg4@@4) (WandMaskField_4632 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_4632 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_11601_11606) ) (! (= (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_11587_53) ) (! (= (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_11587_1203) ) (! (= (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_11618_11619) ) (! (= (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_11587_4668) ) (! (= (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_13559_13564) ) (! (= (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_4696_53) ) (! (= (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_4696_1203) ) (! (= (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_13546_13547) ) (! (= (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_4696_4668) ) (! (= (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_12323_12328) ) (! (= (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_12310_53) ) (! (= (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_12310_1203) ) (! (= (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_12310_12311) ) (! (= (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_12310_4668) ) (! (= (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_4667_11606) ) (! (= (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_8258_53) ) (! (= (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_4667_1203) ) (! (= (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_4667_4697) ) (! (= (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_8271_8272) ) (! (= (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8219) (SummandMask1 T@PolymorphicMapType_8219) (SummandMask2 T@PolymorphicMapType_8219) (o_2@@79 T@Ref) (f_4@@79 T@Field_11601_11606) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8219_4619_46963#PolymorphicMapType_8219| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8219) (SummandMask1@@0 T@PolymorphicMapType_8219) (SummandMask2@@0 T@PolymorphicMapType_8219) (o_2@@80 T@Ref) (f_4@@80 T@Field_11587_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8219_4619_53#PolymorphicMapType_8219| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8219) (SummandMask1@@1 T@PolymorphicMapType_8219) (SummandMask2@@1 T@PolymorphicMapType_8219) (o_2@@81 T@Ref) (f_4@@81 T@Field_11587_1203) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8219_4619_1203#PolymorphicMapType_8219| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8219) (SummandMask1@@2 T@PolymorphicMapType_8219) (SummandMask2@@2 T@PolymorphicMapType_8219) (o_2@@82 T@Ref) (f_4@@82 T@Field_11618_11619) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8219_4619_4672#PolymorphicMapType_8219| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8219) (SummandMask1@@3 T@PolymorphicMapType_8219) (SummandMask2@@3 T@PolymorphicMapType_8219) (o_2@@83 T@Ref) (f_4@@83 T@Field_11587_4668) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8219_4619_4668#PolymorphicMapType_8219| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8219) (SummandMask1@@4 T@PolymorphicMapType_8219) (SummandMask2@@4 T@PolymorphicMapType_8219) (o_2@@84 T@Ref) (f_4@@84 T@Field_13559_13564) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8219_4696_46549#PolymorphicMapType_8219| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8219) (SummandMask1@@5 T@PolymorphicMapType_8219) (SummandMask2@@5 T@PolymorphicMapType_8219) (o_2@@85 T@Ref) (f_4@@85 T@Field_4696_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8219_4696_53#PolymorphicMapType_8219| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8219) (SummandMask1@@6 T@PolymorphicMapType_8219) (SummandMask2@@6 T@PolymorphicMapType_8219) (o_2@@86 T@Ref) (f_4@@86 T@Field_4696_1203) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8219_4696_1203#PolymorphicMapType_8219| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8219) (SummandMask1@@7 T@PolymorphicMapType_8219) (SummandMask2@@7 T@PolymorphicMapType_8219) (o_2@@87 T@Ref) (f_4@@87 T@Field_13546_13547) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8219_4696_4697#PolymorphicMapType_8219| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8219) (SummandMask1@@8 T@PolymorphicMapType_8219) (SummandMask2@@8 T@PolymorphicMapType_8219) (o_2@@88 T@Ref) (f_4@@88 T@Field_4696_4668) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8219_4696_4668#PolymorphicMapType_8219| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_8219) (SummandMask1@@9 T@PolymorphicMapType_8219) (SummandMask2@@9 T@PolymorphicMapType_8219) (o_2@@89 T@Ref) (f_4@@89 T@Field_12323_12328) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8219_4671_46138#PolymorphicMapType_8219| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_8219) (SummandMask1@@10 T@PolymorphicMapType_8219) (SummandMask2@@10 T@PolymorphicMapType_8219) (o_2@@90 T@Ref) (f_4@@90 T@Field_12310_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8219_4671_53#PolymorphicMapType_8219| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_8219) (SummandMask1@@11 T@PolymorphicMapType_8219) (SummandMask2@@11 T@PolymorphicMapType_8219) (o_2@@91 T@Ref) (f_4@@91 T@Field_12310_1203) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8219_4671_1203#PolymorphicMapType_8219| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_8219) (SummandMask1@@12 T@PolymorphicMapType_8219) (SummandMask2@@12 T@PolymorphicMapType_8219) (o_2@@92 T@Ref) (f_4@@92 T@Field_12310_12311) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8219_4671_4672#PolymorphicMapType_8219| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_8219) (SummandMask1@@13 T@PolymorphicMapType_8219) (SummandMask2@@13 T@PolymorphicMapType_8219) (o_2@@93 T@Ref) (f_4@@93 T@Field_12310_4668) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8219_4671_4668#PolymorphicMapType_8219| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_8219) (SummandMask1@@14 T@PolymorphicMapType_8219) (SummandMask2@@14 T@PolymorphicMapType_8219) (o_2@@94 T@Ref) (f_4@@94 T@Field_4667_11606) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_8219_4667_45727#PolymorphicMapType_8219| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_8219) (SummandMask1@@15 T@PolymorphicMapType_8219) (SummandMask2@@15 T@PolymorphicMapType_8219) (o_2@@95 T@Ref) (f_4@@95 T@Field_8258_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_8219_4667_53#PolymorphicMapType_8219| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_8219) (SummandMask1@@16 T@PolymorphicMapType_8219) (SummandMask2@@16 T@PolymorphicMapType_8219) (o_2@@96 T@Ref) (f_4@@96 T@Field_4667_1203) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_8219_4667_1203#PolymorphicMapType_8219| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_8219) (SummandMask1@@17 T@PolymorphicMapType_8219) (SummandMask2@@17 T@PolymorphicMapType_8219) (o_2@@97 T@Ref) (f_4@@97 T@Field_4667_4697) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_8219_4667_4672#PolymorphicMapType_8219| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_8219) (SummandMask1@@18 T@PolymorphicMapType_8219) (SummandMask2@@18 T@PolymorphicMapType_8219) (o_2@@98 T@Ref) (f_4@@98 T@Field_8271_8272) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_8219_4667_4668#PolymorphicMapType_8219| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_4671_4672 (P x@@3)) 0)
 :qid |stdinbpl.236:15|
 :skolemid |31|
 :pattern ( (P x@@3))
)))
(assert (forall ((y@@3 T@Ref) ) (! (= (getPredWandId_4696_4697 (Q y@@3)) 1)
 :qid |stdinbpl.298:15|
 :skolemid |37|
 :pattern ( (Q y@@3))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_8198) (o_35 T@Ref) (f_11 T@Field_4696_1203) (v Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@40) (store (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@40) o_35 f_11 v) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@40) (store (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@40) o_35 f_11 v) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@40) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_8198) (o_35@@0 T@Ref) (f_11@@0 T@Field_13559_13564) (v@@0 T@PolymorphicMapType_8747) ) (! (succHeap Heap@@41 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@41) (store (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@41) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@41) (store (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@41) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@41) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_8198) (o_35@@1 T@Ref) (f_11@@1 T@Field_13546_13547) (v@@1 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@42) (store (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@42) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@42) (store (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@42) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@42) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_8198) (o_35@@2 T@Ref) (f_11@@2 T@Field_4696_4668) (v@@2 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@43) (store (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@43) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@43) (store (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@43) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@43) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_8198) (o_35@@3 T@Ref) (f_11@@3 T@Field_4696_53) (v@@3 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@44) (store (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@44) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@44) (store (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@44) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@44) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_8198) (o_35@@4 T@Ref) (f_11@@4 T@Field_11587_1203) (v@@4 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@45) (store (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@45) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@45) (store (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@45) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@45) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_8198) (o_35@@5 T@Ref) (f_11@@5 T@Field_11601_11606) (v@@5 T@PolymorphicMapType_8747) ) (! (succHeap Heap@@46 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@46) (store (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@46) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@46) (store (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@46) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@46) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_8198) (o_35@@6 T@Ref) (f_11@@6 T@Field_11618_11619) (v@@6 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@47) (store (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@47) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@47) (store (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@47) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@47) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_8198) (o_35@@7 T@Ref) (f_11@@7 T@Field_11587_4668) (v@@7 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@48) (store (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@48) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@48) (store (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@48) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@48) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_8198) (o_35@@8 T@Ref) (f_11@@8 T@Field_11587_53) (v@@8 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@49) (store (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@49) o_35@@8 f_11@@8 v@@8) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@49) (store (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@49) o_35@@8 f_11@@8 v@@8) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@49) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_8198) (o_35@@9 T@Ref) (f_11@@9 T@Field_12310_1203) (v@@9 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@50) (store (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@50) o_35@@9 f_11@@9 v@@9)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@50) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@50) (store (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@50) o_35@@9 f_11@@9 v@@9)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_8198) (o_35@@10 T@Ref) (f_11@@10 T@Field_12323_12328) (v@@10 T@PolymorphicMapType_8747) ) (! (succHeap Heap@@51 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@51) (store (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@51) o_35@@10 f_11@@10 v@@10) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@51) (store (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@51) o_35@@10 f_11@@10 v@@10) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@51) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_8198) (o_35@@11 T@Ref) (f_11@@11 T@Field_12310_12311) (v@@11 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@52) (store (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@52) o_35@@11 f_11@@11 v@@11) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@52) (store (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@52) o_35@@11 f_11@@11 v@@11) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@52) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_8198) (o_35@@12 T@Ref) (f_11@@12 T@Field_12310_4668) (v@@12 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@53) (store (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@53) o_35@@12 f_11@@12 v@@12) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@53) (store (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@53) o_35@@12 f_11@@12 v@@12) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@53) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_8198) (o_35@@13 T@Ref) (f_11@@13 T@Field_12310_53) (v@@13 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@54) (store (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@54) o_35@@13 f_11@@13 v@@13) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@54) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@54) (store (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@54) o_35@@13 f_11@@13 v@@13) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_8198) (o_35@@14 T@Ref) (f_11@@14 T@Field_4667_1203) (v@@14 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@55) (store (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@55) o_35@@14 f_11@@14 v@@14) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@55) (store (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@55) o_35@@14 f_11@@14 v@@14) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@55) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_8198) (o_35@@15 T@Ref) (f_11@@15 T@Field_4667_11606) (v@@15 T@PolymorphicMapType_8747) ) (! (succHeap Heap@@56 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@56) (store (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@56) o_35@@15 f_11@@15 v@@15) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@56) (store (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@56) o_35@@15 f_11@@15 v@@15) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@56) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_8198) (o_35@@16 T@Ref) (f_11@@16 T@Field_4667_4697) (v@@16 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@57) (store (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@57) o_35@@16 f_11@@16 v@@16) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@57) (store (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@57) o_35@@16 f_11@@16 v@@16) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@57) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_8198) (o_35@@17 T@Ref) (f_11@@17 T@Field_8271_8272) (v@@17 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@58) (store (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@58) o_35@@17 f_11@@17 v@@17) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@58) (store (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@58) o_35@@17 f_11@@17 v@@17) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@58) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_8198) (o_35@@18 T@Ref) (f_11@@18 T@Field_8258_53) (v@@18 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_8198 (store (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@59) o_35@@18 f_11@@18 v@@18) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8198 (store (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@59) o_35@@18 f_11@@18 v@@18) (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4671_4672#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4625_17087#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4675_17206#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4696_4697#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4700_21055#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4667_4697#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4667_1203#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4667_26584#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4696_4668#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4696_53#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_4696_1203#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_11587_4668#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_11587_4697#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_11587_53#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_11587_1203#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_12310_4668#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_12310_53#PolymorphicMapType_8198| Heap@@59) (|PolymorphicMapType_8198_12310_1203#PolymorphicMapType_8198| Heap@@59)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_4671 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.228:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_4671 (P x@@4)))
)))
(assert (forall ((y@@4 T@Ref) ) (! (= (PredicateMaskField_4696 (Q y@@4)) (|Q#sm| y@@4))
 :qid |stdinbpl.290:15|
 :skolemid |35|
 :pattern ( (PredicateMaskField_4696 (Q y@@4)))
)))
(assert (forall ((o_35@@19 T@Ref) (f_31 T@Field_8271_8272) (Heap@@60 T@PolymorphicMapType_8198) ) (!  (=> (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@60) o_35@@19 $allocated) (select (|PolymorphicMapType_8198_4487_53#PolymorphicMapType_8198| Heap@@60) (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@60) o_35@@19 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8198_4490_4491#PolymorphicMapType_8198| Heap@@60) o_35@@19 f_31))
)))
(assert (forall ((p@@4 T@Field_13546_13547) (v_1@@3 T@FrameType) (q T@Field_13546_13547) (w@@3 T@FrameType) (r T@Field_13546_13547) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13546_13546 p@@4 v_1@@3 q w@@3) (InsidePredicate_13546_13546 q w@@3 r u)) (InsidePredicate_13546_13546 p@@4 v_1@@3 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_13546 p@@4 v_1@@3 q w@@3) (InsidePredicate_13546_13546 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_13546_13547) (v_1@@4 T@FrameType) (q@@0 T@Field_13546_13547) (w@@4 T@FrameType) (r@@0 T@Field_12310_12311) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_13546 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_13546_12310 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_13546_12310 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_13546 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_13546_12310 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_13546_13547) (v_1@@5 T@FrameType) (q@@1 T@Field_13546_13547) (w@@5 T@FrameType) (r@@1 T@Field_11618_11619) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_13546 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_13546_11587 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_13546_11587 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_13546 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_13546_11587 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_13546_13547) (v_1@@6 T@FrameType) (q@@2 T@Field_13546_13547) (w@@6 T@FrameType) (r@@2 T@Field_4667_4697) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_13546 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_13546_8258 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_13546_8258 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_13546 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_13546_8258 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_13546_13547) (v_1@@7 T@FrameType) (q@@3 T@Field_12310_12311) (w@@7 T@FrameType) (r@@3 T@Field_13546_13547) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_12310 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_12310_13546 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_13546_13546 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_12310 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_12310_13546 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_13546_13547) (v_1@@8 T@FrameType) (q@@4 T@Field_12310_12311) (w@@8 T@FrameType) (r@@4 T@Field_12310_12311) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_12310 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_12310_12310 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_13546_12310 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_12310 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_12310_12310 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_13546_13547) (v_1@@9 T@FrameType) (q@@5 T@Field_12310_12311) (w@@9 T@FrameType) (r@@5 T@Field_11618_11619) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_12310 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_12310_11587 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_13546_11587 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_12310 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_12310_11587 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_13546_13547) (v_1@@10 T@FrameType) (q@@6 T@Field_12310_12311) (w@@10 T@FrameType) (r@@6 T@Field_4667_4697) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_12310 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_12310_8258 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_13546_8258 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_12310 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_12310_8258 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_13546_13547) (v_1@@11 T@FrameType) (q@@7 T@Field_11618_11619) (w@@11 T@FrameType) (r@@7 T@Field_13546_13547) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_11587 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_11587_13546 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_13546_13546 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_11587 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_11587_13546 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_13546_13547) (v_1@@12 T@FrameType) (q@@8 T@Field_11618_11619) (w@@12 T@FrameType) (r@@8 T@Field_12310_12311) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_11587 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_11587_12310 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_13546_12310 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_11587 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_11587_12310 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_13546_13547) (v_1@@13 T@FrameType) (q@@9 T@Field_11618_11619) (w@@13 T@FrameType) (r@@9 T@Field_11618_11619) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_11587 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_11587_11587 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_13546_11587 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_11587 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_11587_11587 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_13546_13547) (v_1@@14 T@FrameType) (q@@10 T@Field_11618_11619) (w@@14 T@FrameType) (r@@10 T@Field_4667_4697) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_11587 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_11587_8258 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_13546_8258 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_11587 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_11587_8258 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_13546_13547) (v_1@@15 T@FrameType) (q@@11 T@Field_4667_4697) (w@@15 T@FrameType) (r@@11 T@Field_13546_13547) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_8258 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_8258_13546 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_13546_13546 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_8258 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_8258_13546 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_13546_13547) (v_1@@16 T@FrameType) (q@@12 T@Field_4667_4697) (w@@16 T@FrameType) (r@@12 T@Field_12310_12311) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_8258 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_8258_12310 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_13546_12310 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_8258 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_8258_12310 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_13546_13547) (v_1@@17 T@FrameType) (q@@13 T@Field_4667_4697) (w@@17 T@FrameType) (r@@13 T@Field_11618_11619) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_8258 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_8258_11587 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_13546_11587 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_8258 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_8258_11587 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_13546_13547) (v_1@@18 T@FrameType) (q@@14 T@Field_4667_4697) (w@@18 T@FrameType) (r@@14 T@Field_4667_4697) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_13546_8258 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_8258_8258 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_13546_8258 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13546_8258 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_8258_8258 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_12310_12311) (v_1@@19 T@FrameType) (q@@15 T@Field_13546_13547) (w@@19 T@FrameType) (r@@15 T@Field_13546_13547) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_13546 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_13546_13546 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_12310_13546 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_13546 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_13546_13546 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_12310_12311) (v_1@@20 T@FrameType) (q@@16 T@Field_13546_13547) (w@@20 T@FrameType) (r@@16 T@Field_12310_12311) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_13546 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_13546_12310 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_12310_12310 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_13546 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_13546_12310 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_12310_12311) (v_1@@21 T@FrameType) (q@@17 T@Field_13546_13547) (w@@21 T@FrameType) (r@@17 T@Field_11618_11619) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_13546 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_13546_11587 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_12310_11587 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_13546 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_13546_11587 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_12310_12311) (v_1@@22 T@FrameType) (q@@18 T@Field_13546_13547) (w@@22 T@FrameType) (r@@18 T@Field_4667_4697) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_13546 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_13546_8258 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_12310_8258 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_13546 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_13546_8258 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_12310_12311) (v_1@@23 T@FrameType) (q@@19 T@Field_12310_12311) (w@@23 T@FrameType) (r@@19 T@Field_13546_13547) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_12310 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_12310_13546 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_12310_13546 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_12310 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_12310_13546 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_12310_12311) (v_1@@24 T@FrameType) (q@@20 T@Field_12310_12311) (w@@24 T@FrameType) (r@@20 T@Field_12310_12311) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_12310 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_12310_12310 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_12310_12310 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_12310 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_12310_12310 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_12310_12311) (v_1@@25 T@FrameType) (q@@21 T@Field_12310_12311) (w@@25 T@FrameType) (r@@21 T@Field_11618_11619) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_12310 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_12310_11587 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_12310_11587 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_12310 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_12310_11587 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_12310_12311) (v_1@@26 T@FrameType) (q@@22 T@Field_12310_12311) (w@@26 T@FrameType) (r@@22 T@Field_4667_4697) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_12310 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_12310_8258 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_12310_8258 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_12310 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_12310_8258 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_12310_12311) (v_1@@27 T@FrameType) (q@@23 T@Field_11618_11619) (w@@27 T@FrameType) (r@@23 T@Field_13546_13547) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_11587 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_11587_13546 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_12310_13546 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_11587 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_11587_13546 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_12310_12311) (v_1@@28 T@FrameType) (q@@24 T@Field_11618_11619) (w@@28 T@FrameType) (r@@24 T@Field_12310_12311) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_11587 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_11587_12310 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_12310_12310 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_11587 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_11587_12310 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_12310_12311) (v_1@@29 T@FrameType) (q@@25 T@Field_11618_11619) (w@@29 T@FrameType) (r@@25 T@Field_11618_11619) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_11587 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_11587_11587 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_12310_11587 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_11587 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_11587_11587 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_12310_12311) (v_1@@30 T@FrameType) (q@@26 T@Field_11618_11619) (w@@30 T@FrameType) (r@@26 T@Field_4667_4697) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_11587 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_11587_8258 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_12310_8258 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_11587 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_11587_8258 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_12310_12311) (v_1@@31 T@FrameType) (q@@27 T@Field_4667_4697) (w@@31 T@FrameType) (r@@27 T@Field_13546_13547) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_8258 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_8258_13546 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_12310_13546 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_8258 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_8258_13546 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_12310_12311) (v_1@@32 T@FrameType) (q@@28 T@Field_4667_4697) (w@@32 T@FrameType) (r@@28 T@Field_12310_12311) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_8258 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_8258_12310 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_12310_12310 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_8258 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_8258_12310 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_12310_12311) (v_1@@33 T@FrameType) (q@@29 T@Field_4667_4697) (w@@33 T@FrameType) (r@@29 T@Field_11618_11619) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_8258 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_8258_11587 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_12310_11587 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_8258 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_8258_11587 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_12310_12311) (v_1@@34 T@FrameType) (q@@30 T@Field_4667_4697) (w@@34 T@FrameType) (r@@30 T@Field_4667_4697) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_12310_8258 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_8258_8258 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_12310_8258 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12310_8258 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_8258_8258 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_11618_11619) (v_1@@35 T@FrameType) (q@@31 T@Field_13546_13547) (w@@35 T@FrameType) (r@@31 T@Field_13546_13547) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_13546 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_13546_13546 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_11587_13546 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_13546 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_13546_13546 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_11618_11619) (v_1@@36 T@FrameType) (q@@32 T@Field_13546_13547) (w@@36 T@FrameType) (r@@32 T@Field_12310_12311) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_13546 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_13546_12310 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_11587_12310 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_13546 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_13546_12310 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_11618_11619) (v_1@@37 T@FrameType) (q@@33 T@Field_13546_13547) (w@@37 T@FrameType) (r@@33 T@Field_11618_11619) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_13546 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_13546_11587 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_11587_11587 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_13546 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_13546_11587 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_11618_11619) (v_1@@38 T@FrameType) (q@@34 T@Field_13546_13547) (w@@38 T@FrameType) (r@@34 T@Field_4667_4697) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_13546 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_13546_8258 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_11587_8258 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_13546 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_13546_8258 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_11618_11619) (v_1@@39 T@FrameType) (q@@35 T@Field_12310_12311) (w@@39 T@FrameType) (r@@35 T@Field_13546_13547) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_12310 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_12310_13546 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_11587_13546 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_12310 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_12310_13546 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_11618_11619) (v_1@@40 T@FrameType) (q@@36 T@Field_12310_12311) (w@@40 T@FrameType) (r@@36 T@Field_12310_12311) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_12310 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_12310_12310 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_11587_12310 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_12310 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_12310_12310 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_11618_11619) (v_1@@41 T@FrameType) (q@@37 T@Field_12310_12311) (w@@41 T@FrameType) (r@@37 T@Field_11618_11619) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_12310 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_12310_11587 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_11587_11587 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_12310 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_12310_11587 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_11618_11619) (v_1@@42 T@FrameType) (q@@38 T@Field_12310_12311) (w@@42 T@FrameType) (r@@38 T@Field_4667_4697) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_12310 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_12310_8258 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_11587_8258 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_12310 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_12310_8258 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_11618_11619) (v_1@@43 T@FrameType) (q@@39 T@Field_11618_11619) (w@@43 T@FrameType) (r@@39 T@Field_13546_13547) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_11587 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_11587_13546 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_11587_13546 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_11587 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_11587_13546 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_11618_11619) (v_1@@44 T@FrameType) (q@@40 T@Field_11618_11619) (w@@44 T@FrameType) (r@@40 T@Field_12310_12311) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_11587 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_11587_12310 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_11587_12310 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_11587 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_11587_12310 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_11618_11619) (v_1@@45 T@FrameType) (q@@41 T@Field_11618_11619) (w@@45 T@FrameType) (r@@41 T@Field_11618_11619) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_11587 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_11587_11587 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_11587_11587 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_11587 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_11587_11587 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_11618_11619) (v_1@@46 T@FrameType) (q@@42 T@Field_11618_11619) (w@@46 T@FrameType) (r@@42 T@Field_4667_4697) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_11587 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_11587_8258 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_11587_8258 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_11587 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_11587_8258 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_11618_11619) (v_1@@47 T@FrameType) (q@@43 T@Field_4667_4697) (w@@47 T@FrameType) (r@@43 T@Field_13546_13547) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_8258 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_8258_13546 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_11587_13546 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_8258 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_8258_13546 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_11618_11619) (v_1@@48 T@FrameType) (q@@44 T@Field_4667_4697) (w@@48 T@FrameType) (r@@44 T@Field_12310_12311) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_8258 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_8258_12310 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_11587_12310 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_8258 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_8258_12310 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_11618_11619) (v_1@@49 T@FrameType) (q@@45 T@Field_4667_4697) (w@@49 T@FrameType) (r@@45 T@Field_11618_11619) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_8258 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_8258_11587 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_11587_11587 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_8258 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_8258_11587 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_11618_11619) (v_1@@50 T@FrameType) (q@@46 T@Field_4667_4697) (w@@50 T@FrameType) (r@@46 T@Field_4667_4697) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_11587_8258 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_8258_8258 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_11587_8258 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11587_8258 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_8258_8258 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_4667_4697) (v_1@@51 T@FrameType) (q@@47 T@Field_13546_13547) (w@@51 T@FrameType) (r@@47 T@Field_13546_13547) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_13546 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_13546_13546 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_8258_13546 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_13546 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_13546_13546 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_4667_4697) (v_1@@52 T@FrameType) (q@@48 T@Field_13546_13547) (w@@52 T@FrameType) (r@@48 T@Field_12310_12311) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_13546 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_13546_12310 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_8258_12310 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_13546 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_13546_12310 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_4667_4697) (v_1@@53 T@FrameType) (q@@49 T@Field_13546_13547) (w@@53 T@FrameType) (r@@49 T@Field_11618_11619) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_13546 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_13546_11587 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_8258_11587 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_13546 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_13546_11587 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_4667_4697) (v_1@@54 T@FrameType) (q@@50 T@Field_13546_13547) (w@@54 T@FrameType) (r@@50 T@Field_4667_4697) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_13546 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_13546_8258 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_8258_8258 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_13546 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_13546_8258 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_4667_4697) (v_1@@55 T@FrameType) (q@@51 T@Field_12310_12311) (w@@55 T@FrameType) (r@@51 T@Field_13546_13547) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_12310 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_12310_13546 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_8258_13546 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_12310 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_12310_13546 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_4667_4697) (v_1@@56 T@FrameType) (q@@52 T@Field_12310_12311) (w@@56 T@FrameType) (r@@52 T@Field_12310_12311) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_12310 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_12310_12310 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_8258_12310 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_12310 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_12310_12310 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_4667_4697) (v_1@@57 T@FrameType) (q@@53 T@Field_12310_12311) (w@@57 T@FrameType) (r@@53 T@Field_11618_11619) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_12310 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_12310_11587 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_8258_11587 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_12310 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_12310_11587 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_4667_4697) (v_1@@58 T@FrameType) (q@@54 T@Field_12310_12311) (w@@58 T@FrameType) (r@@54 T@Field_4667_4697) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_12310 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_12310_8258 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_8258_8258 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_12310 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_12310_8258 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_4667_4697) (v_1@@59 T@FrameType) (q@@55 T@Field_11618_11619) (w@@59 T@FrameType) (r@@55 T@Field_13546_13547) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_11587 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_11587_13546 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_8258_13546 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_11587 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_11587_13546 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_4667_4697) (v_1@@60 T@FrameType) (q@@56 T@Field_11618_11619) (w@@60 T@FrameType) (r@@56 T@Field_12310_12311) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_11587 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_11587_12310 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_8258_12310 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_11587 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_11587_12310 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_4667_4697) (v_1@@61 T@FrameType) (q@@57 T@Field_11618_11619) (w@@61 T@FrameType) (r@@57 T@Field_11618_11619) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_11587 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_11587_11587 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_8258_11587 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_11587 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_11587_11587 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_4667_4697) (v_1@@62 T@FrameType) (q@@58 T@Field_11618_11619) (w@@62 T@FrameType) (r@@58 T@Field_4667_4697) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_11587 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_11587_8258 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_8258_8258 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_11587 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_11587_8258 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_4667_4697) (v_1@@63 T@FrameType) (q@@59 T@Field_4667_4697) (w@@63 T@FrameType) (r@@59 T@Field_13546_13547) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_8258 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_8258_13546 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_8258_13546 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_8258 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_8258_13546 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_4667_4697) (v_1@@64 T@FrameType) (q@@60 T@Field_4667_4697) (w@@64 T@FrameType) (r@@60 T@Field_12310_12311) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_8258 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_8258_12310 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_8258_12310 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_8258 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_8258_12310 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_4667_4697) (v_1@@65 T@FrameType) (q@@61 T@Field_4667_4697) (w@@65 T@FrameType) (r@@61 T@Field_11618_11619) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_8258 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_8258_11587 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_8258_11587 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_8258 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_8258_11587 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_4667_4697) (v_1@@66 T@FrameType) (q@@62 T@Field_4667_4697) (w@@66 T@FrameType) (r@@62 T@Field_4667_4697) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_8258_8258 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_8258_8258 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_8258_8258 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8258_8258 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_8258_8258 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) (arg3@@5 Real) (arg4@@5 T@Ref) (arg1_2 T@Ref) (arg2_2 T@Ref) (arg3_2 Real) (arg4_2 T@Ref) ) (!  (=> (= (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2)) (and (= arg1@@5 arg1_2) (and (= arg2@@5 arg2_2) (and (= arg3@@5 arg3_2) (= arg4@@5 arg4_2)))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |Q#definedness|)
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
