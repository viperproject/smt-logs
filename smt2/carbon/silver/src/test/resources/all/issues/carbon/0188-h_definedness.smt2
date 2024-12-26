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
(declare-sort T@Field_3907_53 0)
(declare-sort T@Field_3920_3921 0)
(declare-sort T@Field_3907_10007 0)
(declare-sort T@Field_3907_9874 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3868 0)) (((PolymorphicMapType_3868 (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| (Array T@Ref T@Field_3907_53 Real)) (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| (Array T@Ref T@Field_3920_3921 Real)) (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| (Array T@Ref T@Field_3907_9874 Real)) (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| (Array T@Ref T@Field_3907_10007 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4396 0)) (((PolymorphicMapType_4396 (|PolymorphicMapType_4396_3907_53#PolymorphicMapType_4396| (Array T@Ref T@Field_3907_53 Bool)) (|PolymorphicMapType_4396_3907_3921#PolymorphicMapType_4396| (Array T@Ref T@Field_3920_3921 Bool)) (|PolymorphicMapType_4396_3907_9874#PolymorphicMapType_4396| (Array T@Ref T@Field_3907_9874 Bool)) (|PolymorphicMapType_4396_3907_10987#PolymorphicMapType_4396| (Array T@Ref T@Field_3907_10007 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3847 0)) (((PolymorphicMapType_3847 (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| (Array T@Ref T@Field_3907_53 Bool)) (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| (Array T@Ref T@Field_3920_3921 T@Ref)) (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| (Array T@Ref T@Field_3907_10007 T@PolymorphicMapType_4396)) (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| (Array T@Ref T@Field_3907_9874 T@FrameType)) ) ) ))
(declare-fun state (T@PolymorphicMapType_3847 T@PolymorphicMapType_3868) Bool)
(declare-fun |f'| (T@PolymorphicMapType_3847 Int Int) Bool)
(declare-fun |f#frame| (T@FrameType Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_3847 T@PolymorphicMapType_3847) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3847 T@PolymorphicMapType_3847) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3868) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4396)
(declare-fun dummyFunction_1358 (Bool) Bool)
(declare-fun |f#triggerStateless| (Int Int) Bool)
(declare-fun |g'| (T@PolymorphicMapType_3847 Int Int) Int)
(declare-fun dummyFunction_1586 (Int) Bool)
(declare-fun |g#triggerStateless| (Int Int) Int)
(declare-fun |h'| (T@PolymorphicMapType_3847 Int) Bool)
(declare-fun |h#triggerStateless| (Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3847 T@PolymorphicMapType_3847 T@PolymorphicMapType_3868) Bool)
(declare-fun IsPredicateField_3907_9965 (T@Field_3907_9874) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3907 (T@Field_3907_9874) T@Field_3907_10007)
(declare-fun HasDirectPerm_3907_9938 (T@PolymorphicMapType_3868 T@Ref T@Field_3907_9874) Bool)
(declare-fun IsWandField_3907_11514 (T@Field_3907_9874) Bool)
(declare-fun WandMaskField_3907 (T@Field_3907_9874) T@Field_3907_10007)
(declare-fun dummyHeap () T@PolymorphicMapType_3847)
(declare-fun ZeroMask () T@PolymorphicMapType_3868)
(declare-fun $allocated () T@Field_3907_53)
(declare-fun InsidePredicate_3907_3907 (T@Field_3907_9874 T@FrameType T@Field_3907_9874 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3907_14477 (T@Field_3907_10007) Bool)
(declare-fun IsWandField_3907_14493 (T@Field_3907_10007) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3907_3921 (T@Field_3920_3921) Bool)
(declare-fun IsWandField_3907_3921 (T@Field_3920_3921) Bool)
(declare-fun IsPredicateField_3907_53 (T@Field_3907_53) Bool)
(declare-fun IsWandField_3907_53 (T@Field_3907_53) Bool)
(declare-fun HasDirectPerm_3907_14848 (T@PolymorphicMapType_3868 T@Ref T@Field_3907_10007) Bool)
(declare-fun HasDirectPerm_3907_3921 (T@PolymorphicMapType_3868 T@Ref T@Field_3920_3921) Bool)
(declare-fun HasDirectPerm_3907_53 (T@PolymorphicMapType_3868 T@Ref T@Field_3907_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun g_3 (T@PolymorphicMapType_3847 Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_3868 T@PolymorphicMapType_3868 T@PolymorphicMapType_3868) Bool)
(declare-fun |h#frame| (T@FrameType Int) Bool)
(declare-fun h_3 (T@PolymorphicMapType_3847 Int) Bool)
(declare-fun |g#frame| (T@FrameType Int Int) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_2240 (T@FrameType) T@FrameType)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |h#trigger_1| (T@FrameType Int) Bool)
(declare-fun f_6@@0 (T@PolymorphicMapType_3847 Int Int) Bool)
(assert (forall ((Heap T@PolymorphicMapType_3847) (Mask T@PolymorphicMapType_3868) (a_2 Int) (b_24 Int) ) (!  (=> (state Heap Mask) (= (|f'| Heap a_2 b_24) (|f#frame| EmptyFrame a_2 b_24)))
 :qid |stdinbpl.199:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (|f'| Heap a_2 b_24))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_3847) (Heap1 T@PolymorphicMapType_3847) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3847) (Mask@@0 T@PolymorphicMapType_3868) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3847) (Heap1@@0 T@PolymorphicMapType_3847) (Heap2 T@PolymorphicMapType_3847) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3907_10007) ) (!  (not (select (|PolymorphicMapType_4396_3907_10987#PolymorphicMapType_4396| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4396_3907_10987#PolymorphicMapType_4396| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3907_9874) ) (!  (not (select (|PolymorphicMapType_4396_3907_9874#PolymorphicMapType_4396| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4396_3907_9874#PolymorphicMapType_4396| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3920_3921) ) (!  (not (select (|PolymorphicMapType_4396_3907_3921#PolymorphicMapType_4396| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4396_3907_3921#PolymorphicMapType_4396| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3907_53) ) (!  (not (select (|PolymorphicMapType_4396_3907_53#PolymorphicMapType_4396| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4396_3907_53#PolymorphicMapType_4396| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3847) (a_2@@0 Int) (b_24@@0 Int) ) (! (dummyFunction_1358 (|f#triggerStateless| a_2@@0 b_24@@0))
 :qid |stdinbpl.192:15|
 :skolemid |23|
 :pattern ( (|f'| Heap@@1 a_2@@0 b_24@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3847) (a_2@@1 Int) (b_24@@1 Int) ) (! (dummyFunction_1586 (|g#triggerStateless| a_2@@1 b_24@@1))
 :qid |stdinbpl.233:15|
 :skolemid |26|
 :pattern ( (|g'| Heap@@2 a_2@@1 b_24@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3847) (a_2@@2 Int) ) (! (dummyFunction_1358 (|h#triggerStateless| a_2@@2))
 :qid |stdinbpl.298:15|
 :skolemid |29|
 :pattern ( (|h'| Heap@@3 a_2@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3847) (ExhaleHeap T@PolymorphicMapType_3847) (Mask@@1 T@PolymorphicMapType_3868) (pm_f_2 T@Field_3907_9874) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_3907_9938 Mask@@1 null pm_f_2) (IsPredicateField_3907_9965 pm_f_2)) (= (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@4) null (PredicateMaskField_3907 pm_f_2)) (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| ExhaleHeap) null (PredicateMaskField_3907 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_3907_9965 pm_f_2) (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| ExhaleHeap) null (PredicateMaskField_3907 pm_f_2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3847) (ExhaleHeap@@0 T@PolymorphicMapType_3847) (Mask@@2 T@PolymorphicMapType_3868) (pm_f_2@@0 T@Field_3907_9874) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3907_9938 Mask@@2 null pm_f_2@@0) (IsWandField_3907_11514 pm_f_2@@0)) (= (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@5) null (WandMaskField_3907 pm_f_2@@0)) (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| ExhaleHeap@@0) null (WandMaskField_3907 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsWandField_3907_11514 pm_f_2@@0) (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| ExhaleHeap@@0) null (WandMaskField_3907 pm_f_2@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3847) (ExhaleHeap@@1 T@PolymorphicMapType_3847) (Mask@@3 T@PolymorphicMapType_3868) (pm_f_2@@1 T@Field_3907_9874) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_3907_9938 Mask@@3 null pm_f_2@@1) (IsPredicateField_3907_9965 pm_f_2@@1)) (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_3907_53) ) (!  (=> (select (|PolymorphicMapType_4396_3907_53#PolymorphicMapType_4396| (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@6) null (PredicateMaskField_3907 pm_f_2@@1))) o2_2 f_9) (= (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@6) o2_2 f_9) (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| ExhaleHeap@@1) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| ExhaleHeap@@1) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_3920_3921) ) (!  (=> (select (|PolymorphicMapType_4396_3907_3921#PolymorphicMapType_4396| (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@6) null (PredicateMaskField_3907 pm_f_2@@1))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@6) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| ExhaleHeap@@1) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| ExhaleHeap@@1) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_3907_9874) ) (!  (=> (select (|PolymorphicMapType_4396_3907_9874#PolymorphicMapType_4396| (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@6) null (PredicateMaskField_3907 pm_f_2@@1))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| Heap@@6) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| ExhaleHeap@@1) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| ExhaleHeap@@1) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_3907_10007) ) (!  (=> (select (|PolymorphicMapType_4396_3907_10987#PolymorphicMapType_4396| (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@6) null (PredicateMaskField_3907 pm_f_2@@1))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@6) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| ExhaleHeap@@1) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| ExhaleHeap@@1) o2_2@@2 f_9@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsPredicateField_3907_9965 pm_f_2@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3847) (ExhaleHeap@@2 T@PolymorphicMapType_3847) (Mask@@4 T@PolymorphicMapType_3868) (pm_f_2@@2 T@Field_3907_9874) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3907_9938 Mask@@4 null pm_f_2@@2) (IsWandField_3907_11514 pm_f_2@@2)) (and (and (and (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_3907_53) ) (!  (=> (select (|PolymorphicMapType_4396_3907_53#PolymorphicMapType_4396| (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@7) null (WandMaskField_3907 pm_f_2@@2))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@7) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| ExhaleHeap@@2) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| ExhaleHeap@@2) o2_2@@3 f_9@@3))
)) (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_3920_3921) ) (!  (=> (select (|PolymorphicMapType_4396_3907_3921#PolymorphicMapType_4396| (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@7) null (WandMaskField_3907 pm_f_2@@2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@7) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| ExhaleHeap@@2) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| ExhaleHeap@@2) o2_2@@4 f_9@@4))
))) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_3907_9874) ) (!  (=> (select (|PolymorphicMapType_4396_3907_9874#PolymorphicMapType_4396| (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@7) null (WandMaskField_3907 pm_f_2@@2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| Heap@@7) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| ExhaleHeap@@2) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| ExhaleHeap@@2) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_3907_10007) ) (!  (=> (select (|PolymorphicMapType_4396_3907_10987#PolymorphicMapType_4396| (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@7) null (WandMaskField_3907 pm_f_2@@2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@7) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| ExhaleHeap@@2) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| ExhaleHeap@@2) o2_2@@6 f_9@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_3907_11514 pm_f_2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3847) (ExhaleHeap@@3 T@PolymorphicMapType_3847) (Mask@@5 T@PolymorphicMapType_3868) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@8) o_6 $allocated) (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| ExhaleHeap@@3) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| ExhaleHeap@@3) o_6 $allocated))
)))
(assert (forall ((p T@Field_3907_9874) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3907_3907 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3907_3907 p v_1 p w))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3847) (ExhaleHeap@@4 T@PolymorphicMapType_3847) (Mask@@6 T@PolymorphicMapType_3868) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@9 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3868) (o_2@@3 T@Ref) (f_4@@3 T@Field_3907_10007) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3907_14477 f_4@@3))) (not (IsWandField_3907_14493 f_4@@3))) (<= (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3868) (o_2@@4 T@Ref) (f_4@@4 T@Field_3907_9874) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3907_9965 f_4@@4))) (not (IsWandField_3907_11514 f_4@@4))) (<= (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3868) (o_2@@5 T@Ref) (f_4@@5 T@Field_3920_3921) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3907_3921 f_4@@5))) (not (IsWandField_3907_3921 f_4@@5))) (<= (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3868) (o_2@@6 T@Ref) (f_4@@6 T@Field_3907_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3907_53 f_4@@6))) (not (IsWandField_3907_53 f_4@@6))) (<= (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3868) (o_2@@7 T@Ref) (f_4@@7 T@Field_3907_10007) ) (! (= (HasDirectPerm_3907_14848 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3907_14848 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3868) (o_2@@8 T@Ref) (f_4@@8 T@Field_3907_9874) ) (! (= (HasDirectPerm_3907_9938 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3907_9938 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3868) (o_2@@9 T@Ref) (f_4@@9 T@Field_3920_3921) ) (! (= (HasDirectPerm_3907_3921 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3907_3921 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3868) (o_2@@10 T@Ref) (f_4@@10 T@Field_3907_53) ) (! (= (HasDirectPerm_3907_53 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3907_53 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3847) (ExhaleHeap@@5 T@PolymorphicMapType_3847) (Mask@@15 T@PolymorphicMapType_3868) (o_6@@0 T@Ref) (f_9@@7 T@Field_3907_10007) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_3907_14848 Mask@@15 o_6@@0 f_9@@7) (= (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@10) o_6@@0 f_9@@7) (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| ExhaleHeap@@5) o_6@@0 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| ExhaleHeap@@5) o_6@@0 f_9@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3847) (ExhaleHeap@@6 T@PolymorphicMapType_3847) (Mask@@16 T@PolymorphicMapType_3868) (o_6@@1 T@Ref) (f_9@@8 T@Field_3907_9874) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_3907_9938 Mask@@16 o_6@@1 f_9@@8) (= (select (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| Heap@@11) o_6@@1 f_9@@8) (select (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| ExhaleHeap@@6) o_6@@1 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| ExhaleHeap@@6) o_6@@1 f_9@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3847) (ExhaleHeap@@7 T@PolymorphicMapType_3847) (Mask@@17 T@PolymorphicMapType_3868) (o_6@@2 T@Ref) (f_9@@9 T@Field_3920_3921) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_3907_3921 Mask@@17 o_6@@2 f_9@@9) (= (select (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@12) o_6@@2 f_9@@9) (select (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| ExhaleHeap@@7) o_6@@2 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| ExhaleHeap@@7) o_6@@2 f_9@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3847) (ExhaleHeap@@8 T@PolymorphicMapType_3847) (Mask@@18 T@PolymorphicMapType_3868) (o_6@@3 T@Ref) (f_9@@10 T@Field_3907_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_3907_53 Mask@@18 o_6@@3 f_9@@10) (= (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@13) o_6@@3 f_9@@10) (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| ExhaleHeap@@8) o_6@@3 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| ExhaleHeap@@8) o_6@@3 f_9@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3907_10007) ) (! (= (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3907_9874) ) (! (= (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3920_3921) ) (! (= (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3907_53) ) (! (= (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3847) (a_2@@3 Int) (b_24@@2 Int) ) (!  (and (= (g_3 Heap@@14 a_2@@3 b_24@@2) (|g'| Heap@@14 a_2@@3 b_24@@2)) (dummyFunction_1586 (|g#triggerStateless| a_2@@3 b_24@@2)))
 :qid |stdinbpl.229:15|
 :skolemid |25|
 :pattern ( (g_3 Heap@@14 a_2@@3 b_24@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3868) (SummandMask1 T@PolymorphicMapType_3868) (SummandMask2 T@PolymorphicMapType_3868) (o_2@@15 T@Ref) (f_4@@15 T@Field_3907_10007) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3868_3907_13568#PolymorphicMapType_3868| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3868) (SummandMask1@@0 T@PolymorphicMapType_3868) (SummandMask2@@0 T@PolymorphicMapType_3868) (o_2@@16 T@Ref) (f_4@@16 T@Field_3907_9874) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3868_3907_9874#PolymorphicMapType_3868| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3868) (SummandMask1@@1 T@PolymorphicMapType_3868) (SummandMask2@@1 T@PolymorphicMapType_3868) (o_2@@17 T@Ref) (f_4@@17 T@Field_3920_3921) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3868_3907_3921#PolymorphicMapType_3868| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3868) (SummandMask1@@2 T@PolymorphicMapType_3868) (SummandMask2@@2 T@PolymorphicMapType_3868) (o_2@@18 T@Ref) (f_4@@18 T@Field_3907_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3868_3907_53#PolymorphicMapType_3868| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3847) (Mask@@19 T@PolymorphicMapType_3868) (a_2@@4 Int) ) (!  (=> (state Heap@@15 Mask@@19) (= (|h'| Heap@@15 a_2@@4) (|h#frame| EmptyFrame a_2@@4)))
 :qid |stdinbpl.305:15|
 :skolemid |30|
 :pattern ( (state Heap@@15 Mask@@19) (|h'| Heap@@15 a_2@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3847) (a_2@@5 Int) ) (!  (and (= (h_3 Heap@@16 a_2@@5) (|h'| Heap@@16 a_2@@5)) (dummyFunction_1358 (|h#triggerStateless| a_2@@5)))
 :qid |stdinbpl.294:15|
 :skolemid |28|
 :pattern ( (h_3 Heap@@16 a_2@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3847) (Mask@@20 T@PolymorphicMapType_3868) (a_2@@6 Int) (b_24@@3 Int) ) (!  (=> (state Heap@@17 Mask@@20) (= (|g'| Heap@@17 a_2@@6 b_24@@3) (|g#frame| (CombineFrames (FrameFragment_2240 (ite (> a_2@@6 b_24@@3) EmptyFrame EmptyFrame)) (FrameFragment_2240 (ite (> b_24@@3 a_2@@6) EmptyFrame EmptyFrame))) a_2@@6 b_24@@3)))
 :qid |stdinbpl.240:15|
 :skolemid |27|
 :pattern ( (state Heap@@17 Mask@@20) (|g'| Heap@@17 a_2@@6 b_24@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3847) (o_5 T@Ref) (f_10 T@Field_3907_9874) (v T@FrameType) ) (! (succHeap Heap@@18 (PolymorphicMapType_3847 (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@18) (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@18) (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@18) (store (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| Heap@@18) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3847 (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@18) (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@18) (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@18) (store (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| Heap@@18) o_5 f_10 v)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3847) (o_5@@0 T@Ref) (f_10@@0 T@Field_3907_10007) (v@@0 T@PolymorphicMapType_4396) ) (! (succHeap Heap@@19 (PolymorphicMapType_3847 (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@19) (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@19) (store (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@19) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3847 (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@19) (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@19) (store (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@19) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3847) (o_5@@1 T@Ref) (f_10@@1 T@Field_3920_3921) (v@@1 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_3847 (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@20) (store (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@20) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@20) (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3847 (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@20) (store (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@20) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@20) (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3847) (o_5@@2 T@Ref) (f_10@@2 T@Field_3907_53) (v@@2 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_3847 (store (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@21) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@21) (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@21) (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3847 (store (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@21) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@21) (|PolymorphicMapType_3847_3907_10051#PolymorphicMapType_3847| Heap@@21) (|PolymorphicMapType_3847_3907_9874#PolymorphicMapType_3847| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3847) (Mask@@21 T@PolymorphicMapType_3868) (a_2@@7 Int) ) (!  (=> (and (state Heap@@22 Mask@@21) (or (< AssumeFunctionsAbove 0) (|h#trigger_1| EmptyFrame a_2@@7))) (forall ((i Int) ) (!  (=> (> (g_3 Heap@@22 a_2@@7 i) 17) (|h'| Heap@@22 a_2@@7))
 :qid |stdinbpl.313:95|
 :skolemid |31|
 :pattern ( (|g#frame| (CombineFrames (FrameFragment_2240 EmptyFrame) (FrameFragment_2240 EmptyFrame)) a_2@@7 i))
 :pattern ( (|g#frame| (CombineFrames (FrameFragment_2240 EmptyFrame) (FrameFragment_2240 EmptyFrame)) a_2@@7 i))
 :pattern ( (|g#frame| (CombineFrames (FrameFragment_2240 EmptyFrame) (FrameFragment_2240 EmptyFrame)) a_2@@7 i))
 :pattern ( (|g#frame| (CombineFrames (FrameFragment_2240 EmptyFrame) (FrameFragment_2240 EmptyFrame)) a_2@@7 i))
)))
 :qid |stdinbpl.311:15|
 :skolemid |32|
 :pattern ( (state Heap@@22 Mask@@21) (|h'| Heap@@22 a_2@@7))
)))
(assert (forall ((o_5@@3 T@Ref) (f_3 T@Field_3920_3921) (Heap@@23 T@PolymorphicMapType_3847) ) (!  (=> (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@23) o_5@@3 $allocated) (select (|PolymorphicMapType_3847_2141_53#PolymorphicMapType_3847| Heap@@23) (select (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@23) o_5@@3 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3847_2144_2145#PolymorphicMapType_3847| Heap@@23) o_5@@3 f_3))
)))
(assert (forall ((p@@1 T@Field_3907_9874) (v_1@@0 T@FrameType) (q T@Field_3907_9874) (w@@0 T@FrameType) (r T@Field_3907_9874) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3907_3907 p@@1 v_1@@0 q w@@0) (InsidePredicate_3907_3907 q w@@0 r u)) (InsidePredicate_3907_3907 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3907_3907 p@@1 v_1@@0 q w@@0) (InsidePredicate_3907_3907 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3847) (a_2@@8 Int) (b_24@@4 Int) ) (!  (and (= (f_6@@0 Heap@@24 a_2@@8 b_24@@4) (|f'| Heap@@24 a_2@@8 b_24@@4)) (dummyFunction_1358 (|f#triggerStateless| a_2@@8 b_24@@4)))
 :qid |stdinbpl.188:15|
 :skolemid |22|
 :pattern ( (f_6@@0 Heap@@24 a_2@@8 b_24@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a_2@@9 () Int)
(declare-fun i_14 () Int)
(declare-fun Heap@@25 () T@PolymorphicMapType_3847)
(set-info :boogie-vc-id |h#definedness|)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon6_correct true))
(let ((anon12_Else_correct  (=> (and (>= a_2@@9 i_14) (= (ControlFlow 0 6) 3)) anon6_correct)))
(let ((anon12_Then_correct  (=> (> i_14 a_2@@9) (and (=> (= (ControlFlow 0 4) (- 0 5)) (f_6@@0 Heap@@25 i_14 a_2@@9)) (=> (f_6@@0 Heap@@25 i_14 a_2@@9) (=> (= (ControlFlow 0 4) 3) anon6_correct))))))
(let ((anon11_Else_correct  (=> (>= i_14 a_2@@9) (and (=> (= (ControlFlow 0 9) 4) anon12_Then_correct) (=> (= (ControlFlow 0 9) 6) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (> a_2@@9 i_14) (and (=> (= (ControlFlow 0 7) (- 0 8)) (f_6@@0 Heap@@25 a_2@@9 i_14)) (=> (f_6@@0 Heap@@25 a_2@@9 i_14) (and (=> (= (ControlFlow 0 7) 4) anon12_Then_correct) (=> (= (ControlFlow 0 7) 6) anon12_Else_correct)))))))
(let ((anon10_Else_correct true))
(let ((anon9_Else_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@25 ZeroMask) (not AssumePermUpperBound)) (and (= AssumeFunctionsAbove 0) (state Heap@@25 ZeroMask))) (and (and (and (=> (= (ControlFlow 0 10) 1) anon9_Else_correct) (=> (= (ControlFlow 0 10) 2) anon10_Else_correct)) (=> (= (ControlFlow 0 10) 7) anon11_Then_correct)) (=> (= (ControlFlow 0 10) 9) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 5))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 8))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
