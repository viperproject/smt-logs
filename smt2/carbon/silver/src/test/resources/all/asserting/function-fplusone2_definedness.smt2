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
(declare-sort T@Field_4698_53 0)
(declare-sort T@Field_4711_4712 0)
(declare-sort T@Field_8025_1189 0)
(declare-sort T@Field_2488_13410 0)
(declare-sort T@Field_2488_13277 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4659 0)) (((PolymorphicMapType_4659 (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| (Array T@Ref T@Field_8025_1189 Real)) (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| (Array T@Ref T@Field_4698_53 Real)) (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| (Array T@Ref T@Field_4711_4712 Real)) (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| (Array T@Ref T@Field_2488_13277 Real)) (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| (Array T@Ref T@Field_2488_13410 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5187 0)) (((PolymorphicMapType_5187 (|PolymorphicMapType_5187_4698_53#PolymorphicMapType_5187| (Array T@Ref T@Field_4698_53 Bool)) (|PolymorphicMapType_5187_4698_4712#PolymorphicMapType_5187| (Array T@Ref T@Field_4711_4712 Bool)) (|PolymorphicMapType_5187_4698_1189#PolymorphicMapType_5187| (Array T@Ref T@Field_8025_1189 Bool)) (|PolymorphicMapType_5187_4698_13277#PolymorphicMapType_5187| (Array T@Ref T@Field_2488_13277 Bool)) (|PolymorphicMapType_5187_4698_14588#PolymorphicMapType_5187| (Array T@Ref T@Field_2488_13410 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4638 0)) (((PolymorphicMapType_4638 (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| (Array T@Ref T@Field_4698_53 Bool)) (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| (Array T@Ref T@Field_4711_4712 T@Ref)) (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| (Array T@Ref T@Field_8025_1189 Int)) (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| (Array T@Ref T@Field_2488_13410 T@PolymorphicMapType_5187)) (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| (Array T@Ref T@Field_2488_13277 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4698_53)
(declare-fun f_7 () T@Field_8025_1189)
(declare-fun succHeap (T@PolymorphicMapType_4638 T@PolymorphicMapType_4638) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4638 T@PolymorphicMapType_4638) Bool)
(declare-fun state (T@PolymorphicMapType_4638 T@PolymorphicMapType_4659) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4659) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5187)
(declare-fun |fplusone'| (T@PolymorphicMapType_4638 T@Ref T@Ref) Int)
(declare-fun dummyFunction_1423 (Int) Bool)
(declare-fun |fplusone#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |fplusone2'| (T@PolymorphicMapType_4638 T@Ref T@Ref) Int)
(declare-fun |fplusone2#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4638 T@PolymorphicMapType_4638 T@PolymorphicMapType_4659) Bool)
(declare-fun IsPredicateField_2488_13368 (T@Field_2488_13277) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2488 (T@Field_2488_13277) T@Field_2488_13410)
(declare-fun HasDirectPerm_2488_13341 (T@PolymorphicMapType_4659 T@Ref T@Field_2488_13277) Bool)
(declare-fun IsWandField_2488_15115 (T@Field_2488_13277) Bool)
(declare-fun WandMaskField_2488 (T@Field_2488_13277) T@Field_2488_13410)
(declare-fun dummyHeap () T@PolymorphicMapType_4638)
(declare-fun ZeroMask () T@PolymorphicMapType_4659)
(declare-fun InsidePredicate_4698_4698 (T@Field_2488_13277 T@FrameType T@Field_2488_13277 T@FrameType) Bool)
(declare-fun IsPredicateField_2488_1189 (T@Field_8025_1189) Bool)
(declare-fun IsWandField_2488_1189 (T@Field_8025_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2488_18661 (T@Field_2488_13410) Bool)
(declare-fun IsWandField_2488_18677 (T@Field_2488_13410) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2488_4712 (T@Field_4711_4712) Bool)
(declare-fun IsWandField_2488_4712 (T@Field_4711_4712) Bool)
(declare-fun IsPredicateField_2488_53 (T@Field_4698_53) Bool)
(declare-fun IsWandField_2488_53 (T@Field_4698_53) Bool)
(declare-fun HasDirectPerm_2488_19115 (T@PolymorphicMapType_4659 T@Ref T@Field_2488_13410) Bool)
(declare-fun HasDirectPerm_2488_4712 (T@PolymorphicMapType_4659 T@Ref T@Field_4711_4712) Bool)
(declare-fun HasDirectPerm_2488_53 (T@PolymorphicMapType_4659 T@Ref T@Field_4698_53) Bool)
(declare-fun HasDirectPerm_2488_1189 (T@PolymorphicMapType_4659 T@Ref T@Field_8025_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fplusone (T@PolymorphicMapType_4638 T@Ref T@Ref) Int)
(declare-fun fplusone2 (T@PolymorphicMapType_4638 T@Ref T@Ref) Int)
(declare-fun sumMask (T@PolymorphicMapType_4659 T@PolymorphicMapType_4659 T@PolymorphicMapType_4659) Bool)
(declare-fun |fplusone#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |fplusone2#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(assert (forall ((Heap0 T@PolymorphicMapType_4638) (Heap1 T@PolymorphicMapType_4638) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4638) (Mask T@PolymorphicMapType_4659) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4638) (Heap1@@0 T@PolymorphicMapType_4638) (Heap2 T@PolymorphicMapType_4638) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2488_13410) ) (!  (not (select (|PolymorphicMapType_5187_4698_14588#PolymorphicMapType_5187| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5187_4698_14588#PolymorphicMapType_5187| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2488_13277) ) (!  (not (select (|PolymorphicMapType_5187_4698_13277#PolymorphicMapType_5187| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5187_4698_13277#PolymorphicMapType_5187| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8025_1189) ) (!  (not (select (|PolymorphicMapType_5187_4698_1189#PolymorphicMapType_5187| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5187_4698_1189#PolymorphicMapType_5187| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4711_4712) ) (!  (not (select (|PolymorphicMapType_5187_4698_4712#PolymorphicMapType_5187| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5187_4698_4712#PolymorphicMapType_5187| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4698_53) ) (!  (not (select (|PolymorphicMapType_5187_4698_53#PolymorphicMapType_5187| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5187_4698_53#PolymorphicMapType_5187| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4638) (x T@Ref) (y T@Ref) ) (! (dummyFunction_1423 (|fplusone#triggerStateless| x y))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|fplusone'| Heap@@0 x y))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4638) (x@@0 T@Ref) (y@@0 T@Ref) ) (! (dummyFunction_1423 (|fplusone2#triggerStateless| x@@0 y@@0))
 :qid |stdinbpl.278:15|
 :skolemid |27|
 :pattern ( (|fplusone2'| Heap@@1 x@@0 y@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4638) (ExhaleHeap T@PolymorphicMapType_4638) (Mask@@0 T@PolymorphicMapType_4659) (pm_f T@Field_2488_13277) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2488_13341 Mask@@0 null pm_f) (IsPredicateField_2488_13368 pm_f)) (= (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@2) null (PredicateMaskField_2488 pm_f)) (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| ExhaleHeap) null (PredicateMaskField_2488 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_2488_13368 pm_f) (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| ExhaleHeap) null (PredicateMaskField_2488 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4638) (ExhaleHeap@@0 T@PolymorphicMapType_4638) (Mask@@1 T@PolymorphicMapType_4659) (pm_f@@0 T@Field_2488_13277) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2488_13341 Mask@@1 null pm_f@@0) (IsWandField_2488_15115 pm_f@@0)) (= (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@3) null (WandMaskField_2488 pm_f@@0)) (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| ExhaleHeap@@0) null (WandMaskField_2488 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_2488_15115 pm_f@@0) (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| ExhaleHeap@@0) null (WandMaskField_2488 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4638) (ExhaleHeap@@1 T@PolymorphicMapType_4638) (Mask@@2 T@PolymorphicMapType_4659) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_2488_13277) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4698_4698 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4698_4698 p v_1 p w))
)))
(assert  (not (IsPredicateField_2488_1189 f_7)))
(assert  (not (IsWandField_2488_1189 f_7)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4638) (ExhaleHeap@@2 T@PolymorphicMapType_4638) (Mask@@3 T@PolymorphicMapType_4659) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_4659) (o_2@@4 T@Ref) (f_4@@4 T@Field_2488_13410) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_2488_18661 f_4@@4))) (not (IsWandField_2488_18677 f_4@@4))) (<= (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_4659) (o_2@@5 T@Ref) (f_4@@5 T@Field_2488_13277) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2488_13368 f_4@@5))) (not (IsWandField_2488_15115 f_4@@5))) (<= (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4659) (o_2@@6 T@Ref) (f_4@@6 T@Field_4711_4712) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2488_4712 f_4@@6))) (not (IsWandField_2488_4712 f_4@@6))) (<= (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4659) (o_2@@7 T@Ref) (f_4@@7 T@Field_4698_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2488_53 f_4@@7))) (not (IsWandField_2488_53 f_4@@7))) (<= (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4659) (o_2@@8 T@Ref) (f_4@@8 T@Field_8025_1189) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2488_1189 f_4@@8))) (not (IsWandField_2488_1189 f_4@@8))) (<= (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4659) (o_2@@9 T@Ref) (f_4@@9 T@Field_2488_13410) ) (! (= (HasDirectPerm_2488_19115 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2488_19115 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4659) (o_2@@10 T@Ref) (f_4@@10 T@Field_2488_13277) ) (! (= (HasDirectPerm_2488_13341 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2488_13341 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4659) (o_2@@11 T@Ref) (f_4@@11 T@Field_4711_4712) ) (! (= (HasDirectPerm_2488_4712 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2488_4712 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4659) (o_2@@12 T@Ref) (f_4@@12 T@Field_4698_53) ) (! (= (HasDirectPerm_2488_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2488_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4659) (o_2@@13 T@Ref) (f_4@@13 T@Field_8025_1189) ) (! (= (HasDirectPerm_2488_1189 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2488_1189 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4638) (ExhaleHeap@@3 T@PolymorphicMapType_4638) (Mask@@14 T@PolymorphicMapType_4659) (pm_f@@1 T@Field_2488_13277) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_2488_13341 Mask@@14 null pm_f@@1) (IsPredicateField_2488_13368 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_4698_53) ) (!  (=> (select (|PolymorphicMapType_5187_4698_53#PolymorphicMapType_5187| (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@6) null (PredicateMaskField_2488 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@6) o2 f_2) (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4711_4712) ) (!  (=> (select (|PolymorphicMapType_5187_4698_4712#PolymorphicMapType_5187| (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@6) null (PredicateMaskField_2488 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@6) o2@@0 f_2@@0) (select (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_8025_1189) ) (!  (=> (select (|PolymorphicMapType_5187_4698_1189#PolymorphicMapType_5187| (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@6) null (PredicateMaskField_2488 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@6) o2@@1 f_2@@1) (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_2488_13277) ) (!  (=> (select (|PolymorphicMapType_5187_4698_13277#PolymorphicMapType_5187| (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@6) null (PredicateMaskField_2488 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@6) o2@@2 f_2@@2) (select (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_2488_13410) ) (!  (=> (select (|PolymorphicMapType_5187_4698_14588#PolymorphicMapType_5187| (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@6) null (PredicateMaskField_2488 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@6) o2@@3 f_2@@3) (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (IsPredicateField_2488_13368 pm_f@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4638) (ExhaleHeap@@4 T@PolymorphicMapType_4638) (Mask@@15 T@PolymorphicMapType_4659) (pm_f@@2 T@Field_2488_13277) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_2488_13341 Mask@@15 null pm_f@@2) (IsWandField_2488_15115 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_4698_53) ) (!  (=> (select (|PolymorphicMapType_5187_4698_53#PolymorphicMapType_5187| (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@7) null (WandMaskField_2488 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@7) o2@@4 f_2@@4) (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_4711_4712) ) (!  (=> (select (|PolymorphicMapType_5187_4698_4712#PolymorphicMapType_5187| (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@7) null (WandMaskField_2488 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@7) o2@@5 f_2@@5) (select (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_8025_1189) ) (!  (=> (select (|PolymorphicMapType_5187_4698_1189#PolymorphicMapType_5187| (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@7) null (WandMaskField_2488 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@7) o2@@6 f_2@@6) (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_2488_13277) ) (!  (=> (select (|PolymorphicMapType_5187_4698_13277#PolymorphicMapType_5187| (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@7) null (WandMaskField_2488 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@7) o2@@7 f_2@@7) (select (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_2488_13410) ) (!  (=> (select (|PolymorphicMapType_5187_4698_14588#PolymorphicMapType_5187| (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@7) null (WandMaskField_2488 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@7) o2@@8 f_2@@8) (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (IsWandField_2488_15115 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4638) (ExhaleHeap@@5 T@PolymorphicMapType_4638) (Mask@@16 T@PolymorphicMapType_4659) (o_1@@0 T@Ref) (f_2@@9 T@Field_2488_13410) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_2488_19115 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@8) o_1@@0 f_2@@9) (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4638) (ExhaleHeap@@6 T@PolymorphicMapType_4638) (Mask@@17 T@PolymorphicMapType_4659) (o_1@@1 T@Ref) (f_2@@10 T@Field_2488_13277) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_2488_13341 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@9) o_1@@1 f_2@@10) (select (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4638) (ExhaleHeap@@7 T@PolymorphicMapType_4638) (Mask@@18 T@PolymorphicMapType_4659) (o_1@@2 T@Ref) (f_2@@11 T@Field_4711_4712) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_2488_4712 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@10) o_1@@2 f_2@@11) (select (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4638) (ExhaleHeap@@8 T@PolymorphicMapType_4638) (Mask@@19 T@PolymorphicMapType_4659) (o_1@@3 T@Ref) (f_2@@12 T@Field_4698_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_2488_53 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@11) o_1@@3 f_2@@12) (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4638) (ExhaleHeap@@9 T@PolymorphicMapType_4638) (Mask@@20 T@PolymorphicMapType_4659) (o_1@@4 T@Ref) (f_2@@13 T@Field_8025_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_2488_1189 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@12) o_1@@4 f_2@@13) (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2488_13410) ) (! (= (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2488_13277) ) (! (= (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_4711_4712) ) (! (= (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4698_53) ) (! (= (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8025_1189) ) (! (= (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4638) (x@@1 T@Ref) (y@@1 T@Ref) ) (!  (and (= (fplusone Heap@@13 x@@1 y@@1) (|fplusone'| Heap@@13 x@@1 y@@1)) (dummyFunction_1423 (|fplusone#triggerStateless| x@@1 y@@1)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (fplusone Heap@@13 x@@1 y@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4638) (x@@2 T@Ref) (y@@2 T@Ref) ) (!  (and (= (fplusone2 Heap@@14 x@@2 y@@2) (|fplusone2'| Heap@@14 x@@2 y@@2)) (dummyFunction_1423 (|fplusone2#triggerStateless| x@@2 y@@2)))
 :qid |stdinbpl.274:15|
 :skolemid |26|
 :pattern ( (fplusone2 Heap@@14 x@@2 y@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4659) (SummandMask1 T@PolymorphicMapType_4659) (SummandMask2 T@PolymorphicMapType_4659) (o_2@@19 T@Ref) (f_4@@19 T@Field_2488_13410) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4659) (SummandMask1@@0 T@PolymorphicMapType_4659) (SummandMask2@@0 T@PolymorphicMapType_4659) (o_2@@20 T@Ref) (f_4@@20 T@Field_2488_13277) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4659) (SummandMask1@@1 T@PolymorphicMapType_4659) (SummandMask2@@1 T@PolymorphicMapType_4659) (o_2@@21 T@Ref) (f_4@@21 T@Field_4711_4712) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4659) (SummandMask1@@2 T@PolymorphicMapType_4659) (SummandMask2@@2 T@PolymorphicMapType_4659) (o_2@@22 T@Ref) (f_4@@22 T@Field_4698_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4659) (SummandMask1@@3 T@PolymorphicMapType_4659) (SummandMask2@@3 T@PolymorphicMapType_4659) (o_2@@23 T@Ref) (f_4@@23 T@Field_8025_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4638) (Mask@@21 T@PolymorphicMapType_4659) (x@@3 T@Ref) (y@@3 T@Ref) ) (!  (=> (state Heap@@15 Mask@@21) (= (|fplusone'| Heap@@15 x@@3 y@@3) (|fplusone#frame| (FrameFragment_1189 (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@15) x@@3 f_7)) x@@3 y@@3)))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (state Heap@@15 Mask@@21) (|fplusone'| Heap@@15 x@@3 y@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4638) (Mask@@22 T@PolymorphicMapType_4659) (x@@4 T@Ref) (y@@4 T@Ref) ) (!  (=> (state Heap@@16 Mask@@22) (= (|fplusone2'| Heap@@16 x@@4 y@@4) (|fplusone2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@16) x@@4 f_7)) x@@4 y@@4)))
 :qid |stdinbpl.291:15|
 :skolemid |29|
 :pattern ( (state Heap@@16 Mask@@22) (|fplusone2'| Heap@@16 x@@4 y@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4638) (o T@Ref) (f_3 T@Field_2488_13277) (v T@FrameType) ) (! (succHeap Heap@@17 (PolymorphicMapType_4638 (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@17) (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@17) (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@17) (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@17) (store (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@17) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4638 (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@17) (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@17) (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@17) (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@17) (store (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@17) o f_3 v)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4638) (o@@0 T@Ref) (f_3@@0 T@Field_2488_13410) (v@@0 T@PolymorphicMapType_5187) ) (! (succHeap Heap@@18 (PolymorphicMapType_4638 (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@18) (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@18) (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@18) (store (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@18) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4638 (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@18) (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@18) (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@18) (store (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@18) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4638) (o@@1 T@Ref) (f_3@@1 T@Field_8025_1189) (v@@1 Int) ) (! (succHeap Heap@@19 (PolymorphicMapType_4638 (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@19) (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@19) (store (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@19) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@19) (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4638 (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@19) (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@19) (store (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@19) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@19) (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4638) (o@@2 T@Ref) (f_3@@2 T@Field_4711_4712) (v@@2 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_4638 (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@20) (store (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@20) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@20) (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@20) (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4638 (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@20) (store (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@20) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@20) (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@20) (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4638) (o@@3 T@Ref) (f_3@@3 T@Field_4698_53) (v@@3 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_4638 (store (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@21) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@21) (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@21) (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@21) (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4638 (store (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@21) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@21) (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@21) (|PolymorphicMapType_4638_2488_13454#PolymorphicMapType_4638| Heap@@21) (|PolymorphicMapType_4638_4698_13277#PolymorphicMapType_4638| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4638) (Mask@@23 T@PolymorphicMapType_4659) (x@@5 T@Ref) (y@@5 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@23) (< AssumeFunctionsAbove 0)) (= (fplusone2 Heap@@22 x@@5 y@@5) (+ (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@22) x@@5 f_7) 1)))
 :qid |stdinbpl.284:15|
 :skolemid |28|
 :pattern ( (state Heap@@22 Mask@@23) (fplusone2 Heap@@22 x@@5 y@@5))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4638) (Mask@@24 T@PolymorphicMapType_4659) (x@@6 T@Ref) (y@@6 T@Ref) ) (!  (=> (and (state Heap@@23 Mask@@24) (< AssumeFunctionsAbove 1)) (= (fplusone Heap@@23 x@@6 y@@6) (+ (select (|PolymorphicMapType_4638_2488_1189#PolymorphicMapType_4638| Heap@@23) x@@6 f_7) 1)))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@23 Mask@@24) (fplusone Heap@@23 x@@6 y@@6))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_4711_4712) (Heap@@24 T@PolymorphicMapType_4638) ) (!  (=> (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@24) o@@4 $allocated) (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@24) (select (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@24) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4638_2363_2364#PolymorphicMapType_4638| Heap@@24) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_2488_13277) (v_1@@0 T@FrameType) (q T@Field_2488_13277) (w@@0 T@FrameType) (r T@Field_2488_13277) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4698_4698 p@@1 v_1@@0 q w@@0) (InsidePredicate_4698_4698 q w@@0 r u)) (InsidePredicate_4698_4698 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4698_4698 p@@1 v_1@@0 q w@@0) (InsidePredicate_4698_4698 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@25 () T@PolymorphicMapType_4638)
(declare-fun x@@7 () T@Ref)
(declare-fun y@@7 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_4659)
(set-info :boogie-vc-id |fplusone2#definedness|)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (state Heap@@25 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@25) x@@7 $allocated)) (and (select (|PolymorphicMapType_4638_2360_53#PolymorphicMapType_4638| Heap@@25) y@@7 $allocated) (= AssumeFunctionsAbove 0))) (and (and (not (= x@@7 null)) (= Mask@0 (PolymorphicMapType_4659 (store (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| ZeroMask) x@@7 f_7 (+ (select (|PolymorphicMapType_4659_2488_1189#PolymorphicMapType_4659| ZeroMask) x@@7 f_7) FullPerm)) (|PolymorphicMapType_4659_2488_53#PolymorphicMapType_4659| ZeroMask) (|PolymorphicMapType_4659_2488_4712#PolymorphicMapType_4659| ZeroMask) (|PolymorphicMapType_4659_2488_13277#PolymorphicMapType_4659| ZeroMask) (|PolymorphicMapType_4659_2488_17532#PolymorphicMapType_4659| ZeroMask)))) (and (state Heap@@25 Mask@0) (state Heap@@25 Mask@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= x@@7 y@@7))) (=> (not (= x@@7 y@@7)) (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_2488_1189 Mask@0 x@@7 f_7))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid