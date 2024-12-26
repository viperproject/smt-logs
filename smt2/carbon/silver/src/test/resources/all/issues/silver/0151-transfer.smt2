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
(declare-sort T@Field_3767_53 0)
(declare-sort T@Field_3780_3781 0)
(declare-sort T@Field_7094_1189 0)
(declare-sort T@Field_1975_10388 0)
(declare-sort T@Field_1975_10255 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3728 0)) (((PolymorphicMapType_3728 (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| (Array T@Ref T@Field_7094_1189 Real)) (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| (Array T@Ref T@Field_3767_53 Real)) (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| (Array T@Ref T@Field_3780_3781 Real)) (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| (Array T@Ref T@Field_1975_10255 Real)) (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| (Array T@Ref T@Field_1975_10388 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4256 0)) (((PolymorphicMapType_4256 (|PolymorphicMapType_4256_3767_53#PolymorphicMapType_4256| (Array T@Ref T@Field_3767_53 Bool)) (|PolymorphicMapType_4256_3767_3781#PolymorphicMapType_4256| (Array T@Ref T@Field_3780_3781 Bool)) (|PolymorphicMapType_4256_3767_1189#PolymorphicMapType_4256| (Array T@Ref T@Field_7094_1189 Bool)) (|PolymorphicMapType_4256_3767_10255#PolymorphicMapType_4256| (Array T@Ref T@Field_1975_10255 Bool)) (|PolymorphicMapType_4256_3767_11566#PolymorphicMapType_4256| (Array T@Ref T@Field_1975_10388 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3707 0)) (((PolymorphicMapType_3707 (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| (Array T@Ref T@Field_3767_53 Bool)) (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| (Array T@Ref T@Field_3780_3781 T@Ref)) (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| (Array T@Ref T@Field_7094_1189 Int)) (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| (Array T@Ref T@Field_1975_10388 T@PolymorphicMapType_4256)) (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| (Array T@Ref T@Field_1975_10255 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3767_53)
(declare-fun held () T@Field_7094_1189)
(declare-fun succHeap (T@PolymorphicMapType_3707 T@PolymorphicMapType_3707) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3707 T@PolymorphicMapType_3707) Bool)
(declare-fun state (T@PolymorphicMapType_3707 T@PolymorphicMapType_3728) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3728) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4256)
(declare-fun |level'| (T@PolymorphicMapType_3707 T@Ref) Real)
(declare-fun dummyFunction_645 (Real) Bool)
(declare-fun |level#triggerStateless| (T@Ref) Real)
(declare-fun level (T@PolymorphicMapType_3707 T@Ref) Real)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3707 T@PolymorphicMapType_3707 T@PolymorphicMapType_3728) Bool)
(declare-fun IsPredicateField_1975_10346 (T@Field_1975_10255) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_1975 (T@Field_1975_10255) T@Field_1975_10388)
(declare-fun HasDirectPerm_1975_10319 (T@PolymorphicMapType_3728 T@Ref T@Field_1975_10255) Bool)
(declare-fun IsWandField_1975_12093 (T@Field_1975_10255) Bool)
(declare-fun WandMaskField_1975 (T@Field_1975_10255) T@Field_1975_10388)
(declare-fun dummyHeap () T@PolymorphicMapType_3707)
(declare-fun ZeroMask () T@PolymorphicMapType_3728)
(declare-fun InsidePredicate_3767_3767 (T@Field_1975_10255 T@FrameType T@Field_1975_10255 T@FrameType) Bool)
(declare-fun IsPredicateField_1975_1189 (T@Field_7094_1189) Bool)
(declare-fun IsWandField_1975_1189 (T@Field_7094_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_1975_15639 (T@Field_1975_10388) Bool)
(declare-fun IsWandField_1975_15655 (T@Field_1975_10388) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_1975_3781 (T@Field_3780_3781) Bool)
(declare-fun IsWandField_1975_3781 (T@Field_3780_3781) Bool)
(declare-fun IsPredicateField_1975_53 (T@Field_3767_53) Bool)
(declare-fun IsWandField_1975_53 (T@Field_3767_53) Bool)
(declare-fun HasDirectPerm_1975_16093 (T@PolymorphicMapType_3728 T@Ref T@Field_1975_10388) Bool)
(declare-fun HasDirectPerm_1975_3781 (T@PolymorphicMapType_3728 T@Ref T@Field_3780_3781) Bool)
(declare-fun HasDirectPerm_1975_53 (T@PolymorphicMapType_3728 T@Ref T@Field_3767_53) Bool)
(declare-fun HasDirectPerm_1975_1189 (T@PolymorphicMapType_3728 T@Ref T@Field_7094_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3728 T@PolymorphicMapType_3728 T@PolymorphicMapType_3728) Bool)
(declare-fun |level#frame| (T@FrameType T@Ref) Real)
(assert (forall ((Heap0 T@PolymorphicMapType_3707) (Heap1 T@PolymorphicMapType_3707) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3707) (Mask T@PolymorphicMapType_3728) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3707) (Heap1@@0 T@PolymorphicMapType_3707) (Heap2 T@PolymorphicMapType_3707) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_1975_10388) ) (!  (not (select (|PolymorphicMapType_4256_3767_11566#PolymorphicMapType_4256| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4256_3767_11566#PolymorphicMapType_4256| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_1975_10255) ) (!  (not (select (|PolymorphicMapType_4256_3767_10255#PolymorphicMapType_4256| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4256_3767_10255#PolymorphicMapType_4256| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7094_1189) ) (!  (not (select (|PolymorphicMapType_4256_3767_1189#PolymorphicMapType_4256| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4256_3767_1189#PolymorphicMapType_4256| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3780_3781) ) (!  (not (select (|PolymorphicMapType_4256_3767_3781#PolymorphicMapType_4256| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4256_3767_3781#PolymorphicMapType_4256| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3767_53) ) (!  (not (select (|PolymorphicMapType_4256_3767_53#PolymorphicMapType_4256| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4256_3767_53#PolymorphicMapType_4256| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3707) (this T@Ref) ) (! (dummyFunction_645 (|level#triggerStateless| this))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|level'| Heap@@0 this))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3707) (this@@0 T@Ref) ) (!  (and (= (level Heap@@1 this@@0) (|level'| Heap@@1 this@@0)) (dummyFunction_645 (|level#triggerStateless| this@@0)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (level Heap@@1 this@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3707) (ExhaleHeap T@PolymorphicMapType_3707) (Mask@@0 T@PolymorphicMapType_3728) (pm_f_9 T@Field_1975_10255) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_1975_10319 Mask@@0 null pm_f_9) (IsPredicateField_1975_10346 pm_f_9)) (= (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@2) null (PredicateMaskField_1975 pm_f_9)) (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| ExhaleHeap) null (PredicateMaskField_1975 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_1975_10346 pm_f_9) (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| ExhaleHeap) null (PredicateMaskField_1975 pm_f_9)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3707) (ExhaleHeap@@0 T@PolymorphicMapType_3707) (Mask@@1 T@PolymorphicMapType_3728) (pm_f_9@@0 T@Field_1975_10255) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_1975_10319 Mask@@1 null pm_f_9@@0) (IsWandField_1975_12093 pm_f_9@@0)) (= (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@3) null (WandMaskField_1975 pm_f_9@@0)) (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| ExhaleHeap@@0) null (WandMaskField_1975 pm_f_9@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_1975_12093 pm_f_9@@0) (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| ExhaleHeap@@0) null (WandMaskField_1975 pm_f_9@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3707) (ExhaleHeap@@1 T@PolymorphicMapType_3707) (Mask@@2 T@PolymorphicMapType_3728) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@4) o_27 $allocated) (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| ExhaleHeap@@1) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| ExhaleHeap@@1) o_27 $allocated))
)))
(assert (forall ((p T@Field_1975_10255) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3767_3767 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3767_3767 p v_1 p w))
)))
(assert  (not (IsPredicateField_1975_1189 held)))
(assert  (not (IsWandField_1975_1189 held)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3707) (ExhaleHeap@@2 T@PolymorphicMapType_3707) (Mask@@3 T@PolymorphicMapType_3728) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_3728) (o_2@@4 T@Ref) (f_4@@4 T@Field_1975_10388) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_1975_15639 f_4@@4))) (not (IsWandField_1975_15655 f_4@@4))) (<= (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_3728) (o_2@@5 T@Ref) (f_4@@5 T@Field_1975_10255) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_1975_10346 f_4@@5))) (not (IsWandField_1975_12093 f_4@@5))) (<= (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3728) (o_2@@6 T@Ref) (f_4@@6 T@Field_3780_3781) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_1975_3781 f_4@@6))) (not (IsWandField_1975_3781 f_4@@6))) (<= (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3728) (o_2@@7 T@Ref) (f_4@@7 T@Field_3767_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_1975_53 f_4@@7))) (not (IsWandField_1975_53 f_4@@7))) (<= (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3728) (o_2@@8 T@Ref) (f_4@@8 T@Field_7094_1189) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_1975_1189 f_4@@8))) (not (IsWandField_1975_1189 f_4@@8))) (<= (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3728) (o_2@@9 T@Ref) (f_4@@9 T@Field_1975_10388) ) (! (= (HasDirectPerm_1975_16093 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1975_16093 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3728) (o_2@@10 T@Ref) (f_4@@10 T@Field_1975_10255) ) (! (= (HasDirectPerm_1975_10319 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1975_10319 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3728) (o_2@@11 T@Ref) (f_4@@11 T@Field_3780_3781) ) (! (= (HasDirectPerm_1975_3781 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1975_3781 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3728) (o_2@@12 T@Ref) (f_4@@12 T@Field_3767_53) ) (! (= (HasDirectPerm_1975_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1975_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3728) (o_2@@13 T@Ref) (f_4@@13 T@Field_7094_1189) ) (! (= (HasDirectPerm_1975_1189 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1975_1189 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3707) (ExhaleHeap@@3 T@PolymorphicMapType_3707) (Mask@@14 T@PolymorphicMapType_3728) (pm_f_9@@1 T@Field_1975_10255) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_1975_10319 Mask@@14 null pm_f_9@@1) (IsPredicateField_1975_10346 pm_f_9@@1)) (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_3767_53) ) (!  (=> (select (|PolymorphicMapType_4256_3767_53#PolymorphicMapType_4256| (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@6) null (PredicateMaskField_1975 pm_f_9@@1))) o2_9 f_24) (= (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@6) o2_9 f_24) (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| ExhaleHeap@@3) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| ExhaleHeap@@3) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_3780_3781) ) (!  (=> (select (|PolymorphicMapType_4256_3767_3781#PolymorphicMapType_4256| (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@6) null (PredicateMaskField_1975 pm_f_9@@1))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@6) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| ExhaleHeap@@3) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| ExhaleHeap@@3) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_7094_1189) ) (!  (=> (select (|PolymorphicMapType_4256_3767_1189#PolymorphicMapType_4256| (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@6) null (PredicateMaskField_1975 pm_f_9@@1))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@6) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| ExhaleHeap@@3) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| ExhaleHeap@@3) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_1975_10255) ) (!  (=> (select (|PolymorphicMapType_4256_3767_10255#PolymorphicMapType_4256| (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@6) null (PredicateMaskField_1975 pm_f_9@@1))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@6) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| ExhaleHeap@@3) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| ExhaleHeap@@3) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_1975_10388) ) (!  (=> (select (|PolymorphicMapType_4256_3767_11566#PolymorphicMapType_4256| (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@6) null (PredicateMaskField_1975 pm_f_9@@1))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@6) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| ExhaleHeap@@3) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| ExhaleHeap@@3) o2_9@@3 f_24@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (IsPredicateField_1975_10346 pm_f_9@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3707) (ExhaleHeap@@4 T@PolymorphicMapType_3707) (Mask@@15 T@PolymorphicMapType_3728) (pm_f_9@@2 T@Field_1975_10255) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_1975_10319 Mask@@15 null pm_f_9@@2) (IsWandField_1975_12093 pm_f_9@@2)) (and (and (and (and (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_3767_53) ) (!  (=> (select (|PolymorphicMapType_4256_3767_53#PolymorphicMapType_4256| (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@7) null (WandMaskField_1975 pm_f_9@@2))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@7) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| ExhaleHeap@@4) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| ExhaleHeap@@4) o2_9@@4 f_24@@4))
)) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_3780_3781) ) (!  (=> (select (|PolymorphicMapType_4256_3767_3781#PolymorphicMapType_4256| (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@7) null (WandMaskField_1975 pm_f_9@@2))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@7) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| ExhaleHeap@@4) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| ExhaleHeap@@4) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_7094_1189) ) (!  (=> (select (|PolymorphicMapType_4256_3767_1189#PolymorphicMapType_4256| (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@7) null (WandMaskField_1975 pm_f_9@@2))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@7) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| ExhaleHeap@@4) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| ExhaleHeap@@4) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_1975_10255) ) (!  (=> (select (|PolymorphicMapType_4256_3767_10255#PolymorphicMapType_4256| (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@7) null (WandMaskField_1975 pm_f_9@@2))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@7) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| ExhaleHeap@@4) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| ExhaleHeap@@4) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_1975_10388) ) (!  (=> (select (|PolymorphicMapType_4256_3767_11566#PolymorphicMapType_4256| (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@7) null (WandMaskField_1975 pm_f_9@@2))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@7) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| ExhaleHeap@@4) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| ExhaleHeap@@4) o2_9@@8 f_24@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (IsWandField_1975_12093 pm_f_9@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3707) (ExhaleHeap@@5 T@PolymorphicMapType_3707) (Mask@@16 T@PolymorphicMapType_3728) (o_27@@0 T@Ref) (f_24@@9 T@Field_1975_10388) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_1975_16093 Mask@@16 o_27@@0 f_24@@9) (= (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@8) o_27@@0 f_24@@9) (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| ExhaleHeap@@5) o_27@@0 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| ExhaleHeap@@5) o_27@@0 f_24@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3707) (ExhaleHeap@@6 T@PolymorphicMapType_3707) (Mask@@17 T@PolymorphicMapType_3728) (o_27@@1 T@Ref) (f_24@@10 T@Field_1975_10255) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_1975_10319 Mask@@17 o_27@@1 f_24@@10) (= (select (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@9) o_27@@1 f_24@@10) (select (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| ExhaleHeap@@6) o_27@@1 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| ExhaleHeap@@6) o_27@@1 f_24@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3707) (ExhaleHeap@@7 T@PolymorphicMapType_3707) (Mask@@18 T@PolymorphicMapType_3728) (o_27@@2 T@Ref) (f_24@@11 T@Field_3780_3781) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_1975_3781 Mask@@18 o_27@@2 f_24@@11) (= (select (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@10) o_27@@2 f_24@@11) (select (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| ExhaleHeap@@7) o_27@@2 f_24@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| ExhaleHeap@@7) o_27@@2 f_24@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3707) (ExhaleHeap@@8 T@PolymorphicMapType_3707) (Mask@@19 T@PolymorphicMapType_3728) (o_27@@3 T@Ref) (f_24@@12 T@Field_3767_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_1975_53 Mask@@19 o_27@@3 f_24@@12) (= (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@11) o_27@@3 f_24@@12) (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| ExhaleHeap@@8) o_27@@3 f_24@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| ExhaleHeap@@8) o_27@@3 f_24@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3707) (ExhaleHeap@@9 T@PolymorphicMapType_3707) (Mask@@20 T@PolymorphicMapType_3728) (o_27@@4 T@Ref) (f_24@@13 T@Field_7094_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_1975_1189 Mask@@20 o_27@@4 f_24@@13) (= (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@12) o_27@@4 f_24@@13) (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| ExhaleHeap@@9) o_27@@4 f_24@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| ExhaleHeap@@9) o_27@@4 f_24@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_1975_10388) ) (! (= (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_1975_10255) ) (! (= (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_3780_3781) ) (! (= (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_3767_53) ) (! (= (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_7094_1189) ) (! (= (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3728) (SummandMask1 T@PolymorphicMapType_3728) (SummandMask2 T@PolymorphicMapType_3728) (o_2@@19 T@Ref) (f_4@@19 T@Field_1975_10388) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3728) (SummandMask1@@0 T@PolymorphicMapType_3728) (SummandMask2@@0 T@PolymorphicMapType_3728) (o_2@@20 T@Ref) (f_4@@20 T@Field_1975_10255) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3728) (SummandMask1@@1 T@PolymorphicMapType_3728) (SummandMask2@@1 T@PolymorphicMapType_3728) (o_2@@21 T@Ref) (f_4@@21 T@Field_3780_3781) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3728) (SummandMask1@@2 T@PolymorphicMapType_3728) (SummandMask2@@2 T@PolymorphicMapType_3728) (o_2@@22 T@Ref) (f_4@@22 T@Field_3767_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3728) (SummandMask1@@3 T@PolymorphicMapType_3728) (SummandMask2@@3 T@PolymorphicMapType_3728) (o_2@@23 T@Ref) (f_4@@23 T@Field_7094_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3707) (Mask@@21 T@PolymorphicMapType_3728) (this@@1 T@Ref) ) (!  (=> (state Heap@@13 Mask@@21) (= (|level'| Heap@@13 this@@1) (|level#frame| EmptyFrame this@@1)))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@13 Mask@@21) (|level'| Heap@@13 this@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3707) (o_20 T@Ref) (f_31 T@Field_1975_10255) (v T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_3707 (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@14) (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@14) (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@14) (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@14) (store (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@14) o_20 f_31 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3707 (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@14) (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@14) (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@14) (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@14) (store (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@14) o_20 f_31 v)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3707) (o_20@@0 T@Ref) (f_31@@0 T@Field_1975_10388) (v@@0 T@PolymorphicMapType_4256) ) (! (succHeap Heap@@15 (PolymorphicMapType_3707 (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@15) (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@15) (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@15) (store (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@15) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3707 (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@15) (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@15) (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@15) (store (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@15) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3707) (o_20@@1 T@Ref) (f_31@@1 T@Field_7094_1189) (v@@1 Int) ) (! (succHeap Heap@@16 (PolymorphicMapType_3707 (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@16) (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@16) (store (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@16) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@16) (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3707 (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@16) (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@16) (store (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@16) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@16) (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3707) (o_20@@2 T@Ref) (f_31@@2 T@Field_3780_3781) (v@@2 T@Ref) ) (! (succHeap Heap@@17 (PolymorphicMapType_3707 (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@17) (store (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@17) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@17) (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@17) (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3707 (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@17) (store (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@17) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@17) (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@17) (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3707) (o_20@@3 T@Ref) (f_31@@3 T@Field_3767_53) (v@@3 Bool) ) (! (succHeap Heap@@18 (PolymorphicMapType_3707 (store (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@18) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@18) (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@18) (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@18) (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3707 (store (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@18) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@18) (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@18) (|PolymorphicMapType_3707_1975_10432#PolymorphicMapType_3707| Heap@@18) (|PolymorphicMapType_3707_3767_10255#PolymorphicMapType_3707| Heap@@18)))
)))
(assert (forall ((o_20@@4 T@Ref) (f_17 T@Field_3780_3781) (Heap@@19 T@PolymorphicMapType_3707) ) (!  (=> (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@19) o_20@@4 $allocated) (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@19) (select (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@19) o_20@@4 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3707_1850_1851#PolymorphicMapType_3707| Heap@@19) o_20@@4 f_17))
)))
(assert (forall ((p@@1 T@Field_1975_10255) (v_1@@0 T@FrameType) (q T@Field_1975_10255) (w@@0 T@FrameType) (r T@Field_1975_10255) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3767_3767 p@@1 v_1@@0 q w@@0) (InsidePredicate_3767_3767 q w@@0 r u)) (InsidePredicate_3767_3767 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3767_3767 p@@1 v_1@@0 q w@@0) (InsidePredicate_3767_3767 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_3728)
(declare-fun x$1_2 () T@Ref)
(declare-fun Heap@@20 () T@PolymorphicMapType_3707)
(declare-fun to () T@Ref)
(declare-fun this@@2 () T@Ref)
(declare-fun x$0_9 () T@Ref)
(declare-fun x_33 () T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id transfer)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon39_Then_correct true))
(let ((anon38_Then_correct true))
(let ((anon24_correct true))
(let ((anon37_Then_correct  (=> (HasDirectPerm_1975_1189 Mask@0 x$1_2 held) (and (=> (= (ControlFlow 0 21) (- 0 22)) (HasDirectPerm_1975_1189 Mask@0 x$1_2 held)) (=> (HasDirectPerm_1975_1189 Mask@0 x$1_2 held) (and (and (=> (= (ControlFlow 0 21) 19) anon38_Then_correct) (=> (= (ControlFlow 0 21) 20) anon39_Then_correct)) (=> (= (ControlFlow 0 21) 17) anon24_correct)))))))
(let ((anon37_Else_correct  (=> (and (not (HasDirectPerm_1975_1189 Mask@0 x$1_2 held)) (= (ControlFlow 0 18) 17)) anon24_correct)))
(let ((anon36_Else_correct  (=> (= (ControlFlow 0 16) (- 0 15)) (forall ((x$1_1_1 T@Ref) ) (!  (=> (HasDirectPerm_1975_1189 Mask@0 x$1_1_1 held) (< (level Heap@@20 x$1_1_1) (level Heap@@20 to)))
 :qid |stdinbpl.356:15|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| Mask@0) x$1_1_1 held))
 :pattern ( (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@20) x$1_1_1 held))
)))))
(let ((anon32_Else_correct  (and (=> (= (ControlFlow 0 23) (- 0 24)) (forall ((x$0_1 T@Ref) ) (!  (=> (HasDirectPerm_1975_1189 ZeroMask x$0_1 held) (< (level Heap@@20 x$0_1) (level Heap@@20 this@@2)))
 :qid |stdinbpl.321:15|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| ZeroMask) x$0_1 held))
 :pattern ( (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@20) x$0_1 held))
))) (=> (forall ((x$0_1@@0 T@Ref) ) (!  (=> (HasDirectPerm_1975_1189 ZeroMask x$0_1@@0 held) (< (level Heap@@20 x$0_1@@0) (level Heap@@20 this@@2)))
 :qid |stdinbpl.321:15|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| ZeroMask) x$0_1@@0 held))
 :pattern ( (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@20) x$0_1@@0 held))
)) (=> (and (state Heap@@20 ZeroMask) (not (= this@@2 null))) (=> (and (and (= Mask@0 (PolymorphicMapType_3728 (store (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| ZeroMask) this@@2 held (+ (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| ZeroMask) this@@2 held) FullPerm)) (|PolymorphicMapType_3728_1975_53#PolymorphicMapType_3728| ZeroMask) (|PolymorphicMapType_3728_1975_3781#PolymorphicMapType_3728| ZeroMask) (|PolymorphicMapType_3728_1975_10255#PolymorphicMapType_3728| ZeroMask) (|PolymorphicMapType_3728_1975_14510#PolymorphicMapType_3728| ZeroMask))) (state Heap@@20 Mask@0)) (and (state Heap@@20 Mask@0) (state Heap@@20 Mask@0))) (and (and (=> (= (ControlFlow 0 23) 16) anon36_Else_correct) (=> (= (ControlFlow 0 23) 21) anon37_Then_correct)) (=> (= (ControlFlow 0 23) 18) anon37_Else_correct))))))))
(let ((anon35_Then_correct true))
(let ((anon34_Then_correct true))
(let ((anon17_correct true))
(let ((anon33_Then_correct  (=> (HasDirectPerm_1975_1189 ZeroMask x$0_9 held) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_1975_1189 ZeroMask x$0_9 held)) (=> (HasDirectPerm_1975_1189 ZeroMask x$0_9 held) (and (and (=> (= (ControlFlow 0 13) 11) anon34_Then_correct) (=> (= (ControlFlow 0 13) 12) anon35_Then_correct)) (=> (= (ControlFlow 0 13) 9) anon17_correct)))))))
(let ((anon33_Else_correct  (=> (and (not (HasDirectPerm_1975_1189 ZeroMask x$0_9 held)) (= (ControlFlow 0 10) 9)) anon17_correct)))
(let ((anon31_Else_correct  (=> (< (level Heap@@20 this@@2) (level Heap@@20 to)) (=> (and (state Heap@@20 ZeroMask) (state Heap@@20 ZeroMask)) (and (and (=> (= (ControlFlow 0 25) 23) anon32_Else_correct) (=> (= (ControlFlow 0 25) 13) anon33_Then_correct)) (=> (= (ControlFlow 0 25) 10) anon33_Else_correct))))))
(let ((anon31_Then_correct true))
(let ((anon30_Then_correct true))
(let ((anon26_Else_correct  (=> (and (forall ((x_1 T@Ref) ) (!  (=> (HasDirectPerm_1975_1189 ZeroMask x_1 held) (< (level Heap@@20 x_1) (level Heap@@20 this@@2)))
 :qid |stdinbpl.281:20|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_3728_1975_1189#PolymorphicMapType_3728| ZeroMask) x_1 held))
 :pattern ( (select (|PolymorphicMapType_3707_1975_1189#PolymorphicMapType_3707| Heap@@20) x_1 held))
)) (state Heap@@20 ZeroMask)) (and (and (=> (= (ControlFlow 0 26) 7) anon30_Then_correct) (=> (= (ControlFlow 0 26) 8) anon31_Then_correct)) (=> (= (ControlFlow 0 26) 25) anon31_Else_correct)))))
(let ((anon29_Then_correct true))
(let ((anon28_Then_correct true))
(let ((anon6_correct true))
(let ((anon27_Then_correct  (=> (HasDirectPerm_1975_1189 ZeroMask x_33 held) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_1975_1189 ZeroMask x_33 held)) (=> (HasDirectPerm_1975_1189 ZeroMask x_33 held) (and (and (=> (= (ControlFlow 0 5) 3) anon28_Then_correct) (=> (= (ControlFlow 0 5) 4) anon29_Then_correct)) (=> (= (ControlFlow 0 5) 1) anon6_correct)))))))
(let ((anon27_Else_correct  (=> (and (not (HasDirectPerm_1975_1189 ZeroMask x_33 held)) (= (ControlFlow 0 2) 1)) anon6_correct)))
(let ((anon0_correct  (=> (and (state Heap@@20 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@20) this@@2 $allocated)) (and (select (|PolymorphicMapType_3707_1847_53#PolymorphicMapType_3707| Heap@@20) to $allocated) (state Heap@@20 ZeroMask))) (and (and (=> (= (ControlFlow 0 27) 26) anon26_Else_correct) (=> (= (ControlFlow 0 27) 5) anon27_Then_correct)) (=> (= (ControlFlow 0 27) 2) anon27_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 28) 27) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
