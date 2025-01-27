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
(declare-sort T@Field_7710_53 0)
(declare-sort T@Field_7723_7724 0)
(declare-sort T@Field_11037_1189 0)
(declare-sort T@Field_7710_23648 0)
(declare-sort T@Field_7710_23515 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7671 0)) (((PolymorphicMapType_7671 (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| (Array T@Ref T@Field_11037_1189 Real)) (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| (Array T@Ref T@Field_7710_53 Real)) (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| (Array T@Ref T@Field_7723_7724 Real)) (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| (Array T@Ref T@Field_7710_23515 Real)) (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| (Array T@Ref T@Field_7710_23648 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8199 0)) (((PolymorphicMapType_8199 (|PolymorphicMapType_8199_7710_53#PolymorphicMapType_8199| (Array T@Ref T@Field_7710_53 Bool)) (|PolymorphicMapType_8199_7710_7724#PolymorphicMapType_8199| (Array T@Ref T@Field_7723_7724 Bool)) (|PolymorphicMapType_8199_7710_1189#PolymorphicMapType_8199| (Array T@Ref T@Field_11037_1189 Bool)) (|PolymorphicMapType_8199_7710_23515#PolymorphicMapType_8199| (Array T@Ref T@Field_7710_23515 Bool)) (|PolymorphicMapType_8199_7710_24826#PolymorphicMapType_8199| (Array T@Ref T@Field_7710_23648 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7650 0)) (((PolymorphicMapType_7650 (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| (Array T@Ref T@Field_7710_53 Bool)) (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| (Array T@Ref T@Field_7723_7724 T@Ref)) (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| (Array T@Ref T@Field_11037_1189 Int)) (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| (Array T@Ref T@Field_7710_23648 T@PolymorphicMapType_8199)) (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| (Array T@Ref T@Field_7710_23515 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7710_53)
(declare-fun f_7 () T@Field_11037_1189)
(declare-fun succHeap (T@PolymorphicMapType_7650 T@PolymorphicMapType_7650) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7650 T@PolymorphicMapType_7650) Bool)
(declare-fun state (T@PolymorphicMapType_7650 T@PolymorphicMapType_7671) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7671) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8199)
(declare-fun |fun01'| (T@PolymorphicMapType_7650 T@Ref Int) Bool)
(declare-fun dummyFunction_1378 (Bool) Bool)
(declare-fun |fun01#triggerStateless| (T@Ref Int) Bool)
(declare-fun |bar01'| (T@PolymorphicMapType_7650 Int) Int)
(declare-fun dummyFunction_1591 (Int) Bool)
(declare-fun |bar01#triggerStateless| (Int) Int)
(declare-fun bar01 (T@PolymorphicMapType_7650 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7650 T@PolymorphicMapType_7650 T@PolymorphicMapType_7671) Bool)
(declare-fun IsPredicateField_7710_23606 (T@Field_7710_23515) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7710 (T@Field_7710_23515) T@Field_7710_23648)
(declare-fun HasDirectPerm_7710_23579 (T@PolymorphicMapType_7671 T@Ref T@Field_7710_23515) Bool)
(declare-fun IsWandField_7710_25353 (T@Field_7710_23515) Bool)
(declare-fun WandMaskField_7710 (T@Field_7710_23515) T@Field_7710_23648)
(declare-fun dummyHeap () T@PolymorphicMapType_7650)
(declare-fun ZeroMask () T@PolymorphicMapType_7671)
(declare-fun InsidePredicate_7710_7710 (T@Field_7710_23515 T@FrameType T@Field_7710_23515 T@FrameType) Bool)
(declare-fun IsPredicateField_3801_1189 (T@Field_11037_1189) Bool)
(declare-fun IsWandField_3801_1189 (T@Field_11037_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3801_28899 (T@Field_7710_23648) Bool)
(declare-fun IsWandField_3801_28915 (T@Field_7710_23648) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3801_7724 (T@Field_7723_7724) Bool)
(declare-fun IsWandField_3801_7724 (T@Field_7723_7724) Bool)
(declare-fun IsPredicateField_3801_53 (T@Field_7710_53) Bool)
(declare-fun IsWandField_3801_53 (T@Field_7710_53) Bool)
(declare-fun HasDirectPerm_7710_29353 (T@PolymorphicMapType_7671 T@Ref T@Field_7710_23648) Bool)
(declare-fun HasDirectPerm_7710_1189 (T@PolymorphicMapType_7671 T@Ref T@Field_11037_1189) Bool)
(declare-fun HasDirectPerm_7710_7724 (T@PolymorphicMapType_7671 T@Ref T@Field_7723_7724) Bool)
(declare-fun HasDirectPerm_7710_53 (T@PolymorphicMapType_7671 T@Ref T@Field_7710_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7671 T@PolymorphicMapType_7671 T@PolymorphicMapType_7671) Bool)
(declare-fun |fun01#frame| (T@FrameType T@Ref Int) Bool)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |bar01#frame| (T@FrameType Int) Int)
(declare-fun fun01 (T@PolymorphicMapType_7650 T@Ref Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7650) (Heap1 T@PolymorphicMapType_7650) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7650) (Mask T@PolymorphicMapType_7671) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7650) (Heap1@@0 T@PolymorphicMapType_7650) (Heap2 T@PolymorphicMapType_7650) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7710_23648) ) (!  (not (select (|PolymorphicMapType_8199_7710_24826#PolymorphicMapType_8199| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8199_7710_24826#PolymorphicMapType_8199| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7710_23515) ) (!  (not (select (|PolymorphicMapType_8199_7710_23515#PolymorphicMapType_8199| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8199_7710_23515#PolymorphicMapType_8199| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11037_1189) ) (!  (not (select (|PolymorphicMapType_8199_7710_1189#PolymorphicMapType_8199| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8199_7710_1189#PolymorphicMapType_8199| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7723_7724) ) (!  (not (select (|PolymorphicMapType_8199_7710_7724#PolymorphicMapType_8199| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8199_7710_7724#PolymorphicMapType_8199| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7710_53) ) (!  (not (select (|PolymorphicMapType_8199_7710_53#PolymorphicMapType_8199| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8199_7710_53#PolymorphicMapType_8199| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7650) (x T@Ref) (i Int) ) (! (dummyFunction_1378 (|fun01#triggerStateless| x i))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|fun01'| Heap@@0 x i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7650) (i@@0 Int) ) (! (dummyFunction_1591 (|bar01#triggerStateless| i@@0))
 :qid |stdinbpl.249:15|
 :skolemid |26|
 :pattern ( (|bar01'| Heap@@1 i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7650) (i@@1 Int) ) (!  (and (= (bar01 Heap@@2 i@@1) (|bar01'| Heap@@2 i@@1)) (dummyFunction_1591 (|bar01#triggerStateless| i@@1)))
 :qid |stdinbpl.245:15|
 :skolemid |25|
 :pattern ( (bar01 Heap@@2 i@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7650) (ExhaleHeap T@PolymorphicMapType_7650) (Mask@@0 T@PolymorphicMapType_7671) (pm_f_19 T@Field_7710_23515) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7710_23579 Mask@@0 null pm_f_19) (IsPredicateField_7710_23606 pm_f_19)) (= (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@3) null (PredicateMaskField_7710 pm_f_19)) (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| ExhaleHeap) null (PredicateMaskField_7710 pm_f_19)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_7710_23606 pm_f_19) (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| ExhaleHeap) null (PredicateMaskField_7710 pm_f_19)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7650) (ExhaleHeap@@0 T@PolymorphicMapType_7650) (Mask@@1 T@PolymorphicMapType_7671) (pm_f_19@@0 T@Field_7710_23515) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7710_23579 Mask@@1 null pm_f_19@@0) (IsWandField_7710_25353 pm_f_19@@0)) (= (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@4) null (WandMaskField_7710 pm_f_19@@0)) (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| ExhaleHeap@@0) null (WandMaskField_7710 pm_f_19@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsWandField_7710_25353 pm_f_19@@0) (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| ExhaleHeap@@0) null (WandMaskField_7710 pm_f_19@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7650) (ExhaleHeap@@1 T@PolymorphicMapType_7650) (Mask@@2 T@PolymorphicMapType_7671) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@5) o_12 $allocated) (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| ExhaleHeap@@1) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| ExhaleHeap@@1) o_12 $allocated))
)))
(assert (forall ((p T@Field_7710_23515) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7710_7710 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7710_7710 p v_1 p w))
)))
(assert  (not (IsPredicateField_3801_1189 f_7)))
(assert  (not (IsWandField_3801_1189 f_7)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7650) (ExhaleHeap@@2 T@PolymorphicMapType_7650) (Mask@@3 T@PolymorphicMapType_7671) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_7671) (o_2@@4 T@Ref) (f_4@@4 T@Field_7710_23648) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3801_28899 f_4@@4))) (not (IsWandField_3801_28915 f_4@@4))) (<= (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7671) (o_2@@5 T@Ref) (f_4@@5 T@Field_7710_23515) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7710_23606 f_4@@5))) (not (IsWandField_7710_25353 f_4@@5))) (<= (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7671) (o_2@@6 T@Ref) (f_4@@6 T@Field_7723_7724) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3801_7724 f_4@@6))) (not (IsWandField_3801_7724 f_4@@6))) (<= (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7671) (o_2@@7 T@Ref) (f_4@@7 T@Field_7710_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3801_53 f_4@@7))) (not (IsWandField_3801_53 f_4@@7))) (<= (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7671) (o_2@@8 T@Ref) (f_4@@8 T@Field_11037_1189) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3801_1189 f_4@@8))) (not (IsWandField_3801_1189 f_4@@8))) (<= (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7671) (o_2@@9 T@Ref) (f_4@@9 T@Field_7710_23648) ) (! (= (HasDirectPerm_7710_29353 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7710_29353 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7671) (o_2@@10 T@Ref) (f_4@@10 T@Field_7710_23515) ) (! (= (HasDirectPerm_7710_23579 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7710_23579 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7671) (o_2@@11 T@Ref) (f_4@@11 T@Field_11037_1189) ) (! (= (HasDirectPerm_7710_1189 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7710_1189 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7671) (o_2@@12 T@Ref) (f_4@@12 T@Field_7723_7724) ) (! (= (HasDirectPerm_7710_7724 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7710_7724 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7671) (o_2@@13 T@Ref) (f_4@@13 T@Field_7710_53) ) (! (= (HasDirectPerm_7710_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7710_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7650) (ExhaleHeap@@3 T@PolymorphicMapType_7650) (Mask@@14 T@PolymorphicMapType_7671) (pm_f_19@@1 T@Field_7710_23515) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7710_23579 Mask@@14 null pm_f_19@@1) (IsPredicateField_7710_23606 pm_f_19@@1)) (and (and (and (and (forall ((o2_19 T@Ref) (f_19 T@Field_7710_53) ) (!  (=> (select (|PolymorphicMapType_8199_7710_53#PolymorphicMapType_8199| (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@7) null (PredicateMaskField_7710 pm_f_19@@1))) o2_19 f_19) (= (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@7) o2_19 f_19) (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| ExhaleHeap@@3) o2_19 f_19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| ExhaleHeap@@3) o2_19 f_19))
)) (forall ((o2_19@@0 T@Ref) (f_19@@0 T@Field_7723_7724) ) (!  (=> (select (|PolymorphicMapType_8199_7710_7724#PolymorphicMapType_8199| (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@7) null (PredicateMaskField_7710 pm_f_19@@1))) o2_19@@0 f_19@@0) (= (select (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@7) o2_19@@0 f_19@@0) (select (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| ExhaleHeap@@3) o2_19@@0 f_19@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| ExhaleHeap@@3) o2_19@@0 f_19@@0))
))) (forall ((o2_19@@1 T@Ref) (f_19@@1 T@Field_11037_1189) ) (!  (=> (select (|PolymorphicMapType_8199_7710_1189#PolymorphicMapType_8199| (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@7) null (PredicateMaskField_7710 pm_f_19@@1))) o2_19@@1 f_19@@1) (= (select (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@7) o2_19@@1 f_19@@1) (select (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| ExhaleHeap@@3) o2_19@@1 f_19@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| ExhaleHeap@@3) o2_19@@1 f_19@@1))
))) (forall ((o2_19@@2 T@Ref) (f_19@@2 T@Field_7710_23515) ) (!  (=> (select (|PolymorphicMapType_8199_7710_23515#PolymorphicMapType_8199| (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@7) null (PredicateMaskField_7710 pm_f_19@@1))) o2_19@@2 f_19@@2) (= (select (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@7) o2_19@@2 f_19@@2) (select (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| ExhaleHeap@@3) o2_19@@2 f_19@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| ExhaleHeap@@3) o2_19@@2 f_19@@2))
))) (forall ((o2_19@@3 T@Ref) (f_19@@3 T@Field_7710_23648) ) (!  (=> (select (|PolymorphicMapType_8199_7710_24826#PolymorphicMapType_8199| (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@7) null (PredicateMaskField_7710 pm_f_19@@1))) o2_19@@3 f_19@@3) (= (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@7) o2_19@@3 f_19@@3) (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| ExhaleHeap@@3) o2_19@@3 f_19@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| ExhaleHeap@@3) o2_19@@3 f_19@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7710_23606 pm_f_19@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7650) (ExhaleHeap@@4 T@PolymorphicMapType_7650) (Mask@@15 T@PolymorphicMapType_7671) (pm_f_19@@2 T@Field_7710_23515) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7710_23579 Mask@@15 null pm_f_19@@2) (IsWandField_7710_25353 pm_f_19@@2)) (and (and (and (and (forall ((o2_19@@4 T@Ref) (f_19@@4 T@Field_7710_53) ) (!  (=> (select (|PolymorphicMapType_8199_7710_53#PolymorphicMapType_8199| (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@8) null (WandMaskField_7710 pm_f_19@@2))) o2_19@@4 f_19@@4) (= (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@8) o2_19@@4 f_19@@4) (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| ExhaleHeap@@4) o2_19@@4 f_19@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| ExhaleHeap@@4) o2_19@@4 f_19@@4))
)) (forall ((o2_19@@5 T@Ref) (f_19@@5 T@Field_7723_7724) ) (!  (=> (select (|PolymorphicMapType_8199_7710_7724#PolymorphicMapType_8199| (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@8) null (WandMaskField_7710 pm_f_19@@2))) o2_19@@5 f_19@@5) (= (select (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@8) o2_19@@5 f_19@@5) (select (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| ExhaleHeap@@4) o2_19@@5 f_19@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| ExhaleHeap@@4) o2_19@@5 f_19@@5))
))) (forall ((o2_19@@6 T@Ref) (f_19@@6 T@Field_11037_1189) ) (!  (=> (select (|PolymorphicMapType_8199_7710_1189#PolymorphicMapType_8199| (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@8) null (WandMaskField_7710 pm_f_19@@2))) o2_19@@6 f_19@@6) (= (select (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@8) o2_19@@6 f_19@@6) (select (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| ExhaleHeap@@4) o2_19@@6 f_19@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| ExhaleHeap@@4) o2_19@@6 f_19@@6))
))) (forall ((o2_19@@7 T@Ref) (f_19@@7 T@Field_7710_23515) ) (!  (=> (select (|PolymorphicMapType_8199_7710_23515#PolymorphicMapType_8199| (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@8) null (WandMaskField_7710 pm_f_19@@2))) o2_19@@7 f_19@@7) (= (select (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@8) o2_19@@7 f_19@@7) (select (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| ExhaleHeap@@4) o2_19@@7 f_19@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| ExhaleHeap@@4) o2_19@@7 f_19@@7))
))) (forall ((o2_19@@8 T@Ref) (f_19@@8 T@Field_7710_23648) ) (!  (=> (select (|PolymorphicMapType_8199_7710_24826#PolymorphicMapType_8199| (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@8) null (WandMaskField_7710 pm_f_19@@2))) o2_19@@8 f_19@@8) (= (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@8) o2_19@@8 f_19@@8) (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| ExhaleHeap@@4) o2_19@@8 f_19@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| ExhaleHeap@@4) o2_19@@8 f_19@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@15) (IsWandField_7710_25353 pm_f_19@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7650) (ExhaleHeap@@5 T@PolymorphicMapType_7650) (Mask@@16 T@PolymorphicMapType_7671) (o_12@@0 T@Ref) (f_19@@9 T@Field_7710_23648) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7710_29353 Mask@@16 o_12@@0 f_19@@9) (= (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@9) o_12@@0 f_19@@9) (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| ExhaleHeap@@5) o_12@@0 f_19@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| ExhaleHeap@@5) o_12@@0 f_19@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7650) (ExhaleHeap@@6 T@PolymorphicMapType_7650) (Mask@@17 T@PolymorphicMapType_7671) (o_12@@1 T@Ref) (f_19@@10 T@Field_7710_23515) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7710_23579 Mask@@17 o_12@@1 f_19@@10) (= (select (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@10) o_12@@1 f_19@@10) (select (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| ExhaleHeap@@6) o_12@@1 f_19@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| ExhaleHeap@@6) o_12@@1 f_19@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7650) (ExhaleHeap@@7 T@PolymorphicMapType_7650) (Mask@@18 T@PolymorphicMapType_7671) (o_12@@2 T@Ref) (f_19@@11 T@Field_11037_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7710_1189 Mask@@18 o_12@@2 f_19@@11) (= (select (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@11) o_12@@2 f_19@@11) (select (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| ExhaleHeap@@7) o_12@@2 f_19@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| ExhaleHeap@@7) o_12@@2 f_19@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7650) (ExhaleHeap@@8 T@PolymorphicMapType_7650) (Mask@@19 T@PolymorphicMapType_7671) (o_12@@3 T@Ref) (f_19@@12 T@Field_7723_7724) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7710_7724 Mask@@19 o_12@@3 f_19@@12) (= (select (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@12) o_12@@3 f_19@@12) (select (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| ExhaleHeap@@8) o_12@@3 f_19@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| ExhaleHeap@@8) o_12@@3 f_19@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7650) (ExhaleHeap@@9 T@PolymorphicMapType_7650) (Mask@@20 T@PolymorphicMapType_7671) (o_12@@4 T@Ref) (f_19@@13 T@Field_7710_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7710_53 Mask@@20 o_12@@4 f_19@@13) (= (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@13) o_12@@4 f_19@@13) (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| ExhaleHeap@@9) o_12@@4 f_19@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| ExhaleHeap@@9) o_12@@4 f_19@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7710_23648) ) (! (= (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7710_23515) ) (! (= (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7723_7724) ) (! (= (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7710_53) ) (! (= (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_11037_1189) ) (! (= (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7671) (SummandMask1 T@PolymorphicMapType_7671) (SummandMask2 T@PolymorphicMapType_7671) (o_2@@19 T@Ref) (f_4@@19 T@Field_7710_23648) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7671) (SummandMask1@@0 T@PolymorphicMapType_7671) (SummandMask2@@0 T@PolymorphicMapType_7671) (o_2@@20 T@Ref) (f_4@@20 T@Field_7710_23515) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7671) (SummandMask1@@1 T@PolymorphicMapType_7671) (SummandMask2@@1 T@PolymorphicMapType_7671) (o_2@@21 T@Ref) (f_4@@21 T@Field_7723_7724) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7671) (SummandMask1@@2 T@PolymorphicMapType_7671) (SummandMask2@@2 T@PolymorphicMapType_7671) (o_2@@22 T@Ref) (f_4@@22 T@Field_7710_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7671) (SummandMask1@@3 T@PolymorphicMapType_7671) (SummandMask2@@3 T@PolymorphicMapType_7671) (o_2@@23 T@Ref) (f_4@@23 T@Field_11037_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7650) (Mask@@21 T@PolymorphicMapType_7671) (x@@0 T@Ref) (i@@2 Int) ) (!  (=> (state Heap@@14 Mask@@21) (= (|fun01'| Heap@@14 x@@0 i@@2) (|fun01#frame| (FrameFragment_1189 (select (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@14) x@@0 f_7)) x@@0 i@@2)))
 :qid |stdinbpl.206:15|
 :skolemid |24|
 :pattern ( (state Heap@@14 Mask@@21) (|fun01'| Heap@@14 x@@0 i@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7650) (Mask@@22 T@PolymorphicMapType_7671) (i@@3 Int) ) (!  (=> (state Heap@@15 Mask@@22) (= (|bar01'| Heap@@15 i@@3) (|bar01#frame| EmptyFrame i@@3)))
 :qid |stdinbpl.256:15|
 :skolemid |27|
 :pattern ( (state Heap@@15 Mask@@22) (|bar01'| Heap@@15 i@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7650) (o_1 T@Ref) (f_51 T@Field_7710_23515) (v T@FrameType) ) (! (succHeap Heap@@16 (PolymorphicMapType_7650 (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@16) (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@16) (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@16) (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@16) (store (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@16) o_1 f_51 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7650 (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@16) (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@16) (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@16) (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@16) (store (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@16) o_1 f_51 v)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7650) (o_1@@0 T@Ref) (f_51@@0 T@Field_7710_23648) (v@@0 T@PolymorphicMapType_8199) ) (! (succHeap Heap@@17 (PolymorphicMapType_7650 (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@17) (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@17) (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@17) (store (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@17) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7650 (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@17) (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@17) (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@17) (store (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@17) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7650) (o_1@@1 T@Ref) (f_51@@1 T@Field_11037_1189) (v@@1 Int) ) (! (succHeap Heap@@18 (PolymorphicMapType_7650 (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@18) (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@18) (store (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@18) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@18) (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7650 (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@18) (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@18) (store (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@18) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@18) (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7650) (o_1@@2 T@Ref) (f_51@@2 T@Field_7723_7724) (v@@2 T@Ref) ) (! (succHeap Heap@@19 (PolymorphicMapType_7650 (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@19) (store (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@19) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@19) (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@19) (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7650 (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@19) (store (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@19) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@19) (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@19) (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7650) (o_1@@3 T@Ref) (f_51@@3 T@Field_7710_53) (v@@3 Bool) ) (! (succHeap Heap@@20 (PolymorphicMapType_7650 (store (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@20) o_1@@3 f_51@@3 v@@3) (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@20) (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@20) (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@20) (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7650 (store (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@20) o_1@@3 f_51@@3 v@@3) (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@20) (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@20) (|PolymorphicMapType_7650_7710_23692#PolymorphicMapType_7650| Heap@@20) (|PolymorphicMapType_7650_7710_23515#PolymorphicMapType_7650| Heap@@20)))
)))
(assert (forall ((o_1@@4 T@Ref) (f_2 T@Field_7723_7724) (Heap@@21 T@PolymorphicMapType_7650) ) (!  (=> (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@21) o_1@@4 $allocated) (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@21) (select (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@21) o_1@@4 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7650_3676_3677#PolymorphicMapType_7650| Heap@@21) o_1@@4 f_2))
)))
(assert (forall ((p@@1 T@Field_7710_23515) (v_1@@0 T@FrameType) (q T@Field_7710_23515) (w@@0 T@FrameType) (r T@Field_7710_23515) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7710_7710 p@@1 v_1@@0 q w@@0) (InsidePredicate_7710_7710 q w@@0 r u)) (InsidePredicate_7710_7710 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7710_7710 p@@1 v_1@@0 q w@@0) (InsidePredicate_7710_7710 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7650) (x@@1 T@Ref) (i@@4 Int) ) (!  (and (= (fun01 Heap@@22 x@@1 i@@4) (|fun01'| Heap@@22 x@@1 i@@4)) (dummyFunction_1378 (|fun01#triggerStateless| x@@1 i@@4)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (fun01 Heap@@22 x@@1 i@@4))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@23 () T@PolymorphicMapType_7650)
(declare-fun x@@2 () T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_7650)
(declare-fun Mask@2 () T@PolymorphicMapType_7671)
(declare-fun Mask@0 () T@PolymorphicMapType_7671)
(declare-fun Mask@1 () T@PolymorphicMapType_7671)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon15_Else_correct  (=> (= (ControlFlow 0 7) (- 0 6)) (> (bar01 Heap@@23 5) 0))))
(let ((anon15_Then_correct true))
(let ((anon14_Else_correct  (=> (fun01 Heap@@23 x@@2 5) (=> (and (state ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2)) (and (=> (= (ControlFlow 0 8) 5) anon15_Then_correct) (=> (= (ControlFlow 0 8) 7) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| Mask@0) x@@2 f_7))))))
(let ((anon6_correct  (=> (= Mask@1 (PolymorphicMapType_7671 (store (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| Mask@0) x@@2 f_7 (- (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| Mask@0) x@@2 f_7) FullPerm)) (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| Mask@0) (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| Mask@0) (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| Mask@0) (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| Mask@0))) (=> (and (and (and (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@0 Mask@1) (state ExhaleHeap@0 Mask@1)) (and (not (= x@@2 null)) (= Mask@2 (PolymorphicMapType_7671 (store (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| Mask@1) x@@2 f_7 (+ (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| Mask@1) x@@2 f_7) FullPerm)) (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| Mask@1) (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| Mask@1) (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| Mask@1) (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| Mask@1))))) (and (and (state ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2)) (and (state ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2)))) (and (=> (= (ControlFlow 0 9) 4) anon14_Then_correct) (=> (= (ControlFlow 0 9) 8) anon14_Else_correct))))))
(let ((anon13_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 12) 9)) anon6_correct)))
(let ((anon13_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= FullPerm (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| Mask@0) x@@2 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| Mask@0) x@@2 f_7)) (=> (= (ControlFlow 0 10) 9) anon6_correct))))))
(let ((anon11_Else_correct  (=> (and (forall ((i_1 Int) ) (! (> (bar01 Heap@@23 i_1) 0)
 :qid |stdinbpl.558:20|
 :skolemid |30|
 :pattern ( (|fun01#frame| (FrameFragment_1189 (select (|PolymorphicMapType_7650_3801_1189#PolymorphicMapType_7650| Heap@@23) x@@2 f_7)) x@@2 i_1))
)) (state Heap@@23 Mask@0)) (and (=> (= (ControlFlow 0 13) 10) anon13_Then_correct) (=> (= (ControlFlow 0 13) 12) anon13_Else_correct)))))
(let ((anon12_Else_correct true))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@23 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_7650_3673_53#PolymorphicMapType_7650| Heap@@23) x@@2 $allocated) (not (= x@@2 null)))) (and (and (= Mask@0 (PolymorphicMapType_7671 (store (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| ZeroMask) x@@2 f_7 (+ (select (|PolymorphicMapType_7671_3801_1189#PolymorphicMapType_7671| ZeroMask) x@@2 f_7) FullPerm)) (|PolymorphicMapType_7671_3801_53#PolymorphicMapType_7671| ZeroMask) (|PolymorphicMapType_7671_3801_7724#PolymorphicMapType_7671| ZeroMask) (|PolymorphicMapType_7671_3801_23515#PolymorphicMapType_7671| ZeroMask) (|PolymorphicMapType_7671_3801_27770#PolymorphicMapType_7671| ZeroMask))) (state Heap@@23 Mask@0)) (and (state Heap@@23 Mask@0) (state Heap@@23 Mask@0)))) (and (and (=> (= (ControlFlow 0 14) 13) anon11_Else_correct) (=> (= (ControlFlow 0 14) 1) anon12_Then_correct)) (=> (= (ControlFlow 0 14) 2) anon12_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 14) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
