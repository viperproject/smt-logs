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
(declare-sort T@Field_6749_53 0)
(declare-sort T@Field_6762_6763 0)
(declare-sort T@Field_10076_1189 0)
(declare-sort T@Field_3464_20135 0)
(declare-sort T@Field_3464_20002 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6710 0)) (((PolymorphicMapType_6710 (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| (Array T@Ref T@Field_10076_1189 Real)) (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| (Array T@Ref T@Field_6749_53 Real)) (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| (Array T@Ref T@Field_6762_6763 Real)) (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| (Array T@Ref T@Field_3464_20002 Real)) (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| (Array T@Ref T@Field_3464_20135 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7238 0)) (((PolymorphicMapType_7238 (|PolymorphicMapType_7238_6749_53#PolymorphicMapType_7238| (Array T@Ref T@Field_6749_53 Bool)) (|PolymorphicMapType_7238_6749_6763#PolymorphicMapType_7238| (Array T@Ref T@Field_6762_6763 Bool)) (|PolymorphicMapType_7238_6749_1189#PolymorphicMapType_7238| (Array T@Ref T@Field_10076_1189 Bool)) (|PolymorphicMapType_7238_6749_20002#PolymorphicMapType_7238| (Array T@Ref T@Field_3464_20002 Bool)) (|PolymorphicMapType_7238_6749_21313#PolymorphicMapType_7238| (Array T@Ref T@Field_3464_20135 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6689 0)) (((PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| (Array T@Ref T@Field_6749_53 Bool)) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| (Array T@Ref T@Field_6762_6763 T@Ref)) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| (Array T@Ref T@Field_10076_1189 Int)) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| (Array T@Ref T@Field_3464_20135 T@PolymorphicMapType_7238)) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| (Array T@Ref T@Field_3464_20002 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6749_53)
(declare-fun f_7 () T@Field_10076_1189)
(declare-fun succHeap (T@PolymorphicMapType_6689 T@PolymorphicMapType_6689) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6689 T@PolymorphicMapType_6689) Bool)
(declare-fun state (T@PolymorphicMapType_6689 T@PolymorphicMapType_6710) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6710) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7238)
(declare-fun |fun2'| (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun dummyFunction_1327 (Int) Bool)
(declare-fun |fun2#triggerStateless| (T@Ref) Int)
(declare-fun |fun3'| (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun |fun3#triggerStateless| (T@Ref) Int)
(declare-fun |fun4'| (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun |fun4#triggerStateless| (T@Ref) Int)
(declare-fun fun2 (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun fun3 (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun fun4 (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6689 T@PolymorphicMapType_6689 T@PolymorphicMapType_6710) Bool)
(declare-fun IsPredicateField_3464_20093 (T@Field_3464_20002) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3464 (T@Field_3464_20002) T@Field_3464_20135)
(declare-fun HasDirectPerm_3464_20066 (T@PolymorphicMapType_6710 T@Ref T@Field_3464_20002) Bool)
(declare-fun IsWandField_3464_21840 (T@Field_3464_20002) Bool)
(declare-fun WandMaskField_3464 (T@Field_3464_20002) T@Field_3464_20135)
(declare-fun dummyHeap () T@PolymorphicMapType_6689)
(declare-fun ZeroMask () T@PolymorphicMapType_6710)
(declare-fun InsidePredicate_6749_6749 (T@Field_3464_20002 T@FrameType T@Field_3464_20002 T@FrameType) Bool)
(declare-fun IsPredicateField_3464_1189 (T@Field_10076_1189) Bool)
(declare-fun IsWandField_3464_1189 (T@Field_10076_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3464_25386 (T@Field_3464_20135) Bool)
(declare-fun IsWandField_3464_25402 (T@Field_3464_20135) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3464_6763 (T@Field_6762_6763) Bool)
(declare-fun IsWandField_3464_6763 (T@Field_6762_6763) Bool)
(declare-fun IsPredicateField_3464_53 (T@Field_6749_53) Bool)
(declare-fun IsWandField_3464_53 (T@Field_6749_53) Bool)
(declare-fun HasDirectPerm_3464_25840 (T@PolymorphicMapType_6710 T@Ref T@Field_3464_20135) Bool)
(declare-fun HasDirectPerm_3464_6763 (T@PolymorphicMapType_6710 T@Ref T@Field_6762_6763) Bool)
(declare-fun HasDirectPerm_3464_53 (T@PolymorphicMapType_6710 T@Ref T@Field_6749_53) Bool)
(declare-fun HasDirectPerm_3464_1189 (T@PolymorphicMapType_6710 T@Ref T@Field_10076_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fun (T@PolymorphicMapType_6689) Int)
(declare-fun |fun'| (T@PolymorphicMapType_6689) Int)
(declare-fun |fun#triggerStateless| () Int)
(declare-fun sumMask (T@PolymorphicMapType_6710 T@PolymorphicMapType_6710 T@PolymorphicMapType_6710) Bool)
(declare-fun |fun3#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |fun4#frame| (T@FrameType T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |fun2#frame| (T@FrameType T@Ref) Int)
(declare-fun |fun#frame| (T@FrameType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_6689) (Heap1 T@PolymorphicMapType_6689) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6689) (Mask T@PolymorphicMapType_6710) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6689) (Heap1@@0 T@PolymorphicMapType_6689) (Heap2 T@PolymorphicMapType_6689) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3464_20135) ) (!  (not (select (|PolymorphicMapType_7238_6749_21313#PolymorphicMapType_7238| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7238_6749_21313#PolymorphicMapType_7238| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3464_20002) ) (!  (not (select (|PolymorphicMapType_7238_6749_20002#PolymorphicMapType_7238| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7238_6749_20002#PolymorphicMapType_7238| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10076_1189) ) (!  (not (select (|PolymorphicMapType_7238_6749_1189#PolymorphicMapType_7238| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7238_6749_1189#PolymorphicMapType_7238| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6762_6763) ) (!  (not (select (|PolymorphicMapType_7238_6749_6763#PolymorphicMapType_7238| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7238_6749_6763#PolymorphicMapType_7238| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6749_53) ) (!  (not (select (|PolymorphicMapType_7238_6749_53#PolymorphicMapType_7238| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7238_6749_53#PolymorphicMapType_7238| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6689) (x T@Ref) ) (! (dummyFunction_1327 (|fun2#triggerStateless| x))
 :qid |stdinbpl.266:15|
 :skolemid |27|
 :pattern ( (|fun2'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6689) (x@@0 T@Ref) ) (! (dummyFunction_1327 (|fun3#triggerStateless| x@@0))
 :qid |stdinbpl.349:15|
 :skolemid |31|
 :pattern ( (|fun3'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6689) (x@@1 T@Ref) ) (! (dummyFunction_1327 (|fun4#triggerStateless| x@@1))
 :qid |stdinbpl.439:15|
 :skolemid |35|
 :pattern ( (|fun4'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6689) (x@@2 T@Ref) ) (!  (and (= (fun2 Heap@@3 x@@2) (|fun2'| Heap@@3 x@@2)) (dummyFunction_1327 (|fun2#triggerStateless| x@@2)))
 :qid |stdinbpl.262:15|
 :skolemid |26|
 :pattern ( (fun2 Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6689) (x@@3 T@Ref) ) (!  (and (= (fun3 Heap@@4 x@@3) (|fun3'| Heap@@4 x@@3)) (dummyFunction_1327 (|fun3#triggerStateless| x@@3)))
 :qid |stdinbpl.345:15|
 :skolemid |30|
 :pattern ( (fun3 Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6689) (x@@4 T@Ref) ) (!  (and (= (fun4 Heap@@5 x@@4) (|fun4'| Heap@@5 x@@4)) (dummyFunction_1327 (|fun4#triggerStateless| x@@4)))
 :qid |stdinbpl.435:15|
 :skolemid |34|
 :pattern ( (fun4 Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6689) (ExhaleHeap T@PolymorphicMapType_6689) (Mask@@0 T@PolymorphicMapType_6710) (pm_f T@Field_3464_20002) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3464_20066 Mask@@0 null pm_f) (IsPredicateField_3464_20093 pm_f)) (= (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@6) null (PredicateMaskField_3464 pm_f)) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap) null (PredicateMaskField_3464 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_3464_20093 pm_f) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap) null (PredicateMaskField_3464 pm_f)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6689) (ExhaleHeap@@0 T@PolymorphicMapType_6689) (Mask@@1 T@PolymorphicMapType_6710) (pm_f@@0 T@Field_3464_20002) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3464_20066 Mask@@1 null pm_f@@0) (IsWandField_3464_21840 pm_f@@0)) (= (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@7) null (WandMaskField_3464 pm_f@@0)) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@0) null (WandMaskField_3464 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsWandField_3464_21840 pm_f@@0) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@0) null (WandMaskField_3464 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6689) (ExhaleHeap@@1 T@PolymorphicMapType_6689) (Mask@@2 T@PolymorphicMapType_6710) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@8) o_1 $allocated) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_3464_20002) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6749_6749 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6749_6749 p v_1 p w))
)))
(assert  (not (IsPredicateField_3464_1189 f_7)))
(assert  (not (IsWandField_3464_1189 f_7)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6689) (ExhaleHeap@@2 T@PolymorphicMapType_6689) (Mask@@3 T@PolymorphicMapType_6710) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6710) (o_2@@4 T@Ref) (f_4@@4 T@Field_3464_20135) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3464_25386 f_4@@4))) (not (IsWandField_3464_25402 f_4@@4))) (<= (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6710) (o_2@@5 T@Ref) (f_4@@5 T@Field_3464_20002) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3464_20093 f_4@@5))) (not (IsWandField_3464_21840 f_4@@5))) (<= (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6710) (o_2@@6 T@Ref) (f_4@@6 T@Field_6762_6763) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3464_6763 f_4@@6))) (not (IsWandField_3464_6763 f_4@@6))) (<= (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6710) (o_2@@7 T@Ref) (f_4@@7 T@Field_6749_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3464_53 f_4@@7))) (not (IsWandField_3464_53 f_4@@7))) (<= (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6710) (o_2@@8 T@Ref) (f_4@@8 T@Field_10076_1189) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3464_1189 f_4@@8))) (not (IsWandField_3464_1189 f_4@@8))) (<= (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6710) (o_2@@9 T@Ref) (f_4@@9 T@Field_3464_20135) ) (! (= (HasDirectPerm_3464_25840 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3464_25840 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6710) (o_2@@10 T@Ref) (f_4@@10 T@Field_3464_20002) ) (! (= (HasDirectPerm_3464_20066 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3464_20066 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6710) (o_2@@11 T@Ref) (f_4@@11 T@Field_6762_6763) ) (! (= (HasDirectPerm_3464_6763 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3464_6763 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6710) (o_2@@12 T@Ref) (f_4@@12 T@Field_6749_53) ) (! (= (HasDirectPerm_3464_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3464_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6710) (o_2@@13 T@Ref) (f_4@@13 T@Field_10076_1189) ) (! (= (HasDirectPerm_3464_1189 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3464_1189 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6689) (ExhaleHeap@@3 T@PolymorphicMapType_6689) (Mask@@14 T@PolymorphicMapType_6710) (pm_f@@1 T@Field_3464_20002) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3464_20066 Mask@@14 null pm_f@@1) (IsPredicateField_3464_20093 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6749_53) ) (!  (=> (select (|PolymorphicMapType_7238_6749_53#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) null (PredicateMaskField_3464 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@10) o2 f_2) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6762_6763) ) (!  (=> (select (|PolymorphicMapType_7238_6749_6763#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) null (PredicateMaskField_3464 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@10) o2@@0 f_2@@0) (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_10076_1189) ) (!  (=> (select (|PolymorphicMapType_7238_6749_1189#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) null (PredicateMaskField_3464 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@10) o2@@1 f_2@@1) (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3464_20002) ) (!  (=> (select (|PolymorphicMapType_7238_6749_20002#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) null (PredicateMaskField_3464 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@10) o2@@2 f_2@@2) (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3464_20135) ) (!  (=> (select (|PolymorphicMapType_7238_6749_21313#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) null (PredicateMaskField_3464 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) o2@@3 f_2@@3) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3464_20093 pm_f@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6689) (ExhaleHeap@@4 T@PolymorphicMapType_6689) (Mask@@15 T@PolymorphicMapType_6710) (pm_f@@2 T@Field_3464_20002) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3464_20066 Mask@@15 null pm_f@@2) (IsWandField_3464_21840 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6749_53) ) (!  (=> (select (|PolymorphicMapType_7238_6749_53#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) null (WandMaskField_3464 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@11) o2@@4 f_2@@4) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6762_6763) ) (!  (=> (select (|PolymorphicMapType_7238_6749_6763#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) null (WandMaskField_3464 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@11) o2@@5 f_2@@5) (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_10076_1189) ) (!  (=> (select (|PolymorphicMapType_7238_6749_1189#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) null (WandMaskField_3464 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@11) o2@@6 f_2@@6) (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3464_20002) ) (!  (=> (select (|PolymorphicMapType_7238_6749_20002#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) null (WandMaskField_3464 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@11) o2@@7 f_2@@7) (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3464_20135) ) (!  (=> (select (|PolymorphicMapType_7238_6749_21313#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) null (WandMaskField_3464 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) o2@@8 f_2@@8) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@15) (IsWandField_3464_21840 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6689) (ExhaleHeap@@5 T@PolymorphicMapType_6689) (Mask@@16 T@PolymorphicMapType_6710) (o_1@@0 T@Ref) (f_2@@9 T@Field_3464_20135) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3464_25840 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@12) o_1@@0 f_2@@9) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6689) (ExhaleHeap@@6 T@PolymorphicMapType_6689) (Mask@@17 T@PolymorphicMapType_6710) (o_1@@1 T@Ref) (f_2@@10 T@Field_3464_20002) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3464_20066 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@13) o_1@@1 f_2@@10) (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6689) (ExhaleHeap@@7 T@PolymorphicMapType_6689) (Mask@@18 T@PolymorphicMapType_6710) (o_1@@2 T@Ref) (f_2@@11 T@Field_6762_6763) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3464_6763 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@14) o_1@@2 f_2@@11) (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6689) (ExhaleHeap@@8 T@PolymorphicMapType_6689) (Mask@@19 T@PolymorphicMapType_6710) (o_1@@3 T@Ref) (f_2@@12 T@Field_6749_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3464_53 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@15) o_1@@3 f_2@@12) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6689) (ExhaleHeap@@9 T@PolymorphicMapType_6689) (Mask@@20 T@PolymorphicMapType_6710) (o_1@@4 T@Ref) (f_2@@13 T@Field_10076_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3464_1189 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@16) o_1@@4 f_2@@13) (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6689) ) (!  (and (= (fun Heap@@17) (|fun'| Heap@@17)) (dummyFunction_1327 |fun#triggerStateless|))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (fun Heap@@17))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3464_20135) ) (! (= (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3464_20002) ) (! (= (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6762_6763) ) (! (= (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6749_53) ) (! (= (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10076_1189) ) (! (= (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6710) (SummandMask1 T@PolymorphicMapType_6710) (SummandMask2 T@PolymorphicMapType_6710) (o_2@@19 T@Ref) (f_4@@19 T@Field_3464_20135) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6710) (SummandMask1@@0 T@PolymorphicMapType_6710) (SummandMask2@@0 T@PolymorphicMapType_6710) (o_2@@20 T@Ref) (f_4@@20 T@Field_3464_20002) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6710) (SummandMask1@@1 T@PolymorphicMapType_6710) (SummandMask2@@1 T@PolymorphicMapType_6710) (o_2@@21 T@Ref) (f_4@@21 T@Field_6762_6763) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6710) (SummandMask1@@2 T@PolymorphicMapType_6710) (SummandMask2@@2 T@PolymorphicMapType_6710) (o_2@@22 T@Ref) (f_4@@22 T@Field_6749_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6710) (SummandMask1@@3 T@PolymorphicMapType_6710) (SummandMask2@@3 T@PolymorphicMapType_6710) (o_2@@23 T@Ref) (f_4@@23 T@Field_10076_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6689) (Mask@@21 T@PolymorphicMapType_6710) (x@@5 T@Ref) ) (!  (=> (state Heap@@18 Mask@@21) (= (|fun3'| Heap@@18 x@@5) (|fun3#frame| (FrameFragment_1189 (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@18) x@@5 f_7)) x@@5)))
 :qid |stdinbpl.362:15|
 :skolemid |33|
 :pattern ( (state Heap@@18 Mask@@21) (|fun3'| Heap@@18 x@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6689) (Mask@@22 T@PolymorphicMapType_6710) (x@@6 T@Ref) ) (!  (=> (state Heap@@19 Mask@@22) (= (|fun4'| Heap@@19 x@@6) (|fun4#frame| (FrameFragment_1189 (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@19) x@@6 f_7)) x@@6)))
 :qid |stdinbpl.452:15|
 :skolemid |37|
 :pattern ( (state Heap@@19 Mask@@22) (|fun4'| Heap@@19 x@@6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6689) (Mask@@23 T@PolymorphicMapType_6710) (x@@7 T@Ref) ) (!  (=> (and (state Heap@@20 Mask@@23) (< AssumeFunctionsAbove 1)) (=> (> (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@20) x@@7 f_7) 8) (= (fun4 Heap@@20 x@@7) 0)))
 :qid |stdinbpl.445:15|
 :skolemid |36|
 :pattern ( (state Heap@@20 Mask@@23) (fun4 Heap@@20 x@@7))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6689) (Mask@@24 T@PolymorphicMapType_6710) (x@@8 T@Ref) ) (!  (=> (state Heap@@21 Mask@@24) (= (|fun2'| Heap@@21 x@@8) (|fun2#frame| EmptyFrame x@@8)))
 :qid |stdinbpl.279:15|
 :skolemid |29|
 :pattern ( (state Heap@@21 Mask@@24) (|fun2'| Heap@@21 x@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6689) ) (! (dummyFunction_1327 |fun#triggerStateless|)
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|fun'| Heap@@22))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6689) (Mask@@25 T@PolymorphicMapType_6710) ) (!  (=> (state Heap@@23 Mask@@25) (= (|fun'| Heap@@23) (|fun#frame| EmptyFrame)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@23 Mask@@25) (|fun'| Heap@@23))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6689) (o T@Ref) (f_3 T@Field_3464_20002) (v T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@24) (store (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@24) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@24) (store (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@24) o f_3 v)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6689) (o@@0 T@Ref) (f_3@@0 T@Field_3464_20135) (v@@0 T@PolymorphicMapType_7238) ) (! (succHeap Heap@@25 (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@25) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@25) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@25) (store (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@25) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@25) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@25) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@25) (store (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@25) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6689) (o@@1 T@Ref) (f_3@@1 T@Field_10076_1189) (v@@1 Int) ) (! (succHeap Heap@@26 (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@26) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@26) (store (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@26) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@26) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@26) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@26) (store (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@26) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@26) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6689) (o@@2 T@Ref) (f_3@@2 T@Field_6762_6763) (v@@2 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@27) (store (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@27) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@27) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@27) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@27) (store (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@27) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@27) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@27) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6689) (o@@3 T@Ref) (f_3@@3 T@Field_6749_53) (v@@3 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_6689 (store (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@28) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6689 (store (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@28) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@28)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_6762_6763) (Heap@@29 T@PolymorphicMapType_6689) ) (!  (=> (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@29) o@@4 $allocated) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@29) (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@29) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@29) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_3464_20002) (v_1@@0 T@FrameType) (q T@Field_3464_20002) (w@@0 T@FrameType) (r T@Field_3464_20002) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6749_6749 p@@1 v_1@@0 q w@@0) (InsidePredicate_6749_6749 q w@@0 r u)) (InsidePredicate_6749_6749 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6749_6749 p@@1 v_1@@0 q w@@0) (InsidePredicate_6749_6749 q w@@0 r u))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6689) (Mask@@26 T@PolymorphicMapType_6710) (x@@9 T@Ref) ) (!  (=> (and (state Heap@@30 Mask@@26) (< AssumeFunctionsAbove 0)) (= (fun3 Heap@@30 x@@9) 0))
 :qid |stdinbpl.355:15|
 :skolemid |32|
 :pattern ( (state Heap@@30 Mask@@26) (fun3 Heap@@30 x@@9))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6689) (Mask@@27 T@PolymorphicMapType_6710) (x@@10 T@Ref) ) (!  (=> (and (state Heap@@31 Mask@@27) (< AssumeFunctionsAbove 3)) (= (fun2 Heap@@31 x@@10) 0))
 :qid |stdinbpl.272:15|
 :skolemid |28|
 :pattern ( (state Heap@@31 Mask@@27) (fun2 Heap@@31 x@@10))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6689) (Mask@@28 T@PolymorphicMapType_6710) ) (!  (=> (and (state Heap@@32 Mask@@28) (< AssumeFunctionsAbove 2)) (= (fun Heap@@32) 0))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap@@32 Mask@@28) (fun Heap@@32))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@33 () T@PolymorphicMapType_6689)
(set-info :boogie-vc-id |fun#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (state Heap@@33 ZeroMask) (not AssumePermUpperBound)) (and (= AssumeFunctionsAbove 2) (= (ControlFlow 0 2) (- 0 1)))) false)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
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
(declare-sort T@Field_6749_53 0)
(declare-sort T@Field_6762_6763 0)
(declare-sort T@Field_10076_1189 0)
(declare-sort T@Field_3464_20135 0)
(declare-sort T@Field_3464_20002 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6710 0)) (((PolymorphicMapType_6710 (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| (Array T@Ref T@Field_10076_1189 Real)) (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| (Array T@Ref T@Field_6749_53 Real)) (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| (Array T@Ref T@Field_6762_6763 Real)) (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| (Array T@Ref T@Field_3464_20002 Real)) (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| (Array T@Ref T@Field_3464_20135 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7238 0)) (((PolymorphicMapType_7238 (|PolymorphicMapType_7238_6749_53#PolymorphicMapType_7238| (Array T@Ref T@Field_6749_53 Bool)) (|PolymorphicMapType_7238_6749_6763#PolymorphicMapType_7238| (Array T@Ref T@Field_6762_6763 Bool)) (|PolymorphicMapType_7238_6749_1189#PolymorphicMapType_7238| (Array T@Ref T@Field_10076_1189 Bool)) (|PolymorphicMapType_7238_6749_20002#PolymorphicMapType_7238| (Array T@Ref T@Field_3464_20002 Bool)) (|PolymorphicMapType_7238_6749_21313#PolymorphicMapType_7238| (Array T@Ref T@Field_3464_20135 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6689 0)) (((PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| (Array T@Ref T@Field_6749_53 Bool)) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| (Array T@Ref T@Field_6762_6763 T@Ref)) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| (Array T@Ref T@Field_10076_1189 Int)) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| (Array T@Ref T@Field_3464_20135 T@PolymorphicMapType_7238)) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| (Array T@Ref T@Field_3464_20002 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6749_53)
(declare-fun f_7 () T@Field_10076_1189)
(declare-fun succHeap (T@PolymorphicMapType_6689 T@PolymorphicMapType_6689) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6689 T@PolymorphicMapType_6689) Bool)
(declare-fun state (T@PolymorphicMapType_6689 T@PolymorphicMapType_6710) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6710) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7238)
(declare-fun |fun2'| (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun dummyFunction_1327 (Int) Bool)
(declare-fun |fun2#triggerStateless| (T@Ref) Int)
(declare-fun |fun3'| (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun |fun3#triggerStateless| (T@Ref) Int)
(declare-fun |fun4'| (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun |fun4#triggerStateless| (T@Ref) Int)
(declare-fun fun2 (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun fun3 (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun fun4 (T@PolymorphicMapType_6689 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6689 T@PolymorphicMapType_6689 T@PolymorphicMapType_6710) Bool)
(declare-fun IsPredicateField_3464_20093 (T@Field_3464_20002) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3464 (T@Field_3464_20002) T@Field_3464_20135)
(declare-fun HasDirectPerm_3464_20066 (T@PolymorphicMapType_6710 T@Ref T@Field_3464_20002) Bool)
(declare-fun IsWandField_3464_21840 (T@Field_3464_20002) Bool)
(declare-fun WandMaskField_3464 (T@Field_3464_20002) T@Field_3464_20135)
(declare-fun dummyHeap () T@PolymorphicMapType_6689)
(declare-fun ZeroMask () T@PolymorphicMapType_6710)
(declare-fun InsidePredicate_6749_6749 (T@Field_3464_20002 T@FrameType T@Field_3464_20002 T@FrameType) Bool)
(declare-fun IsPredicateField_3464_1189 (T@Field_10076_1189) Bool)
(declare-fun IsWandField_3464_1189 (T@Field_10076_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3464_25386 (T@Field_3464_20135) Bool)
(declare-fun IsWandField_3464_25402 (T@Field_3464_20135) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3464_6763 (T@Field_6762_6763) Bool)
(declare-fun IsWandField_3464_6763 (T@Field_6762_6763) Bool)
(declare-fun IsPredicateField_3464_53 (T@Field_6749_53) Bool)
(declare-fun IsWandField_3464_53 (T@Field_6749_53) Bool)
(declare-fun HasDirectPerm_3464_25840 (T@PolymorphicMapType_6710 T@Ref T@Field_3464_20135) Bool)
(declare-fun HasDirectPerm_3464_6763 (T@PolymorphicMapType_6710 T@Ref T@Field_6762_6763) Bool)
(declare-fun HasDirectPerm_3464_53 (T@PolymorphicMapType_6710 T@Ref T@Field_6749_53) Bool)
(declare-fun HasDirectPerm_3464_1189 (T@PolymorphicMapType_6710 T@Ref T@Field_10076_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fun (T@PolymorphicMapType_6689) Int)
(declare-fun |fun'| (T@PolymorphicMapType_6689) Int)
(declare-fun |fun#triggerStateless| () Int)
(declare-fun sumMask (T@PolymorphicMapType_6710 T@PolymorphicMapType_6710 T@PolymorphicMapType_6710) Bool)
(declare-fun |fun3#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |fun4#frame| (T@FrameType T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |fun2#frame| (T@FrameType T@Ref) Int)
(declare-fun |fun#frame| (T@FrameType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_6689) (Heap1 T@PolymorphicMapType_6689) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6689) (Mask T@PolymorphicMapType_6710) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6689) (Heap1@@0 T@PolymorphicMapType_6689) (Heap2 T@PolymorphicMapType_6689) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3464_20135) ) (!  (not (select (|PolymorphicMapType_7238_6749_21313#PolymorphicMapType_7238| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7238_6749_21313#PolymorphicMapType_7238| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3464_20002) ) (!  (not (select (|PolymorphicMapType_7238_6749_20002#PolymorphicMapType_7238| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7238_6749_20002#PolymorphicMapType_7238| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10076_1189) ) (!  (not (select (|PolymorphicMapType_7238_6749_1189#PolymorphicMapType_7238| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7238_6749_1189#PolymorphicMapType_7238| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6762_6763) ) (!  (not (select (|PolymorphicMapType_7238_6749_6763#PolymorphicMapType_7238| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7238_6749_6763#PolymorphicMapType_7238| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6749_53) ) (!  (not (select (|PolymorphicMapType_7238_6749_53#PolymorphicMapType_7238| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7238_6749_53#PolymorphicMapType_7238| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6689) (x T@Ref) ) (! (dummyFunction_1327 (|fun2#triggerStateless| x))
 :qid |stdinbpl.266:15|
 :skolemid |27|
 :pattern ( (|fun2'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6689) (x@@0 T@Ref) ) (! (dummyFunction_1327 (|fun3#triggerStateless| x@@0))
 :qid |stdinbpl.349:15|
 :skolemid |31|
 :pattern ( (|fun3'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6689) (x@@1 T@Ref) ) (! (dummyFunction_1327 (|fun4#triggerStateless| x@@1))
 :qid |stdinbpl.439:15|
 :skolemid |35|
 :pattern ( (|fun4'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6689) (x@@2 T@Ref) ) (!  (and (= (fun2 Heap@@3 x@@2) (|fun2'| Heap@@3 x@@2)) (dummyFunction_1327 (|fun2#triggerStateless| x@@2)))
 :qid |stdinbpl.262:15|
 :skolemid |26|
 :pattern ( (fun2 Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6689) (x@@3 T@Ref) ) (!  (and (= (fun3 Heap@@4 x@@3) (|fun3'| Heap@@4 x@@3)) (dummyFunction_1327 (|fun3#triggerStateless| x@@3)))
 :qid |stdinbpl.345:15|
 :skolemid |30|
 :pattern ( (fun3 Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6689) (x@@4 T@Ref) ) (!  (and (= (fun4 Heap@@5 x@@4) (|fun4'| Heap@@5 x@@4)) (dummyFunction_1327 (|fun4#triggerStateless| x@@4)))
 :qid |stdinbpl.435:15|
 :skolemid |34|
 :pattern ( (fun4 Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6689) (ExhaleHeap T@PolymorphicMapType_6689) (Mask@@0 T@PolymorphicMapType_6710) (pm_f T@Field_3464_20002) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3464_20066 Mask@@0 null pm_f) (IsPredicateField_3464_20093 pm_f)) (= (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@6) null (PredicateMaskField_3464 pm_f)) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap) null (PredicateMaskField_3464 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_3464_20093 pm_f) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap) null (PredicateMaskField_3464 pm_f)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6689) (ExhaleHeap@@0 T@PolymorphicMapType_6689) (Mask@@1 T@PolymorphicMapType_6710) (pm_f@@0 T@Field_3464_20002) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3464_20066 Mask@@1 null pm_f@@0) (IsWandField_3464_21840 pm_f@@0)) (= (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@7) null (WandMaskField_3464 pm_f@@0)) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@0) null (WandMaskField_3464 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsWandField_3464_21840 pm_f@@0) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@0) null (WandMaskField_3464 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6689) (ExhaleHeap@@1 T@PolymorphicMapType_6689) (Mask@@2 T@PolymorphicMapType_6710) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@8) o_1 $allocated) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_3464_20002) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6749_6749 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6749_6749 p v_1 p w))
)))
(assert  (not (IsPredicateField_3464_1189 f_7)))
(assert  (not (IsWandField_3464_1189 f_7)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6689) (ExhaleHeap@@2 T@PolymorphicMapType_6689) (Mask@@3 T@PolymorphicMapType_6710) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6710) (o_2@@4 T@Ref) (f_4@@4 T@Field_3464_20135) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3464_25386 f_4@@4))) (not (IsWandField_3464_25402 f_4@@4))) (<= (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6710) (o_2@@5 T@Ref) (f_4@@5 T@Field_3464_20002) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3464_20093 f_4@@5))) (not (IsWandField_3464_21840 f_4@@5))) (<= (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6710) (o_2@@6 T@Ref) (f_4@@6 T@Field_6762_6763) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3464_6763 f_4@@6))) (not (IsWandField_3464_6763 f_4@@6))) (<= (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6710) (o_2@@7 T@Ref) (f_4@@7 T@Field_6749_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3464_53 f_4@@7))) (not (IsWandField_3464_53 f_4@@7))) (<= (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6710) (o_2@@8 T@Ref) (f_4@@8 T@Field_10076_1189) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3464_1189 f_4@@8))) (not (IsWandField_3464_1189 f_4@@8))) (<= (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6710) (o_2@@9 T@Ref) (f_4@@9 T@Field_3464_20135) ) (! (= (HasDirectPerm_3464_25840 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3464_25840 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6710) (o_2@@10 T@Ref) (f_4@@10 T@Field_3464_20002) ) (! (= (HasDirectPerm_3464_20066 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3464_20066 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6710) (o_2@@11 T@Ref) (f_4@@11 T@Field_6762_6763) ) (! (= (HasDirectPerm_3464_6763 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3464_6763 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6710) (o_2@@12 T@Ref) (f_4@@12 T@Field_6749_53) ) (! (= (HasDirectPerm_3464_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3464_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6710) (o_2@@13 T@Ref) (f_4@@13 T@Field_10076_1189) ) (! (= (HasDirectPerm_3464_1189 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3464_1189 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6689) (ExhaleHeap@@3 T@PolymorphicMapType_6689) (Mask@@14 T@PolymorphicMapType_6710) (pm_f@@1 T@Field_3464_20002) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3464_20066 Mask@@14 null pm_f@@1) (IsPredicateField_3464_20093 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6749_53) ) (!  (=> (select (|PolymorphicMapType_7238_6749_53#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) null (PredicateMaskField_3464 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@10) o2 f_2) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6762_6763) ) (!  (=> (select (|PolymorphicMapType_7238_6749_6763#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) null (PredicateMaskField_3464 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@10) o2@@0 f_2@@0) (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_10076_1189) ) (!  (=> (select (|PolymorphicMapType_7238_6749_1189#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) null (PredicateMaskField_3464 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@10) o2@@1 f_2@@1) (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3464_20002) ) (!  (=> (select (|PolymorphicMapType_7238_6749_20002#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) null (PredicateMaskField_3464 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@10) o2@@2 f_2@@2) (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3464_20135) ) (!  (=> (select (|PolymorphicMapType_7238_6749_21313#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) null (PredicateMaskField_3464 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@10) o2@@3 f_2@@3) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3464_20093 pm_f@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6689) (ExhaleHeap@@4 T@PolymorphicMapType_6689) (Mask@@15 T@PolymorphicMapType_6710) (pm_f@@2 T@Field_3464_20002) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3464_20066 Mask@@15 null pm_f@@2) (IsWandField_3464_21840 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6749_53) ) (!  (=> (select (|PolymorphicMapType_7238_6749_53#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) null (WandMaskField_3464 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@11) o2@@4 f_2@@4) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6762_6763) ) (!  (=> (select (|PolymorphicMapType_7238_6749_6763#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) null (WandMaskField_3464 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@11) o2@@5 f_2@@5) (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_10076_1189) ) (!  (=> (select (|PolymorphicMapType_7238_6749_1189#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) null (WandMaskField_3464 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@11) o2@@6 f_2@@6) (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3464_20002) ) (!  (=> (select (|PolymorphicMapType_7238_6749_20002#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) null (WandMaskField_3464 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@11) o2@@7 f_2@@7) (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3464_20135) ) (!  (=> (select (|PolymorphicMapType_7238_6749_21313#PolymorphicMapType_7238| (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) null (WandMaskField_3464 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@11) o2@@8 f_2@@8) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@15) (IsWandField_3464_21840 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6689) (ExhaleHeap@@5 T@PolymorphicMapType_6689) (Mask@@16 T@PolymorphicMapType_6710) (o_1@@0 T@Ref) (f_2@@9 T@Field_3464_20135) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3464_25840 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@12) o_1@@0 f_2@@9) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6689) (ExhaleHeap@@6 T@PolymorphicMapType_6689) (Mask@@17 T@PolymorphicMapType_6710) (o_1@@1 T@Ref) (f_2@@10 T@Field_3464_20002) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3464_20066 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@13) o_1@@1 f_2@@10) (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6689) (ExhaleHeap@@7 T@PolymorphicMapType_6689) (Mask@@18 T@PolymorphicMapType_6710) (o_1@@2 T@Ref) (f_2@@11 T@Field_6762_6763) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3464_6763 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@14) o_1@@2 f_2@@11) (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6689) (ExhaleHeap@@8 T@PolymorphicMapType_6689) (Mask@@19 T@PolymorphicMapType_6710) (o_1@@3 T@Ref) (f_2@@12 T@Field_6749_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3464_53 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@15) o_1@@3 f_2@@12) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6689) (ExhaleHeap@@9 T@PolymorphicMapType_6689) (Mask@@20 T@PolymorphicMapType_6710) (o_1@@4 T@Ref) (f_2@@13 T@Field_10076_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3464_1189 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@16) o_1@@4 f_2@@13) (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6689) ) (!  (and (= (fun Heap@@17) (|fun'| Heap@@17)) (dummyFunction_1327 |fun#triggerStateless|))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (fun Heap@@17))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3464_20135) ) (! (= (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3464_20002) ) (! (= (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6762_6763) ) (! (= (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6749_53) ) (! (= (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10076_1189) ) (! (= (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6710) (SummandMask1 T@PolymorphicMapType_6710) (SummandMask2 T@PolymorphicMapType_6710) (o_2@@19 T@Ref) (f_4@@19 T@Field_3464_20135) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6710_3464_24257#PolymorphicMapType_6710| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6710) (SummandMask1@@0 T@PolymorphicMapType_6710) (SummandMask2@@0 T@PolymorphicMapType_6710) (o_2@@20 T@Ref) (f_4@@20 T@Field_3464_20002) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6710_3464_20002#PolymorphicMapType_6710| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6710) (SummandMask1@@1 T@PolymorphicMapType_6710) (SummandMask2@@1 T@PolymorphicMapType_6710) (o_2@@21 T@Ref) (f_4@@21 T@Field_6762_6763) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6710_3464_6763#PolymorphicMapType_6710| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6710) (SummandMask1@@2 T@PolymorphicMapType_6710) (SummandMask2@@2 T@PolymorphicMapType_6710) (o_2@@22 T@Ref) (f_4@@22 T@Field_6749_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6710_3464_53#PolymorphicMapType_6710| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6710) (SummandMask1@@3 T@PolymorphicMapType_6710) (SummandMask2@@3 T@PolymorphicMapType_6710) (o_2@@23 T@Ref) (f_4@@23 T@Field_10076_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6710_3464_1189#PolymorphicMapType_6710| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6689) (Mask@@21 T@PolymorphicMapType_6710) (x@@5 T@Ref) ) (!  (=> (state Heap@@18 Mask@@21) (= (|fun3'| Heap@@18 x@@5) (|fun3#frame| (FrameFragment_1189 (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@18) x@@5 f_7)) x@@5)))
 :qid |stdinbpl.362:15|
 :skolemid |33|
 :pattern ( (state Heap@@18 Mask@@21) (|fun3'| Heap@@18 x@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6689) (Mask@@22 T@PolymorphicMapType_6710) (x@@6 T@Ref) ) (!  (=> (state Heap@@19 Mask@@22) (= (|fun4'| Heap@@19 x@@6) (|fun4#frame| (FrameFragment_1189 (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@19) x@@6 f_7)) x@@6)))
 :qid |stdinbpl.452:15|
 :skolemid |37|
 :pattern ( (state Heap@@19 Mask@@22) (|fun4'| Heap@@19 x@@6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6689) (Mask@@23 T@PolymorphicMapType_6710) (x@@7 T@Ref) ) (!  (=> (and (state Heap@@20 Mask@@23) (< AssumeFunctionsAbove 1)) (=> (> (select (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@20) x@@7 f_7) 8) (= (fun4 Heap@@20 x@@7) 0)))
 :qid |stdinbpl.445:15|
 :skolemid |36|
 :pattern ( (state Heap@@20 Mask@@23) (fun4 Heap@@20 x@@7))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6689) (Mask@@24 T@PolymorphicMapType_6710) (x@@8 T@Ref) ) (!  (=> (state Heap@@21 Mask@@24) (= (|fun2'| Heap@@21 x@@8) (|fun2#frame| EmptyFrame x@@8)))
 :qid |stdinbpl.279:15|
 :skolemid |29|
 :pattern ( (state Heap@@21 Mask@@24) (|fun2'| Heap@@21 x@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6689) ) (! (dummyFunction_1327 |fun#triggerStateless|)
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|fun'| Heap@@22))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6689) (Mask@@25 T@PolymorphicMapType_6710) ) (!  (=> (state Heap@@23 Mask@@25) (= (|fun'| Heap@@23) (|fun#frame| EmptyFrame)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@23 Mask@@25) (|fun'| Heap@@23))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6689) (o T@Ref) (f_3 T@Field_3464_20002) (v T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@24) (store (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@24) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@24) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@24) (store (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@24) o f_3 v)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6689) (o@@0 T@Ref) (f_3@@0 T@Field_3464_20135) (v@@0 T@PolymorphicMapType_7238) ) (! (succHeap Heap@@25 (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@25) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@25) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@25) (store (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@25) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@25) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@25) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@25) (store (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@25) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6689) (o@@1 T@Ref) (f_3@@1 T@Field_10076_1189) (v@@1 Int) ) (! (succHeap Heap@@26 (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@26) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@26) (store (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@26) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@26) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@26) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@26) (store (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@26) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@26) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6689) (o@@2 T@Ref) (f_3@@2 T@Field_6762_6763) (v@@2 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@27) (store (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@27) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@27) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@27) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6689 (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@27) (store (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@27) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@27) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@27) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6689) (o@@3 T@Ref) (f_3@@3 T@Field_6749_53) (v@@3 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_6689 (store (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@28) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6689 (store (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@28) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_3464_1189#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_3464_20179#PolymorphicMapType_6689| Heap@@28) (|PolymorphicMapType_6689_6749_20002#PolymorphicMapType_6689| Heap@@28)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_6762_6763) (Heap@@29 T@PolymorphicMapType_6689) ) (!  (=> (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@29) o@@4 $allocated) (select (|PolymorphicMapType_6689_3336_53#PolymorphicMapType_6689| Heap@@29) (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@29) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6689_3339_3340#PolymorphicMapType_6689| Heap@@29) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_3464_20002) (v_1@@0 T@FrameType) (q T@Field_3464_20002) (w@@0 T@FrameType) (r T@Field_3464_20002) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6749_6749 p@@1 v_1@@0 q w@@0) (InsidePredicate_6749_6749 q w@@0 r u)) (InsidePredicate_6749_6749 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6749_6749 p@@1 v_1@@0 q w@@0) (InsidePredicate_6749_6749 q w@@0 r u))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6689) (Mask@@26 T@PolymorphicMapType_6710) (x@@9 T@Ref) ) (!  (=> (and (state Heap@@30 Mask@@26) (< AssumeFunctionsAbove 0)) (= (fun3 Heap@@30 x@@9) 0))
 :qid |stdinbpl.355:15|
 :skolemid |32|
 :pattern ( (state Heap@@30 Mask@@26) (fun3 Heap@@30 x@@9))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6689) (Mask@@27 T@PolymorphicMapType_6710) (x@@10 T@Ref) ) (!  (=> (and (state Heap@@31 Mask@@27) (< AssumeFunctionsAbove 3)) (= (fun2 Heap@@31 x@@10) 0))
 :qid |stdinbpl.272:15|
 :skolemid |28|
 :pattern ( (state Heap@@31 Mask@@27) (fun2 Heap@@31 x@@10))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6689) (Mask@@28 T@PolymorphicMapType_6710) ) (!  (=> (and (state Heap@@32 Mask@@28) (< AssumeFunctionsAbove 2)) (= (fun Heap@@32) 0))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap@@32 Mask@@28) (fun Heap@@32))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid

