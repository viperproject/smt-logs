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
(declare-sort T@Field_9466_53 0)
(declare-sort T@Field_9479_9480 0)
(declare-sort T@Field_12809_12814 0)
(declare-sort T@Field_13603_13608 0)
(declare-sort T@Field_5605_1211 0)
(declare-sort T@Field_5605_12814 0)
(declare-sort T@Field_5605_12827 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12795_5606 0)
(declare-sort T@Field_12795_2380 0)
(declare-sort T@Field_12795_1211 0)
(declare-sort T@Field_12826_12827 0)
(declare-sort T@Field_13587_5606 0)
(declare-sort T@Field_13587_2380 0)
(declare-sort T@Field_13587_1655 0)
(declare-sort T@Field_13622_13623 0)
(declare-sort T@Field_14549_5606 0)
(declare-sort T@Field_14549_2380 0)
(declare-sort T@Field_14549_2181 0)
(declare-sort T@Field_14561_14566 0)
(declare-sort T@Field_14576_14577 0)
(declare-datatypes ((T@PolymorphicMapType_9427 0)) (((PolymorphicMapType_9427 (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| (Array T@Ref T@Field_9479_9480 Real)) (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| (Array T@Ref T@Field_9466_53 Real)) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| (Array T@Ref T@Field_12795_1211 Real)) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| (Array T@Ref T@Field_13587_1655 Real)) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| (Array T@Ref T@Field_14549_2181 Real)) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| (Array T@Ref T@Field_5605_1211 Real)) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| (Array T@Ref T@Field_5605_12814 Real)) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| (Array T@Ref T@Field_5605_12827 Real)) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| (Array T@Ref T@Field_12795_5606 Real)) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| (Array T@Ref T@Field_12795_2380 Real)) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| (Array T@Ref T@Field_12809_12814 Real)) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| (Array T@Ref T@Field_12826_12827 Real)) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| (Array T@Ref T@Field_13587_5606 Real)) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| (Array T@Ref T@Field_13587_2380 Real)) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| (Array T@Ref T@Field_13603_13608 Real)) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| (Array T@Ref T@Field_13622_13623 Real)) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| (Array T@Ref T@Field_14549_5606 Real)) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| (Array T@Ref T@Field_14549_2380 Real)) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| (Array T@Ref T@Field_14561_14566 Real)) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| (Array T@Ref T@Field_14576_14577 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9955 0)) (((PolymorphicMapType_9955 (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| (Array T@Ref T@Field_9479_9480 Bool)) (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| (Array T@Ref T@Field_9466_53 Bool)) (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| (Array T@Ref T@Field_5605_1211 Bool)) (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| (Array T@Ref T@Field_5605_12814 Bool)) (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| (Array T@Ref T@Field_5605_12827 Bool)) (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| (Array T@Ref T@Field_12795_5606 Bool)) (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| (Array T@Ref T@Field_12795_2380 Bool)) (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| (Array T@Ref T@Field_12795_1211 Bool)) (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| (Array T@Ref T@Field_12809_12814 Bool)) (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| (Array T@Ref T@Field_12826_12827 Bool)) (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| (Array T@Ref T@Field_13587_5606 Bool)) (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| (Array T@Ref T@Field_13587_2380 Bool)) (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| (Array T@Ref T@Field_13587_1655 Bool)) (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| (Array T@Ref T@Field_13603_13608 Bool)) (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| (Array T@Ref T@Field_13622_13623 Bool)) (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| (Array T@Ref T@Field_14549_5606 Bool)) (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| (Array T@Ref T@Field_14549_2380 Bool)) (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| (Array T@Ref T@Field_14549_2181 Bool)) (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| (Array T@Ref T@Field_14561_14566 Bool)) (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| (Array T@Ref T@Field_14576_14577 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9406 0)) (((PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| (Array T@Ref T@Field_9466_53 Bool)) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| (Array T@Ref T@Field_9479_9480 T@Ref)) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| (Array T@Ref T@Field_12809_12814 T@PolymorphicMapType_9955)) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| (Array T@Ref T@Field_13603_13608 T@PolymorphicMapType_9955)) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| (Array T@Ref T@Field_5605_1211 Int)) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| (Array T@Ref T@Field_5605_12814 T@PolymorphicMapType_9955)) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| (Array T@Ref T@Field_5605_12827 T@FrameType)) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| (Array T@Ref T@Field_12795_5606 T@Ref)) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| (Array T@Ref T@Field_12795_2380 Bool)) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| (Array T@Ref T@Field_12795_1211 Int)) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| (Array T@Ref T@Field_12826_12827 T@FrameType)) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| (Array T@Ref T@Field_13587_5606 T@Ref)) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| (Array T@Ref T@Field_13587_2380 Bool)) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| (Array T@Ref T@Field_13587_1655 Int)) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| (Array T@Ref T@Field_13622_13623 T@FrameType)) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| (Array T@Ref T@Field_14549_5606 T@Ref)) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| (Array T@Ref T@Field_14549_2380 Bool)) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| (Array T@Ref T@Field_14549_2181 Int)) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| (Array T@Ref T@Field_14561_14566 T@PolymorphicMapType_9955)) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| (Array T@Ref T@Field_14576_14577 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9466_53)
(declare-fun v_36 () T@Field_9466_53)
(declare-fun l_8 () T@Field_9479_9480)
(declare-fun WandMaskField_5517 (T@Field_13622_13623) T@Field_13603_13608)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref T@Ref T@Ref Real T@Ref Real) T@Field_13622_13623)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref T@Ref T@Ref Real T@Ref Real) T@Field_13603_13608)
(declare-fun succHeap (T@PolymorphicMapType_9406 T@PolymorphicMapType_9406) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9406 T@PolymorphicMapType_9406) Bool)
(declare-fun state (T@PolymorphicMapType_9406 T@PolymorphicMapType_9427) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9427) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9955)
(declare-fun wand_2 (Bool T@Ref) T@Field_14549_2181)
(declare-fun IsWandField_5585_2181 (T@Field_14549_2181) Bool)
(declare-fun |wand_2#ft| (Bool T@Ref) T@Field_14576_14577)
(declare-fun IsWandField_5592_5593 (T@Field_14576_14577) Bool)
(declare-fun IsPredicateField_5585_2181 (T@Field_14549_2181) Bool)
(declare-fun IsPredicateField_5592_5593 (T@Field_14576_14577) Bool)
(declare-fun WandMaskField_5437 (T@Field_12826_12827) T@Field_12809_12814)
(declare-fun |wand#ft| (T@Ref Real T@Ref Real T@Ref Real) T@Field_12826_12827)
(declare-fun |wand#sm| (T@Ref Real T@Ref Real T@Ref Real) T@Field_12809_12814)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9406 T@PolymorphicMapType_9406 T@PolymorphicMapType_9427) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_14549 (T@Field_14576_14577) T@Field_14561_14566)
(declare-fun HasDirectPerm_14549_12827 (T@PolymorphicMapType_9427 T@Ref T@Field_14576_14577) Bool)
(declare-fun IsPredicateField_5517_5518 (T@Field_13622_13623) Bool)
(declare-fun PredicateMaskField_13587 (T@Field_13622_13623) T@Field_13603_13608)
(declare-fun HasDirectPerm_13587_12827 (T@PolymorphicMapType_9427 T@Ref T@Field_13622_13623) Bool)
(declare-fun IsPredicateField_5437_5438 (T@Field_12826_12827) Bool)
(declare-fun PredicateMaskField_12795 (T@Field_12826_12827) T@Field_12809_12814)
(declare-fun HasDirectPerm_12795_12827 (T@PolymorphicMapType_9427 T@Ref T@Field_12826_12827) Bool)
(declare-fun IsPredicateField_5605_32723 (T@Field_5605_12827) Bool)
(declare-fun PredicateMaskField_5605 (T@Field_5605_12827) T@Field_5605_12814)
(declare-fun HasDirectPerm_5605_12827 (T@PolymorphicMapType_9427 T@Ref T@Field_5605_12827) Bool)
(declare-fun WandMaskField_5592 (T@Field_14576_14577) T@Field_14561_14566)
(declare-fun IsWandField_5517_5518 (T@Field_13622_13623) Bool)
(declare-fun IsWandField_5437_5438 (T@Field_12826_12827) Bool)
(declare-fun IsWandField_5605_39419 (T@Field_5605_12827) Bool)
(declare-fun WandMaskField_5605 (T@Field_5605_12827) T@Field_5605_12814)
(declare-fun wand_1 (T@Ref Real T@Ref T@Ref T@Ref Real T@Ref Real) T@Field_13587_1655)
(declare-fun IsWandField_5496_1655 (T@Field_13587_1655) Bool)
(declare-fun IsPredicateField_5496_1655 (T@Field_13587_1655) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_9406)
(declare-fun ZeroMask () T@PolymorphicMapType_9427)
(declare-fun InsidePredicate_14549_14549 (T@Field_14576_14577 T@FrameType T@Field_14576_14577 T@FrameType) Bool)
(declare-fun InsidePredicate_13587_13587 (T@Field_13622_13623 T@FrameType T@Field_13622_13623 T@FrameType) Bool)
(declare-fun InsidePredicate_12795_12795 (T@Field_12826_12827 T@FrameType T@Field_12826_12827 T@FrameType) Bool)
(declare-fun InsidePredicate_9466_9466 (T@Field_5605_12827 T@FrameType T@Field_5605_12827 T@FrameType) Bool)
(declare-fun IsPredicateField_5603_2380 (T@Field_9466_53) Bool)
(declare-fun IsWandField_5603_2380 (T@Field_9466_53) Bool)
(declare-fun IsPredicateField_5605_5606 (T@Field_9479_9480) Bool)
(declare-fun IsWandField_5605_5606 (T@Field_9479_9480) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5585_53882 (T@Field_14561_14566) Bool)
(declare-fun IsWandField_5585_53898 (T@Field_14561_14566) Bool)
(declare-fun IsPredicateField_5585_2380 (T@Field_14549_2380) Bool)
(declare-fun IsWandField_5585_2380 (T@Field_14549_2380) Bool)
(declare-fun IsPredicateField_5585_5606 (T@Field_14549_5606) Bool)
(declare-fun IsWandField_5585_5606 (T@Field_14549_5606) Bool)
(declare-fun IsPredicateField_5496_53065 (T@Field_13603_13608) Bool)
(declare-fun IsWandField_5496_53081 (T@Field_13603_13608) Bool)
(declare-fun IsPredicateField_5496_2380 (T@Field_13587_2380) Bool)
(declare-fun IsWandField_5496_2380 (T@Field_13587_2380) Bool)
(declare-fun IsPredicateField_5496_5606 (T@Field_13587_5606) Bool)
(declare-fun IsWandField_5496_5606 (T@Field_13587_5606) Bool)
(declare-fun IsPredicateField_5420_52248 (T@Field_12809_12814) Bool)
(declare-fun IsWandField_5420_52264 (T@Field_12809_12814) Bool)
(declare-fun IsPredicateField_5420_1211 (T@Field_12795_1211) Bool)
(declare-fun IsWandField_5420_1211 (T@Field_12795_1211) Bool)
(declare-fun IsPredicateField_5420_2380 (T@Field_12795_2380) Bool)
(declare-fun IsWandField_5420_2380 (T@Field_12795_2380) Bool)
(declare-fun IsPredicateField_5420_5606 (T@Field_12795_5606) Bool)
(declare-fun IsWandField_5420_5606 (T@Field_12795_5606) Bool)
(declare-fun IsPredicateField_5605_51431 (T@Field_5605_12814) Bool)
(declare-fun IsWandField_5605_51447 (T@Field_5605_12814) Bool)
(declare-fun IsPredicateField_5605_1211 (T@Field_5605_1211) Bool)
(declare-fun IsWandField_5605_1211 (T@Field_5605_1211) Bool)
(declare-fun HasDirectPerm_14549_32207 (T@PolymorphicMapType_9427 T@Ref T@Field_14561_14566) Bool)
(declare-fun HasDirectPerm_14549_1211 (T@PolymorphicMapType_9427 T@Ref T@Field_14549_2181) Bool)
(declare-fun HasDirectPerm_14549_2380 (T@PolymorphicMapType_9427 T@Ref T@Field_14549_2380) Bool)
(declare-fun HasDirectPerm_14549_5606 (T@PolymorphicMapType_9427 T@Ref T@Field_14549_5606) Bool)
(declare-fun HasDirectPerm_13587_31073 (T@PolymorphicMapType_9427 T@Ref T@Field_13603_13608) Bool)
(declare-fun HasDirectPerm_13587_1211 (T@PolymorphicMapType_9427 T@Ref T@Field_13587_1655) Bool)
(declare-fun HasDirectPerm_13587_2380 (T@PolymorphicMapType_9427 T@Ref T@Field_13587_2380) Bool)
(declare-fun HasDirectPerm_13587_5606 (T@PolymorphicMapType_9427 T@Ref T@Field_13587_5606) Bool)
(declare-fun HasDirectPerm_12795_29939 (T@PolymorphicMapType_9427 T@Ref T@Field_12809_12814) Bool)
(declare-fun HasDirectPerm_12795_1211 (T@PolymorphicMapType_9427 T@Ref T@Field_12795_1211) Bool)
(declare-fun HasDirectPerm_12795_2380 (T@PolymorphicMapType_9427 T@Ref T@Field_12795_2380) Bool)
(declare-fun HasDirectPerm_12795_5606 (T@PolymorphicMapType_9427 T@Ref T@Field_12795_5606) Bool)
(declare-fun HasDirectPerm_5605_28761 (T@PolymorphicMapType_9427 T@Ref T@Field_5605_12814) Bool)
(declare-fun HasDirectPerm_5605_1211 (T@PolymorphicMapType_9427 T@Ref T@Field_5605_1211) Bool)
(declare-fun HasDirectPerm_5603_2380 (T@PolymorphicMapType_9427 T@Ref T@Field_9466_53) Bool)
(declare-fun HasDirectPerm_5605_5606 (T@PolymorphicMapType_9427 T@Ref T@Field_9479_9480) Bool)
(declare-fun wand (T@Ref Real T@Ref Real T@Ref Real) T@Field_12795_1211)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun getPredWandId_5420_1211 (T@Field_12795_1211) Int)
(declare-fun sumMask (T@PolymorphicMapType_9427 T@PolymorphicMapType_9427 T@PolymorphicMapType_9427) Bool)
(declare-fun getPredWandId_5496_1655 (T@Field_13587_1655) Int)
(declare-fun getPredWandId_5585_2181 (T@Field_14549_2181) Int)
(declare-fun |wand_2#sm| (Bool T@Ref) T@Field_14561_14566)
(declare-fun InsidePredicate_14549_13587 (T@Field_14576_14577 T@FrameType T@Field_13622_13623 T@FrameType) Bool)
(declare-fun InsidePredicate_14549_12795 (T@Field_14576_14577 T@FrameType T@Field_12826_12827 T@FrameType) Bool)
(declare-fun InsidePredicate_14549_9466 (T@Field_14576_14577 T@FrameType T@Field_5605_12827 T@FrameType) Bool)
(declare-fun InsidePredicate_13587_14549 (T@Field_13622_13623 T@FrameType T@Field_14576_14577 T@FrameType) Bool)
(declare-fun InsidePredicate_13587_12795 (T@Field_13622_13623 T@FrameType T@Field_12826_12827 T@FrameType) Bool)
(declare-fun InsidePredicate_13587_9466 (T@Field_13622_13623 T@FrameType T@Field_5605_12827 T@FrameType) Bool)
(declare-fun InsidePredicate_12795_14549 (T@Field_12826_12827 T@FrameType T@Field_14576_14577 T@FrameType) Bool)
(declare-fun InsidePredicate_12795_13587 (T@Field_12826_12827 T@FrameType T@Field_13622_13623 T@FrameType) Bool)
(declare-fun InsidePredicate_12795_9466 (T@Field_12826_12827 T@FrameType T@Field_5605_12827 T@FrameType) Bool)
(declare-fun InsidePredicate_9466_14549 (T@Field_5605_12827 T@FrameType T@Field_14576_14577 T@FrameType) Bool)
(declare-fun InsidePredicate_9466_13587 (T@Field_5605_12827 T@FrameType T@Field_13622_13623 T@FrameType) Bool)
(declare-fun InsidePredicate_9466_12795 (T@Field_5605_12827 T@FrameType T@Field_12826_12827 T@FrameType) Bool)
(assert (distinct $allocated v_36)
)
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 T@Ref) (arg5 T@Ref) (arg6 Real) (arg7 T@Ref) (arg8 Real) ) (! (= (|wand_1#sm| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8) (WandMaskField_5517 (|wand_1#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_5517 (|wand_1#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9406) (Heap1 T@PolymorphicMapType_9406) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9406) (Mask T@PolymorphicMapType_9427) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9406) (Heap1@@0 T@PolymorphicMapType_9406) (Heap2 T@PolymorphicMapType_9406) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14576_14577) ) (!  (not (select (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14561_14566) ) (!  (not (select (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14549_2181) ) (!  (not (select (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14549_2380) ) (!  (not (select (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14549_5606) ) (!  (not (select (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_13622_13623) ) (!  (not (select (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_13603_13608) ) (!  (not (select (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_13587_1655) ) (!  (not (select (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_13587_2380) ) (!  (not (select (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13587_5606) ) (!  (not (select (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_12826_12827) ) (!  (not (select (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_12809_12814) ) (!  (not (select (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_12795_1211) ) (!  (not (select (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_12795_2380) ) (!  (not (select (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_12795_5606) ) (!  (not (select (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5605_12827) ) (!  (not (select (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5605_12814) ) (!  (not (select (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5605_1211) ) (!  (not (select (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9466_53) ) (!  (not (select (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9479_9480) ) (!  (not (select (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 T@Ref) ) (! (IsWandField_5585_2181 (wand_2 arg1@@0 arg2@@0))
 :qid |stdinbpl.248:15|
 :skolemid |36|
 :pattern ( (wand_2 arg1@@0 arg2@@0))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 T@Ref) ) (! (IsWandField_5592_5593 (|wand_2#ft| arg1@@1 arg2@@1))
 :qid |stdinbpl.252:15|
 :skolemid |37|
 :pattern ( (|wand_2#ft| arg1@@1 arg2@@1))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 T@Ref) ) (!  (not (IsPredicateField_5585_2181 (wand_2 arg1@@2 arg2@@2)))
 :qid |stdinbpl.256:15|
 :skolemid |38|
 :pattern ( (wand_2 arg1@@2 arg2@@2))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 T@Ref) ) (!  (not (IsPredicateField_5592_5593 (|wand_2#ft| arg1@@3 arg2@@3)))
 :qid |stdinbpl.260:15|
 :skolemid |39|
 :pattern ( (|wand_2#ft| arg1@@3 arg2@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@0 T@Ref) (arg4@@0 Real) (arg5@@0 T@Ref) (arg6@@0 Real) ) (! (= (|wand#sm| arg1@@4 arg2@@4 arg3@@0 arg4@@0 arg5@@0 arg6@@0) (WandMaskField_5437 (|wand#ft| arg1@@4 arg2@@4 arg3@@0 arg4@@0 arg5@@0 arg6@@0)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_5437 (|wand#ft| arg1@@4 arg2@@4 arg3@@0 arg4@@0 arg5@@0 arg6@@0)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9406) (ExhaleHeap T@PolymorphicMapType_9406) (Mask@@0 T@PolymorphicMapType_9427) (pm_f T@Field_14576_14577) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_14549_12827 Mask@@0 null pm_f) (IsPredicateField_5592_5593 pm_f)) (= (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@0) null (PredicateMaskField_14549 pm_f)) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap) null (PredicateMaskField_14549 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5592_5593 pm_f) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap) null (PredicateMaskField_14549 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9406) (ExhaleHeap@@0 T@PolymorphicMapType_9406) (Mask@@1 T@PolymorphicMapType_9427) (pm_f@@0 T@Field_13622_13623) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_13587_12827 Mask@@1 null pm_f@@0) (IsPredicateField_5517_5518 pm_f@@0)) (= (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@1) null (PredicateMaskField_13587 pm_f@@0)) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@0) null (PredicateMaskField_13587 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5517_5518 pm_f@@0) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@0) null (PredicateMaskField_13587 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9406) (ExhaleHeap@@1 T@PolymorphicMapType_9406) (Mask@@2 T@PolymorphicMapType_9427) (pm_f@@1 T@Field_12826_12827) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12795_12827 Mask@@2 null pm_f@@1) (IsPredicateField_5437_5438 pm_f@@1)) (= (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@2) null (PredicateMaskField_12795 pm_f@@1)) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@1) null (PredicateMaskField_12795 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5437_5438 pm_f@@1) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@1) null (PredicateMaskField_12795 pm_f@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9406) (ExhaleHeap@@2 T@PolymorphicMapType_9406) (Mask@@3 T@PolymorphicMapType_9427) (pm_f@@2 T@Field_5605_12827) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5605_12827 Mask@@3 null pm_f@@2) (IsPredicateField_5605_32723 pm_f@@2)) (= (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@3) null (PredicateMaskField_5605 pm_f@@2)) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@2) null (PredicateMaskField_5605 pm_f@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsPredicateField_5605_32723 pm_f@@2) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@2) null (PredicateMaskField_5605 pm_f@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9406) (ExhaleHeap@@3 T@PolymorphicMapType_9406) (Mask@@4 T@PolymorphicMapType_9427) (pm_f@@3 T@Field_14576_14577) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_14549_12827 Mask@@4 null pm_f@@3) (IsWandField_5592_5593 pm_f@@3)) (= (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@4) null (WandMaskField_5592 pm_f@@3)) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@3) null (WandMaskField_5592 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsWandField_5592_5593 pm_f@@3) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@3) null (WandMaskField_5592 pm_f@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9406) (ExhaleHeap@@4 T@PolymorphicMapType_9406) (Mask@@5 T@PolymorphicMapType_9427) (pm_f@@4 T@Field_13622_13623) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_13587_12827 Mask@@5 null pm_f@@4) (IsWandField_5517_5518 pm_f@@4)) (= (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@5) null (WandMaskField_5517 pm_f@@4)) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@4) null (WandMaskField_5517 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_5517_5518 pm_f@@4) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@4) null (WandMaskField_5517 pm_f@@4)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9406) (ExhaleHeap@@5 T@PolymorphicMapType_9406) (Mask@@6 T@PolymorphicMapType_9427) (pm_f@@5 T@Field_12826_12827) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_12795_12827 Mask@@6 null pm_f@@5) (IsWandField_5437_5438 pm_f@@5)) (= (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@6) null (WandMaskField_5437 pm_f@@5)) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@5) null (WandMaskField_5437 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (IsWandField_5437_5438 pm_f@@5) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@5) null (WandMaskField_5437 pm_f@@5)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9406) (ExhaleHeap@@6 T@PolymorphicMapType_9406) (Mask@@7 T@PolymorphicMapType_9427) (pm_f@@6 T@Field_5605_12827) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5605_12827 Mask@@7 null pm_f@@6) (IsWandField_5605_39419 pm_f@@6)) (= (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@7) null (WandMaskField_5605 pm_f@@6)) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@6) null (WandMaskField_5605 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (IsWandField_5605_39419 pm_f@@6) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@6) null (WandMaskField_5605 pm_f@@6)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9406) (ExhaleHeap@@7 T@PolymorphicMapType_9406) (Mask@@8 T@PolymorphicMapType_9427) (pm_f@@7 T@Field_14576_14577) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_14549_12827 Mask@@8 null pm_f@@7) (IsPredicateField_5592_5593 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_9479_9480) ) (!  (=> (select (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2 f_2) (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@8) o2 f_2) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@7) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@7) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_9466_53) ) (!  (=> (select (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@8) o2@@0 f_2@@0) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_5605_1211) ) (!  (=> (select (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@8) o2@@1 f_2@@1) (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5605_12814) ) (!  (=> (select (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@8) o2@@2 f_2@@2) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5605_12827) ) (!  (=> (select (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@8) o2@@3 f_2@@3) (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_12795_5606) ) (!  (=> (select (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@8) o2@@4 f_2@@4) (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_12795_2380) ) (!  (=> (select (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@8) o2@@5 f_2@@5) (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_12795_1211) ) (!  (=> (select (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@8) o2@@6 f_2@@6) (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_12809_12814) ) (!  (=> (select (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@8) o2@@7 f_2@@7) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_12826_12827) ) (!  (=> (select (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@8) o2@@8 f_2@@8) (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_13587_5606) ) (!  (=> (select (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@8) o2@@9 f_2@@9) (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_13587_2380) ) (!  (=> (select (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@8) o2@@10 f_2@@10) (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_13587_1655) ) (!  (=> (select (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@8) o2@@11 f_2@@11) (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_13603_13608) ) (!  (=> (select (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@8) o2@@12 f_2@@12) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_13622_13623) ) (!  (=> (select (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@8) o2@@13 f_2@@13) (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_14549_5606) ) (!  (=> (select (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@8) o2@@14 f_2@@14) (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_14549_2380) ) (!  (=> (select (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@8) o2@@15 f_2@@15) (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_14549_2181) ) (!  (=> (select (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@8) o2@@16 f_2@@16) (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_14561_14566) ) (!  (=> (select (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) o2@@17 f_2@@17) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_14576_14577) ) (!  (=> (select (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@8) null (PredicateMaskField_14549 pm_f@@7))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@8) o2@@18 f_2@@18) (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@7) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (IsPredicateField_5592_5593 pm_f@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9406) (ExhaleHeap@@8 T@PolymorphicMapType_9406) (Mask@@9 T@PolymorphicMapType_9427) (pm_f@@8 T@Field_13622_13623) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_13587_12827 Mask@@9 null pm_f@@8) (IsPredicateField_5517_5518 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_9479_9480) ) (!  (=> (select (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@9) o2@@19 f_2@@19) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@19 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_9466_53) ) (!  (=> (select (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@9) o2@@20 f_2@@20) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@20 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_5605_1211) ) (!  (=> (select (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@9) o2@@21 f_2@@21) (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@21 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_5605_12814) ) (!  (=> (select (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@9) o2@@22 f_2@@22) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@22 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_5605_12827) ) (!  (=> (select (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@9) o2@@23 f_2@@23) (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@23 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_12795_5606) ) (!  (=> (select (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@9) o2@@24 f_2@@24) (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@24 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_12795_2380) ) (!  (=> (select (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@9) o2@@25 f_2@@25) (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@25 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_12795_1211) ) (!  (=> (select (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@9) o2@@26 f_2@@26) (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@26 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_12809_12814) ) (!  (=> (select (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@9) o2@@27 f_2@@27) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@27 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_12826_12827) ) (!  (=> (select (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@9) o2@@28 f_2@@28) (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@28 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_13587_5606) ) (!  (=> (select (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@9) o2@@29 f_2@@29) (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@29 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_13587_2380) ) (!  (=> (select (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@9) o2@@30 f_2@@30) (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@30 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_13587_1655) ) (!  (=> (select (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@9) o2@@31 f_2@@31) (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@31 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_13603_13608) ) (!  (=> (select (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) o2@@32 f_2@@32) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@32 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_13622_13623) ) (!  (=> (select (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@9) o2@@33 f_2@@33) (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@33 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_14549_5606) ) (!  (=> (select (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@9) o2@@34 f_2@@34) (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@34 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_14549_2380) ) (!  (=> (select (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@9) o2@@35 f_2@@35) (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@35 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_14549_2181) ) (!  (=> (select (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@9) o2@@36 f_2@@36) (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@36 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_14561_14566) ) (!  (=> (select (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@9) o2@@37 f_2@@37) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@37 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_14576_14577) ) (!  (=> (select (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@9) null (PredicateMaskField_13587 pm_f@@8))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@9) o2@@38 f_2@@38) (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@38 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@8) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (IsPredicateField_5517_5518 pm_f@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9406) (ExhaleHeap@@9 T@PolymorphicMapType_9406) (Mask@@10 T@PolymorphicMapType_9427) (pm_f@@9 T@Field_12826_12827) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_12795_12827 Mask@@10 null pm_f@@9) (IsPredicateField_5437_5438 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@39 T@Ref) (f_2@@39 T@Field_9479_9480) ) (!  (=> (select (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@39 f_2@@39) (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@10) o2@@39 f_2@@39) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@39 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@39 f_2@@39))
)) (forall ((o2@@40 T@Ref) (f_2@@40 T@Field_9466_53) ) (!  (=> (select (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@40 f_2@@40) (= (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@10) o2@@40 f_2@@40) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@40 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@40 f_2@@40))
))) (forall ((o2@@41 T@Ref) (f_2@@41 T@Field_5605_1211) ) (!  (=> (select (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@41 f_2@@41) (= (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@10) o2@@41 f_2@@41) (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@41 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@41 f_2@@41))
))) (forall ((o2@@42 T@Ref) (f_2@@42 T@Field_5605_12814) ) (!  (=> (select (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@42 f_2@@42) (= (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@10) o2@@42 f_2@@42) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@42 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@42 f_2@@42))
))) (forall ((o2@@43 T@Ref) (f_2@@43 T@Field_5605_12827) ) (!  (=> (select (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@43 f_2@@43) (= (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@10) o2@@43 f_2@@43) (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@43 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@43 f_2@@43))
))) (forall ((o2@@44 T@Ref) (f_2@@44 T@Field_12795_5606) ) (!  (=> (select (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@44 f_2@@44) (= (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@10) o2@@44 f_2@@44) (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@44 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@44 f_2@@44))
))) (forall ((o2@@45 T@Ref) (f_2@@45 T@Field_12795_2380) ) (!  (=> (select (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@45 f_2@@45) (= (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@10) o2@@45 f_2@@45) (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@45 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@45 f_2@@45))
))) (forall ((o2@@46 T@Ref) (f_2@@46 T@Field_12795_1211) ) (!  (=> (select (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@46 f_2@@46) (= (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@10) o2@@46 f_2@@46) (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@46 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@46 f_2@@46))
))) (forall ((o2@@47 T@Ref) (f_2@@47 T@Field_12809_12814) ) (!  (=> (select (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@47 f_2@@47) (= (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) o2@@47 f_2@@47) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@47 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@47 f_2@@47))
))) (forall ((o2@@48 T@Ref) (f_2@@48 T@Field_12826_12827) ) (!  (=> (select (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@48 f_2@@48) (= (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@10) o2@@48 f_2@@48) (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@48 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@48 f_2@@48))
))) (forall ((o2@@49 T@Ref) (f_2@@49 T@Field_13587_5606) ) (!  (=> (select (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@49 f_2@@49) (= (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@10) o2@@49 f_2@@49) (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@49 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@49 f_2@@49))
))) (forall ((o2@@50 T@Ref) (f_2@@50 T@Field_13587_2380) ) (!  (=> (select (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@50 f_2@@50) (= (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@10) o2@@50 f_2@@50) (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@50 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@50 f_2@@50))
))) (forall ((o2@@51 T@Ref) (f_2@@51 T@Field_13587_1655) ) (!  (=> (select (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@51 f_2@@51) (= (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@10) o2@@51 f_2@@51) (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@51 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@51 f_2@@51))
))) (forall ((o2@@52 T@Ref) (f_2@@52 T@Field_13603_13608) ) (!  (=> (select (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@52 f_2@@52) (= (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@10) o2@@52 f_2@@52) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@52 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@52 f_2@@52))
))) (forall ((o2@@53 T@Ref) (f_2@@53 T@Field_13622_13623) ) (!  (=> (select (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@53 f_2@@53) (= (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@10) o2@@53 f_2@@53) (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@53 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@53 f_2@@53))
))) (forall ((o2@@54 T@Ref) (f_2@@54 T@Field_14549_5606) ) (!  (=> (select (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@54 f_2@@54) (= (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@10) o2@@54 f_2@@54) (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@54 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@54 f_2@@54))
))) (forall ((o2@@55 T@Ref) (f_2@@55 T@Field_14549_2380) ) (!  (=> (select (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@55 f_2@@55) (= (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@10) o2@@55 f_2@@55) (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@55 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@55 f_2@@55))
))) (forall ((o2@@56 T@Ref) (f_2@@56 T@Field_14549_2181) ) (!  (=> (select (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@56 f_2@@56) (= (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@10) o2@@56 f_2@@56) (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@56 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@56 f_2@@56))
))) (forall ((o2@@57 T@Ref) (f_2@@57 T@Field_14561_14566) ) (!  (=> (select (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@57 f_2@@57) (= (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@10) o2@@57 f_2@@57) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@57 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@57 f_2@@57))
))) (forall ((o2@@58 T@Ref) (f_2@@58 T@Field_14576_14577) ) (!  (=> (select (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@10) null (PredicateMaskField_12795 pm_f@@9))) o2@@58 f_2@@58) (= (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@10) o2@@58 f_2@@58) (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@58 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@9) o2@@58 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@10) (IsPredicateField_5437_5438 pm_f@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9406) (ExhaleHeap@@10 T@PolymorphicMapType_9406) (Mask@@11 T@PolymorphicMapType_9427) (pm_f@@10 T@Field_5605_12827) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_5605_12827 Mask@@11 null pm_f@@10) (IsPredicateField_5605_32723 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@59 T@Field_9479_9480) ) (!  (=> (select (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@59 f_2@@59) (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@11) o2@@59 f_2@@59) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@59 f_2@@59)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@59 f_2@@59))
)) (forall ((o2@@60 T@Ref) (f_2@@60 T@Field_9466_53) ) (!  (=> (select (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@60 f_2@@60) (= (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@11) o2@@60 f_2@@60) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@60 f_2@@60)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@60 f_2@@60))
))) (forall ((o2@@61 T@Ref) (f_2@@61 T@Field_5605_1211) ) (!  (=> (select (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@61 f_2@@61) (= (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@11) o2@@61 f_2@@61) (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@61 f_2@@61)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@61 f_2@@61))
))) (forall ((o2@@62 T@Ref) (f_2@@62 T@Field_5605_12814) ) (!  (=> (select (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@62 f_2@@62) (= (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) o2@@62 f_2@@62) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@62 f_2@@62)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@62 f_2@@62))
))) (forall ((o2@@63 T@Ref) (f_2@@63 T@Field_5605_12827) ) (!  (=> (select (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@63 f_2@@63) (= (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@11) o2@@63 f_2@@63) (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@63 f_2@@63)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@63 f_2@@63))
))) (forall ((o2@@64 T@Ref) (f_2@@64 T@Field_12795_5606) ) (!  (=> (select (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@64 f_2@@64) (= (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@11) o2@@64 f_2@@64) (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@64 f_2@@64)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@64 f_2@@64))
))) (forall ((o2@@65 T@Ref) (f_2@@65 T@Field_12795_2380) ) (!  (=> (select (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@65 f_2@@65) (= (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@11) o2@@65 f_2@@65) (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@65 f_2@@65)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@65 f_2@@65))
))) (forall ((o2@@66 T@Ref) (f_2@@66 T@Field_12795_1211) ) (!  (=> (select (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@66 f_2@@66) (= (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@11) o2@@66 f_2@@66) (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@66 f_2@@66)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@66 f_2@@66))
))) (forall ((o2@@67 T@Ref) (f_2@@67 T@Field_12809_12814) ) (!  (=> (select (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@67 f_2@@67) (= (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@11) o2@@67 f_2@@67) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@67 f_2@@67)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@67 f_2@@67))
))) (forall ((o2@@68 T@Ref) (f_2@@68 T@Field_12826_12827) ) (!  (=> (select (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@68 f_2@@68) (= (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@11) o2@@68 f_2@@68) (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@68 f_2@@68)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@68 f_2@@68))
))) (forall ((o2@@69 T@Ref) (f_2@@69 T@Field_13587_5606) ) (!  (=> (select (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@69 f_2@@69) (= (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@11) o2@@69 f_2@@69) (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@69 f_2@@69)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@69 f_2@@69))
))) (forall ((o2@@70 T@Ref) (f_2@@70 T@Field_13587_2380) ) (!  (=> (select (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@70 f_2@@70) (= (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@11) o2@@70 f_2@@70) (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@70 f_2@@70)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@70 f_2@@70))
))) (forall ((o2@@71 T@Ref) (f_2@@71 T@Field_13587_1655) ) (!  (=> (select (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@71 f_2@@71) (= (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@11) o2@@71 f_2@@71) (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@71 f_2@@71)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@71 f_2@@71))
))) (forall ((o2@@72 T@Ref) (f_2@@72 T@Field_13603_13608) ) (!  (=> (select (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@72 f_2@@72) (= (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@11) o2@@72 f_2@@72) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@72 f_2@@72)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@72 f_2@@72))
))) (forall ((o2@@73 T@Ref) (f_2@@73 T@Field_13622_13623) ) (!  (=> (select (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@73 f_2@@73) (= (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@11) o2@@73 f_2@@73) (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@73 f_2@@73)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@73 f_2@@73))
))) (forall ((o2@@74 T@Ref) (f_2@@74 T@Field_14549_5606) ) (!  (=> (select (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@74 f_2@@74) (= (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@11) o2@@74 f_2@@74) (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@74 f_2@@74)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@74 f_2@@74))
))) (forall ((o2@@75 T@Ref) (f_2@@75 T@Field_14549_2380) ) (!  (=> (select (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@75 f_2@@75) (= (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@11) o2@@75 f_2@@75) (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@75 f_2@@75)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@75 f_2@@75))
))) (forall ((o2@@76 T@Ref) (f_2@@76 T@Field_14549_2181) ) (!  (=> (select (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@76 f_2@@76) (= (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@11) o2@@76 f_2@@76) (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@76 f_2@@76)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@76 f_2@@76))
))) (forall ((o2@@77 T@Ref) (f_2@@77 T@Field_14561_14566) ) (!  (=> (select (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@77 f_2@@77) (= (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@11) o2@@77 f_2@@77) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@77 f_2@@77)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@77 f_2@@77))
))) (forall ((o2@@78 T@Ref) (f_2@@78 T@Field_14576_14577) ) (!  (=> (select (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@11) null (PredicateMaskField_5605 pm_f@@10))) o2@@78 f_2@@78) (= (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@11) o2@@78 f_2@@78) (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@78 f_2@@78)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@10) o2@@78 f_2@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@11) (IsPredicateField_5605_32723 pm_f@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9406) (ExhaleHeap@@11 T@PolymorphicMapType_9406) (Mask@@12 T@PolymorphicMapType_9427) (pm_f@@11 T@Field_14576_14577) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_14549_12827 Mask@@12 null pm_f@@11) (IsWandField_5592_5593 pm_f@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@79 T@Ref) (f_2@@79 T@Field_9479_9480) ) (!  (=> (select (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@79 f_2@@79) (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@12) o2@@79 f_2@@79) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@79 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@79 f_2@@79))
)) (forall ((o2@@80 T@Ref) (f_2@@80 T@Field_9466_53) ) (!  (=> (select (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@80 f_2@@80) (= (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@12) o2@@80 f_2@@80) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@80 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@80 f_2@@80))
))) (forall ((o2@@81 T@Ref) (f_2@@81 T@Field_5605_1211) ) (!  (=> (select (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@81 f_2@@81) (= (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@12) o2@@81 f_2@@81) (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@81 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@81 f_2@@81))
))) (forall ((o2@@82 T@Ref) (f_2@@82 T@Field_5605_12814) ) (!  (=> (select (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@82 f_2@@82) (= (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@12) o2@@82 f_2@@82) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@82 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@82 f_2@@82))
))) (forall ((o2@@83 T@Ref) (f_2@@83 T@Field_5605_12827) ) (!  (=> (select (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@83 f_2@@83) (= (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@12) o2@@83 f_2@@83) (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@83 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@83 f_2@@83))
))) (forall ((o2@@84 T@Ref) (f_2@@84 T@Field_12795_5606) ) (!  (=> (select (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@84 f_2@@84) (= (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@12) o2@@84 f_2@@84) (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@84 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@84 f_2@@84))
))) (forall ((o2@@85 T@Ref) (f_2@@85 T@Field_12795_2380) ) (!  (=> (select (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@85 f_2@@85) (= (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@12) o2@@85 f_2@@85) (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@85 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@85 f_2@@85))
))) (forall ((o2@@86 T@Ref) (f_2@@86 T@Field_12795_1211) ) (!  (=> (select (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@86 f_2@@86) (= (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@12) o2@@86 f_2@@86) (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@86 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@86 f_2@@86))
))) (forall ((o2@@87 T@Ref) (f_2@@87 T@Field_12809_12814) ) (!  (=> (select (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@87 f_2@@87) (= (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@12) o2@@87 f_2@@87) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@87 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@87 f_2@@87))
))) (forall ((o2@@88 T@Ref) (f_2@@88 T@Field_12826_12827) ) (!  (=> (select (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@88 f_2@@88) (= (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@12) o2@@88 f_2@@88) (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@88 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@88 f_2@@88))
))) (forall ((o2@@89 T@Ref) (f_2@@89 T@Field_13587_5606) ) (!  (=> (select (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@89 f_2@@89) (= (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@12) o2@@89 f_2@@89) (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@89 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@89 f_2@@89))
))) (forall ((o2@@90 T@Ref) (f_2@@90 T@Field_13587_2380) ) (!  (=> (select (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@90 f_2@@90) (= (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@12) o2@@90 f_2@@90) (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@90 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@90 f_2@@90))
))) (forall ((o2@@91 T@Ref) (f_2@@91 T@Field_13587_1655) ) (!  (=> (select (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@91 f_2@@91) (= (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@12) o2@@91 f_2@@91) (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@91 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@91 f_2@@91))
))) (forall ((o2@@92 T@Ref) (f_2@@92 T@Field_13603_13608) ) (!  (=> (select (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@92 f_2@@92) (= (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@12) o2@@92 f_2@@92) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@92 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@92 f_2@@92))
))) (forall ((o2@@93 T@Ref) (f_2@@93 T@Field_13622_13623) ) (!  (=> (select (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@93 f_2@@93) (= (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@12) o2@@93 f_2@@93) (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@93 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@93 f_2@@93))
))) (forall ((o2@@94 T@Ref) (f_2@@94 T@Field_14549_5606) ) (!  (=> (select (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@94 f_2@@94) (= (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@12) o2@@94 f_2@@94) (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@94 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@94 f_2@@94))
))) (forall ((o2@@95 T@Ref) (f_2@@95 T@Field_14549_2380) ) (!  (=> (select (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@95 f_2@@95) (= (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@12) o2@@95 f_2@@95) (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@95 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@95 f_2@@95))
))) (forall ((o2@@96 T@Ref) (f_2@@96 T@Field_14549_2181) ) (!  (=> (select (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@96 f_2@@96) (= (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@12) o2@@96 f_2@@96) (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@96 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@96 f_2@@96))
))) (forall ((o2@@97 T@Ref) (f_2@@97 T@Field_14561_14566) ) (!  (=> (select (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@97 f_2@@97) (= (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) o2@@97 f_2@@97) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@97 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@97 f_2@@97))
))) (forall ((o2@@98 T@Ref) (f_2@@98 T@Field_14576_14577) ) (!  (=> (select (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@12) null (WandMaskField_5592 pm_f@@11))) o2@@98 f_2@@98) (= (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@12) o2@@98 f_2@@98) (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@98 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@11) o2@@98 f_2@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@12) (IsWandField_5592_5593 pm_f@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9406) (ExhaleHeap@@12 T@PolymorphicMapType_9406) (Mask@@13 T@PolymorphicMapType_9427) (pm_f@@12 T@Field_13622_13623) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_13587_12827 Mask@@13 null pm_f@@12) (IsWandField_5517_5518 pm_f@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@99 T@Ref) (f_2@@99 T@Field_9479_9480) ) (!  (=> (select (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@99 f_2@@99) (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@13) o2@@99 f_2@@99) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@99 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@99 f_2@@99))
)) (forall ((o2@@100 T@Ref) (f_2@@100 T@Field_9466_53) ) (!  (=> (select (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@100 f_2@@100) (= (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@13) o2@@100 f_2@@100) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@100 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@100 f_2@@100))
))) (forall ((o2@@101 T@Ref) (f_2@@101 T@Field_5605_1211) ) (!  (=> (select (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@101 f_2@@101) (= (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@13) o2@@101 f_2@@101) (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@101 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@101 f_2@@101))
))) (forall ((o2@@102 T@Ref) (f_2@@102 T@Field_5605_12814) ) (!  (=> (select (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@102 f_2@@102) (= (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@13) o2@@102 f_2@@102) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@102 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@102 f_2@@102))
))) (forall ((o2@@103 T@Ref) (f_2@@103 T@Field_5605_12827) ) (!  (=> (select (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@103 f_2@@103) (= (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@13) o2@@103 f_2@@103) (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@103 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@103 f_2@@103))
))) (forall ((o2@@104 T@Ref) (f_2@@104 T@Field_12795_5606) ) (!  (=> (select (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@104 f_2@@104) (= (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@13) o2@@104 f_2@@104) (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@104 f_2@@104)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@104 f_2@@104))
))) (forall ((o2@@105 T@Ref) (f_2@@105 T@Field_12795_2380) ) (!  (=> (select (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@105 f_2@@105) (= (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@13) o2@@105 f_2@@105) (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@105 f_2@@105)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@105 f_2@@105))
))) (forall ((o2@@106 T@Ref) (f_2@@106 T@Field_12795_1211) ) (!  (=> (select (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@106 f_2@@106) (= (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@13) o2@@106 f_2@@106) (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@106 f_2@@106)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@106 f_2@@106))
))) (forall ((o2@@107 T@Ref) (f_2@@107 T@Field_12809_12814) ) (!  (=> (select (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@107 f_2@@107) (= (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@13) o2@@107 f_2@@107) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@107 f_2@@107)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@107 f_2@@107))
))) (forall ((o2@@108 T@Ref) (f_2@@108 T@Field_12826_12827) ) (!  (=> (select (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@108 f_2@@108) (= (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@13) o2@@108 f_2@@108) (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@108 f_2@@108)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@108 f_2@@108))
))) (forall ((o2@@109 T@Ref) (f_2@@109 T@Field_13587_5606) ) (!  (=> (select (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@109 f_2@@109) (= (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@13) o2@@109 f_2@@109) (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@109 f_2@@109)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@109 f_2@@109))
))) (forall ((o2@@110 T@Ref) (f_2@@110 T@Field_13587_2380) ) (!  (=> (select (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@110 f_2@@110) (= (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@13) o2@@110 f_2@@110) (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@110 f_2@@110)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@110 f_2@@110))
))) (forall ((o2@@111 T@Ref) (f_2@@111 T@Field_13587_1655) ) (!  (=> (select (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@111 f_2@@111) (= (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@13) o2@@111 f_2@@111) (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@111 f_2@@111)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@111 f_2@@111))
))) (forall ((o2@@112 T@Ref) (f_2@@112 T@Field_13603_13608) ) (!  (=> (select (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@112 f_2@@112) (= (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) o2@@112 f_2@@112) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@112 f_2@@112)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@112 f_2@@112))
))) (forall ((o2@@113 T@Ref) (f_2@@113 T@Field_13622_13623) ) (!  (=> (select (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@113 f_2@@113) (= (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@13) o2@@113 f_2@@113) (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@113 f_2@@113)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@113 f_2@@113))
))) (forall ((o2@@114 T@Ref) (f_2@@114 T@Field_14549_5606) ) (!  (=> (select (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@114 f_2@@114) (= (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@13) o2@@114 f_2@@114) (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@114 f_2@@114)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@114 f_2@@114))
))) (forall ((o2@@115 T@Ref) (f_2@@115 T@Field_14549_2380) ) (!  (=> (select (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@115 f_2@@115) (= (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@13) o2@@115 f_2@@115) (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@115 f_2@@115)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@115 f_2@@115))
))) (forall ((o2@@116 T@Ref) (f_2@@116 T@Field_14549_2181) ) (!  (=> (select (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@116 f_2@@116) (= (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@13) o2@@116 f_2@@116) (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@116 f_2@@116)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@116 f_2@@116))
))) (forall ((o2@@117 T@Ref) (f_2@@117 T@Field_14561_14566) ) (!  (=> (select (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@117 f_2@@117) (= (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@13) o2@@117 f_2@@117) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@117 f_2@@117)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@117 f_2@@117))
))) (forall ((o2@@118 T@Ref) (f_2@@118 T@Field_14576_14577) ) (!  (=> (select (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@13) null (WandMaskField_5517 pm_f@@12))) o2@@118 f_2@@118) (= (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@13) o2@@118 f_2@@118) (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@118 f_2@@118)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@12) o2@@118 f_2@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@13) (IsWandField_5517_5518 pm_f@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9406) (ExhaleHeap@@13 T@PolymorphicMapType_9406) (Mask@@14 T@PolymorphicMapType_9427) (pm_f@@13 T@Field_12826_12827) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_12795_12827 Mask@@14 null pm_f@@13) (IsWandField_5437_5438 pm_f@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@119 T@Ref) (f_2@@119 T@Field_9479_9480) ) (!  (=> (select (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@119 f_2@@119) (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@14) o2@@119 f_2@@119) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@119 f_2@@119)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@119 f_2@@119))
)) (forall ((o2@@120 T@Ref) (f_2@@120 T@Field_9466_53) ) (!  (=> (select (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@120 f_2@@120) (= (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@14) o2@@120 f_2@@120) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@120 f_2@@120)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@120 f_2@@120))
))) (forall ((o2@@121 T@Ref) (f_2@@121 T@Field_5605_1211) ) (!  (=> (select (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@121 f_2@@121) (= (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@14) o2@@121 f_2@@121) (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@121 f_2@@121)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@121 f_2@@121))
))) (forall ((o2@@122 T@Ref) (f_2@@122 T@Field_5605_12814) ) (!  (=> (select (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@122 f_2@@122) (= (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@14) o2@@122 f_2@@122) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@122 f_2@@122)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@122 f_2@@122))
))) (forall ((o2@@123 T@Ref) (f_2@@123 T@Field_5605_12827) ) (!  (=> (select (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@123 f_2@@123) (= (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@14) o2@@123 f_2@@123) (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@123 f_2@@123)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@123 f_2@@123))
))) (forall ((o2@@124 T@Ref) (f_2@@124 T@Field_12795_5606) ) (!  (=> (select (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@124 f_2@@124) (= (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@14) o2@@124 f_2@@124) (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@124 f_2@@124)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@124 f_2@@124))
))) (forall ((o2@@125 T@Ref) (f_2@@125 T@Field_12795_2380) ) (!  (=> (select (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@125 f_2@@125) (= (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@14) o2@@125 f_2@@125) (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@125 f_2@@125)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@125 f_2@@125))
))) (forall ((o2@@126 T@Ref) (f_2@@126 T@Field_12795_1211) ) (!  (=> (select (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@126 f_2@@126) (= (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@14) o2@@126 f_2@@126) (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@126 f_2@@126)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@126 f_2@@126))
))) (forall ((o2@@127 T@Ref) (f_2@@127 T@Field_12809_12814) ) (!  (=> (select (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@127 f_2@@127) (= (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) o2@@127 f_2@@127) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@127 f_2@@127)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@127 f_2@@127))
))) (forall ((o2@@128 T@Ref) (f_2@@128 T@Field_12826_12827) ) (!  (=> (select (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@128 f_2@@128) (= (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@14) o2@@128 f_2@@128) (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@128 f_2@@128)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@128 f_2@@128))
))) (forall ((o2@@129 T@Ref) (f_2@@129 T@Field_13587_5606) ) (!  (=> (select (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@129 f_2@@129) (= (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@14) o2@@129 f_2@@129) (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@129 f_2@@129)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@129 f_2@@129))
))) (forall ((o2@@130 T@Ref) (f_2@@130 T@Field_13587_2380) ) (!  (=> (select (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@130 f_2@@130) (= (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@14) o2@@130 f_2@@130) (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@130 f_2@@130)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@130 f_2@@130))
))) (forall ((o2@@131 T@Ref) (f_2@@131 T@Field_13587_1655) ) (!  (=> (select (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@131 f_2@@131) (= (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@14) o2@@131 f_2@@131) (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@131 f_2@@131)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@131 f_2@@131))
))) (forall ((o2@@132 T@Ref) (f_2@@132 T@Field_13603_13608) ) (!  (=> (select (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@132 f_2@@132) (= (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@14) o2@@132 f_2@@132) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@132 f_2@@132)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@132 f_2@@132))
))) (forall ((o2@@133 T@Ref) (f_2@@133 T@Field_13622_13623) ) (!  (=> (select (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@133 f_2@@133) (= (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@14) o2@@133 f_2@@133) (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@133 f_2@@133)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@133 f_2@@133))
))) (forall ((o2@@134 T@Ref) (f_2@@134 T@Field_14549_5606) ) (!  (=> (select (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@134 f_2@@134) (= (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@14) o2@@134 f_2@@134) (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@134 f_2@@134)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@134 f_2@@134))
))) (forall ((o2@@135 T@Ref) (f_2@@135 T@Field_14549_2380) ) (!  (=> (select (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@135 f_2@@135) (= (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@14) o2@@135 f_2@@135) (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@135 f_2@@135)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@135 f_2@@135))
))) (forall ((o2@@136 T@Ref) (f_2@@136 T@Field_14549_2181) ) (!  (=> (select (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@136 f_2@@136) (= (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@14) o2@@136 f_2@@136) (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@136 f_2@@136)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@136 f_2@@136))
))) (forall ((o2@@137 T@Ref) (f_2@@137 T@Field_14561_14566) ) (!  (=> (select (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@137 f_2@@137) (= (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@14) o2@@137 f_2@@137) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@137 f_2@@137)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@137 f_2@@137))
))) (forall ((o2@@138 T@Ref) (f_2@@138 T@Field_14576_14577) ) (!  (=> (select (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@14) null (WandMaskField_5437 pm_f@@13))) o2@@138 f_2@@138) (= (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@14) o2@@138 f_2@@138) (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@138 f_2@@138)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@13) o2@@138 f_2@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@14) (IsWandField_5437_5438 pm_f@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9406) (ExhaleHeap@@14 T@PolymorphicMapType_9406) (Mask@@15 T@PolymorphicMapType_9427) (pm_f@@14 T@Field_5605_12827) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_5605_12827 Mask@@15 null pm_f@@14) (IsWandField_5605_39419 pm_f@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@139 T@Ref) (f_2@@139 T@Field_9479_9480) ) (!  (=> (select (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@139 f_2@@139) (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@15) o2@@139 f_2@@139) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@139 f_2@@139)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@139 f_2@@139))
)) (forall ((o2@@140 T@Ref) (f_2@@140 T@Field_9466_53) ) (!  (=> (select (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@140 f_2@@140) (= (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@15) o2@@140 f_2@@140) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@140 f_2@@140)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@140 f_2@@140))
))) (forall ((o2@@141 T@Ref) (f_2@@141 T@Field_5605_1211) ) (!  (=> (select (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@141 f_2@@141) (= (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@15) o2@@141 f_2@@141) (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@141 f_2@@141)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@141 f_2@@141))
))) (forall ((o2@@142 T@Ref) (f_2@@142 T@Field_5605_12814) ) (!  (=> (select (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@142 f_2@@142) (= (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) o2@@142 f_2@@142) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@142 f_2@@142)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@142 f_2@@142))
))) (forall ((o2@@143 T@Ref) (f_2@@143 T@Field_5605_12827) ) (!  (=> (select (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@143 f_2@@143) (= (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@15) o2@@143 f_2@@143) (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@143 f_2@@143)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@143 f_2@@143))
))) (forall ((o2@@144 T@Ref) (f_2@@144 T@Field_12795_5606) ) (!  (=> (select (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@144 f_2@@144) (= (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@15) o2@@144 f_2@@144) (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@144 f_2@@144)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@144 f_2@@144))
))) (forall ((o2@@145 T@Ref) (f_2@@145 T@Field_12795_2380) ) (!  (=> (select (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@145 f_2@@145) (= (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@15) o2@@145 f_2@@145) (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@145 f_2@@145)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@145 f_2@@145))
))) (forall ((o2@@146 T@Ref) (f_2@@146 T@Field_12795_1211) ) (!  (=> (select (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@146 f_2@@146) (= (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@15) o2@@146 f_2@@146) (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@146 f_2@@146)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@146 f_2@@146))
))) (forall ((o2@@147 T@Ref) (f_2@@147 T@Field_12809_12814) ) (!  (=> (select (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@147 f_2@@147) (= (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@15) o2@@147 f_2@@147) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@147 f_2@@147)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@147 f_2@@147))
))) (forall ((o2@@148 T@Ref) (f_2@@148 T@Field_12826_12827) ) (!  (=> (select (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@148 f_2@@148) (= (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@15) o2@@148 f_2@@148) (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@148 f_2@@148)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@148 f_2@@148))
))) (forall ((o2@@149 T@Ref) (f_2@@149 T@Field_13587_5606) ) (!  (=> (select (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@149 f_2@@149) (= (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@15) o2@@149 f_2@@149) (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@149 f_2@@149)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@149 f_2@@149))
))) (forall ((o2@@150 T@Ref) (f_2@@150 T@Field_13587_2380) ) (!  (=> (select (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@150 f_2@@150) (= (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@15) o2@@150 f_2@@150) (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@150 f_2@@150)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@150 f_2@@150))
))) (forall ((o2@@151 T@Ref) (f_2@@151 T@Field_13587_1655) ) (!  (=> (select (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@151 f_2@@151) (= (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@15) o2@@151 f_2@@151) (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@151 f_2@@151)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@151 f_2@@151))
))) (forall ((o2@@152 T@Ref) (f_2@@152 T@Field_13603_13608) ) (!  (=> (select (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@152 f_2@@152) (= (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@15) o2@@152 f_2@@152) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@152 f_2@@152)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@152 f_2@@152))
))) (forall ((o2@@153 T@Ref) (f_2@@153 T@Field_13622_13623) ) (!  (=> (select (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@153 f_2@@153) (= (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@15) o2@@153 f_2@@153) (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@153 f_2@@153)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@153 f_2@@153))
))) (forall ((o2@@154 T@Ref) (f_2@@154 T@Field_14549_5606) ) (!  (=> (select (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@154 f_2@@154) (= (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@15) o2@@154 f_2@@154) (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@154 f_2@@154)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@154 f_2@@154))
))) (forall ((o2@@155 T@Ref) (f_2@@155 T@Field_14549_2380) ) (!  (=> (select (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@155 f_2@@155) (= (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@15) o2@@155 f_2@@155) (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@155 f_2@@155)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@155 f_2@@155))
))) (forall ((o2@@156 T@Ref) (f_2@@156 T@Field_14549_2181) ) (!  (=> (select (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@156 f_2@@156) (= (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@15) o2@@156 f_2@@156) (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@156 f_2@@156)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@156 f_2@@156))
))) (forall ((o2@@157 T@Ref) (f_2@@157 T@Field_14561_14566) ) (!  (=> (select (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@157 f_2@@157) (= (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@15) o2@@157 f_2@@157) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@157 f_2@@157)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@157 f_2@@157))
))) (forall ((o2@@158 T@Ref) (f_2@@158 T@Field_14576_14577) ) (!  (=> (select (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@15) null (WandMaskField_5605 pm_f@@14))) o2@@158 f_2@@158) (= (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@15) o2@@158 f_2@@158) (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@158 f_2@@158)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@14) o2@@158 f_2@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@15) (IsWandField_5605_39419 pm_f@@14))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@1 T@Ref) (arg4@@1 T@Ref) (arg5@@1 T@Ref) (arg6@@1 Real) (arg7@@0 T@Ref) (arg8@@0 Real) ) (! (IsWandField_5496_1655 (wand_1 arg1@@5 arg2@@5 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@0 arg8@@0))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@5 arg2@@5 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@0 arg8@@0))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@2 T@Ref) (arg4@@2 T@Ref) (arg5@@2 T@Ref) (arg6@@2 Real) (arg7@@1 T@Ref) (arg8@@1 Real) ) (! (IsWandField_5517_5518 (|wand_1#ft| arg1@@6 arg2@@6 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@1 arg8@@1))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@6 arg2@@6 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@1 arg8@@1))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@3 T@Ref) (arg4@@3 T@Ref) (arg5@@3 T@Ref) (arg6@@3 Real) (arg7@@2 T@Ref) (arg8@@2 Real) ) (!  (not (IsPredicateField_5496_1655 (wand_1 arg1@@7 arg2@@7 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@2 arg8@@2)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@7 arg2@@7 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@2 arg8@@2))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@4 T@Ref) (arg4@@4 T@Ref) (arg5@@4 T@Ref) (arg6@@4 Real) (arg7@@3 T@Ref) (arg8@@3 Real) ) (!  (not (IsPredicateField_5517_5518 (|wand_1#ft| arg1@@8 arg2@@8 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@3 arg8@@3)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@8 arg2@@8 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@3 arg8@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9406) (ExhaleHeap@@15 T@PolymorphicMapType_9406) (Mask@@16 T@PolymorphicMapType_9427) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@16) o_1 $allocated) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@15) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@15) o_1 $allocated))
)))
(assert (forall ((p T@Field_14576_14577) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14549_14549 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14549_14549 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_13622_13623) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_13587_13587 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13587_13587 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_12826_12827) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_12795_12795 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12795_12795 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_5605_12827) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_9466_9466 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9466_9466 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_5603_2380 v_36)))
(assert  (not (IsWandField_5603_2380 v_36)))
(assert  (not (IsPredicateField_5605_5606 l_8)))
(assert  (not (IsWandField_5605_5606 l_8)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9406) (ExhaleHeap@@16 T@PolymorphicMapType_9406) (Mask@@17 T@PolymorphicMapType_9427) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@17 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9427) (o_2@@19 T@Ref) (f_4@@19 T@Field_14576_14577) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5592_5593 f_4@@19))) (not (IsWandField_5592_5593 f_4@@19))) (<= (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9427) (o_2@@20 T@Ref) (f_4@@20 T@Field_14561_14566) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5585_53882 f_4@@20))) (not (IsWandField_5585_53898 f_4@@20))) (<= (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9427) (o_2@@21 T@Ref) (f_4@@21 T@Field_14549_2181) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5585_2181 f_4@@21))) (not (IsWandField_5585_2181 f_4@@21))) (<= (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9427) (o_2@@22 T@Ref) (f_4@@22 T@Field_14549_2380) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5585_2380 f_4@@22))) (not (IsWandField_5585_2380 f_4@@22))) (<= (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9427) (o_2@@23 T@Ref) (f_4@@23 T@Field_14549_5606) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5585_5606 f_4@@23))) (not (IsWandField_5585_5606 f_4@@23))) (<= (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9427) (o_2@@24 T@Ref) (f_4@@24 T@Field_13622_13623) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5517_5518 f_4@@24))) (not (IsWandField_5517_5518 f_4@@24))) (<= (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9427) (o_2@@25 T@Ref) (f_4@@25 T@Field_13603_13608) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5496_53065 f_4@@25))) (not (IsWandField_5496_53081 f_4@@25))) (<= (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9427) (o_2@@26 T@Ref) (f_4@@26 T@Field_13587_1655) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5496_1655 f_4@@26))) (not (IsWandField_5496_1655 f_4@@26))) (<= (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9427) (o_2@@27 T@Ref) (f_4@@27 T@Field_13587_2380) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_5496_2380 f_4@@27))) (not (IsWandField_5496_2380 f_4@@27))) (<= (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9427) (o_2@@28 T@Ref) (f_4@@28 T@Field_13587_5606) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_5496_5606 f_4@@28))) (not (IsWandField_5496_5606 f_4@@28))) (<= (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9427) (o_2@@29 T@Ref) (f_4@@29 T@Field_12826_12827) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_5437_5438 f_4@@29))) (not (IsWandField_5437_5438 f_4@@29))) (<= (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9427) (o_2@@30 T@Ref) (f_4@@30 T@Field_12809_12814) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_5420_52248 f_4@@30))) (not (IsWandField_5420_52264 f_4@@30))) (<= (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9427) (o_2@@31 T@Ref) (f_4@@31 T@Field_12795_1211) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_5420_1211 f_4@@31))) (not (IsWandField_5420_1211 f_4@@31))) (<= (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9427) (o_2@@32 T@Ref) (f_4@@32 T@Field_12795_2380) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_5420_2380 f_4@@32))) (not (IsWandField_5420_2380 f_4@@32))) (<= (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9427) (o_2@@33 T@Ref) (f_4@@33 T@Field_12795_5606) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_5420_5606 f_4@@33))) (not (IsWandField_5420_5606 f_4@@33))) (<= (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9427) (o_2@@34 T@Ref) (f_4@@34 T@Field_5605_12827) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_5605_32723 f_4@@34))) (not (IsWandField_5605_39419 f_4@@34))) (<= (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9427) (o_2@@35 T@Ref) (f_4@@35 T@Field_5605_12814) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_5605_51431 f_4@@35))) (not (IsWandField_5605_51447 f_4@@35))) (<= (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_9427) (o_2@@36 T@Ref) (f_4@@36 T@Field_5605_1211) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_5605_1211 f_4@@36))) (not (IsWandField_5605_1211 f_4@@36))) (<= (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_9427) (o_2@@37 T@Ref) (f_4@@37 T@Field_9466_53) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_5603_2380 f_4@@37))) (not (IsWandField_5603_2380 f_4@@37))) (<= (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_9427) (o_2@@38 T@Ref) (f_4@@38 T@Field_9479_9480) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_5605_5606 f_4@@38))) (not (IsWandField_5605_5606 f_4@@38))) (<= (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_9427) (o_2@@39 T@Ref) (f_4@@39 T@Field_14576_14577) ) (! (= (HasDirectPerm_14549_12827 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14549_12827 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_9427) (o_2@@40 T@Ref) (f_4@@40 T@Field_14561_14566) ) (! (= (HasDirectPerm_14549_32207 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14549_32207 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_9427) (o_2@@41 T@Ref) (f_4@@41 T@Field_14549_2181) ) (! (= (HasDirectPerm_14549_1211 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14549_1211 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_9427) (o_2@@42 T@Ref) (f_4@@42 T@Field_14549_2380) ) (! (= (HasDirectPerm_14549_2380 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14549_2380 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_9427) (o_2@@43 T@Ref) (f_4@@43 T@Field_14549_5606) ) (! (= (HasDirectPerm_14549_5606 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14549_5606 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_9427) (o_2@@44 T@Ref) (f_4@@44 T@Field_13622_13623) ) (! (= (HasDirectPerm_13587_12827 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13587_12827 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_9427) (o_2@@45 T@Ref) (f_4@@45 T@Field_13603_13608) ) (! (= (HasDirectPerm_13587_31073 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13587_31073 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_9427) (o_2@@46 T@Ref) (f_4@@46 T@Field_13587_1655) ) (! (= (HasDirectPerm_13587_1211 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13587_1211 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_9427) (o_2@@47 T@Ref) (f_4@@47 T@Field_13587_2380) ) (! (= (HasDirectPerm_13587_2380 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13587_2380 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_9427) (o_2@@48 T@Ref) (f_4@@48 T@Field_13587_5606) ) (! (= (HasDirectPerm_13587_5606 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13587_5606 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_9427) (o_2@@49 T@Ref) (f_4@@49 T@Field_12826_12827) ) (! (= (HasDirectPerm_12795_12827 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12795_12827 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_9427) (o_2@@50 T@Ref) (f_4@@50 T@Field_12809_12814) ) (! (= (HasDirectPerm_12795_29939 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12795_29939 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_9427) (o_2@@51 T@Ref) (f_4@@51 T@Field_12795_1211) ) (! (= (HasDirectPerm_12795_1211 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12795_1211 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_9427) (o_2@@52 T@Ref) (f_4@@52 T@Field_12795_2380) ) (! (= (HasDirectPerm_12795_2380 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12795_2380 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_9427) (o_2@@53 T@Ref) (f_4@@53 T@Field_12795_5606) ) (! (= (HasDirectPerm_12795_5606 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12795_5606 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_9427) (o_2@@54 T@Ref) (f_4@@54 T@Field_5605_12827) ) (! (= (HasDirectPerm_5605_12827 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5605_12827 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_9427) (o_2@@55 T@Ref) (f_4@@55 T@Field_5605_12814) ) (! (= (HasDirectPerm_5605_28761 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5605_28761 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_9427) (o_2@@56 T@Ref) (f_4@@56 T@Field_5605_1211) ) (! (= (HasDirectPerm_5605_1211 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5605_1211 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_9427) (o_2@@57 T@Ref) (f_4@@57 T@Field_9466_53) ) (! (= (HasDirectPerm_5603_2380 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5603_2380 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_9427) (o_2@@58 T@Ref) (f_4@@58 T@Field_9479_9480) ) (! (= (HasDirectPerm_5605_5606 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5605_5606 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@5 T@Ref) (arg4@@5 Real) (arg5@@5 T@Ref) (arg6@@5 Real) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Real) (arg5_2 T@Ref) (arg6_2 Real) ) (!  (=> (= (wand arg1@@9 arg2@@9 arg3@@5 arg4@@5 arg5@@5 arg6@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2)) (and (= arg1@@9 arg1_2) (and (= arg2@@9 arg2_2) (and (= arg3@@5 arg3_2) (and (= arg4@@5 arg4_2) (and (= arg5@@5 arg5_2) (= arg6@@5 arg6_2)))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@9 arg2@@9 arg3@@5 arg4@@5 arg5@@5 arg6@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9406) (ExhaleHeap@@17 T@PolymorphicMapType_9406) (Mask@@58 T@PolymorphicMapType_9427) (o_1@@0 T@Ref) (f_2@@159 T@Field_14576_14577) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_14549_12827 Mask@@58 o_1@@0 f_2@@159) (= (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@18) o_1@@0 f_2@@159) (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@17) o_1@@0 f_2@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| ExhaleHeap@@17) o_1@@0 f_2@@159))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9406) (ExhaleHeap@@18 T@PolymorphicMapType_9406) (Mask@@59 T@PolymorphicMapType_9427) (o_1@@1 T@Ref) (f_2@@160 T@Field_14561_14566) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_14549_32207 Mask@@59 o_1@@1 f_2@@160) (= (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@19) o_1@@1 f_2@@160) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@18) o_1@@1 f_2@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| ExhaleHeap@@18) o_1@@1 f_2@@160))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9406) (ExhaleHeap@@19 T@PolymorphicMapType_9406) (Mask@@60 T@PolymorphicMapType_9427) (o_1@@2 T@Ref) (f_2@@161 T@Field_14549_2181) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_14549_1211 Mask@@60 o_1@@2 f_2@@161) (= (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@20) o_1@@2 f_2@@161) (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@19) o_1@@2 f_2@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| ExhaleHeap@@19) o_1@@2 f_2@@161))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9406) (ExhaleHeap@@20 T@PolymorphicMapType_9406) (Mask@@61 T@PolymorphicMapType_9427) (o_1@@3 T@Ref) (f_2@@162 T@Field_14549_2380) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_14549_2380 Mask@@61 o_1@@3 f_2@@162) (= (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@21) o_1@@3 f_2@@162) (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@20) o_1@@3 f_2@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| ExhaleHeap@@20) o_1@@3 f_2@@162))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9406) (ExhaleHeap@@21 T@PolymorphicMapType_9406) (Mask@@62 T@PolymorphicMapType_9427) (o_1@@4 T@Ref) (f_2@@163 T@Field_14549_5606) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_14549_5606 Mask@@62 o_1@@4 f_2@@163) (= (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@22) o_1@@4 f_2@@163) (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@21) o_1@@4 f_2@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| ExhaleHeap@@21) o_1@@4 f_2@@163))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9406) (ExhaleHeap@@22 T@PolymorphicMapType_9406) (Mask@@63 T@PolymorphicMapType_9427) (o_1@@5 T@Ref) (f_2@@164 T@Field_13622_13623) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_13587_12827 Mask@@63 o_1@@5 f_2@@164) (= (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@23) o_1@@5 f_2@@164) (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@22) o_1@@5 f_2@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| ExhaleHeap@@22) o_1@@5 f_2@@164))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9406) (ExhaleHeap@@23 T@PolymorphicMapType_9406) (Mask@@64 T@PolymorphicMapType_9427) (o_1@@6 T@Ref) (f_2@@165 T@Field_13603_13608) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_13587_31073 Mask@@64 o_1@@6 f_2@@165) (= (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@24) o_1@@6 f_2@@165) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@23) o_1@@6 f_2@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| ExhaleHeap@@23) o_1@@6 f_2@@165))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9406) (ExhaleHeap@@24 T@PolymorphicMapType_9406) (Mask@@65 T@PolymorphicMapType_9427) (o_1@@7 T@Ref) (f_2@@166 T@Field_13587_1655) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_13587_1211 Mask@@65 o_1@@7 f_2@@166) (= (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@25) o_1@@7 f_2@@166) (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@24) o_1@@7 f_2@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| ExhaleHeap@@24) o_1@@7 f_2@@166))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9406) (ExhaleHeap@@25 T@PolymorphicMapType_9406) (Mask@@66 T@PolymorphicMapType_9427) (o_1@@8 T@Ref) (f_2@@167 T@Field_13587_2380) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_13587_2380 Mask@@66 o_1@@8 f_2@@167) (= (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@26) o_1@@8 f_2@@167) (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@25) o_1@@8 f_2@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| ExhaleHeap@@25) o_1@@8 f_2@@167))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9406) (ExhaleHeap@@26 T@PolymorphicMapType_9406) (Mask@@67 T@PolymorphicMapType_9427) (o_1@@9 T@Ref) (f_2@@168 T@Field_13587_5606) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_13587_5606 Mask@@67 o_1@@9 f_2@@168) (= (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@27) o_1@@9 f_2@@168) (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@26) o_1@@9 f_2@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| ExhaleHeap@@26) o_1@@9 f_2@@168))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9406) (ExhaleHeap@@27 T@PolymorphicMapType_9406) (Mask@@68 T@PolymorphicMapType_9427) (o_1@@10 T@Ref) (f_2@@169 T@Field_12826_12827) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_12795_12827 Mask@@68 o_1@@10 f_2@@169) (= (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@28) o_1@@10 f_2@@169) (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@27) o_1@@10 f_2@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| ExhaleHeap@@27) o_1@@10 f_2@@169))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9406) (ExhaleHeap@@28 T@PolymorphicMapType_9406) (Mask@@69 T@PolymorphicMapType_9427) (o_1@@11 T@Ref) (f_2@@170 T@Field_12809_12814) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_12795_29939 Mask@@69 o_1@@11 f_2@@170) (= (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@29) o_1@@11 f_2@@170) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@28) o_1@@11 f_2@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| ExhaleHeap@@28) o_1@@11 f_2@@170))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9406) (ExhaleHeap@@29 T@PolymorphicMapType_9406) (Mask@@70 T@PolymorphicMapType_9427) (o_1@@12 T@Ref) (f_2@@171 T@Field_12795_1211) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_12795_1211 Mask@@70 o_1@@12 f_2@@171) (= (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@30) o_1@@12 f_2@@171) (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@29) o_1@@12 f_2@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| ExhaleHeap@@29) o_1@@12 f_2@@171))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9406) (ExhaleHeap@@30 T@PolymorphicMapType_9406) (Mask@@71 T@PolymorphicMapType_9427) (o_1@@13 T@Ref) (f_2@@172 T@Field_12795_2380) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_12795_2380 Mask@@71 o_1@@13 f_2@@172) (= (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@31) o_1@@13 f_2@@172) (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@30) o_1@@13 f_2@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| ExhaleHeap@@30) o_1@@13 f_2@@172))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9406) (ExhaleHeap@@31 T@PolymorphicMapType_9406) (Mask@@72 T@PolymorphicMapType_9427) (o_1@@14 T@Ref) (f_2@@173 T@Field_12795_5606) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_12795_5606 Mask@@72 o_1@@14 f_2@@173) (= (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@32) o_1@@14 f_2@@173) (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@31) o_1@@14 f_2@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| ExhaleHeap@@31) o_1@@14 f_2@@173))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9406) (ExhaleHeap@@32 T@PolymorphicMapType_9406) (Mask@@73 T@PolymorphicMapType_9427) (o_1@@15 T@Ref) (f_2@@174 T@Field_5605_12827) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_5605_12827 Mask@@73 o_1@@15 f_2@@174) (= (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@33) o_1@@15 f_2@@174) (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@32) o_1@@15 f_2@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| ExhaleHeap@@32) o_1@@15 f_2@@174))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9406) (ExhaleHeap@@33 T@PolymorphicMapType_9406) (Mask@@74 T@PolymorphicMapType_9427) (o_1@@16 T@Ref) (f_2@@175 T@Field_5605_12814) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_5605_28761 Mask@@74 o_1@@16 f_2@@175) (= (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@34) o_1@@16 f_2@@175) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@33) o_1@@16 f_2@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| ExhaleHeap@@33) o_1@@16 f_2@@175))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9406) (ExhaleHeap@@34 T@PolymorphicMapType_9406) (Mask@@75 T@PolymorphicMapType_9427) (o_1@@17 T@Ref) (f_2@@176 T@Field_5605_1211) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_5605_1211 Mask@@75 o_1@@17 f_2@@176) (= (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@35) o_1@@17 f_2@@176) (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@34) o_1@@17 f_2@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| ExhaleHeap@@34) o_1@@17 f_2@@176))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9406) (ExhaleHeap@@35 T@PolymorphicMapType_9406) (Mask@@76 T@PolymorphicMapType_9427) (o_1@@18 T@Ref) (f_2@@177 T@Field_9466_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_5603_2380 Mask@@76 o_1@@18 f_2@@177) (= (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@36) o_1@@18 f_2@@177) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@35) o_1@@18 f_2@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| ExhaleHeap@@35) o_1@@18 f_2@@177))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9406) (ExhaleHeap@@36 T@PolymorphicMapType_9406) (Mask@@77 T@PolymorphicMapType_9427) (o_1@@19 T@Ref) (f_2@@178 T@Field_9479_9480) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_5605_5606 Mask@@77 o_1@@19 f_2@@178) (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@37) o_1@@19 f_2@@178) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@36) o_1@@19 f_2@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ExhaleHeap@@36) o_1@@19 f_2@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_14576_14577) ) (! (= (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_14561_14566) ) (! (= (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_14549_2181) ) (! (= (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_14549_2380) ) (! (= (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_14549_5606) ) (! (= (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_13622_13623) ) (! (= (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_13603_13608) ) (! (= (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_13587_1655) ) (! (= (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_13587_2380) ) (! (= (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_13587_5606) ) (! (= (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_12826_12827) ) (! (= (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_12809_12814) ) (! (= (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_12795_1211) ) (! (= (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_12795_2380) ) (! (= (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_12795_5606) ) (! (= (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_5605_12827) ) (! (= (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_5605_12814) ) (! (= (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_5605_1211) ) (! (= (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_9466_53) ) (! (= (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_9479_9480) ) (! (= (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((arg1@@10 T@Ref) (arg2@@10 Real) (arg3@@6 T@Ref) (arg4@@6 Real) (arg5@@6 T@Ref) (arg6@@6 Real) ) (! (= (getPredWandId_5420_1211 (wand arg1@@10 arg2@@10 arg3@@6 arg4@@6 arg5@@6 arg6@@6)) 0)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@10 arg2@@10 arg3@@6 arg4@@6 arg5@@6 arg6@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9427) (SummandMask1 T@PolymorphicMapType_9427) (SummandMask2 T@PolymorphicMapType_9427) (o_2@@79 T@Ref) (f_4@@79 T@Field_14576_14577) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9427) (SummandMask1@@0 T@PolymorphicMapType_9427) (SummandMask2@@0 T@PolymorphicMapType_9427) (o_2@@80 T@Ref) (f_4@@80 T@Field_14561_14566) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9427) (SummandMask1@@1 T@PolymorphicMapType_9427) (SummandMask2@@1 T@PolymorphicMapType_9427) (o_2@@81 T@Ref) (f_4@@81 T@Field_14549_2181) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9427) (SummandMask1@@2 T@PolymorphicMapType_9427) (SummandMask2@@2 T@PolymorphicMapType_9427) (o_2@@82 T@Ref) (f_4@@82 T@Field_14549_2380) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9427) (SummandMask1@@3 T@PolymorphicMapType_9427) (SummandMask2@@3 T@PolymorphicMapType_9427) (o_2@@83 T@Ref) (f_4@@83 T@Field_14549_5606) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9427) (SummandMask1@@4 T@PolymorphicMapType_9427) (SummandMask2@@4 T@PolymorphicMapType_9427) (o_2@@84 T@Ref) (f_4@@84 T@Field_13622_13623) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9427) (SummandMask1@@5 T@PolymorphicMapType_9427) (SummandMask2@@5 T@PolymorphicMapType_9427) (o_2@@85 T@Ref) (f_4@@85 T@Field_13603_13608) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9427) (SummandMask1@@6 T@PolymorphicMapType_9427) (SummandMask2@@6 T@PolymorphicMapType_9427) (o_2@@86 T@Ref) (f_4@@86 T@Field_13587_1655) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9427) (SummandMask1@@7 T@PolymorphicMapType_9427) (SummandMask2@@7 T@PolymorphicMapType_9427) (o_2@@87 T@Ref) (f_4@@87 T@Field_13587_2380) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9427) (SummandMask1@@8 T@PolymorphicMapType_9427) (SummandMask2@@8 T@PolymorphicMapType_9427) (o_2@@88 T@Ref) (f_4@@88 T@Field_13587_5606) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9427) (SummandMask1@@9 T@PolymorphicMapType_9427) (SummandMask2@@9 T@PolymorphicMapType_9427) (o_2@@89 T@Ref) (f_4@@89 T@Field_12826_12827) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9427) (SummandMask1@@10 T@PolymorphicMapType_9427) (SummandMask2@@10 T@PolymorphicMapType_9427) (o_2@@90 T@Ref) (f_4@@90 T@Field_12809_12814) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_9427) (SummandMask1@@11 T@PolymorphicMapType_9427) (SummandMask2@@11 T@PolymorphicMapType_9427) (o_2@@91 T@Ref) (f_4@@91 T@Field_12795_1211) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_9427) (SummandMask1@@12 T@PolymorphicMapType_9427) (SummandMask2@@12 T@PolymorphicMapType_9427) (o_2@@92 T@Ref) (f_4@@92 T@Field_12795_2380) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_9427) (SummandMask1@@13 T@PolymorphicMapType_9427) (SummandMask2@@13 T@PolymorphicMapType_9427) (o_2@@93 T@Ref) (f_4@@93 T@Field_12795_5606) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_9427) (SummandMask1@@14 T@PolymorphicMapType_9427) (SummandMask2@@14 T@PolymorphicMapType_9427) (o_2@@94 T@Ref) (f_4@@94 T@Field_5605_12827) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_9427) (SummandMask1@@15 T@PolymorphicMapType_9427) (SummandMask2@@15 T@PolymorphicMapType_9427) (o_2@@95 T@Ref) (f_4@@95 T@Field_5605_12814) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_9427) (SummandMask1@@16 T@PolymorphicMapType_9427) (SummandMask2@@16 T@PolymorphicMapType_9427) (o_2@@96 T@Ref) (f_4@@96 T@Field_5605_1211) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_9427) (SummandMask1@@17 T@PolymorphicMapType_9427) (SummandMask2@@17 T@PolymorphicMapType_9427) (o_2@@97 T@Ref) (f_4@@97 T@Field_9466_53) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_9427) (SummandMask1@@18 T@PolymorphicMapType_9427) (SummandMask2@@18 T@PolymorphicMapType_9427) (o_2@@98 T@Ref) (f_4@@98 T@Field_9479_9480) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Real) (arg3@@7 T@Ref) (arg4@@7 T@Ref) (arg5@@7 T@Ref) (arg6@@7 Real) (arg7@@4 T@Ref) (arg8@@4 Real) (arg1_2@@0 T@Ref) (arg2_2@@0 Real) (arg3_2@@0 T@Ref) (arg4_2@@0 T@Ref) (arg5_2@@0 T@Ref) (arg6_2@@0 Real) (arg7_2 T@Ref) (arg8_2 Real) ) (!  (=> (= (wand_1 arg1@@11 arg2@@11 arg3@@7 arg4@@7 arg5@@7 arg6@@7 arg7@@4 arg8@@4) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0 arg5_2@@0 arg6_2@@0 arg7_2 arg8_2)) (and (= arg1@@11 arg1_2@@0) (and (= arg2@@11 arg2_2@@0) (and (= arg3@@7 arg3_2@@0) (and (= arg4@@7 arg4_2@@0) (and (= arg5@@7 arg5_2@@0) (and (= arg6@@7 arg6_2@@0) (and (= arg7@@4 arg7_2) (= arg8@@4 arg8_2)))))))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@11 arg2@@11 arg3@@7 arg4@@7 arg5@@7 arg6@@7 arg7@@4 arg8@@4) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0 arg5_2@@0 arg6_2@@0 arg7_2 arg8_2))
)))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 Real) (arg3@@8 T@Ref) (arg4@@8 Real) (arg5@@8 T@Ref) (arg6@@8 Real) ) (! (IsWandField_5420_1211 (wand arg1@@12 arg2@@12 arg3@@8 arg4@@8 arg5@@8 arg6@@8))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@12 arg2@@12 arg3@@8 arg4@@8 arg5@@8 arg6@@8))
)))
(assert (forall ((arg1@@13 T@Ref) (arg2@@13 Real) (arg3@@9 T@Ref) (arg4@@9 Real) (arg5@@9 T@Ref) (arg6@@9 Real) ) (! (IsWandField_5437_5438 (|wand#ft| arg1@@13 arg2@@13 arg3@@9 arg4@@9 arg5@@9 arg6@@9))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@13 arg2@@13 arg3@@9 arg4@@9 arg5@@9 arg6@@9))
)))
(assert (forall ((arg1@@14 T@Ref) (arg2@@14 Real) (arg3@@10 T@Ref) (arg4@@10 Real) (arg5@@10 T@Ref) (arg6@@10 Real) ) (!  (not (IsPredicateField_5420_1211 (wand arg1@@14 arg2@@14 arg3@@10 arg4@@10 arg5@@10 arg6@@10)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@14 arg2@@14 arg3@@10 arg4@@10 arg5@@10 arg6@@10))
)))
(assert (forall ((arg1@@15 T@Ref) (arg2@@15 Real) (arg3@@11 T@Ref) (arg4@@11 Real) (arg5@@11 T@Ref) (arg6@@11 Real) ) (!  (not (IsPredicateField_5437_5438 (|wand#ft| arg1@@15 arg2@@15 arg3@@11 arg4@@11 arg5@@11 arg6@@11)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@15 arg2@@15 arg3@@11 arg4@@11 arg5@@11 arg6@@11))
)))
(assert (forall ((arg1@@16 T@Ref) (arg2@@16 Real) (arg3@@12 T@Ref) (arg4@@12 T@Ref) (arg5@@12 T@Ref) (arg6@@12 Real) (arg7@@5 T@Ref) (arg8@@5 Real) ) (! (= (getPredWandId_5496_1655 (wand_1 arg1@@16 arg2@@16 arg3@@12 arg4@@12 arg5@@12 arg6@@12 arg7@@5 arg8@@5)) 1)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@16 arg2@@16 arg3@@12 arg4@@12 arg5@@12 arg6@@12 arg7@@5 arg8@@5))
)))
(assert (forall ((arg1@@17 Bool) (arg2@@17 T@Ref) ) (! (= (getPredWandId_5585_2181 (wand_2 arg1@@17 arg2@@17)) 2)
 :qid |stdinbpl.268:15|
 :skolemid |41|
 :pattern ( (wand_2 arg1@@17 arg2@@17))
)))
(assert (forall ((arg1@@18 Bool) (arg2@@18 T@Ref) (arg1_2@@1 Bool) (arg2_2@@1 T@Ref) ) (!  (=> (= (wand_2 arg1@@18 arg2@@18) (wand_2 arg1_2@@1 arg2_2@@1)) (and (= arg1@@18 arg1_2@@1) (= arg2@@18 arg2_2@@1)))
 :qid |stdinbpl.272:15|
 :skolemid |42|
 :pattern ( (wand_2 arg1@@18 arg2@@18) (wand_2 arg1_2@@1 arg2_2@@1))
)))
(assert (forall ((arg1@@19 Bool) (arg2@@19 T@Ref) ) (! (= (|wand_2#sm| arg1@@19 arg2@@19) (WandMaskField_5592 (|wand_2#ft| arg1@@19 arg2@@19)))
 :qid |stdinbpl.264:15|
 :skolemid |40|
 :pattern ( (WandMaskField_5592 (|wand_2#ft| arg1@@19 arg2@@19)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9406) (o T@Ref) (f_3 T@Field_14576_14577) (v T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@38) (store (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@38) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@38) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@38) (store (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@38) o f_3 v)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9406) (o@@0 T@Ref) (f_3@@0 T@Field_14549_2181) (v@@0 Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@39) (store (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@39) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@39) (store (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@39) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@39) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9406) (o@@1 T@Ref) (f_3@@1 T@Field_14561_14566) (v@@1 T@PolymorphicMapType_9955) ) (! (succHeap Heap@@40 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@40) (store (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@40) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@40) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@40) (store (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@40) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9406) (o@@2 T@Ref) (f_3@@2 T@Field_14549_5606) (v@@2 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@41) (store (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@41) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@41) (store (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@41) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@41) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9406) (o@@3 T@Ref) (f_3@@3 T@Field_14549_2380) (v@@3 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@42) (store (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@42) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@42) (store (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@42) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@42) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9406) (o@@4 T@Ref) (f_3@@4 T@Field_13622_13623) (v@@4 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@43) (store (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@43) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@43) (store (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@43) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@43) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9406) (o@@5 T@Ref) (f_3@@5 T@Field_13587_1655) (v@@5 Int) ) (! (succHeap Heap@@44 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@44) (store (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@44) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@44) (store (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@44) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@44) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_9406) (o@@6 T@Ref) (f_3@@6 T@Field_13603_13608) (v@@6 T@PolymorphicMapType_9955) ) (! (succHeap Heap@@45 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@45) (store (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@45) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@45) (store (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@45) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@45) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_9406) (o@@7 T@Ref) (f_3@@7 T@Field_13587_5606) (v@@7 T@Ref) ) (! (succHeap Heap@@46 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@46) (store (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@46) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@46) (store (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@46) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@46) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_9406) (o@@8 T@Ref) (f_3@@8 T@Field_13587_2380) (v@@8 Bool) ) (! (succHeap Heap@@47 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@47) (store (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@47) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@47) (store (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@47) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@47) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_9406) (o@@9 T@Ref) (f_3@@9 T@Field_12826_12827) (v@@9 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@48) (store (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@48) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@48) (store (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@48) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@48) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_9406) (o@@10 T@Ref) (f_3@@10 T@Field_12795_1211) (v@@10 Int) ) (! (succHeap Heap@@49 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@49) (store (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@49) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@49) (store (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@49) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@49) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_9406) (o@@11 T@Ref) (f_3@@11 T@Field_12809_12814) (v@@11 T@PolymorphicMapType_9955) ) (! (succHeap Heap@@50 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@50) (store (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@50) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@50) (store (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@50) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@50) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_9406) (o@@12 T@Ref) (f_3@@12 T@Field_12795_5606) (v@@12 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@51) (store (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@51) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@51) (store (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@51) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@51) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_9406) (o@@13 T@Ref) (f_3@@13 T@Field_12795_2380) (v@@13 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@52) (store (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@52) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@52) (store (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@52) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@52) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_9406) (o@@14 T@Ref) (f_3@@14 T@Field_5605_12827) (v@@14 T@FrameType) ) (! (succHeap Heap@@53 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@53) (store (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@53) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@53) (store (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@53) o@@14 f_3@@14 v@@14) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@53) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_9406) (o@@15 T@Ref) (f_3@@15 T@Field_5605_1211) (v@@15 Int) ) (! (succHeap Heap@@54 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@54) (store (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@54) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@54) (store (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@54) o@@15 f_3@@15 v@@15) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@54) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_9406) (o@@16 T@Ref) (f_3@@16 T@Field_5605_12814) (v@@16 T@PolymorphicMapType_9955) ) (! (succHeap Heap@@55 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@55) (store (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@55) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@55) (store (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@55) o@@16 f_3@@16 v@@16) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@55) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_9406) (o@@17 T@Ref) (f_3@@17 T@Field_9479_9480) (v@@17 T@Ref) ) (! (succHeap Heap@@56 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@56) (store (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@56) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@56) (store (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@56) o@@17 f_3@@17 v@@17) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@56) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_9406) (o@@18 T@Ref) (f_3@@18 T@Field_9466_53) (v@@18 Bool) ) (! (succHeap Heap@@57 (PolymorphicMapType_9406 (store (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@57) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9406 (store (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@57) o@@18 f_3@@18 v@@18) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@57) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@57)))
)))
(assert (forall ((o@@19 T@Ref) (f T@Field_9479_9480) (Heap@@58 T@PolymorphicMapType_9406) ) (!  (=> (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@58) o@@19 $allocated) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@58) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@58) o@@19 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@58) o@@19 f))
)))
(assert (forall ((p@@4 T@Field_14576_14577) (v_1@@3 T@FrameType) (q T@Field_14576_14577) (w@@3 T@FrameType) (r T@Field_14576_14577) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14549_14549 p@@4 v_1@@3 q w@@3) (InsidePredicate_14549_14549 q w@@3 r u)) (InsidePredicate_14549_14549 p@@4 v_1@@3 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_14549 p@@4 v_1@@3 q w@@3) (InsidePredicate_14549_14549 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_14576_14577) (v_1@@4 T@FrameType) (q@@0 T@Field_14576_14577) (w@@4 T@FrameType) (r@@0 T@Field_13622_13623) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_14549 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_14549_13587 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_14549_13587 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_14549 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_14549_13587 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_14576_14577) (v_1@@5 T@FrameType) (q@@1 T@Field_14576_14577) (w@@5 T@FrameType) (r@@1 T@Field_12826_12827) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_14549 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_14549_12795 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_14549_12795 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_14549 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_14549_12795 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_14576_14577) (v_1@@6 T@FrameType) (q@@2 T@Field_14576_14577) (w@@6 T@FrameType) (r@@2 T@Field_5605_12827) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_14549 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_14549_9466 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_14549_9466 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_14549 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_14549_9466 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_14576_14577) (v_1@@7 T@FrameType) (q@@3 T@Field_13622_13623) (w@@7 T@FrameType) (r@@3 T@Field_14576_14577) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_13587 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_13587_14549 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_14549_14549 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_13587 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_13587_14549 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_14576_14577) (v_1@@8 T@FrameType) (q@@4 T@Field_13622_13623) (w@@8 T@FrameType) (r@@4 T@Field_13622_13623) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_13587 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_13587_13587 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_14549_13587 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_13587 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_13587_13587 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_14576_14577) (v_1@@9 T@FrameType) (q@@5 T@Field_13622_13623) (w@@9 T@FrameType) (r@@5 T@Field_12826_12827) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_13587 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_13587_12795 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_14549_12795 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_13587 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_13587_12795 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_14576_14577) (v_1@@10 T@FrameType) (q@@6 T@Field_13622_13623) (w@@10 T@FrameType) (r@@6 T@Field_5605_12827) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_13587 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_13587_9466 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_14549_9466 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_13587 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_13587_9466 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_14576_14577) (v_1@@11 T@FrameType) (q@@7 T@Field_12826_12827) (w@@11 T@FrameType) (r@@7 T@Field_14576_14577) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_12795 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_12795_14549 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_14549_14549 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_12795 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_12795_14549 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_14576_14577) (v_1@@12 T@FrameType) (q@@8 T@Field_12826_12827) (w@@12 T@FrameType) (r@@8 T@Field_13622_13623) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_12795 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_12795_13587 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_14549_13587 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_12795 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_12795_13587 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_14576_14577) (v_1@@13 T@FrameType) (q@@9 T@Field_12826_12827) (w@@13 T@FrameType) (r@@9 T@Field_12826_12827) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_12795 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_12795_12795 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_14549_12795 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_12795 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_12795_12795 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_14576_14577) (v_1@@14 T@FrameType) (q@@10 T@Field_12826_12827) (w@@14 T@FrameType) (r@@10 T@Field_5605_12827) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_12795 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_12795_9466 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_14549_9466 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_12795 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_12795_9466 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_14576_14577) (v_1@@15 T@FrameType) (q@@11 T@Field_5605_12827) (w@@15 T@FrameType) (r@@11 T@Field_14576_14577) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_9466 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_9466_14549 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_14549_14549 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_9466 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_9466_14549 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_14576_14577) (v_1@@16 T@FrameType) (q@@12 T@Field_5605_12827) (w@@16 T@FrameType) (r@@12 T@Field_13622_13623) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_9466 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_9466_13587 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_14549_13587 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_9466 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_9466_13587 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_14576_14577) (v_1@@17 T@FrameType) (q@@13 T@Field_5605_12827) (w@@17 T@FrameType) (r@@13 T@Field_12826_12827) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_9466 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_9466_12795 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_14549_12795 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_9466 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_9466_12795 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_14576_14577) (v_1@@18 T@FrameType) (q@@14 T@Field_5605_12827) (w@@18 T@FrameType) (r@@14 T@Field_5605_12827) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_14549_9466 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_9466_9466 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_14549_9466 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14549_9466 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_9466_9466 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_13622_13623) (v_1@@19 T@FrameType) (q@@15 T@Field_14576_14577) (w@@19 T@FrameType) (r@@15 T@Field_14576_14577) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_14549 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_14549_14549 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_13587_14549 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_14549 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_14549_14549 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_13622_13623) (v_1@@20 T@FrameType) (q@@16 T@Field_14576_14577) (w@@20 T@FrameType) (r@@16 T@Field_13622_13623) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_14549 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_14549_13587 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_13587_13587 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_14549 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_14549_13587 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_13622_13623) (v_1@@21 T@FrameType) (q@@17 T@Field_14576_14577) (w@@21 T@FrameType) (r@@17 T@Field_12826_12827) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_14549 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_14549_12795 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_13587_12795 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_14549 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_14549_12795 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_13622_13623) (v_1@@22 T@FrameType) (q@@18 T@Field_14576_14577) (w@@22 T@FrameType) (r@@18 T@Field_5605_12827) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_14549 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_14549_9466 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_13587_9466 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_14549 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_14549_9466 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_13622_13623) (v_1@@23 T@FrameType) (q@@19 T@Field_13622_13623) (w@@23 T@FrameType) (r@@19 T@Field_14576_14577) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_13587 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_13587_14549 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_13587_14549 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_13587 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_13587_14549 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_13622_13623) (v_1@@24 T@FrameType) (q@@20 T@Field_13622_13623) (w@@24 T@FrameType) (r@@20 T@Field_13622_13623) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_13587 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_13587_13587 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_13587_13587 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_13587 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_13587_13587 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_13622_13623) (v_1@@25 T@FrameType) (q@@21 T@Field_13622_13623) (w@@25 T@FrameType) (r@@21 T@Field_12826_12827) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_13587 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_13587_12795 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_13587_12795 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_13587 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_13587_12795 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_13622_13623) (v_1@@26 T@FrameType) (q@@22 T@Field_13622_13623) (w@@26 T@FrameType) (r@@22 T@Field_5605_12827) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_13587 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_13587_9466 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_13587_9466 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_13587 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_13587_9466 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_13622_13623) (v_1@@27 T@FrameType) (q@@23 T@Field_12826_12827) (w@@27 T@FrameType) (r@@23 T@Field_14576_14577) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_12795 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_12795_14549 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_13587_14549 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_12795 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_12795_14549 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_13622_13623) (v_1@@28 T@FrameType) (q@@24 T@Field_12826_12827) (w@@28 T@FrameType) (r@@24 T@Field_13622_13623) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_12795 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_12795_13587 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_13587_13587 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_12795 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_12795_13587 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_13622_13623) (v_1@@29 T@FrameType) (q@@25 T@Field_12826_12827) (w@@29 T@FrameType) (r@@25 T@Field_12826_12827) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_12795 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_12795_12795 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_13587_12795 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_12795 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_12795_12795 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_13622_13623) (v_1@@30 T@FrameType) (q@@26 T@Field_12826_12827) (w@@30 T@FrameType) (r@@26 T@Field_5605_12827) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_12795 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_12795_9466 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_13587_9466 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_12795 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_12795_9466 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_13622_13623) (v_1@@31 T@FrameType) (q@@27 T@Field_5605_12827) (w@@31 T@FrameType) (r@@27 T@Field_14576_14577) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_9466 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_9466_14549 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_13587_14549 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_9466 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_9466_14549 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_13622_13623) (v_1@@32 T@FrameType) (q@@28 T@Field_5605_12827) (w@@32 T@FrameType) (r@@28 T@Field_13622_13623) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_9466 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_9466_13587 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_13587_13587 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_9466 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_9466_13587 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_13622_13623) (v_1@@33 T@FrameType) (q@@29 T@Field_5605_12827) (w@@33 T@FrameType) (r@@29 T@Field_12826_12827) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_9466 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_9466_12795 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_13587_12795 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_9466 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_9466_12795 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_13622_13623) (v_1@@34 T@FrameType) (q@@30 T@Field_5605_12827) (w@@34 T@FrameType) (r@@30 T@Field_5605_12827) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_13587_9466 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_9466_9466 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_13587_9466 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13587_9466 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_9466_9466 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_12826_12827) (v_1@@35 T@FrameType) (q@@31 T@Field_14576_14577) (w@@35 T@FrameType) (r@@31 T@Field_14576_14577) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_14549 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_14549_14549 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_12795_14549 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_14549 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_14549_14549 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_12826_12827) (v_1@@36 T@FrameType) (q@@32 T@Field_14576_14577) (w@@36 T@FrameType) (r@@32 T@Field_13622_13623) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_14549 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_14549_13587 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_12795_13587 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_14549 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_14549_13587 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_12826_12827) (v_1@@37 T@FrameType) (q@@33 T@Field_14576_14577) (w@@37 T@FrameType) (r@@33 T@Field_12826_12827) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_14549 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_14549_12795 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_12795_12795 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_14549 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_14549_12795 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_12826_12827) (v_1@@38 T@FrameType) (q@@34 T@Field_14576_14577) (w@@38 T@FrameType) (r@@34 T@Field_5605_12827) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_14549 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_14549_9466 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_12795_9466 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_14549 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_14549_9466 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_12826_12827) (v_1@@39 T@FrameType) (q@@35 T@Field_13622_13623) (w@@39 T@FrameType) (r@@35 T@Field_14576_14577) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_13587 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_13587_14549 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_12795_14549 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_13587 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_13587_14549 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_12826_12827) (v_1@@40 T@FrameType) (q@@36 T@Field_13622_13623) (w@@40 T@FrameType) (r@@36 T@Field_13622_13623) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_13587 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_13587_13587 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_12795_13587 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_13587 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_13587_13587 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_12826_12827) (v_1@@41 T@FrameType) (q@@37 T@Field_13622_13623) (w@@41 T@FrameType) (r@@37 T@Field_12826_12827) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_13587 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_13587_12795 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_12795_12795 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_13587 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_13587_12795 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_12826_12827) (v_1@@42 T@FrameType) (q@@38 T@Field_13622_13623) (w@@42 T@FrameType) (r@@38 T@Field_5605_12827) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_13587 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_13587_9466 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_12795_9466 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_13587 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_13587_9466 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_12826_12827) (v_1@@43 T@FrameType) (q@@39 T@Field_12826_12827) (w@@43 T@FrameType) (r@@39 T@Field_14576_14577) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_12795 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_12795_14549 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_12795_14549 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_12795 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_12795_14549 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_12826_12827) (v_1@@44 T@FrameType) (q@@40 T@Field_12826_12827) (w@@44 T@FrameType) (r@@40 T@Field_13622_13623) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_12795 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_12795_13587 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_12795_13587 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_12795 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_12795_13587 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_12826_12827) (v_1@@45 T@FrameType) (q@@41 T@Field_12826_12827) (w@@45 T@FrameType) (r@@41 T@Field_12826_12827) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_12795 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_12795_12795 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_12795_12795 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_12795 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_12795_12795 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_12826_12827) (v_1@@46 T@FrameType) (q@@42 T@Field_12826_12827) (w@@46 T@FrameType) (r@@42 T@Field_5605_12827) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_12795 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_12795_9466 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_12795_9466 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_12795 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_12795_9466 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_12826_12827) (v_1@@47 T@FrameType) (q@@43 T@Field_5605_12827) (w@@47 T@FrameType) (r@@43 T@Field_14576_14577) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_9466 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_9466_14549 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_12795_14549 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_9466 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_9466_14549 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_12826_12827) (v_1@@48 T@FrameType) (q@@44 T@Field_5605_12827) (w@@48 T@FrameType) (r@@44 T@Field_13622_13623) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_9466 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_9466_13587 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_12795_13587 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_9466 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_9466_13587 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_12826_12827) (v_1@@49 T@FrameType) (q@@45 T@Field_5605_12827) (w@@49 T@FrameType) (r@@45 T@Field_12826_12827) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_9466 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_9466_12795 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_12795_12795 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_9466 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_9466_12795 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_12826_12827) (v_1@@50 T@FrameType) (q@@46 T@Field_5605_12827) (w@@50 T@FrameType) (r@@46 T@Field_5605_12827) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_12795_9466 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_9466_9466 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_12795_9466 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12795_9466 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_9466_9466 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_5605_12827) (v_1@@51 T@FrameType) (q@@47 T@Field_14576_14577) (w@@51 T@FrameType) (r@@47 T@Field_14576_14577) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_14549 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_14549_14549 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_9466_14549 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_14549 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_14549_14549 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_5605_12827) (v_1@@52 T@FrameType) (q@@48 T@Field_14576_14577) (w@@52 T@FrameType) (r@@48 T@Field_13622_13623) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_14549 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_14549_13587 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_9466_13587 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_14549 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_14549_13587 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_5605_12827) (v_1@@53 T@FrameType) (q@@49 T@Field_14576_14577) (w@@53 T@FrameType) (r@@49 T@Field_12826_12827) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_14549 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_14549_12795 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_9466_12795 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_14549 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_14549_12795 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_5605_12827) (v_1@@54 T@FrameType) (q@@50 T@Field_14576_14577) (w@@54 T@FrameType) (r@@50 T@Field_5605_12827) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_14549 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_14549_9466 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_9466_9466 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_14549 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_14549_9466 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_5605_12827) (v_1@@55 T@FrameType) (q@@51 T@Field_13622_13623) (w@@55 T@FrameType) (r@@51 T@Field_14576_14577) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_13587 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_13587_14549 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_9466_14549 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_13587 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_13587_14549 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_5605_12827) (v_1@@56 T@FrameType) (q@@52 T@Field_13622_13623) (w@@56 T@FrameType) (r@@52 T@Field_13622_13623) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_13587 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_13587_13587 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_9466_13587 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_13587 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_13587_13587 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_5605_12827) (v_1@@57 T@FrameType) (q@@53 T@Field_13622_13623) (w@@57 T@FrameType) (r@@53 T@Field_12826_12827) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_13587 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_13587_12795 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_9466_12795 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_13587 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_13587_12795 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_5605_12827) (v_1@@58 T@FrameType) (q@@54 T@Field_13622_13623) (w@@58 T@FrameType) (r@@54 T@Field_5605_12827) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_13587 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_13587_9466 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_9466_9466 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_13587 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_13587_9466 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_5605_12827) (v_1@@59 T@FrameType) (q@@55 T@Field_12826_12827) (w@@59 T@FrameType) (r@@55 T@Field_14576_14577) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_12795 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_12795_14549 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_9466_14549 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_12795 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_12795_14549 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_5605_12827) (v_1@@60 T@FrameType) (q@@56 T@Field_12826_12827) (w@@60 T@FrameType) (r@@56 T@Field_13622_13623) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_12795 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_12795_13587 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_9466_13587 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_12795 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_12795_13587 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_5605_12827) (v_1@@61 T@FrameType) (q@@57 T@Field_12826_12827) (w@@61 T@FrameType) (r@@57 T@Field_12826_12827) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_12795 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_12795_12795 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_9466_12795 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_12795 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_12795_12795 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_5605_12827) (v_1@@62 T@FrameType) (q@@58 T@Field_12826_12827) (w@@62 T@FrameType) (r@@58 T@Field_5605_12827) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_12795 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_12795_9466 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_9466_9466 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_12795 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_12795_9466 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_5605_12827) (v_1@@63 T@FrameType) (q@@59 T@Field_5605_12827) (w@@63 T@FrameType) (r@@59 T@Field_14576_14577) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_9466 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_9466_14549 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_9466_14549 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_9466 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_9466_14549 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_5605_12827) (v_1@@64 T@FrameType) (q@@60 T@Field_5605_12827) (w@@64 T@FrameType) (r@@60 T@Field_13622_13623) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_9466 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_9466_13587 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_9466_13587 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_9466 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_9466_13587 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_5605_12827) (v_1@@65 T@FrameType) (q@@61 T@Field_5605_12827) (w@@65 T@FrameType) (r@@61 T@Field_12826_12827) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_9466 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_9466_12795 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_9466_12795 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_9466 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_9466_12795 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_5605_12827) (v_1@@66 T@FrameType) (q@@62 T@Field_5605_12827) (w@@66 T@FrameType) (r@@62 T@Field_5605_12827) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_9466_9466 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_9466_9466 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_9466_9466 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9466_9466 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_9466_9466 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_1_1@6 () Bool)
(declare-fun b_2_1@12 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun Used_1Mask@7 () T@PolymorphicMapType_9427)
(declare-fun rcvLocal@0 () T@Ref)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun takeTransfer@3 () Real)
(declare-fun neededTransfer@5 () Real)
(declare-fun b_2_1@9 () Bool)
(declare-fun Mask@5 () T@PolymorphicMapType_9427)
(declare-fun Mask@3 () T@PolymorphicMapType_9427)
(declare-fun Used_1Mask@5 () T@PolymorphicMapType_9427)
(declare-fun Heap@3 () T@PolymorphicMapType_9406)
(declare-fun Heap@1 () T@PolymorphicMapType_9406)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_1Mask@6 () T@PolymorphicMapType_9427)
(declare-fun b_2_1@10 () Bool)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_9406)
(declare-fun b_2_1@11 () Bool)
(declare-fun Mask@4 () T@PolymorphicMapType_9427)
(declare-fun Heap@2 () T@PolymorphicMapType_9406)
(declare-fun x () T@Ref)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Used_1Mask@3 () T@PolymorphicMapType_9427)
(declare-fun b_2_1@6 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_1Mask@4 () T@PolymorphicMapType_9427)
(declare-fun b_2_1@7 () Bool)
(declare-fun b_2_1@8 () Bool)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_9406)
(declare-fun Ops_1Mask@4 () T@PolymorphicMapType_9427)
(declare-fun Ops_1Mask@3 () T@PolymorphicMapType_9427)
(declare-fun maskTransfer@2 () Real)
(declare-fun ResultHeap () T@PolymorphicMapType_9406)
(declare-fun ResultMask@@19 () T@PolymorphicMapType_9427)
(declare-fun b_1_1@5 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_3@0 () Bool)
(declare-fun b_3@1 () Bool)
(declare-fun b_3@2 () Bool)
(declare-fun b_3@3 () Bool)
(declare-fun b_3@4 () Bool)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_9427)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_2_1@3 () Bool)
(declare-fun Used_1Mask@1 () T@PolymorphicMapType_9427)
(declare-fun Heap@@59 () T@PolymorphicMapType_9406)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_1Mask@2 () T@PolymorphicMapType_9427)
(declare-fun b_2_1@4 () Bool)
(declare-fun b_2_1@5 () Bool)
(declare-fun Mask@2 () T@PolymorphicMapType_9427)
(declare-fun Heap@0 () T@PolymorphicMapType_9406)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_1Mask@1 () T@PolymorphicMapType_9427)
(declare-fun b_2_1@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_1Mask@0 () T@PolymorphicMapType_9427)
(declare-fun b_2_1@1 () Bool)
(declare-fun b_2_1@2 () Bool)
(declare-fun Ops_1Mask@2 () T@PolymorphicMapType_9427)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_1_1@4 () Bool)
(declare-fun b_1_1@3 () Bool)
(declare-fun b_2_1 () Bool)
(declare-fun b_1_1@0 () Bool)
(declare-fun b_1_1@1 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_9427)
(declare-fun b_1_1@2 () Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_9427)
(declare-fun b_1_1 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_9406)
(set-info :boogie-vc-id test1)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon29_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (and b_1_1@6 b_1_1@6) b_2_1@12) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Used_1Mask@7) rcvLocal@0 v_36) initNeededTransfer@1))))))
(let ((anon44_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= neededTransfer@7 neededTransfer@5) (= b_2_1@12 b_2_1@9)) (=> (and (and (= Mask@5 Mask@3) (= Used_1Mask@7 Used_1Mask@5)) (and (= Heap@3 Heap@1) (= (ControlFlow 0 5) 2))) anon29_correct)))))
(let ((anon44_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (and (= neededTransfer@6 (- neededTransfer@5 takeTransfer@3)) (= Used_1Mask@6 (PolymorphicMapType_9427 (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Used_1Mask@5) (store (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Used_1Mask@5) rcvLocal@0 v_36 (+ (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Used_1Mask@5) rcvLocal@0 v_36) takeTransfer@3)) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Used_1Mask@5) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Used_1Mask@5)))) (and (= b_2_1@10  (and b_2_1@9 (state Used_1Heap@0 Used_1Mask@6))) (= b_2_1@11  (and b_2_1@10 (= (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@1) rcvLocal@0 v_36) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Used_1Heap@0) rcvLocal@0 v_36)))))) (=> (and (and (and (= Mask@4 (PolymorphicMapType_9427 (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Mask@3) (store (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Mask@3) rcvLocal@0 v_36 (- (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Mask@3) rcvLocal@0 v_36) takeTransfer@3)) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Mask@3) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Mask@3))) (= Heap@2 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@1) (store (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm) (PolymorphicMapType_9955 (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (store (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@1) x l_8) v_36 true) (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@1) null (|wand#sm| x FullPerm x FullPerm x FullPerm))))) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@1) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@1)))) (and (= neededTransfer@7 neededTransfer@6) (= b_2_1@12 b_2_1@11))) (and (and (= Mask@5 Mask@4) (= Used_1Mask@7 Used_1Mask@6)) (and (= Heap@3 Heap@2) (= (ControlFlow 0 4) 2)))) anon29_correct)))))
(let ((anon43_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@5) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 7) 4) anon44_Then_correct) (=> (= (ControlFlow 0 7) 5) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@3) (= takeTransfer@3 neededTransfer@5)) (and (=> (= (ControlFlow 0 6) 4) anon44_Then_correct) (=> (= (ControlFlow 0 6) 5) anon44_Else_correct)))))
(let ((anon42_Then_correct  (=> (and (and (and (and (and b_1_1@6 b_1_1@6) b_2_1@9) true) (> neededTransfer@5 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Mask@3) rcvLocal@0 v_36))) (and (=> (= (ControlFlow 0 8) 6) anon43_Then_correct) (=> (= (ControlFlow 0 8) 7) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (not (and (and (and (and b_1_1@6 b_1_1@6) b_2_1@9) true) (> neededTransfer@5 0.0))) (=> (and (= neededTransfer@7 neededTransfer@5) (= b_2_1@12 b_2_1@9)) (=> (and (and (= Mask@5 Mask@3) (= Used_1Mask@7 Used_1Mask@5)) (and (= Heap@3 Heap@1) (= (ControlFlow 0 3) 2))) anon29_correct)))))
(let ((anon41_Else_correct  (=> (and (and (>= 0.0 takeTransfer@2) (= Used_1Mask@5 Used_1Mask@3)) (and (= b_2_1@9 b_2_1@6) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 11) 8) anon42_Then_correct) (=> (= (ControlFlow 0 11) 3) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (> takeTransfer@2 0.0) (=> (and (and (and (= neededTransfer@4 (- FullPerm takeTransfer@2)) (= Used_1Mask@4 (PolymorphicMapType_9427 (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Used_1Mask@3) (store (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Used_1Mask@3) rcvLocal@0 v_36 (+ (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Used_1Mask@3) rcvLocal@0 v_36) takeTransfer@2)) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Used_1Mask@3) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Used_1Mask@3)))) (and (= b_2_1@7  (and b_2_1@6 (state Used_1Heap@0 Used_1Mask@4))) (= b_2_1@8  (and b_2_1@7 (= (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Ops_1Heap@0) rcvLocal@0 v_36) (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Used_1Heap@0) rcvLocal@0 v_36)))))) (and (and (= Ops_1Mask@4 (PolymorphicMapType_9427 (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Ops_1Mask@3) (store (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Ops_1Mask@3) rcvLocal@0 v_36 (- (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Ops_1Mask@3) rcvLocal@0 v_36) takeTransfer@2)) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Ops_1Mask@3) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Ops_1Mask@3))) (= Used_1Mask@5 Used_1Mask@4)) (and (= b_2_1@9 b_2_1@8) (= neededTransfer@5 neededTransfer@4)))) (and (=> (= (ControlFlow 0 10) 8) anon42_Then_correct) (=> (= (ControlFlow 0 10) 3) anon42_Else_correct))))))
(let ((anon40_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 13) 10) anon41_Then_correct) (=> (= (ControlFlow 0 13) 11) anon41_Else_correct)))))
(let ((anon40_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 12) 10) anon41_Then_correct) (=> (= (ControlFlow 0 12) 11) anon41_Else_correct)))))
(let ((anon39_Then_correct  (=> (and (and (and (and (and b_1_1@6 b_1_1@6) b_2_1@6) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Ops_1Mask@3) rcvLocal@0 v_36))) (and (=> (= (ControlFlow 0 14) 12) anon40_Then_correct) (=> (= (ControlFlow 0 14) 13) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (and (not (and (and (and (and b_1_1@6 b_1_1@6) b_2_1@6) true) (> FullPerm 0.0))) (= Used_1Mask@5 Used_1Mask@3)) (and (= b_2_1@9 b_2_1@6) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 9) 8) anon42_Then_correct) (=> (= (ControlFlow 0 9) 3) anon42_Else_correct)))))
(let ((anon17_correct  (=> (and (= rcvLocal@0 (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| ResultHeap) x l_8)) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Used_1Mask@3) rcvLocal@0 v_36) FullPerm))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 15) 14) anon39_Then_correct) (=> (= (ControlFlow 0 15) 9) anon39_Else_correct)))))))
(let ((anon38_Else_correct  (=> (and (not b_1_1@6) (= (ControlFlow 0 20) 15)) anon17_correct)))
(let ((anon38_Then_correct  (=> b_1_1@6 (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_5605_5606 ResultMask@@19 x l_8)) (=> (HasDirectPerm_5605_5606 ResultMask@@19 x l_8) (=> (= (ControlFlow 0 18) 15) anon17_correct))))))
(let ((anon37_Then_correct  (=> (and (and b_1_1@6 b_1_1@6) b_2_1@6) (and (=> (= (ControlFlow 0 21) 18) anon38_Then_correct) (=> (= (ControlFlow 0 21) 20) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (not (and (and b_1_1@6 b_1_1@6) b_2_1@6)) (= (ControlFlow 0 17) 15)) anon17_correct)))
(let ((anon14_correct  (and (=> (= (ControlFlow 0 22) (- 0 23)) (=> (and (and b_1_1@5 b_1_1@5) b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Used_1Mask@3) x l_8) initNeededTransfer@0)))) (=> (=> (and (and b_1_1@5 b_1_1@5) b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Used_1Mask@3) x l_8) initNeededTransfer@0))) (=> (and (= b_3@0  (and b_1_1@5 b_2_1@6)) (= b_3@1  (and b_3@0 (state ResultHeap ResultMask@@19)))) (=> (and (and (= b_3@2  (and b_3@1 (sumMask ResultMask@@19 Ops_1Mask@3 Used_1Mask@3))) (= b_3@3  (and (and b_3@2 (IdenticalOnKnownLocations Ops_1Heap@0 ResultHeap Ops_1Mask@3)) (IdenticalOnKnownLocations Used_1Heap@0 ResultHeap Used_1Mask@3)))) (and (= b_3@4  (and b_3@3 (state ResultHeap ResultMask@@19))) (= b_1_1@6  (and b_1_1@5 b_3@4)))) (and (=> (= (ControlFlow 0 22) 21) anon37_Then_correct) (=> (= (ControlFlow 0 22) 17) anon37_Else_correct))))))))
(let ((anon36_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@3 Mask@1) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@59) (= (ControlFlow 0 26) 22))) anon14_correct)))))
(let ((anon36_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_1Mask@2 (PolymorphicMapType_9427 (store (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Used_1Mask@1) x l_8 (+ (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Used_1Mask@1) x l_8) takeTransfer@1)) (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Used_1Mask@1) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Used_1Mask@1)))) (and (= b_2_1@4  (and b_2_1@3 (state Used_1Heap@0 Used_1Mask@2))) (= b_2_1@5  (and b_2_1@4 (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@59) x l_8) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Used_1Heap@0) x l_8)))))) (=> (and (and (and (= Mask@2 (PolymorphicMapType_9427 (store (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Mask@1) x l_8 (- (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Mask@1) x l_8) takeTransfer@1)) (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Mask@1) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Mask@1))) (= Heap@0 (PolymorphicMapType_9406 (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@59) (store (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm) (PolymorphicMapType_9955 (store (|PolymorphicMapType_9955_5605_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) x l_8 true) (|PolymorphicMapType_9955_5603_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_5605_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_5605_34701#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_5605_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_12795_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_12795_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_12795_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_12795_35749#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_12795_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_13587_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_13587_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_13587_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_13587_36797#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_13587_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_14549_5606#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_14549_2380#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_14549_1211#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_14549_37845#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))) (|PolymorphicMapType_9955_14549_12827#PolymorphicMapType_9955| (select (|PolymorphicMapType_9406_5428_17856#PolymorphicMapType_9406| Heap@@59) null (|wand#sm| x FullPerm x FullPerm x FullPerm))))) (|PolymorphicMapType_9406_5506_23274#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_5605_1211#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_5605_28803#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_5605_12827#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_12795_5606#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_12795_2380#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_12795_1211#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_12795_12827#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_13587_5606#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_13587_2380#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_13587_1211#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_13587_12827#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_14549_5606#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_14549_2380#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_14549_1211#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_14549_32249#PolymorphicMapType_9406| Heap@@59) (|PolymorphicMapType_9406_14549_12827#PolymorphicMapType_9406| Heap@@59)))) (and (= Mask@3 Mask@2) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_2_1@6 b_2_1@5) (= Used_1Mask@3 Used_1Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 25) 22)))) anon14_correct)))))
(let ((anon35_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 28) 25) anon36_Then_correct) (=> (= (ControlFlow 0 28) 26) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 27) 25) anon36_Then_correct) (=> (= (ControlFlow 0 27) 26) anon36_Else_correct)))))
(let ((anon34_Then_correct  (=> (and (and (and (and (and b_1_1@5 b_1_1@5) b_2_1@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Mask@1) x l_8))) (and (=> (= (ControlFlow 0 29) 27) anon35_Then_correct) (=> (= (ControlFlow 0 29) 28) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (not (and (and (and (and b_1_1@5 b_1_1@5) b_2_1@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@3 Mask@1) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@59) (= (ControlFlow 0 24) 22))) anon14_correct)))))
(let ((anon33_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_1Mask@3 Ops_1Mask@1) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 32) 29) anon34_Then_correct) (=> (= (ControlFlow 0 32) 24) anon34_Else_correct))))))
(let ((anon33_Then_correct  (=> (and (> takeTransfer@0 0.0) (= neededTransfer@0 (- FullPerm takeTransfer@0))) (=> (and (and (and (= Used_1Mask@0 (PolymorphicMapType_9427 (store (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| ZeroMask) x l_8 (+ (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| ZeroMask) x l_8) takeTransfer@0)) (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| ZeroMask))) (= b_2_1@1  (and b_2_1@0 (state Used_1Heap@0 Used_1Mask@0)))) (and (= b_2_1@2  (and b_2_1@1 (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Ops_1Heap@0) x l_8) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Used_1Heap@0) x l_8)))) (= Ops_1Mask@2 (PolymorphicMapType_9427 (store (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Ops_1Mask@1) x l_8 (- (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Ops_1Mask@1) x l_8) takeTransfer@0)) (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Ops_1Mask@1) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Ops_1Mask@1))))) (and (and (= Ops_1Mask@3 Ops_1Mask@2) (= Used_1Mask@1 Used_1Mask@0)) (and (= b_2_1@3 b_2_1@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 31) 29) anon34_Then_correct) (=> (= (ControlFlow 0 31) 24) anon34_Else_correct))))))
(let ((anon32_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 34) 31) anon33_Then_correct) (=> (= (ControlFlow 0 34) 32) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 33) 31) anon33_Then_correct) (=> (= (ControlFlow 0 33) 32) anon33_Else_correct)))))
(let ((anon31_Then_correct  (=> (and (and (and (and (and b_1_1@5 b_1_1@5) b_2_1@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Ops_1Mask@1) x l_8))) (and (=> (= (ControlFlow 0 35) 33) anon32_Then_correct) (=> (= (ControlFlow 0 35) 34) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (not (and (and (and (and b_1_1@5 b_1_1@5) b_2_1@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@3 Ops_1Mask@1) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 30) 29) anon34_Then_correct) (=> (= (ControlFlow 0 30) 24) anon34_Else_correct))))))
(let ((anon2_correct  (=> (and (and (= b_1_1@4  (and b_1_1@3 (state Ops_1Heap@0 Ops_1Mask@1))) (= b_1_1@5  (and b_1_1@4 (state Ops_1Heap@0 Ops_1Mask@1)))) (and (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| ZeroMask) x l_8) FullPerm)))) (and (=> (= (ControlFlow 0 36) (- 0 37)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 36) 35) anon31_Then_correct) (=> (= (ControlFlow 0 36) 30) anon31_Else_correct)))))))
(let ((anon30_Else_correct  (=> (and (and (not b_1_1@0) (= Ops_1Mask@1 ZeroMask)) (and (= b_1_1@3 b_1_1@0) (= (ControlFlow 0 39) 36))) anon2_correct)))
(let ((anon30_Then_correct  (=> b_1_1@0 (=> (and (= b_1_1@1  (and b_1_1@0 (not (= x null)))) (= Ops_1Mask@0 (PolymorphicMapType_9427 (store (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| ZeroMask) x l_8 (+ (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| ZeroMask) x l_8) FullPerm)) (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| ZeroMask)))) (=> (and (and (= b_1_1@2  (and b_1_1@1 (state Ops_1Heap@0 Ops_1Mask@0))) (= Ops_1Mask@1 Ops_1Mask@0)) (and (= b_1_1@3 b_1_1@2) (= (ControlFlow 0 38) 36))) anon2_correct)))))
(let ((anon0_correct  (=> (and (state Heap@@59 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_9406_5286_53#PolymorphicMapType_9406| Heap@@59) x $allocated) (not (= x null))) (and (= Mask@0 (PolymorphicMapType_9427 (store (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| ZeroMask) x l_8 (+ (select (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| ZeroMask) x l_8) FullPerm)) (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| ZeroMask) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| ZeroMask))) (state Heap@@59 Mask@0))) (and (=> (= (ControlFlow 0 40) (- 0 43)) (HasDirectPerm_5605_5606 Mask@0 x l_8)) (=> (HasDirectPerm_5605_5606 Mask@0 x l_8) (=> (and (and (not (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@59) x l_8) null)) (= Mask@1 (PolymorphicMapType_9427 (|PolymorphicMapType_9427_5605_5606#PolymorphicMapType_9427| Mask@0) (store (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Mask@0) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@59) x l_8) v_36 (+ (select (|PolymorphicMapType_9427_5603_2380#PolymorphicMapType_9427| Mask@0) (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@59) x l_8) v_36) FullPerm)) (|PolymorphicMapType_9427_5420_1211#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5496_1655#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5585_2181#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5605_1211#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5605_48149#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5605_12827#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5420_5606#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5420_2380#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5420_48563#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5420_12827#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5496_5606#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5496_2380#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5496_48977#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5496_12827#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5585_5606#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5585_2380#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5585_49391#PolymorphicMapType_9427| Mask@0) (|PolymorphicMapType_9427_5585_12827#PolymorphicMapType_9427| Mask@0)))) (and (state Heap@@59 Mask@1) (state Heap@@59 Mask@1))) (and (=> (= (ControlFlow 0 40) (- 0 42)) (HasDirectPerm_5605_5606 Mask@1 x l_8)) (=> (HasDirectPerm_5605_5606 Mask@1 x l_8) (and (=> (= (ControlFlow 0 40) (- 0 41)) (not (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@59) x l_8) null))) (=> (not (= (select (|PolymorphicMapType_9406_5289_5290#PolymorphicMapType_9406| Heap@@59) x l_8) null)) (=> (state Heap@@59 Mask@1) (=> (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 40) 38) anon30_Then_correct) (=> (= (ControlFlow 0 40) 39) anon30_Else_correct)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 44) 40) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)