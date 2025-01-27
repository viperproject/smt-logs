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
(declare-sort T@Field_21804_53 0)
(declare-sort T@Field_21817_21818 0)
(declare-sort T@Field_26989_26990 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_26942_2202 0)
(declare-sort T@Field_27002_27007 0)
(declare-sort T@Field_25149_25154 0)
(declare-sort T@Field_26083_26088 0)
(declare-sort T@Field_11782_11792 0)
(declare-sort T@Field_11782_25154 0)
(declare-sort T@Field_11791_11783 0)
(declare-sort T@Field_11791_2202 0)
(declare-sort T@Field_11791_53 0)
(declare-sort T@Field_25134_11783 0)
(declare-sort T@Field_25134_1219 0)
(declare-sort T@Field_25167_25168 0)
(declare-sort T@Field_25134_53 0)
(declare-sort T@Field_26069_11783 0)
(declare-sort T@Field_26069_1761 0)
(declare-sort T@Field_26100_26101 0)
(declare-sort T@Field_26069_53 0)
(declare-datatypes ((T@PolymorphicMapType_21765 0)) (((PolymorphicMapType_21765 (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| (Array T@Ref T@Field_21817_21818 Real)) (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| (Array T@Ref T@Field_26942_2202 Real)) (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| (Array T@Ref T@Field_26989_26990 Real)) (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| (Array T@Ref T@Field_25134_1219 Real)) (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| (Array T@Ref T@Field_26069_1761 Real)) (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| (Array T@Ref T@Field_11782_11792 Real)) (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| (Array T@Ref T@Field_21804_53 Real)) (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| (Array T@Ref T@Field_11782_25154 Real)) (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| (Array T@Ref T@Field_11791_11783 Real)) (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| (Array T@Ref T@Field_11791_2202 Real)) (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| (Array T@Ref T@Field_11791_53 Real)) (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| (Array T@Ref T@Field_27002_27007 Real)) (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| (Array T@Ref T@Field_25134_11783 Real)) (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| (Array T@Ref T@Field_25167_25168 Real)) (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| (Array T@Ref T@Field_25134_53 Real)) (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| (Array T@Ref T@Field_25149_25154 Real)) (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| (Array T@Ref T@Field_26069_11783 Real)) (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| (Array T@Ref T@Field_26100_26101 Real)) (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| (Array T@Ref T@Field_26069_53 Real)) (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| (Array T@Ref T@Field_26083_26088 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22293 0)) (((PolymorphicMapType_22293 (|PolymorphicMapType_22293_11782_11783#PolymorphicMapType_22293| (Array T@Ref T@Field_21817_21818 Bool)) (|PolymorphicMapType_22293_11788_2202#PolymorphicMapType_22293| (Array T@Ref T@Field_26942_2202 Bool)) (|PolymorphicMapType_22293_11782_53#PolymorphicMapType_22293| (Array T@Ref T@Field_21804_53 Bool)) (|PolymorphicMapType_22293_11782_80072#PolymorphicMapType_22293| (Array T@Ref T@Field_11782_25154 Bool)) (|PolymorphicMapType_22293_11782_25168#PolymorphicMapType_22293| (Array T@Ref T@Field_11782_11792 Bool)) (|PolymorphicMapType_22293_25134_11783#PolymorphicMapType_22293| (Array T@Ref T@Field_25134_11783 Bool)) (|PolymorphicMapType_22293_25134_2202#PolymorphicMapType_22293| (Array T@Ref T@Field_25134_1219 Bool)) (|PolymorphicMapType_22293_25134_53#PolymorphicMapType_22293| (Array T@Ref T@Field_25134_53 Bool)) (|PolymorphicMapType_22293_25134_81120#PolymorphicMapType_22293| (Array T@Ref T@Field_25149_25154 Bool)) (|PolymorphicMapType_22293_25134_25168#PolymorphicMapType_22293| (Array T@Ref T@Field_25167_25168 Bool)) (|PolymorphicMapType_22293_26069_11783#PolymorphicMapType_22293| (Array T@Ref T@Field_26069_11783 Bool)) (|PolymorphicMapType_22293_26069_2202#PolymorphicMapType_22293| (Array T@Ref T@Field_26069_1761 Bool)) (|PolymorphicMapType_22293_26069_53#PolymorphicMapType_22293| (Array T@Ref T@Field_26069_53 Bool)) (|PolymorphicMapType_22293_26069_82168#PolymorphicMapType_22293| (Array T@Ref T@Field_26083_26088 Bool)) (|PolymorphicMapType_22293_26069_25168#PolymorphicMapType_22293| (Array T@Ref T@Field_26100_26101 Bool)) (|PolymorphicMapType_22293_26989_11783#PolymorphicMapType_22293| (Array T@Ref T@Field_11791_11783 Bool)) (|PolymorphicMapType_22293_26989_2202#PolymorphicMapType_22293| (Array T@Ref T@Field_11791_2202 Bool)) (|PolymorphicMapType_22293_26989_53#PolymorphicMapType_22293| (Array T@Ref T@Field_11791_53 Bool)) (|PolymorphicMapType_22293_26989_83216#PolymorphicMapType_22293| (Array T@Ref T@Field_27002_27007 Bool)) (|PolymorphicMapType_22293_26989_25168#PolymorphicMapType_22293| (Array T@Ref T@Field_26989_26990 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_21744 0)) (((PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| (Array T@Ref T@Field_21804_53 Bool)) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| (Array T@Ref T@Field_21817_21818 T@Ref)) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| (Array T@Ref T@Field_26989_26990 T@FrameType)) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| (Array T@Ref T@Field_26942_2202 Int)) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| (Array T@Ref T@Field_27002_27007 T@PolymorphicMapType_22293)) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| (Array T@Ref T@Field_25149_25154 T@PolymorphicMapType_22293)) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| (Array T@Ref T@Field_26083_26088 T@PolymorphicMapType_22293)) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| (Array T@Ref T@Field_11782_11792 T@FrameType)) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| (Array T@Ref T@Field_11782_25154 T@PolymorphicMapType_22293)) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| (Array T@Ref T@Field_11791_11783 T@Ref)) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| (Array T@Ref T@Field_11791_2202 Int)) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| (Array T@Ref T@Field_11791_53 Bool)) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| (Array T@Ref T@Field_25134_11783 T@Ref)) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| (Array T@Ref T@Field_25134_1219 Int)) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| (Array T@Ref T@Field_25167_25168 T@FrameType)) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| (Array T@Ref T@Field_25134_53 Bool)) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| (Array T@Ref T@Field_26069_11783 T@Ref)) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| (Array T@Ref T@Field_26069_1761 Int)) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| (Array T@Ref T@Field_26100_26101 T@FrameType)) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| (Array T@Ref T@Field_26069_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_21804_53)
(declare-fun f1_2 () T@Field_21817_21818)
(declare-fun f2_2 () T@Field_21817_21818)
(declare-fun val () T@Field_26942_2202)
(declare-fun WandMaskField_11660 (T@Field_25167_25168) T@Field_25149_25154)
(declare-fun |wand#ft| (T@Ref Real T@Ref Real T@Ref Real T@Ref Int) T@Field_25167_25168)
(declare-fun |wand#sm| (T@Ref Real T@Ref Real T@Ref Real T@Ref Int) T@Field_25149_25154)
(declare-fun succHeap (T@PolymorphicMapType_21744 T@PolymorphicMapType_21744) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_21744 T@PolymorphicMapType_21744) Bool)
(declare-fun state (T@PolymorphicMapType_21744 T@PolymorphicMapType_21765) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_21765) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_22293)
(declare-fun Foo (T@Ref) T@Field_26989_26990)
(declare-fun IsPredicateField_11791_11792 (T@Field_26989_26990) Bool)
(declare-fun |Foo#trigger_11791| (T@PolymorphicMapType_21744 T@Field_26989_26990) Bool)
(declare-fun |Foo#everUsed_11791| (T@Field_26989_26990) Bool)
(declare-fun WandMaskField_11739 (T@Field_26100_26101) T@Field_26083_26088)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref Real T@Ref Int) T@Field_26100_26101)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref Real T@Ref Int) T@Field_26083_26088)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_21744 T@PolymorphicMapType_21744 T@PolymorphicMapType_21765) Bool)
(declare-fun IsPredicateField_11739_11740 (T@Field_26100_26101) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_26069 (T@Field_26100_26101) T@Field_26083_26088)
(declare-fun HasDirectPerm_26069_11792 (T@PolymorphicMapType_21765 T@Ref T@Field_26100_26101) Bool)
(declare-fun IsPredicateField_11660_11661 (T@Field_25167_25168) Bool)
(declare-fun PredicateMaskField_25134 (T@Field_25167_25168) T@Field_25149_25154)
(declare-fun HasDirectPerm_25134_11792 (T@PolymorphicMapType_21765 T@Ref T@Field_25167_25168) Bool)
(declare-fun PredicateMaskField_11791 (T@Field_26989_26990) T@Field_27002_27007)
(declare-fun HasDirectPerm_11791_11792 (T@PolymorphicMapType_21765 T@Ref T@Field_26989_26990) Bool)
(declare-fun IsPredicateField_11782_78119 (T@Field_11782_11792) Bool)
(declare-fun PredicateMaskField_11782 (T@Field_11782_11792) T@Field_11782_25154)
(declare-fun HasDirectPerm_11782_11792 (T@PolymorphicMapType_21765 T@Ref T@Field_11782_11792) Bool)
(declare-fun IsWandField_11739_11740 (T@Field_26100_26101) Bool)
(declare-fun IsWandField_11660_11661 (T@Field_25167_25168) Bool)
(declare-fun IsWandField_11791_85147 (T@Field_26989_26990) Bool)
(declare-fun WandMaskField_11791 (T@Field_26989_26990) T@Field_27002_27007)
(declare-fun IsWandField_11782_84790 (T@Field_11782_11792) Bool)
(declare-fun WandMaskField_11782 (T@Field_11782_11792) T@Field_11782_25154)
(declare-fun |Foo#sm| (T@Ref) T@Field_27002_27007)
(declare-fun wand (T@Ref Real T@Ref Real T@Ref Real T@Ref Int) T@Field_25134_1219)
(declare-fun IsWandField_11641_1219 (T@Field_25134_1219) Bool)
(declare-fun IsPredicateField_11641_1219 (T@Field_25134_1219) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_21744)
(declare-fun ZeroMask () T@PolymorphicMapType_21765)
(declare-fun InsidePredicate_26989_26989 (T@Field_26989_26990 T@FrameType T@Field_26989_26990 T@FrameType) Bool)
(declare-fun InsidePredicate_26069_26069 (T@Field_26100_26101 T@FrameType T@Field_26100_26101 T@FrameType) Bool)
(declare-fun InsidePredicate_25134_25134 (T@Field_25167_25168 T@FrameType T@Field_25167_25168 T@FrameType) Bool)
(declare-fun InsidePredicate_21804_21804 (T@Field_11782_11792 T@FrameType T@Field_11782_11792 T@FrameType) Bool)
(declare-fun IsPredicateField_11782_11783 (T@Field_21817_21818) Bool)
(declare-fun IsWandField_11782_11783 (T@Field_21817_21818) Bool)
(declare-fun IsPredicateField_11788_2202 (T@Field_26942_2202) Bool)
(declare-fun IsWandField_11788_2202 (T@Field_26942_2202) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11724_99450 (T@Field_26083_26088) Bool)
(declare-fun IsWandField_11724_99466 (T@Field_26083_26088) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11724_53 (T@Field_26069_53) Bool)
(declare-fun IsWandField_11724_53 (T@Field_26069_53) Bool)
(declare-fun IsPredicateField_11724_1761 (T@Field_26069_1761) Bool)
(declare-fun IsWandField_11724_1761 (T@Field_26069_1761) Bool)
(declare-fun IsPredicateField_11724_11783 (T@Field_26069_11783) Bool)
(declare-fun IsWandField_11724_11783 (T@Field_26069_11783) Bool)
(declare-fun IsPredicateField_11641_98633 (T@Field_25149_25154) Bool)
(declare-fun IsWandField_11641_98649 (T@Field_25149_25154) Bool)
(declare-fun IsPredicateField_11641_53 (T@Field_25134_53) Bool)
(declare-fun IsWandField_11641_53 (T@Field_25134_53) Bool)
(declare-fun IsPredicateField_11641_11783 (T@Field_25134_11783) Bool)
(declare-fun IsWandField_11641_11783 (T@Field_25134_11783) Bool)
(declare-fun IsPredicateField_11791_97816 (T@Field_27002_27007) Bool)
(declare-fun IsWandField_11791_97832 (T@Field_27002_27007) Bool)
(declare-fun IsPredicateField_11791_53 (T@Field_11791_53) Bool)
(declare-fun IsWandField_11791_53 (T@Field_11791_53) Bool)
(declare-fun IsPredicateField_11791_2202 (T@Field_11791_2202) Bool)
(declare-fun IsWandField_11791_2202 (T@Field_11791_2202) Bool)
(declare-fun IsPredicateField_11791_11783 (T@Field_11791_11783) Bool)
(declare-fun IsWandField_11791_11783 (T@Field_11791_11783) Bool)
(declare-fun IsPredicateField_11782_96985 (T@Field_11782_25154) Bool)
(declare-fun IsWandField_11782_97001 (T@Field_11782_25154) Bool)
(declare-fun IsPredicateField_11782_53 (T@Field_21804_53) Bool)
(declare-fun IsWandField_11782_53 (T@Field_21804_53) Bool)
(declare-fun HasDirectPerm_26069_77874 (T@PolymorphicMapType_21765 T@Ref T@Field_26083_26088) Bool)
(declare-fun HasDirectPerm_26069_53 (T@PolymorphicMapType_21765 T@Ref T@Field_26069_53) Bool)
(declare-fun HasDirectPerm_26069_2202 (T@PolymorphicMapType_21765 T@Ref T@Field_26069_1761) Bool)
(declare-fun HasDirectPerm_26069_11783 (T@PolymorphicMapType_21765 T@Ref T@Field_26069_11783) Bool)
(declare-fun HasDirectPerm_25134_76740 (T@PolymorphicMapType_21765 T@Ref T@Field_25149_25154) Bool)
(declare-fun HasDirectPerm_25134_53 (T@PolymorphicMapType_21765 T@Ref T@Field_25134_53) Bool)
(declare-fun HasDirectPerm_25134_2202 (T@PolymorphicMapType_21765 T@Ref T@Field_25134_1219) Bool)
(declare-fun HasDirectPerm_25134_11783 (T@PolymorphicMapType_21765 T@Ref T@Field_25134_11783) Bool)
(declare-fun HasDirectPerm_11791_75606 (T@PolymorphicMapType_21765 T@Ref T@Field_27002_27007) Bool)
(declare-fun HasDirectPerm_11791_53 (T@PolymorphicMapType_21765 T@Ref T@Field_11791_53) Bool)
(declare-fun HasDirectPerm_11791_2202 (T@PolymorphicMapType_21765 T@Ref T@Field_11791_2202) Bool)
(declare-fun HasDirectPerm_11791_11783 (T@PolymorphicMapType_21765 T@Ref T@Field_11791_11783) Bool)
(declare-fun HasDirectPerm_11782_74465 (T@PolymorphicMapType_21765 T@Ref T@Field_11782_25154) Bool)
(declare-fun HasDirectPerm_11782_53 (T@PolymorphicMapType_21765 T@Ref T@Field_21804_53) Bool)
(declare-fun HasDirectPerm_11788_2202 (T@PolymorphicMapType_21765 T@Ref T@Field_26942_2202) Bool)
(declare-fun HasDirectPerm_11782_11783 (T@PolymorphicMapType_21765 T@Ref T@Field_21817_21818) Bool)
(declare-fun wand_1 (T@Ref Real T@Ref Real T@Ref Int) T@Field_26069_1761)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun getPredWandId_11724_1761 (T@Field_26069_1761) Int)
(declare-fun sumMask (T@PolymorphicMapType_21765 T@PolymorphicMapType_21765 T@PolymorphicMapType_21765) Bool)
(declare-fun getPredWandId_11641_1219 (T@Field_25134_1219) Int)
(declare-fun getPredWandId_11791_11792 (T@Field_26989_26990) Int)
(declare-fun InsidePredicate_26989_26069 (T@Field_26989_26990 T@FrameType T@Field_26100_26101 T@FrameType) Bool)
(declare-fun InsidePredicate_26989_25134 (T@Field_26989_26990 T@FrameType T@Field_25167_25168 T@FrameType) Bool)
(declare-fun InsidePredicate_26989_21804 (T@Field_26989_26990 T@FrameType T@Field_11782_11792 T@FrameType) Bool)
(declare-fun InsidePredicate_26069_26989 (T@Field_26100_26101 T@FrameType T@Field_26989_26990 T@FrameType) Bool)
(declare-fun InsidePredicate_26069_25134 (T@Field_26100_26101 T@FrameType T@Field_25167_25168 T@FrameType) Bool)
(declare-fun InsidePredicate_26069_21804 (T@Field_26100_26101 T@FrameType T@Field_11782_11792 T@FrameType) Bool)
(declare-fun InsidePredicate_25134_26989 (T@Field_25167_25168 T@FrameType T@Field_26989_26990 T@FrameType) Bool)
(declare-fun InsidePredicate_25134_26069 (T@Field_25167_25168 T@FrameType T@Field_26100_26101 T@FrameType) Bool)
(declare-fun InsidePredicate_25134_21804 (T@Field_25167_25168 T@FrameType T@Field_11782_11792 T@FrameType) Bool)
(declare-fun InsidePredicate_21804_26989 (T@Field_11782_11792 T@FrameType T@Field_26989_26990 T@FrameType) Bool)
(declare-fun InsidePredicate_21804_26069 (T@Field_11782_11792 T@FrameType T@Field_26100_26101 T@FrameType) Bool)
(declare-fun InsidePredicate_21804_25134 (T@Field_11782_11792 T@FrameType T@Field_25167_25168 T@FrameType) Bool)
(assert (distinct f1_2 f2_2)
)
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Real) (arg5 T@Ref) (arg6 Real) (arg7 T@Ref) (arg8 Int) ) (! (= (|wand#sm| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8) (WandMaskField_11660 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_11660 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_21744) (Heap1 T@PolymorphicMapType_21744) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_21744) (Mask T@PolymorphicMapType_21765) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_21744) (Heap1@@0 T@PolymorphicMapType_21744) (Heap2 T@PolymorphicMapType_21744) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_26989_26990) ) (!  (not (select (|PolymorphicMapType_22293_26989_25168#PolymorphicMapType_22293| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_26989_25168#PolymorphicMapType_22293| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_27002_27007) ) (!  (not (select (|PolymorphicMapType_22293_26989_83216#PolymorphicMapType_22293| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_26989_83216#PolymorphicMapType_22293| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11791_53) ) (!  (not (select (|PolymorphicMapType_22293_26989_53#PolymorphicMapType_22293| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_26989_53#PolymorphicMapType_22293| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11791_2202) ) (!  (not (select (|PolymorphicMapType_22293_26989_2202#PolymorphicMapType_22293| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_26989_2202#PolymorphicMapType_22293| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11791_11783) ) (!  (not (select (|PolymorphicMapType_22293_26989_11783#PolymorphicMapType_22293| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_26989_11783#PolymorphicMapType_22293| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_26100_26101) ) (!  (not (select (|PolymorphicMapType_22293_26069_25168#PolymorphicMapType_22293| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_26069_25168#PolymorphicMapType_22293| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_26083_26088) ) (!  (not (select (|PolymorphicMapType_22293_26069_82168#PolymorphicMapType_22293| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_26069_82168#PolymorphicMapType_22293| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_26069_53) ) (!  (not (select (|PolymorphicMapType_22293_26069_53#PolymorphicMapType_22293| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_26069_53#PolymorphicMapType_22293| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_26069_1761) ) (!  (not (select (|PolymorphicMapType_22293_26069_2202#PolymorphicMapType_22293| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_26069_2202#PolymorphicMapType_22293| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_26069_11783) ) (!  (not (select (|PolymorphicMapType_22293_26069_11783#PolymorphicMapType_22293| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_26069_11783#PolymorphicMapType_22293| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_25167_25168) ) (!  (not (select (|PolymorphicMapType_22293_25134_25168#PolymorphicMapType_22293| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_25134_25168#PolymorphicMapType_22293| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_25149_25154) ) (!  (not (select (|PolymorphicMapType_22293_25134_81120#PolymorphicMapType_22293| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_25134_81120#PolymorphicMapType_22293| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_25134_53) ) (!  (not (select (|PolymorphicMapType_22293_25134_53#PolymorphicMapType_22293| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_25134_53#PolymorphicMapType_22293| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_25134_1219) ) (!  (not (select (|PolymorphicMapType_22293_25134_2202#PolymorphicMapType_22293| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_25134_2202#PolymorphicMapType_22293| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_25134_11783) ) (!  (not (select (|PolymorphicMapType_22293_25134_11783#PolymorphicMapType_22293| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_25134_11783#PolymorphicMapType_22293| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11782_11792) ) (!  (not (select (|PolymorphicMapType_22293_11782_25168#PolymorphicMapType_22293| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_11782_25168#PolymorphicMapType_22293| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_11782_25154) ) (!  (not (select (|PolymorphicMapType_22293_11782_80072#PolymorphicMapType_22293| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_11782_80072#PolymorphicMapType_22293| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_21804_53) ) (!  (not (select (|PolymorphicMapType_22293_11782_53#PolymorphicMapType_22293| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_11782_53#PolymorphicMapType_22293| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_26942_2202) ) (!  (not (select (|PolymorphicMapType_22293_11788_2202#PolymorphicMapType_22293| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_11788_2202#PolymorphicMapType_22293| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_21817_21818) ) (!  (not (select (|PolymorphicMapType_22293_11782_11783#PolymorphicMapType_22293| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22293_11782_11783#PolymorphicMapType_22293| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_11791_11792 (Foo self))
 :qid |stdinbpl.270:15|
 :skolemid |37|
 :pattern ( (Foo self))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_21744) (self@@0 T@Ref) ) (! (|Foo#everUsed_11791| (Foo self@@0))
 :qid |stdinbpl.289:15|
 :skolemid |41|
 :pattern ( (|Foo#trigger_11791| Heap@@0 (Foo self@@0)))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 Real) (arg5@@0 T@Ref) (arg6@@0 Int) ) (! (= (|wand_1#sm| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0) (WandMaskField_11739 (|wand_1#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_11739 (|wand_1#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_21744) (ExhaleHeap T@PolymorphicMapType_21744) (Mask@@0 T@PolymorphicMapType_21765) (pm_f_1 T@Field_26100_26101) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_26069_11792 Mask@@0 null pm_f_1) (IsPredicateField_11739_11740 pm_f_1)) (= (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@1) null (PredicateMaskField_26069 pm_f_1)) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap) null (PredicateMaskField_26069 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_11739_11740 pm_f_1) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap) null (PredicateMaskField_26069 pm_f_1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_21744) (ExhaleHeap@@0 T@PolymorphicMapType_21744) (Mask@@1 T@PolymorphicMapType_21765) (pm_f_1@@0 T@Field_25167_25168) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_25134_11792 Mask@@1 null pm_f_1@@0) (IsPredicateField_11660_11661 pm_f_1@@0)) (= (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@2) null (PredicateMaskField_25134 pm_f_1@@0)) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@0) null (PredicateMaskField_25134 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_11660_11661 pm_f_1@@0) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@0) null (PredicateMaskField_25134 pm_f_1@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_21744) (ExhaleHeap@@1 T@PolymorphicMapType_21744) (Mask@@2 T@PolymorphicMapType_21765) (pm_f_1@@1 T@Field_26989_26990) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11791_11792 Mask@@2 null pm_f_1@@1) (IsPredicateField_11791_11792 pm_f_1@@1)) (= (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@3) null (PredicateMaskField_11791 pm_f_1@@1)) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@1) null (PredicateMaskField_11791 pm_f_1@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_11791_11792 pm_f_1@@1) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@1) null (PredicateMaskField_11791 pm_f_1@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_21744) (ExhaleHeap@@2 T@PolymorphicMapType_21744) (Mask@@3 T@PolymorphicMapType_21765) (pm_f_1@@2 T@Field_11782_11792) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11782_11792 Mask@@3 null pm_f_1@@2) (IsPredicateField_11782_78119 pm_f_1@@2)) (= (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@4) null (PredicateMaskField_11782 pm_f_1@@2)) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@2) null (PredicateMaskField_11782 pm_f_1@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsPredicateField_11782_78119 pm_f_1@@2) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@2) null (PredicateMaskField_11782 pm_f_1@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_21744) (ExhaleHeap@@3 T@PolymorphicMapType_21744) (Mask@@4 T@PolymorphicMapType_21765) (pm_f_1@@3 T@Field_26100_26101) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_26069_11792 Mask@@4 null pm_f_1@@3) (IsWandField_11739_11740 pm_f_1@@3)) (= (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@5) null (WandMaskField_11739 pm_f_1@@3)) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@3) null (WandMaskField_11739 pm_f_1@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsWandField_11739_11740 pm_f_1@@3) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@3) null (WandMaskField_11739 pm_f_1@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_21744) (ExhaleHeap@@4 T@PolymorphicMapType_21744) (Mask@@5 T@PolymorphicMapType_21765) (pm_f_1@@4 T@Field_25167_25168) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_25134_11792 Mask@@5 null pm_f_1@@4) (IsWandField_11660_11661 pm_f_1@@4)) (= (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@6) null (WandMaskField_11660 pm_f_1@@4)) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@4) null (WandMaskField_11660 pm_f_1@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_11660_11661 pm_f_1@@4) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@4) null (WandMaskField_11660 pm_f_1@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_21744) (ExhaleHeap@@5 T@PolymorphicMapType_21744) (Mask@@6 T@PolymorphicMapType_21765) (pm_f_1@@5 T@Field_26989_26990) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11791_11792 Mask@@6 null pm_f_1@@5) (IsWandField_11791_85147 pm_f_1@@5)) (= (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@7) null (WandMaskField_11791 pm_f_1@@5)) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@5) null (WandMaskField_11791 pm_f_1@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_11791_85147 pm_f_1@@5) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@5) null (WandMaskField_11791 pm_f_1@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_21744) (ExhaleHeap@@6 T@PolymorphicMapType_21744) (Mask@@7 T@PolymorphicMapType_21765) (pm_f_1@@6 T@Field_11782_11792) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_11782_11792 Mask@@7 null pm_f_1@@6) (IsWandField_11782_84790 pm_f_1@@6)) (= (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@8) null (WandMaskField_11782 pm_f_1@@6)) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@6) null (WandMaskField_11782 pm_f_1@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_11782_84790 pm_f_1@@6) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@6) null (WandMaskField_11782 pm_f_1@@6)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_21744) (ExhaleHeap@@7 T@PolymorphicMapType_21744) (Mask@@8 T@PolymorphicMapType_21765) (pm_f_1@@7 T@Field_26100_26101) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_26069_11792 Mask@@8 null pm_f_1@@7) (IsPredicateField_11739_11740 pm_f_1@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_21817_21818) ) (!  (=> (select (|PolymorphicMapType_22293_11782_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1 f_9) (= (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@9) o2_1 f_9) (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_26942_2202) ) (!  (=> (select (|PolymorphicMapType_22293_11788_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@9) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_21804_53) ) (!  (=> (select (|PolymorphicMapType_22293_11782_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@9) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_11782_25154) ) (!  (=> (select (|PolymorphicMapType_22293_11782_80072#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@9) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@2 f_9@@2))
))) (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_11782_11792) ) (!  (=> (select (|PolymorphicMapType_22293_11782_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@9) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@3 f_9@@3))
))) (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_25134_11783) ) (!  (=> (select (|PolymorphicMapType_22293_25134_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@9) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@4 f_9@@4))
))) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_25134_1219) ) (!  (=> (select (|PolymorphicMapType_22293_25134_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@9) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_25134_53) ) (!  (=> (select (|PolymorphicMapType_22293_25134_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@9) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@6 f_9@@6))
))) (forall ((o2_1@@7 T@Ref) (f_9@@7 T@Field_25149_25154) ) (!  (=> (select (|PolymorphicMapType_22293_25134_81120#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@7 f_9@@7) (= (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@9) o2_1@@7 f_9@@7) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@7 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@7 f_9@@7))
))) (forall ((o2_1@@8 T@Ref) (f_9@@8 T@Field_25167_25168) ) (!  (=> (select (|PolymorphicMapType_22293_25134_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@8 f_9@@8) (= (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@9) o2_1@@8 f_9@@8) (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@8 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@8 f_9@@8))
))) (forall ((o2_1@@9 T@Ref) (f_9@@9 T@Field_26069_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26069_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@9 f_9@@9) (= (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@9) o2_1@@9 f_9@@9) (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@9 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@9 f_9@@9))
))) (forall ((o2_1@@10 T@Ref) (f_9@@10 T@Field_26069_1761) ) (!  (=> (select (|PolymorphicMapType_22293_26069_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@10 f_9@@10) (= (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@9) o2_1@@10 f_9@@10) (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@10 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@10 f_9@@10))
))) (forall ((o2_1@@11 T@Ref) (f_9@@11 T@Field_26069_53) ) (!  (=> (select (|PolymorphicMapType_22293_26069_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@11 f_9@@11) (= (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@9) o2_1@@11 f_9@@11) (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@11 f_9@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@11 f_9@@11))
))) (forall ((o2_1@@12 T@Ref) (f_9@@12 T@Field_26083_26088) ) (!  (=> (select (|PolymorphicMapType_22293_26069_82168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@12 f_9@@12) (= (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) o2_1@@12 f_9@@12) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@12 f_9@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@12 f_9@@12))
))) (forall ((o2_1@@13 T@Ref) (f_9@@13 T@Field_26100_26101) ) (!  (=> (select (|PolymorphicMapType_22293_26069_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@13 f_9@@13) (= (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@9) o2_1@@13 f_9@@13) (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@13 f_9@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@13 f_9@@13))
))) (forall ((o2_1@@14 T@Ref) (f_9@@14 T@Field_11791_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26989_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@14 f_9@@14) (= (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@9) o2_1@@14 f_9@@14) (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@14 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@14 f_9@@14))
))) (forall ((o2_1@@15 T@Ref) (f_9@@15 T@Field_11791_2202) ) (!  (=> (select (|PolymorphicMapType_22293_26989_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@15 f_9@@15) (= (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@9) o2_1@@15 f_9@@15) (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@15 f_9@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@15 f_9@@15))
))) (forall ((o2_1@@16 T@Ref) (f_9@@16 T@Field_11791_53) ) (!  (=> (select (|PolymorphicMapType_22293_26989_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@16 f_9@@16) (= (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@9) o2_1@@16 f_9@@16) (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@16 f_9@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@16 f_9@@16))
))) (forall ((o2_1@@17 T@Ref) (f_9@@17 T@Field_27002_27007) ) (!  (=> (select (|PolymorphicMapType_22293_26989_83216#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@17 f_9@@17) (= (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@9) o2_1@@17 f_9@@17) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@17 f_9@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@17 f_9@@17))
))) (forall ((o2_1@@18 T@Ref) (f_9@@18 T@Field_26989_26990) ) (!  (=> (select (|PolymorphicMapType_22293_26989_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@9) null (PredicateMaskField_26069 pm_f_1@@7))) o2_1@@18 f_9@@18) (= (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@9) o2_1@@18 f_9@@18) (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@18 f_9@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@7) o2_1@@18 f_9@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (IsPredicateField_11739_11740 pm_f_1@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_21744) (ExhaleHeap@@8 T@PolymorphicMapType_21744) (Mask@@9 T@PolymorphicMapType_21765) (pm_f_1@@8 T@Field_25167_25168) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_25134_11792 Mask@@9 null pm_f_1@@8) (IsPredicateField_11660_11661 pm_f_1@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@19 T@Ref) (f_9@@19 T@Field_21817_21818) ) (!  (=> (select (|PolymorphicMapType_22293_11782_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@19 f_9@@19) (= (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@10) o2_1@@19 f_9@@19) (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@19 f_9@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@19 f_9@@19))
)) (forall ((o2_1@@20 T@Ref) (f_9@@20 T@Field_26942_2202) ) (!  (=> (select (|PolymorphicMapType_22293_11788_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@20 f_9@@20) (= (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@10) o2_1@@20 f_9@@20) (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@20 f_9@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@20 f_9@@20))
))) (forall ((o2_1@@21 T@Ref) (f_9@@21 T@Field_21804_53) ) (!  (=> (select (|PolymorphicMapType_22293_11782_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@21 f_9@@21) (= (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@10) o2_1@@21 f_9@@21) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@21 f_9@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@21 f_9@@21))
))) (forall ((o2_1@@22 T@Ref) (f_9@@22 T@Field_11782_25154) ) (!  (=> (select (|PolymorphicMapType_22293_11782_80072#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@22 f_9@@22) (= (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@10) o2_1@@22 f_9@@22) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@22 f_9@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@22 f_9@@22))
))) (forall ((o2_1@@23 T@Ref) (f_9@@23 T@Field_11782_11792) ) (!  (=> (select (|PolymorphicMapType_22293_11782_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@23 f_9@@23) (= (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@10) o2_1@@23 f_9@@23) (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@23 f_9@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@23 f_9@@23))
))) (forall ((o2_1@@24 T@Ref) (f_9@@24 T@Field_25134_11783) ) (!  (=> (select (|PolymorphicMapType_22293_25134_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@24 f_9@@24) (= (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@10) o2_1@@24 f_9@@24) (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@24 f_9@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@24 f_9@@24))
))) (forall ((o2_1@@25 T@Ref) (f_9@@25 T@Field_25134_1219) ) (!  (=> (select (|PolymorphicMapType_22293_25134_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@25 f_9@@25) (= (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@10) o2_1@@25 f_9@@25) (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@25 f_9@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@25 f_9@@25))
))) (forall ((o2_1@@26 T@Ref) (f_9@@26 T@Field_25134_53) ) (!  (=> (select (|PolymorphicMapType_22293_25134_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@26 f_9@@26) (= (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@10) o2_1@@26 f_9@@26) (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@26 f_9@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@26 f_9@@26))
))) (forall ((o2_1@@27 T@Ref) (f_9@@27 T@Field_25149_25154) ) (!  (=> (select (|PolymorphicMapType_22293_25134_81120#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@27 f_9@@27) (= (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) o2_1@@27 f_9@@27) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@27 f_9@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@27 f_9@@27))
))) (forall ((o2_1@@28 T@Ref) (f_9@@28 T@Field_25167_25168) ) (!  (=> (select (|PolymorphicMapType_22293_25134_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@28 f_9@@28) (= (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@10) o2_1@@28 f_9@@28) (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@28 f_9@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@28 f_9@@28))
))) (forall ((o2_1@@29 T@Ref) (f_9@@29 T@Field_26069_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26069_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@29 f_9@@29) (= (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@10) o2_1@@29 f_9@@29) (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@29 f_9@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@29 f_9@@29))
))) (forall ((o2_1@@30 T@Ref) (f_9@@30 T@Field_26069_1761) ) (!  (=> (select (|PolymorphicMapType_22293_26069_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@30 f_9@@30) (= (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@10) o2_1@@30 f_9@@30) (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@30 f_9@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@30 f_9@@30))
))) (forall ((o2_1@@31 T@Ref) (f_9@@31 T@Field_26069_53) ) (!  (=> (select (|PolymorphicMapType_22293_26069_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@31 f_9@@31) (= (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@10) o2_1@@31 f_9@@31) (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@31 f_9@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@31 f_9@@31))
))) (forall ((o2_1@@32 T@Ref) (f_9@@32 T@Field_26083_26088) ) (!  (=> (select (|PolymorphicMapType_22293_26069_82168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@32 f_9@@32) (= (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@10) o2_1@@32 f_9@@32) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@32 f_9@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@32 f_9@@32))
))) (forall ((o2_1@@33 T@Ref) (f_9@@33 T@Field_26100_26101) ) (!  (=> (select (|PolymorphicMapType_22293_26069_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@33 f_9@@33) (= (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@10) o2_1@@33 f_9@@33) (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@33 f_9@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@33 f_9@@33))
))) (forall ((o2_1@@34 T@Ref) (f_9@@34 T@Field_11791_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26989_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@34 f_9@@34) (= (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@10) o2_1@@34 f_9@@34) (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@34 f_9@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@34 f_9@@34))
))) (forall ((o2_1@@35 T@Ref) (f_9@@35 T@Field_11791_2202) ) (!  (=> (select (|PolymorphicMapType_22293_26989_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@35 f_9@@35) (= (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@10) o2_1@@35 f_9@@35) (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@35 f_9@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@35 f_9@@35))
))) (forall ((o2_1@@36 T@Ref) (f_9@@36 T@Field_11791_53) ) (!  (=> (select (|PolymorphicMapType_22293_26989_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@36 f_9@@36) (= (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@10) o2_1@@36 f_9@@36) (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@36 f_9@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@36 f_9@@36))
))) (forall ((o2_1@@37 T@Ref) (f_9@@37 T@Field_27002_27007) ) (!  (=> (select (|PolymorphicMapType_22293_26989_83216#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@37 f_9@@37) (= (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@10) o2_1@@37 f_9@@37) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@37 f_9@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@37 f_9@@37))
))) (forall ((o2_1@@38 T@Ref) (f_9@@38 T@Field_26989_26990) ) (!  (=> (select (|PolymorphicMapType_22293_26989_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@10) null (PredicateMaskField_25134 pm_f_1@@8))) o2_1@@38 f_9@@38) (= (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@10) o2_1@@38 f_9@@38) (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@38 f_9@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@8) o2_1@@38 f_9@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (IsPredicateField_11660_11661 pm_f_1@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_21744) (ExhaleHeap@@9 T@PolymorphicMapType_21744) (Mask@@10 T@PolymorphicMapType_21765) (pm_f_1@@9 T@Field_26989_26990) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_11791_11792 Mask@@10 null pm_f_1@@9) (IsPredicateField_11791_11792 pm_f_1@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@39 T@Ref) (f_9@@39 T@Field_21817_21818) ) (!  (=> (select (|PolymorphicMapType_22293_11782_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@39 f_9@@39) (= (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@11) o2_1@@39 f_9@@39) (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@39 f_9@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@39 f_9@@39))
)) (forall ((o2_1@@40 T@Ref) (f_9@@40 T@Field_26942_2202) ) (!  (=> (select (|PolymorphicMapType_22293_11788_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@40 f_9@@40) (= (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@11) o2_1@@40 f_9@@40) (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@40 f_9@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@40 f_9@@40))
))) (forall ((o2_1@@41 T@Ref) (f_9@@41 T@Field_21804_53) ) (!  (=> (select (|PolymorphicMapType_22293_11782_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@41 f_9@@41) (= (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@11) o2_1@@41 f_9@@41) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@41 f_9@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@41 f_9@@41))
))) (forall ((o2_1@@42 T@Ref) (f_9@@42 T@Field_11782_25154) ) (!  (=> (select (|PolymorphicMapType_22293_11782_80072#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@42 f_9@@42) (= (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@11) o2_1@@42 f_9@@42) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@42 f_9@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@42 f_9@@42))
))) (forall ((o2_1@@43 T@Ref) (f_9@@43 T@Field_11782_11792) ) (!  (=> (select (|PolymorphicMapType_22293_11782_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@43 f_9@@43) (= (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@11) o2_1@@43 f_9@@43) (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@43 f_9@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@43 f_9@@43))
))) (forall ((o2_1@@44 T@Ref) (f_9@@44 T@Field_25134_11783) ) (!  (=> (select (|PolymorphicMapType_22293_25134_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@44 f_9@@44) (= (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@11) o2_1@@44 f_9@@44) (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@44 f_9@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@44 f_9@@44))
))) (forall ((o2_1@@45 T@Ref) (f_9@@45 T@Field_25134_1219) ) (!  (=> (select (|PolymorphicMapType_22293_25134_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@45 f_9@@45) (= (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@11) o2_1@@45 f_9@@45) (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@45 f_9@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@45 f_9@@45))
))) (forall ((o2_1@@46 T@Ref) (f_9@@46 T@Field_25134_53) ) (!  (=> (select (|PolymorphicMapType_22293_25134_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@46 f_9@@46) (= (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@11) o2_1@@46 f_9@@46) (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@46 f_9@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@46 f_9@@46))
))) (forall ((o2_1@@47 T@Ref) (f_9@@47 T@Field_25149_25154) ) (!  (=> (select (|PolymorphicMapType_22293_25134_81120#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@47 f_9@@47) (= (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@11) o2_1@@47 f_9@@47) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@47 f_9@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@47 f_9@@47))
))) (forall ((o2_1@@48 T@Ref) (f_9@@48 T@Field_25167_25168) ) (!  (=> (select (|PolymorphicMapType_22293_25134_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@48 f_9@@48) (= (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@11) o2_1@@48 f_9@@48) (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@48 f_9@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@48 f_9@@48))
))) (forall ((o2_1@@49 T@Ref) (f_9@@49 T@Field_26069_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26069_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@49 f_9@@49) (= (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@11) o2_1@@49 f_9@@49) (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@49 f_9@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@49 f_9@@49))
))) (forall ((o2_1@@50 T@Ref) (f_9@@50 T@Field_26069_1761) ) (!  (=> (select (|PolymorphicMapType_22293_26069_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@50 f_9@@50) (= (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@11) o2_1@@50 f_9@@50) (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@50 f_9@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@50 f_9@@50))
))) (forall ((o2_1@@51 T@Ref) (f_9@@51 T@Field_26069_53) ) (!  (=> (select (|PolymorphicMapType_22293_26069_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@51 f_9@@51) (= (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@11) o2_1@@51 f_9@@51) (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@51 f_9@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@51 f_9@@51))
))) (forall ((o2_1@@52 T@Ref) (f_9@@52 T@Field_26083_26088) ) (!  (=> (select (|PolymorphicMapType_22293_26069_82168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@52 f_9@@52) (= (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@11) o2_1@@52 f_9@@52) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@52 f_9@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@52 f_9@@52))
))) (forall ((o2_1@@53 T@Ref) (f_9@@53 T@Field_26100_26101) ) (!  (=> (select (|PolymorphicMapType_22293_26069_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@53 f_9@@53) (= (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@11) o2_1@@53 f_9@@53) (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@53 f_9@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@53 f_9@@53))
))) (forall ((o2_1@@54 T@Ref) (f_9@@54 T@Field_11791_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26989_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@54 f_9@@54) (= (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@11) o2_1@@54 f_9@@54) (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@54 f_9@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@54 f_9@@54))
))) (forall ((o2_1@@55 T@Ref) (f_9@@55 T@Field_11791_2202) ) (!  (=> (select (|PolymorphicMapType_22293_26989_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@55 f_9@@55) (= (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@11) o2_1@@55 f_9@@55) (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@55 f_9@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@55 f_9@@55))
))) (forall ((o2_1@@56 T@Ref) (f_9@@56 T@Field_11791_53) ) (!  (=> (select (|PolymorphicMapType_22293_26989_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@56 f_9@@56) (= (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@11) o2_1@@56 f_9@@56) (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@56 f_9@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@56 f_9@@56))
))) (forall ((o2_1@@57 T@Ref) (f_9@@57 T@Field_27002_27007) ) (!  (=> (select (|PolymorphicMapType_22293_26989_83216#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@57 f_9@@57) (= (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) o2_1@@57 f_9@@57) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@57 f_9@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@57 f_9@@57))
))) (forall ((o2_1@@58 T@Ref) (f_9@@58 T@Field_26989_26990) ) (!  (=> (select (|PolymorphicMapType_22293_26989_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@11) null (PredicateMaskField_11791 pm_f_1@@9))) o2_1@@58 f_9@@58) (= (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@11) o2_1@@58 f_9@@58) (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@58 f_9@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@9) o2_1@@58 f_9@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (IsPredicateField_11791_11792 pm_f_1@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_21744) (ExhaleHeap@@10 T@PolymorphicMapType_21744) (Mask@@11 T@PolymorphicMapType_21765) (pm_f_1@@10 T@Field_11782_11792) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_11782_11792 Mask@@11 null pm_f_1@@10) (IsPredicateField_11782_78119 pm_f_1@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@59 T@Ref) (f_9@@59 T@Field_21817_21818) ) (!  (=> (select (|PolymorphicMapType_22293_11782_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@59 f_9@@59) (= (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@12) o2_1@@59 f_9@@59) (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@59 f_9@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@59 f_9@@59))
)) (forall ((o2_1@@60 T@Ref) (f_9@@60 T@Field_26942_2202) ) (!  (=> (select (|PolymorphicMapType_22293_11788_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@60 f_9@@60) (= (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@12) o2_1@@60 f_9@@60) (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@60 f_9@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@60 f_9@@60))
))) (forall ((o2_1@@61 T@Ref) (f_9@@61 T@Field_21804_53) ) (!  (=> (select (|PolymorphicMapType_22293_11782_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@61 f_9@@61) (= (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@12) o2_1@@61 f_9@@61) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@61 f_9@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@61 f_9@@61))
))) (forall ((o2_1@@62 T@Ref) (f_9@@62 T@Field_11782_25154) ) (!  (=> (select (|PolymorphicMapType_22293_11782_80072#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@62 f_9@@62) (= (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) o2_1@@62 f_9@@62) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@62 f_9@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@62 f_9@@62))
))) (forall ((o2_1@@63 T@Ref) (f_9@@63 T@Field_11782_11792) ) (!  (=> (select (|PolymorphicMapType_22293_11782_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@63 f_9@@63) (= (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@12) o2_1@@63 f_9@@63) (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@63 f_9@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@63 f_9@@63))
))) (forall ((o2_1@@64 T@Ref) (f_9@@64 T@Field_25134_11783) ) (!  (=> (select (|PolymorphicMapType_22293_25134_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@64 f_9@@64) (= (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@12) o2_1@@64 f_9@@64) (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@64 f_9@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@64 f_9@@64))
))) (forall ((o2_1@@65 T@Ref) (f_9@@65 T@Field_25134_1219) ) (!  (=> (select (|PolymorphicMapType_22293_25134_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@65 f_9@@65) (= (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@12) o2_1@@65 f_9@@65) (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@65 f_9@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@65 f_9@@65))
))) (forall ((o2_1@@66 T@Ref) (f_9@@66 T@Field_25134_53) ) (!  (=> (select (|PolymorphicMapType_22293_25134_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@66 f_9@@66) (= (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@12) o2_1@@66 f_9@@66) (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@66 f_9@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@66 f_9@@66))
))) (forall ((o2_1@@67 T@Ref) (f_9@@67 T@Field_25149_25154) ) (!  (=> (select (|PolymorphicMapType_22293_25134_81120#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@67 f_9@@67) (= (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@12) o2_1@@67 f_9@@67) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@67 f_9@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@67 f_9@@67))
))) (forall ((o2_1@@68 T@Ref) (f_9@@68 T@Field_25167_25168) ) (!  (=> (select (|PolymorphicMapType_22293_25134_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@68 f_9@@68) (= (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@12) o2_1@@68 f_9@@68) (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@68 f_9@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@68 f_9@@68))
))) (forall ((o2_1@@69 T@Ref) (f_9@@69 T@Field_26069_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26069_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@69 f_9@@69) (= (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@12) o2_1@@69 f_9@@69) (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@69 f_9@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@69 f_9@@69))
))) (forall ((o2_1@@70 T@Ref) (f_9@@70 T@Field_26069_1761) ) (!  (=> (select (|PolymorphicMapType_22293_26069_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@70 f_9@@70) (= (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@12) o2_1@@70 f_9@@70) (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@70 f_9@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@70 f_9@@70))
))) (forall ((o2_1@@71 T@Ref) (f_9@@71 T@Field_26069_53) ) (!  (=> (select (|PolymorphicMapType_22293_26069_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@71 f_9@@71) (= (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@12) o2_1@@71 f_9@@71) (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@71 f_9@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@71 f_9@@71))
))) (forall ((o2_1@@72 T@Ref) (f_9@@72 T@Field_26083_26088) ) (!  (=> (select (|PolymorphicMapType_22293_26069_82168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@72 f_9@@72) (= (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@12) o2_1@@72 f_9@@72) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@72 f_9@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@72 f_9@@72))
))) (forall ((o2_1@@73 T@Ref) (f_9@@73 T@Field_26100_26101) ) (!  (=> (select (|PolymorphicMapType_22293_26069_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@73 f_9@@73) (= (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@12) o2_1@@73 f_9@@73) (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@73 f_9@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@73 f_9@@73))
))) (forall ((o2_1@@74 T@Ref) (f_9@@74 T@Field_11791_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26989_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@74 f_9@@74) (= (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@12) o2_1@@74 f_9@@74) (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@74 f_9@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@74 f_9@@74))
))) (forall ((o2_1@@75 T@Ref) (f_9@@75 T@Field_11791_2202) ) (!  (=> (select (|PolymorphicMapType_22293_26989_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@75 f_9@@75) (= (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@12) o2_1@@75 f_9@@75) (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@75 f_9@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@75 f_9@@75))
))) (forall ((o2_1@@76 T@Ref) (f_9@@76 T@Field_11791_53) ) (!  (=> (select (|PolymorphicMapType_22293_26989_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@76 f_9@@76) (= (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@12) o2_1@@76 f_9@@76) (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@76 f_9@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@76 f_9@@76))
))) (forall ((o2_1@@77 T@Ref) (f_9@@77 T@Field_27002_27007) ) (!  (=> (select (|PolymorphicMapType_22293_26989_83216#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@77 f_9@@77) (= (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@12) o2_1@@77 f_9@@77) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@77 f_9@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@77 f_9@@77))
))) (forall ((o2_1@@78 T@Ref) (f_9@@78 T@Field_26989_26990) ) (!  (=> (select (|PolymorphicMapType_22293_26989_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@12) null (PredicateMaskField_11782 pm_f_1@@10))) o2_1@@78 f_9@@78) (= (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@12) o2_1@@78 f_9@@78) (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@78 f_9@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@10) o2_1@@78 f_9@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (IsPredicateField_11782_78119 pm_f_1@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_21744) (ExhaleHeap@@11 T@PolymorphicMapType_21744) (Mask@@12 T@PolymorphicMapType_21765) (pm_f_1@@11 T@Field_26100_26101) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_26069_11792 Mask@@12 null pm_f_1@@11) (IsWandField_11739_11740 pm_f_1@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@79 T@Ref) (f_9@@79 T@Field_21817_21818) ) (!  (=> (select (|PolymorphicMapType_22293_11782_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@79 f_9@@79) (= (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@13) o2_1@@79 f_9@@79) (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@79 f_9@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@79 f_9@@79))
)) (forall ((o2_1@@80 T@Ref) (f_9@@80 T@Field_26942_2202) ) (!  (=> (select (|PolymorphicMapType_22293_11788_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@80 f_9@@80) (= (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@13) o2_1@@80 f_9@@80) (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@80 f_9@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@80 f_9@@80))
))) (forall ((o2_1@@81 T@Ref) (f_9@@81 T@Field_21804_53) ) (!  (=> (select (|PolymorphicMapType_22293_11782_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@81 f_9@@81) (= (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@13) o2_1@@81 f_9@@81) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@81 f_9@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@81 f_9@@81))
))) (forall ((o2_1@@82 T@Ref) (f_9@@82 T@Field_11782_25154) ) (!  (=> (select (|PolymorphicMapType_22293_11782_80072#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@82 f_9@@82) (= (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@13) o2_1@@82 f_9@@82) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@82 f_9@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@82 f_9@@82))
))) (forall ((o2_1@@83 T@Ref) (f_9@@83 T@Field_11782_11792) ) (!  (=> (select (|PolymorphicMapType_22293_11782_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@83 f_9@@83) (= (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@13) o2_1@@83 f_9@@83) (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@83 f_9@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@83 f_9@@83))
))) (forall ((o2_1@@84 T@Ref) (f_9@@84 T@Field_25134_11783) ) (!  (=> (select (|PolymorphicMapType_22293_25134_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@84 f_9@@84) (= (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@13) o2_1@@84 f_9@@84) (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@84 f_9@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@84 f_9@@84))
))) (forall ((o2_1@@85 T@Ref) (f_9@@85 T@Field_25134_1219) ) (!  (=> (select (|PolymorphicMapType_22293_25134_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@85 f_9@@85) (= (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@13) o2_1@@85 f_9@@85) (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@85 f_9@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@85 f_9@@85))
))) (forall ((o2_1@@86 T@Ref) (f_9@@86 T@Field_25134_53) ) (!  (=> (select (|PolymorphicMapType_22293_25134_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@86 f_9@@86) (= (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@13) o2_1@@86 f_9@@86) (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@86 f_9@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@86 f_9@@86))
))) (forall ((o2_1@@87 T@Ref) (f_9@@87 T@Field_25149_25154) ) (!  (=> (select (|PolymorphicMapType_22293_25134_81120#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@87 f_9@@87) (= (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@13) o2_1@@87 f_9@@87) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@87 f_9@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@87 f_9@@87))
))) (forall ((o2_1@@88 T@Ref) (f_9@@88 T@Field_25167_25168) ) (!  (=> (select (|PolymorphicMapType_22293_25134_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@88 f_9@@88) (= (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@13) o2_1@@88 f_9@@88) (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@88 f_9@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@88 f_9@@88))
))) (forall ((o2_1@@89 T@Ref) (f_9@@89 T@Field_26069_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26069_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@89 f_9@@89) (= (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@13) o2_1@@89 f_9@@89) (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@89 f_9@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@89 f_9@@89))
))) (forall ((o2_1@@90 T@Ref) (f_9@@90 T@Field_26069_1761) ) (!  (=> (select (|PolymorphicMapType_22293_26069_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@90 f_9@@90) (= (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@13) o2_1@@90 f_9@@90) (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@90 f_9@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@90 f_9@@90))
))) (forall ((o2_1@@91 T@Ref) (f_9@@91 T@Field_26069_53) ) (!  (=> (select (|PolymorphicMapType_22293_26069_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@91 f_9@@91) (= (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@13) o2_1@@91 f_9@@91) (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@91 f_9@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@91 f_9@@91))
))) (forall ((o2_1@@92 T@Ref) (f_9@@92 T@Field_26083_26088) ) (!  (=> (select (|PolymorphicMapType_22293_26069_82168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@92 f_9@@92) (= (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) o2_1@@92 f_9@@92) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@92 f_9@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@92 f_9@@92))
))) (forall ((o2_1@@93 T@Ref) (f_9@@93 T@Field_26100_26101) ) (!  (=> (select (|PolymorphicMapType_22293_26069_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@93 f_9@@93) (= (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@13) o2_1@@93 f_9@@93) (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@93 f_9@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@93 f_9@@93))
))) (forall ((o2_1@@94 T@Ref) (f_9@@94 T@Field_11791_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26989_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@94 f_9@@94) (= (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@13) o2_1@@94 f_9@@94) (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@94 f_9@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@94 f_9@@94))
))) (forall ((o2_1@@95 T@Ref) (f_9@@95 T@Field_11791_2202) ) (!  (=> (select (|PolymorphicMapType_22293_26989_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@95 f_9@@95) (= (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@13) o2_1@@95 f_9@@95) (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@95 f_9@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@95 f_9@@95))
))) (forall ((o2_1@@96 T@Ref) (f_9@@96 T@Field_11791_53) ) (!  (=> (select (|PolymorphicMapType_22293_26989_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@96 f_9@@96) (= (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@13) o2_1@@96 f_9@@96) (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@96 f_9@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@96 f_9@@96))
))) (forall ((o2_1@@97 T@Ref) (f_9@@97 T@Field_27002_27007) ) (!  (=> (select (|PolymorphicMapType_22293_26989_83216#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@97 f_9@@97) (= (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@13) o2_1@@97 f_9@@97) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@97 f_9@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@97 f_9@@97))
))) (forall ((o2_1@@98 T@Ref) (f_9@@98 T@Field_26989_26990) ) (!  (=> (select (|PolymorphicMapType_22293_26989_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@13) null (WandMaskField_11739 pm_f_1@@11))) o2_1@@98 f_9@@98) (= (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@13) o2_1@@98 f_9@@98) (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@98 f_9@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@11) o2_1@@98 f_9@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@12) (IsWandField_11739_11740 pm_f_1@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_21744) (ExhaleHeap@@12 T@PolymorphicMapType_21744) (Mask@@13 T@PolymorphicMapType_21765) (pm_f_1@@12 T@Field_25167_25168) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_25134_11792 Mask@@13 null pm_f_1@@12) (IsWandField_11660_11661 pm_f_1@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@99 T@Ref) (f_9@@99 T@Field_21817_21818) ) (!  (=> (select (|PolymorphicMapType_22293_11782_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@99 f_9@@99) (= (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@14) o2_1@@99 f_9@@99) (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@99 f_9@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@99 f_9@@99))
)) (forall ((o2_1@@100 T@Ref) (f_9@@100 T@Field_26942_2202) ) (!  (=> (select (|PolymorphicMapType_22293_11788_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@100 f_9@@100) (= (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@14) o2_1@@100 f_9@@100) (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@100 f_9@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@100 f_9@@100))
))) (forall ((o2_1@@101 T@Ref) (f_9@@101 T@Field_21804_53) ) (!  (=> (select (|PolymorphicMapType_22293_11782_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@101 f_9@@101) (= (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@14) o2_1@@101 f_9@@101) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@101 f_9@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@101 f_9@@101))
))) (forall ((o2_1@@102 T@Ref) (f_9@@102 T@Field_11782_25154) ) (!  (=> (select (|PolymorphicMapType_22293_11782_80072#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@102 f_9@@102) (= (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@14) o2_1@@102 f_9@@102) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@102 f_9@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@102 f_9@@102))
))) (forall ((o2_1@@103 T@Ref) (f_9@@103 T@Field_11782_11792) ) (!  (=> (select (|PolymorphicMapType_22293_11782_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@103 f_9@@103) (= (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@14) o2_1@@103 f_9@@103) (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@103 f_9@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@103 f_9@@103))
))) (forall ((o2_1@@104 T@Ref) (f_9@@104 T@Field_25134_11783) ) (!  (=> (select (|PolymorphicMapType_22293_25134_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@104 f_9@@104) (= (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@14) o2_1@@104 f_9@@104) (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@104 f_9@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@104 f_9@@104))
))) (forall ((o2_1@@105 T@Ref) (f_9@@105 T@Field_25134_1219) ) (!  (=> (select (|PolymorphicMapType_22293_25134_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@105 f_9@@105) (= (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@14) o2_1@@105 f_9@@105) (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@105 f_9@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@105 f_9@@105))
))) (forall ((o2_1@@106 T@Ref) (f_9@@106 T@Field_25134_53) ) (!  (=> (select (|PolymorphicMapType_22293_25134_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@106 f_9@@106) (= (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@14) o2_1@@106 f_9@@106) (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@106 f_9@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@106 f_9@@106))
))) (forall ((o2_1@@107 T@Ref) (f_9@@107 T@Field_25149_25154) ) (!  (=> (select (|PolymorphicMapType_22293_25134_81120#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@107 f_9@@107) (= (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) o2_1@@107 f_9@@107) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@107 f_9@@107)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@107 f_9@@107))
))) (forall ((o2_1@@108 T@Ref) (f_9@@108 T@Field_25167_25168) ) (!  (=> (select (|PolymorphicMapType_22293_25134_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@108 f_9@@108) (= (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@14) o2_1@@108 f_9@@108) (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@108 f_9@@108)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@108 f_9@@108))
))) (forall ((o2_1@@109 T@Ref) (f_9@@109 T@Field_26069_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26069_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@109 f_9@@109) (= (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@14) o2_1@@109 f_9@@109) (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@109 f_9@@109)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@109 f_9@@109))
))) (forall ((o2_1@@110 T@Ref) (f_9@@110 T@Field_26069_1761) ) (!  (=> (select (|PolymorphicMapType_22293_26069_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@110 f_9@@110) (= (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@14) o2_1@@110 f_9@@110) (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@110 f_9@@110)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@110 f_9@@110))
))) (forall ((o2_1@@111 T@Ref) (f_9@@111 T@Field_26069_53) ) (!  (=> (select (|PolymorphicMapType_22293_26069_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@111 f_9@@111) (= (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@14) o2_1@@111 f_9@@111) (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@111 f_9@@111)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@111 f_9@@111))
))) (forall ((o2_1@@112 T@Ref) (f_9@@112 T@Field_26083_26088) ) (!  (=> (select (|PolymorphicMapType_22293_26069_82168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@112 f_9@@112) (= (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@14) o2_1@@112 f_9@@112) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@112 f_9@@112)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@112 f_9@@112))
))) (forall ((o2_1@@113 T@Ref) (f_9@@113 T@Field_26100_26101) ) (!  (=> (select (|PolymorphicMapType_22293_26069_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@113 f_9@@113) (= (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@14) o2_1@@113 f_9@@113) (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@113 f_9@@113)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@113 f_9@@113))
))) (forall ((o2_1@@114 T@Ref) (f_9@@114 T@Field_11791_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26989_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@114 f_9@@114) (= (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@14) o2_1@@114 f_9@@114) (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@114 f_9@@114)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@114 f_9@@114))
))) (forall ((o2_1@@115 T@Ref) (f_9@@115 T@Field_11791_2202) ) (!  (=> (select (|PolymorphicMapType_22293_26989_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@115 f_9@@115) (= (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@14) o2_1@@115 f_9@@115) (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@115 f_9@@115)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@115 f_9@@115))
))) (forall ((o2_1@@116 T@Ref) (f_9@@116 T@Field_11791_53) ) (!  (=> (select (|PolymorphicMapType_22293_26989_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@116 f_9@@116) (= (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@14) o2_1@@116 f_9@@116) (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@116 f_9@@116)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@116 f_9@@116))
))) (forall ((o2_1@@117 T@Ref) (f_9@@117 T@Field_27002_27007) ) (!  (=> (select (|PolymorphicMapType_22293_26989_83216#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@117 f_9@@117) (= (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@14) o2_1@@117 f_9@@117) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@117 f_9@@117)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@117 f_9@@117))
))) (forall ((o2_1@@118 T@Ref) (f_9@@118 T@Field_26989_26990) ) (!  (=> (select (|PolymorphicMapType_22293_26989_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@14) null (WandMaskField_11660 pm_f_1@@12))) o2_1@@118 f_9@@118) (= (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@14) o2_1@@118 f_9@@118) (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@118 f_9@@118)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@12) o2_1@@118 f_9@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@13) (IsWandField_11660_11661 pm_f_1@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_21744) (ExhaleHeap@@13 T@PolymorphicMapType_21744) (Mask@@14 T@PolymorphicMapType_21765) (pm_f_1@@13 T@Field_26989_26990) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_11791_11792 Mask@@14 null pm_f_1@@13) (IsWandField_11791_85147 pm_f_1@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@119 T@Ref) (f_9@@119 T@Field_21817_21818) ) (!  (=> (select (|PolymorphicMapType_22293_11782_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@119 f_9@@119) (= (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@15) o2_1@@119 f_9@@119) (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@119 f_9@@119)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@119 f_9@@119))
)) (forall ((o2_1@@120 T@Ref) (f_9@@120 T@Field_26942_2202) ) (!  (=> (select (|PolymorphicMapType_22293_11788_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@120 f_9@@120) (= (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@15) o2_1@@120 f_9@@120) (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@120 f_9@@120)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@120 f_9@@120))
))) (forall ((o2_1@@121 T@Ref) (f_9@@121 T@Field_21804_53) ) (!  (=> (select (|PolymorphicMapType_22293_11782_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@121 f_9@@121) (= (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@15) o2_1@@121 f_9@@121) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@121 f_9@@121)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@121 f_9@@121))
))) (forall ((o2_1@@122 T@Ref) (f_9@@122 T@Field_11782_25154) ) (!  (=> (select (|PolymorphicMapType_22293_11782_80072#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@122 f_9@@122) (= (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@15) o2_1@@122 f_9@@122) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@122 f_9@@122)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@122 f_9@@122))
))) (forall ((o2_1@@123 T@Ref) (f_9@@123 T@Field_11782_11792) ) (!  (=> (select (|PolymorphicMapType_22293_11782_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@123 f_9@@123) (= (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@15) o2_1@@123 f_9@@123) (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@123 f_9@@123)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@123 f_9@@123))
))) (forall ((o2_1@@124 T@Ref) (f_9@@124 T@Field_25134_11783) ) (!  (=> (select (|PolymorphicMapType_22293_25134_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@124 f_9@@124) (= (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@15) o2_1@@124 f_9@@124) (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@124 f_9@@124)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@124 f_9@@124))
))) (forall ((o2_1@@125 T@Ref) (f_9@@125 T@Field_25134_1219) ) (!  (=> (select (|PolymorphicMapType_22293_25134_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@125 f_9@@125) (= (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@15) o2_1@@125 f_9@@125) (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@125 f_9@@125)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@125 f_9@@125))
))) (forall ((o2_1@@126 T@Ref) (f_9@@126 T@Field_25134_53) ) (!  (=> (select (|PolymorphicMapType_22293_25134_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@126 f_9@@126) (= (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@15) o2_1@@126 f_9@@126) (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@126 f_9@@126)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@126 f_9@@126))
))) (forall ((o2_1@@127 T@Ref) (f_9@@127 T@Field_25149_25154) ) (!  (=> (select (|PolymorphicMapType_22293_25134_81120#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@127 f_9@@127) (= (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@15) o2_1@@127 f_9@@127) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@127 f_9@@127)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@127 f_9@@127))
))) (forall ((o2_1@@128 T@Ref) (f_9@@128 T@Field_25167_25168) ) (!  (=> (select (|PolymorphicMapType_22293_25134_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@128 f_9@@128) (= (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@15) o2_1@@128 f_9@@128) (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@128 f_9@@128)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@128 f_9@@128))
))) (forall ((o2_1@@129 T@Ref) (f_9@@129 T@Field_26069_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26069_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@129 f_9@@129) (= (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@15) o2_1@@129 f_9@@129) (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@129 f_9@@129)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@129 f_9@@129))
))) (forall ((o2_1@@130 T@Ref) (f_9@@130 T@Field_26069_1761) ) (!  (=> (select (|PolymorphicMapType_22293_26069_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@130 f_9@@130) (= (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@15) o2_1@@130 f_9@@130) (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@130 f_9@@130)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@130 f_9@@130))
))) (forall ((o2_1@@131 T@Ref) (f_9@@131 T@Field_26069_53) ) (!  (=> (select (|PolymorphicMapType_22293_26069_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@131 f_9@@131) (= (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@15) o2_1@@131 f_9@@131) (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@131 f_9@@131)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@131 f_9@@131))
))) (forall ((o2_1@@132 T@Ref) (f_9@@132 T@Field_26083_26088) ) (!  (=> (select (|PolymorphicMapType_22293_26069_82168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@132 f_9@@132) (= (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@15) o2_1@@132 f_9@@132) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@132 f_9@@132)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@132 f_9@@132))
))) (forall ((o2_1@@133 T@Ref) (f_9@@133 T@Field_26100_26101) ) (!  (=> (select (|PolymorphicMapType_22293_26069_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@133 f_9@@133) (= (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@15) o2_1@@133 f_9@@133) (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@133 f_9@@133)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@133 f_9@@133))
))) (forall ((o2_1@@134 T@Ref) (f_9@@134 T@Field_11791_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26989_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@134 f_9@@134) (= (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@15) o2_1@@134 f_9@@134) (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@134 f_9@@134)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@134 f_9@@134))
))) (forall ((o2_1@@135 T@Ref) (f_9@@135 T@Field_11791_2202) ) (!  (=> (select (|PolymorphicMapType_22293_26989_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@135 f_9@@135) (= (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@15) o2_1@@135 f_9@@135) (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@135 f_9@@135)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@135 f_9@@135))
))) (forall ((o2_1@@136 T@Ref) (f_9@@136 T@Field_11791_53) ) (!  (=> (select (|PolymorphicMapType_22293_26989_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@136 f_9@@136) (= (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@15) o2_1@@136 f_9@@136) (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@136 f_9@@136)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@136 f_9@@136))
))) (forall ((o2_1@@137 T@Ref) (f_9@@137 T@Field_27002_27007) ) (!  (=> (select (|PolymorphicMapType_22293_26989_83216#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@137 f_9@@137) (= (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) o2_1@@137 f_9@@137) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@137 f_9@@137)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@137 f_9@@137))
))) (forall ((o2_1@@138 T@Ref) (f_9@@138 T@Field_26989_26990) ) (!  (=> (select (|PolymorphicMapType_22293_26989_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@15) null (WandMaskField_11791 pm_f_1@@13))) o2_1@@138 f_9@@138) (= (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@15) o2_1@@138 f_9@@138) (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@138 f_9@@138)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@13) o2_1@@138 f_9@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@14) (IsWandField_11791_85147 pm_f_1@@13))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_21744) (ExhaleHeap@@14 T@PolymorphicMapType_21744) (Mask@@15 T@PolymorphicMapType_21765) (pm_f_1@@14 T@Field_11782_11792) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_11782_11792 Mask@@15 null pm_f_1@@14) (IsWandField_11782_84790 pm_f_1@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@139 T@Ref) (f_9@@139 T@Field_21817_21818) ) (!  (=> (select (|PolymorphicMapType_22293_11782_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@139 f_9@@139) (= (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@16) o2_1@@139 f_9@@139) (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@139 f_9@@139)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@139 f_9@@139))
)) (forall ((o2_1@@140 T@Ref) (f_9@@140 T@Field_26942_2202) ) (!  (=> (select (|PolymorphicMapType_22293_11788_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@140 f_9@@140) (= (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@16) o2_1@@140 f_9@@140) (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@140 f_9@@140)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@140 f_9@@140))
))) (forall ((o2_1@@141 T@Ref) (f_9@@141 T@Field_21804_53) ) (!  (=> (select (|PolymorphicMapType_22293_11782_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@141 f_9@@141) (= (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@16) o2_1@@141 f_9@@141) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@141 f_9@@141)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@141 f_9@@141))
))) (forall ((o2_1@@142 T@Ref) (f_9@@142 T@Field_11782_25154) ) (!  (=> (select (|PolymorphicMapType_22293_11782_80072#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@142 f_9@@142) (= (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) o2_1@@142 f_9@@142) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@142 f_9@@142)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@142 f_9@@142))
))) (forall ((o2_1@@143 T@Ref) (f_9@@143 T@Field_11782_11792) ) (!  (=> (select (|PolymorphicMapType_22293_11782_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@143 f_9@@143) (= (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@16) o2_1@@143 f_9@@143) (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@143 f_9@@143)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@143 f_9@@143))
))) (forall ((o2_1@@144 T@Ref) (f_9@@144 T@Field_25134_11783) ) (!  (=> (select (|PolymorphicMapType_22293_25134_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@144 f_9@@144) (= (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@16) o2_1@@144 f_9@@144) (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@144 f_9@@144)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@144 f_9@@144))
))) (forall ((o2_1@@145 T@Ref) (f_9@@145 T@Field_25134_1219) ) (!  (=> (select (|PolymorphicMapType_22293_25134_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@145 f_9@@145) (= (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@16) o2_1@@145 f_9@@145) (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@145 f_9@@145)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@145 f_9@@145))
))) (forall ((o2_1@@146 T@Ref) (f_9@@146 T@Field_25134_53) ) (!  (=> (select (|PolymorphicMapType_22293_25134_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@146 f_9@@146) (= (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@16) o2_1@@146 f_9@@146) (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@146 f_9@@146)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@146 f_9@@146))
))) (forall ((o2_1@@147 T@Ref) (f_9@@147 T@Field_25149_25154) ) (!  (=> (select (|PolymorphicMapType_22293_25134_81120#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@147 f_9@@147) (= (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@16) o2_1@@147 f_9@@147) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@147 f_9@@147)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@147 f_9@@147))
))) (forall ((o2_1@@148 T@Ref) (f_9@@148 T@Field_25167_25168) ) (!  (=> (select (|PolymorphicMapType_22293_25134_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@148 f_9@@148) (= (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@16) o2_1@@148 f_9@@148) (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@148 f_9@@148)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@148 f_9@@148))
))) (forall ((o2_1@@149 T@Ref) (f_9@@149 T@Field_26069_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26069_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@149 f_9@@149) (= (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@16) o2_1@@149 f_9@@149) (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@149 f_9@@149)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@149 f_9@@149))
))) (forall ((o2_1@@150 T@Ref) (f_9@@150 T@Field_26069_1761) ) (!  (=> (select (|PolymorphicMapType_22293_26069_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@150 f_9@@150) (= (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@16) o2_1@@150 f_9@@150) (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@150 f_9@@150)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@150 f_9@@150))
))) (forall ((o2_1@@151 T@Ref) (f_9@@151 T@Field_26069_53) ) (!  (=> (select (|PolymorphicMapType_22293_26069_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@151 f_9@@151) (= (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@16) o2_1@@151 f_9@@151) (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@151 f_9@@151)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@151 f_9@@151))
))) (forall ((o2_1@@152 T@Ref) (f_9@@152 T@Field_26083_26088) ) (!  (=> (select (|PolymorphicMapType_22293_26069_82168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@152 f_9@@152) (= (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@16) o2_1@@152 f_9@@152) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@152 f_9@@152)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@152 f_9@@152))
))) (forall ((o2_1@@153 T@Ref) (f_9@@153 T@Field_26100_26101) ) (!  (=> (select (|PolymorphicMapType_22293_26069_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@153 f_9@@153) (= (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@16) o2_1@@153 f_9@@153) (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@153 f_9@@153)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@153 f_9@@153))
))) (forall ((o2_1@@154 T@Ref) (f_9@@154 T@Field_11791_11783) ) (!  (=> (select (|PolymorphicMapType_22293_26989_11783#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@154 f_9@@154) (= (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@16) o2_1@@154 f_9@@154) (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@154 f_9@@154)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@154 f_9@@154))
))) (forall ((o2_1@@155 T@Ref) (f_9@@155 T@Field_11791_2202) ) (!  (=> (select (|PolymorphicMapType_22293_26989_2202#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@155 f_9@@155) (= (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@16) o2_1@@155 f_9@@155) (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@155 f_9@@155)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@155 f_9@@155))
))) (forall ((o2_1@@156 T@Ref) (f_9@@156 T@Field_11791_53) ) (!  (=> (select (|PolymorphicMapType_22293_26989_53#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@156 f_9@@156) (= (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@16) o2_1@@156 f_9@@156) (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@156 f_9@@156)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@156 f_9@@156))
))) (forall ((o2_1@@157 T@Ref) (f_9@@157 T@Field_27002_27007) ) (!  (=> (select (|PolymorphicMapType_22293_26989_83216#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@157 f_9@@157) (= (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@16) o2_1@@157 f_9@@157) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@157 f_9@@157)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@157 f_9@@157))
))) (forall ((o2_1@@158 T@Ref) (f_9@@158 T@Field_26989_26990) ) (!  (=> (select (|PolymorphicMapType_22293_26989_25168#PolymorphicMapType_22293| (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@16) null (WandMaskField_11782 pm_f_1@@14))) o2_1@@158 f_9@@158) (= (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@16) o2_1@@158 f_9@@158) (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@158 f_9@@158)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@14) o2_1@@158 f_9@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@15) (IsWandField_11782_84790 pm_f_1@@14))
)))
(assert (forall ((self@@1 T@Ref) (self2 T@Ref) ) (!  (=> (= (Foo self@@1) (Foo self2)) (= self@@1 self2))
 :qid |stdinbpl.280:15|
 :skolemid |39|
 :pattern ( (Foo self@@1) (Foo self2))
)))
(assert (forall ((self@@2 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|Foo#sm| self@@2) (|Foo#sm| self2@@0)) (= self@@2 self2@@0))
 :qid |stdinbpl.284:15|
 :skolemid |40|
 :pattern ( (|Foo#sm| self@@2) (|Foo#sm| self2@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 Real) (arg5@@1 T@Ref) (arg6@@1 Real) (arg7@@0 T@Ref) (arg8@@0 Int) ) (! (IsWandField_11641_1219 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@0 arg8@@0))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@0 arg8@@0))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Real) (arg5@@2 T@Ref) (arg6@@2 Real) (arg7@@1 T@Ref) (arg8@@1 Int) ) (! (IsWandField_11660_11661 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@1 arg8@@1))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@1 arg8@@1))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 Real) (arg5@@3 T@Ref) (arg6@@3 Real) (arg7@@2 T@Ref) (arg8@@2 Int) ) (!  (not (IsPredicateField_11641_1219 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@2 arg8@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@2 arg8@@2))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 Real) (arg5@@4 T@Ref) (arg6@@4 Real) (arg7@@3 T@Ref) (arg8@@3 Int) ) (!  (not (IsPredicateField_11660_11661 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@3 arg8@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@3 arg8@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_21744) (ExhaleHeap@@15 T@PolymorphicMapType_21744) (Mask@@16 T@PolymorphicMapType_21765) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@17) o_4 $allocated) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@15) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@15) o_4 $allocated))
)))
(assert (forall ((p T@Field_26989_26990) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_26989_26989 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26989_26989 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_26100_26101) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_26069_26069 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26069_26069 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_25167_25168) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_25134_25134 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25134_25134 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_11782_11792) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_21804_21804 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_21804_21804 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_11782_11783 f1_2)))
(assert  (not (IsWandField_11782_11783 f1_2)))
(assert  (not (IsPredicateField_11782_11783 f2_2)))
(assert  (not (IsWandField_11782_11783 f2_2)))
(assert  (not (IsPredicateField_11788_2202 val)))
(assert  (not (IsWandField_11788_2202 val)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_21744) (ExhaleHeap@@16 T@PolymorphicMapType_21744) (Mask@@17 T@PolymorphicMapType_21765) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@18 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_21765) (o_2@@19 T@Ref) (f_4@@19 T@Field_26083_26088) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_11724_99450 f_4@@19))) (not (IsWandField_11724_99466 f_4@@19))) (<= (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_21765) (o_2@@20 T@Ref) (f_4@@20 T@Field_26069_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_11724_53 f_4@@20))) (not (IsWandField_11724_53 f_4@@20))) (<= (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_21765) (o_2@@21 T@Ref) (f_4@@21 T@Field_26100_26101) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_11739_11740 f_4@@21))) (not (IsWandField_11739_11740 f_4@@21))) (<= (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_21765) (o_2@@22 T@Ref) (f_4@@22 T@Field_26069_1761) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_11724_1761 f_4@@22))) (not (IsWandField_11724_1761 f_4@@22))) (<= (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_21765) (o_2@@23 T@Ref) (f_4@@23 T@Field_26069_11783) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_11724_11783 f_4@@23))) (not (IsWandField_11724_11783 f_4@@23))) (<= (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_21765) (o_2@@24 T@Ref) (f_4@@24 T@Field_25149_25154) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_11641_98633 f_4@@24))) (not (IsWandField_11641_98649 f_4@@24))) (<= (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_21765) (o_2@@25 T@Ref) (f_4@@25 T@Field_25134_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_11641_53 f_4@@25))) (not (IsWandField_11641_53 f_4@@25))) (<= (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_21765) (o_2@@26 T@Ref) (f_4@@26 T@Field_25167_25168) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_11660_11661 f_4@@26))) (not (IsWandField_11660_11661 f_4@@26))) (<= (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_21765) (o_2@@27 T@Ref) (f_4@@27 T@Field_25134_1219) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_11641_1219 f_4@@27))) (not (IsWandField_11641_1219 f_4@@27))) (<= (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_21765) (o_2@@28 T@Ref) (f_4@@28 T@Field_25134_11783) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_11641_11783 f_4@@28))) (not (IsWandField_11641_11783 f_4@@28))) (<= (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_21765) (o_2@@29 T@Ref) (f_4@@29 T@Field_27002_27007) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_11791_97816 f_4@@29))) (not (IsWandField_11791_97832 f_4@@29))) (<= (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_21765) (o_2@@30 T@Ref) (f_4@@30 T@Field_11791_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_11791_53 f_4@@30))) (not (IsWandField_11791_53 f_4@@30))) (<= (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_21765) (o_2@@31 T@Ref) (f_4@@31 T@Field_26989_26990) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_11791_11792 f_4@@31))) (not (IsWandField_11791_85147 f_4@@31))) (<= (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_21765) (o_2@@32 T@Ref) (f_4@@32 T@Field_11791_2202) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_11791_2202 f_4@@32))) (not (IsWandField_11791_2202 f_4@@32))) (<= (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_21765) (o_2@@33 T@Ref) (f_4@@33 T@Field_11791_11783) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_11791_11783 f_4@@33))) (not (IsWandField_11791_11783 f_4@@33))) (<= (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_21765) (o_2@@34 T@Ref) (f_4@@34 T@Field_11782_25154) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_11782_96985 f_4@@34))) (not (IsWandField_11782_97001 f_4@@34))) (<= (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_21765) (o_2@@35 T@Ref) (f_4@@35 T@Field_21804_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_11782_53 f_4@@35))) (not (IsWandField_11782_53 f_4@@35))) (<= (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_21765) (o_2@@36 T@Ref) (f_4@@36 T@Field_11782_11792) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_11782_78119 f_4@@36))) (not (IsWandField_11782_84790 f_4@@36))) (<= (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_21765) (o_2@@37 T@Ref) (f_4@@37 T@Field_26942_2202) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_11788_2202 f_4@@37))) (not (IsWandField_11788_2202 f_4@@37))) (<= (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_21765) (o_2@@38 T@Ref) (f_4@@38 T@Field_21817_21818) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_11782_11783 f_4@@38))) (not (IsWandField_11782_11783 f_4@@38))) (<= (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_21765) (o_2@@39 T@Ref) (f_4@@39 T@Field_26083_26088) ) (! (= (HasDirectPerm_26069_77874 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26069_77874 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_21765) (o_2@@40 T@Ref) (f_4@@40 T@Field_26069_53) ) (! (= (HasDirectPerm_26069_53 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26069_53 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_21765) (o_2@@41 T@Ref) (f_4@@41 T@Field_26100_26101) ) (! (= (HasDirectPerm_26069_11792 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26069_11792 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_21765) (o_2@@42 T@Ref) (f_4@@42 T@Field_26069_1761) ) (! (= (HasDirectPerm_26069_2202 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26069_2202 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_21765) (o_2@@43 T@Ref) (f_4@@43 T@Field_26069_11783) ) (! (= (HasDirectPerm_26069_11783 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26069_11783 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_21765) (o_2@@44 T@Ref) (f_4@@44 T@Field_25149_25154) ) (! (= (HasDirectPerm_25134_76740 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25134_76740 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_21765) (o_2@@45 T@Ref) (f_4@@45 T@Field_25134_53) ) (! (= (HasDirectPerm_25134_53 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25134_53 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_21765) (o_2@@46 T@Ref) (f_4@@46 T@Field_25167_25168) ) (! (= (HasDirectPerm_25134_11792 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25134_11792 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_21765) (o_2@@47 T@Ref) (f_4@@47 T@Field_25134_1219) ) (! (= (HasDirectPerm_25134_2202 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25134_2202 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_21765) (o_2@@48 T@Ref) (f_4@@48 T@Field_25134_11783) ) (! (= (HasDirectPerm_25134_11783 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25134_11783 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_21765) (o_2@@49 T@Ref) (f_4@@49 T@Field_27002_27007) ) (! (= (HasDirectPerm_11791_75606 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11791_75606 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_21765) (o_2@@50 T@Ref) (f_4@@50 T@Field_11791_53) ) (! (= (HasDirectPerm_11791_53 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11791_53 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_21765) (o_2@@51 T@Ref) (f_4@@51 T@Field_26989_26990) ) (! (= (HasDirectPerm_11791_11792 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11791_11792 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_21765) (o_2@@52 T@Ref) (f_4@@52 T@Field_11791_2202) ) (! (= (HasDirectPerm_11791_2202 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11791_2202 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_21765) (o_2@@53 T@Ref) (f_4@@53 T@Field_11791_11783) ) (! (= (HasDirectPerm_11791_11783 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11791_11783 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_21765) (o_2@@54 T@Ref) (f_4@@54 T@Field_11782_25154) ) (! (= (HasDirectPerm_11782_74465 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11782_74465 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_21765) (o_2@@55 T@Ref) (f_4@@55 T@Field_21804_53) ) (! (= (HasDirectPerm_11782_53 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11782_53 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_21765) (o_2@@56 T@Ref) (f_4@@56 T@Field_11782_11792) ) (! (= (HasDirectPerm_11782_11792 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11782_11792 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_21765) (o_2@@57 T@Ref) (f_4@@57 T@Field_26942_2202) ) (! (= (HasDirectPerm_11788_2202 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11788_2202 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_21765) (o_2@@58 T@Ref) (f_4@@58 T@Field_21817_21818) ) (! (= (HasDirectPerm_11782_11783 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11782_11783 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 Real) (arg5@@5 T@Ref) (arg6@@5 Int) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Real) (arg5_2 T@Ref) (arg6_2 Int) ) (!  (=> (= (wand_1 arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2)) (and (= arg1@@5 arg1_2) (and (= arg2@@5 arg2_2) (and (= arg3@@5 arg3_2) (and (= arg4@@5 arg4_2) (and (= arg5@@5 arg5_2) (= arg6@@5 arg6_2)))))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_21744) (ExhaleHeap@@17 T@PolymorphicMapType_21744) (Mask@@58 T@PolymorphicMapType_21765) (o_4@@0 T@Ref) (f_9@@159 T@Field_26083_26088) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_26069_77874 Mask@@58 o_4@@0 f_9@@159) (= (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@19) o_4@@0 f_9@@159) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@17) o_4@@0 f_9@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| ExhaleHeap@@17) o_4@@0 f_9@@159))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_21744) (ExhaleHeap@@18 T@PolymorphicMapType_21744) (Mask@@59 T@PolymorphicMapType_21765) (o_4@@1 T@Ref) (f_9@@160 T@Field_26069_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_26069_53 Mask@@59 o_4@@1 f_9@@160) (= (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@20) o_4@@1 f_9@@160) (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@18) o_4@@1 f_9@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| ExhaleHeap@@18) o_4@@1 f_9@@160))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_21744) (ExhaleHeap@@19 T@PolymorphicMapType_21744) (Mask@@60 T@PolymorphicMapType_21765) (o_4@@2 T@Ref) (f_9@@161 T@Field_26100_26101) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_26069_11792 Mask@@60 o_4@@2 f_9@@161) (= (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@21) o_4@@2 f_9@@161) (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@19) o_4@@2 f_9@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| ExhaleHeap@@19) o_4@@2 f_9@@161))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_21744) (ExhaleHeap@@20 T@PolymorphicMapType_21744) (Mask@@61 T@PolymorphicMapType_21765) (o_4@@3 T@Ref) (f_9@@162 T@Field_26069_1761) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_26069_2202 Mask@@61 o_4@@3 f_9@@162) (= (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@22) o_4@@3 f_9@@162) (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@20) o_4@@3 f_9@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| ExhaleHeap@@20) o_4@@3 f_9@@162))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_21744) (ExhaleHeap@@21 T@PolymorphicMapType_21744) (Mask@@62 T@PolymorphicMapType_21765) (o_4@@4 T@Ref) (f_9@@163 T@Field_26069_11783) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_26069_11783 Mask@@62 o_4@@4 f_9@@163) (= (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@23) o_4@@4 f_9@@163) (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@21) o_4@@4 f_9@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| ExhaleHeap@@21) o_4@@4 f_9@@163))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_21744) (ExhaleHeap@@22 T@PolymorphicMapType_21744) (Mask@@63 T@PolymorphicMapType_21765) (o_4@@5 T@Ref) (f_9@@164 T@Field_25149_25154) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_25134_76740 Mask@@63 o_4@@5 f_9@@164) (= (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@24) o_4@@5 f_9@@164) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@22) o_4@@5 f_9@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| ExhaleHeap@@22) o_4@@5 f_9@@164))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_21744) (ExhaleHeap@@23 T@PolymorphicMapType_21744) (Mask@@64 T@PolymorphicMapType_21765) (o_4@@6 T@Ref) (f_9@@165 T@Field_25134_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_25134_53 Mask@@64 o_4@@6 f_9@@165) (= (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@25) o_4@@6 f_9@@165) (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@23) o_4@@6 f_9@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| ExhaleHeap@@23) o_4@@6 f_9@@165))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_21744) (ExhaleHeap@@24 T@PolymorphicMapType_21744) (Mask@@65 T@PolymorphicMapType_21765) (o_4@@7 T@Ref) (f_9@@166 T@Field_25167_25168) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_25134_11792 Mask@@65 o_4@@7 f_9@@166) (= (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@26) o_4@@7 f_9@@166) (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@24) o_4@@7 f_9@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| ExhaleHeap@@24) o_4@@7 f_9@@166))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_21744) (ExhaleHeap@@25 T@PolymorphicMapType_21744) (Mask@@66 T@PolymorphicMapType_21765) (o_4@@8 T@Ref) (f_9@@167 T@Field_25134_1219) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_25134_2202 Mask@@66 o_4@@8 f_9@@167) (= (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@27) o_4@@8 f_9@@167) (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@25) o_4@@8 f_9@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| ExhaleHeap@@25) o_4@@8 f_9@@167))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_21744) (ExhaleHeap@@26 T@PolymorphicMapType_21744) (Mask@@67 T@PolymorphicMapType_21765) (o_4@@9 T@Ref) (f_9@@168 T@Field_25134_11783) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_25134_11783 Mask@@67 o_4@@9 f_9@@168) (= (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@28) o_4@@9 f_9@@168) (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@26) o_4@@9 f_9@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| ExhaleHeap@@26) o_4@@9 f_9@@168))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_21744) (ExhaleHeap@@27 T@PolymorphicMapType_21744) (Mask@@68 T@PolymorphicMapType_21765) (o_4@@10 T@Ref) (f_9@@169 T@Field_27002_27007) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_11791_75606 Mask@@68 o_4@@10 f_9@@169) (= (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@29) o_4@@10 f_9@@169) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@27) o_4@@10 f_9@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| ExhaleHeap@@27) o_4@@10 f_9@@169))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_21744) (ExhaleHeap@@28 T@PolymorphicMapType_21744) (Mask@@69 T@PolymorphicMapType_21765) (o_4@@11 T@Ref) (f_9@@170 T@Field_11791_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_11791_53 Mask@@69 o_4@@11 f_9@@170) (= (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@30) o_4@@11 f_9@@170) (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@28) o_4@@11 f_9@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| ExhaleHeap@@28) o_4@@11 f_9@@170))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_21744) (ExhaleHeap@@29 T@PolymorphicMapType_21744) (Mask@@70 T@PolymorphicMapType_21765) (o_4@@12 T@Ref) (f_9@@171 T@Field_26989_26990) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_11791_11792 Mask@@70 o_4@@12 f_9@@171) (= (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@31) o_4@@12 f_9@@171) (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@29) o_4@@12 f_9@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| ExhaleHeap@@29) o_4@@12 f_9@@171))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_21744) (ExhaleHeap@@30 T@PolymorphicMapType_21744) (Mask@@71 T@PolymorphicMapType_21765) (o_4@@13 T@Ref) (f_9@@172 T@Field_11791_2202) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_11791_2202 Mask@@71 o_4@@13 f_9@@172) (= (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@32) o_4@@13 f_9@@172) (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@30) o_4@@13 f_9@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| ExhaleHeap@@30) o_4@@13 f_9@@172))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_21744) (ExhaleHeap@@31 T@PolymorphicMapType_21744) (Mask@@72 T@PolymorphicMapType_21765) (o_4@@14 T@Ref) (f_9@@173 T@Field_11791_11783) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_11791_11783 Mask@@72 o_4@@14 f_9@@173) (= (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@33) o_4@@14 f_9@@173) (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@31) o_4@@14 f_9@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| ExhaleHeap@@31) o_4@@14 f_9@@173))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_21744) (ExhaleHeap@@32 T@PolymorphicMapType_21744) (Mask@@73 T@PolymorphicMapType_21765) (o_4@@15 T@Ref) (f_9@@174 T@Field_11782_25154) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_11782_74465 Mask@@73 o_4@@15 f_9@@174) (= (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@34) o_4@@15 f_9@@174) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@32) o_4@@15 f_9@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| ExhaleHeap@@32) o_4@@15 f_9@@174))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_21744) (ExhaleHeap@@33 T@PolymorphicMapType_21744) (Mask@@74 T@PolymorphicMapType_21765) (o_4@@16 T@Ref) (f_9@@175 T@Field_21804_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_11782_53 Mask@@74 o_4@@16 f_9@@175) (= (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@35) o_4@@16 f_9@@175) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@33) o_4@@16 f_9@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| ExhaleHeap@@33) o_4@@16 f_9@@175))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_21744) (ExhaleHeap@@34 T@PolymorphicMapType_21744) (Mask@@75 T@PolymorphicMapType_21765) (o_4@@17 T@Ref) (f_9@@176 T@Field_11782_11792) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_11782_11792 Mask@@75 o_4@@17 f_9@@176) (= (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@36) o_4@@17 f_9@@176) (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@34) o_4@@17 f_9@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| ExhaleHeap@@34) o_4@@17 f_9@@176))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_21744) (ExhaleHeap@@35 T@PolymorphicMapType_21744) (Mask@@76 T@PolymorphicMapType_21765) (o_4@@18 T@Ref) (f_9@@177 T@Field_26942_2202) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_11788_2202 Mask@@76 o_4@@18 f_9@@177) (= (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@37) o_4@@18 f_9@@177) (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@35) o_4@@18 f_9@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| ExhaleHeap@@35) o_4@@18 f_9@@177))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_21744) (ExhaleHeap@@36 T@PolymorphicMapType_21744) (Mask@@77 T@PolymorphicMapType_21765) (o_4@@19 T@Ref) (f_9@@178 T@Field_21817_21818) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_11782_11783 Mask@@77 o_4@@19 f_9@@178) (= (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@38) o_4@@19 f_9@@178) (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@36) o_4@@19 f_9@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| ExhaleHeap@@36) o_4@@19 f_9@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_26083_26088) ) (! (= (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_26069_53) ) (! (= (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_26100_26101) ) (! (= (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_26069_1761) ) (! (= (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_26069_11783) ) (! (= (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_25149_25154) ) (! (= (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_25134_53) ) (! (= (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_25167_25168) ) (! (= (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_25134_1219) ) (! (= (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_25134_11783) ) (! (= (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_27002_27007) ) (! (= (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_11791_53) ) (! (= (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_26989_26990) ) (! (= (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_11791_2202) ) (! (= (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_11791_11783) ) (! (= (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_11782_25154) ) (! (= (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_21804_53) ) (! (= (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_11782_11792) ) (! (= (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_26942_2202) ) (! (= (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_21817_21818) ) (! (= (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@6 T@Ref) (arg4@@6 Real) (arg5@@6 T@Ref) (arg6@@6 Int) ) (! (= (getPredWandId_11724_1761 (wand_1 arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@6 arg6@@6)) 2)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@6 arg6@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_21765) (SummandMask1 T@PolymorphicMapType_21765) (SummandMask2 T@PolymorphicMapType_21765) (o_2@@79 T@Ref) (f_4@@79 T@Field_26083_26088) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_21765) (SummandMask1@@0 T@PolymorphicMapType_21765) (SummandMask2@@0 T@PolymorphicMapType_21765) (o_2@@80 T@Ref) (f_4@@80 T@Field_26069_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_21765) (SummandMask1@@1 T@PolymorphicMapType_21765) (SummandMask2@@1 T@PolymorphicMapType_21765) (o_2@@81 T@Ref) (f_4@@81 T@Field_26100_26101) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_21765) (SummandMask1@@2 T@PolymorphicMapType_21765) (SummandMask2@@2 T@PolymorphicMapType_21765) (o_2@@82 T@Ref) (f_4@@82 T@Field_26069_1761) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_21765) (SummandMask1@@3 T@PolymorphicMapType_21765) (SummandMask2@@3 T@PolymorphicMapType_21765) (o_2@@83 T@Ref) (f_4@@83 T@Field_26069_11783) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_21765) (SummandMask1@@4 T@PolymorphicMapType_21765) (SummandMask2@@4 T@PolymorphicMapType_21765) (o_2@@84 T@Ref) (f_4@@84 T@Field_25149_25154) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_21765) (SummandMask1@@5 T@PolymorphicMapType_21765) (SummandMask2@@5 T@PolymorphicMapType_21765) (o_2@@85 T@Ref) (f_4@@85 T@Field_25134_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_21765) (SummandMask1@@6 T@PolymorphicMapType_21765) (SummandMask2@@6 T@PolymorphicMapType_21765) (o_2@@86 T@Ref) (f_4@@86 T@Field_25167_25168) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_21765) (SummandMask1@@7 T@PolymorphicMapType_21765) (SummandMask2@@7 T@PolymorphicMapType_21765) (o_2@@87 T@Ref) (f_4@@87 T@Field_25134_1219) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_21765) (SummandMask1@@8 T@PolymorphicMapType_21765) (SummandMask2@@8 T@PolymorphicMapType_21765) (o_2@@88 T@Ref) (f_4@@88 T@Field_25134_11783) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_21765) (SummandMask1@@9 T@PolymorphicMapType_21765) (SummandMask2@@9 T@PolymorphicMapType_21765) (o_2@@89 T@Ref) (f_4@@89 T@Field_27002_27007) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_21765) (SummandMask1@@10 T@PolymorphicMapType_21765) (SummandMask2@@10 T@PolymorphicMapType_21765) (o_2@@90 T@Ref) (f_4@@90 T@Field_11791_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_21765) (SummandMask1@@11 T@PolymorphicMapType_21765) (SummandMask2@@11 T@PolymorphicMapType_21765) (o_2@@91 T@Ref) (f_4@@91 T@Field_26989_26990) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_21765) (SummandMask1@@12 T@PolymorphicMapType_21765) (SummandMask2@@12 T@PolymorphicMapType_21765) (o_2@@92 T@Ref) (f_4@@92 T@Field_11791_2202) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_21765) (SummandMask1@@13 T@PolymorphicMapType_21765) (SummandMask2@@13 T@PolymorphicMapType_21765) (o_2@@93 T@Ref) (f_4@@93 T@Field_11791_11783) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_21765) (SummandMask1@@14 T@PolymorphicMapType_21765) (SummandMask2@@14 T@PolymorphicMapType_21765) (o_2@@94 T@Ref) (f_4@@94 T@Field_11782_25154) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_21765) (SummandMask1@@15 T@PolymorphicMapType_21765) (SummandMask2@@15 T@PolymorphicMapType_21765) (o_2@@95 T@Ref) (f_4@@95 T@Field_21804_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_21765) (SummandMask1@@16 T@PolymorphicMapType_21765) (SummandMask2@@16 T@PolymorphicMapType_21765) (o_2@@96 T@Ref) (f_4@@96 T@Field_11782_11792) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_21765) (SummandMask1@@17 T@PolymorphicMapType_21765) (SummandMask2@@17 T@PolymorphicMapType_21765) (o_2@@97 T@Ref) (f_4@@97 T@Field_26942_2202) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_21765) (SummandMask1@@18 T@PolymorphicMapType_21765) (SummandMask2@@18 T@PolymorphicMapType_21765) (o_2@@98 T@Ref) (f_4@@98 T@Field_21817_21818) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@7 T@Ref) (arg4@@7 Real) (arg5@@7 T@Ref) (arg6@@7 Real) (arg7@@4 T@Ref) (arg8@@4 Int) (arg1_2@@0 T@Ref) (arg2_2@@0 Real) (arg3_2@@0 T@Ref) (arg4_2@@0 Real) (arg5_2@@0 T@Ref) (arg6_2@@0 Real) (arg7_2 T@Ref) (arg8_2 Int) ) (!  (=> (= (wand arg1@@7 arg2@@7 arg3@@7 arg4@@7 arg5@@7 arg6@@7 arg7@@4 arg8@@4) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0 arg5_2@@0 arg6_2@@0 arg7_2 arg8_2)) (and (= arg1@@7 arg1_2@@0) (and (= arg2@@7 arg2_2@@0) (and (= arg3@@7 arg3_2@@0) (and (= arg4@@7 arg4_2@@0) (and (= arg5@@7 arg5_2@@0) (and (= arg6@@7 arg6_2@@0) (and (= arg7@@4 arg7_2) (= arg8@@4 arg8_2)))))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@7 arg2@@7 arg3@@7 arg4@@7 arg5@@7 arg6@@7 arg7@@4 arg8@@4) (wand arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0 arg5_2@@0 arg6_2@@0 arg7_2 arg8_2))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@8 T@Ref) (arg4@@8 Real) (arg5@@8 T@Ref) (arg6@@8 Int) ) (! (IsWandField_11724_1761 (wand_1 arg1@@8 arg2@@8 arg3@@8 arg4@@8 arg5@@8 arg6@@8))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@8 arg2@@8 arg3@@8 arg4@@8 arg5@@8 arg6@@8))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@9 T@Ref) (arg4@@9 Real) (arg5@@9 T@Ref) (arg6@@9 Int) ) (! (IsWandField_11739_11740 (|wand_1#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9 arg5@@9 arg6@@9))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9 arg5@@9 arg6@@9))
)))
(assert (forall ((arg1@@10 T@Ref) (arg2@@10 Real) (arg3@@10 T@Ref) (arg4@@10 Real) (arg5@@10 T@Ref) (arg6@@10 Int) ) (!  (not (IsPredicateField_11724_1761 (wand_1 arg1@@10 arg2@@10 arg3@@10 arg4@@10 arg5@@10 arg6@@10)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@10 arg2@@10 arg3@@10 arg4@@10 arg5@@10 arg6@@10))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Real) (arg3@@11 T@Ref) (arg4@@11 Real) (arg5@@11 T@Ref) (arg6@@11 Int) ) (!  (not (IsPredicateField_11739_11740 (|wand_1#ft| arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@11 arg6@@11)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@11 arg6@@11))
)))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 Real) (arg3@@12 T@Ref) (arg4@@12 Real) (arg5@@12 T@Ref) (arg6@@12 Real) (arg7@@5 T@Ref) (arg8@@5 Int) ) (! (= (getPredWandId_11641_1219 (wand arg1@@12 arg2@@12 arg3@@12 arg4@@12 arg5@@12 arg6@@12 arg7@@5 arg8@@5)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@12 arg2@@12 arg3@@12 arg4@@12 arg5@@12 arg6@@12 arg7@@5 arg8@@5))
)))
(assert (forall ((self@@3 T@Ref) ) (! (= (getPredWandId_11791_11792 (Foo self@@3)) 0)
 :qid |stdinbpl.274:15|
 :skolemid |38|
 :pattern ( (Foo self@@3))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_21744) (o_3 T@Ref) (f_10 T@Field_26083_26088) (v T@PolymorphicMapType_22293) ) (! (succHeap Heap@@39 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@39) (store (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@39) o_3 f_10 v) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@39) (store (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@39) o_3 f_10 v) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@39) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_21744) (o_3@@0 T@Ref) (f_10@@0 T@Field_26069_1761) (v@@0 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@40) (store (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@40) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@40) (store (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@40) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@40) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_21744) (o_3@@1 T@Ref) (f_10@@1 T@Field_26100_26101) (v@@1 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@41) (store (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@41) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@41) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@41) (store (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@41) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_21744) (o_3@@2 T@Ref) (f_10@@2 T@Field_26069_11783) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@42) (store (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@42) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@42) (store (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@42) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@42) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_21744) (o_3@@3 T@Ref) (f_10@@3 T@Field_26069_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@43) (store (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@43) o_3@@3 f_10@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@43) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@43) (store (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@43) o_3@@3 f_10@@3 v@@3)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_21744) (o_3@@4 T@Ref) (f_10@@4 T@Field_25149_25154) (v@@4 T@PolymorphicMapType_22293) ) (! (succHeap Heap@@44 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@44) (store (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@44) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@44) (store (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@44) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@44) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_21744) (o_3@@5 T@Ref) (f_10@@5 T@Field_25134_1219) (v@@5 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@45) (store (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@45) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@45) (store (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@45) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@45) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_21744) (o_3@@6 T@Ref) (f_10@@6 T@Field_25167_25168) (v@@6 T@FrameType) ) (! (succHeap Heap@@46 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@46) (store (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@46) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@46) (store (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@46) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@46) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_21744) (o_3@@7 T@Ref) (f_10@@7 T@Field_25134_11783) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@47) (store (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@47) o_3@@7 f_10@@7 v@@7) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@47) (store (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@47) o_3@@7 f_10@@7 v@@7) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@47) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_21744) (o_3@@8 T@Ref) (f_10@@8 T@Field_25134_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@48) (store (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@48) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@48) (store (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@48) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@48) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_21744) (o_3@@9 T@Ref) (f_10@@9 T@Field_27002_27007) (v@@9 T@PolymorphicMapType_22293) ) (! (succHeap Heap@@49 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@49) (store (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@49) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@49) (store (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@49) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@49) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_21744) (o_3@@10 T@Ref) (f_10@@10 T@Field_11791_2202) (v@@10 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@50) (store (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@50) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@50) (store (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@50) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@50) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_21744) (o_3@@11 T@Ref) (f_10@@11 T@Field_26989_26990) (v@@11 T@FrameType) ) (! (succHeap Heap@@51 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@51) (store (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@51) o_3@@11 f_10@@11 v@@11) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@51) (store (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@51) o_3@@11 f_10@@11 v@@11) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@51) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_21744) (o_3@@12 T@Ref) (f_10@@12 T@Field_11791_11783) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@52) (store (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@52) o_3@@12 f_10@@12 v@@12) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@52) (store (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@52) o_3@@12 f_10@@12 v@@12) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@52) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_21744) (o_3@@13 T@Ref) (f_10@@13 T@Field_11791_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@53) (store (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@53) o_3@@13 f_10@@13 v@@13) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@53) (store (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@53) o_3@@13 f_10@@13 v@@13) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@53) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_21744) (o_3@@14 T@Ref) (f_10@@14 T@Field_11782_25154) (v@@14 T@PolymorphicMapType_22293) ) (! (succHeap Heap@@54 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@54) (store (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@54) o_3@@14 f_10@@14 v@@14) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@54) (store (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@54) o_3@@14 f_10@@14 v@@14) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@54) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_21744) (o_3@@15 T@Ref) (f_10@@15 T@Field_26942_2202) (v@@15 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@55) (store (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@55) o_3@@15 f_10@@15 v@@15) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@55) (store (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@55) o_3@@15 f_10@@15 v@@15) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@55) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_21744) (o_3@@16 T@Ref) (f_10@@16 T@Field_11782_11792) (v@@16 T@FrameType) ) (! (succHeap Heap@@56 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@56) (store (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@56) o_3@@16 f_10@@16 v@@16) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@56) (store (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@56) o_3@@16 f_10@@16 v@@16) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@56) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_21744) (o_3@@17 T@Ref) (f_10@@17 T@Field_21817_21818) (v@@17 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@57) (store (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@57) o_3@@17 f_10@@17 v@@17) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@57) (store (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@57) o_3@@17 f_10@@17 v@@17) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@57) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_21744) (o_3@@18 T@Ref) (f_10@@18 T@Field_21804_53) (v@@18 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_21744 (store (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@58) o_3@@18 f_10@@18 v@@18) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_21744 (store (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@58) o_3@@18 f_10@@18 v@@18) (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11791_11792#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11788_2202#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11795_31192#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11650_37376#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11731_71927#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11782_11792#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11782_74507#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11791_11783#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11791_2202#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_11791_53#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_25134_11783#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_25134_2202#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_25134_11792#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_25134_53#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_26069_11783#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_26069_2202#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_26069_11792#PolymorphicMapType_21744| Heap@@58) (|PolymorphicMapType_21744_26069_53#PolymorphicMapType_21744| Heap@@58)))
)))
(assert (forall ((self@@4 T@Ref) ) (! (= (PredicateMaskField_11791 (Foo self@@4)) (|Foo#sm| self@@4))
 :qid |stdinbpl.266:15|
 :skolemid |36|
 :pattern ( (PredicateMaskField_11791 (Foo self@@4)))
)))
(assert (forall ((o_3@@19 T@Ref) (f_8 T@Field_21817_21818) (Heap@@59 T@PolymorphicMapType_21744) ) (!  (=> (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@59) o_3@@19 $allocated) (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@59) (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@59) o_3@@19 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_21744_11509_11510#PolymorphicMapType_21744| Heap@@59) o_3@@19 f_8))
)))
(assert (forall ((p@@4 T@Field_26989_26990) (v_1@@3 T@FrameType) (q T@Field_26989_26990) (w@@3 T@FrameType) (r T@Field_26989_26990) (u T@FrameType) ) (!  (=> (and (InsidePredicate_26989_26989 p@@4 v_1@@3 q w@@3) (InsidePredicate_26989_26989 q w@@3 r u)) (InsidePredicate_26989_26989 p@@4 v_1@@3 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_26989 p@@4 v_1@@3 q w@@3) (InsidePredicate_26989_26989 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_26989_26990) (v_1@@4 T@FrameType) (q@@0 T@Field_26989_26990) (w@@4 T@FrameType) (r@@0 T@Field_26100_26101) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_26989 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_26989_26069 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_26989_26069 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_26989 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_26989_26069 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_26989_26990) (v_1@@5 T@FrameType) (q@@1 T@Field_26989_26990) (w@@5 T@FrameType) (r@@1 T@Field_25167_25168) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_26989 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_26989_25134 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_26989_25134 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_26989 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_26989_25134 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_26989_26990) (v_1@@6 T@FrameType) (q@@2 T@Field_26989_26990) (w@@6 T@FrameType) (r@@2 T@Field_11782_11792) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_26989 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_26989_21804 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_26989_21804 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_26989 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_26989_21804 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_26989_26990) (v_1@@7 T@FrameType) (q@@3 T@Field_26100_26101) (w@@7 T@FrameType) (r@@3 T@Field_26989_26990) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_26069 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_26069_26989 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_26989_26989 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_26069 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_26069_26989 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_26989_26990) (v_1@@8 T@FrameType) (q@@4 T@Field_26100_26101) (w@@8 T@FrameType) (r@@4 T@Field_26100_26101) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_26069 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_26069_26069 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_26989_26069 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_26069 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_26069_26069 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_26989_26990) (v_1@@9 T@FrameType) (q@@5 T@Field_26100_26101) (w@@9 T@FrameType) (r@@5 T@Field_25167_25168) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_26069 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_26069_25134 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_26989_25134 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_26069 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_26069_25134 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_26989_26990) (v_1@@10 T@FrameType) (q@@6 T@Field_26100_26101) (w@@10 T@FrameType) (r@@6 T@Field_11782_11792) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_26069 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_26069_21804 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_26989_21804 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_26069 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_26069_21804 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_26989_26990) (v_1@@11 T@FrameType) (q@@7 T@Field_25167_25168) (w@@11 T@FrameType) (r@@7 T@Field_26989_26990) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_25134 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_25134_26989 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_26989_26989 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_25134 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_25134_26989 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_26989_26990) (v_1@@12 T@FrameType) (q@@8 T@Field_25167_25168) (w@@12 T@FrameType) (r@@8 T@Field_26100_26101) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_25134 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_25134_26069 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_26989_26069 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_25134 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_25134_26069 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_26989_26990) (v_1@@13 T@FrameType) (q@@9 T@Field_25167_25168) (w@@13 T@FrameType) (r@@9 T@Field_25167_25168) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_25134 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_25134_25134 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_26989_25134 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_25134 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_25134_25134 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_26989_26990) (v_1@@14 T@FrameType) (q@@10 T@Field_25167_25168) (w@@14 T@FrameType) (r@@10 T@Field_11782_11792) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_25134 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_25134_21804 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_26989_21804 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_25134 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_25134_21804 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_26989_26990) (v_1@@15 T@FrameType) (q@@11 T@Field_11782_11792) (w@@15 T@FrameType) (r@@11 T@Field_26989_26990) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_21804 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_21804_26989 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_26989_26989 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_21804 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_21804_26989 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_26989_26990) (v_1@@16 T@FrameType) (q@@12 T@Field_11782_11792) (w@@16 T@FrameType) (r@@12 T@Field_26100_26101) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_21804 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_21804_26069 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_26989_26069 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_21804 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_21804_26069 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_26989_26990) (v_1@@17 T@FrameType) (q@@13 T@Field_11782_11792) (w@@17 T@FrameType) (r@@13 T@Field_25167_25168) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_21804 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_21804_25134 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_26989_25134 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_21804 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_21804_25134 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_26989_26990) (v_1@@18 T@FrameType) (q@@14 T@Field_11782_11792) (w@@18 T@FrameType) (r@@14 T@Field_11782_11792) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_26989_21804 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_21804_21804 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_26989_21804 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26989_21804 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_21804_21804 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_26100_26101) (v_1@@19 T@FrameType) (q@@15 T@Field_26989_26990) (w@@19 T@FrameType) (r@@15 T@Field_26989_26990) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_26989 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_26989_26989 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_26069_26989 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_26989 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_26989_26989 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_26100_26101) (v_1@@20 T@FrameType) (q@@16 T@Field_26989_26990) (w@@20 T@FrameType) (r@@16 T@Field_26100_26101) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_26989 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_26989_26069 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_26069_26069 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_26989 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_26989_26069 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_26100_26101) (v_1@@21 T@FrameType) (q@@17 T@Field_26989_26990) (w@@21 T@FrameType) (r@@17 T@Field_25167_25168) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_26989 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_26989_25134 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_26069_25134 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_26989 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_26989_25134 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_26100_26101) (v_1@@22 T@FrameType) (q@@18 T@Field_26989_26990) (w@@22 T@FrameType) (r@@18 T@Field_11782_11792) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_26989 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_26989_21804 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_26069_21804 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_26989 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_26989_21804 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_26100_26101) (v_1@@23 T@FrameType) (q@@19 T@Field_26100_26101) (w@@23 T@FrameType) (r@@19 T@Field_26989_26990) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_26069 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_26069_26989 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_26069_26989 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_26069 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_26069_26989 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_26100_26101) (v_1@@24 T@FrameType) (q@@20 T@Field_26100_26101) (w@@24 T@FrameType) (r@@20 T@Field_26100_26101) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_26069 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_26069_26069 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_26069_26069 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_26069 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_26069_26069 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_26100_26101) (v_1@@25 T@FrameType) (q@@21 T@Field_26100_26101) (w@@25 T@FrameType) (r@@21 T@Field_25167_25168) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_26069 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_26069_25134 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_26069_25134 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_26069 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_26069_25134 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_26100_26101) (v_1@@26 T@FrameType) (q@@22 T@Field_26100_26101) (w@@26 T@FrameType) (r@@22 T@Field_11782_11792) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_26069 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_26069_21804 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_26069_21804 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_26069 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_26069_21804 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_26100_26101) (v_1@@27 T@FrameType) (q@@23 T@Field_25167_25168) (w@@27 T@FrameType) (r@@23 T@Field_26989_26990) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_25134 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_25134_26989 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_26069_26989 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_25134 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_25134_26989 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_26100_26101) (v_1@@28 T@FrameType) (q@@24 T@Field_25167_25168) (w@@28 T@FrameType) (r@@24 T@Field_26100_26101) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_25134 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_25134_26069 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_26069_26069 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_25134 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_25134_26069 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_26100_26101) (v_1@@29 T@FrameType) (q@@25 T@Field_25167_25168) (w@@29 T@FrameType) (r@@25 T@Field_25167_25168) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_25134 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_25134_25134 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_26069_25134 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_25134 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_25134_25134 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_26100_26101) (v_1@@30 T@FrameType) (q@@26 T@Field_25167_25168) (w@@30 T@FrameType) (r@@26 T@Field_11782_11792) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_25134 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_25134_21804 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_26069_21804 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_25134 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_25134_21804 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_26100_26101) (v_1@@31 T@FrameType) (q@@27 T@Field_11782_11792) (w@@31 T@FrameType) (r@@27 T@Field_26989_26990) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_21804 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_21804_26989 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_26069_26989 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_21804 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_21804_26989 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_26100_26101) (v_1@@32 T@FrameType) (q@@28 T@Field_11782_11792) (w@@32 T@FrameType) (r@@28 T@Field_26100_26101) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_21804 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_21804_26069 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_26069_26069 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_21804 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_21804_26069 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_26100_26101) (v_1@@33 T@FrameType) (q@@29 T@Field_11782_11792) (w@@33 T@FrameType) (r@@29 T@Field_25167_25168) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_21804 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_21804_25134 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_26069_25134 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_21804 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_21804_25134 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_26100_26101) (v_1@@34 T@FrameType) (q@@30 T@Field_11782_11792) (w@@34 T@FrameType) (r@@30 T@Field_11782_11792) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_26069_21804 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_21804_21804 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_26069_21804 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26069_21804 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_21804_21804 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_25167_25168) (v_1@@35 T@FrameType) (q@@31 T@Field_26989_26990) (w@@35 T@FrameType) (r@@31 T@Field_26989_26990) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_26989 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_26989_26989 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_25134_26989 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_26989 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_26989_26989 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_25167_25168) (v_1@@36 T@FrameType) (q@@32 T@Field_26989_26990) (w@@36 T@FrameType) (r@@32 T@Field_26100_26101) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_26989 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_26989_26069 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_25134_26069 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_26989 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_26989_26069 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_25167_25168) (v_1@@37 T@FrameType) (q@@33 T@Field_26989_26990) (w@@37 T@FrameType) (r@@33 T@Field_25167_25168) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_26989 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_26989_25134 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_25134_25134 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_26989 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_26989_25134 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_25167_25168) (v_1@@38 T@FrameType) (q@@34 T@Field_26989_26990) (w@@38 T@FrameType) (r@@34 T@Field_11782_11792) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_26989 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_26989_21804 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_25134_21804 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_26989 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_26989_21804 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_25167_25168) (v_1@@39 T@FrameType) (q@@35 T@Field_26100_26101) (w@@39 T@FrameType) (r@@35 T@Field_26989_26990) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_26069 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_26069_26989 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_25134_26989 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_26069 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_26069_26989 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_25167_25168) (v_1@@40 T@FrameType) (q@@36 T@Field_26100_26101) (w@@40 T@FrameType) (r@@36 T@Field_26100_26101) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_26069 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_26069_26069 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_25134_26069 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_26069 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_26069_26069 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_25167_25168) (v_1@@41 T@FrameType) (q@@37 T@Field_26100_26101) (w@@41 T@FrameType) (r@@37 T@Field_25167_25168) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_26069 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_26069_25134 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_25134_25134 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_26069 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_26069_25134 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_25167_25168) (v_1@@42 T@FrameType) (q@@38 T@Field_26100_26101) (w@@42 T@FrameType) (r@@38 T@Field_11782_11792) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_26069 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_26069_21804 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_25134_21804 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_26069 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_26069_21804 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_25167_25168) (v_1@@43 T@FrameType) (q@@39 T@Field_25167_25168) (w@@43 T@FrameType) (r@@39 T@Field_26989_26990) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_25134 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_25134_26989 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_25134_26989 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_25134 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_25134_26989 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_25167_25168) (v_1@@44 T@FrameType) (q@@40 T@Field_25167_25168) (w@@44 T@FrameType) (r@@40 T@Field_26100_26101) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_25134 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_25134_26069 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_25134_26069 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_25134 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_25134_26069 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_25167_25168) (v_1@@45 T@FrameType) (q@@41 T@Field_25167_25168) (w@@45 T@FrameType) (r@@41 T@Field_25167_25168) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_25134 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_25134_25134 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_25134_25134 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_25134 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_25134_25134 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_25167_25168) (v_1@@46 T@FrameType) (q@@42 T@Field_25167_25168) (w@@46 T@FrameType) (r@@42 T@Field_11782_11792) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_25134 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_25134_21804 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_25134_21804 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_25134 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_25134_21804 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_25167_25168) (v_1@@47 T@FrameType) (q@@43 T@Field_11782_11792) (w@@47 T@FrameType) (r@@43 T@Field_26989_26990) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_21804 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_21804_26989 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_25134_26989 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_21804 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_21804_26989 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_25167_25168) (v_1@@48 T@FrameType) (q@@44 T@Field_11782_11792) (w@@48 T@FrameType) (r@@44 T@Field_26100_26101) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_21804 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_21804_26069 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_25134_26069 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_21804 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_21804_26069 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_25167_25168) (v_1@@49 T@FrameType) (q@@45 T@Field_11782_11792) (w@@49 T@FrameType) (r@@45 T@Field_25167_25168) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_21804 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_21804_25134 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_25134_25134 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_21804 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_21804_25134 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_25167_25168) (v_1@@50 T@FrameType) (q@@46 T@Field_11782_11792) (w@@50 T@FrameType) (r@@46 T@Field_11782_11792) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_25134_21804 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_21804_21804 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_25134_21804 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25134_21804 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_21804_21804 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_11782_11792) (v_1@@51 T@FrameType) (q@@47 T@Field_26989_26990) (w@@51 T@FrameType) (r@@47 T@Field_26989_26990) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_26989 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_26989_26989 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_21804_26989 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_26989 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_26989_26989 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_11782_11792) (v_1@@52 T@FrameType) (q@@48 T@Field_26989_26990) (w@@52 T@FrameType) (r@@48 T@Field_26100_26101) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_26989 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_26989_26069 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_21804_26069 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_26989 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_26989_26069 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_11782_11792) (v_1@@53 T@FrameType) (q@@49 T@Field_26989_26990) (w@@53 T@FrameType) (r@@49 T@Field_25167_25168) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_26989 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_26989_25134 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_21804_25134 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_26989 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_26989_25134 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_11782_11792) (v_1@@54 T@FrameType) (q@@50 T@Field_26989_26990) (w@@54 T@FrameType) (r@@50 T@Field_11782_11792) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_26989 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_26989_21804 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_21804_21804 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_26989 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_26989_21804 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_11782_11792) (v_1@@55 T@FrameType) (q@@51 T@Field_26100_26101) (w@@55 T@FrameType) (r@@51 T@Field_26989_26990) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_26069 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_26069_26989 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_21804_26989 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_26069 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_26069_26989 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_11782_11792) (v_1@@56 T@FrameType) (q@@52 T@Field_26100_26101) (w@@56 T@FrameType) (r@@52 T@Field_26100_26101) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_26069 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_26069_26069 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_21804_26069 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_26069 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_26069_26069 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_11782_11792) (v_1@@57 T@FrameType) (q@@53 T@Field_26100_26101) (w@@57 T@FrameType) (r@@53 T@Field_25167_25168) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_26069 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_26069_25134 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_21804_25134 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_26069 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_26069_25134 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_11782_11792) (v_1@@58 T@FrameType) (q@@54 T@Field_26100_26101) (w@@58 T@FrameType) (r@@54 T@Field_11782_11792) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_26069 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_26069_21804 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_21804_21804 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_26069 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_26069_21804 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_11782_11792) (v_1@@59 T@FrameType) (q@@55 T@Field_25167_25168) (w@@59 T@FrameType) (r@@55 T@Field_26989_26990) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_25134 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_25134_26989 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_21804_26989 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_25134 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_25134_26989 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_11782_11792) (v_1@@60 T@FrameType) (q@@56 T@Field_25167_25168) (w@@60 T@FrameType) (r@@56 T@Field_26100_26101) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_25134 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_25134_26069 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_21804_26069 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_25134 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_25134_26069 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_11782_11792) (v_1@@61 T@FrameType) (q@@57 T@Field_25167_25168) (w@@61 T@FrameType) (r@@57 T@Field_25167_25168) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_25134 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_25134_25134 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_21804_25134 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_25134 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_25134_25134 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_11782_11792) (v_1@@62 T@FrameType) (q@@58 T@Field_25167_25168) (w@@62 T@FrameType) (r@@58 T@Field_11782_11792) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_25134 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_25134_21804 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_21804_21804 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_25134 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_25134_21804 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_11782_11792) (v_1@@63 T@FrameType) (q@@59 T@Field_11782_11792) (w@@63 T@FrameType) (r@@59 T@Field_26989_26990) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_21804 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_21804_26989 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_21804_26989 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_21804 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_21804_26989 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_11782_11792) (v_1@@64 T@FrameType) (q@@60 T@Field_11782_11792) (w@@64 T@FrameType) (r@@60 T@Field_26100_26101) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_21804 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_21804_26069 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_21804_26069 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_21804 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_21804_26069 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_11782_11792) (v_1@@65 T@FrameType) (q@@61 T@Field_11782_11792) (w@@65 T@FrameType) (r@@61 T@Field_25167_25168) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_21804 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_21804_25134 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_21804_25134 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_21804 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_21804_25134 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_11782_11792) (v_1@@66 T@FrameType) (q@@62 T@Field_11782_11792) (w@@66 T@FrameType) (r@@62 T@Field_11782_11792) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_21804_21804 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_21804_21804 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_21804_21804 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21804_21804 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_21804_21804 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@60 () T@PolymorphicMapType_21744)
(declare-fun self@@5 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_21765)
(set-info :boogie-vc-id |Foo#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@60 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_21744_11506_53#PolymorphicMapType_21744| Heap@@60) self@@5 $allocated)) (=> (and (and (not (= self@@5 null)) (= Mask@0 (PolymorphicMapType_21765 (store (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| ZeroMask) self@@5 f1_2 (+ (select (|PolymorphicMapType_21765_11782_11783#PolymorphicMapType_21765| ZeroMask) self@@5 f1_2) FullPerm)) (|PolymorphicMapType_21765_11788_2202#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11791_11792#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11641_1219#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11724_1761#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11782_11792#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11782_53#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11782_93635#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11791_11783#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11791_2202#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11791_53#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11791_94046#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11641_11783#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11641_11792#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11641_53#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11641_94460#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11724_11783#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11724_11792#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11724_53#PolymorphicMapType_21765| ZeroMask) (|PolymorphicMapType_21765_11724_94874#PolymorphicMapType_21765| ZeroMask)))) (and (state Heap@@60 Mask@0) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_11782_11783 Mask@0 self@@5 f1_2))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
