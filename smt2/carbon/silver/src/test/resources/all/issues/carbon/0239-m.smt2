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
(declare-sort T@Field_3576_53 0)
(declare-sort T@Field_3589_3590 0)
(declare-sort T@Field_6905_1213 0)
(declare-sort T@Field_3576_9914 0)
(declare-sort T@Field_3576_9781 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3537 0)) (((PolymorphicMapType_3537 (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| (Array T@Ref T@Field_6905_1213 Real)) (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| (Array T@Ref T@Field_3576_53 Real)) (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| (Array T@Ref T@Field_3589_3590 Real)) (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| (Array T@Ref T@Field_3576_9781 Real)) (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| (Array T@Ref T@Field_3576_9914 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4065 0)) (((PolymorphicMapType_4065 (|PolymorphicMapType_4065_3576_53#PolymorphicMapType_4065| (Array T@Ref T@Field_3576_53 Bool)) (|PolymorphicMapType_4065_3576_3590#PolymorphicMapType_4065| (Array T@Ref T@Field_3589_3590 Bool)) (|PolymorphicMapType_4065_3576_1213#PolymorphicMapType_4065| (Array T@Ref T@Field_6905_1213 Bool)) (|PolymorphicMapType_4065_3576_9781#PolymorphicMapType_4065| (Array T@Ref T@Field_3576_9781 Bool)) (|PolymorphicMapType_4065_3576_11092#PolymorphicMapType_4065| (Array T@Ref T@Field_3576_9914 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3516 0)) (((PolymorphicMapType_3516 (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| (Array T@Ref T@Field_3576_53 Bool)) (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| (Array T@Ref T@Field_3589_3590 T@Ref)) (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| (Array T@Ref T@Field_6905_1213 Int)) (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| (Array T@Ref T@Field_3576_9914 T@PolymorphicMapType_4065)) (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| (Array T@Ref T@Field_3576_9781 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3576_53)
(declare-fun val () T@Field_6905_1213)
(declare-fun succHeap (T@PolymorphicMapType_3516 T@PolymorphicMapType_3516) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3516 T@PolymorphicMapType_3516) Bool)
(declare-fun state (T@PolymorphicMapType_3516 T@PolymorphicMapType_3537) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3537) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4065)
(declare-fun |bool2Ref'| (T@PolymorphicMapType_3516 Bool) T@Ref)
(declare-fun dummyFunction_1992 (T@Ref) Bool)
(declare-fun |bool2Ref#triggerStateless| (Bool) T@Ref)
(declare-fun bool2Ref_1 (T@PolymorphicMapType_3516 Bool) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3516 T@PolymorphicMapType_3516 T@PolymorphicMapType_3537) Bool)
(declare-fun IsPredicateField_3576_9872 (T@Field_3576_9781) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3576 (T@Field_3576_9781) T@Field_3576_9914)
(declare-fun HasDirectPerm_3576_9845 (T@PolymorphicMapType_3537 T@Ref T@Field_3576_9781) Bool)
(declare-fun IsWandField_3576_11619 (T@Field_3576_9781) Bool)
(declare-fun WandMaskField_3576 (T@Field_3576_9781) T@Field_3576_9914)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |bool2Ref#trigger| (T@FrameType Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_3516)
(declare-fun ZeroMask () T@PolymorphicMapType_3537)
(declare-fun InsidePredicate_3576_3576 (T@Field_3576_9781 T@FrameType T@Field_3576_9781 T@FrameType) Bool)
(declare-fun IsPredicateField_1977_1213 (T@Field_6905_1213) Bool)
(declare-fun IsWandField_1977_1213 (T@Field_6905_1213) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_1977_15165 (T@Field_3576_9914) Bool)
(declare-fun IsWandField_1977_15181 (T@Field_3576_9914) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_1977_3590 (T@Field_3589_3590) Bool)
(declare-fun IsWandField_1977_3590 (T@Field_3589_3590) Bool)
(declare-fun IsPredicateField_1977_53 (T@Field_3576_53) Bool)
(declare-fun IsWandField_1977_53 (T@Field_3576_53) Bool)
(declare-fun HasDirectPerm_3576_15619 (T@PolymorphicMapType_3537 T@Ref T@Field_3576_9914) Bool)
(declare-fun HasDirectPerm_3576_1213 (T@PolymorphicMapType_3537 T@Ref T@Field_6905_1213) Bool)
(declare-fun HasDirectPerm_3576_3590 (T@PolymorphicMapType_3537 T@Ref T@Field_3589_3590) Bool)
(declare-fun HasDirectPerm_3576_53 (T@PolymorphicMapType_3537 T@Ref T@Field_3576_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3537 T@PolymorphicMapType_3537 T@PolymorphicMapType_3537) Bool)
(declare-fun |bool2Ref#frame| (T@FrameType Bool) T@Ref)
(assert (forall ((Heap0 T@PolymorphicMapType_3516) (Heap1 T@PolymorphicMapType_3516) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3516) (Mask T@PolymorphicMapType_3537) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3516) (Heap1@@0 T@PolymorphicMapType_3516) (Heap2 T@PolymorphicMapType_3516) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3576_9914) ) (!  (not (select (|PolymorphicMapType_4065_3576_11092#PolymorphicMapType_4065| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4065_3576_11092#PolymorphicMapType_4065| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3576_9781) ) (!  (not (select (|PolymorphicMapType_4065_3576_9781#PolymorphicMapType_4065| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4065_3576_9781#PolymorphicMapType_4065| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6905_1213) ) (!  (not (select (|PolymorphicMapType_4065_3576_1213#PolymorphicMapType_4065| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4065_3576_1213#PolymorphicMapType_4065| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3589_3590) ) (!  (not (select (|PolymorphicMapType_4065_3576_3590#PolymorphicMapType_4065| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4065_3576_3590#PolymorphicMapType_4065| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3576_53) ) (!  (not (select (|PolymorphicMapType_4065_3576_53#PolymorphicMapType_4065| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4065_3576_53#PolymorphicMapType_4065| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3516) (b_24 Bool) ) (! (dummyFunction_1992 (|bool2Ref#triggerStateless| b_24))
 :qid |stdinbpl.213:15|
 :skolemid |23|
 :pattern ( (|bool2Ref'| Heap@@0 b_24))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3516) (b_24@@0 Bool) ) (!  (and (= (bool2Ref_1 Heap@@1 b_24@@0) (|bool2Ref'| Heap@@1 b_24@@0)) (dummyFunction_1992 (|bool2Ref#triggerStateless| b_24@@0)))
 :qid |stdinbpl.209:15|
 :skolemid |22|
 :pattern ( (bool2Ref_1 Heap@@1 b_24@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3516) (ExhaleHeap T@PolymorphicMapType_3516) (Mask@@0 T@PolymorphicMapType_3537) (pm_f_2 T@Field_3576_9781) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3576_9845 Mask@@0 null pm_f_2) (IsPredicateField_3576_9872 pm_f_2)) (= (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@2) null (PredicateMaskField_3576 pm_f_2)) (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| ExhaleHeap) null (PredicateMaskField_3576 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_3576_9872 pm_f_2) (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| ExhaleHeap) null (PredicateMaskField_3576 pm_f_2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3516) (ExhaleHeap@@0 T@PolymorphicMapType_3516) (Mask@@1 T@PolymorphicMapType_3537) (pm_f_2@@0 T@Field_3576_9781) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3576_9845 Mask@@1 null pm_f_2@@0) (IsWandField_3576_11619 pm_f_2@@0)) (= (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@3) null (WandMaskField_3576 pm_f_2@@0)) (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| ExhaleHeap@@0) null (WandMaskField_3576 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_3576_11619 pm_f_2@@0) (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| ExhaleHeap@@0) null (WandMaskField_3576 pm_f_2@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3516) (Mask@@2 T@PolymorphicMapType_3537) (b_24@@1 Bool) ) (!  (=> (and (state Heap@@4 Mask@@2) (or (< AssumeFunctionsAbove 0) (|bool2Ref#trigger| EmptyFrame b_24@@1))) (and (not (= (|bool2Ref'| Heap@@4 b_24@@1) null)) (not (= (|bool2Ref'| Heap@@4 true) (|bool2Ref'| Heap@@4 false)))))
 :qid |stdinbpl.226:15|
 :skolemid |25|
 :pattern ( (state Heap@@4 Mask@@2) (|bool2Ref'| Heap@@4 b_24@@1))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3516) (ExhaleHeap@@1 T@PolymorphicMapType_3516) (Mask@@3 T@PolymorphicMapType_3537) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@5) o_6 $allocated) (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| ExhaleHeap@@1) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| ExhaleHeap@@1) o_6 $allocated))
)))
(assert (forall ((p T@Field_3576_9781) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3576_3576 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3576_3576 p v_1 p w))
)))
(assert  (not (IsPredicateField_1977_1213 val)))
(assert  (not (IsWandField_1977_1213 val)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3516) (ExhaleHeap@@2 T@PolymorphicMapType_3516) (Mask@@4 T@PolymorphicMapType_3537) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_3537) (o_2@@4 T@Ref) (f_4@@4 T@Field_3576_9914) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_1977_15165 f_4@@4))) (not (IsWandField_1977_15181 f_4@@4))) (<= (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3537) (o_2@@5 T@Ref) (f_4@@5 T@Field_3576_9781) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3576_9872 f_4@@5))) (not (IsWandField_3576_11619 f_4@@5))) (<= (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3537) (o_2@@6 T@Ref) (f_4@@6 T@Field_3589_3590) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_1977_3590 f_4@@6))) (not (IsWandField_1977_3590 f_4@@6))) (<= (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3537) (o_2@@7 T@Ref) (f_4@@7 T@Field_3576_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_1977_53 f_4@@7))) (not (IsWandField_1977_53 f_4@@7))) (<= (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3537) (o_2@@8 T@Ref) (f_4@@8 T@Field_6905_1213) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_1977_1213 f_4@@8))) (not (IsWandField_1977_1213 f_4@@8))) (<= (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3537) (o_2@@9 T@Ref) (f_4@@9 T@Field_3576_9914) ) (! (= (HasDirectPerm_3576_15619 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3576_15619 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3537) (o_2@@10 T@Ref) (f_4@@10 T@Field_3576_9781) ) (! (= (HasDirectPerm_3576_9845 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3576_9845 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3537) (o_2@@11 T@Ref) (f_4@@11 T@Field_6905_1213) ) (! (= (HasDirectPerm_3576_1213 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3576_1213 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3537) (o_2@@12 T@Ref) (f_4@@12 T@Field_3589_3590) ) (! (= (HasDirectPerm_3576_3590 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3576_3590 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3537) (o_2@@13 T@Ref) (f_4@@13 T@Field_3576_53) ) (! (= (HasDirectPerm_3576_53 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3576_53 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3516) (ExhaleHeap@@3 T@PolymorphicMapType_3516) (Mask@@15 T@PolymorphicMapType_3537) (pm_f_2@@1 T@Field_3576_9781) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_3576_9845 Mask@@15 null pm_f_2@@1) (IsPredicateField_3576_9872 pm_f_2@@1)) (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_3576_53) ) (!  (=> (select (|PolymorphicMapType_4065_3576_53#PolymorphicMapType_4065| (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@7) null (PredicateMaskField_3576 pm_f_2@@1))) o2_2 f_9) (= (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@7) o2_2 f_9) (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| ExhaleHeap@@3) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| ExhaleHeap@@3) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_3589_3590) ) (!  (=> (select (|PolymorphicMapType_4065_3576_3590#PolymorphicMapType_4065| (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@7) null (PredicateMaskField_3576 pm_f_2@@1))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@7) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| ExhaleHeap@@3) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| ExhaleHeap@@3) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_6905_1213) ) (!  (=> (select (|PolymorphicMapType_4065_3576_1213#PolymorphicMapType_4065| (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@7) null (PredicateMaskField_3576 pm_f_2@@1))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@7) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| ExhaleHeap@@3) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| ExhaleHeap@@3) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_3576_9781) ) (!  (=> (select (|PolymorphicMapType_4065_3576_9781#PolymorphicMapType_4065| (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@7) null (PredicateMaskField_3576 pm_f_2@@1))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@7) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| ExhaleHeap@@3) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| ExhaleHeap@@3) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_3576_9914) ) (!  (=> (select (|PolymorphicMapType_4065_3576_11092#PolymorphicMapType_4065| (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@7) null (PredicateMaskField_3576 pm_f_2@@1))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@7) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| ExhaleHeap@@3) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| ExhaleHeap@@3) o2_2@@3 f_9@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (IsPredicateField_3576_9872 pm_f_2@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3516) (ExhaleHeap@@4 T@PolymorphicMapType_3516) (Mask@@16 T@PolymorphicMapType_3537) (pm_f_2@@2 T@Field_3576_9781) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_3576_9845 Mask@@16 null pm_f_2@@2) (IsWandField_3576_11619 pm_f_2@@2)) (and (and (and (and (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_3576_53) ) (!  (=> (select (|PolymorphicMapType_4065_3576_53#PolymorphicMapType_4065| (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@8) null (WandMaskField_3576 pm_f_2@@2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@8) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| ExhaleHeap@@4) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| ExhaleHeap@@4) o2_2@@4 f_9@@4))
)) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_3589_3590) ) (!  (=> (select (|PolymorphicMapType_4065_3576_3590#PolymorphicMapType_4065| (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@8) null (WandMaskField_3576 pm_f_2@@2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@8) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| ExhaleHeap@@4) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| ExhaleHeap@@4) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_6905_1213) ) (!  (=> (select (|PolymorphicMapType_4065_3576_1213#PolymorphicMapType_4065| (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@8) null (WandMaskField_3576 pm_f_2@@2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@8) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| ExhaleHeap@@4) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| ExhaleHeap@@4) o2_2@@6 f_9@@6))
))) (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_3576_9781) ) (!  (=> (select (|PolymorphicMapType_4065_3576_9781#PolymorphicMapType_4065| (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@8) null (WandMaskField_3576 pm_f_2@@2))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@8) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| ExhaleHeap@@4) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| ExhaleHeap@@4) o2_2@@7 f_9@@7))
))) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_3576_9914) ) (!  (=> (select (|PolymorphicMapType_4065_3576_11092#PolymorphicMapType_4065| (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@8) null (WandMaskField_3576 pm_f_2@@2))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@8) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| ExhaleHeap@@4) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| ExhaleHeap@@4) o2_2@@8 f_9@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (IsWandField_3576_11619 pm_f_2@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3516) (ExhaleHeap@@5 T@PolymorphicMapType_3516) (Mask@@17 T@PolymorphicMapType_3537) (o_6@@0 T@Ref) (f_9@@9 T@Field_3576_9914) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_3576_15619 Mask@@17 o_6@@0 f_9@@9) (= (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@9) o_6@@0 f_9@@9) (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| ExhaleHeap@@5) o_6@@0 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| ExhaleHeap@@5) o_6@@0 f_9@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3516) (ExhaleHeap@@6 T@PolymorphicMapType_3516) (Mask@@18 T@PolymorphicMapType_3537) (o_6@@1 T@Ref) (f_9@@10 T@Field_3576_9781) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_3576_9845 Mask@@18 o_6@@1 f_9@@10) (= (select (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@10) o_6@@1 f_9@@10) (select (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| ExhaleHeap@@6) o_6@@1 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| ExhaleHeap@@6) o_6@@1 f_9@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3516) (ExhaleHeap@@7 T@PolymorphicMapType_3516) (Mask@@19 T@PolymorphicMapType_3537) (o_6@@2 T@Ref) (f_9@@11 T@Field_6905_1213) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_3576_1213 Mask@@19 o_6@@2 f_9@@11) (= (select (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@11) o_6@@2 f_9@@11) (select (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| ExhaleHeap@@7) o_6@@2 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| ExhaleHeap@@7) o_6@@2 f_9@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3516) (ExhaleHeap@@8 T@PolymorphicMapType_3516) (Mask@@20 T@PolymorphicMapType_3537) (o_6@@3 T@Ref) (f_9@@12 T@Field_3589_3590) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_3576_3590 Mask@@20 o_6@@3 f_9@@12) (= (select (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@12) o_6@@3 f_9@@12) (select (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| ExhaleHeap@@8) o_6@@3 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| ExhaleHeap@@8) o_6@@3 f_9@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3516) (ExhaleHeap@@9 T@PolymorphicMapType_3516) (Mask@@21 T@PolymorphicMapType_3537) (o_6@@4 T@Ref) (f_9@@13 T@Field_3576_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_3576_53 Mask@@21 o_6@@4 f_9@@13) (= (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@13) o_6@@4 f_9@@13) (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| ExhaleHeap@@9) o_6@@4 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| ExhaleHeap@@9) o_6@@4 f_9@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3576_9914) ) (! (= (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3576_9781) ) (! (= (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_3589_3590) ) (! (= (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_3576_53) ) (! (= (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6905_1213) ) (! (= (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3537) (SummandMask1 T@PolymorphicMapType_3537) (SummandMask2 T@PolymorphicMapType_3537) (o_2@@19 T@Ref) (f_4@@19 T@Field_3576_9914) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3537) (SummandMask1@@0 T@PolymorphicMapType_3537) (SummandMask2@@0 T@PolymorphicMapType_3537) (o_2@@20 T@Ref) (f_4@@20 T@Field_3576_9781) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3537) (SummandMask1@@1 T@PolymorphicMapType_3537) (SummandMask2@@1 T@PolymorphicMapType_3537) (o_2@@21 T@Ref) (f_4@@21 T@Field_3589_3590) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3537) (SummandMask1@@2 T@PolymorphicMapType_3537) (SummandMask2@@2 T@PolymorphicMapType_3537) (o_2@@22 T@Ref) (f_4@@22 T@Field_3576_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3537) (SummandMask1@@3 T@PolymorphicMapType_3537) (SummandMask2@@3 T@PolymorphicMapType_3537) (o_2@@23 T@Ref) (f_4@@23 T@Field_6905_1213) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3516) (Mask@@22 T@PolymorphicMapType_3537) (b_24@@2 Bool) ) (!  (=> (state Heap@@14 Mask@@22) (= (|bool2Ref'| Heap@@14 b_24@@2) (|bool2Ref#frame| EmptyFrame b_24@@2)))
 :qid |stdinbpl.220:15|
 :skolemid |24|
 :pattern ( (state Heap@@14 Mask@@22) (|bool2Ref'| Heap@@14 b_24@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3516) (o_5 T@Ref) (f_10 T@Field_3576_9781) (v T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_3516 (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@15) (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@15) (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@15) (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@15) (store (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@15) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3516 (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@15) (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@15) (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@15) (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@15) (store (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@15) o_5 f_10 v)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3516) (o_5@@0 T@Ref) (f_10@@0 T@Field_3576_9914) (v@@0 T@PolymorphicMapType_4065) ) (! (succHeap Heap@@16 (PolymorphicMapType_3516 (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@16) (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@16) (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@16) (store (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@16) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3516 (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@16) (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@16) (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@16) (store (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@16) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3516) (o_5@@1 T@Ref) (f_10@@1 T@Field_6905_1213) (v@@1 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_3516 (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@17) (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@17) (store (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@17) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@17) (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3516 (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@17) (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@17) (store (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@17) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@17) (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3516) (o_5@@2 T@Ref) (f_10@@2 T@Field_3589_3590) (v@@2 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_3516 (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@18) (store (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@18) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@18) (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@18) (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3516 (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@18) (store (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@18) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@18) (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@18) (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3516) (o_5@@3 T@Ref) (f_10@@3 T@Field_3576_53) (v@@3 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_3516 (store (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@19) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@19) (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@19) (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@19) (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3516 (store (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@19) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@19) (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@19) (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@19) (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@19)))
)))
(assert (forall ((o_5@@4 T@Ref) (f_3 T@Field_3589_3590) (Heap@@20 T@PolymorphicMapType_3516) ) (!  (=> (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@20) o_5@@4 $allocated) (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@20) (select (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@20) o_5@@4 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@20) o_5@@4 f_3))
)))
(assert (forall ((p@@1 T@Field_3576_9781) (v_1@@0 T@FrameType) (q T@Field_3576_9781) (w@@0 T@FrameType) (r T@Field_3576_9781) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3576_3576 p@@1 v_1@@0 q w@@0) (InsidePredicate_3576_3576 q w@@0 r u)) (InsidePredicate_3576_3576 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3576_3576 p@@1 v_1@@0 q w@@0) (InsidePredicate_3576_3576 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@21 () T@PolymorphicMapType_3516)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_3537)
(declare-fun x () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_3516)
(set-info :boogie-vc-id m)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct true))
(let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall ((b_1_2 Bool) (b_1_3 Bool) ) (!  (=> (and (and (= b_1_2  (not b_1_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (bool2Ref_1 Heap@@21 b_1_2) (bool2Ref_1 Heap@@21 b_1_3))))
 :qid |stdinbpl.306:15|
 :skolemid |26|
))) (=> (forall ((b_1_2@@0 Bool) (b_1_3@@0 Bool) ) (!  (=> (and (and (= b_1_2@@0  (not b_1_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (bool2Ref_1 Heap@@21 b_1_2@@0) (bool2Ref_1 Heap@@21 b_1_3@@0))))
 :qid |stdinbpl.306:15|
 :skolemid |26|
)) (=> (and (and (forall ((b_1_2@@1 Bool) ) (!  (=> (< NoPerm FullPerm) (and (qpRange1 (bool2Ref_1 Heap@@21 b_1_2@@1)) (= (invRecv1 (bool2Ref_1 Heap@@21 b_1_2@@1)) b_1_2@@1)))
 :qid |stdinbpl.312:22|
 :skolemid |27|
 :pattern ( (|bool2Ref#frame| EmptyFrame b_1_2@@1))
 :pattern ( (|bool2Ref#frame| EmptyFrame b_1_2@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (< NoPerm FullPerm) (qpRange1 o_4)) (= (bool2Ref_1 Heap@@21 (invRecv1 o_4)) o_4))
 :qid |stdinbpl.316:22|
 :skolemid |28|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((b_1_2@@2 Bool) ) (! (not (= (bool2Ref_1 Heap@@21 b_1_2@@2) null))
 :qid |stdinbpl.322:22|
 :skolemid |29|
 :pattern ( (|bool2Ref#frame| EmptyFrame b_1_2@@2))
 :pattern ( (|bool2Ref#frame| EmptyFrame b_1_2@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (< NoPerm FullPerm) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (bool2Ref_1 Heap@@21 (invRecv1 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| QPMask@0) o_4@@0 val) (+ (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| ZeroMask) o_4@@0 val) FullPerm)))) (=> (not (and (< NoPerm FullPerm) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| QPMask@0) o_4@@0 val) (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| ZeroMask) o_4@@0 val))))
 :qid |stdinbpl.328:22|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| QPMask@0) o_4@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_3576_53) ) (!  (=> true (= (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.332:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_3537_1977_53#PolymorphicMapType_3537| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_3589_3590) ) (!  (=> true (= (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.332:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_3537_1977_3590#PolymorphicMapType_3537| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_6905_1213) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.332:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_3576_9781) ) (!  (=> true (= (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.332:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_3537_1977_9781#PolymorphicMapType_3537| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_3576_9914) ) (!  (=> true (= (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.332:29|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_3537_1977_14036#PolymorphicMapType_3537| QPMask@0) o_4@@5 f_5@@3))
))) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= FullPerm (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| QPMask@0) x val))) (=> (= FullPerm (select (|PolymorphicMapType_3537_1977_1213#PolymorphicMapType_3537| QPMask@0) x val)) (=> (= Heap@0 (PolymorphicMapType_3516 (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@21) (|PolymorphicMapType_3516_1850_1851#PolymorphicMapType_3516| Heap@@21) (store (|PolymorphicMapType_3516_1977_1213#PolymorphicMapType_3516| Heap@@21) x val 42) (|PolymorphicMapType_3516_3576_9958#PolymorphicMapType_3516| Heap@@21) (|PolymorphicMapType_3516_3576_9781#PolymorphicMapType_3516| Heap@@21))) (=> (and (state Heap@0 QPMask@0) (= (ControlFlow 0 2) (- 0 1))) false))))))))))
(let ((anon0_correct  (=> (state Heap@@21 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_3516_1847_53#PolymorphicMapType_3516| Heap@@21) x $allocated) (state Heap@@21 ZeroMask))) (and (and (=> (= (ControlFlow 0 7) 2) anon5_Else_correct) (=> (= (ControlFlow 0 7) 5) anon6_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
