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
(declare-sort T@Field_7809_53 0)
(declare-sort T@Field_7822_7823 0)
(declare-sort T@Field_13990_3262 0)
(declare-sort T@Field_4871_19375 0)
(declare-sort T@Field_4871_19242 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7770 0)) (((PolymorphicMapType_7770 (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| (Array T@Ref T@Field_13990_3262 Real)) (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| (Array T@Ref T@Field_7809_53 Real)) (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| (Array T@Ref T@Field_7822_7823 Real)) (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| (Array T@Ref T@Field_4871_19242 Real)) (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| (Array T@Ref T@Field_4871_19375 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8298 0)) (((PolymorphicMapType_8298 (|PolymorphicMapType_8298_7809_53#PolymorphicMapType_8298| (Array T@Ref T@Field_7809_53 Bool)) (|PolymorphicMapType_8298_7809_7823#PolymorphicMapType_8298| (Array T@Ref T@Field_7822_7823 Bool)) (|PolymorphicMapType_8298_7809_3262#PolymorphicMapType_8298| (Array T@Ref T@Field_13990_3262 Bool)) (|PolymorphicMapType_8298_7809_19242#PolymorphicMapType_8298| (Array T@Ref T@Field_4871_19242 Bool)) (|PolymorphicMapType_8298_7809_20553#PolymorphicMapType_8298| (Array T@Ref T@Field_4871_19375 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7749 0)) (((PolymorphicMapType_7749 (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| (Array T@Ref T@Field_7809_53 Bool)) (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| (Array T@Ref T@Field_7822_7823 T@Ref)) (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| (Array T@Ref T@Field_13990_3262 Int)) (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| (Array T@Ref T@Field_4871_19375 T@PolymorphicMapType_8298)) (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| (Array T@Ref T@Field_4871_19242 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7809_53)
(declare-fun f_7 () T@Field_13990_3262)
(declare-fun succHeap (T@PolymorphicMapType_7749 T@PolymorphicMapType_7749) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7749 T@PolymorphicMapType_7749) Bool)
(declare-fun state (T@PolymorphicMapType_7749 T@PolymorphicMapType_7770) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7770) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8298)
(declare-fun |fun01'| (T@PolymorphicMapType_7749 (Array T@Ref Bool) T@Ref) Int)
(declare-fun dummyFunction_3667 (Int) Bool)
(declare-fun |fun01#triggerStateless| ((Array T@Ref Bool) T@Ref) Int)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7749 T@PolymorphicMapType_7749 T@PolymorphicMapType_7770) Bool)
(declare-fun IsPredicateField_4871_19333 (T@Field_4871_19242) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4871 (T@Field_4871_19242) T@Field_4871_19375)
(declare-fun HasDirectPerm_4871_19306 (T@PolymorphicMapType_7770 T@Ref T@Field_4871_19242) Bool)
(declare-fun IsWandField_4871_21080 (T@Field_4871_19242) Bool)
(declare-fun WandMaskField_4871 (T@Field_4871_19242) T@Field_4871_19375)
(declare-fun dummyHeap () T@PolymorphicMapType_7749)
(declare-fun ZeroMask () T@PolymorphicMapType_7770)
(declare-fun fun01 (T@PolymorphicMapType_7749 (Array T@Ref Bool) T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun InsidePredicate_7809_7809 (T@Field_4871_19242 T@FrameType T@Field_4871_19242 T@FrameType) Bool)
(declare-fun IsPredicateField_4871_3262 (T@Field_13990_3262) Bool)
(declare-fun IsWandField_4871_3262 (T@Field_13990_3262) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4871_24626 (T@Field_4871_19375) Bool)
(declare-fun IsWandField_4871_24642 (T@Field_4871_19375) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4871_7823 (T@Field_7822_7823) Bool)
(declare-fun IsWandField_4871_7823 (T@Field_7822_7823) Bool)
(declare-fun IsPredicateField_4871_53 (T@Field_7809_53) Bool)
(declare-fun IsWandField_4871_53 (T@Field_7809_53) Bool)
(declare-fun HasDirectPerm_4871_25080 (T@PolymorphicMapType_7770 T@Ref T@Field_4871_19375) Bool)
(declare-fun HasDirectPerm_4871_7823 (T@PolymorphicMapType_7770 T@Ref T@Field_7822_7823) Bool)
(declare-fun HasDirectPerm_4871_53 (T@PolymorphicMapType_7770 T@Ref T@Field_7809_53) Bool)
(declare-fun HasDirectPerm_4871_3262 (T@PolymorphicMapType_7770 T@Ref T@Field_13990_3262) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |fun01#frame| (T@FrameType (Array T@Ref Bool) T@Ref) Int)
(declare-fun FrameFragment_3495 (Int) T@FrameType)
(declare-fun |fun01#condqp1| (T@PolymorphicMapType_7749 (Array T@Ref Bool) T@Ref) Int)
(declare-fun sumMask (T@PolymorphicMapType_7770 T@PolymorphicMapType_7770 T@PolymorphicMapType_7770) Bool)
(declare-fun |sk_fun01#condqp1| (Int Int) T@Ref)
(assert (forall ((Heap0 T@PolymorphicMapType_7749) (Heap1 T@PolymorphicMapType_7749) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7749) (Mask T@PolymorphicMapType_7770) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7749) (Heap1@@0 T@PolymorphicMapType_7749) (Heap2 T@PolymorphicMapType_7749) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4871_19375) ) (!  (not (select (|PolymorphicMapType_8298_7809_20553#PolymorphicMapType_8298| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8298_7809_20553#PolymorphicMapType_8298| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4871_19242) ) (!  (not (select (|PolymorphicMapType_8298_7809_19242#PolymorphicMapType_8298| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8298_7809_19242#PolymorphicMapType_8298| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13990_3262) ) (!  (not (select (|PolymorphicMapType_8298_7809_3262#PolymorphicMapType_8298| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8298_7809_3262#PolymorphicMapType_8298| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7822_7823) ) (!  (not (select (|PolymorphicMapType_8298_7809_7823#PolymorphicMapType_8298| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8298_7809_7823#PolymorphicMapType_8298| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7809_53) ) (!  (not (select (|PolymorphicMapType_8298_7809_53#PolymorphicMapType_8298| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8298_7809_53#PolymorphicMapType_8298| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7749) (xs (Array T@Ref Bool)) (y T@Ref) ) (! (dummyFunction_3667 (|fun01#triggerStateless| xs y))
 :qid |stdinbpl.410:15|
 :skolemid |83|
 :pattern ( (|fun01'| Heap@@0 xs y))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.297:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.300:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7749) (ExhaleHeap T@PolymorphicMapType_7749) (Mask@@0 T@PolymorphicMapType_7770) (pm_f_5 T@Field_4871_19242) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4871_19306 Mask@@0 null pm_f_5) (IsPredicateField_4871_19333 pm_f_5)) (= (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@1) null (PredicateMaskField_4871 pm_f_5)) (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| ExhaleHeap) null (PredicateMaskField_4871 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_4871_19333 pm_f_5) (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| ExhaleHeap) null (PredicateMaskField_4871 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7749) (ExhaleHeap@@0 T@PolymorphicMapType_7749) (Mask@@1 T@PolymorphicMapType_7770) (pm_f_5@@0 T@Field_4871_19242) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4871_19306 Mask@@1 null pm_f_5@@0) (IsWandField_4871_21080 pm_f_5@@0)) (= (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@2) null (WandMaskField_4871 pm_f_5@@0)) (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| ExhaleHeap@@0) null (WandMaskField_4871 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_4871_21080 pm_f_5@@0) (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| ExhaleHeap@@0) null (WandMaskField_4871 pm_f_5@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7749) (Mask@@2 T@PolymorphicMapType_7770) (xs@@0 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (and (state Heap@@3 Mask@@2) (< AssumeFunctionsAbove 0)) (=> (select xs@@0 y@@0) (= (fun01 Heap@@3 xs@@0 y@@0) (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@3) y@@0 f_7))))
 :qid |stdinbpl.416:15|
 :skolemid |84|
 :pattern ( (state Heap@@3 Mask@@2) (fun01 Heap@@3 xs@@0 y@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7749) (ExhaleHeap@@1 T@PolymorphicMapType_7749) (Mask@@3 T@PolymorphicMapType_7770) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@4) o_15 $allocated) (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| ExhaleHeap@@1) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| ExhaleHeap@@1) o_15 $allocated))
)))
(assert (forall ((p T@Field_4871_19242) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7809_7809 p v_1 p w))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7809_7809 p v_1 p w))
)))
(assert  (not (IsPredicateField_4871_3262 f_7)))
(assert  (not (IsWandField_4871_3262 f_7)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7749) (ExhaleHeap@@2 T@PolymorphicMapType_7749) (Mask@@4 T@PolymorphicMapType_7770) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7770) (o_2@@4 T@Ref) (f_4@@4 T@Field_4871_19375) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4871_24626 f_4@@4))) (not (IsWandField_4871_24642 f_4@@4))) (<= (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7770) (o_2@@5 T@Ref) (f_4@@5 T@Field_4871_19242) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4871_19333 f_4@@5))) (not (IsWandField_4871_21080 f_4@@5))) (<= (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7770) (o_2@@6 T@Ref) (f_4@@6 T@Field_7822_7823) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4871_7823 f_4@@6))) (not (IsWandField_4871_7823 f_4@@6))) (<= (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7770) (o_2@@7 T@Ref) (f_4@@7 T@Field_7809_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4871_53 f_4@@7))) (not (IsWandField_4871_53 f_4@@7))) (<= (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7770) (o_2@@8 T@Ref) (f_4@@8 T@Field_13990_3262) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4871_3262 f_4@@8))) (not (IsWandField_4871_3262 f_4@@8))) (<= (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7770) (o_2@@9 T@Ref) (f_4@@9 T@Field_4871_19375) ) (! (= (HasDirectPerm_4871_25080 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4871_25080 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7770) (o_2@@10 T@Ref) (f_4@@10 T@Field_4871_19242) ) (! (= (HasDirectPerm_4871_19306 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4871_19306 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7770) (o_2@@11 T@Ref) (f_4@@11 T@Field_7822_7823) ) (! (= (HasDirectPerm_4871_7823 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4871_7823 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7770) (o_2@@12 T@Ref) (f_4@@12 T@Field_7809_53) ) (! (= (HasDirectPerm_4871_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4871_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7770) (o_2@@13 T@Ref) (f_4@@13 T@Field_13990_3262) ) (! (= (HasDirectPerm_4871_3262 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4871_3262 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7749) (ExhaleHeap@@3 T@PolymorphicMapType_7749) (Mask@@15 T@PolymorphicMapType_7770) (pm_f_5@@1 T@Field_4871_19242) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_4871_19306 Mask@@15 null pm_f_5@@1) (IsPredicateField_4871_19333 pm_f_5@@1)) (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_7809_53) ) (!  (=> (select (|PolymorphicMapType_8298_7809_53#PolymorphicMapType_8298| (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@6) null (PredicateMaskField_4871 pm_f_5@@1))) o2_5 f_23) (= (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@6) o2_5 f_23) (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| ExhaleHeap@@3) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| ExhaleHeap@@3) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_7822_7823) ) (!  (=> (select (|PolymorphicMapType_8298_7809_7823#PolymorphicMapType_8298| (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@6) null (PredicateMaskField_4871 pm_f_5@@1))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@6) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| ExhaleHeap@@3) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| ExhaleHeap@@3) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_13990_3262) ) (!  (=> (select (|PolymorphicMapType_8298_7809_3262#PolymorphicMapType_8298| (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@6) null (PredicateMaskField_4871 pm_f_5@@1))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@6) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| ExhaleHeap@@3) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| ExhaleHeap@@3) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_4871_19242) ) (!  (=> (select (|PolymorphicMapType_8298_7809_19242#PolymorphicMapType_8298| (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@6) null (PredicateMaskField_4871 pm_f_5@@1))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@6) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| ExhaleHeap@@3) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| ExhaleHeap@@3) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_4871_19375) ) (!  (=> (select (|PolymorphicMapType_8298_7809_20553#PolymorphicMapType_8298| (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@6) null (PredicateMaskField_4871 pm_f_5@@1))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@6) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| ExhaleHeap@@3) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| ExhaleHeap@@3) o2_5@@3 f_23@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_4871_19333 pm_f_5@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7749) (ExhaleHeap@@4 T@PolymorphicMapType_7749) (Mask@@16 T@PolymorphicMapType_7770) (pm_f_5@@2 T@Field_4871_19242) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_4871_19306 Mask@@16 null pm_f_5@@2) (IsWandField_4871_21080 pm_f_5@@2)) (and (and (and (and (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_7809_53) ) (!  (=> (select (|PolymorphicMapType_8298_7809_53#PolymorphicMapType_8298| (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@7) null (WandMaskField_4871 pm_f_5@@2))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@7) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| ExhaleHeap@@4) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| ExhaleHeap@@4) o2_5@@4 f_23@@4))
)) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_7822_7823) ) (!  (=> (select (|PolymorphicMapType_8298_7809_7823#PolymorphicMapType_8298| (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@7) null (WandMaskField_4871 pm_f_5@@2))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@7) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| ExhaleHeap@@4) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| ExhaleHeap@@4) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_13990_3262) ) (!  (=> (select (|PolymorphicMapType_8298_7809_3262#PolymorphicMapType_8298| (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@7) null (WandMaskField_4871 pm_f_5@@2))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@7) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| ExhaleHeap@@4) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| ExhaleHeap@@4) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_4871_19242) ) (!  (=> (select (|PolymorphicMapType_8298_7809_19242#PolymorphicMapType_8298| (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@7) null (WandMaskField_4871 pm_f_5@@2))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@7) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| ExhaleHeap@@4) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| ExhaleHeap@@4) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_4871_19375) ) (!  (=> (select (|PolymorphicMapType_8298_7809_20553#PolymorphicMapType_8298| (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@7) null (WandMaskField_4871 pm_f_5@@2))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@7) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| ExhaleHeap@@4) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| ExhaleHeap@@4) o2_5@@8 f_23@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_4871_21080 pm_f_5@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.183:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7749) (ExhaleHeap@@5 T@PolymorphicMapType_7749) (Mask@@17 T@PolymorphicMapType_7770) (o_15@@0 T@Ref) (f_23@@9 T@Field_4871_19375) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_4871_25080 Mask@@17 o_15@@0 f_23@@9) (= (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@8) o_15@@0 f_23@@9) (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| ExhaleHeap@@5) o_15@@0 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| ExhaleHeap@@5) o_15@@0 f_23@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7749) (ExhaleHeap@@6 T@PolymorphicMapType_7749) (Mask@@18 T@PolymorphicMapType_7770) (o_15@@1 T@Ref) (f_23@@10 T@Field_4871_19242) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_4871_19306 Mask@@18 o_15@@1 f_23@@10) (= (select (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@9) o_15@@1 f_23@@10) (select (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| ExhaleHeap@@6) o_15@@1 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| ExhaleHeap@@6) o_15@@1 f_23@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7749) (ExhaleHeap@@7 T@PolymorphicMapType_7749) (Mask@@19 T@PolymorphicMapType_7770) (o_15@@2 T@Ref) (f_23@@11 T@Field_7822_7823) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_4871_7823 Mask@@19 o_15@@2 f_23@@11) (= (select (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@10) o_15@@2 f_23@@11) (select (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| ExhaleHeap@@7) o_15@@2 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| ExhaleHeap@@7) o_15@@2 f_23@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7749) (ExhaleHeap@@8 T@PolymorphicMapType_7749) (Mask@@20 T@PolymorphicMapType_7770) (o_15@@3 T@Ref) (f_23@@12 T@Field_7809_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_4871_53 Mask@@20 o_15@@3 f_23@@12) (= (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@11) o_15@@3 f_23@@12) (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| ExhaleHeap@@8) o_15@@3 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| ExhaleHeap@@8) o_15@@3 f_23@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7749) (ExhaleHeap@@9 T@PolymorphicMapType_7749) (Mask@@21 T@PolymorphicMapType_7770) (o_15@@4 T@Ref) (f_23@@13 T@Field_13990_3262) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_4871_3262 Mask@@21 o_15@@4 f_23@@13) (= (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@12) o_15@@4 f_23@@13) (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| ExhaleHeap@@9) o_15@@4 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| ExhaleHeap@@9) o_15@@4 f_23@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4871_19375) ) (! (= (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4871_19242) ) (! (= (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7822_7823) ) (! (= (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7809_53) ) (! (= (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13990_3262) ) (! (= (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7749) (xs@@1 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (and (= (fun01 Heap@@13 xs@@1 y@@1) (|fun01'| Heap@@13 xs@@1 y@@1)) (dummyFunction_3667 (|fun01#triggerStateless| xs@@1 y@@1)))
 :qid |stdinbpl.406:15|
 :skolemid |82|
 :pattern ( (fun01 Heap@@13 xs@@1 y@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7749) (Mask@@22 T@PolymorphicMapType_7770) (xs@@2 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (state Heap@@14 Mask@@22) (= (|fun01'| Heap@@14 xs@@2 y@@2) (|fun01#frame| (FrameFragment_3495 (|fun01#condqp1| Heap@@14 xs@@2 y@@2)) xs@@2 y@@2)))
 :qid |stdinbpl.423:15|
 :skolemid |85|
 :pattern ( (state Heap@@14 Mask@@22) (|fun01'| Heap@@14 xs@@2 y@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7770) (SummandMask1 T@PolymorphicMapType_7770) (SummandMask2 T@PolymorphicMapType_7770) (o_2@@19 T@Ref) (f_4@@19 T@Field_4871_19375) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7770) (SummandMask1@@0 T@PolymorphicMapType_7770) (SummandMask2@@0 T@PolymorphicMapType_7770) (o_2@@20 T@Ref) (f_4@@20 T@Field_4871_19242) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7770) (SummandMask1@@1 T@PolymorphicMapType_7770) (SummandMask2@@1 T@PolymorphicMapType_7770) (o_2@@21 T@Ref) (f_4@@21 T@Field_7822_7823) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7770) (SummandMask1@@2 T@PolymorphicMapType_7770) (SummandMask2@@2 T@PolymorphicMapType_7770) (o_2@@22 T@Ref) (f_4@@22 T@Field_7809_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7770) (SummandMask1@@3 T@PolymorphicMapType_7770) (SummandMask2@@3 T@PolymorphicMapType_7770) (o_2@@23 T@Ref) (f_4@@23 T@Field_13990_3262) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_7749) (Heap1Heap T@PolymorphicMapType_7749) (xs@@3 (Array T@Ref Bool)) (y@@3 T@Ref) ) (!  (=> (and (=  (and (select xs@@3 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap xs@@3 y@@3) (|fun01#condqp1| Heap1Heap xs@@3 y@@3))) (< NoPerm FullPerm))  (and (select xs@@3 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap xs@@3 y@@3) (|fun01#condqp1| Heap1Heap xs@@3 y@@3))) (< NoPerm FullPerm))) (=> (and (select xs@@3 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap xs@@3 y@@3) (|fun01#condqp1| Heap1Heap xs@@3 y@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap2Heap) (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap xs@@3 y@@3) (|fun01#condqp1| Heap1Heap xs@@3 y@@3)) f_7) (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap1Heap) (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap xs@@3 y@@3) (|fun01#condqp1| Heap1Heap xs@@3 y@@3)) f_7)))) (= (|fun01#condqp1| Heap2Heap xs@@3 y@@3) (|fun01#condqp1| Heap1Heap xs@@3 y@@3)))
 :qid |stdinbpl.433:15|
 :skolemid |86|
 :pattern ( (|fun01#condqp1| Heap2Heap xs@@3 y@@3) (|fun01#condqp1| Heap1Heap xs@@3 y@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7749) (o_14 T@Ref) (f_24 T@Field_4871_19242) (v T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_7749 (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@15) (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@15) (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@15) (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@15) (store (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@15) o_14 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7749 (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@15) (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@15) (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@15) (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@15) (store (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@15) o_14 f_24 v)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7749) (o_14@@0 T@Ref) (f_24@@0 T@Field_4871_19375) (v@@0 T@PolymorphicMapType_8298) ) (! (succHeap Heap@@16 (PolymorphicMapType_7749 (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@16) (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@16) (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@16) (store (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@16) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7749 (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@16) (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@16) (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@16) (store (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@16) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7749) (o_14@@1 T@Ref) (f_24@@1 T@Field_13990_3262) (v@@1 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_7749 (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@17) (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@17) (store (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@17) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@17) (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7749 (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@17) (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@17) (store (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@17) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@17) (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7749) (o_14@@2 T@Ref) (f_24@@2 T@Field_7822_7823) (v@@2 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_7749 (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@18) (store (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@18) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@18) (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@18) (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7749 (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@18) (store (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@18) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@18) (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@18) (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7749) (o_14@@3 T@Ref) (f_24@@3 T@Field_7809_53) (v@@3 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_7749 (store (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@19) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@19) (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@19) (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@19) (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7749 (store (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@19) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@19) (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@19) (|PolymorphicMapType_7749_4871_19419#PolymorphicMapType_7749| Heap@@19) (|PolymorphicMapType_7749_7809_19242#PolymorphicMapType_7749| Heap@@19)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.295:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.296:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_14@@4 T@Ref) (f_22 T@Field_7822_7823) (Heap@@20 T@PolymorphicMapType_7749) ) (!  (=> (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@20) o_14@@4 $allocated) (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@20) (select (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@20) o_14@@4 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7749_4573_4574#PolymorphicMapType_7749| Heap@@20) o_14@@4 f_22))
)))
(assert (forall ((p@@1 T@Field_4871_19242) (v_1@@0 T@FrameType) (q T@Field_4871_19242) (w@@0 T@FrameType) (r T@Field_4871_19242) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7809_7809 p@@1 v_1@@0 q w@@0) (InsidePredicate_7809_7809 q w@@0 r u)) (InsidePredicate_7809_7809 p@@1 v_1@@0 r u))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7809_7809 p@@1 v_1@@0 q w@@0) (InsidePredicate_7809_7809 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.301:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@21 () T@PolymorphicMapType_7749)
(declare-fun xs@@4 () (Array T@Ref Bool))
(declare-fun y@@4 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_7770)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_7770)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon6_Else_correct  (=> (= (fun01 Heap@@21 xs@@4 y@@4) 0) (=> (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_4871_3262 QPMask@0 y@@4 f_7)) (=> (HasDirectPerm_4871_3262 QPMask@0 y@@4 f_7) (=> (= (ControlFlow 0 7) (- 0 6)) (= (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@21) y@@4 f_7) 0))))))))
(let ((anon6_Then_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((x_2_2 T@Ref) (x_2_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_2_2 x_2_3)) (select xs@@4 x_2_2)) (select xs@@4 x_2_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_2_2 x_2_3)))
 :qid |stdinbpl.603:21|
 :skolemid |99|
 :pattern ( (neverTriggered3 x_2_2) (neverTriggered3 x_2_3))
))) (=> (forall ((x_2_2@@0 T@Ref) (x_2_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_2_2@@0 x_2_3@@0)) (select xs@@4 x_2_2@@0)) (select xs@@4 x_2_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_2_2@@0 x_2_3@@0)))
 :qid |stdinbpl.603:21|
 :skolemid |99|
 :pattern ( (neverTriggered3 x_2_2@@0) (neverTriggered3 x_2_3@@0))
)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((x_2_2@@1 T@Ref) ) (!  (=> (select xs@@4 x_2_2@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@0) x_2_2@@1 f_7) NoPerm)))
 :qid |stdinbpl.610:21|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@21) x_2_2@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@1) x_2_2@@1 f_7))
 :pattern ( (select xs@@4 x_2_2@@1))
))) (=> (forall ((x_2_2@@2 T@Ref) ) (!  (=> (select xs@@4 x_2_2@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@0) x_2_2@@2 f_7) NoPerm)))
 :qid |stdinbpl.610:21|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@21) x_2_2@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@1) x_2_2@@2 f_7))
 :pattern ( (select xs@@4 x_2_2@@2))
)) (=> (forall ((x_2_2@@3 T@Ref) ) (!  (=> (and (select xs@@4 x_2_2@@3) (< NoPerm FullPerm)) (and (qpRange3 x_2_2@@3) (= (invRecv3 x_2_2@@3) x_2_2@@3)))
 :qid |stdinbpl.616:26|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@21) x_2_2@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@1) x_2_2@@3 f_7))
 :pattern ( (select xs@@4 x_2_2@@3))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (select xs@@4 (invRecv3 o_9)) (and (< NoPerm FullPerm) (qpRange3 o_9))) (= (invRecv3 o_9) o_9))
 :qid |stdinbpl.620:26|
 :skolemid |102|
 :pattern ( (invRecv3 o_9))
)) (= (ControlFlow 0 3) (- 0 2))) (select xs@@4 y@@4)))))))))
(let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select xs@@4 x_1)) (select xs@@4 x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.548:15|
 :skolemid |93|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select xs@@4 x_1@@0)) (select xs@@4 x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.548:15|
 :skolemid |93|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select xs@@4 x_1@@1) (< NoPerm FullPerm)) (and (qpRange2 x_1@@1) (= (invRecv2 x_1@@1) x_1@@1)))
 :qid |stdinbpl.554:22|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@21) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@0) x_1@@1 f_7))
 :pattern ( (select xs@@4 x_1@@1))
)) (forall ((o_9@@0 T@Ref) ) (!  (=> (and (and (select xs@@4 (invRecv2 o_9@@0)) (< NoPerm FullPerm)) (qpRange2 o_9@@0)) (= (invRecv2 o_9@@0) o_9@@0))
 :qid |stdinbpl.558:22|
 :skolemid |95|
 :pattern ( (invRecv2 o_9@@0))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select xs@@4 x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.564:22|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_7749_4871_3262#PolymorphicMapType_7749| Heap@@21) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@0) x_1@@2 f_7))
 :pattern ( (select xs@@4 x_1@@2))
)) (forall ((o_9@@1 T@Ref) ) (!  (and (=> (and (and (select xs@@4 (invRecv2 o_9@@1)) (< NoPerm FullPerm)) (qpRange2 o_9@@1)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_9@@1) o_9@@1)) (= (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@0) o_9@@1 f_7) (+ (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| ZeroMask) o_9@@1 f_7) FullPerm)))) (=> (not (and (and (select xs@@4 (invRecv2 o_9@@1)) (< NoPerm FullPerm)) (qpRange2 o_9@@1))) (= (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@0) o_9@@1 f_7) (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| ZeroMask) o_9@@1 f_7))))
 :qid |stdinbpl.570:22|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@0) o_9@@1 f_7))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@2 T@Ref) (f_5 T@Field_7809_53) ) (!  (=> true (= (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| ZeroMask) o_9@@2 f_5) (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| QPMask@0) o_9@@2 f_5)))
 :qid |stdinbpl.574:29|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| ZeroMask) o_9@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_7770_4871_53#PolymorphicMapType_7770| QPMask@0) o_9@@2 f_5))
)) (forall ((o_9@@3 T@Ref) (f_5@@0 T@Field_7822_7823) ) (!  (=> true (= (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| ZeroMask) o_9@@3 f_5@@0) (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| QPMask@0) o_9@@3 f_5@@0)))
 :qid |stdinbpl.574:29|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| ZeroMask) o_9@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_7770_4871_7823#PolymorphicMapType_7770| QPMask@0) o_9@@3 f_5@@0))
))) (forall ((o_9@@4 T@Ref) (f_5@@1 T@Field_13990_3262) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| ZeroMask) o_9@@4 f_5@@1) (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@0) o_9@@4 f_5@@1)))
 :qid |stdinbpl.574:29|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| ZeroMask) o_9@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_7770_4871_3262#PolymorphicMapType_7770| QPMask@0) o_9@@4 f_5@@1))
))) (forall ((o_9@@5 T@Ref) (f_5@@2 T@Field_4871_19242) ) (!  (=> true (= (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| ZeroMask) o_9@@5 f_5@@2) (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| QPMask@0) o_9@@5 f_5@@2)))
 :qid |stdinbpl.574:29|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| ZeroMask) o_9@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_7770_4871_19242#PolymorphicMapType_7770| QPMask@0) o_9@@5 f_5@@2))
))) (forall ((o_9@@6 T@Ref) (f_5@@3 T@Field_4871_19375) ) (!  (=> true (= (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| ZeroMask) o_9@@6 f_5@@3) (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| QPMask@0) o_9@@6 f_5@@3)))
 :qid |stdinbpl.574:29|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| ZeroMask) o_9@@6 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_7770_4871_23497#PolymorphicMapType_7770| QPMask@0) o_9@@6 f_5@@3))
))) (state Heap@@21 QPMask@0)) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (and (select xs@@4 y@@4) (state Heap@@21 QPMask@0)) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0)))) (and (=> (= (ControlFlow 0 9) 3) anon6_Then_correct) (=> (= (ControlFlow 0 9) 7) anon6_Else_correct))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@21 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_7749_4570_53#PolymorphicMapType_7749| Heap@@21) y@@4 $allocated))) (and (=> (= (ControlFlow 0 11) 1) anon5_Then_correct) (=> (= (ControlFlow 0 11) 9) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
