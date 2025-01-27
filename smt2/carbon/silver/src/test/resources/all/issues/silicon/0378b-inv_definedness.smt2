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
(declare-sort T@Field_4170_53 0)
(declare-sort T@Field_4183_4184 0)
(declare-sort T@Field_7564_1280 0)
(declare-sort T@Field_4170_11255 0)
(declare-sort T@Field_4170_11122 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4131 0)) (((PolymorphicMapType_4131 (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| (Array T@Ref T@Field_7564_1280 Real)) (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| (Array T@Ref T@Field_4170_53 Real)) (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| (Array T@Ref T@Field_4183_4184 Real)) (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| (Array T@Ref T@Field_4170_11122 Real)) (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| (Array T@Ref T@Field_4170_11255 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4659 0)) (((PolymorphicMapType_4659 (|PolymorphicMapType_4659_4170_53#PolymorphicMapType_4659| (Array T@Ref T@Field_4170_53 Bool)) (|PolymorphicMapType_4659_4170_4184#PolymorphicMapType_4659| (Array T@Ref T@Field_4183_4184 Bool)) (|PolymorphicMapType_4659_4170_1280#PolymorphicMapType_4659| (Array T@Ref T@Field_7564_1280 Bool)) (|PolymorphicMapType_4659_4170_11122#PolymorphicMapType_4659| (Array T@Ref T@Field_4170_11122 Bool)) (|PolymorphicMapType_4659_4170_12433#PolymorphicMapType_4659| (Array T@Ref T@Field_4170_11255 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4110 0)) (((PolymorphicMapType_4110 (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| (Array T@Ref T@Field_4170_53 Bool)) (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| (Array T@Ref T@Field_4183_4184 T@Ref)) (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| (Array T@Ref T@Field_7564_1280 Int)) (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| (Array T@Ref T@Field_4170_11255 T@PolymorphicMapType_4659)) (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| (Array T@Ref T@Field_4170_11122 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4170_53)
(declare-fun val () T@Field_7564_1280)
(declare-fun succHeap (T@PolymorphicMapType_4110 T@PolymorphicMapType_4110) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4110 T@PolymorphicMapType_4110) Bool)
(declare-fun state (T@PolymorphicMapType_4110 T@PolymorphicMapType_4131) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4131) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4659)
(declare-fun |inv'| (T@PolymorphicMapType_4110 Int Int) Bool)
(declare-fun dummyFunction_1662 (Bool) Bool)
(declare-fun |inv#triggerStateless| (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4110 T@PolymorphicMapType_4110 T@PolymorphicMapType_4131) Bool)
(declare-fun IsPredicateField_4170_11213 (T@Field_4170_11122) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4170 (T@Field_4170_11122) T@Field_4170_11255)
(declare-fun HasDirectPerm_4170_11186 (T@PolymorphicMapType_4131 T@Ref T@Field_4170_11122) Bool)
(declare-fun IsWandField_4170_12960 (T@Field_4170_11122) Bool)
(declare-fun WandMaskField_4170 (T@Field_4170_11122) T@Field_4170_11255)
(declare-fun foo_2 (Int) T@Ref)
(declare-fun dummyHeap () T@PolymorphicMapType_4110)
(declare-fun ZeroMask () T@PolymorphicMapType_4131)
(declare-fun InsidePredicate_4170_4170 (T@Field_4170_11122 T@FrameType T@Field_4170_11122 T@FrameType) Bool)
(declare-fun |inv#condqp1| (T@PolymorphicMapType_4110 Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun |sk_inv#condqp1| (Int Int) Int)
(declare-fun IsPredicateField_2518_1280 (T@Field_7564_1280) Bool)
(declare-fun IsWandField_2518_1280 (T@Field_7564_1280) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2518_16506 (T@Field_4170_11255) Bool)
(declare-fun IsWandField_2518_16522 (T@Field_4170_11255) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2518_4184 (T@Field_4183_4184) Bool)
(declare-fun IsWandField_2518_4184 (T@Field_4183_4184) Bool)
(declare-fun IsPredicateField_2518_53 (T@Field_4170_53) Bool)
(declare-fun IsWandField_2518_53 (T@Field_4170_53) Bool)
(declare-fun HasDirectPerm_4170_16960 (T@PolymorphicMapType_4131 T@Ref T@Field_4170_11255) Bool)
(declare-fun HasDirectPerm_4170_1280 (T@PolymorphicMapType_4131 T@Ref T@Field_7564_1280) Bool)
(declare-fun HasDirectPerm_4170_4184 (T@PolymorphicMapType_4131 T@Ref T@Field_4183_4184) Bool)
(declare-fun HasDirectPerm_4170_53 (T@PolymorphicMapType_4131 T@Ref T@Field_4170_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |inv#frame| (T@FrameType Int Int) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1280 (Int) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4131 T@PolymorphicMapType_4131 T@PolymorphicMapType_4131) Bool)
(declare-fun inv_1 (T@PolymorphicMapType_4110 Int Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(assert (forall ((Heap0 T@PolymorphicMapType_4110) (Heap1 T@PolymorphicMapType_4110) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4110) (Mask T@PolymorphicMapType_4131) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4110) (Heap1@@0 T@PolymorphicMapType_4110) (Heap2 T@PolymorphicMapType_4110) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4170_11255) ) (!  (not (select (|PolymorphicMapType_4659_4170_12433#PolymorphicMapType_4659| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4659_4170_12433#PolymorphicMapType_4659| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4170_11122) ) (!  (not (select (|PolymorphicMapType_4659_4170_11122#PolymorphicMapType_4659| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4659_4170_11122#PolymorphicMapType_4659| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7564_1280) ) (!  (not (select (|PolymorphicMapType_4659_4170_1280#PolymorphicMapType_4659| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4659_4170_1280#PolymorphicMapType_4659| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4183_4184) ) (!  (not (select (|PolymorphicMapType_4659_4170_4184#PolymorphicMapType_4659| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4659_4170_4184#PolymorphicMapType_4659| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4170_53) ) (!  (not (select (|PolymorphicMapType_4659_4170_53#PolymorphicMapType_4659| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4659_4170_53#PolymorphicMapType_4659| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4110) (x Int) (k Int) ) (! (dummyFunction_1662 (|inv#triggerStateless| x k))
 :qid |stdinbpl.232:15|
 :skolemid |24|
 :pattern ( (|inv'| Heap@@0 x k))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4110) (ExhaleHeap T@PolymorphicMapType_4110) (Mask@@0 T@PolymorphicMapType_4131) (pm_f_26 T@Field_4170_11122) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4170_11186 Mask@@0 null pm_f_26) (IsPredicateField_4170_11213 pm_f_26)) (= (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@1) null (PredicateMaskField_4170 pm_f_26)) (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| ExhaleHeap) null (PredicateMaskField_4170 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_4170_11213 pm_f_26) (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| ExhaleHeap) null (PredicateMaskField_4170 pm_f_26)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4110) (ExhaleHeap@@0 T@PolymorphicMapType_4110) (Mask@@1 T@PolymorphicMapType_4131) (pm_f_26@@0 T@Field_4170_11122) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4170_11186 Mask@@1 null pm_f_26@@0) (IsWandField_4170_12960 pm_f_26@@0)) (= (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@2) null (WandMaskField_4170 pm_f_26@@0)) (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| ExhaleHeap@@0) null (WandMaskField_4170 pm_f_26@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_4170_12960 pm_f_26@@0) (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| ExhaleHeap@@0) null (WandMaskField_4170 pm_f_26@@0)))
)))
(assert (forall ((i Int) (j Int) ) (!  (=> (= (foo_2 i) (foo_2 j)) (= i j))
 :qid |stdinbpl.208:15|
 :skolemid |22|
 :pattern ( (foo_2 i) (foo_2 j))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4110) (ExhaleHeap@@1 T@PolymorphicMapType_4110) (Mask@@2 T@PolymorphicMapType_4131) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@3) o_38 $allocated) (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| ExhaleHeap@@1) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| ExhaleHeap@@1) o_38 $allocated))
)))
(assert (forall ((p T@Field_4170_11122) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4170_4170 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4170_4170 p v_1 p w))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_4110) (Heap1Heap T@PolymorphicMapType_4110) (x@@0 Int) (k@@0 Int) ) (!  (=> (and (= (< NoPerm (/ (to_real 1) (to_real 2))) (< NoPerm (/ (to_real 1) (to_real 2)))) (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap2Heap) (foo_2 (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap x@@0 k@@0) (|inv#condqp1| Heap1Heap x@@0 k@@0))) val) (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap1Heap) (foo_2 (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap x@@0 k@@0) (|inv#condqp1| Heap1Heap x@@0 k@@0))) val)))) (= (|inv#condqp1| Heap2Heap x@@0 k@@0) (|inv#condqp1| Heap1Heap x@@0 k@@0)))
 :qid |stdinbpl.255:15|
 :skolemid |27|
 :pattern ( (|inv#condqp1| Heap2Heap x@@0 k@@0) (|inv#condqp1| Heap1Heap x@@0 k@@0) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert  (not (IsPredicateField_2518_1280 val)))
(assert  (not (IsWandField_2518_1280 val)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4110) (ExhaleHeap@@2 T@PolymorphicMapType_4110) (Mask@@3 T@PolymorphicMapType_4131) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@4 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_4131) (o_2@@4 T@Ref) (f_4@@4 T@Field_4170_11255) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_2518_16506 f_4@@4))) (not (IsWandField_2518_16522 f_4@@4))) (<= (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_4131) (o_2@@5 T@Ref) (f_4@@5 T@Field_4170_11122) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4170_11213 f_4@@5))) (not (IsWandField_4170_12960 f_4@@5))) (<= (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4131) (o_2@@6 T@Ref) (f_4@@6 T@Field_4183_4184) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2518_4184 f_4@@6))) (not (IsWandField_2518_4184 f_4@@6))) (<= (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4131) (o_2@@7 T@Ref) (f_4@@7 T@Field_4170_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2518_53 f_4@@7))) (not (IsWandField_2518_53 f_4@@7))) (<= (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4131) (o_2@@8 T@Ref) (f_4@@8 T@Field_7564_1280) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2518_1280 f_4@@8))) (not (IsWandField_2518_1280 f_4@@8))) (<= (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4131) (o_2@@9 T@Ref) (f_4@@9 T@Field_4170_11255) ) (! (= (HasDirectPerm_4170_16960 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4170_16960 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4131) (o_2@@10 T@Ref) (f_4@@10 T@Field_4170_11122) ) (! (= (HasDirectPerm_4170_11186 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4170_11186 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4131) (o_2@@11 T@Ref) (f_4@@11 T@Field_7564_1280) ) (! (= (HasDirectPerm_4170_1280 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4170_1280 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4131) (o_2@@12 T@Ref) (f_4@@12 T@Field_4183_4184) ) (! (= (HasDirectPerm_4170_4184 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4170_4184 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4131) (o_2@@13 T@Ref) (f_4@@13 T@Field_4170_53) ) (! (= (HasDirectPerm_4170_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4170_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4110) (ExhaleHeap@@3 T@PolymorphicMapType_4110) (Mask@@14 T@PolymorphicMapType_4131) (pm_f_26@@1 T@Field_4170_11122) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_4170_11186 Mask@@14 null pm_f_26@@1) (IsPredicateField_4170_11213 pm_f_26@@1)) (and (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_4170_53) ) (!  (=> (select (|PolymorphicMapType_4659_4170_53#PolymorphicMapType_4659| (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@5) null (PredicateMaskField_4170 pm_f_26@@1))) o2_26 f_51) (= (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@5) o2_26 f_51) (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| ExhaleHeap@@3) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| ExhaleHeap@@3) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_4183_4184) ) (!  (=> (select (|PolymorphicMapType_4659_4170_4184#PolymorphicMapType_4659| (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@5) null (PredicateMaskField_4170 pm_f_26@@1))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@5) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| ExhaleHeap@@3) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| ExhaleHeap@@3) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_7564_1280) ) (!  (=> (select (|PolymorphicMapType_4659_4170_1280#PolymorphicMapType_4659| (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@5) null (PredicateMaskField_4170 pm_f_26@@1))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@5) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| ExhaleHeap@@3) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| ExhaleHeap@@3) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_4170_11122) ) (!  (=> (select (|PolymorphicMapType_4659_4170_11122#PolymorphicMapType_4659| (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@5) null (PredicateMaskField_4170 pm_f_26@@1))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@5) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| ExhaleHeap@@3) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| ExhaleHeap@@3) o2_26@@2 f_51@@2))
))) (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_4170_11255) ) (!  (=> (select (|PolymorphicMapType_4659_4170_12433#PolymorphicMapType_4659| (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@5) null (PredicateMaskField_4170 pm_f_26@@1))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@5) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| ExhaleHeap@@3) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| ExhaleHeap@@3) o2_26@@3 f_51@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@14) (IsPredicateField_4170_11213 pm_f_26@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4110) (ExhaleHeap@@4 T@PolymorphicMapType_4110) (Mask@@15 T@PolymorphicMapType_4131) (pm_f_26@@2 T@Field_4170_11122) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_4170_11186 Mask@@15 null pm_f_26@@2) (IsWandField_4170_12960 pm_f_26@@2)) (and (and (and (and (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_4170_53) ) (!  (=> (select (|PolymorphicMapType_4659_4170_53#PolymorphicMapType_4659| (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@6) null (WandMaskField_4170 pm_f_26@@2))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@6) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| ExhaleHeap@@4) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| ExhaleHeap@@4) o2_26@@4 f_51@@4))
)) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_4183_4184) ) (!  (=> (select (|PolymorphicMapType_4659_4170_4184#PolymorphicMapType_4659| (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@6) null (WandMaskField_4170 pm_f_26@@2))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@6) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| ExhaleHeap@@4) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| ExhaleHeap@@4) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_7564_1280) ) (!  (=> (select (|PolymorphicMapType_4659_4170_1280#PolymorphicMapType_4659| (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@6) null (WandMaskField_4170 pm_f_26@@2))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@6) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| ExhaleHeap@@4) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| ExhaleHeap@@4) o2_26@@6 f_51@@6))
))) (forall ((o2_26@@7 T@Ref) (f_51@@7 T@Field_4170_11122) ) (!  (=> (select (|PolymorphicMapType_4659_4170_11122#PolymorphicMapType_4659| (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@6) null (WandMaskField_4170 pm_f_26@@2))) o2_26@@7 f_51@@7) (= (select (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@6) o2_26@@7 f_51@@7) (select (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| ExhaleHeap@@4) o2_26@@7 f_51@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| ExhaleHeap@@4) o2_26@@7 f_51@@7))
))) (forall ((o2_26@@8 T@Ref) (f_51@@8 T@Field_4170_11255) ) (!  (=> (select (|PolymorphicMapType_4659_4170_12433#PolymorphicMapType_4659| (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@6) null (WandMaskField_4170 pm_f_26@@2))) o2_26@@8 f_51@@8) (= (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@6) o2_26@@8 f_51@@8) (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| ExhaleHeap@@4) o2_26@@8 f_51@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| ExhaleHeap@@4) o2_26@@8 f_51@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@15) (IsWandField_4170_12960 pm_f_26@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4110) (ExhaleHeap@@5 T@PolymorphicMapType_4110) (Mask@@16 T@PolymorphicMapType_4131) (o_38@@0 T@Ref) (f_51@@9 T@Field_4170_11255) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_4170_16960 Mask@@16 o_38@@0 f_51@@9) (= (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@7) o_38@@0 f_51@@9) (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| ExhaleHeap@@5) o_38@@0 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| ExhaleHeap@@5) o_38@@0 f_51@@9))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4110) (ExhaleHeap@@6 T@PolymorphicMapType_4110) (Mask@@17 T@PolymorphicMapType_4131) (o_38@@1 T@Ref) (f_51@@10 T@Field_4170_11122) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_4170_11186 Mask@@17 o_38@@1 f_51@@10) (= (select (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@8) o_38@@1 f_51@@10) (select (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| ExhaleHeap@@6) o_38@@1 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| ExhaleHeap@@6) o_38@@1 f_51@@10))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4110) (ExhaleHeap@@7 T@PolymorphicMapType_4110) (Mask@@18 T@PolymorphicMapType_4131) (o_38@@2 T@Ref) (f_51@@11 T@Field_7564_1280) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_4170_1280 Mask@@18 o_38@@2 f_51@@11) (= (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@9) o_38@@2 f_51@@11) (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| ExhaleHeap@@7) o_38@@2 f_51@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| ExhaleHeap@@7) o_38@@2 f_51@@11))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4110) (ExhaleHeap@@8 T@PolymorphicMapType_4110) (Mask@@19 T@PolymorphicMapType_4131) (o_38@@3 T@Ref) (f_51@@12 T@Field_4183_4184) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_4170_4184 Mask@@19 o_38@@3 f_51@@12) (= (select (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@10) o_38@@3 f_51@@12) (select (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| ExhaleHeap@@8) o_38@@3 f_51@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| ExhaleHeap@@8) o_38@@3 f_51@@12))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4110) (ExhaleHeap@@9 T@PolymorphicMapType_4110) (Mask@@20 T@PolymorphicMapType_4131) (o_38@@4 T@Ref) (f_51@@13 T@Field_4170_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_4170_53 Mask@@20 o_38@@4 f_51@@13) (= (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@11) o_38@@4 f_51@@13) (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| ExhaleHeap@@9) o_38@@4 f_51@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| ExhaleHeap@@9) o_38@@4 f_51@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4170_11255) ) (! (= (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4170_11122) ) (! (= (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_4183_4184) ) (! (= (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4170_53) ) (! (= (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_7564_1280) ) (! (= (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4110) (Mask@@21 T@PolymorphicMapType_4131) (x@@1 Int) (k@@1 Int) ) (!  (=> (state Heap@@12 Mask@@21) (= (|inv'| Heap@@12 x@@1 k@@1) (|inv#frame| (CombineFrames (FrameFragment_1280 (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@12) (foo_2 k@@1) val)) (FrameFragment_1280 (|inv#condqp1| Heap@@12 x@@1 k@@1))) x@@1 k@@1)))
 :qid |stdinbpl.245:15|
 :skolemid |26|
 :pattern ( (state Heap@@12 Mask@@21) (|inv'| Heap@@12 x@@1 k@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4131) (SummandMask1 T@PolymorphicMapType_4131) (SummandMask2 T@PolymorphicMapType_4131) (o_2@@19 T@Ref) (f_4@@19 T@Field_4170_11255) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4131) (SummandMask1@@0 T@PolymorphicMapType_4131) (SummandMask2@@0 T@PolymorphicMapType_4131) (o_2@@20 T@Ref) (f_4@@20 T@Field_4170_11122) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4131) (SummandMask1@@1 T@PolymorphicMapType_4131) (SummandMask2@@1 T@PolymorphicMapType_4131) (o_2@@21 T@Ref) (f_4@@21 T@Field_4183_4184) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4131) (SummandMask1@@2 T@PolymorphicMapType_4131) (SummandMask2@@2 T@PolymorphicMapType_4131) (o_2@@22 T@Ref) (f_4@@22 T@Field_4170_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4131) (SummandMask1@@3 T@PolymorphicMapType_4131) (SummandMask2@@3 T@PolymorphicMapType_4131) (o_2@@23 T@Ref) (f_4@@23 T@Field_7564_1280) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4110) (Mask@@22 T@PolymorphicMapType_4131) (x@@2 Int) (k@@2 Int) ) (!  (=> (and (state Heap@@13 Mask@@22) (< AssumeFunctionsAbove 0)) (=> (>= x@@2 0) (= (inv_1 Heap@@13 x@@2 k@@2)  (=> (not (= x@@2 0)) (|inv'| Heap@@13 (- x@@2 1) k@@2)))))
 :qid |stdinbpl.238:15|
 :skolemid |25|
 :pattern ( (state Heap@@13 Mask@@22) (inv_1 Heap@@13 x@@2 k@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4110) (o_56 T@Ref) (f_22 T@Field_4170_11122) (v T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_4110 (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@14) (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@14) (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@14) (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@14) (store (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@14) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4110 (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@14) (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@14) (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@14) (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@14) (store (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@14) o_56 f_22 v)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4110) (o_56@@0 T@Ref) (f_22@@0 T@Field_4170_11255) (v@@0 T@PolymorphicMapType_4659) ) (! (succHeap Heap@@15 (PolymorphicMapType_4110 (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@15) (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@15) (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@15) (store (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@15) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4110 (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@15) (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@15) (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@15) (store (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@15) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4110) (o_56@@1 T@Ref) (f_22@@1 T@Field_7564_1280) (v@@1 Int) ) (! (succHeap Heap@@16 (PolymorphicMapType_4110 (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@16) (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@16) (store (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@16) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@16) (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4110 (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@16) (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@16) (store (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@16) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@16) (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4110) (o_56@@2 T@Ref) (f_22@@2 T@Field_4183_4184) (v@@2 T@Ref) ) (! (succHeap Heap@@17 (PolymorphicMapType_4110 (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@17) (store (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@17) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@17) (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@17) (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4110 (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@17) (store (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@17) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@17) (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@17) (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4110) (o_56@@3 T@Ref) (f_22@@3 T@Field_4170_53) (v@@3 Bool) ) (! (succHeap Heap@@18 (PolymorphicMapType_4110 (store (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@18) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@18) (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@18) (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@18) (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4110 (store (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@18) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@18) (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@18) (|PolymorphicMapType_4110_4170_11299#PolymorphicMapType_4110| Heap@@18) (|PolymorphicMapType_4110_4170_11122#PolymorphicMapType_4110| Heap@@18)))
)))
(assert (forall ((o_56@@4 T@Ref) (f_3 T@Field_4183_4184) (Heap@@19 T@PolymorphicMapType_4110) ) (!  (=> (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@19) o_56@@4 $allocated) (select (|PolymorphicMapType_4110_2381_53#PolymorphicMapType_4110| Heap@@19) (select (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@19) o_56@@4 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4110_2384_2385#PolymorphicMapType_4110| Heap@@19) o_56@@4 f_3))
)))
(assert (forall ((p@@1 T@Field_4170_11122) (v_1@@0 T@FrameType) (q T@Field_4170_11122) (w@@0 T@FrameType) (r T@Field_4170_11122) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4170_4170 p@@1 v_1@@0 q w@@0) (InsidePredicate_4170_4170 q w@@0 r u)) (InsidePredicate_4170_4170 p@@1 v_1@@0 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4170_4170 p@@1 v_1@@0 q w@@0) (InsidePredicate_4170_4170 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4110) (x@@3 Int) (k@@3 Int) ) (!  (and (= (inv_1 Heap@@20 x@@3 k@@3) (|inv'| Heap@@20 x@@3 k@@3)) (dummyFunction_1662 (|inv#triggerStateless| x@@3 k@@3)))
 :qid |stdinbpl.228:15|
 :skolemid |23|
 :pattern ( (inv_1 Heap@@20 x@@3 k@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@4 () Int)
(declare-fun perm@1 () Real)
(declare-fun QPMask@0 () T@PolymorphicMapType_4131)
(declare-fun k@@4 () Int)
(declare-fun dummyFunction_1280 (Int) Bool)
(declare-fun Heap@@21 () T@PolymorphicMapType_4110)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun |inv#trigger_1| (T@FrameType Int Int) Bool)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_4131)
(declare-fun perm@0 () Real)
(set-info :boogie-vc-id |inv#definedness|)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon9_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 10)) (>= (- x@@4 1) 0)) (=> (>= (- x@@4 1) 0) (=> (= perm@1 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 5) (- 0 9)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (and (=> (= (ControlFlow 0 5) (- 0 8)) (=> (< NoPerm perm@1) (< NoPerm (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| QPMask@0) (foo_2 k@@4) val)))) (=> (=> (< NoPerm perm@1) (< NoPerm (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| QPMask@0) (foo_2 k@@4) val))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (forall ((i_5_1 Int) ) (!  (=> (dummyFunction_1280 (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@21) (foo_2 i_5_1) val)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.358:23|
 :skolemid |35|
 :pattern ( (foo_2 i_5_1))
 :pattern ( (foo_2 i_5_1))
))) (=> (forall ((i_5_1@@0 Int) ) (!  (=> (dummyFunction_1280 (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@21) (foo_2 i_5_1@@0) val)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.358:23|
 :skolemid |35|
 :pattern ( (foo_2 i_5_1@@0))
 :pattern ( (foo_2 i_5_1@@0))
)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((i_5_1@@1 Int) (i_5_2 Int) ) (!  (=> (and (and (not (= i_5_1@@1 i_5_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (foo_2 i_5_1@@1) (foo_2 i_5_2))))
 :qid |stdinbpl.365:23|
 :skolemid |36|
 :pattern ( (neverTriggered2 i_5_1@@1) (neverTriggered2 i_5_2))
))) (=> (forall ((i_5_1@@2 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (not (= i_5_1@@2 i_5_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (foo_2 i_5_1@@2) (foo_2 i_5_2@@0))))
 :qid |stdinbpl.365:23|
 :skolemid |36|
 :pattern ( (neverTriggered2 i_5_1@@2) (neverTriggered2 i_5_2@@0))
)) (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((i_5_1@@3 Int) ) (!  (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| QPMask@0) (foo_2 i_5_1@@3) val) NoPerm))
 :qid |stdinbpl.372:23|
 :skolemid |37|
 :pattern ( (foo_2 i_5_1@@3))
 :pattern ( (foo_2 i_5_1@@3))
))))))))))))))))
(let ((anon6_correct true))
(let ((anon9_Else_correct  (=> (and (|inv#trigger_1| (CombineFrames (FrameFragment_1280 (select (|PolymorphicMapType_4110_2518_1280#PolymorphicMapType_4110| Heap@@21) (foo_2 k@@4) val)) (FrameFragment_1280 (|inv#condqp1| Heap@@21 (- x@@4 1) k@@4))) (- x@@4 1) k@@4) (= (ControlFlow 0 11) 2)) anon6_correct)))
(let ((anon8_Then_correct  (=> (not (= x@@4 0)) (and (=> (= (ControlFlow 0 12) 5) anon9_Then_correct) (=> (= (ControlFlow 0 12) 11) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (and (= x@@4 0) (= (ControlFlow 0 3) 2)) anon6_correct)))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 13) (- 0 15)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (not (= i_4_1 i_4_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (foo_2 i_4_1) (foo_2 i_4_2))))
 :qid |stdinbpl.299:15|
 :skolemid |28|
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (not (= i_4_1@@0 i_4_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (foo_2 i_4_1@@0) (foo_2 i_4_2@@0))))
 :qid |stdinbpl.299:15|
 :skolemid |28|
)) (=> (and (forall ((i_4_1@@1 Int) ) (!  (=> (< NoPerm (/ (to_real 1) (to_real 2))) (and (qpRange1 (foo_2 i_4_1@@1)) (= (invRecv1 (foo_2 i_4_1@@1)) i_4_1@@1)))
 :qid |stdinbpl.305:22|
 :skolemid |29|
 :pattern ( (foo_2 i_4_1@@1))
 :pattern ( (foo_2 i_4_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange1 o_9)) (= (foo_2 (invRecv1 o_9)) o_9))
 :qid |stdinbpl.309:22|
 :skolemid |30|
 :pattern ( (invRecv1 o_9))
))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((i_4_1@@2 Int) ) (! (>= (/ (to_real 1) (to_real 2)) NoPerm)
 :qid |stdinbpl.315:15|
 :skolemid |31|
 :pattern ( (foo_2 i_4_1@@2))
 :pattern ( (foo_2 i_4_1@@2))
))) (=> (forall ((i_4_1@@3 Int) ) (! (>= (/ (to_real 1) (to_real 2)) NoPerm)
 :qid |stdinbpl.315:15|
 :skolemid |31|
 :pattern ( (foo_2 i_4_1@@3))
 :pattern ( (foo_2 i_4_1@@3))
)) (=> (and (forall ((i_4_1@@4 Int) ) (!  (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (not (= (foo_2 i_4_1@@4) null)))
 :qid |stdinbpl.321:22|
 :skolemid |32|
 :pattern ( (foo_2 i_4_1@@4))
 :pattern ( (foo_2 i_4_1@@4))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange1 o_9@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (foo_2 (invRecv1 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| QPMask@0) o_9@@0 val) (+ (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| Mask@0) o_9@@0 val) (/ (to_real 1) (to_real 2)))))) (=> (not (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| QPMask@0) o_9@@0 val) (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| Mask@0) o_9@@0 val))))
 :qid |stdinbpl.327:22|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| QPMask@0) o_9@@0 val))
))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_4170_53) ) (!  (=> true (= (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| Mask@0) o_9@@1 f_5) (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.331:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| Mask@0) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_4183_4184) ) (!  (=> true (= (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| Mask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.331:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| Mask@0) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_7564_1280) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| Mask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.331:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| Mask@0) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_4170_11122) ) (!  (=> true (= (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| Mask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.331:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| Mask@0) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_4170_11255) ) (!  (=> true (= (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| Mask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.331:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| Mask@0) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| QPMask@0) o_9@@5 f_5@@3))
))) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 13) 12) anon8_Then_correct) (=> (= (ControlFlow 0 13) 3) anon8_Else_correct)))))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@21 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (= AssumeFunctionsAbove 0) (>= x@@4 0)) (and (state Heap@@21 ZeroMask) (= perm@0 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= (foo_2 k@@4) null))) (= Mask@0 (PolymorphicMapType_4131 (store (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| ZeroMask) (foo_2 k@@4) val (+ (select (|PolymorphicMapType_4131_2518_1280#PolymorphicMapType_4131| ZeroMask) (foo_2 k@@4) val) perm@0)) (|PolymorphicMapType_4131_2518_53#PolymorphicMapType_4131| ZeroMask) (|PolymorphicMapType_4131_2518_4184#PolymorphicMapType_4131| ZeroMask) (|PolymorphicMapType_4131_2518_11122#PolymorphicMapType_4131| ZeroMask) (|PolymorphicMapType_4131_2518_15377#PolymorphicMapType_4131| ZeroMask)))) (and (state Heap@@21 Mask@0) (state Heap@@21 Mask@0))) (and (=> (= (ControlFlow 0 16) 1) anon7_Then_correct) (=> (= (ControlFlow 0 16) 13) anon7_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 16) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
