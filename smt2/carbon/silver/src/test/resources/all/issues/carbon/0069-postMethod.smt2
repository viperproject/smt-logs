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
(declare-sort T@Field_3934_53 0)
(declare-sort T@Field_3947_3948 0)
(declare-sort T@Field_7261_1189 0)
(declare-sort T@Field_2105_10806 0)
(declare-sort T@Field_2105_10673 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3895 0)) (((PolymorphicMapType_3895 (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| (Array T@Ref T@Field_7261_1189 Real)) (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| (Array T@Ref T@Field_3934_53 Real)) (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| (Array T@Ref T@Field_3947_3948 Real)) (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| (Array T@Ref T@Field_2105_10673 Real)) (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| (Array T@Ref T@Field_2105_10806 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4423 0)) (((PolymorphicMapType_4423 (|PolymorphicMapType_4423_3934_53#PolymorphicMapType_4423| (Array T@Ref T@Field_3934_53 Bool)) (|PolymorphicMapType_4423_3934_3948#PolymorphicMapType_4423| (Array T@Ref T@Field_3947_3948 Bool)) (|PolymorphicMapType_4423_3934_1189#PolymorphicMapType_4423| (Array T@Ref T@Field_7261_1189 Bool)) (|PolymorphicMapType_4423_3934_10673#PolymorphicMapType_4423| (Array T@Ref T@Field_2105_10673 Bool)) (|PolymorphicMapType_4423_3934_11984#PolymorphicMapType_4423| (Array T@Ref T@Field_2105_10806 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3874 0)) (((PolymorphicMapType_3874 (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| (Array T@Ref T@Field_3934_53 Bool)) (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| (Array T@Ref T@Field_3947_3948 T@Ref)) (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| (Array T@Ref T@Field_7261_1189 Int)) (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| (Array T@Ref T@Field_2105_10806 T@PolymorphicMapType_4423)) (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| (Array T@Ref T@Field_2105_10673 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3934_53)
(declare-fun x_36 () T@Field_7261_1189)
(declare-fun succHeap (T@PolymorphicMapType_3874 T@PolymorphicMapType_3874) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3874 T@PolymorphicMapType_3874) Bool)
(declare-fun state (T@PolymorphicMapType_3874 T@PolymorphicMapType_3895) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3895) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4423)
(declare-fun |postFunction'| (T@PolymorphicMapType_3874 T@Ref) Int)
(declare-fun dummyFunction_1418 (Int) Bool)
(declare-fun |postFunction#triggerStateless| (T@Ref) Int)
(declare-fun |postFunction2'| (T@PolymorphicMapType_3874 T@Ref) Int)
(declare-fun |postFunction2#triggerStateless| (T@Ref) Int)
(declare-fun postFunction (T@PolymorphicMapType_3874 T@Ref) Int)
(declare-fun postFunction2 (T@PolymorphicMapType_3874 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3874 T@PolymorphicMapType_3874 T@PolymorphicMapType_3895) Bool)
(declare-fun IsPredicateField_2105_10764 (T@Field_2105_10673) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2105 (T@Field_2105_10673) T@Field_2105_10806)
(declare-fun HasDirectPerm_2105_10737 (T@PolymorphicMapType_3895 T@Ref T@Field_2105_10673) Bool)
(declare-fun IsWandField_2105_12511 (T@Field_2105_10673) Bool)
(declare-fun WandMaskField_2105 (T@Field_2105_10673) T@Field_2105_10806)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |postFunction2#trigger| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_3874)
(declare-fun ZeroMask () T@PolymorphicMapType_3895)
(declare-fun InsidePredicate_3934_3934 (T@Field_2105_10673 T@FrameType T@Field_2105_10673 T@FrameType) Bool)
(declare-fun IsPredicateField_2105_1189 (T@Field_7261_1189) Bool)
(declare-fun IsWandField_2105_1189 (T@Field_7261_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2105_16057 (T@Field_2105_10806) Bool)
(declare-fun IsWandField_2105_16073 (T@Field_2105_10806) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2105_3948 (T@Field_3947_3948) Bool)
(declare-fun IsWandField_2105_3948 (T@Field_3947_3948) Bool)
(declare-fun IsPredicateField_2105_53 (T@Field_3934_53) Bool)
(declare-fun IsWandField_2105_53 (T@Field_3934_53) Bool)
(declare-fun HasDirectPerm_2105_16511 (T@PolymorphicMapType_3895 T@Ref T@Field_2105_10806) Bool)
(declare-fun HasDirectPerm_2105_3948 (T@PolymorphicMapType_3895 T@Ref T@Field_3947_3948) Bool)
(declare-fun HasDirectPerm_2105_53 (T@PolymorphicMapType_3895 T@Ref T@Field_3934_53) Bool)
(declare-fun HasDirectPerm_2105_1189 (T@PolymorphicMapType_3895 T@Ref T@Field_7261_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3895 T@PolymorphicMapType_3895 T@PolymorphicMapType_3895) Bool)
(declare-fun |postFunction#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |postFunction2#frame| (T@FrameType T@Ref) Int)
(declare-fun |postFunction#frame| (T@FrameType T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_3874) (Heap1 T@PolymorphicMapType_3874) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3874) (Mask T@PolymorphicMapType_3895) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3874) (Heap1@@0 T@PolymorphicMapType_3874) (Heap2 T@PolymorphicMapType_3874) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2105_10806) ) (!  (not (select (|PolymorphicMapType_4423_3934_11984#PolymorphicMapType_4423| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4423_3934_11984#PolymorphicMapType_4423| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2105_10673) ) (!  (not (select (|PolymorphicMapType_4423_3934_10673#PolymorphicMapType_4423| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4423_3934_10673#PolymorphicMapType_4423| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7261_1189) ) (!  (not (select (|PolymorphicMapType_4423_3934_1189#PolymorphicMapType_4423| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4423_3934_1189#PolymorphicMapType_4423| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3947_3948) ) (!  (not (select (|PolymorphicMapType_4423_3934_3948#PolymorphicMapType_4423| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4423_3934_3948#PolymorphicMapType_4423| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3934_53) ) (!  (not (select (|PolymorphicMapType_4423_3934_53#PolymorphicMapType_4423| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4423_3934_53#PolymorphicMapType_4423| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3874) (this T@Ref) ) (! (dummyFunction_1418 (|postFunction#triggerStateless| this))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|postFunction'| Heap@@0 this))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3874) (this@@0 T@Ref) ) (! (dummyFunction_1418 (|postFunction2#triggerStateless| this@@0))
 :qid |stdinbpl.272:15|
 :skolemid |28|
 :pattern ( (|postFunction2'| Heap@@1 this@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3874) (this@@1 T@Ref) ) (!  (and (= (postFunction Heap@@2 this@@1) (|postFunction'| Heap@@2 this@@1)) (dummyFunction_1418 (|postFunction#triggerStateless| this@@1)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (postFunction Heap@@2 this@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3874) (this@@2 T@Ref) ) (!  (and (= (postFunction2 Heap@@3 this@@2) (|postFunction2'| Heap@@3 this@@2)) (dummyFunction_1418 (|postFunction2#triggerStateless| this@@2)))
 :qid |stdinbpl.268:15|
 :skolemid |27|
 :pattern ( (postFunction2 Heap@@3 this@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3874) (ExhaleHeap T@PolymorphicMapType_3874) (Mask@@0 T@PolymorphicMapType_3895) (pm_f T@Field_2105_10673) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2105_10737 Mask@@0 null pm_f) (IsPredicateField_2105_10764 pm_f)) (= (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@4) null (PredicateMaskField_2105 pm_f)) (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| ExhaleHeap) null (PredicateMaskField_2105 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_2105_10764 pm_f) (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| ExhaleHeap) null (PredicateMaskField_2105 pm_f)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3874) (ExhaleHeap@@0 T@PolymorphicMapType_3874) (Mask@@1 T@PolymorphicMapType_3895) (pm_f@@0 T@Field_2105_10673) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2105_10737 Mask@@1 null pm_f@@0) (IsWandField_2105_12511 pm_f@@0)) (= (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@5) null (WandMaskField_2105 pm_f@@0)) (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| ExhaleHeap@@0) null (WandMaskField_2105 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsWandField_2105_12511 pm_f@@0) (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| ExhaleHeap@@0) null (WandMaskField_2105 pm_f@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3874) (Mask@@2 T@PolymorphicMapType_3895) (this@@3 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@2) (or (< AssumeFunctionsAbove 0) (|postFunction2#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@6) this@@3 x_36)) this@@3))) (=> (not (= this@@3 null)) (= (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@6) this@@3 x_36) 0)))
 :qid |stdinbpl.291:15|
 :skolemid |31|
 :pattern ( (state Heap@@6 Mask@@2) (|postFunction2'| Heap@@6 this@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3874) (ExhaleHeap@@1 T@PolymorphicMapType_3874) (Mask@@3 T@PolymorphicMapType_3895) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@7) o_1 $allocated) (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_2105_10673) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3934_3934 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3934_3934 p v_1 p w))
)))
(assert  (not (IsPredicateField_2105_1189 x_36)))
(assert  (not (IsWandField_2105_1189 x_36)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3874) (ExhaleHeap@@2 T@PolymorphicMapType_3874) (Mask@@4 T@PolymorphicMapType_3895) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@8 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_3895) (o_2@@4 T@Ref) (f_4@@4 T@Field_2105_10806) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2105_16057 f_4@@4))) (not (IsWandField_2105_16073 f_4@@4))) (<= (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3895) (o_2@@5 T@Ref) (f_4@@5 T@Field_2105_10673) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2105_10764 f_4@@5))) (not (IsWandField_2105_12511 f_4@@5))) (<= (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3895) (o_2@@6 T@Ref) (f_4@@6 T@Field_3947_3948) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2105_3948 f_4@@6))) (not (IsWandField_2105_3948 f_4@@6))) (<= (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3895) (o_2@@7 T@Ref) (f_4@@7 T@Field_3934_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2105_53 f_4@@7))) (not (IsWandField_2105_53 f_4@@7))) (<= (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3895) (o_2@@8 T@Ref) (f_4@@8 T@Field_7261_1189) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2105_1189 f_4@@8))) (not (IsWandField_2105_1189 f_4@@8))) (<= (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3895) (o_2@@9 T@Ref) (f_4@@9 T@Field_2105_10806) ) (! (= (HasDirectPerm_2105_16511 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2105_16511 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3895) (o_2@@10 T@Ref) (f_4@@10 T@Field_2105_10673) ) (! (= (HasDirectPerm_2105_10737 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2105_10737 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3895) (o_2@@11 T@Ref) (f_4@@11 T@Field_3947_3948) ) (! (= (HasDirectPerm_2105_3948 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2105_3948 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3895) (o_2@@12 T@Ref) (f_4@@12 T@Field_3934_53) ) (! (= (HasDirectPerm_2105_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2105_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3895) (o_2@@13 T@Ref) (f_4@@13 T@Field_7261_1189) ) (! (= (HasDirectPerm_2105_1189 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2105_1189 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3874) (ExhaleHeap@@3 T@PolymorphicMapType_3874) (Mask@@15 T@PolymorphicMapType_3895) (pm_f@@1 T@Field_2105_10673) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_2105_10737 Mask@@15 null pm_f@@1) (IsPredicateField_2105_10764 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3934_53) ) (!  (=> (select (|PolymorphicMapType_4423_3934_53#PolymorphicMapType_4423| (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@9) null (PredicateMaskField_2105 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@9) o2 f_2) (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3947_3948) ) (!  (=> (select (|PolymorphicMapType_4423_3934_3948#PolymorphicMapType_4423| (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@9) null (PredicateMaskField_2105 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@9) o2@@0 f_2@@0) (select (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_7261_1189) ) (!  (=> (select (|PolymorphicMapType_4423_3934_1189#PolymorphicMapType_4423| (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@9) null (PredicateMaskField_2105 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@9) o2@@1 f_2@@1) (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_2105_10673) ) (!  (=> (select (|PolymorphicMapType_4423_3934_10673#PolymorphicMapType_4423| (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@9) null (PredicateMaskField_2105 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@9) o2@@2 f_2@@2) (select (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_2105_10806) ) (!  (=> (select (|PolymorphicMapType_4423_3934_11984#PolymorphicMapType_4423| (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@9) null (PredicateMaskField_2105 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@9) o2@@3 f_2@@3) (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@15) (IsPredicateField_2105_10764 pm_f@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3874) (ExhaleHeap@@4 T@PolymorphicMapType_3874) (Mask@@16 T@PolymorphicMapType_3895) (pm_f@@2 T@Field_2105_10673) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_2105_10737 Mask@@16 null pm_f@@2) (IsWandField_2105_12511 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3934_53) ) (!  (=> (select (|PolymorphicMapType_4423_3934_53#PolymorphicMapType_4423| (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@10) null (WandMaskField_2105 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@10) o2@@4 f_2@@4) (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3947_3948) ) (!  (=> (select (|PolymorphicMapType_4423_3934_3948#PolymorphicMapType_4423| (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@10) null (WandMaskField_2105 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@10) o2@@5 f_2@@5) (select (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_7261_1189) ) (!  (=> (select (|PolymorphicMapType_4423_3934_1189#PolymorphicMapType_4423| (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@10) null (WandMaskField_2105 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@10) o2@@6 f_2@@6) (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_2105_10673) ) (!  (=> (select (|PolymorphicMapType_4423_3934_10673#PolymorphicMapType_4423| (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@10) null (WandMaskField_2105 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@10) o2@@7 f_2@@7) (select (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_2105_10806) ) (!  (=> (select (|PolymorphicMapType_4423_3934_11984#PolymorphicMapType_4423| (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@10) null (WandMaskField_2105 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@10) o2@@8 f_2@@8) (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@16) (IsWandField_2105_12511 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3874) (ExhaleHeap@@5 T@PolymorphicMapType_3874) (Mask@@17 T@PolymorphicMapType_3895) (o_1@@0 T@Ref) (f_2@@9 T@Field_2105_10806) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_2105_16511 Mask@@17 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@11) o_1@@0 f_2@@9) (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3874) (ExhaleHeap@@6 T@PolymorphicMapType_3874) (Mask@@18 T@PolymorphicMapType_3895) (o_1@@1 T@Ref) (f_2@@10 T@Field_2105_10673) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_2105_10737 Mask@@18 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@12) o_1@@1 f_2@@10) (select (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3874) (ExhaleHeap@@7 T@PolymorphicMapType_3874) (Mask@@19 T@PolymorphicMapType_3895) (o_1@@2 T@Ref) (f_2@@11 T@Field_3947_3948) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_2105_3948 Mask@@19 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@13) o_1@@2 f_2@@11) (select (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3874) (ExhaleHeap@@8 T@PolymorphicMapType_3874) (Mask@@20 T@PolymorphicMapType_3895) (o_1@@3 T@Ref) (f_2@@12 T@Field_3934_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_2105_53 Mask@@20 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@14) o_1@@3 f_2@@12) (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3874) (ExhaleHeap@@9 T@PolymorphicMapType_3874) (Mask@@21 T@PolymorphicMapType_3895) (o_1@@4 T@Ref) (f_2@@13 T@Field_7261_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_2105_1189 Mask@@21 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@15) o_1@@4 f_2@@13) (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2105_10806) ) (! (= (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2105_10673) ) (! (= (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_3947_3948) ) (! (= (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_3934_53) ) (! (= (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_7261_1189) ) (! (= (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3874) (Mask@@22 T@PolymorphicMapType_3895) (this@@4 T@Ref) ) (!  (=> (and (state Heap@@16 Mask@@22) (< AssumeFunctionsAbove 0)) (=> (not (= this@@4 null)) (= (postFunction2 Heap@@16 this@@4) 1)))
 :qid |stdinbpl.278:15|
 :skolemid |29|
 :pattern ( (state Heap@@16 Mask@@22) (postFunction2 Heap@@16 this@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3874) (Mask@@23 T@PolymorphicMapType_3895) (this@@5 T@Ref) ) (!  (=> (and (state Heap@@17 Mask@@23) (< AssumeFunctionsAbove 1)) (=> (not (= this@@5 null)) (= (postFunction Heap@@17 this@@5) 1)))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@17 Mask@@23) (postFunction Heap@@17 this@@5))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3895) (SummandMask1 T@PolymorphicMapType_3895) (SummandMask2 T@PolymorphicMapType_3895) (o_2@@19 T@Ref) (f_4@@19 T@Field_2105_10806) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3895_2105_14928#PolymorphicMapType_3895| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3895) (SummandMask1@@0 T@PolymorphicMapType_3895) (SummandMask2@@0 T@PolymorphicMapType_3895) (o_2@@20 T@Ref) (f_4@@20 T@Field_2105_10673) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3895_2105_10673#PolymorphicMapType_3895| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3895) (SummandMask1@@1 T@PolymorphicMapType_3895) (SummandMask2@@1 T@PolymorphicMapType_3895) (o_2@@21 T@Ref) (f_4@@21 T@Field_3947_3948) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3895_2105_3948#PolymorphicMapType_3895| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3895) (SummandMask1@@2 T@PolymorphicMapType_3895) (SummandMask2@@2 T@PolymorphicMapType_3895) (o_2@@22 T@Ref) (f_4@@22 T@Field_3934_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3895_2105_53#PolymorphicMapType_3895| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3895) (SummandMask1@@3 T@PolymorphicMapType_3895) (SummandMask2@@3 T@PolymorphicMapType_3895) (o_2@@23 T@Ref) (f_4@@23 T@Field_7261_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3895_2105_1189#PolymorphicMapType_3895| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3874) (Mask@@24 T@PolymorphicMapType_3895) (this@@6 T@Ref) ) (!  (=> (and (state Heap@@18 Mask@@24) (or (< AssumeFunctionsAbove 1) (|postFunction#trigger| EmptyFrame this@@6))) (=> (not (= this@@6 null)) (= (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@18) this@@6 x_36) 0)))
 :qid |stdinbpl.218:15|
 :skolemid |26|
 :pattern ( (state Heap@@18 Mask@@24) (|postFunction'| Heap@@18 this@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3874) (Mask@@25 T@PolymorphicMapType_3895) (this@@7 T@Ref) ) (!  (=> (state Heap@@19 Mask@@25) (= (|postFunction2'| Heap@@19 this@@7) (|postFunction2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@19) this@@7 x_36)) this@@7)))
 :qid |stdinbpl.285:15|
 :skolemid |30|
 :pattern ( (state Heap@@19 Mask@@25) (|postFunction2'| Heap@@19 this@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3874) (Mask@@26 T@PolymorphicMapType_3895) (this@@8 T@Ref) ) (!  (=> (state Heap@@20 Mask@@26) (= (|postFunction'| Heap@@20 this@@8) (|postFunction#frame| EmptyFrame this@@8)))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (state Heap@@20 Mask@@26) (|postFunction'| Heap@@20 this@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3874) (o T@Ref) (f_3 T@Field_2105_10673) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_3874 (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@21) (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@21) (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@21) (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@21) (store (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@21) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3874 (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@21) (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@21) (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@21) (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@21) (store (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@21) o f_3 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3874) (o@@0 T@Ref) (f_3@@0 T@Field_2105_10806) (v@@0 T@PolymorphicMapType_4423) ) (! (succHeap Heap@@22 (PolymorphicMapType_3874 (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@22) (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@22) (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@22) (store (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3874 (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@22) (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@22) (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@22) (store (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3874) (o@@1 T@Ref) (f_3@@1 T@Field_7261_1189) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_3874 (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@23) (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@23) (store (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@23) (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3874 (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@23) (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@23) (store (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@23) (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3874) (o@@2 T@Ref) (f_3@@2 T@Field_3947_3948) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_3874 (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@24) (store (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@24) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@24) (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@24) (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3874 (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@24) (store (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@24) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@24) (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@24) (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3874) (o@@3 T@Ref) (f_3@@3 T@Field_3934_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_3874 (store (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@25) (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@25) (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@25) (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3874 (store (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@25) (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@25) (|PolymorphicMapType_3874_2105_10850#PolymorphicMapType_3874| Heap@@25) (|PolymorphicMapType_3874_3934_10673#PolymorphicMapType_3874| Heap@@25)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_3947_3948) (Heap@@26 T@PolymorphicMapType_3874) ) (!  (=> (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@26) o@@4 $allocated) (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@26) (select (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@26) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3874_1980_1981#PolymorphicMapType_3874| Heap@@26) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_2105_10673) (v_1@@0 T@FrameType) (q T@Field_2105_10673) (w@@0 T@FrameType) (r T@Field_2105_10673) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3934_3934 p@@1 v_1@@0 q w@@0) (InsidePredicate_3934_3934 q w@@0 r u)) (InsidePredicate_3934_3934 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3934_3934 p@@1 v_1@@0 q w@@0) (InsidePredicate_3934_3934 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@27 () T@PolymorphicMapType_3874)
(declare-fun this@@9 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_3874)
(set-info :boogie-vc-id postMethod)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= (select (|PolymorphicMapType_3874_2105_1189#PolymorphicMapType_3874| Heap@@27) this@@9 x_36) 0))))
(let ((anon3_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (HasDirectPerm_2105_1189 ZeroMask this@@9 x_36))))
(let ((anon0_correct  (=> (and (state Heap@@27 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_3874_1977_53#PolymorphicMapType_3874| Heap@@27) this@@9 $allocated)) (and (not (= this@@9 null)) (state Heap@@27 ZeroMask))) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid