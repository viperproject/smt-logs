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
(declare-sort T@Field_47196_53 0)
(declare-sort T@Field_47209_47210 0)
(declare-sort T@Field_53871_53872 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_53405_3430 0)
(declare-sort T@Field_56628_56633 0)
(declare-sort T@Field_58346_58347 0)
(declare-sort T@Field_60819_60824 0)
(declare-sort T@Field_25322_25613 0)
(declare-sort T@Field_25322_56633 0)
(declare-sort T@Field_25612_25323 0)
(declare-sort T@Field_25612_53 0)
(declare-sort T@Field_25612_3430 0)
(declare-sort T@Field_25637_25323 0)
(declare-sort T@Field_25637_53 0)
(declare-sort T@Field_25637_3430 0)
(declare-datatypes ((T@PolymorphicMapType_47157 0)) (((PolymorphicMapType_47157 (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| (Array T@Ref T@Field_53871_53872 Real)) (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| (Array T@Ref T@Field_53405_3430 Real)) (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| (Array T@Ref T@Field_47209_47210 Real)) (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| (Array T@Ref T@Field_58346_58347 Real)) (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| (Array T@Ref T@Field_25612_3430 Real)) (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| (Array T@Ref T@Field_25612_25323 Real)) (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| (Array T@Ref T@Field_25612_53 Real)) (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| (Array T@Ref T@Field_56628_56633 Real)) (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| (Array T@Ref T@Field_25322_25613 Real)) (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| (Array T@Ref T@Field_47196_53 Real)) (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| (Array T@Ref T@Field_25322_56633 Real)) (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| (Array T@Ref T@Field_25637_3430 Real)) (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| (Array T@Ref T@Field_25637_25323 Real)) (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| (Array T@Ref T@Field_25637_53 Real)) (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| (Array T@Ref T@Field_60819_60824 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_47685 0)) (((PolymorphicMapType_47685 (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (Array T@Ref T@Field_53405_3430 Bool)) (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (Array T@Ref T@Field_47209_47210 Bool)) (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (Array T@Ref T@Field_47196_53 Bool)) (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (Array T@Ref T@Field_25322_25613 Bool)) (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (Array T@Ref T@Field_25322_56633 Bool)) (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (Array T@Ref T@Field_25612_3430 Bool)) (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (Array T@Ref T@Field_25612_25323 Bool)) (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (Array T@Ref T@Field_25612_53 Bool)) (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (Array T@Ref T@Field_53871_53872 Bool)) (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (Array T@Ref T@Field_56628_56633 Bool)) (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (Array T@Ref T@Field_25637_3430 Bool)) (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (Array T@Ref T@Field_25637_25323 Bool)) (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (Array T@Ref T@Field_25637_53 Bool)) (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (Array T@Ref T@Field_58346_58347 Bool)) (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (Array T@Ref T@Field_60819_60824 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_47136 0)) (((PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| (Array T@Ref T@Field_47196_53 Bool)) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| (Array T@Ref T@Field_47209_47210 T@Ref)) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| (Array T@Ref T@Field_53871_53872 T@FrameType)) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| (Array T@Ref T@Field_53405_3430 Int)) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| (Array T@Ref T@Field_56628_56633 T@PolymorphicMapType_47685)) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| (Array T@Ref T@Field_58346_58347 T@FrameType)) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| (Array T@Ref T@Field_60819_60824 T@PolymorphicMapType_47685)) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| (Array T@Ref T@Field_25322_25613 T@FrameType)) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| (Array T@Ref T@Field_25322_56633 T@PolymorphicMapType_47685)) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| (Array T@Ref T@Field_25612_25323 T@Ref)) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| (Array T@Ref T@Field_25612_53 Bool)) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| (Array T@Ref T@Field_25612_3430 Int)) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| (Array T@Ref T@Field_25637_25323 T@Ref)) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| (Array T@Ref T@Field_25637_53 Bool)) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| (Array T@Ref T@Field_25637_3430 Int)) ) ) ))
(declare-fun $allocated () T@Field_47196_53)
(declare-fun elem () T@Field_53405_3430)
(declare-fun next () T@Field_47209_47210)
(declare-fun length_impl (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun |length_impl'| (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun dummyFunction_3723 (Bool) Bool)
(declare-fun |length_impl#triggerStateless| ((Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun length2_impl (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun |length2_impl'| (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun |length2_impl#triggerStateless| ((Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun length3_impl (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun |length3_impl'| (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun |length3_impl#triggerStateless| ((Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun succHeap (T@PolymorphicMapType_47136 T@PolymorphicMapType_47136) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_47136 T@PolymorphicMapType_47136) Bool)
(declare-fun state (T@PolymorphicMapType_47136 T@PolymorphicMapType_47157) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_47157) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_47685)
(declare-fun list2 (T@Ref Int) T@Field_53871_53872)
(declare-fun IsPredicateField_25612_25613 (T@Field_53871_53872) Bool)
(declare-fun |foo'| (T@PolymorphicMapType_47136 T@Ref Int) Bool)
(declare-fun |foo#triggerStateless| (T@Ref Int) Bool)
(declare-fun |list2#trigger_25612| (T@PolymorphicMapType_47136 T@Field_53871_53872) Bool)
(declare-fun |list2#everUsed_25612| (T@Field_53871_53872) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun list (T@Ref) T@Field_58346_58347)
(declare-fun IsPredicateField_25637_25638 (T@Field_58346_58347) Bool)
(declare-fun |list#trigger_25637| (T@PolymorphicMapType_47136 T@Field_58346_58347) Bool)
(declare-fun |list#everUsed_25637| (T@Field_58346_58347) Bool)
(declare-fun |Set#Union_25717| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_25717| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_25717| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_25717| ((Array T@Ref Bool)) Int)
(declare-fun |length_impl#frame| (T@FrameType (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun null () T@Ref)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_47136 T@PolymorphicMapType_47136 T@PolymorphicMapType_47157) Bool)
(declare-fun PredicateMaskField_25637 (T@Field_58346_58347) T@Field_60819_60824)
(declare-fun HasDirectPerm_25637_25638 (T@PolymorphicMapType_47157 T@Ref T@Field_58346_58347) Bool)
(declare-fun PredicateMaskField_25612 (T@Field_53871_53872) T@Field_56628_56633)
(declare-fun HasDirectPerm_25612_25613 (T@PolymorphicMapType_47157 T@Ref T@Field_53871_53872) Bool)
(declare-fun IsPredicateField_25322_172253 (T@Field_25322_25613) Bool)
(declare-fun PredicateMaskField_25322 (T@Field_25322_25613) T@Field_25322_56633)
(declare-fun HasDirectPerm_25322_25613 (T@PolymorphicMapType_47157 T@Ref T@Field_25322_25613) Bool)
(declare-fun IsWandField_25637_177934 (T@Field_58346_58347) Bool)
(declare-fun WandMaskField_25637 (T@Field_58346_58347) T@Field_60819_60824)
(declare-fun IsWandField_25612_177577 (T@Field_53871_53872) Bool)
(declare-fun WandMaskField_25612 (T@Field_53871_53872) T@Field_56628_56633)
(declare-fun IsWandField_25322_177220 (T@Field_25322_25613) Bool)
(declare-fun WandMaskField_25322 (T@Field_25322_25613) T@Field_25322_56633)
(declare-fun |list2#sm| (T@Ref Int) T@Field_56628_56633)
(declare-fun |list#sm| (T@Ref) T@Field_60819_60824)
(declare-fun dummyHeap () T@PolymorphicMapType_47136)
(declare-fun ZeroMask () T@PolymorphicMapType_47157)
(declare-fun InsidePredicate_47196_47196 (T@Field_25322_25613 T@FrameType T@Field_25322_25613 T@FrameType) Bool)
(declare-fun InsidePredicate_25637_25637 (T@Field_58346_58347 T@FrameType T@Field_58346_58347 T@FrameType) Bool)
(declare-fun InsidePredicate_25612_25612 (T@Field_53871_53872 T@FrameType T@Field_53871_53872 T@FrameType) Bool)
(declare-fun IsPredicateField_25320_3430 (T@Field_53405_3430) Bool)
(declare-fun IsWandField_25320_3430 (T@Field_53405_3430) Bool)
(declare-fun IsPredicateField_25322_25323 (T@Field_47209_47210) Bool)
(declare-fun IsWandField_25322_25323 (T@Field_47209_47210) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_25637_188223 (T@Field_60819_60824) Bool)
(declare-fun IsWandField_25637_188239 (T@Field_60819_60824) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_25637_53 (T@Field_25637_53) Bool)
(declare-fun IsWandField_25637_53 (T@Field_25637_53) Bool)
(declare-fun IsPredicateField_25637_25323 (T@Field_25637_25323) Bool)
(declare-fun IsWandField_25637_25323 (T@Field_25637_25323) Bool)
(declare-fun IsPredicateField_25637_3430 (T@Field_25637_3430) Bool)
(declare-fun IsWandField_25637_3430 (T@Field_25637_3430) Bool)
(declare-fun IsPredicateField_25320_187392 (T@Field_25322_56633) Bool)
(declare-fun IsWandField_25320_187408 (T@Field_25322_56633) Bool)
(declare-fun IsPredicateField_25320_53 (T@Field_47196_53) Bool)
(declare-fun IsWandField_25320_53 (T@Field_47196_53) Bool)
(declare-fun IsPredicateField_25612_186589 (T@Field_56628_56633) Bool)
(declare-fun IsWandField_25612_186605 (T@Field_56628_56633) Bool)
(declare-fun IsPredicateField_25612_53 (T@Field_25612_53) Bool)
(declare-fun IsWandField_25612_53 (T@Field_25612_53) Bool)
(declare-fun IsPredicateField_25612_25323 (T@Field_25612_25323) Bool)
(declare-fun IsWandField_25612_25323 (T@Field_25612_25323) Bool)
(declare-fun IsPredicateField_25612_3430 (T@Field_25612_3430) Bool)
(declare-fun IsWandField_25612_3430 (T@Field_25612_3430) Bool)
(declare-fun HasDirectPerm_25637_172008 (T@PolymorphicMapType_47157 T@Ref T@Field_60819_60824) Bool)
(declare-fun HasDirectPerm_25637_3430 (T@PolymorphicMapType_47157 T@Ref T@Field_25637_3430) Bool)
(declare-fun HasDirectPerm_25637_53 (T@PolymorphicMapType_47157 T@Ref T@Field_25637_53) Bool)
(declare-fun HasDirectPerm_25637_25323 (T@PolymorphicMapType_47157 T@Ref T@Field_25637_25323) Bool)
(declare-fun HasDirectPerm_25612_170910 (T@PolymorphicMapType_47157 T@Ref T@Field_56628_56633) Bool)
(declare-fun HasDirectPerm_25612_3430 (T@PolymorphicMapType_47157 T@Ref T@Field_25612_3430) Bool)
(declare-fun HasDirectPerm_25612_53 (T@PolymorphicMapType_47157 T@Ref T@Field_25612_53) Bool)
(declare-fun HasDirectPerm_25612_25323 (T@PolymorphicMapType_47157 T@Ref T@Field_25612_25323) Bool)
(declare-fun HasDirectPerm_25322_169769 (T@PolymorphicMapType_47157 T@Ref T@Field_25322_56633) Bool)
(declare-fun HasDirectPerm_25322_3430 (T@PolymorphicMapType_47157 T@Ref T@Field_53405_3430) Bool)
(declare-fun HasDirectPerm_25322_53 (T@PolymorphicMapType_47157 T@Ref T@Field_47196_53) Bool)
(declare-fun HasDirectPerm_25322_25323 (T@PolymorphicMapType_47157 T@Ref T@Field_47209_47210) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_47157 T@PolymorphicMapType_47157 T@PolymorphicMapType_47157) Bool)
(declare-fun |Set#Difference_25717| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_25733| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_25612_25613 (T@Field_53871_53872) Int)
(declare-fun getPredWandId_25637_25638 (T@Field_58346_58347) Int)
(declare-fun |Set#Empty_25717| () (Array T@Ref Bool))
(declare-fun |length2_impl#condqp1| (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Int)
(declare-fun |sk_length2_impl#condqp1| (Int Int) T@Ref)
(declare-fun |length3_impl#condqp2| (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Int)
(declare-fun |sk_length3_impl#condqp2| (Int Int) T@Ref)
(declare-fun |length2_impl#frame| (T@FrameType (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun FrameFragment_3430 (Int) T@FrameType)
(declare-fun |length3_impl#frame| (T@FrameType (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun InsidePredicate_47196_25637 (T@Field_25322_25613 T@FrameType T@Field_58346_58347 T@FrameType) Bool)
(declare-fun InsidePredicate_47196_25612 (T@Field_25322_25613 T@FrameType T@Field_53871_53872 T@FrameType) Bool)
(declare-fun InsidePredicate_25637_47196 (T@Field_58346_58347 T@FrameType T@Field_25322_25613 T@FrameType) Bool)
(declare-fun InsidePredicate_25637_25612 (T@Field_58346_58347 T@FrameType T@Field_53871_53872 T@FrameType) Bool)
(declare-fun InsidePredicate_25612_47196 (T@Field_53871_53872 T@FrameType T@Field_25322_25613 T@FrameType) Bool)
(declare-fun InsidePredicate_25612_25637 (T@Field_53871_53872 T@FrameType T@Field_58346_58347 T@FrameType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun foo_1 (T@PolymorphicMapType_47136 T@Ref Int) Bool)
(declare-fun |foo#frame| (T@FrameType T@Ref Int) Bool)
(assert (forall ((Heap T@PolymorphicMapType_47136) (xs (Array T@Ref Bool)) (y T@Ref) (akk Int) (res Int) ) (!  (and (= (length_impl Heap xs y akk res) (|length_impl'| Heap xs y akk res)) (dummyFunction_3723 (|length_impl#triggerStateless| xs y akk res)))
 :qid |stdinbpl.576:15|
 :skolemid |89|
 :pattern ( (length_impl Heap xs y akk res))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_47136) (xs@@0 (Array T@Ref Bool)) (y@@0 T@Ref) (akk@@0 Int) (res@@0 Int) ) (!  (and (= (length2_impl Heap@@0 xs@@0 y@@0 akk@@0 res@@0) (|length2_impl'| Heap@@0 xs@@0 y@@0 akk@@0 res@@0)) (dummyFunction_3723 (|length2_impl#triggerStateless| xs@@0 y@@0 akk@@0 res@@0)))
 :qid |stdinbpl.714:15|
 :skolemid |96|
 :pattern ( (length2_impl Heap@@0 xs@@0 y@@0 akk@@0 res@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_47136) (xs@@1 (Array T@Ref Bool)) (y@@1 T@Ref) (akk@@1 Int) (res@@1 Int) ) (!  (and (= (length3_impl Heap@@1 xs@@1 y@@1 akk@@1 res@@1) (|length3_impl'| Heap@@1 xs@@1 y@@1 akk@@1 res@@1)) (dummyFunction_3723 (|length3_impl#triggerStateless| xs@@1 y@@1 akk@@1 res@@1)))
 :qid |stdinbpl.945:15|
 :skolemid |117|
 :pattern ( (length3_impl Heap@@1 xs@@1 y@@1 akk@@1 res@@1))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_47136) (Heap1 T@PolymorphicMapType_47136) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_47136) (Mask T@PolymorphicMapType_47157) ) (!  (=> (state Heap@@2 Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_47136) (Heap1@@0 T@PolymorphicMapType_47136) (Heap2 T@PolymorphicMapType_47136) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_60819_60824) ) (!  (not (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_58346_58347) ) (!  (not (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_25637_53) ) (!  (not (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_25637_25323) ) (!  (not (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_25637_3430) ) (!  (not (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_56628_56633) ) (!  (not (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_53871_53872) ) (!  (not (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_25612_53) ) (!  (not (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_25612_25323) ) (!  (not (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_25612_3430) ) (!  (not (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_25322_56633) ) (!  (not (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_25322_25613) ) (!  (not (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_47196_53) ) (!  (not (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_47209_47210) ) (!  (not (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_53405_3430) ) (!  (not (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((this T@Ref) (i Int) ) (! (IsPredicateField_25612_25613 (list2 this i))
 :qid |stdinbpl.1180:15|
 :skolemid |139|
 :pattern ( (list2 this i))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_47136) (l_1 T@Ref) (i@@0 Int) ) (! (dummyFunction_3723 (|foo#triggerStateless| l_1 i@@0))
 :qid |stdinbpl.437:15|
 :skolemid |83|
 :pattern ( (|foo'| Heap@@3 l_1 i@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_47136) (this@@0 T@Ref) (i@@1 Int) ) (! (|list2#everUsed_25612| (list2 this@@0 i@@1))
 :qid |stdinbpl.1199:15|
 :skolemid |143|
 :pattern ( (|list2#trigger_25612| Heap@@4 (list2 this@@0 i@@1)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.321:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_25637_25638 (list x))
 :qid |stdinbpl.1252:15|
 :skolemid |145|
 :pattern ( (list x))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_47136) (x@@0 T@Ref) ) (! (|list#everUsed_25637| (list x@@0))
 :qid |stdinbpl.1271:15|
 :skolemid |149|
 :pattern ( (|list#trigger_25637| Heap@@5 (list x@@0)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_25717| (|Set#Union_25717| a@@0 b@@0) b@@0) (|Set#Union_25717| a@@0 b@@0))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Set#Union_25717| (|Set#Union_25717| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_25717| (|Set#Intersection_25717| a@@1 b@@1) b@@1) (|Set#Intersection_25717| a@@1 b@@1))
 :qid |stdinbpl.277:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_25717| (|Set#Intersection_25717| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_25717| r) o) (= r o))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_25717| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_25717| (|Set#Union_25717| a@@2 b@@2)) (|Set#Card_25717| (|Set#Intersection_25717| a@@2 b@@2))) (+ (|Set#Card_25717| a@@2) (|Set#Card_25717| b@@2)))
 :qid |stdinbpl.281:18|
 :skolemid |42|
 :pattern ( (|Set#Card_25717| (|Set#Union_25717| a@@2 b@@2)))
 :pattern ( (|Set#Card_25717| (|Set#Intersection_25717| a@@2 b@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_47136) (Mask@@0 T@PolymorphicMapType_47157) (xs@@2 (Array T@Ref Bool)) (y@@2 T@Ref) (akk@@2 Int) (res@@2 Int) ) (!  (=> (state Heap@@6 Mask@@0) (= (|length_impl'| Heap@@6 xs@@2 y@@2 akk@@2 res@@2) (|length_impl#frame| (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@6) null (list y@@2)) xs@@2 y@@2 akk@@2 res@@2)))
 :qid |stdinbpl.596:15|
 :skolemid |93|
 :pattern ( (state Heap@@6 Mask@@0) (|length_impl'| Heap@@6 xs@@2 y@@2 akk@@2 res@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.324:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_47136) (ExhaleHeap T@PolymorphicMapType_47136) (Mask@@1 T@PolymorphicMapType_47157) (pm_f_33 T@Field_58346_58347) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_25637_25638 Mask@@1 null pm_f_33) (IsPredicateField_25637_25638 pm_f_33)) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@7) null (PredicateMaskField_25637 pm_f_33)) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap) null (PredicateMaskField_25637 pm_f_33)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@1) (IsPredicateField_25637_25638 pm_f_33) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap) null (PredicateMaskField_25637 pm_f_33)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_47136) (ExhaleHeap@@0 T@PolymorphicMapType_47136) (Mask@@2 T@PolymorphicMapType_47157) (pm_f_33@@0 T@Field_53871_53872) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_25612_25613 Mask@@2 null pm_f_33@@0) (IsPredicateField_25612_25613 pm_f_33@@0)) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@8) null (PredicateMaskField_25612 pm_f_33@@0)) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@0) null (PredicateMaskField_25612 pm_f_33@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@2) (IsPredicateField_25612_25613 pm_f_33@@0) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@0) null (PredicateMaskField_25612 pm_f_33@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_47136) (ExhaleHeap@@1 T@PolymorphicMapType_47136) (Mask@@3 T@PolymorphicMapType_47157) (pm_f_33@@1 T@Field_25322_25613) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_25322_25613 Mask@@3 null pm_f_33@@1) (IsPredicateField_25322_172253 pm_f_33@@1)) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@9) null (PredicateMaskField_25322 pm_f_33@@1)) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@1) null (PredicateMaskField_25322 pm_f_33@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@3) (IsPredicateField_25322_172253 pm_f_33@@1) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@1) null (PredicateMaskField_25322 pm_f_33@@1)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_47136) (ExhaleHeap@@2 T@PolymorphicMapType_47136) (Mask@@4 T@PolymorphicMapType_47157) (pm_f_33@@2 T@Field_58346_58347) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_25637_25638 Mask@@4 null pm_f_33@@2) (IsWandField_25637_177934 pm_f_33@@2)) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@10) null (WandMaskField_25637 pm_f_33@@2)) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@2) null (WandMaskField_25637 pm_f_33@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@4) (IsWandField_25637_177934 pm_f_33@@2) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@2) null (WandMaskField_25637 pm_f_33@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_47136) (ExhaleHeap@@3 T@PolymorphicMapType_47136) (Mask@@5 T@PolymorphicMapType_47157) (pm_f_33@@3 T@Field_53871_53872) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_25612_25613 Mask@@5 null pm_f_33@@3) (IsWandField_25612_177577 pm_f_33@@3)) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@11) null (WandMaskField_25612 pm_f_33@@3)) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@3) null (WandMaskField_25612 pm_f_33@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@5) (IsWandField_25612_177577 pm_f_33@@3) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@3) null (WandMaskField_25612 pm_f_33@@3)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_47136) (ExhaleHeap@@4 T@PolymorphicMapType_47136) (Mask@@6 T@PolymorphicMapType_47157) (pm_f_33@@4 T@Field_25322_25613) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_25322_25613 Mask@@6 null pm_f_33@@4) (IsWandField_25322_177220 pm_f_33@@4)) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@12) null (WandMaskField_25322 pm_f_33@@4)) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@4) null (WandMaskField_25322 pm_f_33@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@6) (IsWandField_25322_177220 pm_f_33@@4) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@4) null (WandMaskField_25322 pm_f_33@@4)))
)))
(assert (forall ((this@@1 T@Ref) (i@@2 Int) (this2 T@Ref) (i2 Int) ) (!  (=> (= (list2 this@@1 i@@2) (list2 this2 i2)) (and (= this@@1 this2) (= i@@2 i2)))
 :qid |stdinbpl.1190:15|
 :skolemid |141|
 :pattern ( (list2 this@@1 i@@2) (list2 this2 i2))
)))
(assert (forall ((this@@2 T@Ref) (i@@3 Int) (this2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|list2#sm| this@@2 i@@3) (|list2#sm| this2@@0 i2@@0)) (and (= this@@2 this2@@0) (= i@@3 i2@@0)))
 :qid |stdinbpl.1194:15|
 :skolemid |142|
 :pattern ( (|list2#sm| this@@2 i@@3) (|list2#sm| this2@@0 i2@@0))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (list x@@1) (list x2)) (= x@@1 x2))
 :qid |stdinbpl.1262:15|
 :skolemid |147|
 :pattern ( (list x@@1) (list x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|list#sm| x@@2) (|list#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.1266:15|
 :skolemid |148|
 :pattern ( (|list#sm| x@@2) (|list#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_47136) (ExhaleHeap@@5 T@PolymorphicMapType_47136) (Mask@@7 T@PolymorphicMapType_47157) (o_63 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@7) (=> (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@13) o_63 $allocated) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@5) o_63 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@7) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@5) o_63 $allocated))
)))
(assert (forall ((p T@Field_25322_25613) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_47196_47196 p v_1 p w))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_47196_47196 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_58346_58347) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_25637_25637 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25637_25637 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_53871_53872) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_25612_25612 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25612_25612 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_25320_3430 elem)))
(assert  (not (IsWandField_25320_3430 elem)))
(assert  (not (IsPredicateField_25322_25323 next)))
(assert  (not (IsWandField_25322_25323 next)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_47136) (ExhaleHeap@@6 T@PolymorphicMapType_47136) (Mask@@8 T@PolymorphicMapType_47157) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@8) (succHeap Heap@@14 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_47157) (o_2@@14 T@Ref) (f_4@@14 T@Field_60819_60824) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| Mask@@9) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_25637_188223 f_4@@14))) (not (IsWandField_25637_188239 f_4@@14))) (<= (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| Mask@@9) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| Mask@@9) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_47157) (o_2@@15 T@Ref) (f_4@@15 T@Field_25637_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| Mask@@10) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_25637_53 f_4@@15))) (not (IsWandField_25637_53 f_4@@15))) (<= (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| Mask@@10) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| Mask@@10) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_47157) (o_2@@16 T@Ref) (f_4@@16 T@Field_25637_25323) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| Mask@@11) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_25637_25323 f_4@@16))) (not (IsWandField_25637_25323 f_4@@16))) (<= (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| Mask@@11) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| Mask@@11) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_47157) (o_2@@17 T@Ref) (f_4@@17 T@Field_25637_3430) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| Mask@@12) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_25637_3430 f_4@@17))) (not (IsWandField_25637_3430 f_4@@17))) (<= (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| Mask@@12) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| Mask@@12) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_47157) (o_2@@18 T@Ref) (f_4@@18 T@Field_58346_58347) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| Mask@@13) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_25637_25638 f_4@@18))) (not (IsWandField_25637_177934 f_4@@18))) (<= (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| Mask@@13) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| Mask@@13) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_47157) (o_2@@19 T@Ref) (f_4@@19 T@Field_25322_56633) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| Mask@@14) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_25320_187392 f_4@@19))) (not (IsWandField_25320_187408 f_4@@19))) (<= (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| Mask@@14) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| Mask@@14) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_47157) (o_2@@20 T@Ref) (f_4@@20 T@Field_47196_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| Mask@@15) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_25320_53 f_4@@20))) (not (IsWandField_25320_53 f_4@@20))) (<= (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| Mask@@15) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| Mask@@15) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_47157) (o_2@@21 T@Ref) (f_4@@21 T@Field_47209_47210) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| Mask@@16) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_25322_25323 f_4@@21))) (not (IsWandField_25322_25323 f_4@@21))) (<= (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| Mask@@16) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| Mask@@16) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_47157) (o_2@@22 T@Ref) (f_4@@22 T@Field_53405_3430) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| Mask@@17) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_25320_3430 f_4@@22))) (not (IsWandField_25320_3430 f_4@@22))) (<= (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| Mask@@17) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| Mask@@17) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_47157) (o_2@@23 T@Ref) (f_4@@23 T@Field_25322_25613) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| Mask@@18) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_25322_172253 f_4@@23))) (not (IsWandField_25322_177220 f_4@@23))) (<= (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| Mask@@18) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| Mask@@18) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_47157) (o_2@@24 T@Ref) (f_4@@24 T@Field_56628_56633) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| Mask@@19) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_25612_186589 f_4@@24))) (not (IsWandField_25612_186605 f_4@@24))) (<= (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| Mask@@19) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| Mask@@19) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_47157) (o_2@@25 T@Ref) (f_4@@25 T@Field_25612_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| Mask@@20) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_25612_53 f_4@@25))) (not (IsWandField_25612_53 f_4@@25))) (<= (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| Mask@@20) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| Mask@@20) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_47157) (o_2@@26 T@Ref) (f_4@@26 T@Field_25612_25323) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| Mask@@21) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_25612_25323 f_4@@26))) (not (IsWandField_25612_25323 f_4@@26))) (<= (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| Mask@@21) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| Mask@@21) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_47157) (o_2@@27 T@Ref) (f_4@@27 T@Field_25612_3430) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| Mask@@22) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_25612_3430 f_4@@27))) (not (IsWandField_25612_3430 f_4@@27))) (<= (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| Mask@@22) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| Mask@@22) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_47157) (o_2@@28 T@Ref) (f_4@@28 T@Field_53871_53872) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| Mask@@23) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_25612_25613 f_4@@28))) (not (IsWandField_25612_177577 f_4@@28))) (<= (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| Mask@@23) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| Mask@@23) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_47157) (o_2@@29 T@Ref) (f_4@@29 T@Field_60819_60824) ) (! (= (HasDirectPerm_25637_172008 Mask@@24 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| Mask@@24) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25637_172008 Mask@@24 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_47157) (o_2@@30 T@Ref) (f_4@@30 T@Field_25637_3430) ) (! (= (HasDirectPerm_25637_3430 Mask@@25 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| Mask@@25) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25637_3430 Mask@@25 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_47157) (o_2@@31 T@Ref) (f_4@@31 T@Field_25637_53) ) (! (= (HasDirectPerm_25637_53 Mask@@26 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| Mask@@26) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25637_53 Mask@@26 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_47157) (o_2@@32 T@Ref) (f_4@@32 T@Field_58346_58347) ) (! (= (HasDirectPerm_25637_25638 Mask@@27 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| Mask@@27) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25637_25638 Mask@@27 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_47157) (o_2@@33 T@Ref) (f_4@@33 T@Field_25637_25323) ) (! (= (HasDirectPerm_25637_25323 Mask@@28 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| Mask@@28) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25637_25323 Mask@@28 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_47157) (o_2@@34 T@Ref) (f_4@@34 T@Field_56628_56633) ) (! (= (HasDirectPerm_25612_170910 Mask@@29 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| Mask@@29) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25612_170910 Mask@@29 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_47157) (o_2@@35 T@Ref) (f_4@@35 T@Field_25612_3430) ) (! (= (HasDirectPerm_25612_3430 Mask@@30 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| Mask@@30) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25612_3430 Mask@@30 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_47157) (o_2@@36 T@Ref) (f_4@@36 T@Field_25612_53) ) (! (= (HasDirectPerm_25612_53 Mask@@31 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| Mask@@31) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25612_53 Mask@@31 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_47157) (o_2@@37 T@Ref) (f_4@@37 T@Field_53871_53872) ) (! (= (HasDirectPerm_25612_25613 Mask@@32 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| Mask@@32) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25612_25613 Mask@@32 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_47157) (o_2@@38 T@Ref) (f_4@@38 T@Field_25612_25323) ) (! (= (HasDirectPerm_25612_25323 Mask@@33 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| Mask@@33) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25612_25323 Mask@@33 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_47157) (o_2@@39 T@Ref) (f_4@@39 T@Field_25322_56633) ) (! (= (HasDirectPerm_25322_169769 Mask@@34 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| Mask@@34) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25322_169769 Mask@@34 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_47157) (o_2@@40 T@Ref) (f_4@@40 T@Field_53405_3430) ) (! (= (HasDirectPerm_25322_3430 Mask@@35 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| Mask@@35) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25322_3430 Mask@@35 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_47157) (o_2@@41 T@Ref) (f_4@@41 T@Field_47196_53) ) (! (= (HasDirectPerm_25322_53 Mask@@36 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| Mask@@36) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25322_53 Mask@@36 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_47157) (o_2@@42 T@Ref) (f_4@@42 T@Field_25322_25613) ) (! (= (HasDirectPerm_25322_25613 Mask@@37 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| Mask@@37) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25322_25613 Mask@@37 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_47157) (o_2@@43 T@Ref) (f_4@@43 T@Field_47209_47210) ) (! (= (HasDirectPerm_25322_25323 Mask@@38 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| Mask@@38) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25322_25323 Mask@@38 o_2@@43 f_4@@43))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_47136) (xs@@3 (Array T@Ref Bool)) (y@@3 T@Ref) (akk@@3 Int) (res@@3 Int) ) (! (dummyFunction_3723 (|length_impl#triggerStateless| xs@@3 y@@3 akk@@3 res@@3))
 :qid |stdinbpl.580:15|
 :skolemid |90|
 :pattern ( (|length_impl'| Heap@@15 xs@@3 y@@3 akk@@3 res@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_47136) (xs@@4 (Array T@Ref Bool)) (y@@4 T@Ref) (akk@@4 Int) (res@@4 Int) ) (! (dummyFunction_3723 (|length2_impl#triggerStateless| xs@@4 y@@4 akk@@4 res@@4))
 :qid |stdinbpl.718:15|
 :skolemid |97|
 :pattern ( (|length2_impl'| Heap@@16 xs@@4 y@@4 akk@@4 res@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_47136) (xs@@5 (Array T@Ref Bool)) (y@@5 T@Ref) (akk@@5 Int) (res@@5 Int) ) (! (dummyFunction_3723 (|length3_impl#triggerStateless| xs@@5 y@@5 akk@@5 res@@5))
 :qid |stdinbpl.949:15|
 :skolemid |118|
 :pattern ( (|length3_impl'| Heap@@17 xs@@5 y@@5 akk@@5 res@@5))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.207:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_47136) (ExhaleHeap@@7 T@PolymorphicMapType_47136) (Mask@@39 T@PolymorphicMapType_47157) (o_63@@0 T@Ref) (f_71 T@Field_60819_60824) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@39) (=> (HasDirectPerm_25637_172008 Mask@@39 o_63@@0 f_71) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@18) o_63@@0 f_71) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@7) o_63@@0 f_71))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@39) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@7) o_63@@0 f_71))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_47136) (ExhaleHeap@@8 T@PolymorphicMapType_47136) (Mask@@40 T@PolymorphicMapType_47157) (o_63@@1 T@Ref) (f_71@@0 T@Field_25637_3430) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@40) (=> (HasDirectPerm_25637_3430 Mask@@40 o_63@@1 f_71@@0) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@19) o_63@@1 f_71@@0) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@8) o_63@@1 f_71@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@40) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@8) o_63@@1 f_71@@0))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_47136) (ExhaleHeap@@9 T@PolymorphicMapType_47136) (Mask@@41 T@PolymorphicMapType_47157) (o_63@@2 T@Ref) (f_71@@1 T@Field_25637_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@41) (=> (HasDirectPerm_25637_53 Mask@@41 o_63@@2 f_71@@1) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@20) o_63@@2 f_71@@1) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@9) o_63@@2 f_71@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@41) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@9) o_63@@2 f_71@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_47136) (ExhaleHeap@@10 T@PolymorphicMapType_47136) (Mask@@42 T@PolymorphicMapType_47157) (o_63@@3 T@Ref) (f_71@@2 T@Field_58346_58347) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@42) (=> (HasDirectPerm_25637_25638 Mask@@42 o_63@@3 f_71@@2) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@21) o_63@@3 f_71@@2) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@10) o_63@@3 f_71@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@42) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@10) o_63@@3 f_71@@2))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_47136) (ExhaleHeap@@11 T@PolymorphicMapType_47136) (Mask@@43 T@PolymorphicMapType_47157) (o_63@@4 T@Ref) (f_71@@3 T@Field_25637_25323) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@43) (=> (HasDirectPerm_25637_25323 Mask@@43 o_63@@4 f_71@@3) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@22) o_63@@4 f_71@@3) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@11) o_63@@4 f_71@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@43) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@11) o_63@@4 f_71@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_47136) (ExhaleHeap@@12 T@PolymorphicMapType_47136) (Mask@@44 T@PolymorphicMapType_47157) (o_63@@5 T@Ref) (f_71@@4 T@Field_56628_56633) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@44) (=> (HasDirectPerm_25612_170910 Mask@@44 o_63@@5 f_71@@4) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@23) o_63@@5 f_71@@4) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@12) o_63@@5 f_71@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@44) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@12) o_63@@5 f_71@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_47136) (ExhaleHeap@@13 T@PolymorphicMapType_47136) (Mask@@45 T@PolymorphicMapType_47157) (o_63@@6 T@Ref) (f_71@@5 T@Field_25612_3430) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@45) (=> (HasDirectPerm_25612_3430 Mask@@45 o_63@@6 f_71@@5) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@24) o_63@@6 f_71@@5) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@13) o_63@@6 f_71@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@45) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@13) o_63@@6 f_71@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_47136) (ExhaleHeap@@14 T@PolymorphicMapType_47136) (Mask@@46 T@PolymorphicMapType_47157) (o_63@@7 T@Ref) (f_71@@6 T@Field_25612_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@46) (=> (HasDirectPerm_25612_53 Mask@@46 o_63@@7 f_71@@6) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@25) o_63@@7 f_71@@6) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@14) o_63@@7 f_71@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@46) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@14) o_63@@7 f_71@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_47136) (ExhaleHeap@@15 T@PolymorphicMapType_47136) (Mask@@47 T@PolymorphicMapType_47157) (o_63@@8 T@Ref) (f_71@@7 T@Field_53871_53872) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@47) (=> (HasDirectPerm_25612_25613 Mask@@47 o_63@@8 f_71@@7) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@26) o_63@@8 f_71@@7) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@15) o_63@@8 f_71@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@47) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@15) o_63@@8 f_71@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_47136) (ExhaleHeap@@16 T@PolymorphicMapType_47136) (Mask@@48 T@PolymorphicMapType_47157) (o_63@@9 T@Ref) (f_71@@8 T@Field_25612_25323) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@48) (=> (HasDirectPerm_25612_25323 Mask@@48 o_63@@9 f_71@@8) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@27) o_63@@9 f_71@@8) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@16) o_63@@9 f_71@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@48) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@16) o_63@@9 f_71@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_47136) (ExhaleHeap@@17 T@PolymorphicMapType_47136) (Mask@@49 T@PolymorphicMapType_47157) (o_63@@10 T@Ref) (f_71@@9 T@Field_25322_56633) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@49) (=> (HasDirectPerm_25322_169769 Mask@@49 o_63@@10 f_71@@9) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@28) o_63@@10 f_71@@9) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@17) o_63@@10 f_71@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@49) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@17) o_63@@10 f_71@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_47136) (ExhaleHeap@@18 T@PolymorphicMapType_47136) (Mask@@50 T@PolymorphicMapType_47157) (o_63@@11 T@Ref) (f_71@@10 T@Field_53405_3430) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@50) (=> (HasDirectPerm_25322_3430 Mask@@50 o_63@@11 f_71@@10) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@29) o_63@@11 f_71@@10) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@18) o_63@@11 f_71@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@50) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@18) o_63@@11 f_71@@10))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_47136) (ExhaleHeap@@19 T@PolymorphicMapType_47136) (Mask@@51 T@PolymorphicMapType_47157) (o_63@@12 T@Ref) (f_71@@11 T@Field_47196_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@19 Mask@@51) (=> (HasDirectPerm_25322_53 Mask@@51 o_63@@12 f_71@@11) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@30) o_63@@12 f_71@@11) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@19) o_63@@12 f_71@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@19 Mask@@51) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@19) o_63@@12 f_71@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_47136) (ExhaleHeap@@20 T@PolymorphicMapType_47136) (Mask@@52 T@PolymorphicMapType_47157) (o_63@@13 T@Ref) (f_71@@12 T@Field_25322_25613) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@20 Mask@@52) (=> (HasDirectPerm_25322_25613 Mask@@52 o_63@@13 f_71@@12) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@31) o_63@@13 f_71@@12) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@20) o_63@@13 f_71@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@20 Mask@@52) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@20) o_63@@13 f_71@@12))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_47136) (ExhaleHeap@@21 T@PolymorphicMapType_47136) (Mask@@53 T@PolymorphicMapType_47157) (o_63@@14 T@Ref) (f_71@@13 T@Field_47209_47210) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@21 Mask@@53) (=> (HasDirectPerm_25322_25323 Mask@@53 o_63@@14 f_71@@13) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@32) o_63@@14 f_71@@13) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@21) o_63@@14 f_71@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@21 Mask@@53) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@21) o_63@@14 f_71@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_60819_60824) ) (! (= (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_25637_53) ) (! (= (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_25637_25323) ) (! (= (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_25637_3430) ) (! (= (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_58346_58347) ) (! (= (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_25322_56633) ) (! (= (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_47196_53) ) (! (= (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_47209_47210) ) (! (= (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_53405_3430) ) (! (= (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_25322_25613) ) (! (= (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_56628_56633) ) (! (= (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_25612_53) ) (! (= (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_25612_25323) ) (! (= (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_25612_3430) ) (! (= (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_53871_53872) ) (! (= (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_47157) (SummandMask1 T@PolymorphicMapType_47157) (SummandMask2 T@PolymorphicMapType_47157) (o_2@@59 T@Ref) (f_4@@59 T@Field_60819_60824) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_47157) (SummandMask1@@0 T@PolymorphicMapType_47157) (SummandMask2@@0 T@PolymorphicMapType_47157) (o_2@@60 T@Ref) (f_4@@60 T@Field_25637_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_47157) (SummandMask1@@1 T@PolymorphicMapType_47157) (SummandMask2@@1 T@PolymorphicMapType_47157) (o_2@@61 T@Ref) (f_4@@61 T@Field_25637_25323) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_47157) (SummandMask1@@2 T@PolymorphicMapType_47157) (SummandMask2@@2 T@PolymorphicMapType_47157) (o_2@@62 T@Ref) (f_4@@62 T@Field_25637_3430) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_47157) (SummandMask1@@3 T@PolymorphicMapType_47157) (SummandMask2@@3 T@PolymorphicMapType_47157) (o_2@@63 T@Ref) (f_4@@63 T@Field_58346_58347) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_47157) (SummandMask1@@4 T@PolymorphicMapType_47157) (SummandMask2@@4 T@PolymorphicMapType_47157) (o_2@@64 T@Ref) (f_4@@64 T@Field_25322_56633) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_47157) (SummandMask1@@5 T@PolymorphicMapType_47157) (SummandMask2@@5 T@PolymorphicMapType_47157) (o_2@@65 T@Ref) (f_4@@65 T@Field_47196_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_47157) (SummandMask1@@6 T@PolymorphicMapType_47157) (SummandMask2@@6 T@PolymorphicMapType_47157) (o_2@@66 T@Ref) (f_4@@66 T@Field_47209_47210) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_47157) (SummandMask1@@7 T@PolymorphicMapType_47157) (SummandMask2@@7 T@PolymorphicMapType_47157) (o_2@@67 T@Ref) (f_4@@67 T@Field_53405_3430) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_47157) (SummandMask1@@8 T@PolymorphicMapType_47157) (SummandMask2@@8 T@PolymorphicMapType_47157) (o_2@@68 T@Ref) (f_4@@68 T@Field_25322_25613) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_47157) (SummandMask1@@9 T@PolymorphicMapType_47157) (SummandMask2@@9 T@PolymorphicMapType_47157) (o_2@@69 T@Ref) (f_4@@69 T@Field_56628_56633) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_47157) (SummandMask1@@10 T@PolymorphicMapType_47157) (SummandMask2@@10 T@PolymorphicMapType_47157) (o_2@@70 T@Ref) (f_4@@70 T@Field_25612_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_47157) (SummandMask1@@11 T@PolymorphicMapType_47157) (SummandMask2@@11 T@PolymorphicMapType_47157) (o_2@@71 T@Ref) (f_4@@71 T@Field_25612_25323) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_47157) (SummandMask1@@12 T@PolymorphicMapType_47157) (SummandMask2@@12 T@PolymorphicMapType_47157) (o_2@@72 T@Ref) (f_4@@72 T@Field_25612_3430) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_47157) (SummandMask1@@13 T@PolymorphicMapType_47157) (SummandMask2@@13 T@PolymorphicMapType_47157) (o_2@@73 T@Ref) (f_4@@73 T@Field_53871_53872) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_47136) (ExhaleHeap@@22 T@PolymorphicMapType_47136) (Mask@@54 T@PolymorphicMapType_47157) (pm_f_33@@5 T@Field_58346_58347) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@22 Mask@@54) (=> (and (HasDirectPerm_25637_25638 Mask@@54 null pm_f_33@@5) (IsPredicateField_25637_25638 pm_f_33@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33 T@Ref) (f_71@@14 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33 f_71@@14) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@33) o2_33 f_71@@14) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33 f_71@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33 f_71@@14))
)) (forall ((o2_33@@0 T@Ref) (f_71@@15 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@0 f_71@@15) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@33) o2_33@@0 f_71@@15) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@0 f_71@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@0 f_71@@15))
))) (forall ((o2_33@@1 T@Ref) (f_71@@16 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@1 f_71@@16) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@33) o2_33@@1 f_71@@16) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@1 f_71@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@1 f_71@@16))
))) (forall ((o2_33@@2 T@Ref) (f_71@@17 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@2 f_71@@17) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@33) o2_33@@2 f_71@@17) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@2 f_71@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@2 f_71@@17))
))) (forall ((o2_33@@3 T@Ref) (f_71@@18 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@3 f_71@@18) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@33) o2_33@@3 f_71@@18) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@3 f_71@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@3 f_71@@18))
))) (forall ((o2_33@@4 T@Ref) (f_71@@19 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@4 f_71@@19) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@33) o2_33@@4 f_71@@19) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@4 f_71@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@4 f_71@@19))
))) (forall ((o2_33@@5 T@Ref) (f_71@@20 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@5 f_71@@20) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@33) o2_33@@5 f_71@@20) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@5 f_71@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@5 f_71@@20))
))) (forall ((o2_33@@6 T@Ref) (f_71@@21 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@6 f_71@@21) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@33) o2_33@@6 f_71@@21) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@6 f_71@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@6 f_71@@21))
))) (forall ((o2_33@@7 T@Ref) (f_71@@22 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@7 f_71@@22) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@33) o2_33@@7 f_71@@22) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@7 f_71@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@7 f_71@@22))
))) (forall ((o2_33@@8 T@Ref) (f_71@@23 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@8 f_71@@23) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@33) o2_33@@8 f_71@@23) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@8 f_71@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@8 f_71@@23))
))) (forall ((o2_33@@9 T@Ref) (f_71@@24 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@9 f_71@@24) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@33) o2_33@@9 f_71@@24) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@9 f_71@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@9 f_71@@24))
))) (forall ((o2_33@@10 T@Ref) (f_71@@25 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@10 f_71@@25) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@33) o2_33@@10 f_71@@25) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@10 f_71@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@10 f_71@@25))
))) (forall ((o2_33@@11 T@Ref) (f_71@@26 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@11 f_71@@26) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@33) o2_33@@11 f_71@@26) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@11 f_71@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@11 f_71@@26))
))) (forall ((o2_33@@12 T@Ref) (f_71@@27 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@12 f_71@@27) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@33) o2_33@@12 f_71@@27) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@12 f_71@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@12 f_71@@27))
))) (forall ((o2_33@@13 T@Ref) (f_71@@28 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@13 f_71@@28) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) o2_33@@13 f_71@@28) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@13 f_71@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@13 f_71@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@22 Mask@@54) (IsPredicateField_25637_25638 pm_f_33@@5))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_47136) (ExhaleHeap@@23 T@PolymorphicMapType_47136) (Mask@@55 T@PolymorphicMapType_47157) (pm_f_33@@6 T@Field_53871_53872) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@23 Mask@@55) (=> (and (HasDirectPerm_25612_25613 Mask@@55 null pm_f_33@@6) (IsPredicateField_25612_25613 pm_f_33@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@14 T@Ref) (f_71@@29 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@14 f_71@@29) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@34) o2_33@@14 f_71@@29) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@14 f_71@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@14 f_71@@29))
)) (forall ((o2_33@@15 T@Ref) (f_71@@30 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@15 f_71@@30) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@34) o2_33@@15 f_71@@30) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@15 f_71@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@15 f_71@@30))
))) (forall ((o2_33@@16 T@Ref) (f_71@@31 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@16 f_71@@31) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@34) o2_33@@16 f_71@@31) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@16 f_71@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@16 f_71@@31))
))) (forall ((o2_33@@17 T@Ref) (f_71@@32 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@17 f_71@@32) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@34) o2_33@@17 f_71@@32) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@17 f_71@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@17 f_71@@32))
))) (forall ((o2_33@@18 T@Ref) (f_71@@33 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@18 f_71@@33) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@34) o2_33@@18 f_71@@33) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@18 f_71@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@18 f_71@@33))
))) (forall ((o2_33@@19 T@Ref) (f_71@@34 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@19 f_71@@34) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@34) o2_33@@19 f_71@@34) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@19 f_71@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@19 f_71@@34))
))) (forall ((o2_33@@20 T@Ref) (f_71@@35 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@20 f_71@@35) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@34) o2_33@@20 f_71@@35) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@20 f_71@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@20 f_71@@35))
))) (forall ((o2_33@@21 T@Ref) (f_71@@36 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@21 f_71@@36) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@34) o2_33@@21 f_71@@36) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@21 f_71@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@21 f_71@@36))
))) (forall ((o2_33@@22 T@Ref) (f_71@@37 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@22 f_71@@37) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@34) o2_33@@22 f_71@@37) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@22 f_71@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@22 f_71@@37))
))) (forall ((o2_33@@23 T@Ref) (f_71@@38 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@23 f_71@@38) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) o2_33@@23 f_71@@38) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@23 f_71@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@23 f_71@@38))
))) (forall ((o2_33@@24 T@Ref) (f_71@@39 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@24 f_71@@39) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@34) o2_33@@24 f_71@@39) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@24 f_71@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@24 f_71@@39))
))) (forall ((o2_33@@25 T@Ref) (f_71@@40 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@25 f_71@@40) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@34) o2_33@@25 f_71@@40) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@25 f_71@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@25 f_71@@40))
))) (forall ((o2_33@@26 T@Ref) (f_71@@41 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@26 f_71@@41) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@34) o2_33@@26 f_71@@41) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@26 f_71@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@26 f_71@@41))
))) (forall ((o2_33@@27 T@Ref) (f_71@@42 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@27 f_71@@42) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@34) o2_33@@27 f_71@@42) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@27 f_71@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@27 f_71@@42))
))) (forall ((o2_33@@28 T@Ref) (f_71@@43 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@28 f_71@@43) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@34) o2_33@@28 f_71@@43) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@28 f_71@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@28 f_71@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@23 Mask@@55) (IsPredicateField_25612_25613 pm_f_33@@6))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_47136) (ExhaleHeap@@24 T@PolymorphicMapType_47136) (Mask@@56 T@PolymorphicMapType_47157) (pm_f_33@@7 T@Field_25322_25613) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@24 Mask@@56) (=> (and (HasDirectPerm_25322_25613 Mask@@56 null pm_f_33@@7) (IsPredicateField_25322_172253 pm_f_33@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@29 T@Ref) (f_71@@44 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@29 f_71@@44) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@35) o2_33@@29 f_71@@44) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@29 f_71@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@29 f_71@@44))
)) (forall ((o2_33@@30 T@Ref) (f_71@@45 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@30 f_71@@45) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@35) o2_33@@30 f_71@@45) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@30 f_71@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@30 f_71@@45))
))) (forall ((o2_33@@31 T@Ref) (f_71@@46 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@31 f_71@@46) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@35) o2_33@@31 f_71@@46) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@31 f_71@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@31 f_71@@46))
))) (forall ((o2_33@@32 T@Ref) (f_71@@47 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@32 f_71@@47) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@35) o2_33@@32 f_71@@47) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@32 f_71@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@32 f_71@@47))
))) (forall ((o2_33@@33 T@Ref) (f_71@@48 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@33 f_71@@48) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) o2_33@@33 f_71@@48) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@33 f_71@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@33 f_71@@48))
))) (forall ((o2_33@@34 T@Ref) (f_71@@49 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@34 f_71@@49) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@35) o2_33@@34 f_71@@49) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@34 f_71@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@34 f_71@@49))
))) (forall ((o2_33@@35 T@Ref) (f_71@@50 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@35 f_71@@50) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@35) o2_33@@35 f_71@@50) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@35 f_71@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@35 f_71@@50))
))) (forall ((o2_33@@36 T@Ref) (f_71@@51 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@36 f_71@@51) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@35) o2_33@@36 f_71@@51) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@36 f_71@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@36 f_71@@51))
))) (forall ((o2_33@@37 T@Ref) (f_71@@52 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@37 f_71@@52) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@35) o2_33@@37 f_71@@52) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@37 f_71@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@37 f_71@@52))
))) (forall ((o2_33@@38 T@Ref) (f_71@@53 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@38 f_71@@53) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@35) o2_33@@38 f_71@@53) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@38 f_71@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@38 f_71@@53))
))) (forall ((o2_33@@39 T@Ref) (f_71@@54 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@39 f_71@@54) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@35) o2_33@@39 f_71@@54) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@39 f_71@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@39 f_71@@54))
))) (forall ((o2_33@@40 T@Ref) (f_71@@55 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@40 f_71@@55) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@35) o2_33@@40 f_71@@55) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@40 f_71@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@40 f_71@@55))
))) (forall ((o2_33@@41 T@Ref) (f_71@@56 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@41 f_71@@56) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@35) o2_33@@41 f_71@@56) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@41 f_71@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@41 f_71@@56))
))) (forall ((o2_33@@42 T@Ref) (f_71@@57 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@42 f_71@@57) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@35) o2_33@@42 f_71@@57) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@42 f_71@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@42 f_71@@57))
))) (forall ((o2_33@@43 T@Ref) (f_71@@58 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@43 f_71@@58) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@35) o2_33@@43 f_71@@58) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@43 f_71@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@43 f_71@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@24 Mask@@56) (IsPredicateField_25322_172253 pm_f_33@@7))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_47136) (ExhaleHeap@@25 T@PolymorphicMapType_47136) (Mask@@57 T@PolymorphicMapType_47157) (pm_f_33@@8 T@Field_58346_58347) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@25 Mask@@57) (=> (and (HasDirectPerm_25637_25638 Mask@@57 null pm_f_33@@8) (IsWandField_25637_177934 pm_f_33@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@44 T@Ref) (f_71@@59 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@44 f_71@@59) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@36) o2_33@@44 f_71@@59) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@44 f_71@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@44 f_71@@59))
)) (forall ((o2_33@@45 T@Ref) (f_71@@60 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@45 f_71@@60) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@36) o2_33@@45 f_71@@60) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@45 f_71@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@45 f_71@@60))
))) (forall ((o2_33@@46 T@Ref) (f_71@@61 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@46 f_71@@61) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@36) o2_33@@46 f_71@@61) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@46 f_71@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@46 f_71@@61))
))) (forall ((o2_33@@47 T@Ref) (f_71@@62 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@47 f_71@@62) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@36) o2_33@@47 f_71@@62) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@47 f_71@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@47 f_71@@62))
))) (forall ((o2_33@@48 T@Ref) (f_71@@63 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@48 f_71@@63) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@36) o2_33@@48 f_71@@63) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@48 f_71@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@48 f_71@@63))
))) (forall ((o2_33@@49 T@Ref) (f_71@@64 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@49 f_71@@64) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@36) o2_33@@49 f_71@@64) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@49 f_71@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@49 f_71@@64))
))) (forall ((o2_33@@50 T@Ref) (f_71@@65 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@50 f_71@@65) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@36) o2_33@@50 f_71@@65) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@50 f_71@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@50 f_71@@65))
))) (forall ((o2_33@@51 T@Ref) (f_71@@66 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@51 f_71@@66) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@36) o2_33@@51 f_71@@66) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@51 f_71@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@51 f_71@@66))
))) (forall ((o2_33@@52 T@Ref) (f_71@@67 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@52 f_71@@67) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@36) o2_33@@52 f_71@@67) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@52 f_71@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@52 f_71@@67))
))) (forall ((o2_33@@53 T@Ref) (f_71@@68 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@53 f_71@@68) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@36) o2_33@@53 f_71@@68) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@53 f_71@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@53 f_71@@68))
))) (forall ((o2_33@@54 T@Ref) (f_71@@69 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@54 f_71@@69) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@36) o2_33@@54 f_71@@69) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@54 f_71@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@54 f_71@@69))
))) (forall ((o2_33@@55 T@Ref) (f_71@@70 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@55 f_71@@70) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@36) o2_33@@55 f_71@@70) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@55 f_71@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@55 f_71@@70))
))) (forall ((o2_33@@56 T@Ref) (f_71@@71 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@56 f_71@@71) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@36) o2_33@@56 f_71@@71) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@56 f_71@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@56 f_71@@71))
))) (forall ((o2_33@@57 T@Ref) (f_71@@72 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@57 f_71@@72) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@36) o2_33@@57 f_71@@72) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@57 f_71@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@57 f_71@@72))
))) (forall ((o2_33@@58 T@Ref) (f_71@@73 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@58 f_71@@73) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) o2_33@@58 f_71@@73) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@58 f_71@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@58 f_71@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@25 Mask@@57) (IsWandField_25637_177934 pm_f_33@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_47136) (ExhaleHeap@@26 T@PolymorphicMapType_47136) (Mask@@58 T@PolymorphicMapType_47157) (pm_f_33@@9 T@Field_53871_53872) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@26 Mask@@58) (=> (and (HasDirectPerm_25612_25613 Mask@@58 null pm_f_33@@9) (IsWandField_25612_177577 pm_f_33@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@59 T@Ref) (f_71@@74 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@59 f_71@@74) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@37) o2_33@@59 f_71@@74) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@59 f_71@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@59 f_71@@74))
)) (forall ((o2_33@@60 T@Ref) (f_71@@75 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@60 f_71@@75) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@37) o2_33@@60 f_71@@75) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@60 f_71@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@60 f_71@@75))
))) (forall ((o2_33@@61 T@Ref) (f_71@@76 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@61 f_71@@76) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@37) o2_33@@61 f_71@@76) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@61 f_71@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@61 f_71@@76))
))) (forall ((o2_33@@62 T@Ref) (f_71@@77 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@62 f_71@@77) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@37) o2_33@@62 f_71@@77) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@62 f_71@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@62 f_71@@77))
))) (forall ((o2_33@@63 T@Ref) (f_71@@78 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@63 f_71@@78) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@37) o2_33@@63 f_71@@78) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@63 f_71@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@63 f_71@@78))
))) (forall ((o2_33@@64 T@Ref) (f_71@@79 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@64 f_71@@79) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@37) o2_33@@64 f_71@@79) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@64 f_71@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@64 f_71@@79))
))) (forall ((o2_33@@65 T@Ref) (f_71@@80 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@65 f_71@@80) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@37) o2_33@@65 f_71@@80) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@65 f_71@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@65 f_71@@80))
))) (forall ((o2_33@@66 T@Ref) (f_71@@81 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@66 f_71@@81) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@37) o2_33@@66 f_71@@81) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@66 f_71@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@66 f_71@@81))
))) (forall ((o2_33@@67 T@Ref) (f_71@@82 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@67 f_71@@82) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@37) o2_33@@67 f_71@@82) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@67 f_71@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@67 f_71@@82))
))) (forall ((o2_33@@68 T@Ref) (f_71@@83 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@68 f_71@@83) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) o2_33@@68 f_71@@83) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@68 f_71@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@68 f_71@@83))
))) (forall ((o2_33@@69 T@Ref) (f_71@@84 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@69 f_71@@84) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@37) o2_33@@69 f_71@@84) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@69 f_71@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@69 f_71@@84))
))) (forall ((o2_33@@70 T@Ref) (f_71@@85 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@70 f_71@@85) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@37) o2_33@@70 f_71@@85) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@70 f_71@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@70 f_71@@85))
))) (forall ((o2_33@@71 T@Ref) (f_71@@86 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@71 f_71@@86) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@37) o2_33@@71 f_71@@86) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@71 f_71@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@71 f_71@@86))
))) (forall ((o2_33@@72 T@Ref) (f_71@@87 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@72 f_71@@87) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@37) o2_33@@72 f_71@@87) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@72 f_71@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@72 f_71@@87))
))) (forall ((o2_33@@73 T@Ref) (f_71@@88 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@73 f_71@@88) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@37) o2_33@@73 f_71@@88) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@73 f_71@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@73 f_71@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@26 Mask@@58) (IsWandField_25612_177577 pm_f_33@@9))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_47136) (ExhaleHeap@@27 T@PolymorphicMapType_47136) (Mask@@59 T@PolymorphicMapType_47157) (pm_f_33@@10 T@Field_25322_25613) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@27 Mask@@59) (=> (and (HasDirectPerm_25322_25613 Mask@@59 null pm_f_33@@10) (IsWandField_25322_177220 pm_f_33@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@74 T@Ref) (f_71@@89 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@74 f_71@@89) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@38) o2_33@@74 f_71@@89) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@74 f_71@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@74 f_71@@89))
)) (forall ((o2_33@@75 T@Ref) (f_71@@90 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@75 f_71@@90) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@38) o2_33@@75 f_71@@90) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@75 f_71@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@75 f_71@@90))
))) (forall ((o2_33@@76 T@Ref) (f_71@@91 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@76 f_71@@91) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@38) o2_33@@76 f_71@@91) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@76 f_71@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@76 f_71@@91))
))) (forall ((o2_33@@77 T@Ref) (f_71@@92 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@77 f_71@@92) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@38) o2_33@@77 f_71@@92) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@77 f_71@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@77 f_71@@92))
))) (forall ((o2_33@@78 T@Ref) (f_71@@93 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@78 f_71@@93) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) o2_33@@78 f_71@@93) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@78 f_71@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@78 f_71@@93))
))) (forall ((o2_33@@79 T@Ref) (f_71@@94 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@79 f_71@@94) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@38) o2_33@@79 f_71@@94) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@79 f_71@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@79 f_71@@94))
))) (forall ((o2_33@@80 T@Ref) (f_71@@95 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@80 f_71@@95) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@38) o2_33@@80 f_71@@95) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@80 f_71@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@80 f_71@@95))
))) (forall ((o2_33@@81 T@Ref) (f_71@@96 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@81 f_71@@96) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@38) o2_33@@81 f_71@@96) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@81 f_71@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@81 f_71@@96))
))) (forall ((o2_33@@82 T@Ref) (f_71@@97 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@82 f_71@@97) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@38) o2_33@@82 f_71@@97) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@82 f_71@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@82 f_71@@97))
))) (forall ((o2_33@@83 T@Ref) (f_71@@98 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@83 f_71@@98) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@38) o2_33@@83 f_71@@98) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@83 f_71@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@83 f_71@@98))
))) (forall ((o2_33@@84 T@Ref) (f_71@@99 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@84 f_71@@99) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@38) o2_33@@84 f_71@@99) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@84 f_71@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@84 f_71@@99))
))) (forall ((o2_33@@85 T@Ref) (f_71@@100 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@85 f_71@@100) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@38) o2_33@@85 f_71@@100) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@85 f_71@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@85 f_71@@100))
))) (forall ((o2_33@@86 T@Ref) (f_71@@101 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@86 f_71@@101) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@38) o2_33@@86 f_71@@101) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@86 f_71@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@86 f_71@@101))
))) (forall ((o2_33@@87 T@Ref) (f_71@@102 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@87 f_71@@102) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@38) o2_33@@87 f_71@@102) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@87 f_71@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@87 f_71@@102))
))) (forall ((o2_33@@88 T@Ref) (f_71@@103 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@88 f_71@@103) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@38) o2_33@@88 f_71@@103) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@88 f_71@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@88 f_71@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@27 Mask@@59) (IsWandField_25322_177220 pm_f_33@@10))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_25717| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.270:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_25717| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_25717| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_25717| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_25717| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.285:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_25717| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_25717| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x@@3 T@Ref) (y@@6 T@Ref) ) (!  (=> (select a@@6 y@@6) (select (|Set#UnionOne_25733| a@@6 x@@3) y@@6))
 :qid |stdinbpl.250:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_25733| a@@6 x@@3) (select a@@6 y@@6))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@7 T@Ref) ) (!  (=> (select a@@7 y@@7) (select (|Set#Union_25717| a@@7 b@@5) y@@7))
 :qid |stdinbpl.260:18|
 :skolemid |35|
 :pattern ( (|Set#Union_25717| a@@7 b@@5) (select a@@7 y@@7))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@8 T@Ref) ) (!  (=> (select b@@6 y@@8) (select (|Set#Union_25717| a@@8 b@@6) y@@8))
 :qid |stdinbpl.262:18|
 :skolemid |36|
 :pattern ( (|Set#Union_25717| a@@8 b@@6) (select b@@6 y@@8))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@4 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_25733| a@@9 x@@4) o@@2)  (or (= o@@2 x@@4) (select a@@9 o@@2)))
 :qid |stdinbpl.246:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_25733| a@@9 x@@4) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@9 T@Ref) ) (!  (=> (select b@@7 y@@9) (not (select (|Set#Difference_25717| a@@10 b@@7) y@@9)))
 :qid |stdinbpl.287:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_25717| a@@10 b@@7) (select b@@7 y@@9))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_25717| (|Set#Difference_25717| a@@11 b@@8)) (|Set#Card_25717| (|Set#Difference_25717| b@@8 a@@11))) (|Set#Card_25717| (|Set#Intersection_25717| a@@11 b@@8))) (|Set#Card_25717| (|Set#Union_25717| a@@11 b@@8))) (= (|Set#Card_25717| (|Set#Difference_25717| a@@11 b@@8)) (- (|Set#Card_25717| a@@11) (|Set#Card_25717| (|Set#Intersection_25717| a@@11 b@@8)))))
 :qid |stdinbpl.289:18|
 :skolemid |45|
 :pattern ( (|Set#Card_25717| (|Set#Difference_25717| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_25717| s))
 :qid |stdinbpl.232:18|
 :skolemid |22|
 :pattern ( (|Set#Card_25717| s))
)))
(assert (forall ((this@@3 T@Ref) (i@@4 Int) ) (! (= (getPredWandId_25612_25613 (list2 this@@3 i@@4)) 1)
 :qid |stdinbpl.1184:15|
 :skolemid |140|
 :pattern ( (list2 this@@3 i@@4))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@5 T@Ref) ) (! (select (|Set#UnionOne_25733| a@@12 x@@5) x@@5)
 :qid |stdinbpl.248:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_25733| a@@12 x@@5))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (select a@@13 x@@6) (= (|Set#Card_25717| (|Set#UnionOne_25733| a@@13 x@@6)) (|Set#Card_25717| a@@13)))
 :qid |stdinbpl.252:18|
 :skolemid |32|
 :pattern ( (|Set#Card_25717| (|Set#UnionOne_25733| a@@13 x@@6)))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_25637_25638 (list x@@7)) 0)
 :qid |stdinbpl.1256:15|
 :skolemid |146|
 :pattern ( (list x@@7))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_25717| (|Set#Singleton_25717| r@@0)) 1)
 :qid |stdinbpl.243:18|
 :skolemid |28|
 :pattern ( (|Set#Card_25717| (|Set#Singleton_25717| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_25717| r@@1) r@@1)
 :qid |stdinbpl.241:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_25717| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_25717| a@@14 (|Set#Union_25717| a@@14 b@@9)) (|Set#Union_25717| a@@14 b@@9))
 :qid |stdinbpl.275:18|
 :skolemid |39|
 :pattern ( (|Set#Union_25717| a@@14 (|Set#Union_25717| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_25717| a@@15 (|Set#Intersection_25717| a@@15 b@@10)) (|Set#Intersection_25717| a@@15 b@@10))
 :qid |stdinbpl.279:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_25717| a@@15 (|Set#Intersection_25717| a@@15 b@@10)))
)))
(assert (forall ((this@@4 T@Ref) (i@@5 Int) ) (! (= (PredicateMaskField_25612 (list2 this@@4 i@@5)) (|list2#sm| this@@4 i@@5))
 :qid |stdinbpl.1176:15|
 :skolemid |138|
 :pattern ( (PredicateMaskField_25612 (list2 this@@4 i@@5)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_25717| o@@3))
 :qid |stdinbpl.235:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_25717| o@@3))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_47136) (o_62 T@Ref) (f_72 T@Field_60819_60824) (v T@PolymorphicMapType_47685) ) (! (succHeap Heap@@39 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@39) (store (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@39) o_62 f_72 v) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@39) (store (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@39) o_62 f_72 v) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_47136) (o_62@@0 T@Ref) (f_72@@0 T@Field_25637_3430) (v@@0 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@40) (store (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@40) o_62@@0 f_72@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@40) (store (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@40) o_62@@0 f_72@@0 v@@0)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_47136) (o_62@@1 T@Ref) (f_72@@1 T@Field_58346_58347) (v@@1 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@41) (store (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@41) o_62@@1 f_72@@1 v@@1) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@41) (store (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@41) o_62@@1 f_72@@1 v@@1) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_47136) (o_62@@2 T@Ref) (f_72@@2 T@Field_25637_25323) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@42) (store (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@42) o_62@@2 f_72@@2 v@@2) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@42) (store (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@42) o_62@@2 f_72@@2 v@@2) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_47136) (o_62@@3 T@Ref) (f_72@@3 T@Field_25637_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@43) (store (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@43) o_62@@3 f_72@@3 v@@3) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@43) (store (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@43) o_62@@3 f_72@@3 v@@3) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_47136) (o_62@@4 T@Ref) (f_72@@4 T@Field_56628_56633) (v@@4 T@PolymorphicMapType_47685) ) (! (succHeap Heap@@44 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@44) (store (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@44) o_62@@4 f_72@@4 v@@4) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@44) (store (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@44) o_62@@4 f_72@@4 v@@4) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_47136) (o_62@@5 T@Ref) (f_72@@5 T@Field_25612_3430) (v@@5 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@45) (store (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@45) o_62@@5 f_72@@5 v@@5) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@45) (store (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@45) o_62@@5 f_72@@5 v@@5) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_47136) (o_62@@6 T@Ref) (f_72@@6 T@Field_53871_53872) (v@@6 T@FrameType) ) (! (succHeap Heap@@46 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@46) (store (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@46) o_62@@6 f_72@@6 v@@6) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@46) (store (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@46) o_62@@6 f_72@@6 v@@6) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_47136) (o_62@@7 T@Ref) (f_72@@7 T@Field_25612_25323) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@47) (store (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@47) o_62@@7 f_72@@7 v@@7) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@47) (store (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@47) o_62@@7 f_72@@7 v@@7) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_47136) (o_62@@8 T@Ref) (f_72@@8 T@Field_25612_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@48) (store (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@48) o_62@@8 f_72@@8 v@@8) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@48) (store (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@48) o_62@@8 f_72@@8 v@@8) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_47136) (o_62@@9 T@Ref) (f_72@@9 T@Field_25322_56633) (v@@9 T@PolymorphicMapType_47685) ) (! (succHeap Heap@@49 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@49) (store (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@49) o_62@@9 f_72@@9 v@@9) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@49) (store (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@49) o_62@@9 f_72@@9 v@@9) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_47136) (o_62@@10 T@Ref) (f_72@@10 T@Field_53405_3430) (v@@10 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@50) (store (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@50) o_62@@10 f_72@@10 v@@10) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@50) (store (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@50) o_62@@10 f_72@@10 v@@10) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_47136) (o_62@@11 T@Ref) (f_72@@11 T@Field_25322_25613) (v@@11 T@FrameType) ) (! (succHeap Heap@@51 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@51) (store (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@51) o_62@@11 f_72@@11 v@@11) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@51) (store (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@51) o_62@@11 f_72@@11 v@@11) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_47136) (o_62@@12 T@Ref) (f_72@@12 T@Field_47209_47210) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@52) (store (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@52) o_62@@12 f_72@@12 v@@12) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@52) (store (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@52) o_62@@12 f_72@@12 v@@12) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_47136) (o_62@@13 T@Ref) (f_72@@13 T@Field_47196_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_47136 (store (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@53) o_62@@13 f_72@@13 v@@13) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (store (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@53) o_62@@13 f_72@@13 v@@13) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@53)))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (PredicateMaskField_25637 (list x@@8)) (|list#sm| x@@8))
 :qid |stdinbpl.1248:15|
 :skolemid |144|
 :pattern ( (PredicateMaskField_25637 (list x@@8)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.319:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.320:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_47136) (Heap1Heap T@PolymorphicMapType_47136) (xs@@6 (Array T@Ref Bool)) (y@@10 T@Ref) (akk@@6 Int) (res@@6 Int) ) (!  (=> (and (= (select xs@@6 (|sk_length2_impl#condqp1| (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6))) (select xs@@6 (|sk_length2_impl#condqp1| (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6)))) (=> (select xs@@6 (|sk_length2_impl#condqp1| (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6))) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap2Heap) null (list (|sk_length2_impl#condqp1| (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6)))) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap1Heap) null (list (|sk_length2_impl#condqp1| (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6))))))) (= (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6)))
 :qid |stdinbpl.744:15|
 :skolemid |101|
 :pattern ( (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_47136) (Heap1Heap@@0 T@PolymorphicMapType_47136) (xs@@7 (Array T@Ref Bool)) (y@@11 T@Ref) (akk@@7 Int) (res@@7 Int) ) (!  (=> (and (= (select xs@@7 (|sk_length3_impl#condqp2| (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7))) (select xs@@7 (|sk_length3_impl#condqp2| (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7)))) (=> (select xs@@7 (|sk_length3_impl#condqp2| (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7))) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap2Heap@@0) null (list (|sk_length3_impl#condqp2| (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7)))) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap1Heap@@0) null (list (|sk_length3_impl#condqp2| (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7))))))) (= (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7)))
 :qid |stdinbpl.975:15|
 :skolemid |122|
 :pattern ( (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_25717| s@@0) 0) (= s@@0 |Set#Empty_25717|)) (=> (not (= (|Set#Card_25717| s@@0) 0)) (exists ((x@@9 T@Ref) ) (! (select s@@0 x@@9)
 :qid |stdinbpl.238:33|
 :skolemid |24|
))))
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Set#Card_25717| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@10 T@Ref) ) (!  (=> (not (select a@@18 x@@10)) (= (|Set#Card_25717| (|Set#UnionOne_25733| a@@18 x@@10)) (+ (|Set#Card_25717| a@@18) 1)))
 :qid |stdinbpl.254:18|
 :skolemid |33|
 :pattern ( (|Set#Card_25717| (|Set#UnionOne_25733| a@@18 x@@10)))
)))
(assert (forall ((o_62@@14 T@Ref) (f_49 T@Field_47209_47210) (Heap@@54 T@PolymorphicMapType_47136) ) (!  (=> (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@54) o_62@@14 $allocated) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@54) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@54) o_62@@14 f_49) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@54) o_62@@14 f_49))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_47136) (Mask@@60 T@PolymorphicMapType_47157) (xs@@8 (Array T@Ref Bool)) (y@@12 T@Ref) (akk@@8 Int) (res@@8 Int) ) (!  (=> (state Heap@@55 Mask@@60) (= (|length2_impl'| Heap@@55 xs@@8 y@@12 akk@@8 res@@8) (|length2_impl#frame| (FrameFragment_3430 (|length2_impl#condqp1| Heap@@55 xs@@8 y@@12 akk@@8 res@@8)) xs@@8 y@@12 akk@@8 res@@8)))
 :qid |stdinbpl.734:15|
 :skolemid |100|
 :pattern ( (state Heap@@55 Mask@@60) (|length2_impl'| Heap@@55 xs@@8 y@@12 akk@@8 res@@8))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_47136) (Mask@@61 T@PolymorphicMapType_47157) (xs@@9 (Array T@Ref Bool)) (y@@13 T@Ref) (akk@@9 Int) (res@@9 Int) ) (!  (=> (state Heap@@56 Mask@@61) (= (|length3_impl'| Heap@@56 xs@@9 y@@13 akk@@9 res@@9) (|length3_impl#frame| (FrameFragment_3430 (|length3_impl#condqp2| Heap@@56 xs@@9 y@@13 akk@@9 res@@9)) xs@@9 y@@13 akk@@9 res@@9)))
 :qid |stdinbpl.965:15|
 :skolemid |121|
 :pattern ( (state Heap@@56 Mask@@61) (|length3_impl'| Heap@@56 xs@@9 y@@13 akk@@9 res@@9))
)))
(assert (forall ((p@@3 T@Field_25322_25613) (v_1@@2 T@FrameType) (q T@Field_25322_25613) (w@@2 T@FrameType) (r@@2 T@Field_25322_25613) (u T@FrameType) ) (!  (=> (and (InsidePredicate_47196_47196 p@@3 v_1@@2 q w@@2) (InsidePredicate_47196_47196 q w@@2 r@@2 u)) (InsidePredicate_47196_47196 p@@3 v_1@@2 r@@2 u))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_47196 p@@3 v_1@@2 q w@@2) (InsidePredicate_47196_47196 q w@@2 r@@2 u))
)))
(assert (forall ((p@@4 T@Field_25322_25613) (v_1@@3 T@FrameType) (q@@0 T@Field_25322_25613) (w@@3 T@FrameType) (r@@3 T@Field_58346_58347) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_47196 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_47196_25637 q@@0 w@@3 r@@3 u@@0)) (InsidePredicate_47196_25637 p@@4 v_1@@3 r@@3 u@@0))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_47196 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_47196_25637 q@@0 w@@3 r@@3 u@@0))
)))
(assert (forall ((p@@5 T@Field_25322_25613) (v_1@@4 T@FrameType) (q@@1 T@Field_25322_25613) (w@@4 T@FrameType) (r@@4 T@Field_53871_53872) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_47196 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_47196_25612 q@@1 w@@4 r@@4 u@@1)) (InsidePredicate_47196_25612 p@@5 v_1@@4 r@@4 u@@1))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_47196 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_47196_25612 q@@1 w@@4 r@@4 u@@1))
)))
(assert (forall ((p@@6 T@Field_25322_25613) (v_1@@5 T@FrameType) (q@@2 T@Field_58346_58347) (w@@5 T@FrameType) (r@@5 T@Field_25322_25613) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25637 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_25637_47196 q@@2 w@@5 r@@5 u@@2)) (InsidePredicate_47196_47196 p@@6 v_1@@5 r@@5 u@@2))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25637 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_25637_47196 q@@2 w@@5 r@@5 u@@2))
)))
(assert (forall ((p@@7 T@Field_25322_25613) (v_1@@6 T@FrameType) (q@@3 T@Field_58346_58347) (w@@6 T@FrameType) (r@@6 T@Field_58346_58347) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25637 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_25637_25637 q@@3 w@@6 r@@6 u@@3)) (InsidePredicate_47196_25637 p@@7 v_1@@6 r@@6 u@@3))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25637 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_25637_25637 q@@3 w@@6 r@@6 u@@3))
)))
(assert (forall ((p@@8 T@Field_25322_25613) (v_1@@7 T@FrameType) (q@@4 T@Field_58346_58347) (w@@7 T@FrameType) (r@@7 T@Field_53871_53872) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25637 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_25637_25612 q@@4 w@@7 r@@7 u@@4)) (InsidePredicate_47196_25612 p@@8 v_1@@7 r@@7 u@@4))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25637 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_25637_25612 q@@4 w@@7 r@@7 u@@4))
)))
(assert (forall ((p@@9 T@Field_25322_25613) (v_1@@8 T@FrameType) (q@@5 T@Field_53871_53872) (w@@8 T@FrameType) (r@@8 T@Field_25322_25613) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25612 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_25612_47196 q@@5 w@@8 r@@8 u@@5)) (InsidePredicate_47196_47196 p@@9 v_1@@8 r@@8 u@@5))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25612 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_25612_47196 q@@5 w@@8 r@@8 u@@5))
)))
(assert (forall ((p@@10 T@Field_25322_25613) (v_1@@9 T@FrameType) (q@@6 T@Field_53871_53872) (w@@9 T@FrameType) (r@@9 T@Field_58346_58347) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25612 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_25612_25637 q@@6 w@@9 r@@9 u@@6)) (InsidePredicate_47196_25637 p@@10 v_1@@9 r@@9 u@@6))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25612 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_25612_25637 q@@6 w@@9 r@@9 u@@6))
)))
(assert (forall ((p@@11 T@Field_25322_25613) (v_1@@10 T@FrameType) (q@@7 T@Field_53871_53872) (w@@10 T@FrameType) (r@@10 T@Field_53871_53872) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25612 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_25612_25612 q@@7 w@@10 r@@10 u@@7)) (InsidePredicate_47196_25612 p@@11 v_1@@10 r@@10 u@@7))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25612 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_25612_25612 q@@7 w@@10 r@@10 u@@7))
)))
(assert (forall ((p@@12 T@Field_58346_58347) (v_1@@11 T@FrameType) (q@@8 T@Field_25322_25613) (w@@11 T@FrameType) (r@@11 T@Field_25322_25613) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_47196 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_47196_47196 q@@8 w@@11 r@@11 u@@8)) (InsidePredicate_25637_47196 p@@12 v_1@@11 r@@11 u@@8))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_47196 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_47196_47196 q@@8 w@@11 r@@11 u@@8))
)))
(assert (forall ((p@@13 T@Field_58346_58347) (v_1@@12 T@FrameType) (q@@9 T@Field_25322_25613) (w@@12 T@FrameType) (r@@12 T@Field_58346_58347) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_47196 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_47196_25637 q@@9 w@@12 r@@12 u@@9)) (InsidePredicate_25637_25637 p@@13 v_1@@12 r@@12 u@@9))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_47196 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_47196_25637 q@@9 w@@12 r@@12 u@@9))
)))
(assert (forall ((p@@14 T@Field_58346_58347) (v_1@@13 T@FrameType) (q@@10 T@Field_25322_25613) (w@@13 T@FrameType) (r@@13 T@Field_53871_53872) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_47196 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_47196_25612 q@@10 w@@13 r@@13 u@@10)) (InsidePredicate_25637_25612 p@@14 v_1@@13 r@@13 u@@10))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_47196 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_47196_25612 q@@10 w@@13 r@@13 u@@10))
)))
(assert (forall ((p@@15 T@Field_58346_58347) (v_1@@14 T@FrameType) (q@@11 T@Field_58346_58347) (w@@14 T@FrameType) (r@@14 T@Field_25322_25613) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25637 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_25637_47196 q@@11 w@@14 r@@14 u@@11)) (InsidePredicate_25637_47196 p@@15 v_1@@14 r@@14 u@@11))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25637 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_25637_47196 q@@11 w@@14 r@@14 u@@11))
)))
(assert (forall ((p@@16 T@Field_58346_58347) (v_1@@15 T@FrameType) (q@@12 T@Field_58346_58347) (w@@15 T@FrameType) (r@@15 T@Field_58346_58347) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25637 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_25637_25637 q@@12 w@@15 r@@15 u@@12)) (InsidePredicate_25637_25637 p@@16 v_1@@15 r@@15 u@@12))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25637 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_25637_25637 q@@12 w@@15 r@@15 u@@12))
)))
(assert (forall ((p@@17 T@Field_58346_58347) (v_1@@16 T@FrameType) (q@@13 T@Field_58346_58347) (w@@16 T@FrameType) (r@@16 T@Field_53871_53872) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25637 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_25637_25612 q@@13 w@@16 r@@16 u@@13)) (InsidePredicate_25637_25612 p@@17 v_1@@16 r@@16 u@@13))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25637 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_25637_25612 q@@13 w@@16 r@@16 u@@13))
)))
(assert (forall ((p@@18 T@Field_58346_58347) (v_1@@17 T@FrameType) (q@@14 T@Field_53871_53872) (w@@17 T@FrameType) (r@@17 T@Field_25322_25613) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25612 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_25612_47196 q@@14 w@@17 r@@17 u@@14)) (InsidePredicate_25637_47196 p@@18 v_1@@17 r@@17 u@@14))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25612 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_25612_47196 q@@14 w@@17 r@@17 u@@14))
)))
(assert (forall ((p@@19 T@Field_58346_58347) (v_1@@18 T@FrameType) (q@@15 T@Field_53871_53872) (w@@18 T@FrameType) (r@@18 T@Field_58346_58347) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25612 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_25612_25637 q@@15 w@@18 r@@18 u@@15)) (InsidePredicate_25637_25637 p@@19 v_1@@18 r@@18 u@@15))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25612 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_25612_25637 q@@15 w@@18 r@@18 u@@15))
)))
(assert (forall ((p@@20 T@Field_58346_58347) (v_1@@19 T@FrameType) (q@@16 T@Field_53871_53872) (w@@19 T@FrameType) (r@@19 T@Field_53871_53872) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25612 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_25612_25612 q@@16 w@@19 r@@19 u@@16)) (InsidePredicate_25637_25612 p@@20 v_1@@19 r@@19 u@@16))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25612 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_25612_25612 q@@16 w@@19 r@@19 u@@16))
)))
(assert (forall ((p@@21 T@Field_53871_53872) (v_1@@20 T@FrameType) (q@@17 T@Field_25322_25613) (w@@20 T@FrameType) (r@@20 T@Field_25322_25613) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_47196 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_47196_47196 q@@17 w@@20 r@@20 u@@17)) (InsidePredicate_25612_47196 p@@21 v_1@@20 r@@20 u@@17))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_47196 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_47196_47196 q@@17 w@@20 r@@20 u@@17))
)))
(assert (forall ((p@@22 T@Field_53871_53872) (v_1@@21 T@FrameType) (q@@18 T@Field_25322_25613) (w@@21 T@FrameType) (r@@21 T@Field_58346_58347) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_47196 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_47196_25637 q@@18 w@@21 r@@21 u@@18)) (InsidePredicate_25612_25637 p@@22 v_1@@21 r@@21 u@@18))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_47196 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_47196_25637 q@@18 w@@21 r@@21 u@@18))
)))
(assert (forall ((p@@23 T@Field_53871_53872) (v_1@@22 T@FrameType) (q@@19 T@Field_25322_25613) (w@@22 T@FrameType) (r@@22 T@Field_53871_53872) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_47196 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_47196_25612 q@@19 w@@22 r@@22 u@@19)) (InsidePredicate_25612_25612 p@@23 v_1@@22 r@@22 u@@19))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_47196 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_47196_25612 q@@19 w@@22 r@@22 u@@19))
)))
(assert (forall ((p@@24 T@Field_53871_53872) (v_1@@23 T@FrameType) (q@@20 T@Field_58346_58347) (w@@23 T@FrameType) (r@@23 T@Field_25322_25613) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25637 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_25637_47196 q@@20 w@@23 r@@23 u@@20)) (InsidePredicate_25612_47196 p@@24 v_1@@23 r@@23 u@@20))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25637 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_25637_47196 q@@20 w@@23 r@@23 u@@20))
)))
(assert (forall ((p@@25 T@Field_53871_53872) (v_1@@24 T@FrameType) (q@@21 T@Field_58346_58347) (w@@24 T@FrameType) (r@@24 T@Field_58346_58347) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25637 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_25637_25637 q@@21 w@@24 r@@24 u@@21)) (InsidePredicate_25612_25637 p@@25 v_1@@24 r@@24 u@@21))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25637 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_25637_25637 q@@21 w@@24 r@@24 u@@21))
)))
(assert (forall ((p@@26 T@Field_53871_53872) (v_1@@25 T@FrameType) (q@@22 T@Field_58346_58347) (w@@25 T@FrameType) (r@@25 T@Field_53871_53872) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25637 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_25637_25612 q@@22 w@@25 r@@25 u@@22)) (InsidePredicate_25612_25612 p@@26 v_1@@25 r@@25 u@@22))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25637 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_25637_25612 q@@22 w@@25 r@@25 u@@22))
)))
(assert (forall ((p@@27 T@Field_53871_53872) (v_1@@26 T@FrameType) (q@@23 T@Field_53871_53872) (w@@26 T@FrameType) (r@@26 T@Field_25322_25613) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25612 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_25612_47196 q@@23 w@@26 r@@26 u@@23)) (InsidePredicate_25612_47196 p@@27 v_1@@26 r@@26 u@@23))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25612 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_25612_47196 q@@23 w@@26 r@@26 u@@23))
)))
(assert (forall ((p@@28 T@Field_53871_53872) (v_1@@27 T@FrameType) (q@@24 T@Field_53871_53872) (w@@27 T@FrameType) (r@@27 T@Field_58346_58347) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25612 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_25612_25637 q@@24 w@@27 r@@27 u@@24)) (InsidePredicate_25612_25637 p@@28 v_1@@27 r@@27 u@@24))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25612 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_25612_25637 q@@24 w@@27 r@@27 u@@24))
)))
(assert (forall ((p@@29 T@Field_53871_53872) (v_1@@28 T@FrameType) (q@@25 T@Field_53871_53872) (w@@28 T@FrameType) (r@@28 T@Field_53871_53872) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25612 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_25612_25612 q@@25 w@@28 r@@28 u@@25)) (InsidePredicate_25612_25612 p@@29 v_1@@28 r@@28 u@@25))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25612 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_25612_25612 q@@25 w@@28 r@@28 u@@25))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.325:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_47136) (Mask@@62 T@PolymorphicMapType_47157) (xs@@10 (Array T@Ref Bool)) (y@@14 T@Ref) (akk@@10 Int) (res@@10 Int) ) (!  (=> (and (state Heap@@57 Mask@@62) (< AssumeFunctionsAbove 1)) (= (length3_impl Heap@@57 xs@@10 y@@14 akk@@10 res@@10) (forall ((x_1 T@Ref) ) (!  (=> (and (select xs@@10 x_1) (= x_1 y@@14)) (ite (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@57) x_1 next) null) (= res@@10 akk@@10) (|length3_impl'| Heap@@57 xs@@10 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@57) x_1 next) (+ akk@@10 1) res@@10)))
 :qid |stdinbpl.957:100|
 :skolemid |119|
 :pattern ( (select xs@@10 x_1))
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@57) null (list x_1)))
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@57) x_1 next))
))))
 :qid |stdinbpl.955:15|
 :skolemid |120|
 :pattern ( (state Heap@@57 Mask@@62) (length3_impl Heap@@57 xs@@10 y@@14 akk@@10 res@@10))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_47136) (Mask@@63 T@PolymorphicMapType_47157) (xs@@11 (Array T@Ref Bool)) (y@@15 T@Ref) (akk@@11 Int) (res@@11 Int) ) (!  (=> (and (state Heap@@58 Mask@@63) (< AssumeFunctionsAbove 2)) (= (length_impl Heap@@58 xs@@11 y@@15 akk@@11 res@@11) (forall ((x@@11 T@Ref) ) (!  (=> (and (select xs@@11 x@@11) (= x@@11 y@@15)) (ite (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@58) x@@11 next) null) (= res@@11 akk@@11) (|length_impl'| Heap@@58 xs@@11 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@58) x@@11 next) (+ akk@@11 1) res@@11)))
 :qid |stdinbpl.588:99|
 :skolemid |91|
 :pattern ( (select xs@@11 x@@11))
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@58) null (list x@@11)))
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@58) x@@11 next))
))))
 :qid |stdinbpl.586:15|
 :skolemid |92|
 :pattern ( (state Heap@@58 Mask@@63) (length_impl Heap@@58 xs@@11 y@@15 akk@@11 res@@11))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_47136) (Mask@@64 T@PolymorphicMapType_47157) (xs@@12 (Array T@Ref Bool)) (y@@16 T@Ref) (akk@@12 Int) (res@@12 Int) ) (!  (=> (and (state Heap@@59 Mask@@64) (< AssumeFunctionsAbove 3)) (= (length2_impl Heap@@59 xs@@12 y@@16 akk@@12 res@@12) (forall ((x_1@@0 T@Ref) ) (!  (=> (and (select xs@@12 x_1@@0) (= x_1@@0 y@@16)) (ite (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@59) x_1@@0 next) null) (= res@@12 akk@@12) (|length2_impl'| Heap@@59 xs@@12 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@59) x_1@@0 next) (+ akk@@12 1) res@@12)))
 :qid |stdinbpl.726:100|
 :skolemid |98|
 :pattern ( (select xs@@12 x_1@@0))
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@59) null (list x_1@@0)))
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@59) x_1@@0 next))
))))
 :qid |stdinbpl.724:15|
 :skolemid |99|
 :pattern ( (state Heap@@59 Mask@@64) (length2_impl Heap@@59 xs@@12 y@@16 akk@@12 res@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_25717| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.258:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_25717| a@@20 b@@13) o@@4))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_47136) (l_1@@0 T@Ref) (i@@6 Int) ) (!  (and (= (foo_1 Heap@@60 l_1@@0 i@@6) (|foo'| Heap@@60 l_1@@0 i@@6)) (dummyFunction_3723 (|foo#triggerStateless| l_1@@0 i@@6)))
 :qid |stdinbpl.433:15|
 :skolemid |82|
 :pattern ( (foo_1 Heap@@60 l_1@@0 i@@6))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_47136) (Mask@@65 T@PolymorphicMapType_47157) (l_1@@1 T@Ref) (i@@7 Int) ) (!  (=> (and (state Heap@@61 Mask@@65) (< AssumeFunctionsAbove 0)) (= (foo_1 Heap@@61 l_1@@1 i@@7) (forall ((j Int) ) (!  (=> (= i@@7 j) (or (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@61) l_1@@1 next) null) (|foo'| Heap@@61 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@61) l_1@@1 next) j)))
 :qid |stdinbpl.445:84|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@61) null (list2 l_1@@1 j)))
 :pattern ( (|foo#frame| (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@61) null (list2 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@61) l_1@@1 next) j)) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@61) l_1@@1 next) j))
))))
 :qid |stdinbpl.443:15|
 :skolemid |85|
 :pattern ( (state Heap@@61 Mask@@65) (foo_1 Heap@@61 l_1@@1 i@@7))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_47136) (Mask@@66 T@PolymorphicMapType_47157) (l_1@@2 T@Ref) (i@@8 Int) ) (!  (=> (state Heap@@62 Mask@@66) (= (|foo'| Heap@@62 l_1@@2 i@@8) (|foo#frame| (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@62) null (list2 l_1@@2 i@@8)) l_1@@2 i@@8)))
 :qid |stdinbpl.453:15|
 :skolemid |86|
 :pattern ( (state Heap@@62 Mask@@66) (|foo'| Heap@@62 l_1@@2 i@@8))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_47157)
(declare-fun Heap@@63 () T@PolymorphicMapType_47136)
(declare-fun l_1@@3 () T@Ref)
(declare-fun j_12 () Int)
(declare-fun Heap@3 () T@PolymorphicMapType_47136)
(declare-fun Mask@0 () T@PolymorphicMapType_47157)
(declare-fun Heap@1 () T@PolymorphicMapType_47136)
(declare-fun newPMask@0 () T@PolymorphicMapType_47685)
(declare-fun Heap@2 () T@PolymorphicMapType_47136)
(declare-fun Heap@0 () T@PolymorphicMapType_47136)
(declare-fun |foo#trigger_1| (T@FrameType T@Ref Int) Bool)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_47157)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_47157)
(declare-fun i@@9 () Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_25323 (T@Ref) T@FrameType)
(declare-fun FrameFragment_25613 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_47157)
(set-info :boogie-vc-id |foo#definedness|)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon18_Then_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| UnfoldingMask@3) null (list2 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) j_12)))))))
(let ((anon12_correct true))
(let ((anon11_correct  (=> (and (state Heap@3 Mask@0) (= (ControlFlow 0 6) 2)) anon12_correct)))
(let ((anon19_Else_correct  (=> (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 8) 6)) anon11_correct))))
(let ((anon19_Then_correct  (=> (not (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_53405_3430) ) (!  (=> (or (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5 f_11) (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5 f_11)) (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| newPMask@0) o_5 f_11))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_47209_47210) ) (!  (=> (or (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@0 f_11@@0)) (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_47196_53) ) (!  (=> (or (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@1 f_11@@1)) (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_25322_25613) ) (!  (=> (or (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@2 f_11@@2)) (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_25322_56633) ) (!  (=> (or (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@3 f_11@@3)) (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_25612_3430) ) (!  (=> (or (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@4 f_11@@4)) (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_25612_25323) ) (!  (=> (or (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@5 f_11@@5)) (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_25612_53) ) (!  (=> (or (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@6 f_11@@6)) (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| newPMask@0) o_5@@6 f_11@@6))
))) (forall ((o_5@@7 T@Ref) (f_11@@7 T@Field_53871_53872) ) (!  (=> (or (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@7 f_11@@7) (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@7 f_11@@7)) (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| newPMask@0) o_5@@7 f_11@@7))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| newPMask@0) o_5@@7 f_11@@7))
))) (forall ((o_5@@8 T@Ref) (f_11@@8 T@Field_56628_56633) ) (!  (=> (or (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@8 f_11@@8) (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@8 f_11@@8)) (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| newPMask@0) o_5@@8 f_11@@8))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| newPMask@0) o_5@@8 f_11@@8))
))) (forall ((o_5@@9 T@Ref) (f_11@@9 T@Field_25637_3430) ) (!  (=> (or (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@9 f_11@@9) (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@9 f_11@@9)) (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| newPMask@0) o_5@@9 f_11@@9))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| newPMask@0) o_5@@9 f_11@@9))
))) (forall ((o_5@@10 T@Ref) (f_11@@10 T@Field_25637_25323) ) (!  (=> (or (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@10 f_11@@10) (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@10 f_11@@10)) (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| newPMask@0) o_5@@10 f_11@@10))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| newPMask@0) o_5@@10 f_11@@10))
))) (forall ((o_5@@11 T@Ref) (f_11@@11 T@Field_25637_53) ) (!  (=> (or (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@11 f_11@@11) (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@11 f_11@@11)) (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| newPMask@0) o_5@@11 f_11@@11))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| newPMask@0) o_5@@11 f_11@@11))
))) (forall ((o_5@@12 T@Ref) (f_11@@12 T@Field_58346_58347) ) (!  (=> (or (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@12 f_11@@12) (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@12 f_11@@12)) (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| newPMask@0) o_5@@12 f_11@@12))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| newPMask@0) o_5@@12 f_11@@12))
))) (forall ((o_5@@13 T@Ref) (f_11@@13 T@Field_60819_60824) ) (!  (=> (or (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12))) o_5@@13 f_11@@13) (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) l_1@@3 next) j_12))) o_5@@13 f_11@@13)) (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| newPMask@0) o_5@@13 f_11@@13))
 :qid |stdinbpl.551:37|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| newPMask@0) o_5@@13 f_11@@13))
))) (= Heap@2 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@1) (store (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@1) null (|list2#sm| l_1@@3 j_12) newPMask@0) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@1) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 7) 6))) anon11_correct))))
(let ((anon9_correct  (=> (and (= Heap@0 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@63) (store (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12) (PolymorphicMapType_47685 (store (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) l_1@@3 elem true) (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@63) null (|list2#sm| l_1@@3 j_12))))) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@63) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@63))) (= Heap@1 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@0) (store (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12) (PolymorphicMapType_47685 (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (store (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) l_1@@3 next true) (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))) (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@0) null (|list2#sm| l_1@@3 j_12))))) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@0) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@0)))) (and (=> (= (ControlFlow 0 9) 7) anon19_Then_correct) (=> (= (ControlFlow 0 9) 8) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (|foo#trigger_1| (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@63) null (list2 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) j_12)) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) j_12) (= (ControlFlow 0 11) 9)) anon9_correct)))
(let ((anon17_Else_correct  (=> (not (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) null)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_25322_25323 UnfoldingMask@3 l_1@@3 next)) (=> (HasDirectPerm_25322_25323 UnfoldingMask@3 l_1@@3 next) (and (=> (= (ControlFlow 0 12) 5) anon18_Then_correct) (=> (= (ControlFlow 0 12) 11) anon18_Else_correct)))))))
(let ((anon17_Then_correct  (=> (and (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) null) (= (ControlFlow 0 10) 9)) anon9_correct)))
(let ((anon4_correct  (=> (state Heap@@63 UnfoldingMask@3) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_25322_25323 UnfoldingMask@3 l_1@@3 next)) (=> (HasDirectPerm_25322_25323 UnfoldingMask@3 l_1@@3 next) (and (=> (= (ControlFlow 0 14) 10) anon17_Then_correct) (=> (= (ControlFlow 0 14) 12) anon17_Else_correct)))))))
(let ((anon16_Else_correct  (=> (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 17) 14)) anon4_correct))))
(let ((anon16_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) null)) (= UnfoldingMask@2 (PolymorphicMapType_47157 (store (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| UnfoldingMask@1) null (list2 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) j_12) (+ (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| UnfoldingMask@1) null (list2 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) j_12)) FullPerm)) (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| UnfoldingMask@1) (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_25612_25612 (list2 l_1@@3 j_12) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@63) null (list2 l_1@@3 j_12)) (list2 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) j_12) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@63) null (list2 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) j_12))) (state Heap@@63 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 16) 14))) anon4_correct))))
(let ((anon15_Then_correct  (=> (= i@@9 j_12) (=> (and (|list2#trigger_25612| Heap@@63 (list2 l_1@@3 j_12)) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@63) null (list2 l_1@@3 j_12)) (CombineFrames (FrameFragment_3430 (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@63) l_1@@3 elem)) (CombineFrames (FrameFragment_25323 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next)) (FrameFragment_25613 (ite (not (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) null)) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@63) null (list2 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@63) l_1@@3 next) j_12)) EmptyFrame)))))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| Mask@0) null (list2 l_1@@3 j_12))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| Mask@0) null (list2 l_1@@3 j_12)))) (=> (and (not (= l_1@@3 null)) (= UnfoldingMask@0 (PolymorphicMapType_47157 (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| Mask@0) (store (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| Mask@0) l_1@@3 elem (+ (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| Mask@0) l_1@@3 elem) FullPerm)) (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| Mask@0) (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| Mask@0)))) (=> (and (and (state Heap@@63 UnfoldingMask@0) (not (= l_1@@3 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_47157 (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| UnfoldingMask@0) (store (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| UnfoldingMask@0) l_1@@3 next (+ (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| UnfoldingMask@0) l_1@@3 next) FullPerm)) (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| UnfoldingMask@0) (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| UnfoldingMask@0))) (state Heap@@63 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 18) 16) anon16_Then_correct) (=> (= (ControlFlow 0 18) 17) anon16_Else_correct))))))))))
(let ((anon15_Else_correct  (=> (and (not (= i@@9 j_12)) (= (ControlFlow 0 3) 2)) anon12_correct)))
(let ((anon14_Else_correct true))
(let ((anon0_correct  (=> (state Heap@@63 ZeroMask) (=> (and (not AssumePermUpperBound) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@63) l_1@@3 $allocated)) (=> (and (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_47157 (store (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| ZeroMask) null (list2 l_1@@3 i@@9) (+ (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| ZeroMask) null (list2 l_1@@3 i@@9)) FullPerm)) (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| ZeroMask) (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| ZeroMask)))) (and (state Heap@@63 Mask@0) (state Heap@@63 Mask@0))) (and (and (=> (= (ControlFlow 0 20) 1) anon14_Else_correct) (=> (= (ControlFlow 0 20) 18) anon15_Then_correct)) (=> (= (ControlFlow 0 20) 3) anon15_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21) 20) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
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
(declare-sort T@Field_47196_53 0)
(declare-sort T@Field_47209_47210 0)
(declare-sort T@Field_53871_53872 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_53405_3430 0)
(declare-sort T@Field_56628_56633 0)
(declare-sort T@Field_58346_58347 0)
(declare-sort T@Field_60819_60824 0)
(declare-sort T@Field_25322_25613 0)
(declare-sort T@Field_25322_56633 0)
(declare-sort T@Field_25612_25323 0)
(declare-sort T@Field_25612_53 0)
(declare-sort T@Field_25612_3430 0)
(declare-sort T@Field_25637_25323 0)
(declare-sort T@Field_25637_53 0)
(declare-sort T@Field_25637_3430 0)
(declare-datatypes ((T@PolymorphicMapType_47157 0)) (((PolymorphicMapType_47157 (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| (Array T@Ref T@Field_53871_53872 Real)) (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| (Array T@Ref T@Field_53405_3430 Real)) (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| (Array T@Ref T@Field_47209_47210 Real)) (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| (Array T@Ref T@Field_58346_58347 Real)) (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| (Array T@Ref T@Field_25612_3430 Real)) (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| (Array T@Ref T@Field_25612_25323 Real)) (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| (Array T@Ref T@Field_25612_53 Real)) (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| (Array T@Ref T@Field_56628_56633 Real)) (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| (Array T@Ref T@Field_25322_25613 Real)) (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| (Array T@Ref T@Field_47196_53 Real)) (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| (Array T@Ref T@Field_25322_56633 Real)) (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| (Array T@Ref T@Field_25637_3430 Real)) (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| (Array T@Ref T@Field_25637_25323 Real)) (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| (Array T@Ref T@Field_25637_53 Real)) (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| (Array T@Ref T@Field_60819_60824 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_47685 0)) (((PolymorphicMapType_47685 (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (Array T@Ref T@Field_53405_3430 Bool)) (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (Array T@Ref T@Field_47209_47210 Bool)) (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (Array T@Ref T@Field_47196_53 Bool)) (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (Array T@Ref T@Field_25322_25613 Bool)) (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (Array T@Ref T@Field_25322_56633 Bool)) (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (Array T@Ref T@Field_25612_3430 Bool)) (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (Array T@Ref T@Field_25612_25323 Bool)) (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (Array T@Ref T@Field_25612_53 Bool)) (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (Array T@Ref T@Field_53871_53872 Bool)) (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (Array T@Ref T@Field_56628_56633 Bool)) (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (Array T@Ref T@Field_25637_3430 Bool)) (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (Array T@Ref T@Field_25637_25323 Bool)) (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (Array T@Ref T@Field_25637_53 Bool)) (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (Array T@Ref T@Field_58346_58347 Bool)) (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (Array T@Ref T@Field_60819_60824 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_47136 0)) (((PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| (Array T@Ref T@Field_47196_53 Bool)) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| (Array T@Ref T@Field_47209_47210 T@Ref)) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| (Array T@Ref T@Field_53871_53872 T@FrameType)) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| (Array T@Ref T@Field_53405_3430 Int)) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| (Array T@Ref T@Field_56628_56633 T@PolymorphicMapType_47685)) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| (Array T@Ref T@Field_58346_58347 T@FrameType)) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| (Array T@Ref T@Field_60819_60824 T@PolymorphicMapType_47685)) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| (Array T@Ref T@Field_25322_25613 T@FrameType)) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| (Array T@Ref T@Field_25322_56633 T@PolymorphicMapType_47685)) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| (Array T@Ref T@Field_25612_25323 T@Ref)) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| (Array T@Ref T@Field_25612_53 Bool)) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| (Array T@Ref T@Field_25612_3430 Int)) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| (Array T@Ref T@Field_25637_25323 T@Ref)) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| (Array T@Ref T@Field_25637_53 Bool)) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| (Array T@Ref T@Field_25637_3430 Int)) ) ) ))
(declare-fun $allocated () T@Field_47196_53)
(declare-fun elem () T@Field_53405_3430)
(declare-fun next () T@Field_47209_47210)
(declare-fun length_impl (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun |length_impl'| (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun dummyFunction_3723 (Bool) Bool)
(declare-fun |length_impl#triggerStateless| ((Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun length2_impl (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun |length2_impl'| (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun |length2_impl#triggerStateless| ((Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun length3_impl (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun |length3_impl'| (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun |length3_impl#triggerStateless| ((Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun succHeap (T@PolymorphicMapType_47136 T@PolymorphicMapType_47136) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_47136 T@PolymorphicMapType_47136) Bool)
(declare-fun state (T@PolymorphicMapType_47136 T@PolymorphicMapType_47157) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_47157) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_47685)
(declare-fun list2 (T@Ref Int) T@Field_53871_53872)
(declare-fun IsPredicateField_25612_25613 (T@Field_53871_53872) Bool)
(declare-fun |foo'| (T@PolymorphicMapType_47136 T@Ref Int) Bool)
(declare-fun |foo#triggerStateless| (T@Ref Int) Bool)
(declare-fun |list2#trigger_25612| (T@PolymorphicMapType_47136 T@Field_53871_53872) Bool)
(declare-fun |list2#everUsed_25612| (T@Field_53871_53872) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun list (T@Ref) T@Field_58346_58347)
(declare-fun IsPredicateField_25637_25638 (T@Field_58346_58347) Bool)
(declare-fun |list#trigger_25637| (T@PolymorphicMapType_47136 T@Field_58346_58347) Bool)
(declare-fun |list#everUsed_25637| (T@Field_58346_58347) Bool)
(declare-fun |Set#Union_25717| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_25717| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_25717| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_25717| ((Array T@Ref Bool)) Int)
(declare-fun |length_impl#frame| (T@FrameType (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun null () T@Ref)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_47136 T@PolymorphicMapType_47136 T@PolymorphicMapType_47157) Bool)
(declare-fun PredicateMaskField_25637 (T@Field_58346_58347) T@Field_60819_60824)
(declare-fun HasDirectPerm_25637_25638 (T@PolymorphicMapType_47157 T@Ref T@Field_58346_58347) Bool)
(declare-fun PredicateMaskField_25612 (T@Field_53871_53872) T@Field_56628_56633)
(declare-fun HasDirectPerm_25612_25613 (T@PolymorphicMapType_47157 T@Ref T@Field_53871_53872) Bool)
(declare-fun IsPredicateField_25322_172253 (T@Field_25322_25613) Bool)
(declare-fun PredicateMaskField_25322 (T@Field_25322_25613) T@Field_25322_56633)
(declare-fun HasDirectPerm_25322_25613 (T@PolymorphicMapType_47157 T@Ref T@Field_25322_25613) Bool)
(declare-fun IsWandField_25637_177934 (T@Field_58346_58347) Bool)
(declare-fun WandMaskField_25637 (T@Field_58346_58347) T@Field_60819_60824)
(declare-fun IsWandField_25612_177577 (T@Field_53871_53872) Bool)
(declare-fun WandMaskField_25612 (T@Field_53871_53872) T@Field_56628_56633)
(declare-fun IsWandField_25322_177220 (T@Field_25322_25613) Bool)
(declare-fun WandMaskField_25322 (T@Field_25322_25613) T@Field_25322_56633)
(declare-fun |list2#sm| (T@Ref Int) T@Field_56628_56633)
(declare-fun |list#sm| (T@Ref) T@Field_60819_60824)
(declare-fun dummyHeap () T@PolymorphicMapType_47136)
(declare-fun ZeroMask () T@PolymorphicMapType_47157)
(declare-fun InsidePredicate_47196_47196 (T@Field_25322_25613 T@FrameType T@Field_25322_25613 T@FrameType) Bool)
(declare-fun InsidePredicate_25637_25637 (T@Field_58346_58347 T@FrameType T@Field_58346_58347 T@FrameType) Bool)
(declare-fun InsidePredicate_25612_25612 (T@Field_53871_53872 T@FrameType T@Field_53871_53872 T@FrameType) Bool)
(declare-fun IsPredicateField_25320_3430 (T@Field_53405_3430) Bool)
(declare-fun IsWandField_25320_3430 (T@Field_53405_3430) Bool)
(declare-fun IsPredicateField_25322_25323 (T@Field_47209_47210) Bool)
(declare-fun IsWandField_25322_25323 (T@Field_47209_47210) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_25637_188223 (T@Field_60819_60824) Bool)
(declare-fun IsWandField_25637_188239 (T@Field_60819_60824) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_25637_53 (T@Field_25637_53) Bool)
(declare-fun IsWandField_25637_53 (T@Field_25637_53) Bool)
(declare-fun IsPredicateField_25637_25323 (T@Field_25637_25323) Bool)
(declare-fun IsWandField_25637_25323 (T@Field_25637_25323) Bool)
(declare-fun IsPredicateField_25637_3430 (T@Field_25637_3430) Bool)
(declare-fun IsWandField_25637_3430 (T@Field_25637_3430) Bool)
(declare-fun IsPredicateField_25320_187392 (T@Field_25322_56633) Bool)
(declare-fun IsWandField_25320_187408 (T@Field_25322_56633) Bool)
(declare-fun IsPredicateField_25320_53 (T@Field_47196_53) Bool)
(declare-fun IsWandField_25320_53 (T@Field_47196_53) Bool)
(declare-fun IsPredicateField_25612_186589 (T@Field_56628_56633) Bool)
(declare-fun IsWandField_25612_186605 (T@Field_56628_56633) Bool)
(declare-fun IsPredicateField_25612_53 (T@Field_25612_53) Bool)
(declare-fun IsWandField_25612_53 (T@Field_25612_53) Bool)
(declare-fun IsPredicateField_25612_25323 (T@Field_25612_25323) Bool)
(declare-fun IsWandField_25612_25323 (T@Field_25612_25323) Bool)
(declare-fun IsPredicateField_25612_3430 (T@Field_25612_3430) Bool)
(declare-fun IsWandField_25612_3430 (T@Field_25612_3430) Bool)
(declare-fun HasDirectPerm_25637_172008 (T@PolymorphicMapType_47157 T@Ref T@Field_60819_60824) Bool)
(declare-fun HasDirectPerm_25637_3430 (T@PolymorphicMapType_47157 T@Ref T@Field_25637_3430) Bool)
(declare-fun HasDirectPerm_25637_53 (T@PolymorphicMapType_47157 T@Ref T@Field_25637_53) Bool)
(declare-fun HasDirectPerm_25637_25323 (T@PolymorphicMapType_47157 T@Ref T@Field_25637_25323) Bool)
(declare-fun HasDirectPerm_25612_170910 (T@PolymorphicMapType_47157 T@Ref T@Field_56628_56633) Bool)
(declare-fun HasDirectPerm_25612_3430 (T@PolymorphicMapType_47157 T@Ref T@Field_25612_3430) Bool)
(declare-fun HasDirectPerm_25612_53 (T@PolymorphicMapType_47157 T@Ref T@Field_25612_53) Bool)
(declare-fun HasDirectPerm_25612_25323 (T@PolymorphicMapType_47157 T@Ref T@Field_25612_25323) Bool)
(declare-fun HasDirectPerm_25322_169769 (T@PolymorphicMapType_47157 T@Ref T@Field_25322_56633) Bool)
(declare-fun HasDirectPerm_25322_3430 (T@PolymorphicMapType_47157 T@Ref T@Field_53405_3430) Bool)
(declare-fun HasDirectPerm_25322_53 (T@PolymorphicMapType_47157 T@Ref T@Field_47196_53) Bool)
(declare-fun HasDirectPerm_25322_25323 (T@PolymorphicMapType_47157 T@Ref T@Field_47209_47210) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_47157 T@PolymorphicMapType_47157 T@PolymorphicMapType_47157) Bool)
(declare-fun |Set#Difference_25717| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_25733| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_25612_25613 (T@Field_53871_53872) Int)
(declare-fun getPredWandId_25637_25638 (T@Field_58346_58347) Int)
(declare-fun |Set#Empty_25717| () (Array T@Ref Bool))
(declare-fun |length2_impl#condqp1| (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Int)
(declare-fun |sk_length2_impl#condqp1| (Int Int) T@Ref)
(declare-fun |length3_impl#condqp2| (T@PolymorphicMapType_47136 (Array T@Ref Bool) T@Ref Int Int) Int)
(declare-fun |sk_length3_impl#condqp2| (Int Int) T@Ref)
(declare-fun |length2_impl#frame| (T@FrameType (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun FrameFragment_3430 (Int) T@FrameType)
(declare-fun |length3_impl#frame| (T@FrameType (Array T@Ref Bool) T@Ref Int Int) Bool)
(declare-fun InsidePredicate_47196_25637 (T@Field_25322_25613 T@FrameType T@Field_58346_58347 T@FrameType) Bool)
(declare-fun InsidePredicate_47196_25612 (T@Field_25322_25613 T@FrameType T@Field_53871_53872 T@FrameType) Bool)
(declare-fun InsidePredicate_25637_47196 (T@Field_58346_58347 T@FrameType T@Field_25322_25613 T@FrameType) Bool)
(declare-fun InsidePredicate_25637_25612 (T@Field_58346_58347 T@FrameType T@Field_53871_53872 T@FrameType) Bool)
(declare-fun InsidePredicate_25612_47196 (T@Field_53871_53872 T@FrameType T@Field_25322_25613 T@FrameType) Bool)
(declare-fun InsidePredicate_25612_25637 (T@Field_53871_53872 T@FrameType T@Field_58346_58347 T@FrameType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun foo_1 (T@PolymorphicMapType_47136 T@Ref Int) Bool)
(declare-fun |foo#frame| (T@FrameType T@Ref Int) Bool)
(assert (forall ((Heap T@PolymorphicMapType_47136) (xs (Array T@Ref Bool)) (y T@Ref) (akk Int) (res Int) ) (!  (and (= (length_impl Heap xs y akk res) (|length_impl'| Heap xs y akk res)) (dummyFunction_3723 (|length_impl#triggerStateless| xs y akk res)))
 :qid |stdinbpl.576:15|
 :skolemid |89|
 :pattern ( (length_impl Heap xs y akk res))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_47136) (xs@@0 (Array T@Ref Bool)) (y@@0 T@Ref) (akk@@0 Int) (res@@0 Int) ) (!  (and (= (length2_impl Heap@@0 xs@@0 y@@0 akk@@0 res@@0) (|length2_impl'| Heap@@0 xs@@0 y@@0 akk@@0 res@@0)) (dummyFunction_3723 (|length2_impl#triggerStateless| xs@@0 y@@0 akk@@0 res@@0)))
 :qid |stdinbpl.714:15|
 :skolemid |96|
 :pattern ( (length2_impl Heap@@0 xs@@0 y@@0 akk@@0 res@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_47136) (xs@@1 (Array T@Ref Bool)) (y@@1 T@Ref) (akk@@1 Int) (res@@1 Int) ) (!  (and (= (length3_impl Heap@@1 xs@@1 y@@1 akk@@1 res@@1) (|length3_impl'| Heap@@1 xs@@1 y@@1 akk@@1 res@@1)) (dummyFunction_3723 (|length3_impl#triggerStateless| xs@@1 y@@1 akk@@1 res@@1)))
 :qid |stdinbpl.945:15|
 :skolemid |117|
 :pattern ( (length3_impl Heap@@1 xs@@1 y@@1 akk@@1 res@@1))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_47136) (Heap1 T@PolymorphicMapType_47136) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_47136) (Mask T@PolymorphicMapType_47157) ) (!  (=> (state Heap@@2 Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_47136) (Heap1@@0 T@PolymorphicMapType_47136) (Heap2 T@PolymorphicMapType_47136) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_60819_60824) ) (!  (not (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_58346_58347) ) (!  (not (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_25637_53) ) (!  (not (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_25637_25323) ) (!  (not (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_25637_3430) ) (!  (not (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_56628_56633) ) (!  (not (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_53871_53872) ) (!  (not (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_25612_53) ) (!  (not (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_25612_25323) ) (!  (not (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_25612_3430) ) (!  (not (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_25322_56633) ) (!  (not (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_25322_25613) ) (!  (not (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_47196_53) ) (!  (not (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_47209_47210) ) (!  (not (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_53405_3430) ) (!  (not (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((this T@Ref) (i Int) ) (! (IsPredicateField_25612_25613 (list2 this i))
 :qid |stdinbpl.1180:15|
 :skolemid |139|
 :pattern ( (list2 this i))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_47136) (l_1 T@Ref) (i@@0 Int) ) (! (dummyFunction_3723 (|foo#triggerStateless| l_1 i@@0))
 :qid |stdinbpl.437:15|
 :skolemid |83|
 :pattern ( (|foo'| Heap@@3 l_1 i@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_47136) (this@@0 T@Ref) (i@@1 Int) ) (! (|list2#everUsed_25612| (list2 this@@0 i@@1))
 :qid |stdinbpl.1199:15|
 :skolemid |143|
 :pattern ( (|list2#trigger_25612| Heap@@4 (list2 this@@0 i@@1)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.321:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_25637_25638 (list x))
 :qid |stdinbpl.1252:15|
 :skolemid |145|
 :pattern ( (list x))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_47136) (x@@0 T@Ref) ) (! (|list#everUsed_25637| (list x@@0))
 :qid |stdinbpl.1271:15|
 :skolemid |149|
 :pattern ( (|list#trigger_25637| Heap@@5 (list x@@0)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_25717| (|Set#Union_25717| a@@0 b@@0) b@@0) (|Set#Union_25717| a@@0 b@@0))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Set#Union_25717| (|Set#Union_25717| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_25717| (|Set#Intersection_25717| a@@1 b@@1) b@@1) (|Set#Intersection_25717| a@@1 b@@1))
 :qid |stdinbpl.277:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_25717| (|Set#Intersection_25717| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_25717| r) o) (= r o))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_25717| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_25717| (|Set#Union_25717| a@@2 b@@2)) (|Set#Card_25717| (|Set#Intersection_25717| a@@2 b@@2))) (+ (|Set#Card_25717| a@@2) (|Set#Card_25717| b@@2)))
 :qid |stdinbpl.281:18|
 :skolemid |42|
 :pattern ( (|Set#Card_25717| (|Set#Union_25717| a@@2 b@@2)))
 :pattern ( (|Set#Card_25717| (|Set#Intersection_25717| a@@2 b@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_47136) (Mask@@0 T@PolymorphicMapType_47157) (xs@@2 (Array T@Ref Bool)) (y@@2 T@Ref) (akk@@2 Int) (res@@2 Int) ) (!  (=> (state Heap@@6 Mask@@0) (= (|length_impl'| Heap@@6 xs@@2 y@@2 akk@@2 res@@2) (|length_impl#frame| (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@6) null (list y@@2)) xs@@2 y@@2 akk@@2 res@@2)))
 :qid |stdinbpl.596:15|
 :skolemid |93|
 :pattern ( (state Heap@@6 Mask@@0) (|length_impl'| Heap@@6 xs@@2 y@@2 akk@@2 res@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.324:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_47136) (ExhaleHeap T@PolymorphicMapType_47136) (Mask@@1 T@PolymorphicMapType_47157) (pm_f_33 T@Field_58346_58347) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_25637_25638 Mask@@1 null pm_f_33) (IsPredicateField_25637_25638 pm_f_33)) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@7) null (PredicateMaskField_25637 pm_f_33)) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap) null (PredicateMaskField_25637 pm_f_33)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@1) (IsPredicateField_25637_25638 pm_f_33) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap) null (PredicateMaskField_25637 pm_f_33)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_47136) (ExhaleHeap@@0 T@PolymorphicMapType_47136) (Mask@@2 T@PolymorphicMapType_47157) (pm_f_33@@0 T@Field_53871_53872) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_25612_25613 Mask@@2 null pm_f_33@@0) (IsPredicateField_25612_25613 pm_f_33@@0)) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@8) null (PredicateMaskField_25612 pm_f_33@@0)) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@0) null (PredicateMaskField_25612 pm_f_33@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@2) (IsPredicateField_25612_25613 pm_f_33@@0) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@0) null (PredicateMaskField_25612 pm_f_33@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_47136) (ExhaleHeap@@1 T@PolymorphicMapType_47136) (Mask@@3 T@PolymorphicMapType_47157) (pm_f_33@@1 T@Field_25322_25613) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_25322_25613 Mask@@3 null pm_f_33@@1) (IsPredicateField_25322_172253 pm_f_33@@1)) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@9) null (PredicateMaskField_25322 pm_f_33@@1)) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@1) null (PredicateMaskField_25322 pm_f_33@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@3) (IsPredicateField_25322_172253 pm_f_33@@1) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@1) null (PredicateMaskField_25322 pm_f_33@@1)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_47136) (ExhaleHeap@@2 T@PolymorphicMapType_47136) (Mask@@4 T@PolymorphicMapType_47157) (pm_f_33@@2 T@Field_58346_58347) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_25637_25638 Mask@@4 null pm_f_33@@2) (IsWandField_25637_177934 pm_f_33@@2)) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@10) null (WandMaskField_25637 pm_f_33@@2)) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@2) null (WandMaskField_25637 pm_f_33@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@4) (IsWandField_25637_177934 pm_f_33@@2) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@2) null (WandMaskField_25637 pm_f_33@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_47136) (ExhaleHeap@@3 T@PolymorphicMapType_47136) (Mask@@5 T@PolymorphicMapType_47157) (pm_f_33@@3 T@Field_53871_53872) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_25612_25613 Mask@@5 null pm_f_33@@3) (IsWandField_25612_177577 pm_f_33@@3)) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@11) null (WandMaskField_25612 pm_f_33@@3)) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@3) null (WandMaskField_25612 pm_f_33@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@5) (IsWandField_25612_177577 pm_f_33@@3) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@3) null (WandMaskField_25612 pm_f_33@@3)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_47136) (ExhaleHeap@@4 T@PolymorphicMapType_47136) (Mask@@6 T@PolymorphicMapType_47157) (pm_f_33@@4 T@Field_25322_25613) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_25322_25613 Mask@@6 null pm_f_33@@4) (IsWandField_25322_177220 pm_f_33@@4)) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@12) null (WandMaskField_25322 pm_f_33@@4)) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@4) null (WandMaskField_25322 pm_f_33@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@6) (IsWandField_25322_177220 pm_f_33@@4) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@4) null (WandMaskField_25322 pm_f_33@@4)))
)))
(assert (forall ((this@@1 T@Ref) (i@@2 Int) (this2 T@Ref) (i2 Int) ) (!  (=> (= (list2 this@@1 i@@2) (list2 this2 i2)) (and (= this@@1 this2) (= i@@2 i2)))
 :qid |stdinbpl.1190:15|
 :skolemid |141|
 :pattern ( (list2 this@@1 i@@2) (list2 this2 i2))
)))
(assert (forall ((this@@2 T@Ref) (i@@3 Int) (this2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|list2#sm| this@@2 i@@3) (|list2#sm| this2@@0 i2@@0)) (and (= this@@2 this2@@0) (= i@@3 i2@@0)))
 :qid |stdinbpl.1194:15|
 :skolemid |142|
 :pattern ( (|list2#sm| this@@2 i@@3) (|list2#sm| this2@@0 i2@@0))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (list x@@1) (list x2)) (= x@@1 x2))
 :qid |stdinbpl.1262:15|
 :skolemid |147|
 :pattern ( (list x@@1) (list x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|list#sm| x@@2) (|list#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.1266:15|
 :skolemid |148|
 :pattern ( (|list#sm| x@@2) (|list#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_47136) (ExhaleHeap@@5 T@PolymorphicMapType_47136) (Mask@@7 T@PolymorphicMapType_47157) (o_63 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@7) (=> (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@13) o_63 $allocated) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@5) o_63 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@7) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@5) o_63 $allocated))
)))
(assert (forall ((p T@Field_25322_25613) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_47196_47196 p v_1 p w))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_47196_47196 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_58346_58347) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_25637_25637 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25637_25637 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_53871_53872) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_25612_25612 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25612_25612 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_25320_3430 elem)))
(assert  (not (IsWandField_25320_3430 elem)))
(assert  (not (IsPredicateField_25322_25323 next)))
(assert  (not (IsWandField_25322_25323 next)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_47136) (ExhaleHeap@@6 T@PolymorphicMapType_47136) (Mask@@8 T@PolymorphicMapType_47157) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@8) (succHeap Heap@@14 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_47157) (o_2@@14 T@Ref) (f_4@@14 T@Field_60819_60824) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| Mask@@9) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_25637_188223 f_4@@14))) (not (IsWandField_25637_188239 f_4@@14))) (<= (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| Mask@@9) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| Mask@@9) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_47157) (o_2@@15 T@Ref) (f_4@@15 T@Field_25637_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| Mask@@10) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_25637_53 f_4@@15))) (not (IsWandField_25637_53 f_4@@15))) (<= (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| Mask@@10) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| Mask@@10) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_47157) (o_2@@16 T@Ref) (f_4@@16 T@Field_25637_25323) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| Mask@@11) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_25637_25323 f_4@@16))) (not (IsWandField_25637_25323 f_4@@16))) (<= (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| Mask@@11) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| Mask@@11) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_47157) (o_2@@17 T@Ref) (f_4@@17 T@Field_25637_3430) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| Mask@@12) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_25637_3430 f_4@@17))) (not (IsWandField_25637_3430 f_4@@17))) (<= (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| Mask@@12) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| Mask@@12) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_47157) (o_2@@18 T@Ref) (f_4@@18 T@Field_58346_58347) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| Mask@@13) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_25637_25638 f_4@@18))) (not (IsWandField_25637_177934 f_4@@18))) (<= (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| Mask@@13) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| Mask@@13) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_47157) (o_2@@19 T@Ref) (f_4@@19 T@Field_25322_56633) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| Mask@@14) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_25320_187392 f_4@@19))) (not (IsWandField_25320_187408 f_4@@19))) (<= (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| Mask@@14) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| Mask@@14) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_47157) (o_2@@20 T@Ref) (f_4@@20 T@Field_47196_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| Mask@@15) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_25320_53 f_4@@20))) (not (IsWandField_25320_53 f_4@@20))) (<= (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| Mask@@15) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| Mask@@15) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_47157) (o_2@@21 T@Ref) (f_4@@21 T@Field_47209_47210) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| Mask@@16) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_25322_25323 f_4@@21))) (not (IsWandField_25322_25323 f_4@@21))) (<= (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| Mask@@16) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| Mask@@16) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_47157) (o_2@@22 T@Ref) (f_4@@22 T@Field_53405_3430) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| Mask@@17) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_25320_3430 f_4@@22))) (not (IsWandField_25320_3430 f_4@@22))) (<= (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| Mask@@17) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| Mask@@17) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_47157) (o_2@@23 T@Ref) (f_4@@23 T@Field_25322_25613) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| Mask@@18) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_25322_172253 f_4@@23))) (not (IsWandField_25322_177220 f_4@@23))) (<= (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| Mask@@18) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| Mask@@18) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_47157) (o_2@@24 T@Ref) (f_4@@24 T@Field_56628_56633) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| Mask@@19) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_25612_186589 f_4@@24))) (not (IsWandField_25612_186605 f_4@@24))) (<= (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| Mask@@19) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| Mask@@19) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_47157) (o_2@@25 T@Ref) (f_4@@25 T@Field_25612_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| Mask@@20) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_25612_53 f_4@@25))) (not (IsWandField_25612_53 f_4@@25))) (<= (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| Mask@@20) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| Mask@@20) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_47157) (o_2@@26 T@Ref) (f_4@@26 T@Field_25612_25323) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| Mask@@21) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_25612_25323 f_4@@26))) (not (IsWandField_25612_25323 f_4@@26))) (<= (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| Mask@@21) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| Mask@@21) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_47157) (o_2@@27 T@Ref) (f_4@@27 T@Field_25612_3430) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| Mask@@22) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_25612_3430 f_4@@27))) (not (IsWandField_25612_3430 f_4@@27))) (<= (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| Mask@@22) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| Mask@@22) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_47157) (o_2@@28 T@Ref) (f_4@@28 T@Field_53871_53872) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| Mask@@23) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_25612_25613 f_4@@28))) (not (IsWandField_25612_177577 f_4@@28))) (<= (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| Mask@@23) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| Mask@@23) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_47157) (o_2@@29 T@Ref) (f_4@@29 T@Field_60819_60824) ) (! (= (HasDirectPerm_25637_172008 Mask@@24 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| Mask@@24) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25637_172008 Mask@@24 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_47157) (o_2@@30 T@Ref) (f_4@@30 T@Field_25637_3430) ) (! (= (HasDirectPerm_25637_3430 Mask@@25 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| Mask@@25) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25637_3430 Mask@@25 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_47157) (o_2@@31 T@Ref) (f_4@@31 T@Field_25637_53) ) (! (= (HasDirectPerm_25637_53 Mask@@26 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| Mask@@26) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25637_53 Mask@@26 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_47157) (o_2@@32 T@Ref) (f_4@@32 T@Field_58346_58347) ) (! (= (HasDirectPerm_25637_25638 Mask@@27 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| Mask@@27) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25637_25638 Mask@@27 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_47157) (o_2@@33 T@Ref) (f_4@@33 T@Field_25637_25323) ) (! (= (HasDirectPerm_25637_25323 Mask@@28 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| Mask@@28) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25637_25323 Mask@@28 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_47157) (o_2@@34 T@Ref) (f_4@@34 T@Field_56628_56633) ) (! (= (HasDirectPerm_25612_170910 Mask@@29 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| Mask@@29) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25612_170910 Mask@@29 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_47157) (o_2@@35 T@Ref) (f_4@@35 T@Field_25612_3430) ) (! (= (HasDirectPerm_25612_3430 Mask@@30 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| Mask@@30) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25612_3430 Mask@@30 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_47157) (o_2@@36 T@Ref) (f_4@@36 T@Field_25612_53) ) (! (= (HasDirectPerm_25612_53 Mask@@31 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| Mask@@31) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25612_53 Mask@@31 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_47157) (o_2@@37 T@Ref) (f_4@@37 T@Field_53871_53872) ) (! (= (HasDirectPerm_25612_25613 Mask@@32 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| Mask@@32) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25612_25613 Mask@@32 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_47157) (o_2@@38 T@Ref) (f_4@@38 T@Field_25612_25323) ) (! (= (HasDirectPerm_25612_25323 Mask@@33 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| Mask@@33) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25612_25323 Mask@@33 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_47157) (o_2@@39 T@Ref) (f_4@@39 T@Field_25322_56633) ) (! (= (HasDirectPerm_25322_169769 Mask@@34 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| Mask@@34) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25322_169769 Mask@@34 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_47157) (o_2@@40 T@Ref) (f_4@@40 T@Field_53405_3430) ) (! (= (HasDirectPerm_25322_3430 Mask@@35 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| Mask@@35) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25322_3430 Mask@@35 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_47157) (o_2@@41 T@Ref) (f_4@@41 T@Field_47196_53) ) (! (= (HasDirectPerm_25322_53 Mask@@36 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| Mask@@36) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25322_53 Mask@@36 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_47157) (o_2@@42 T@Ref) (f_4@@42 T@Field_25322_25613) ) (! (= (HasDirectPerm_25322_25613 Mask@@37 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| Mask@@37) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25322_25613 Mask@@37 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_47157) (o_2@@43 T@Ref) (f_4@@43 T@Field_47209_47210) ) (! (= (HasDirectPerm_25322_25323 Mask@@38 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| Mask@@38) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25322_25323 Mask@@38 o_2@@43 f_4@@43))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_47136) (xs@@3 (Array T@Ref Bool)) (y@@3 T@Ref) (akk@@3 Int) (res@@3 Int) ) (! (dummyFunction_3723 (|length_impl#triggerStateless| xs@@3 y@@3 akk@@3 res@@3))
 :qid |stdinbpl.580:15|
 :skolemid |90|
 :pattern ( (|length_impl'| Heap@@15 xs@@3 y@@3 akk@@3 res@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_47136) (xs@@4 (Array T@Ref Bool)) (y@@4 T@Ref) (akk@@4 Int) (res@@4 Int) ) (! (dummyFunction_3723 (|length2_impl#triggerStateless| xs@@4 y@@4 akk@@4 res@@4))
 :qid |stdinbpl.718:15|
 :skolemid |97|
 :pattern ( (|length2_impl'| Heap@@16 xs@@4 y@@4 akk@@4 res@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_47136) (xs@@5 (Array T@Ref Bool)) (y@@5 T@Ref) (akk@@5 Int) (res@@5 Int) ) (! (dummyFunction_3723 (|length3_impl#triggerStateless| xs@@5 y@@5 akk@@5 res@@5))
 :qid |stdinbpl.949:15|
 :skolemid |118|
 :pattern ( (|length3_impl'| Heap@@17 xs@@5 y@@5 akk@@5 res@@5))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.207:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_47136) (ExhaleHeap@@7 T@PolymorphicMapType_47136) (Mask@@39 T@PolymorphicMapType_47157) (o_63@@0 T@Ref) (f_71 T@Field_60819_60824) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@39) (=> (HasDirectPerm_25637_172008 Mask@@39 o_63@@0 f_71) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@18) o_63@@0 f_71) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@7) o_63@@0 f_71))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@39) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@7) o_63@@0 f_71))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_47136) (ExhaleHeap@@8 T@PolymorphicMapType_47136) (Mask@@40 T@PolymorphicMapType_47157) (o_63@@1 T@Ref) (f_71@@0 T@Field_25637_3430) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@40) (=> (HasDirectPerm_25637_3430 Mask@@40 o_63@@1 f_71@@0) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@19) o_63@@1 f_71@@0) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@8) o_63@@1 f_71@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@40) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@8) o_63@@1 f_71@@0))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_47136) (ExhaleHeap@@9 T@PolymorphicMapType_47136) (Mask@@41 T@PolymorphicMapType_47157) (o_63@@2 T@Ref) (f_71@@1 T@Field_25637_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@41) (=> (HasDirectPerm_25637_53 Mask@@41 o_63@@2 f_71@@1) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@20) o_63@@2 f_71@@1) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@9) o_63@@2 f_71@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@41) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@9) o_63@@2 f_71@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_47136) (ExhaleHeap@@10 T@PolymorphicMapType_47136) (Mask@@42 T@PolymorphicMapType_47157) (o_63@@3 T@Ref) (f_71@@2 T@Field_58346_58347) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@42) (=> (HasDirectPerm_25637_25638 Mask@@42 o_63@@3 f_71@@2) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@21) o_63@@3 f_71@@2) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@10) o_63@@3 f_71@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@42) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@10) o_63@@3 f_71@@2))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_47136) (ExhaleHeap@@11 T@PolymorphicMapType_47136) (Mask@@43 T@PolymorphicMapType_47157) (o_63@@4 T@Ref) (f_71@@3 T@Field_25637_25323) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@43) (=> (HasDirectPerm_25637_25323 Mask@@43 o_63@@4 f_71@@3) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@22) o_63@@4 f_71@@3) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@11) o_63@@4 f_71@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@43) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@11) o_63@@4 f_71@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_47136) (ExhaleHeap@@12 T@PolymorphicMapType_47136) (Mask@@44 T@PolymorphicMapType_47157) (o_63@@5 T@Ref) (f_71@@4 T@Field_56628_56633) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@44) (=> (HasDirectPerm_25612_170910 Mask@@44 o_63@@5 f_71@@4) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@23) o_63@@5 f_71@@4) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@12) o_63@@5 f_71@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@44) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@12) o_63@@5 f_71@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_47136) (ExhaleHeap@@13 T@PolymorphicMapType_47136) (Mask@@45 T@PolymorphicMapType_47157) (o_63@@6 T@Ref) (f_71@@5 T@Field_25612_3430) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@45) (=> (HasDirectPerm_25612_3430 Mask@@45 o_63@@6 f_71@@5) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@24) o_63@@6 f_71@@5) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@13) o_63@@6 f_71@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@45) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@13) o_63@@6 f_71@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_47136) (ExhaleHeap@@14 T@PolymorphicMapType_47136) (Mask@@46 T@PolymorphicMapType_47157) (o_63@@7 T@Ref) (f_71@@6 T@Field_25612_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@46) (=> (HasDirectPerm_25612_53 Mask@@46 o_63@@7 f_71@@6) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@25) o_63@@7 f_71@@6) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@14) o_63@@7 f_71@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@46) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@14) o_63@@7 f_71@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_47136) (ExhaleHeap@@15 T@PolymorphicMapType_47136) (Mask@@47 T@PolymorphicMapType_47157) (o_63@@8 T@Ref) (f_71@@7 T@Field_53871_53872) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@47) (=> (HasDirectPerm_25612_25613 Mask@@47 o_63@@8 f_71@@7) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@26) o_63@@8 f_71@@7) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@15) o_63@@8 f_71@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@47) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@15) o_63@@8 f_71@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_47136) (ExhaleHeap@@16 T@PolymorphicMapType_47136) (Mask@@48 T@PolymorphicMapType_47157) (o_63@@9 T@Ref) (f_71@@8 T@Field_25612_25323) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@48) (=> (HasDirectPerm_25612_25323 Mask@@48 o_63@@9 f_71@@8) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@27) o_63@@9 f_71@@8) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@16) o_63@@9 f_71@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@48) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@16) o_63@@9 f_71@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_47136) (ExhaleHeap@@17 T@PolymorphicMapType_47136) (Mask@@49 T@PolymorphicMapType_47157) (o_63@@10 T@Ref) (f_71@@9 T@Field_25322_56633) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@49) (=> (HasDirectPerm_25322_169769 Mask@@49 o_63@@10 f_71@@9) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@28) o_63@@10 f_71@@9) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@17) o_63@@10 f_71@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@49) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@17) o_63@@10 f_71@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_47136) (ExhaleHeap@@18 T@PolymorphicMapType_47136) (Mask@@50 T@PolymorphicMapType_47157) (o_63@@11 T@Ref) (f_71@@10 T@Field_53405_3430) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@50) (=> (HasDirectPerm_25322_3430 Mask@@50 o_63@@11 f_71@@10) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@29) o_63@@11 f_71@@10) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@18) o_63@@11 f_71@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@50) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@18) o_63@@11 f_71@@10))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_47136) (ExhaleHeap@@19 T@PolymorphicMapType_47136) (Mask@@51 T@PolymorphicMapType_47157) (o_63@@12 T@Ref) (f_71@@11 T@Field_47196_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@19 Mask@@51) (=> (HasDirectPerm_25322_53 Mask@@51 o_63@@12 f_71@@11) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@30) o_63@@12 f_71@@11) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@19) o_63@@12 f_71@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@19 Mask@@51) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@19) o_63@@12 f_71@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_47136) (ExhaleHeap@@20 T@PolymorphicMapType_47136) (Mask@@52 T@PolymorphicMapType_47157) (o_63@@13 T@Ref) (f_71@@12 T@Field_25322_25613) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@20 Mask@@52) (=> (HasDirectPerm_25322_25613 Mask@@52 o_63@@13 f_71@@12) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@31) o_63@@13 f_71@@12) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@20) o_63@@13 f_71@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@20 Mask@@52) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@20) o_63@@13 f_71@@12))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_47136) (ExhaleHeap@@21 T@PolymorphicMapType_47136) (Mask@@53 T@PolymorphicMapType_47157) (o_63@@14 T@Ref) (f_71@@13 T@Field_47209_47210) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@21 Mask@@53) (=> (HasDirectPerm_25322_25323 Mask@@53 o_63@@14 f_71@@13) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@32) o_63@@14 f_71@@13) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@21) o_63@@14 f_71@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@21 Mask@@53) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@21) o_63@@14 f_71@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_60819_60824) ) (! (= (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_25637_53) ) (! (= (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_25637_25323) ) (! (= (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_25637_3430) ) (! (= (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_58346_58347) ) (! (= (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_25322_56633) ) (! (= (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_47196_53) ) (! (= (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_47209_47210) ) (! (= (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_53405_3430) ) (! (= (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_25322_25613) ) (! (= (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_56628_56633) ) (! (= (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_25612_53) ) (! (= (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_25612_25323) ) (! (= (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_25612_3430) ) (! (= (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_53871_53872) ) (! (= (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_47157) (SummandMask1 T@PolymorphicMapType_47157) (SummandMask2 T@PolymorphicMapType_47157) (o_2@@59 T@Ref) (f_4@@59 T@Field_60819_60824) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47157_25637_184782#PolymorphicMapType_47157| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_47157) (SummandMask1@@0 T@PolymorphicMapType_47157) (SummandMask2@@0 T@PolymorphicMapType_47157) (o_2@@60 T@Ref) (f_4@@60 T@Field_25637_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47157_25637_53#PolymorphicMapType_47157| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_47157) (SummandMask1@@1 T@PolymorphicMapType_47157) (SummandMask2@@1 T@PolymorphicMapType_47157) (o_2@@61 T@Ref) (f_4@@61 T@Field_25637_25323) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47157_25637_25323#PolymorphicMapType_47157| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_47157) (SummandMask1@@2 T@PolymorphicMapType_47157) (SummandMask2@@2 T@PolymorphicMapType_47157) (o_2@@62 T@Ref) (f_4@@62 T@Field_25637_3430) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47157_25637_3430#PolymorphicMapType_47157| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_47157) (SummandMask1@@3 T@PolymorphicMapType_47157) (SummandMask2@@3 T@PolymorphicMapType_47157) (o_2@@63 T@Ref) (f_4@@63 T@Field_58346_58347) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47157_25637_25638#PolymorphicMapType_47157| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_47157) (SummandMask1@@4 T@PolymorphicMapType_47157) (SummandMask2@@4 T@PolymorphicMapType_47157) (o_2@@64 T@Ref) (f_4@@64 T@Field_25322_56633) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47157_25320_184371#PolymorphicMapType_47157| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_47157) (SummandMask1@@5 T@PolymorphicMapType_47157) (SummandMask2@@5 T@PolymorphicMapType_47157) (o_2@@65 T@Ref) (f_4@@65 T@Field_47196_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_47157_25320_53#PolymorphicMapType_47157| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_47157) (SummandMask1@@6 T@PolymorphicMapType_47157) (SummandMask2@@6 T@PolymorphicMapType_47157) (o_2@@66 T@Ref) (f_4@@66 T@Field_47209_47210) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_47157_25322_25323#PolymorphicMapType_47157| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_47157) (SummandMask1@@7 T@PolymorphicMapType_47157) (SummandMask2@@7 T@PolymorphicMapType_47157) (o_2@@67 T@Ref) (f_4@@67 T@Field_53405_3430) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_47157_25320_3430#PolymorphicMapType_47157| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_47157) (SummandMask1@@8 T@PolymorphicMapType_47157) (SummandMask2@@8 T@PolymorphicMapType_47157) (o_2@@68 T@Ref) (f_4@@68 T@Field_25322_25613) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_47157_25320_25613#PolymorphicMapType_47157| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_47157) (SummandMask1@@9 T@PolymorphicMapType_47157) (SummandMask2@@9 T@PolymorphicMapType_47157) (o_2@@69 T@Ref) (f_4@@69 T@Field_56628_56633) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_47157_25612_183972#PolymorphicMapType_47157| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_47157) (SummandMask1@@10 T@PolymorphicMapType_47157) (SummandMask2@@10 T@PolymorphicMapType_47157) (o_2@@70 T@Ref) (f_4@@70 T@Field_25612_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_47157_25612_53#PolymorphicMapType_47157| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_47157) (SummandMask1@@11 T@PolymorphicMapType_47157) (SummandMask2@@11 T@PolymorphicMapType_47157) (o_2@@71 T@Ref) (f_4@@71 T@Field_25612_25323) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_47157_25612_25323#PolymorphicMapType_47157| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_47157) (SummandMask1@@12 T@PolymorphicMapType_47157) (SummandMask2@@12 T@PolymorphicMapType_47157) (o_2@@72 T@Ref) (f_4@@72 T@Field_25612_3430) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_47157_25612_3430#PolymorphicMapType_47157| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_47157) (SummandMask1@@13 T@PolymorphicMapType_47157) (SummandMask2@@13 T@PolymorphicMapType_47157) (o_2@@73 T@Ref) (f_4@@73 T@Field_53871_53872) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_47157_25612_25613#PolymorphicMapType_47157| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_47136) (ExhaleHeap@@22 T@PolymorphicMapType_47136) (Mask@@54 T@PolymorphicMapType_47157) (pm_f_33@@5 T@Field_58346_58347) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@22 Mask@@54) (=> (and (HasDirectPerm_25637_25638 Mask@@54 null pm_f_33@@5) (IsPredicateField_25637_25638 pm_f_33@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33 T@Ref) (f_71@@14 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33 f_71@@14) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@33) o2_33 f_71@@14) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33 f_71@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33 f_71@@14))
)) (forall ((o2_33@@0 T@Ref) (f_71@@15 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@0 f_71@@15) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@33) o2_33@@0 f_71@@15) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@0 f_71@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@0 f_71@@15))
))) (forall ((o2_33@@1 T@Ref) (f_71@@16 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@1 f_71@@16) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@33) o2_33@@1 f_71@@16) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@1 f_71@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@1 f_71@@16))
))) (forall ((o2_33@@2 T@Ref) (f_71@@17 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@2 f_71@@17) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@33) o2_33@@2 f_71@@17) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@2 f_71@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@2 f_71@@17))
))) (forall ((o2_33@@3 T@Ref) (f_71@@18 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@3 f_71@@18) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@33) o2_33@@3 f_71@@18) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@3 f_71@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@3 f_71@@18))
))) (forall ((o2_33@@4 T@Ref) (f_71@@19 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@4 f_71@@19) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@33) o2_33@@4 f_71@@19) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@4 f_71@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@4 f_71@@19))
))) (forall ((o2_33@@5 T@Ref) (f_71@@20 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@5 f_71@@20) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@33) o2_33@@5 f_71@@20) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@5 f_71@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@5 f_71@@20))
))) (forall ((o2_33@@6 T@Ref) (f_71@@21 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@6 f_71@@21) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@33) o2_33@@6 f_71@@21) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@6 f_71@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@6 f_71@@21))
))) (forall ((o2_33@@7 T@Ref) (f_71@@22 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@7 f_71@@22) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@33) o2_33@@7 f_71@@22) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@7 f_71@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@7 f_71@@22))
))) (forall ((o2_33@@8 T@Ref) (f_71@@23 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@8 f_71@@23) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@33) o2_33@@8 f_71@@23) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@8 f_71@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@8 f_71@@23))
))) (forall ((o2_33@@9 T@Ref) (f_71@@24 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@9 f_71@@24) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@33) o2_33@@9 f_71@@24) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@9 f_71@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@9 f_71@@24))
))) (forall ((o2_33@@10 T@Ref) (f_71@@25 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@10 f_71@@25) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@33) o2_33@@10 f_71@@25) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@10 f_71@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@10 f_71@@25))
))) (forall ((o2_33@@11 T@Ref) (f_71@@26 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@11 f_71@@26) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@33) o2_33@@11 f_71@@26) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@11 f_71@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@11 f_71@@26))
))) (forall ((o2_33@@12 T@Ref) (f_71@@27 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@12 f_71@@27) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@33) o2_33@@12 f_71@@27) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@12 f_71@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@12 f_71@@27))
))) (forall ((o2_33@@13 T@Ref) (f_71@@28 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) null (PredicateMaskField_25637 pm_f_33@@5))) o2_33@@13 f_71@@28) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@33) o2_33@@13 f_71@@28) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@13 f_71@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@22) o2_33@@13 f_71@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@22 Mask@@54) (IsPredicateField_25637_25638 pm_f_33@@5))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_47136) (ExhaleHeap@@23 T@PolymorphicMapType_47136) (Mask@@55 T@PolymorphicMapType_47157) (pm_f_33@@6 T@Field_53871_53872) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@23 Mask@@55) (=> (and (HasDirectPerm_25612_25613 Mask@@55 null pm_f_33@@6) (IsPredicateField_25612_25613 pm_f_33@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@14 T@Ref) (f_71@@29 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@14 f_71@@29) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@34) o2_33@@14 f_71@@29) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@14 f_71@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@14 f_71@@29))
)) (forall ((o2_33@@15 T@Ref) (f_71@@30 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@15 f_71@@30) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@34) o2_33@@15 f_71@@30) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@15 f_71@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@15 f_71@@30))
))) (forall ((o2_33@@16 T@Ref) (f_71@@31 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@16 f_71@@31) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@34) o2_33@@16 f_71@@31) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@16 f_71@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@16 f_71@@31))
))) (forall ((o2_33@@17 T@Ref) (f_71@@32 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@17 f_71@@32) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@34) o2_33@@17 f_71@@32) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@17 f_71@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@17 f_71@@32))
))) (forall ((o2_33@@18 T@Ref) (f_71@@33 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@18 f_71@@33) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@34) o2_33@@18 f_71@@33) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@18 f_71@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@18 f_71@@33))
))) (forall ((o2_33@@19 T@Ref) (f_71@@34 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@19 f_71@@34) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@34) o2_33@@19 f_71@@34) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@19 f_71@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@19 f_71@@34))
))) (forall ((o2_33@@20 T@Ref) (f_71@@35 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@20 f_71@@35) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@34) o2_33@@20 f_71@@35) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@20 f_71@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@20 f_71@@35))
))) (forall ((o2_33@@21 T@Ref) (f_71@@36 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@21 f_71@@36) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@34) o2_33@@21 f_71@@36) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@21 f_71@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@21 f_71@@36))
))) (forall ((o2_33@@22 T@Ref) (f_71@@37 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@22 f_71@@37) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@34) o2_33@@22 f_71@@37) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@22 f_71@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@22 f_71@@37))
))) (forall ((o2_33@@23 T@Ref) (f_71@@38 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@23 f_71@@38) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) o2_33@@23 f_71@@38) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@23 f_71@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@23 f_71@@38))
))) (forall ((o2_33@@24 T@Ref) (f_71@@39 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@24 f_71@@39) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@34) o2_33@@24 f_71@@39) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@24 f_71@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@24 f_71@@39))
))) (forall ((o2_33@@25 T@Ref) (f_71@@40 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@25 f_71@@40) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@34) o2_33@@25 f_71@@40) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@25 f_71@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@25 f_71@@40))
))) (forall ((o2_33@@26 T@Ref) (f_71@@41 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@26 f_71@@41) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@34) o2_33@@26 f_71@@41) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@26 f_71@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@26 f_71@@41))
))) (forall ((o2_33@@27 T@Ref) (f_71@@42 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@27 f_71@@42) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@34) o2_33@@27 f_71@@42) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@27 f_71@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@27 f_71@@42))
))) (forall ((o2_33@@28 T@Ref) (f_71@@43 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@34) null (PredicateMaskField_25612 pm_f_33@@6))) o2_33@@28 f_71@@43) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@34) o2_33@@28 f_71@@43) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@28 f_71@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@23) o2_33@@28 f_71@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@23 Mask@@55) (IsPredicateField_25612_25613 pm_f_33@@6))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_47136) (ExhaleHeap@@24 T@PolymorphicMapType_47136) (Mask@@56 T@PolymorphicMapType_47157) (pm_f_33@@7 T@Field_25322_25613) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@24 Mask@@56) (=> (and (HasDirectPerm_25322_25613 Mask@@56 null pm_f_33@@7) (IsPredicateField_25322_172253 pm_f_33@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@29 T@Ref) (f_71@@44 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@29 f_71@@44) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@35) o2_33@@29 f_71@@44) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@29 f_71@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@29 f_71@@44))
)) (forall ((o2_33@@30 T@Ref) (f_71@@45 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@30 f_71@@45) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@35) o2_33@@30 f_71@@45) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@30 f_71@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@30 f_71@@45))
))) (forall ((o2_33@@31 T@Ref) (f_71@@46 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@31 f_71@@46) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@35) o2_33@@31 f_71@@46) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@31 f_71@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@31 f_71@@46))
))) (forall ((o2_33@@32 T@Ref) (f_71@@47 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@32 f_71@@47) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@35) o2_33@@32 f_71@@47) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@32 f_71@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@32 f_71@@47))
))) (forall ((o2_33@@33 T@Ref) (f_71@@48 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@33 f_71@@48) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) o2_33@@33 f_71@@48) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@33 f_71@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@33 f_71@@48))
))) (forall ((o2_33@@34 T@Ref) (f_71@@49 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@34 f_71@@49) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@35) o2_33@@34 f_71@@49) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@34 f_71@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@34 f_71@@49))
))) (forall ((o2_33@@35 T@Ref) (f_71@@50 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@35 f_71@@50) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@35) o2_33@@35 f_71@@50) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@35 f_71@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@35 f_71@@50))
))) (forall ((o2_33@@36 T@Ref) (f_71@@51 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@36 f_71@@51) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@35) o2_33@@36 f_71@@51) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@36 f_71@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@36 f_71@@51))
))) (forall ((o2_33@@37 T@Ref) (f_71@@52 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@37 f_71@@52) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@35) o2_33@@37 f_71@@52) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@37 f_71@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@37 f_71@@52))
))) (forall ((o2_33@@38 T@Ref) (f_71@@53 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@38 f_71@@53) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@35) o2_33@@38 f_71@@53) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@38 f_71@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@38 f_71@@53))
))) (forall ((o2_33@@39 T@Ref) (f_71@@54 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@39 f_71@@54) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@35) o2_33@@39 f_71@@54) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@39 f_71@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@39 f_71@@54))
))) (forall ((o2_33@@40 T@Ref) (f_71@@55 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@40 f_71@@55) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@35) o2_33@@40 f_71@@55) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@40 f_71@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@40 f_71@@55))
))) (forall ((o2_33@@41 T@Ref) (f_71@@56 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@41 f_71@@56) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@35) o2_33@@41 f_71@@56) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@41 f_71@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@41 f_71@@56))
))) (forall ((o2_33@@42 T@Ref) (f_71@@57 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@42 f_71@@57) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@35) o2_33@@42 f_71@@57) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@42 f_71@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@42 f_71@@57))
))) (forall ((o2_33@@43 T@Ref) (f_71@@58 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@35) null (PredicateMaskField_25322 pm_f_33@@7))) o2_33@@43 f_71@@58) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@35) o2_33@@43 f_71@@58) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@43 f_71@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@24) o2_33@@43 f_71@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@24 Mask@@56) (IsPredicateField_25322_172253 pm_f_33@@7))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_47136) (ExhaleHeap@@25 T@PolymorphicMapType_47136) (Mask@@57 T@PolymorphicMapType_47157) (pm_f_33@@8 T@Field_58346_58347) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@25 Mask@@57) (=> (and (HasDirectPerm_25637_25638 Mask@@57 null pm_f_33@@8) (IsWandField_25637_177934 pm_f_33@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@44 T@Ref) (f_71@@59 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@44 f_71@@59) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@36) o2_33@@44 f_71@@59) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@44 f_71@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@44 f_71@@59))
)) (forall ((o2_33@@45 T@Ref) (f_71@@60 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@45 f_71@@60) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@36) o2_33@@45 f_71@@60) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@45 f_71@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@45 f_71@@60))
))) (forall ((o2_33@@46 T@Ref) (f_71@@61 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@46 f_71@@61) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@36) o2_33@@46 f_71@@61) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@46 f_71@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@46 f_71@@61))
))) (forall ((o2_33@@47 T@Ref) (f_71@@62 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@47 f_71@@62) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@36) o2_33@@47 f_71@@62) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@47 f_71@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@47 f_71@@62))
))) (forall ((o2_33@@48 T@Ref) (f_71@@63 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@48 f_71@@63) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@36) o2_33@@48 f_71@@63) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@48 f_71@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@48 f_71@@63))
))) (forall ((o2_33@@49 T@Ref) (f_71@@64 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@49 f_71@@64) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@36) o2_33@@49 f_71@@64) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@49 f_71@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@49 f_71@@64))
))) (forall ((o2_33@@50 T@Ref) (f_71@@65 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@50 f_71@@65) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@36) o2_33@@50 f_71@@65) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@50 f_71@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@50 f_71@@65))
))) (forall ((o2_33@@51 T@Ref) (f_71@@66 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@51 f_71@@66) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@36) o2_33@@51 f_71@@66) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@51 f_71@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@51 f_71@@66))
))) (forall ((o2_33@@52 T@Ref) (f_71@@67 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@52 f_71@@67) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@36) o2_33@@52 f_71@@67) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@52 f_71@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@52 f_71@@67))
))) (forall ((o2_33@@53 T@Ref) (f_71@@68 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@53 f_71@@68) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@36) o2_33@@53 f_71@@68) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@53 f_71@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@53 f_71@@68))
))) (forall ((o2_33@@54 T@Ref) (f_71@@69 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@54 f_71@@69) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@36) o2_33@@54 f_71@@69) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@54 f_71@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@54 f_71@@69))
))) (forall ((o2_33@@55 T@Ref) (f_71@@70 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@55 f_71@@70) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@36) o2_33@@55 f_71@@70) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@55 f_71@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@55 f_71@@70))
))) (forall ((o2_33@@56 T@Ref) (f_71@@71 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@56 f_71@@71) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@36) o2_33@@56 f_71@@71) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@56 f_71@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@56 f_71@@71))
))) (forall ((o2_33@@57 T@Ref) (f_71@@72 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@57 f_71@@72) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@36) o2_33@@57 f_71@@72) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@57 f_71@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@57 f_71@@72))
))) (forall ((o2_33@@58 T@Ref) (f_71@@73 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) null (WandMaskField_25637 pm_f_33@@8))) o2_33@@58 f_71@@73) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@36) o2_33@@58 f_71@@73) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@58 f_71@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@25) o2_33@@58 f_71@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@25 Mask@@57) (IsWandField_25637_177934 pm_f_33@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_47136) (ExhaleHeap@@26 T@PolymorphicMapType_47136) (Mask@@58 T@PolymorphicMapType_47157) (pm_f_33@@9 T@Field_53871_53872) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@26 Mask@@58) (=> (and (HasDirectPerm_25612_25613 Mask@@58 null pm_f_33@@9) (IsWandField_25612_177577 pm_f_33@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@59 T@Ref) (f_71@@74 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@59 f_71@@74) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@37) o2_33@@59 f_71@@74) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@59 f_71@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@59 f_71@@74))
)) (forall ((o2_33@@60 T@Ref) (f_71@@75 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@60 f_71@@75) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@37) o2_33@@60 f_71@@75) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@60 f_71@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@60 f_71@@75))
))) (forall ((o2_33@@61 T@Ref) (f_71@@76 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@61 f_71@@76) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@37) o2_33@@61 f_71@@76) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@61 f_71@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@61 f_71@@76))
))) (forall ((o2_33@@62 T@Ref) (f_71@@77 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@62 f_71@@77) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@37) o2_33@@62 f_71@@77) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@62 f_71@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@62 f_71@@77))
))) (forall ((o2_33@@63 T@Ref) (f_71@@78 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@63 f_71@@78) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@37) o2_33@@63 f_71@@78) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@63 f_71@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@63 f_71@@78))
))) (forall ((o2_33@@64 T@Ref) (f_71@@79 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@64 f_71@@79) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@37) o2_33@@64 f_71@@79) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@64 f_71@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@64 f_71@@79))
))) (forall ((o2_33@@65 T@Ref) (f_71@@80 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@65 f_71@@80) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@37) o2_33@@65 f_71@@80) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@65 f_71@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@65 f_71@@80))
))) (forall ((o2_33@@66 T@Ref) (f_71@@81 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@66 f_71@@81) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@37) o2_33@@66 f_71@@81) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@66 f_71@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@66 f_71@@81))
))) (forall ((o2_33@@67 T@Ref) (f_71@@82 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@67 f_71@@82) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@37) o2_33@@67 f_71@@82) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@67 f_71@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@67 f_71@@82))
))) (forall ((o2_33@@68 T@Ref) (f_71@@83 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@68 f_71@@83) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) o2_33@@68 f_71@@83) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@68 f_71@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@68 f_71@@83))
))) (forall ((o2_33@@69 T@Ref) (f_71@@84 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@69 f_71@@84) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@37) o2_33@@69 f_71@@84) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@69 f_71@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@69 f_71@@84))
))) (forall ((o2_33@@70 T@Ref) (f_71@@85 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@70 f_71@@85) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@37) o2_33@@70 f_71@@85) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@70 f_71@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@70 f_71@@85))
))) (forall ((o2_33@@71 T@Ref) (f_71@@86 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@71 f_71@@86) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@37) o2_33@@71 f_71@@86) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@71 f_71@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@71 f_71@@86))
))) (forall ((o2_33@@72 T@Ref) (f_71@@87 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@72 f_71@@87) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@37) o2_33@@72 f_71@@87) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@72 f_71@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@72 f_71@@87))
))) (forall ((o2_33@@73 T@Ref) (f_71@@88 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@37) null (WandMaskField_25612 pm_f_33@@9))) o2_33@@73 f_71@@88) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@37) o2_33@@73 f_71@@88) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@73 f_71@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@26) o2_33@@73 f_71@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@26 Mask@@58) (IsWandField_25612_177577 pm_f_33@@9))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_47136) (ExhaleHeap@@27 T@PolymorphicMapType_47136) (Mask@@59 T@PolymorphicMapType_47157) (pm_f_33@@10 T@Field_25322_25613) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@27 Mask@@59) (=> (and (HasDirectPerm_25322_25613 Mask@@59 null pm_f_33@@10) (IsWandField_25322_177220 pm_f_33@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_33@@74 T@Ref) (f_71@@89 T@Field_53405_3430) ) (!  (=> (select (|PolymorphicMapType_47685_25320_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@74 f_71@@89) (= (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@38) o2_33@@74 f_71@@89) (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@74 f_71@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@74 f_71@@89))
)) (forall ((o2_33@@75 T@Ref) (f_71@@90 T@Field_47209_47210) ) (!  (=> (select (|PolymorphicMapType_47685_25322_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@75 f_71@@90) (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@38) o2_33@@75 f_71@@90) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@75 f_71@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@75 f_71@@90))
))) (forall ((o2_33@@76 T@Ref) (f_71@@91 T@Field_47196_53) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@76 f_71@@91) (= (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@38) o2_33@@76 f_71@@91) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@76 f_71@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@76 f_71@@91))
))) (forall ((o2_33@@77 T@Ref) (f_71@@92 T@Field_25322_25613) ) (!  (=> (select (|PolymorphicMapType_47685_25320_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@77 f_71@@92) (= (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@38) o2_33@@77 f_71@@92) (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@77 f_71@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@77 f_71@@92))
))) (forall ((o2_33@@78 T@Ref) (f_71@@93 T@Field_25322_56633) ) (!  (=> (select (|PolymorphicMapType_47685_25320_174035#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@78 f_71@@93) (= (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) o2_33@@78 f_71@@93) (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@78 f_71@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@78 f_71@@93))
))) (forall ((o2_33@@79 T@Ref) (f_71@@94 T@Field_25612_3430) ) (!  (=> (select (|PolymorphicMapType_47685_53871_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@79 f_71@@94) (= (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@38) o2_33@@79 f_71@@94) (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@79 f_71@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@79 f_71@@94))
))) (forall ((o2_33@@80 T@Ref) (f_71@@95 T@Field_25612_25323) ) (!  (=> (select (|PolymorphicMapType_47685_53871_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@80 f_71@@95) (= (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@38) o2_33@@80 f_71@@95) (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@80 f_71@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@80 f_71@@95))
))) (forall ((o2_33@@81 T@Ref) (f_71@@96 T@Field_25612_53) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@81 f_71@@96) (= (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@38) o2_33@@81 f_71@@96) (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@81 f_71@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@81 f_71@@96))
))) (forall ((o2_33@@82 T@Ref) (f_71@@97 T@Field_53871_53872) ) (!  (=> (select (|PolymorphicMapType_47685_53871_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@82 f_71@@97) (= (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@38) o2_33@@82 f_71@@97) (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@82 f_71@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@82 f_71@@97))
))) (forall ((o2_33@@83 T@Ref) (f_71@@98 T@Field_56628_56633) ) (!  (=> (select (|PolymorphicMapType_47685_53871_175083#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@83 f_71@@98) (= (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@38) o2_33@@83 f_71@@98) (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@83 f_71@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@83 f_71@@98))
))) (forall ((o2_33@@84 T@Ref) (f_71@@99 T@Field_25637_3430) ) (!  (=> (select (|PolymorphicMapType_47685_58346_3430#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@84 f_71@@99) (= (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@38) o2_33@@84 f_71@@99) (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@84 f_71@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@84 f_71@@99))
))) (forall ((o2_33@@85 T@Ref) (f_71@@100 T@Field_25637_25323) ) (!  (=> (select (|PolymorphicMapType_47685_58346_25323#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@85 f_71@@100) (= (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@38) o2_33@@85 f_71@@100) (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@85 f_71@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@85 f_71@@100))
))) (forall ((o2_33@@86 T@Ref) (f_71@@101 T@Field_25637_53) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@86 f_71@@101) (= (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@38) o2_33@@86 f_71@@101) (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@86 f_71@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@86 f_71@@101))
))) (forall ((o2_33@@87 T@Ref) (f_71@@102 T@Field_58346_58347) ) (!  (=> (select (|PolymorphicMapType_47685_58346_53872#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@87 f_71@@102) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@38) o2_33@@87 f_71@@102) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@87 f_71@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@87 f_71@@102))
))) (forall ((o2_33@@88 T@Ref) (f_71@@103 T@Field_60819_60824) ) (!  (=> (select (|PolymorphicMapType_47685_58346_176131#PolymorphicMapType_47685| (select (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@38) null (WandMaskField_25322 pm_f_33@@10))) o2_33@@88 f_71@@103) (= (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@38) o2_33@@88 f_71@@103) (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@88 f_71@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| ExhaleHeap@@27) o2_33@@88 f_71@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@27 Mask@@59) (IsWandField_25322_177220 pm_f_33@@10))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_25717| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.270:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_25717| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_25717| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_25717| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_25717| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.285:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_25717| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_25717| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x@@3 T@Ref) (y@@6 T@Ref) ) (!  (=> (select a@@6 y@@6) (select (|Set#UnionOne_25733| a@@6 x@@3) y@@6))
 :qid |stdinbpl.250:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_25733| a@@6 x@@3) (select a@@6 y@@6))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@7 T@Ref) ) (!  (=> (select a@@7 y@@7) (select (|Set#Union_25717| a@@7 b@@5) y@@7))
 :qid |stdinbpl.260:18|
 :skolemid |35|
 :pattern ( (|Set#Union_25717| a@@7 b@@5) (select a@@7 y@@7))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@8 T@Ref) ) (!  (=> (select b@@6 y@@8) (select (|Set#Union_25717| a@@8 b@@6) y@@8))
 :qid |stdinbpl.262:18|
 :skolemid |36|
 :pattern ( (|Set#Union_25717| a@@8 b@@6) (select b@@6 y@@8))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@4 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_25733| a@@9 x@@4) o@@2)  (or (= o@@2 x@@4) (select a@@9 o@@2)))
 :qid |stdinbpl.246:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_25733| a@@9 x@@4) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@9 T@Ref) ) (!  (=> (select b@@7 y@@9) (not (select (|Set#Difference_25717| a@@10 b@@7) y@@9)))
 :qid |stdinbpl.287:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_25717| a@@10 b@@7) (select b@@7 y@@9))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_25717| (|Set#Difference_25717| a@@11 b@@8)) (|Set#Card_25717| (|Set#Difference_25717| b@@8 a@@11))) (|Set#Card_25717| (|Set#Intersection_25717| a@@11 b@@8))) (|Set#Card_25717| (|Set#Union_25717| a@@11 b@@8))) (= (|Set#Card_25717| (|Set#Difference_25717| a@@11 b@@8)) (- (|Set#Card_25717| a@@11) (|Set#Card_25717| (|Set#Intersection_25717| a@@11 b@@8)))))
 :qid |stdinbpl.289:18|
 :skolemid |45|
 :pattern ( (|Set#Card_25717| (|Set#Difference_25717| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_25717| s))
 :qid |stdinbpl.232:18|
 :skolemid |22|
 :pattern ( (|Set#Card_25717| s))
)))
(assert (forall ((this@@3 T@Ref) (i@@4 Int) ) (! (= (getPredWandId_25612_25613 (list2 this@@3 i@@4)) 1)
 :qid |stdinbpl.1184:15|
 :skolemid |140|
 :pattern ( (list2 this@@3 i@@4))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@5 T@Ref) ) (! (select (|Set#UnionOne_25733| a@@12 x@@5) x@@5)
 :qid |stdinbpl.248:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_25733| a@@12 x@@5))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (select a@@13 x@@6) (= (|Set#Card_25717| (|Set#UnionOne_25733| a@@13 x@@6)) (|Set#Card_25717| a@@13)))
 :qid |stdinbpl.252:18|
 :skolemid |32|
 :pattern ( (|Set#Card_25717| (|Set#UnionOne_25733| a@@13 x@@6)))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_25637_25638 (list x@@7)) 0)
 :qid |stdinbpl.1256:15|
 :skolemid |146|
 :pattern ( (list x@@7))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_25717| (|Set#Singleton_25717| r@@0)) 1)
 :qid |stdinbpl.243:18|
 :skolemid |28|
 :pattern ( (|Set#Card_25717| (|Set#Singleton_25717| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_25717| r@@1) r@@1)
 :qid |stdinbpl.241:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_25717| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_25717| a@@14 (|Set#Union_25717| a@@14 b@@9)) (|Set#Union_25717| a@@14 b@@9))
 :qid |stdinbpl.275:18|
 :skolemid |39|
 :pattern ( (|Set#Union_25717| a@@14 (|Set#Union_25717| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_25717| a@@15 (|Set#Intersection_25717| a@@15 b@@10)) (|Set#Intersection_25717| a@@15 b@@10))
 :qid |stdinbpl.279:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_25717| a@@15 (|Set#Intersection_25717| a@@15 b@@10)))
)))
(assert (forall ((this@@4 T@Ref) (i@@5 Int) ) (! (= (PredicateMaskField_25612 (list2 this@@4 i@@5)) (|list2#sm| this@@4 i@@5))
 :qid |stdinbpl.1176:15|
 :skolemid |138|
 :pattern ( (PredicateMaskField_25612 (list2 this@@4 i@@5)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_25717| o@@3))
 :qid |stdinbpl.235:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_25717| o@@3))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_47136) (o_62 T@Ref) (f_72 T@Field_60819_60824) (v T@PolymorphicMapType_47685) ) (! (succHeap Heap@@39 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@39) (store (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@39) o_62 f_72 v) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@39) (store (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@39) o_62 f_72 v) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@39) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_47136) (o_62@@0 T@Ref) (f_72@@0 T@Field_25637_3430) (v@@0 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@40) (store (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@40) o_62@@0 f_72@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@40) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@40) (store (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@40) o_62@@0 f_72@@0 v@@0)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_47136) (o_62@@1 T@Ref) (f_72@@1 T@Field_58346_58347) (v@@1 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@41) (store (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@41) o_62@@1 f_72@@1 v@@1) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@41) (store (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@41) o_62@@1 f_72@@1 v@@1) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@41) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_47136) (o_62@@2 T@Ref) (f_72@@2 T@Field_25637_25323) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@42) (store (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@42) o_62@@2 f_72@@2 v@@2) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@42) (store (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@42) o_62@@2 f_72@@2 v@@2) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@42) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_47136) (o_62@@3 T@Ref) (f_72@@3 T@Field_25637_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@43) (store (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@43) o_62@@3 f_72@@3 v@@3) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@43) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@43) (store (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@43) o_62@@3 f_72@@3 v@@3) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_47136) (o_62@@4 T@Ref) (f_72@@4 T@Field_56628_56633) (v@@4 T@PolymorphicMapType_47685) ) (! (succHeap Heap@@44 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@44) (store (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@44) o_62@@4 f_72@@4 v@@4) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@44) (store (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@44) o_62@@4 f_72@@4 v@@4) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@44) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_47136) (o_62@@5 T@Ref) (f_72@@5 T@Field_25612_3430) (v@@5 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@45) (store (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@45) o_62@@5 f_72@@5 v@@5) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@45) (store (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@45) o_62@@5 f_72@@5 v@@5) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@45) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_47136) (o_62@@6 T@Ref) (f_72@@6 T@Field_53871_53872) (v@@6 T@FrameType) ) (! (succHeap Heap@@46 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@46) (store (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@46) o_62@@6 f_72@@6 v@@6) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@46) (store (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@46) o_62@@6 f_72@@6 v@@6) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@46) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_47136) (o_62@@7 T@Ref) (f_72@@7 T@Field_25612_25323) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@47) (store (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@47) o_62@@7 f_72@@7 v@@7) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@47) (store (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@47) o_62@@7 f_72@@7 v@@7) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@47) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_47136) (o_62@@8 T@Ref) (f_72@@8 T@Field_25612_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@48) (store (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@48) o_62@@8 f_72@@8 v@@8) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@48) (store (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@48) o_62@@8 f_72@@8 v@@8) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@48) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_47136) (o_62@@9 T@Ref) (f_72@@9 T@Field_25322_56633) (v@@9 T@PolymorphicMapType_47685) ) (! (succHeap Heap@@49 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@49) (store (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@49) o_62@@9 f_72@@9 v@@9) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@49) (store (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@49) o_62@@9 f_72@@9 v@@9) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@49) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_47136) (o_62@@10 T@Ref) (f_72@@10 T@Field_53405_3430) (v@@10 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@50) (store (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@50) o_62@@10 f_72@@10 v@@10) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@50) (store (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@50) o_62@@10 f_72@@10 v@@10) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@50) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_47136) (o_62@@11 T@Ref) (f_72@@11 T@Field_25322_25613) (v@@11 T@FrameType) ) (! (succHeap Heap@@51 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@51) (store (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@51) o_62@@11 f_72@@11 v@@11) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@51) (store (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@51) o_62@@11 f_72@@11 v@@11) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@51) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_47136) (o_62@@12 T@Ref) (f_72@@12 T@Field_47209_47210) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@52) (store (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@52) o_62@@12 f_72@@12 v@@12) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@52) (store (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@52) o_62@@12 f_72@@12 v@@12) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@52) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_47136) (o_62@@13 T@Ref) (f_72@@13 T@Field_47196_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_47136 (store (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@53) o_62@@13 f_72@@13 v@@13) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47136 (store (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@53) o_62@@13 f_72@@13 v@@13) (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25320_3430#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25616_56722#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25641_60911#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25322_25613#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25322_169811#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_25323#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_53#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25612_3430#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_25323#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_53#PolymorphicMapType_47136| Heap@@53) (|PolymorphicMapType_47136_25637_3430#PolymorphicMapType_47136| Heap@@53)))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (PredicateMaskField_25637 (list x@@8)) (|list#sm| x@@8))
 :qid |stdinbpl.1248:15|
 :skolemid |144|
 :pattern ( (PredicateMaskField_25637 (list x@@8)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.319:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.320:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_47136) (Heap1Heap T@PolymorphicMapType_47136) (xs@@6 (Array T@Ref Bool)) (y@@10 T@Ref) (akk@@6 Int) (res@@6 Int) ) (!  (=> (and (= (select xs@@6 (|sk_length2_impl#condqp1| (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6))) (select xs@@6 (|sk_length2_impl#condqp1| (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6)))) (=> (select xs@@6 (|sk_length2_impl#condqp1| (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6))) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap2Heap) null (list (|sk_length2_impl#condqp1| (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6)))) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap1Heap) null (list (|sk_length2_impl#condqp1| (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6))))))) (= (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6)))
 :qid |stdinbpl.744:15|
 :skolemid |101|
 :pattern ( (|length2_impl#condqp1| Heap2Heap xs@@6 y@@10 akk@@6 res@@6) (|length2_impl#condqp1| Heap1Heap xs@@6 y@@10 akk@@6 res@@6) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_47136) (Heap1Heap@@0 T@PolymorphicMapType_47136) (xs@@7 (Array T@Ref Bool)) (y@@11 T@Ref) (akk@@7 Int) (res@@7 Int) ) (!  (=> (and (= (select xs@@7 (|sk_length3_impl#condqp2| (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7))) (select xs@@7 (|sk_length3_impl#condqp2| (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7)))) (=> (select xs@@7 (|sk_length3_impl#condqp2| (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7))) (= (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap2Heap@@0) null (list (|sk_length3_impl#condqp2| (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7)))) (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap1Heap@@0) null (list (|sk_length3_impl#condqp2| (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7))))))) (= (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7)))
 :qid |stdinbpl.975:15|
 :skolemid |122|
 :pattern ( (|length3_impl#condqp2| Heap2Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (|length3_impl#condqp2| Heap1Heap@@0 xs@@7 y@@11 akk@@7 res@@7) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_25717| s@@0) 0) (= s@@0 |Set#Empty_25717|)) (=> (not (= (|Set#Card_25717| s@@0) 0)) (exists ((x@@9 T@Ref) ) (! (select s@@0 x@@9)
 :qid |stdinbpl.238:33|
 :skolemid |24|
))))
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Set#Card_25717| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@10 T@Ref) ) (!  (=> (not (select a@@18 x@@10)) (= (|Set#Card_25717| (|Set#UnionOne_25733| a@@18 x@@10)) (+ (|Set#Card_25717| a@@18) 1)))
 :qid |stdinbpl.254:18|
 :skolemid |33|
 :pattern ( (|Set#Card_25717| (|Set#UnionOne_25733| a@@18 x@@10)))
)))
(assert (forall ((o_62@@14 T@Ref) (f_49 T@Field_47209_47210) (Heap@@54 T@PolymorphicMapType_47136) ) (!  (=> (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@54) o_62@@14 $allocated) (select (|PolymorphicMapType_47136_24991_53#PolymorphicMapType_47136| Heap@@54) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@54) o_62@@14 f_49) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@54) o_62@@14 f_49))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_47136) (Mask@@60 T@PolymorphicMapType_47157) (xs@@8 (Array T@Ref Bool)) (y@@12 T@Ref) (akk@@8 Int) (res@@8 Int) ) (!  (=> (state Heap@@55 Mask@@60) (= (|length2_impl'| Heap@@55 xs@@8 y@@12 akk@@8 res@@8) (|length2_impl#frame| (FrameFragment_3430 (|length2_impl#condqp1| Heap@@55 xs@@8 y@@12 akk@@8 res@@8)) xs@@8 y@@12 akk@@8 res@@8)))
 :qid |stdinbpl.734:15|
 :skolemid |100|
 :pattern ( (state Heap@@55 Mask@@60) (|length2_impl'| Heap@@55 xs@@8 y@@12 akk@@8 res@@8))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_47136) (Mask@@61 T@PolymorphicMapType_47157) (xs@@9 (Array T@Ref Bool)) (y@@13 T@Ref) (akk@@9 Int) (res@@9 Int) ) (!  (=> (state Heap@@56 Mask@@61) (= (|length3_impl'| Heap@@56 xs@@9 y@@13 akk@@9 res@@9) (|length3_impl#frame| (FrameFragment_3430 (|length3_impl#condqp2| Heap@@56 xs@@9 y@@13 akk@@9 res@@9)) xs@@9 y@@13 akk@@9 res@@9)))
 :qid |stdinbpl.965:15|
 :skolemid |121|
 :pattern ( (state Heap@@56 Mask@@61) (|length3_impl'| Heap@@56 xs@@9 y@@13 akk@@9 res@@9))
)))
(assert (forall ((p@@3 T@Field_25322_25613) (v_1@@2 T@FrameType) (q T@Field_25322_25613) (w@@2 T@FrameType) (r@@2 T@Field_25322_25613) (u T@FrameType) ) (!  (=> (and (InsidePredicate_47196_47196 p@@3 v_1@@2 q w@@2) (InsidePredicate_47196_47196 q w@@2 r@@2 u)) (InsidePredicate_47196_47196 p@@3 v_1@@2 r@@2 u))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_47196 p@@3 v_1@@2 q w@@2) (InsidePredicate_47196_47196 q w@@2 r@@2 u))
)))
(assert (forall ((p@@4 T@Field_25322_25613) (v_1@@3 T@FrameType) (q@@0 T@Field_25322_25613) (w@@3 T@FrameType) (r@@3 T@Field_58346_58347) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_47196 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_47196_25637 q@@0 w@@3 r@@3 u@@0)) (InsidePredicate_47196_25637 p@@4 v_1@@3 r@@3 u@@0))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_47196 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_47196_25637 q@@0 w@@3 r@@3 u@@0))
)))
(assert (forall ((p@@5 T@Field_25322_25613) (v_1@@4 T@FrameType) (q@@1 T@Field_25322_25613) (w@@4 T@FrameType) (r@@4 T@Field_53871_53872) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_47196 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_47196_25612 q@@1 w@@4 r@@4 u@@1)) (InsidePredicate_47196_25612 p@@5 v_1@@4 r@@4 u@@1))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_47196 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_47196_25612 q@@1 w@@4 r@@4 u@@1))
)))
(assert (forall ((p@@6 T@Field_25322_25613) (v_1@@5 T@FrameType) (q@@2 T@Field_58346_58347) (w@@5 T@FrameType) (r@@5 T@Field_25322_25613) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25637 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_25637_47196 q@@2 w@@5 r@@5 u@@2)) (InsidePredicate_47196_47196 p@@6 v_1@@5 r@@5 u@@2))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25637 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_25637_47196 q@@2 w@@5 r@@5 u@@2))
)))
(assert (forall ((p@@7 T@Field_25322_25613) (v_1@@6 T@FrameType) (q@@3 T@Field_58346_58347) (w@@6 T@FrameType) (r@@6 T@Field_58346_58347) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25637 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_25637_25637 q@@3 w@@6 r@@6 u@@3)) (InsidePredicate_47196_25637 p@@7 v_1@@6 r@@6 u@@3))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25637 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_25637_25637 q@@3 w@@6 r@@6 u@@3))
)))
(assert (forall ((p@@8 T@Field_25322_25613) (v_1@@7 T@FrameType) (q@@4 T@Field_58346_58347) (w@@7 T@FrameType) (r@@7 T@Field_53871_53872) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25637 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_25637_25612 q@@4 w@@7 r@@7 u@@4)) (InsidePredicate_47196_25612 p@@8 v_1@@7 r@@7 u@@4))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25637 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_25637_25612 q@@4 w@@7 r@@7 u@@4))
)))
(assert (forall ((p@@9 T@Field_25322_25613) (v_1@@8 T@FrameType) (q@@5 T@Field_53871_53872) (w@@8 T@FrameType) (r@@8 T@Field_25322_25613) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25612 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_25612_47196 q@@5 w@@8 r@@8 u@@5)) (InsidePredicate_47196_47196 p@@9 v_1@@8 r@@8 u@@5))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25612 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_25612_47196 q@@5 w@@8 r@@8 u@@5))
)))
(assert (forall ((p@@10 T@Field_25322_25613) (v_1@@9 T@FrameType) (q@@6 T@Field_53871_53872) (w@@9 T@FrameType) (r@@9 T@Field_58346_58347) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25612 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_25612_25637 q@@6 w@@9 r@@9 u@@6)) (InsidePredicate_47196_25637 p@@10 v_1@@9 r@@9 u@@6))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25612 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_25612_25637 q@@6 w@@9 r@@9 u@@6))
)))
(assert (forall ((p@@11 T@Field_25322_25613) (v_1@@10 T@FrameType) (q@@7 T@Field_53871_53872) (w@@10 T@FrameType) (r@@10 T@Field_53871_53872) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_47196_25612 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_25612_25612 q@@7 w@@10 r@@10 u@@7)) (InsidePredicate_47196_25612 p@@11 v_1@@10 r@@10 u@@7))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47196_25612 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_25612_25612 q@@7 w@@10 r@@10 u@@7))
)))
(assert (forall ((p@@12 T@Field_58346_58347) (v_1@@11 T@FrameType) (q@@8 T@Field_25322_25613) (w@@11 T@FrameType) (r@@11 T@Field_25322_25613) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_47196 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_47196_47196 q@@8 w@@11 r@@11 u@@8)) (InsidePredicate_25637_47196 p@@12 v_1@@11 r@@11 u@@8))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_47196 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_47196_47196 q@@8 w@@11 r@@11 u@@8))
)))
(assert (forall ((p@@13 T@Field_58346_58347) (v_1@@12 T@FrameType) (q@@9 T@Field_25322_25613) (w@@12 T@FrameType) (r@@12 T@Field_58346_58347) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_47196 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_47196_25637 q@@9 w@@12 r@@12 u@@9)) (InsidePredicate_25637_25637 p@@13 v_1@@12 r@@12 u@@9))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_47196 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_47196_25637 q@@9 w@@12 r@@12 u@@9))
)))
(assert (forall ((p@@14 T@Field_58346_58347) (v_1@@13 T@FrameType) (q@@10 T@Field_25322_25613) (w@@13 T@FrameType) (r@@13 T@Field_53871_53872) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_47196 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_47196_25612 q@@10 w@@13 r@@13 u@@10)) (InsidePredicate_25637_25612 p@@14 v_1@@13 r@@13 u@@10))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_47196 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_47196_25612 q@@10 w@@13 r@@13 u@@10))
)))
(assert (forall ((p@@15 T@Field_58346_58347) (v_1@@14 T@FrameType) (q@@11 T@Field_58346_58347) (w@@14 T@FrameType) (r@@14 T@Field_25322_25613) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25637 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_25637_47196 q@@11 w@@14 r@@14 u@@11)) (InsidePredicate_25637_47196 p@@15 v_1@@14 r@@14 u@@11))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25637 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_25637_47196 q@@11 w@@14 r@@14 u@@11))
)))
(assert (forall ((p@@16 T@Field_58346_58347) (v_1@@15 T@FrameType) (q@@12 T@Field_58346_58347) (w@@15 T@FrameType) (r@@15 T@Field_58346_58347) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25637 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_25637_25637 q@@12 w@@15 r@@15 u@@12)) (InsidePredicate_25637_25637 p@@16 v_1@@15 r@@15 u@@12))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25637 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_25637_25637 q@@12 w@@15 r@@15 u@@12))
)))
(assert (forall ((p@@17 T@Field_58346_58347) (v_1@@16 T@FrameType) (q@@13 T@Field_58346_58347) (w@@16 T@FrameType) (r@@16 T@Field_53871_53872) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25637 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_25637_25612 q@@13 w@@16 r@@16 u@@13)) (InsidePredicate_25637_25612 p@@17 v_1@@16 r@@16 u@@13))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25637 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_25637_25612 q@@13 w@@16 r@@16 u@@13))
)))
(assert (forall ((p@@18 T@Field_58346_58347) (v_1@@17 T@FrameType) (q@@14 T@Field_53871_53872) (w@@17 T@FrameType) (r@@17 T@Field_25322_25613) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25612 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_25612_47196 q@@14 w@@17 r@@17 u@@14)) (InsidePredicate_25637_47196 p@@18 v_1@@17 r@@17 u@@14))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25612 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_25612_47196 q@@14 w@@17 r@@17 u@@14))
)))
(assert (forall ((p@@19 T@Field_58346_58347) (v_1@@18 T@FrameType) (q@@15 T@Field_53871_53872) (w@@18 T@FrameType) (r@@18 T@Field_58346_58347) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25612 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_25612_25637 q@@15 w@@18 r@@18 u@@15)) (InsidePredicate_25637_25637 p@@19 v_1@@18 r@@18 u@@15))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25612 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_25612_25637 q@@15 w@@18 r@@18 u@@15))
)))
(assert (forall ((p@@20 T@Field_58346_58347) (v_1@@19 T@FrameType) (q@@16 T@Field_53871_53872) (w@@19 T@FrameType) (r@@19 T@Field_53871_53872) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_25637_25612 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_25612_25612 q@@16 w@@19 r@@19 u@@16)) (InsidePredicate_25637_25612 p@@20 v_1@@19 r@@19 u@@16))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25637_25612 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_25612_25612 q@@16 w@@19 r@@19 u@@16))
)))
(assert (forall ((p@@21 T@Field_53871_53872) (v_1@@20 T@FrameType) (q@@17 T@Field_25322_25613) (w@@20 T@FrameType) (r@@20 T@Field_25322_25613) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_47196 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_47196_47196 q@@17 w@@20 r@@20 u@@17)) (InsidePredicate_25612_47196 p@@21 v_1@@20 r@@20 u@@17))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_47196 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_47196_47196 q@@17 w@@20 r@@20 u@@17))
)))
(assert (forall ((p@@22 T@Field_53871_53872) (v_1@@21 T@FrameType) (q@@18 T@Field_25322_25613) (w@@21 T@FrameType) (r@@21 T@Field_58346_58347) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_47196 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_47196_25637 q@@18 w@@21 r@@21 u@@18)) (InsidePredicate_25612_25637 p@@22 v_1@@21 r@@21 u@@18))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_47196 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_47196_25637 q@@18 w@@21 r@@21 u@@18))
)))
(assert (forall ((p@@23 T@Field_53871_53872) (v_1@@22 T@FrameType) (q@@19 T@Field_25322_25613) (w@@22 T@FrameType) (r@@22 T@Field_53871_53872) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_47196 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_47196_25612 q@@19 w@@22 r@@22 u@@19)) (InsidePredicate_25612_25612 p@@23 v_1@@22 r@@22 u@@19))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_47196 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_47196_25612 q@@19 w@@22 r@@22 u@@19))
)))
(assert (forall ((p@@24 T@Field_53871_53872) (v_1@@23 T@FrameType) (q@@20 T@Field_58346_58347) (w@@23 T@FrameType) (r@@23 T@Field_25322_25613) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25637 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_25637_47196 q@@20 w@@23 r@@23 u@@20)) (InsidePredicate_25612_47196 p@@24 v_1@@23 r@@23 u@@20))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25637 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_25637_47196 q@@20 w@@23 r@@23 u@@20))
)))
(assert (forall ((p@@25 T@Field_53871_53872) (v_1@@24 T@FrameType) (q@@21 T@Field_58346_58347) (w@@24 T@FrameType) (r@@24 T@Field_58346_58347) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25637 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_25637_25637 q@@21 w@@24 r@@24 u@@21)) (InsidePredicate_25612_25637 p@@25 v_1@@24 r@@24 u@@21))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25637 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_25637_25637 q@@21 w@@24 r@@24 u@@21))
)))
(assert (forall ((p@@26 T@Field_53871_53872) (v_1@@25 T@FrameType) (q@@22 T@Field_58346_58347) (w@@25 T@FrameType) (r@@25 T@Field_53871_53872) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25637 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_25637_25612 q@@22 w@@25 r@@25 u@@22)) (InsidePredicate_25612_25612 p@@26 v_1@@25 r@@25 u@@22))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25637 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_25637_25612 q@@22 w@@25 r@@25 u@@22))
)))
(assert (forall ((p@@27 T@Field_53871_53872) (v_1@@26 T@FrameType) (q@@23 T@Field_53871_53872) (w@@26 T@FrameType) (r@@26 T@Field_25322_25613) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25612 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_25612_47196 q@@23 w@@26 r@@26 u@@23)) (InsidePredicate_25612_47196 p@@27 v_1@@26 r@@26 u@@23))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25612 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_25612_47196 q@@23 w@@26 r@@26 u@@23))
)))
(assert (forall ((p@@28 T@Field_53871_53872) (v_1@@27 T@FrameType) (q@@24 T@Field_53871_53872) (w@@27 T@FrameType) (r@@27 T@Field_58346_58347) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25612 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_25612_25637 q@@24 w@@27 r@@27 u@@24)) (InsidePredicate_25612_25637 p@@28 v_1@@27 r@@27 u@@24))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25612 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_25612_25637 q@@24 w@@27 r@@27 u@@24))
)))
(assert (forall ((p@@29 T@Field_53871_53872) (v_1@@28 T@FrameType) (q@@25 T@Field_53871_53872) (w@@28 T@FrameType) (r@@28 T@Field_53871_53872) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_25612_25612 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_25612_25612 q@@25 w@@28 r@@28 u@@25)) (InsidePredicate_25612_25612 p@@29 v_1@@28 r@@28 u@@25))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25612_25612 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_25612_25612 q@@25 w@@28 r@@28 u@@25))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.325:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_47136) (Mask@@62 T@PolymorphicMapType_47157) (xs@@10 (Array T@Ref Bool)) (y@@14 T@Ref) (akk@@10 Int) (res@@10 Int) ) (!  (=> (and (state Heap@@57 Mask@@62) (< AssumeFunctionsAbove 1)) (= (length3_impl Heap@@57 xs@@10 y@@14 akk@@10 res@@10) (forall ((x_1 T@Ref) ) (!  (=> (and (select xs@@10 x_1) (= x_1 y@@14)) (ite (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@57) x_1 next) null) (= res@@10 akk@@10) (|length3_impl'| Heap@@57 xs@@10 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@57) x_1 next) (+ akk@@10 1) res@@10)))
 :qid |stdinbpl.957:100|
 :skolemid |119|
 :pattern ( (select xs@@10 x_1))
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@57) null (list x_1)))
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@57) x_1 next))
))))
 :qid |stdinbpl.955:15|
 :skolemid |120|
 :pattern ( (state Heap@@57 Mask@@62) (length3_impl Heap@@57 xs@@10 y@@14 akk@@10 res@@10))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_47136) (Mask@@63 T@PolymorphicMapType_47157) (xs@@11 (Array T@Ref Bool)) (y@@15 T@Ref) (akk@@11 Int) (res@@11 Int) ) (!  (=> (and (state Heap@@58 Mask@@63) (< AssumeFunctionsAbove 2)) (= (length_impl Heap@@58 xs@@11 y@@15 akk@@11 res@@11) (forall ((x@@11 T@Ref) ) (!  (=> (and (select xs@@11 x@@11) (= x@@11 y@@15)) (ite (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@58) x@@11 next) null) (= res@@11 akk@@11) (|length_impl'| Heap@@58 xs@@11 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@58) x@@11 next) (+ akk@@11 1) res@@11)))
 :qid |stdinbpl.588:99|
 :skolemid |91|
 :pattern ( (select xs@@11 x@@11))
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@58) null (list x@@11)))
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@58) x@@11 next))
))))
 :qid |stdinbpl.586:15|
 :skolemid |92|
 :pattern ( (state Heap@@58 Mask@@63) (length_impl Heap@@58 xs@@11 y@@15 akk@@11 res@@11))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_47136) (Mask@@64 T@PolymorphicMapType_47157) (xs@@12 (Array T@Ref Bool)) (y@@16 T@Ref) (akk@@12 Int) (res@@12 Int) ) (!  (=> (and (state Heap@@59 Mask@@64) (< AssumeFunctionsAbove 3)) (= (length2_impl Heap@@59 xs@@12 y@@16 akk@@12 res@@12) (forall ((x_1@@0 T@Ref) ) (!  (=> (and (select xs@@12 x_1@@0) (= x_1@@0 y@@16)) (ite (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@59) x_1@@0 next) null) (= res@@12 akk@@12) (|length2_impl'| Heap@@59 xs@@12 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@59) x_1@@0 next) (+ akk@@12 1) res@@12)))
 :qid |stdinbpl.726:100|
 :skolemid |98|
 :pattern ( (select xs@@12 x_1@@0))
 :pattern ( (select (|PolymorphicMapType_47136_25637_25638#PolymorphicMapType_47136| Heap@@59) null (list x_1@@0)))
 :pattern ( (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@59) x_1@@0 next))
))))
 :qid |stdinbpl.724:15|
 :skolemid |99|
 :pattern ( (state Heap@@59 Mask@@64) (length2_impl Heap@@59 xs@@12 y@@16 akk@@12 res@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_25717| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.258:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_25717| a@@20 b@@13) o@@4))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_47136) (l_1@@0 T@Ref) (i@@6 Int) ) (!  (and (= (foo_1 Heap@@60 l_1@@0 i@@6) (|foo'| Heap@@60 l_1@@0 i@@6)) (dummyFunction_3723 (|foo#triggerStateless| l_1@@0 i@@6)))
 :qid |stdinbpl.433:15|
 :skolemid |82|
 :pattern ( (foo_1 Heap@@60 l_1@@0 i@@6))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_47136) (Mask@@65 T@PolymorphicMapType_47157) (l_1@@1 T@Ref) (i@@7 Int) ) (!  (=> (and (state Heap@@61 Mask@@65) (< AssumeFunctionsAbove 0)) (= (foo_1 Heap@@61 l_1@@1 i@@7) (forall ((j Int) ) (!  (=> (= i@@7 j) (or (= (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@61) l_1@@1 next) null) (|foo'| Heap@@61 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@61) l_1@@1 next) j)))
 :qid |stdinbpl.445:84|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@61) null (list2 l_1@@1 j)))
 :pattern ( (|foo#frame| (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@61) null (list2 (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@61) l_1@@1 next) j)) (select (|PolymorphicMapType_47136_24994_24995#PolymorphicMapType_47136| Heap@@61) l_1@@1 next) j))
))))
 :qid |stdinbpl.443:15|
 :skolemid |85|
 :pattern ( (state Heap@@61 Mask@@65) (foo_1 Heap@@61 l_1@@1 i@@7))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_47136) (Mask@@66 T@PolymorphicMapType_47157) (l_1@@2 T@Ref) (i@@8 Int) ) (!  (=> (state Heap@@62 Mask@@66) (= (|foo'| Heap@@62 l_1@@2 i@@8) (|foo#frame| (select (|PolymorphicMapType_47136_25612_25613#PolymorphicMapType_47136| Heap@@62) null (list2 l_1@@2 i@@8)) l_1@@2 i@@8)))
 :qid |stdinbpl.453:15|
 :skolemid |86|
 :pattern ( (state Heap@@62 Mask@@66) (|foo'| Heap@@62 l_1@@2 i@@8))
)))
; Valid

