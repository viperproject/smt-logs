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
(declare-sort T@Field_5957_53 0)
(declare-sort T@Field_5970_5971 0)
(declare-sort T@Field_5957_15885 0)
(declare-sort T@Field_5957_15752 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5918 0)) (((PolymorphicMapType_5918 (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| (Array T@Ref T@Field_5957_53 Real)) (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| (Array T@Ref T@Field_5970_5971 Real)) (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| (Array T@Ref T@Field_5957_15752 Real)) (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| (Array T@Ref T@Field_5957_15885 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6446 0)) (((PolymorphicMapType_6446 (|PolymorphicMapType_6446_5957_53#PolymorphicMapType_6446| (Array T@Ref T@Field_5957_53 Bool)) (|PolymorphicMapType_6446_5957_5971#PolymorphicMapType_6446| (Array T@Ref T@Field_5970_5971 Bool)) (|PolymorphicMapType_6446_5957_15752#PolymorphicMapType_6446| (Array T@Ref T@Field_5957_15752 Bool)) (|PolymorphicMapType_6446_5957_16865#PolymorphicMapType_6446| (Array T@Ref T@Field_5957_15885 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5897 0)) (((PolymorphicMapType_5897 (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| (Array T@Ref T@Field_5957_53 Bool)) (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| (Array T@Ref T@Field_5970_5971 T@Ref)) (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| (Array T@Ref T@Field_5957_15885 T@PolymorphicMapType_6446)) (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| (Array T@Ref T@Field_5957_15752 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5957_53)
(declare-fun f_7 () T@Field_5957_53)
(declare-fun state (T@PolymorphicMapType_5897 T@PolymorphicMapType_5918) Bool)
(declare-fun |function0'| (T@PolymorphicMapType_5897 Bool Bool) Bool)
(declare-fun |function0#frame| (T@FrameType Bool Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |function3'| (T@PolymorphicMapType_5897 Bool Int) Bool)
(declare-fun |function3#frame| (T@FrameType Bool Int) Bool)
(declare-fun succHeap (T@PolymorphicMapType_5897 T@PolymorphicMapType_5897) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5897 T@PolymorphicMapType_5897) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5918) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6446)
(declare-fun dummyFunction_1445 (Bool) Bool)
(declare-fun |function0#triggerStateless| (Bool Bool) Bool)
(declare-fun |function3#triggerStateless| (Bool Int) Bool)
(declare-fun |function1'| (T@PolymorphicMapType_5897 Bool) Bool)
(declare-fun |function1#triggerStateless| (Bool) Bool)
(declare-fun |function2'| (T@PolymorphicMapType_5897 Bool) Bool)
(declare-fun |function2#triggerStateless| (Bool) Bool)
(declare-fun |function4'| (T@PolymorphicMapType_5897 Bool) Bool)
(declare-fun |function4#triggerStateless| (Bool) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5897 T@PolymorphicMapType_5897 T@PolymorphicMapType_5918) Bool)
(declare-fun IsPredicateField_5957_15843 (T@Field_5957_15752) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5957 (T@Field_5957_15752) T@Field_5957_15885)
(declare-fun HasDirectPerm_5957_15816 (T@PolymorphicMapType_5918 T@Ref T@Field_5957_15752) Bool)
(declare-fun IsWandField_5957_17392 (T@Field_5957_15752) Bool)
(declare-fun WandMaskField_5957 (T@Field_5957_15752) T@Field_5957_15885)
(declare-fun dummyHeap () T@PolymorphicMapType_5897)
(declare-fun ZeroMask () T@PolymorphicMapType_5918)
(declare-fun InsidePredicate_5957_5957 (T@Field_5957_15752 T@FrameType T@Field_5957_15752 T@FrameType) Bool)
(declare-fun IsPredicateField_3613_1261 (T@Field_5957_53) Bool)
(declare-fun IsWandField_3613_1261 (T@Field_5957_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3613_20329 (T@Field_5957_15885) Bool)
(declare-fun IsWandField_3613_20345 (T@Field_5957_15885) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3613_5971 (T@Field_5970_5971) Bool)
(declare-fun IsWandField_3613_5971 (T@Field_5970_5971) Bool)
(declare-fun HasDirectPerm_5957_20700 (T@PolymorphicMapType_5918 T@Ref T@Field_5957_15885) Bool)
(declare-fun HasDirectPerm_5957_5971 (T@PolymorphicMapType_5918 T@Ref T@Field_5970_5971) Bool)
(declare-fun HasDirectPerm_5957_53 (T@PolymorphicMapType_5918 T@Ref T@Field_5957_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5918 T@PolymorphicMapType_5918 T@PolymorphicMapType_5918) Bool)
(declare-fun |function1#frame| (T@FrameType Bool) Bool)
(declare-fun |function2#frame| (T@FrameType Bool) Bool)
(declare-fun function1 (T@PolymorphicMapType_5897 Bool) Bool)
(declare-fun function2 (T@PolymorphicMapType_5897 Bool) Bool)
(declare-fun function4 (T@PolymorphicMapType_5897 Bool) Bool)
(declare-fun |function4#frame| (T@FrameType Bool) Bool)
(declare-fun FrameFragment_2246 (Int) T@FrameType)
(declare-fun |function4#condqp1| (T@PolymorphicMapType_5897 Bool) Int)
(declare-fun |sk_function4#condqp1| (Int Int) T@Ref)
(declare-fun function0 (T@PolymorphicMapType_5897 Bool Bool) Bool)
(declare-fun function3 (T@PolymorphicMapType_5897 Bool Int) Bool)
(assert (distinct $allocated f_7)
)
(assert (forall ((Heap T@PolymorphicMapType_5897) (Mask T@PolymorphicMapType_5918) (b_24 Bool) (c Bool) ) (!  (=> (state Heap Mask) (= (|function0'| Heap b_24 c) (|function0#frame| EmptyFrame b_24 c)))
 :qid |stdinbpl.230:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (|function0'| Heap b_24 c))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5897) (Mask@@0 T@PolymorphicMapType_5918) (b_24@@0 Bool) (z Int) ) (!  (=> (state Heap@@0 Mask@@0) (= (|function3'| Heap@@0 b_24@@0 z) (|function3#frame| EmptyFrame b_24@@0 z)))
 :qid |stdinbpl.389:15|
 :skolemid |36|
 :pattern ( (state Heap@@0 Mask@@0) (|function3'| Heap@@0 b_24@@0 z))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_5897) (Heap1 T@PolymorphicMapType_5897) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5897) (Mask@@1 T@PolymorphicMapType_5918) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5897) (Heap1@@0 T@PolymorphicMapType_5897) (Heap2 T@PolymorphicMapType_5897) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5957_15885) ) (!  (not (select (|PolymorphicMapType_6446_5957_16865#PolymorphicMapType_6446| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6446_5957_16865#PolymorphicMapType_6446| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5957_15752) ) (!  (not (select (|PolymorphicMapType_6446_5957_15752#PolymorphicMapType_6446| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6446_5957_15752#PolymorphicMapType_6446| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5970_5971) ) (!  (not (select (|PolymorphicMapType_6446_5957_5971#PolymorphicMapType_6446| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6446_5957_5971#PolymorphicMapType_6446| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5957_53) ) (!  (not (select (|PolymorphicMapType_6446_5957_53#PolymorphicMapType_6446| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6446_5957_53#PolymorphicMapType_6446| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5897) (b_24@@1 Bool) (c@@0 Bool) ) (! (dummyFunction_1445 (|function0#triggerStateless| b_24@@1 c@@0))
 :qid |stdinbpl.223:15|
 :skolemid |23|
 :pattern ( (|function0'| Heap@@2 b_24@@1 c@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5897) (b_24@@2 Bool) (z@@0 Int) ) (! (dummyFunction_1445 (|function3#triggerStateless| b_24@@2 z@@0))
 :qid |stdinbpl.382:15|
 :skolemid |35|
 :pattern ( (|function3'| Heap@@3 b_24@@2 z@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5897) (b_24@@3 Bool) ) (! (dummyFunction_1445 (|function1#triggerStateless| b_24@@3))
 :qid |stdinbpl.276:15|
 :skolemid |27|
 :pattern ( (|function1'| Heap@@4 b_24@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5897) (b_24@@4 Bool) ) (! (dummyFunction_1445 (|function2#triggerStateless| b_24@@4))
 :qid |stdinbpl.329:15|
 :skolemid |31|
 :pattern ( (|function2'| Heap@@5 b_24@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5897) (x Bool) ) (! (dummyFunction_1445 (|function4#triggerStateless| x))
 :qid |stdinbpl.435:15|
 :skolemid |39|
 :pattern ( (|function4'| Heap@@6 x))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5897) (ExhaleHeap T@PolymorphicMapType_5897) (Mask@@2 T@PolymorphicMapType_5918) (pm_f_30 T@Field_5957_15752) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_5957_15816 Mask@@2 null pm_f_30) (IsPredicateField_5957_15843 pm_f_30)) (= (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@7) null (PredicateMaskField_5957 pm_f_30)) (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| ExhaleHeap) null (PredicateMaskField_5957 pm_f_30)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@2) (IsPredicateField_5957_15843 pm_f_30) (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| ExhaleHeap) null (PredicateMaskField_5957 pm_f_30)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5897) (ExhaleHeap@@0 T@PolymorphicMapType_5897) (Mask@@3 T@PolymorphicMapType_5918) (pm_f_30@@0 T@Field_5957_15752) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_5957_15816 Mask@@3 null pm_f_30@@0) (IsWandField_5957_17392 pm_f_30@@0)) (= (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@8) null (WandMaskField_5957 pm_f_30@@0)) (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| ExhaleHeap@@0) null (WandMaskField_5957 pm_f_30@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@3) (IsWandField_5957_17392 pm_f_30@@0) (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| ExhaleHeap@@0) null (WandMaskField_5957 pm_f_30@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5897) (ExhaleHeap@@1 T@PolymorphicMapType_5897) (Mask@@4 T@PolymorphicMapType_5918) (pm_f_30@@1 T@Field_5957_15752) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_5957_15816 Mask@@4 null pm_f_30@@1) (IsPredicateField_5957_15843 pm_f_30@@1)) (and (and (and (forall ((o2_30 T@Ref) (f_13 T@Field_5957_53) ) (!  (=> (select (|PolymorphicMapType_6446_5957_53#PolymorphicMapType_6446| (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@9) null (PredicateMaskField_5957 pm_f_30@@1))) o2_30 f_13) (= (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@9) o2_30 f_13) (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| ExhaleHeap@@1) o2_30 f_13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| ExhaleHeap@@1) o2_30 f_13))
)) (forall ((o2_30@@0 T@Ref) (f_13@@0 T@Field_5970_5971) ) (!  (=> (select (|PolymorphicMapType_6446_5957_5971#PolymorphicMapType_6446| (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@9) null (PredicateMaskField_5957 pm_f_30@@1))) o2_30@@0 f_13@@0) (= (select (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@9) o2_30@@0 f_13@@0) (select (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| ExhaleHeap@@1) o2_30@@0 f_13@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| ExhaleHeap@@1) o2_30@@0 f_13@@0))
))) (forall ((o2_30@@1 T@Ref) (f_13@@1 T@Field_5957_15752) ) (!  (=> (select (|PolymorphicMapType_6446_5957_15752#PolymorphicMapType_6446| (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@9) null (PredicateMaskField_5957 pm_f_30@@1))) o2_30@@1 f_13@@1) (= (select (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| Heap@@9) o2_30@@1 f_13@@1) (select (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| ExhaleHeap@@1) o2_30@@1 f_13@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| ExhaleHeap@@1) o2_30@@1 f_13@@1))
))) (forall ((o2_30@@2 T@Ref) (f_13@@2 T@Field_5957_15885) ) (!  (=> (select (|PolymorphicMapType_6446_5957_16865#PolymorphicMapType_6446| (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@9) null (PredicateMaskField_5957 pm_f_30@@1))) o2_30@@2 f_13@@2) (= (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@9) o2_30@@2 f_13@@2) (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| ExhaleHeap@@1) o2_30@@2 f_13@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| ExhaleHeap@@1) o2_30@@2 f_13@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@4) (IsPredicateField_5957_15843 pm_f_30@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5897) (ExhaleHeap@@2 T@PolymorphicMapType_5897) (Mask@@5 T@PolymorphicMapType_5918) (pm_f_30@@2 T@Field_5957_15752) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_5957_15816 Mask@@5 null pm_f_30@@2) (IsWandField_5957_17392 pm_f_30@@2)) (and (and (and (forall ((o2_30@@3 T@Ref) (f_13@@3 T@Field_5957_53) ) (!  (=> (select (|PolymorphicMapType_6446_5957_53#PolymorphicMapType_6446| (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@10) null (WandMaskField_5957 pm_f_30@@2))) o2_30@@3 f_13@@3) (= (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@10) o2_30@@3 f_13@@3) (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| ExhaleHeap@@2) o2_30@@3 f_13@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| ExhaleHeap@@2) o2_30@@3 f_13@@3))
)) (forall ((o2_30@@4 T@Ref) (f_13@@4 T@Field_5970_5971) ) (!  (=> (select (|PolymorphicMapType_6446_5957_5971#PolymorphicMapType_6446| (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@10) null (WandMaskField_5957 pm_f_30@@2))) o2_30@@4 f_13@@4) (= (select (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@10) o2_30@@4 f_13@@4) (select (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| ExhaleHeap@@2) o2_30@@4 f_13@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| ExhaleHeap@@2) o2_30@@4 f_13@@4))
))) (forall ((o2_30@@5 T@Ref) (f_13@@5 T@Field_5957_15752) ) (!  (=> (select (|PolymorphicMapType_6446_5957_15752#PolymorphicMapType_6446| (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@10) null (WandMaskField_5957 pm_f_30@@2))) o2_30@@5 f_13@@5) (= (select (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| Heap@@10) o2_30@@5 f_13@@5) (select (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| ExhaleHeap@@2) o2_30@@5 f_13@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| ExhaleHeap@@2) o2_30@@5 f_13@@5))
))) (forall ((o2_30@@6 T@Ref) (f_13@@6 T@Field_5957_15885) ) (!  (=> (select (|PolymorphicMapType_6446_5957_16865#PolymorphicMapType_6446| (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@10) null (WandMaskField_5957 pm_f_30@@2))) o2_30@@6 f_13@@6) (= (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@10) o2_30@@6 f_13@@6) (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| ExhaleHeap@@2) o2_30@@6 f_13@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| ExhaleHeap@@2) o2_30@@6 f_13@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@5) (IsWandField_5957_17392 pm_f_30@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5897) (ExhaleHeap@@3 T@PolymorphicMapType_5897) (Mask@@6 T@PolymorphicMapType_5918) (o_7 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@11) o_7 $allocated) (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| ExhaleHeap@@3) o_7 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| ExhaleHeap@@3) o_7 $allocated))
)))
(assert (forall ((p T@Field_5957_15752) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5957_5957 p v_1 p w))
 :qid |stdinbpl.199:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5957_5957 p v_1 p w))
)))
(assert  (not (IsPredicateField_3613_1261 f_7)))
(assert  (not (IsWandField_3613_1261 f_7)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5897) (ExhaleHeap@@4 T@PolymorphicMapType_5897) (Mask@@7 T@PolymorphicMapType_5918) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@12 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5918) (o_2@@3 T@Ref) (f_4@@3 T@Field_5957_15885) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3613_20329 f_4@@3))) (not (IsWandField_3613_20345 f_4@@3))) (<= (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5918) (o_2@@4 T@Ref) (f_4@@4 T@Field_5957_15752) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5957_15843 f_4@@4))) (not (IsWandField_5957_17392 f_4@@4))) (<= (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5918) (o_2@@5 T@Ref) (f_4@@5 T@Field_5970_5971) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3613_5971 f_4@@5))) (not (IsWandField_3613_5971 f_4@@5))) (<= (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5918) (o_2@@6 T@Ref) (f_4@@6 T@Field_5957_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3613_1261 f_4@@6))) (not (IsWandField_3613_1261 f_4@@6))) (<= (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5918) (o_2@@7 T@Ref) (f_4@@7 T@Field_5957_15885) ) (! (= (HasDirectPerm_5957_20700 Mask@@12 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| Mask@@12) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5957_20700 Mask@@12 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5918) (o_2@@8 T@Ref) (f_4@@8 T@Field_5957_15752) ) (! (= (HasDirectPerm_5957_15816 Mask@@13 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| Mask@@13) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5957_15816 Mask@@13 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5918) (o_2@@9 T@Ref) (f_4@@9 T@Field_5970_5971) ) (! (= (HasDirectPerm_5957_5971 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5957_5971 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5918) (o_2@@10 T@Ref) (f_4@@10 T@Field_5957_53) ) (! (= (HasDirectPerm_5957_53 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5957_53 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.187:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5897) (ExhaleHeap@@5 T@PolymorphicMapType_5897) (Mask@@16 T@PolymorphicMapType_5918) (o_7@@0 T@Ref) (f_13@@7 T@Field_5957_15885) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5957_20700 Mask@@16 o_7@@0 f_13@@7) (= (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@13) o_7@@0 f_13@@7) (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| ExhaleHeap@@5) o_7@@0 f_13@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| ExhaleHeap@@5) o_7@@0 f_13@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5897) (ExhaleHeap@@6 T@PolymorphicMapType_5897) (Mask@@17 T@PolymorphicMapType_5918) (o_7@@1 T@Ref) (f_13@@8 T@Field_5957_15752) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5957_15816 Mask@@17 o_7@@1 f_13@@8) (= (select (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| Heap@@14) o_7@@1 f_13@@8) (select (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| ExhaleHeap@@6) o_7@@1 f_13@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| ExhaleHeap@@6) o_7@@1 f_13@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5897) (ExhaleHeap@@7 T@PolymorphicMapType_5897) (Mask@@18 T@PolymorphicMapType_5918) (o_7@@2 T@Ref) (f_13@@9 T@Field_5970_5971) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5957_5971 Mask@@18 o_7@@2 f_13@@9) (= (select (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@15) o_7@@2 f_13@@9) (select (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| ExhaleHeap@@7) o_7@@2 f_13@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| ExhaleHeap@@7) o_7@@2 f_13@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5897) (ExhaleHeap@@8 T@PolymorphicMapType_5897) (Mask@@19 T@PolymorphicMapType_5918) (o_7@@3 T@Ref) (f_13@@10 T@Field_5957_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5957_53 Mask@@19 o_7@@3 f_13@@10) (= (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@16) o_7@@3 f_13@@10) (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| ExhaleHeap@@8) o_7@@3 f_13@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| ExhaleHeap@@8) o_7@@3 f_13@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5957_15885) ) (! (= (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5957_15752) ) (! (= (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5970_5971) ) (! (= (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5957_53) ) (! (= (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5918) (SummandMask1 T@PolymorphicMapType_5918) (SummandMask2 T@PolymorphicMapType_5918) (o_2@@15 T@Ref) (f_4@@15 T@Field_5957_15885) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5918_3613_19434#PolymorphicMapType_5918| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5918) (SummandMask1@@0 T@PolymorphicMapType_5918) (SummandMask2@@0 T@PolymorphicMapType_5918) (o_2@@16 T@Ref) (f_4@@16 T@Field_5957_15752) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5918_3613_15752#PolymorphicMapType_5918| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5918) (SummandMask1@@1 T@PolymorphicMapType_5918) (SummandMask2@@1 T@PolymorphicMapType_5918) (o_2@@17 T@Ref) (f_4@@17 T@Field_5970_5971) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5918_3613_5971#PolymorphicMapType_5918| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5918) (SummandMask1@@2 T@PolymorphicMapType_5918) (SummandMask2@@2 T@PolymorphicMapType_5918) (o_2@@18 T@Ref) (f_4@@18 T@Field_5957_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5918_3613_1261#PolymorphicMapType_5918| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5897) (Mask@@20 T@PolymorphicMapType_5918) (b_24@@5 Bool) ) (!  (=> (state Heap@@17 Mask@@20) (= (|function1'| Heap@@17 b_24@@5) (|function1#frame| EmptyFrame b_24@@5)))
 :qid |stdinbpl.283:15|
 :skolemid |28|
 :pattern ( (state Heap@@17 Mask@@20) (|function1'| Heap@@17 b_24@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5897) (Mask@@21 T@PolymorphicMapType_5918) (b_24@@6 Bool) ) (!  (=> (state Heap@@18 Mask@@21) (= (|function2'| Heap@@18 b_24@@6) (|function2#frame| EmptyFrame b_24@@6)))
 :qid |stdinbpl.336:15|
 :skolemid |32|
 :pattern ( (state Heap@@18 Mask@@21) (|function2'| Heap@@18 b_24@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5897) (b_24@@7 Bool) ) (!  (and (= (function1 Heap@@19 b_24@@7) (|function1'| Heap@@19 b_24@@7)) (dummyFunction_1445 (|function1#triggerStateless| b_24@@7)))
 :qid |stdinbpl.272:15|
 :skolemid |26|
 :pattern ( (function1 Heap@@19 b_24@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5897) (b_24@@8 Bool) ) (!  (and (= (function2 Heap@@20 b_24@@8) (|function2'| Heap@@20 b_24@@8)) (dummyFunction_1445 (|function2#triggerStateless| b_24@@8)))
 :qid |stdinbpl.325:15|
 :skolemid |30|
 :pattern ( (function2 Heap@@20 b_24@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5897) (x@@0 Bool) ) (!  (and (= (function4 Heap@@21 x@@0) (|function4'| Heap@@21 x@@0)) (dummyFunction_1445 (|function4#triggerStateless| x@@0)))
 :qid |stdinbpl.431:15|
 :skolemid |38|
 :pattern ( (function4 Heap@@21 x@@0))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5897) (Mask@@22 T@PolymorphicMapType_5918) (x@@1 Bool) ) (!  (=> (state Heap@@22 Mask@@22) (= (|function4'| Heap@@22 x@@1) (|function4#frame| (FrameFragment_2246 (|function4#condqp1| Heap@@22 x@@1)) x@@1)))
 :qid |stdinbpl.442:15|
 :skolemid |40|
 :pattern ( (state Heap@@22 Mask@@22) (|function4'| Heap@@22 x@@1))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5897) (o_55 T@Ref) (f_9 T@Field_5957_15752) (v T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_5897 (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@23) (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@23) (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@23) (store (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| Heap@@23) o_55 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5897 (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@23) (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@23) (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@23) (store (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| Heap@@23) o_55 f_9 v)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5897) (o_55@@0 T@Ref) (f_9@@0 T@Field_5957_15885) (v@@0 T@PolymorphicMapType_6446) ) (! (succHeap Heap@@24 (PolymorphicMapType_5897 (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@24) (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@24) (store (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@24) o_55@@0 f_9@@0 v@@0) (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5897 (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@24) (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@24) (store (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@24) o_55@@0 f_9@@0 v@@0) (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5897) (o_55@@1 T@Ref) (f_9@@1 T@Field_5970_5971) (v@@1 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_5897 (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@25) (store (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@25) o_55@@1 f_9@@1 v@@1) (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@25) (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5897 (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@25) (store (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@25) o_55@@1 f_9@@1 v@@1) (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@25) (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5897) (o_55@@2 T@Ref) (f_9@@2 T@Field_5957_53) (v@@2 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_5897 (store (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@26) o_55@@2 f_9@@2 v@@2) (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@26) (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@26) (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5897 (store (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@26) o_55@@2 f_9@@2 v@@2) (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@26) (|PolymorphicMapType_5897_5957_15929#PolymorphicMapType_5897| Heap@@26) (|PolymorphicMapType_5897_5957_15752#PolymorphicMapType_5897| Heap@@26)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_5897) (Heap1Heap T@PolymorphicMapType_5897) (x@@2 Bool) ) (!  (=> (and (= (< NoPerm FullPerm) (< NoPerm FullPerm)) (=> (< NoPerm FullPerm) (= (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap2Heap) (|sk_function4#condqp1| (|function4#condqp1| Heap2Heap x@@2) (|function4#condqp1| Heap1Heap x@@2)) f_7) (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap1Heap) (|sk_function4#condqp1| (|function4#condqp1| Heap2Heap x@@2) (|function4#condqp1| Heap1Heap x@@2)) f_7)))) (= (|function4#condqp1| Heap2Heap x@@2) (|function4#condqp1| Heap1Heap x@@2)))
 :qid |stdinbpl.452:15|
 :skolemid |41|
 :pattern ( (|function4#condqp1| Heap2Heap x@@2) (|function4#condqp1| Heap1Heap x@@2) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((o_55@@3 T@Ref) (f_54 T@Field_5970_5971) (Heap@@27 T@PolymorphicMapType_5897) ) (!  (=> (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@27) o_55@@3 $allocated) (select (|PolymorphicMapType_5897_3473_53#PolymorphicMapType_5897| Heap@@27) (select (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@27) o_55@@3 f_54) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5897_3476_3477#PolymorphicMapType_5897| Heap@@27) o_55@@3 f_54))
)))
(assert (forall ((p@@1 T@Field_5957_15752) (v_1@@0 T@FrameType) (q T@Field_5957_15752) (w@@0 T@FrameType) (r T@Field_5957_15752) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5957_5957 p@@1 v_1@@0 q w@@0) (InsidePredicate_5957_5957 q w@@0 r u)) (InsidePredicate_5957_5957 p@@1 v_1@@0 r u))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5957_5957 p@@1 v_1@@0 q w@@0) (InsidePredicate_5957_5957 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5897) (b_24@@9 Bool) (c@@1 Bool) ) (!  (and (= (function0 Heap@@28 b_24@@9 c@@1) (|function0'| Heap@@28 b_24@@9 c@@1)) (dummyFunction_1445 (|function0#triggerStateless| b_24@@9 c@@1)))
 :qid |stdinbpl.219:15|
 :skolemid |22|
 :pattern ( (function0 Heap@@28 b_24@@9 c@@1))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5897) (b_24@@10 Bool) (z@@1 Int) ) (!  (and (= (function3 Heap@@29 b_24@@10 z@@1) (|function3'| Heap@@29 b_24@@10 z@@1)) (dummyFunction_1445 (|function3#triggerStateless| b_24@@10 z@@1)))
 :qid |stdinbpl.378:15|
 :skolemid |34|
 :pattern ( (function3 Heap@@29 b_24@@10 z@@1))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@3 () Int)
(declare-fun z_16_1 () Int)
(declare-fun res@2 () Bool)
(declare-fun Heap@@30 () T@PolymorphicMapType_5897)
(declare-fun z_10 () Int)
(declare-fun z_8 () Int)
(declare-fun res@1 () Bool)
(declare-fun z_3 () Int)
(declare-fun res@0 () Bool)
(declare-fun y () Int)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id client1)
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
 (=> (= (ControlFlow 0 0) 29) (let ((anon45_Else_correct  (=> (and (forall ((z_17_1 Int) ) (! (= z_17_1 z_17_1)
 :qid |stdinbpl.681:26|
 :skolemid |59|
)) (= (ControlFlow 0 24) (- 0 23))) (= x@@3 0))))
(let ((anon45_Then_correct  (=> (= (ControlFlow 0 22) (- 0 21)) (= z_16_1 z_16_1))))
(let ((anon44_Else_correct true))
(let ((anon43_Else_correct true))
(let ((anon42_Then_correct true))
(let ((anon38_Else_correct  (=> (and (= res@2 (function2 Heap@@30 (forall ((z_14_1 Int) ) (! (= z_14_1 z_14_1)
 :qid |stdinbpl.659:36|
 :skolemid |58|
)))) (state Heap@@30 ZeroMask)) (and (and (and (and (=> (= (ControlFlow 0 25) 18) anon42_Then_correct) (=> (= (ControlFlow 0 25) 19) anon43_Else_correct)) (=> (= (ControlFlow 0 25) 20) anon44_Else_correct)) (=> (= (ControlFlow 0 25) 22) anon45_Then_correct)) (=> (= (ControlFlow 0 25) 24) anon45_Else_correct)))))
(let ((anon41_Else_correct true))
(let ((anon41_Then_correct  (=> (= (ControlFlow 0 15) (- 0 14)) (= z_10 z_10))))
(let ((anon40_Else_correct  (=> (forall ((z_9_1 Int) ) (! (= z_9_1 z_9_1)
 :qid |stdinbpl.631:26|
 :skolemid |53|
)) (and (=> (= (ControlFlow 0 17) 15) anon41_Then_correct) (=> (= (ControlFlow 0 17) 16) anon41_Else_correct)))))
(let ((anon40_Then_correct  (=> (= (ControlFlow 0 13) (- 0 12)) (= z_8 z_8))))
(let ((anon39_Else_correct true))
(let ((anon37_Then_correct true))
(let ((anon34_Else_correct  (=> (and (= res@1 (function1 Heap@@30 (forall ((z_6 Int) ) (! (= z_6 z_6)
 :qid |stdinbpl.609:36|
 :skolemid |52|
)))) (state Heap@@30 ZeroMask)) (and (and (and (and (=> (= (ControlFlow 0 26) 10) anon37_Then_correct) (=> (= (ControlFlow 0 26) 25) anon38_Else_correct)) (=> (= (ControlFlow 0 26) 11) anon39_Else_correct)) (=> (= (ControlFlow 0 26) 13) anon40_Then_correct)) (=> (= (ControlFlow 0 26) 17) anon40_Else_correct)))))
(let ((anon36_Else_correct true))
(let ((anon36_Then_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (= z_3 z_3))))
(let ((anon35_Else_correct true))
(let ((anon33_Then_correct true))
(let ((anon31_Else_correct  (=> (and (= res@0 (function0 Heap@@30 (= x@@3 0) (= y 0))) (state Heap@@30 ZeroMask)) (and (and (and (and (=> (= (ControlFlow 0 27) 5) anon33_Then_correct) (=> (= (ControlFlow 0 27) 26) anon34_Else_correct)) (=> (= (ControlFlow 0 27) 6) anon35_Else_correct)) (=> (= (ControlFlow 0 27) 8) anon36_Then_correct)) (=> (= (ControlFlow 0 27) 9) anon36_Else_correct)))))
(let ((anon32_Else_correct true))
(let ((anon32_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= x@@3 0)) (=> (= x@@3 0) (=> (= (ControlFlow 0 2) (- 0 1)) (= y 0))))))
(let ((anon0_correct  (=> (and (state Heap@@30 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (= x@@3 0)) (and (= y 0) (state Heap@@30 ZeroMask))) (and (and (=> (= (ControlFlow 0 28) 27) anon31_Else_correct) (=> (= (ControlFlow 0 28) 2) anon32_Then_correct)) (=> (= (ControlFlow 0 28) 4) anon32_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 29) 28) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
