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
(declare-sort T@Field_3912_53 0)
(declare-sort T@Field_3925_3926 0)
(declare-sort T@Field_7239_1189 0)
(declare-sort T@Field_2051_11249 0)
(declare-sort T@Field_2051_11116 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3873 0)) (((PolymorphicMapType_3873 (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| (Array T@Ref T@Field_7239_1189 Real)) (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| (Array T@Ref T@Field_3912_53 Real)) (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| (Array T@Ref T@Field_3925_3926 Real)) (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| (Array T@Ref T@Field_2051_11116 Real)) (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| (Array T@Ref T@Field_2051_11249 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4401 0)) (((PolymorphicMapType_4401 (|PolymorphicMapType_4401_3912_53#PolymorphicMapType_4401| (Array T@Ref T@Field_3912_53 Bool)) (|PolymorphicMapType_4401_3912_3926#PolymorphicMapType_4401| (Array T@Ref T@Field_3925_3926 Bool)) (|PolymorphicMapType_4401_3912_1189#PolymorphicMapType_4401| (Array T@Ref T@Field_7239_1189 Bool)) (|PolymorphicMapType_4401_3912_11116#PolymorphicMapType_4401| (Array T@Ref T@Field_2051_11116 Bool)) (|PolymorphicMapType_4401_3912_12427#PolymorphicMapType_4401| (Array T@Ref T@Field_2051_11249 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3852 0)) (((PolymorphicMapType_3852 (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| (Array T@Ref T@Field_3912_53 Bool)) (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| (Array T@Ref T@Field_3925_3926 T@Ref)) (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| (Array T@Ref T@Field_7239_1189 Int)) (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| (Array T@Ref T@Field_2051_11249 T@PolymorphicMapType_4401)) (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| (Array T@Ref T@Field_2051_11116 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3912_53)
(declare-fun val () T@Field_7239_1189)
(declare-fun succHeap (T@PolymorphicMapType_3852 T@PolymorphicMapType_3852) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3852 T@PolymorphicMapType_3852) Bool)
(declare-fun state (T@PolymorphicMapType_3852 T@PolymorphicMapType_3873) Bool)
(declare-fun foo_2 (T@PolymorphicMapType_3852 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_3873) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4401)
(declare-fun |foo'| (T@PolymorphicMapType_3852 T@Ref) Int)
(declare-fun dummyFunction_1378 (Int) Bool)
(declare-fun |foo#triggerStateless| (T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3852 T@PolymorphicMapType_3852 T@PolymorphicMapType_3873) Bool)
(declare-fun IsPredicateField_2051_11207 (T@Field_2051_11116) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2051 (T@Field_2051_11116) T@Field_2051_11249)
(declare-fun HasDirectPerm_2051_11180 (T@PolymorphicMapType_3873 T@Ref T@Field_2051_11116) Bool)
(declare-fun IsWandField_2051_12954 (T@Field_2051_11116) Bool)
(declare-fun WandMaskField_2051 (T@Field_2051_11116) T@Field_2051_11249)
(declare-fun dummyHeap () T@PolymorphicMapType_3852)
(declare-fun ZeroMask () T@PolymorphicMapType_3873)
(declare-fun InsidePredicate_3912_3912 (T@Field_2051_11116 T@FrameType T@Field_2051_11116 T@FrameType) Bool)
(declare-fun IsPredicateField_2051_1189 (T@Field_7239_1189) Bool)
(declare-fun IsWandField_2051_1189 (T@Field_7239_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2051_16500 (T@Field_2051_11249) Bool)
(declare-fun IsWandField_2051_16516 (T@Field_2051_11249) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2051_3926 (T@Field_3925_3926) Bool)
(declare-fun IsWandField_2051_3926 (T@Field_3925_3926) Bool)
(declare-fun IsPredicateField_2051_53 (T@Field_3912_53) Bool)
(declare-fun IsWandField_2051_53 (T@Field_3912_53) Bool)
(declare-fun HasDirectPerm_2051_16954 (T@PolymorphicMapType_3873 T@Ref T@Field_2051_11249) Bool)
(declare-fun HasDirectPerm_2051_3926 (T@PolymorphicMapType_3873 T@Ref T@Field_3925_3926) Bool)
(declare-fun HasDirectPerm_2051_53 (T@PolymorphicMapType_3873 T@Ref T@Field_3912_53) Bool)
(declare-fun HasDirectPerm_2051_1189 (T@PolymorphicMapType_3873 T@Ref T@Field_7239_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3873 T@PolymorphicMapType_3873 T@PolymorphicMapType_3873) Bool)
(declare-fun |foo#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(assert (forall ((Heap0 T@PolymorphicMapType_3852) (Heap1 T@PolymorphicMapType_3852) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3852) (Mask T@PolymorphicMapType_3873) (x T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (foo_2 Heap x) (select (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap) x val)))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (foo_2 Heap x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3852) (Mask@@0 T@PolymorphicMapType_3873) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3852) (Heap1@@0 T@PolymorphicMapType_3852) (Heap2 T@PolymorphicMapType_3852) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2051_11249) ) (!  (not (select (|PolymorphicMapType_4401_3912_12427#PolymorphicMapType_4401| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4401_3912_12427#PolymorphicMapType_4401| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2051_11116) ) (!  (not (select (|PolymorphicMapType_4401_3912_11116#PolymorphicMapType_4401| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4401_3912_11116#PolymorphicMapType_4401| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7239_1189) ) (!  (not (select (|PolymorphicMapType_4401_3912_1189#PolymorphicMapType_4401| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4401_3912_1189#PolymorphicMapType_4401| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3925_3926) ) (!  (not (select (|PolymorphicMapType_4401_3912_3926#PolymorphicMapType_4401| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4401_3912_3926#PolymorphicMapType_4401| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3912_53) ) (!  (not (select (|PolymorphicMapType_4401_3912_53#PolymorphicMapType_4401| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4401_3912_53#PolymorphicMapType_4401| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3852) (x@@0 T@Ref) ) (! (dummyFunction_1378 (|foo#triggerStateless| x@@0))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|foo'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3852) (x@@1 T@Ref) ) (!  (and (= (foo_2 Heap@@2 x@@1) (|foo'| Heap@@2 x@@1)) (dummyFunction_1378 (|foo#triggerStateless| x@@1)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (foo_2 Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3852) (ExhaleHeap T@PolymorphicMapType_3852) (Mask@@1 T@PolymorphicMapType_3873) (pm_f T@Field_2051_11116) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_2051_11180 Mask@@1 null pm_f) (IsPredicateField_2051_11207 pm_f)) (= (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@3) null (PredicateMaskField_2051 pm_f)) (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| ExhaleHeap) null (PredicateMaskField_2051 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_2051_11207 pm_f) (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| ExhaleHeap) null (PredicateMaskField_2051 pm_f)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3852) (ExhaleHeap@@0 T@PolymorphicMapType_3852) (Mask@@2 T@PolymorphicMapType_3873) (pm_f@@0 T@Field_2051_11116) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_2051_11180 Mask@@2 null pm_f@@0) (IsWandField_2051_12954 pm_f@@0)) (= (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@4) null (WandMaskField_2051 pm_f@@0)) (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| ExhaleHeap@@0) null (WandMaskField_2051 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsWandField_2051_12954 pm_f@@0) (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| ExhaleHeap@@0) null (WandMaskField_2051 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3852) (ExhaleHeap@@1 T@PolymorphicMapType_3852) (Mask@@3 T@PolymorphicMapType_3873) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@5) o_1 $allocated) (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_2051_11116) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3912_3912 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3912_3912 p v_1 p w))
)))
(assert  (not (IsPredicateField_2051_1189 val)))
(assert  (not (IsWandField_2051_1189 val)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3852) (ExhaleHeap@@2 T@PolymorphicMapType_3852) (Mask@@4 T@PolymorphicMapType_3873) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_3873) (o_2@@4 T@Ref) (f_4@@4 T@Field_2051_11249) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2051_16500 f_4@@4))) (not (IsWandField_2051_16516 f_4@@4))) (<= (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3873) (o_2@@5 T@Ref) (f_4@@5 T@Field_2051_11116) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2051_11207 f_4@@5))) (not (IsWandField_2051_12954 f_4@@5))) (<= (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3873) (o_2@@6 T@Ref) (f_4@@6 T@Field_3925_3926) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2051_3926 f_4@@6))) (not (IsWandField_2051_3926 f_4@@6))) (<= (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3873) (o_2@@7 T@Ref) (f_4@@7 T@Field_3912_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2051_53 f_4@@7))) (not (IsWandField_2051_53 f_4@@7))) (<= (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3873) (o_2@@8 T@Ref) (f_4@@8 T@Field_7239_1189) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2051_1189 f_4@@8))) (not (IsWandField_2051_1189 f_4@@8))) (<= (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3873) (o_2@@9 T@Ref) (f_4@@9 T@Field_2051_11249) ) (! (= (HasDirectPerm_2051_16954 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2051_16954 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3873) (o_2@@10 T@Ref) (f_4@@10 T@Field_2051_11116) ) (! (= (HasDirectPerm_2051_11180 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2051_11180 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3873) (o_2@@11 T@Ref) (f_4@@11 T@Field_3925_3926) ) (! (= (HasDirectPerm_2051_3926 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2051_3926 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3873) (o_2@@12 T@Ref) (f_4@@12 T@Field_3912_53) ) (! (= (HasDirectPerm_2051_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2051_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3873) (o_2@@13 T@Ref) (f_4@@13 T@Field_7239_1189) ) (! (= (HasDirectPerm_2051_1189 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2051_1189 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3852) (ExhaleHeap@@3 T@PolymorphicMapType_3852) (Mask@@15 T@PolymorphicMapType_3873) (pm_f@@1 T@Field_2051_11116) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_2051_11180 Mask@@15 null pm_f@@1) (IsPredicateField_2051_11207 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3912_53) ) (!  (=> (select (|PolymorphicMapType_4401_3912_53#PolymorphicMapType_4401| (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@7) null (PredicateMaskField_2051 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@7) o2 f_2) (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3925_3926) ) (!  (=> (select (|PolymorphicMapType_4401_3912_3926#PolymorphicMapType_4401| (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@7) null (PredicateMaskField_2051 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@7) o2@@0 f_2@@0) (select (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_7239_1189) ) (!  (=> (select (|PolymorphicMapType_4401_3912_1189#PolymorphicMapType_4401| (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@7) null (PredicateMaskField_2051 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@7) o2@@1 f_2@@1) (select (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_2051_11116) ) (!  (=> (select (|PolymorphicMapType_4401_3912_11116#PolymorphicMapType_4401| (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@7) null (PredicateMaskField_2051 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@7) o2@@2 f_2@@2) (select (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_2051_11249) ) (!  (=> (select (|PolymorphicMapType_4401_3912_12427#PolymorphicMapType_4401| (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@7) null (PredicateMaskField_2051 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@7) o2@@3 f_2@@3) (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (IsPredicateField_2051_11207 pm_f@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3852) (ExhaleHeap@@4 T@PolymorphicMapType_3852) (Mask@@16 T@PolymorphicMapType_3873) (pm_f@@2 T@Field_2051_11116) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_2051_11180 Mask@@16 null pm_f@@2) (IsWandField_2051_12954 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3912_53) ) (!  (=> (select (|PolymorphicMapType_4401_3912_53#PolymorphicMapType_4401| (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@8) null (WandMaskField_2051 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@8) o2@@4 f_2@@4) (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3925_3926) ) (!  (=> (select (|PolymorphicMapType_4401_3912_3926#PolymorphicMapType_4401| (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@8) null (WandMaskField_2051 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@8) o2@@5 f_2@@5) (select (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_7239_1189) ) (!  (=> (select (|PolymorphicMapType_4401_3912_1189#PolymorphicMapType_4401| (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@8) null (WandMaskField_2051 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@8) o2@@6 f_2@@6) (select (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_2051_11116) ) (!  (=> (select (|PolymorphicMapType_4401_3912_11116#PolymorphicMapType_4401| (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@8) null (WandMaskField_2051 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@8) o2@@7 f_2@@7) (select (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_2051_11249) ) (!  (=> (select (|PolymorphicMapType_4401_3912_12427#PolymorphicMapType_4401| (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@8) null (WandMaskField_2051 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@8) o2@@8 f_2@@8) (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (IsWandField_2051_12954 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3852) (ExhaleHeap@@5 T@PolymorphicMapType_3852) (Mask@@17 T@PolymorphicMapType_3873) (o_1@@0 T@Ref) (f_2@@9 T@Field_2051_11249) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_2051_16954 Mask@@17 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@9) o_1@@0 f_2@@9) (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3852) (ExhaleHeap@@6 T@PolymorphicMapType_3852) (Mask@@18 T@PolymorphicMapType_3873) (o_1@@1 T@Ref) (f_2@@10 T@Field_2051_11116) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_2051_11180 Mask@@18 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@10) o_1@@1 f_2@@10) (select (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3852) (ExhaleHeap@@7 T@PolymorphicMapType_3852) (Mask@@19 T@PolymorphicMapType_3873) (o_1@@2 T@Ref) (f_2@@11 T@Field_3925_3926) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_2051_3926 Mask@@19 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@11) o_1@@2 f_2@@11) (select (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3852) (ExhaleHeap@@8 T@PolymorphicMapType_3852) (Mask@@20 T@PolymorphicMapType_3873) (o_1@@3 T@Ref) (f_2@@12 T@Field_3912_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_2051_53 Mask@@20 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@12) o_1@@3 f_2@@12) (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3852) (ExhaleHeap@@9 T@PolymorphicMapType_3852) (Mask@@21 T@PolymorphicMapType_3873) (o_1@@4 T@Ref) (f_2@@13 T@Field_7239_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_2051_1189 Mask@@21 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@13) o_1@@4 f_2@@13) (select (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2051_11249) ) (! (= (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2051_11116) ) (! (= (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_3925_3926) ) (! (= (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_3912_53) ) (! (= (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_7239_1189) ) (! (= (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3873) (SummandMask1 T@PolymorphicMapType_3873) (SummandMask2 T@PolymorphicMapType_3873) (o_2@@19 T@Ref) (f_4@@19 T@Field_2051_11249) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3873) (SummandMask1@@0 T@PolymorphicMapType_3873) (SummandMask2@@0 T@PolymorphicMapType_3873) (o_2@@20 T@Ref) (f_4@@20 T@Field_2051_11116) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3873) (SummandMask1@@1 T@PolymorphicMapType_3873) (SummandMask2@@1 T@PolymorphicMapType_3873) (o_2@@21 T@Ref) (f_4@@21 T@Field_3925_3926) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3873) (SummandMask1@@2 T@PolymorphicMapType_3873) (SummandMask2@@2 T@PolymorphicMapType_3873) (o_2@@22 T@Ref) (f_4@@22 T@Field_3912_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3873) (SummandMask1@@3 T@PolymorphicMapType_3873) (SummandMask2@@3 T@PolymorphicMapType_3873) (o_2@@23 T@Ref) (f_4@@23 T@Field_7239_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3852) (Mask@@22 T@PolymorphicMapType_3873) (x@@2 T@Ref) ) (!  (=> (state Heap@@14 Mask@@22) (= (|foo'| Heap@@14 x@@2) (|foo#frame| (FrameFragment_1189 (select (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@14) x@@2 val)) x@@2)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@14 Mask@@22) (|foo'| Heap@@14 x@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3852) (o T@Ref) (f_3 T@Field_2051_11116) (v T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_3852 (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@15) (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@15) (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@15) (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@15) (store (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@15) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3852 (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@15) (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@15) (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@15) (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@15) (store (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@15) o f_3 v)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3852) (o@@0 T@Ref) (f_3@@0 T@Field_2051_11249) (v@@0 T@PolymorphicMapType_4401) ) (! (succHeap Heap@@16 (PolymorphicMapType_3852 (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@16) (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@16) (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@16) (store (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@16) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3852 (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@16) (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@16) (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@16) (store (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@16) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3852) (o@@1 T@Ref) (f_3@@1 T@Field_7239_1189) (v@@1 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_3852 (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@17) (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@17) (store (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@17) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@17) (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3852 (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@17) (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@17) (store (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@17) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@17) (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3852) (o@@2 T@Ref) (f_3@@2 T@Field_3925_3926) (v@@2 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_3852 (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@18) (store (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@18) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@18) (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@18) (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3852 (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@18) (store (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@18) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@18) (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@18) (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3852) (o@@3 T@Ref) (f_3@@3 T@Field_3912_53) (v@@3 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_3852 (store (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@19) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@19) (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@19) (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@19) (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3852 (store (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@19) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@19) (|PolymorphicMapType_3852_2051_1189#PolymorphicMapType_3852| Heap@@19) (|PolymorphicMapType_3852_2051_11293#PolymorphicMapType_3852| Heap@@19) (|PolymorphicMapType_3852_3912_11116#PolymorphicMapType_3852| Heap@@19)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_3925_3926) (Heap@@20 T@PolymorphicMapType_3852) ) (!  (=> (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@20) o@@4 $allocated) (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@20) (select (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@20) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3852_1926_1927#PolymorphicMapType_3852| Heap@@20) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_2051_11116) (v_1@@0 T@FrameType) (q T@Field_2051_11116) (w@@0 T@FrameType) (r T@Field_2051_11116) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3912_3912 p@@1 v_1@@0 q w@@0) (InsidePredicate_3912_3912 q w@@0 r u)) (InsidePredicate_3912_3912 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3912_3912 p@@1 v_1@@0 q w@@0) (InsidePredicate_3912_3912 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@21 () T@PolymorphicMapType_3852)
(declare-fun x@@3 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_3873)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@21 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_3852_1923_53#PolymorphicMapType_3852| Heap@@21) x@@3 $allocated)) (and (= AssumeFunctionsAbove 0) (not (= x@@3 null)))) (and (and (= Mask@0 (PolymorphicMapType_3873 (store (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| ZeroMask) x@@3 val (+ (select (|PolymorphicMapType_3873_2051_1189#PolymorphicMapType_3873| ZeroMask) x@@3 val) FullPerm)) (|PolymorphicMapType_3873_2051_53#PolymorphicMapType_3873| ZeroMask) (|PolymorphicMapType_3873_2051_3926#PolymorphicMapType_3873| ZeroMask) (|PolymorphicMapType_3873_2051_11116#PolymorphicMapType_3873| ZeroMask) (|PolymorphicMapType_3873_2051_15371#PolymorphicMapType_3873| ZeroMask))) (state Heap@@21 Mask@0)) (and (state Heap@@21 Mask@0) (= (ControlFlow 0 2) (- 0 1))))) (HasDirectPerm_2051_1189 Mask@0 x@@3 val)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
