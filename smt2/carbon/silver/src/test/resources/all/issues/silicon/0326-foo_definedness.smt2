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
(declare-sort T@Field_2884_53 0)
(declare-sort T@Field_2897_2898 0)
(declare-sort T@Field_6211_1189 0)
(declare-sort T@Field_2884_7858 0)
(declare-sort T@Field_2884_7725 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_2845 0)) (((PolymorphicMapType_2845 (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| (Array T@Ref T@Field_2884_53 Real)) (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| (Array T@Ref T@Field_2897_2898 Real)) (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| (Array T@Ref T@Field_6211_1189 Real)) (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| (Array T@Ref T@Field_2884_7725 Real)) (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| (Array T@Ref T@Field_2884_7858 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3373 0)) (((PolymorphicMapType_3373 (|PolymorphicMapType_3373_2884_53#PolymorphicMapType_3373| (Array T@Ref T@Field_2884_53 Bool)) (|PolymorphicMapType_3373_2884_2898#PolymorphicMapType_3373| (Array T@Ref T@Field_2897_2898 Bool)) (|PolymorphicMapType_3373_2884_1189#PolymorphicMapType_3373| (Array T@Ref T@Field_6211_1189 Bool)) (|PolymorphicMapType_3373_2884_7725#PolymorphicMapType_3373| (Array T@Ref T@Field_2884_7725 Bool)) (|PolymorphicMapType_3373_2884_9036#PolymorphicMapType_3373| (Array T@Ref T@Field_2884_7858 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_2824 0)) (((PolymorphicMapType_2824 (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| (Array T@Ref T@Field_2884_53 Bool)) (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| (Array T@Ref T@Field_2897_2898 T@Ref)) (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| (Array T@Ref T@Field_6211_1189 Int)) (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| (Array T@Ref T@Field_2884_7858 T@PolymorphicMapType_3373)) (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| (Array T@Ref T@Field_2884_7725 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_2884_53)
(declare-fun val () T@Field_6211_1189)
(declare-fun succHeap (T@PolymorphicMapType_2824 T@PolymorphicMapType_2824) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_2824 T@PolymorphicMapType_2824) Bool)
(declare-fun state (T@PolymorphicMapType_2824 T@PolymorphicMapType_2845) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_2845) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3373)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_2824 T@PolymorphicMapType_2824 T@PolymorphicMapType_2845) Bool)
(declare-fun IsPredicateField_2884_7816 (T@Field_2884_7725) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2884 (T@Field_2884_7725) T@Field_2884_7858)
(declare-fun HasDirectPerm_2884_7789 (T@PolymorphicMapType_2845 T@Ref T@Field_2884_7725) Bool)
(declare-fun IsWandField_2884_9563 (T@Field_2884_7725) Bool)
(declare-fun WandMaskField_2884 (T@Field_2884_7725) T@Field_2884_7858)
(declare-fun dummyHeap () T@PolymorphicMapType_2824)
(declare-fun ZeroMask () T@PolymorphicMapType_2845)
(declare-fun InsidePredicate_2884_2884 (T@Field_2884_7725 T@FrameType T@Field_2884_7725 T@FrameType) Bool)
(declare-fun IsPredicateField_1555_1189 (T@Field_6211_1189) Bool)
(declare-fun IsWandField_1555_1189 (T@Field_6211_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2884_13121 (T@Field_2884_7858) Bool)
(declare-fun IsWandField_2884_13137 (T@Field_2884_7858) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2884_2898 (T@Field_2897_2898) Bool)
(declare-fun IsWandField_2884_2898 (T@Field_2897_2898) Bool)
(declare-fun IsPredicateField_2884_53 (T@Field_2884_53) Bool)
(declare-fun IsWandField_2884_53 (T@Field_2884_53) Bool)
(declare-fun HasDirectPerm_2884_13575 (T@PolymorphicMapType_2845 T@Ref T@Field_2884_7858) Bool)
(declare-fun HasDirectPerm_2884_1189 (T@PolymorphicMapType_2845 T@Ref T@Field_6211_1189) Bool)
(declare-fun HasDirectPerm_2884_2898 (T@PolymorphicMapType_2845 T@Ref T@Field_2897_2898) Bool)
(declare-fun HasDirectPerm_2884_53 (T@PolymorphicMapType_2845 T@Ref T@Field_2884_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_2845 T@PolymorphicMapType_2845 T@PolymorphicMapType_2845) Bool)
(declare-fun |foo'| (T@PolymorphicMapType_2824) Bool)
(declare-fun |foo#frame| (T@FrameType) Bool)
(declare-fun dummyFunction_1299 (Bool) Bool)
(declare-fun |foo#triggerStateless| () Bool)
(declare-fun foo_2 (T@PolymorphicMapType_2824) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_2824) (Heap1 T@PolymorphicMapType_2824) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_2824) (Mask T@PolymorphicMapType_2845) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_2824) (Heap1@@0 T@PolymorphicMapType_2824) (Heap2 T@PolymorphicMapType_2824) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2884_7858) ) (!  (not (select (|PolymorphicMapType_3373_2884_9036#PolymorphicMapType_3373| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3373_2884_9036#PolymorphicMapType_3373| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2884_7725) ) (!  (not (select (|PolymorphicMapType_3373_2884_7725#PolymorphicMapType_3373| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3373_2884_7725#PolymorphicMapType_3373| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6211_1189) ) (!  (not (select (|PolymorphicMapType_3373_2884_1189#PolymorphicMapType_3373| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3373_2884_1189#PolymorphicMapType_3373| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_2897_2898) ) (!  (not (select (|PolymorphicMapType_3373_2884_2898#PolymorphicMapType_3373| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3373_2884_2898#PolymorphicMapType_3373| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_2884_53) ) (!  (not (select (|PolymorphicMapType_3373_2884_53#PolymorphicMapType_3373| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3373_2884_53#PolymorphicMapType_3373| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_2824) (ExhaleHeap T@PolymorphicMapType_2824) (Mask@@0 T@PolymorphicMapType_2845) (pm_f_2 T@Field_2884_7725) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2884_7789 Mask@@0 null pm_f_2) (IsPredicateField_2884_7816 pm_f_2)) (= (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@0) null (PredicateMaskField_2884 pm_f_2)) (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| ExhaleHeap) null (PredicateMaskField_2884 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2884_7816 pm_f_2) (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| ExhaleHeap) null (PredicateMaskField_2884 pm_f_2)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_2824) (ExhaleHeap@@0 T@PolymorphicMapType_2824) (Mask@@1 T@PolymorphicMapType_2845) (pm_f_2@@0 T@Field_2884_7725) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2884_7789 Mask@@1 null pm_f_2@@0) (IsWandField_2884_9563 pm_f_2@@0)) (= (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@1) null (WandMaskField_2884 pm_f_2@@0)) (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| ExhaleHeap@@0) null (WandMaskField_2884 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2884_9563 pm_f_2@@0) (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| ExhaleHeap@@0) null (WandMaskField_2884 pm_f_2@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_2824) (ExhaleHeap@@1 T@PolymorphicMapType_2824) (Mask@@2 T@PolymorphicMapType_2845) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@2) o_6 $allocated) (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| ExhaleHeap@@1) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| ExhaleHeap@@1) o_6 $allocated))
)))
(assert (forall ((p T@Field_2884_7725) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_2884_2884 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2884_2884 p v_1 p w))
)))
(assert  (not (IsPredicateField_1555_1189 val)))
(assert  (not (IsWandField_1555_1189 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_2824) (ExhaleHeap@@2 T@PolymorphicMapType_2824) (Mask@@3 T@PolymorphicMapType_2845) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_2845) (o_2@@4 T@Ref) (f_4@@4 T@Field_2884_7858) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_2884_13121 f_4@@4))) (not (IsWandField_2884_13137 f_4@@4))) (<= (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_2845) (o_2@@5 T@Ref) (f_4@@5 T@Field_2884_7725) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2884_7816 f_4@@5))) (not (IsWandField_2884_9563 f_4@@5))) (<= (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_2845) (o_2@@6 T@Ref) (f_4@@6 T@Field_6211_1189) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_1555_1189 f_4@@6))) (not (IsWandField_1555_1189 f_4@@6))) (<= (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_2845) (o_2@@7 T@Ref) (f_4@@7 T@Field_2897_2898) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2884_2898 f_4@@7))) (not (IsWandField_2884_2898 f_4@@7))) (<= (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_2845) (o_2@@8 T@Ref) (f_4@@8 T@Field_2884_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2884_53 f_4@@8))) (not (IsWandField_2884_53 f_4@@8))) (<= (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_2845) (o_2@@9 T@Ref) (f_4@@9 T@Field_2884_7858) ) (! (= (HasDirectPerm_2884_13575 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2884_13575 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_2845) (o_2@@10 T@Ref) (f_4@@10 T@Field_2884_7725) ) (! (= (HasDirectPerm_2884_7789 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2884_7789 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_2845) (o_2@@11 T@Ref) (f_4@@11 T@Field_6211_1189) ) (! (= (HasDirectPerm_2884_1189 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2884_1189 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_2845) (o_2@@12 T@Ref) (f_4@@12 T@Field_2897_2898) ) (! (= (HasDirectPerm_2884_2898 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2884_2898 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_2845) (o_2@@13 T@Ref) (f_4@@13 T@Field_2884_53) ) (! (= (HasDirectPerm_2884_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2884_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_2824) (ExhaleHeap@@3 T@PolymorphicMapType_2824) (Mask@@14 T@PolymorphicMapType_2845) (pm_f_2@@1 T@Field_2884_7725) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_2884_7789 Mask@@14 null pm_f_2@@1) (IsPredicateField_2884_7816 pm_f_2@@1)) (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_2884_53) ) (!  (=> (select (|PolymorphicMapType_3373_2884_53#PolymorphicMapType_3373| (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@4) null (PredicateMaskField_2884 pm_f_2@@1))) o2_2 f_9) (= (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@4) o2_2 f_9) (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| ExhaleHeap@@3) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| ExhaleHeap@@3) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_2897_2898) ) (!  (=> (select (|PolymorphicMapType_3373_2884_2898#PolymorphicMapType_3373| (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@4) null (PredicateMaskField_2884 pm_f_2@@1))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@4) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| ExhaleHeap@@3) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| ExhaleHeap@@3) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_6211_1189) ) (!  (=> (select (|PolymorphicMapType_3373_2884_1189#PolymorphicMapType_3373| (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@4) null (PredicateMaskField_2884 pm_f_2@@1))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@4) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| ExhaleHeap@@3) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| ExhaleHeap@@3) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_2884_7725) ) (!  (=> (select (|PolymorphicMapType_3373_2884_7725#PolymorphicMapType_3373| (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@4) null (PredicateMaskField_2884 pm_f_2@@1))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@4) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| ExhaleHeap@@3) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| ExhaleHeap@@3) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_2884_7858) ) (!  (=> (select (|PolymorphicMapType_3373_2884_9036#PolymorphicMapType_3373| (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@4) null (PredicateMaskField_2884 pm_f_2@@1))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@4) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| ExhaleHeap@@3) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| ExhaleHeap@@3) o2_2@@3 f_9@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_2884_7816 pm_f_2@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_2824) (ExhaleHeap@@4 T@PolymorphicMapType_2824) (Mask@@15 T@PolymorphicMapType_2845) (pm_f_2@@2 T@Field_2884_7725) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_2884_7789 Mask@@15 null pm_f_2@@2) (IsWandField_2884_9563 pm_f_2@@2)) (and (and (and (and (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_2884_53) ) (!  (=> (select (|PolymorphicMapType_3373_2884_53#PolymorphicMapType_3373| (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@5) null (WandMaskField_2884 pm_f_2@@2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@5) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| ExhaleHeap@@4) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| ExhaleHeap@@4) o2_2@@4 f_9@@4))
)) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_2897_2898) ) (!  (=> (select (|PolymorphicMapType_3373_2884_2898#PolymorphicMapType_3373| (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@5) null (WandMaskField_2884 pm_f_2@@2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@5) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| ExhaleHeap@@4) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| ExhaleHeap@@4) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_6211_1189) ) (!  (=> (select (|PolymorphicMapType_3373_2884_1189#PolymorphicMapType_3373| (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@5) null (WandMaskField_2884 pm_f_2@@2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@5) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| ExhaleHeap@@4) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| ExhaleHeap@@4) o2_2@@6 f_9@@6))
))) (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_2884_7725) ) (!  (=> (select (|PolymorphicMapType_3373_2884_7725#PolymorphicMapType_3373| (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@5) null (WandMaskField_2884 pm_f_2@@2))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@5) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| ExhaleHeap@@4) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| ExhaleHeap@@4) o2_2@@7 f_9@@7))
))) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_2884_7858) ) (!  (=> (select (|PolymorphicMapType_3373_2884_9036#PolymorphicMapType_3373| (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@5) null (WandMaskField_2884 pm_f_2@@2))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@5) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| ExhaleHeap@@4) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| ExhaleHeap@@4) o2_2@@8 f_9@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_2884_9563 pm_f_2@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_2824) (ExhaleHeap@@5 T@PolymorphicMapType_2824) (Mask@@16 T@PolymorphicMapType_2845) (o_6@@0 T@Ref) (f_9@@9 T@Field_2884_7858) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_2884_13575 Mask@@16 o_6@@0 f_9@@9) (= (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@6) o_6@@0 f_9@@9) (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| ExhaleHeap@@5) o_6@@0 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| ExhaleHeap@@5) o_6@@0 f_9@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_2824) (ExhaleHeap@@6 T@PolymorphicMapType_2824) (Mask@@17 T@PolymorphicMapType_2845) (o_6@@1 T@Ref) (f_9@@10 T@Field_2884_7725) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_2884_7789 Mask@@17 o_6@@1 f_9@@10) (= (select (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@7) o_6@@1 f_9@@10) (select (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| ExhaleHeap@@6) o_6@@1 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| ExhaleHeap@@6) o_6@@1 f_9@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_2824) (ExhaleHeap@@7 T@PolymorphicMapType_2824) (Mask@@18 T@PolymorphicMapType_2845) (o_6@@2 T@Ref) (f_9@@11 T@Field_6211_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_2884_1189 Mask@@18 o_6@@2 f_9@@11) (= (select (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@8) o_6@@2 f_9@@11) (select (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| ExhaleHeap@@7) o_6@@2 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| ExhaleHeap@@7) o_6@@2 f_9@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_2824) (ExhaleHeap@@8 T@PolymorphicMapType_2824) (Mask@@19 T@PolymorphicMapType_2845) (o_6@@3 T@Ref) (f_9@@12 T@Field_2897_2898) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_2884_2898 Mask@@19 o_6@@3 f_9@@12) (= (select (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@9) o_6@@3 f_9@@12) (select (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| ExhaleHeap@@8) o_6@@3 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| ExhaleHeap@@8) o_6@@3 f_9@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_2824) (ExhaleHeap@@9 T@PolymorphicMapType_2824) (Mask@@20 T@PolymorphicMapType_2845) (o_6@@4 T@Ref) (f_9@@13 T@Field_2884_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_2884_53 Mask@@20 o_6@@4 f_9@@13) (= (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@10) o_6@@4 f_9@@13) (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| ExhaleHeap@@9) o_6@@4 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| ExhaleHeap@@9) o_6@@4 f_9@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2884_7858) ) (! (= (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2884_7725) ) (! (= (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6211_1189) ) (! (= (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_2897_2898) ) (! (= (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_2884_53) ) (! (= (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_2845) (SummandMask1 T@PolymorphicMapType_2845) (SummandMask2 T@PolymorphicMapType_2845) (o_2@@19 T@Ref) (f_4@@19 T@Field_2884_7858) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2845_2884_11992#PolymorphicMapType_2845| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_2845) (SummandMask1@@0 T@PolymorphicMapType_2845) (SummandMask2@@0 T@PolymorphicMapType_2845) (o_2@@20 T@Ref) (f_4@@20 T@Field_2884_7725) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2845_2884_7725#PolymorphicMapType_2845| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_2845) (SummandMask1@@1 T@PolymorphicMapType_2845) (SummandMask2@@1 T@PolymorphicMapType_2845) (o_2@@21 T@Ref) (f_4@@21 T@Field_6211_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2845_2884_1189#PolymorphicMapType_2845| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_2845) (SummandMask1@@2 T@PolymorphicMapType_2845) (SummandMask2@@2 T@PolymorphicMapType_2845) (o_2@@22 T@Ref) (f_4@@22 T@Field_2897_2898) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2845_2884_2898#PolymorphicMapType_2845| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_2845) (SummandMask1@@3 T@PolymorphicMapType_2845) (SummandMask2@@3 T@PolymorphicMapType_2845) (o_2@@23 T@Ref) (f_4@@23 T@Field_2884_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_2845_2884_53#PolymorphicMapType_2845| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_2824) (Mask@@21 T@PolymorphicMapType_2845) ) (!  (=> (state Heap@@11 Mask@@21) (= (|foo'| Heap@@11) (|foo#frame| EmptyFrame)))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@11 Mask@@21) (|foo'| Heap@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_2824) ) (! (dummyFunction_1299 |foo#triggerStateless|)
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|foo'| Heap@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_2824) (o_5 T@Ref) (f_10 T@Field_2884_7725) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_2824 (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@13) (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@13) (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@13) (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@13) (store (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@13) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2824 (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@13) (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@13) (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@13) (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@13) (store (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@13) o_5 f_10 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_2824) (o_5@@0 T@Ref) (f_10@@0 T@Field_2884_7858) (v@@0 T@PolymorphicMapType_3373) ) (! (succHeap Heap@@14 (PolymorphicMapType_2824 (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@14) (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@14) (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@14) (store (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@14) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2824 (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@14) (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@14) (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@14) (store (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@14) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_2824) (o_5@@1 T@Ref) (f_10@@1 T@Field_6211_1189) (v@@1 Int) ) (! (succHeap Heap@@15 (PolymorphicMapType_2824 (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@15) (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@15) (store (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@15) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@15) (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2824 (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@15) (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@15) (store (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@15) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@15) (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_2824) (o_5@@2 T@Ref) (f_10@@2 T@Field_2897_2898) (v@@2 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_2824 (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@16) (store (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@16) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@16) (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@16) (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2824 (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@16) (store (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@16) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@16) (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@16) (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_2824) (o_5@@3 T@Ref) (f_10@@3 T@Field_2884_53) (v@@3 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_2824 (store (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@17) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@17) (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@17) (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@17) (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2824 (store (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@17) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@17) (|PolymorphicMapType_2824_2884_1189#PolymorphicMapType_2824| Heap@@17) (|PolymorphicMapType_2824_2884_7902#PolymorphicMapType_2824| Heap@@17) (|PolymorphicMapType_2824_2884_7725#PolymorphicMapType_2824| Heap@@17)))
)))
(assert (forall ((o_5@@4 T@Ref) (f_3 T@Field_2897_2898) (Heap@@18 T@PolymorphicMapType_2824) ) (!  (=> (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@18) o_5@@4 $allocated) (select (|PolymorphicMapType_2824_1427_53#PolymorphicMapType_2824| Heap@@18) (select (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@18) o_5@@4 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_2824_1430_1431#PolymorphicMapType_2824| Heap@@18) o_5@@4 f_3))
)))
(assert (forall ((p@@1 T@Field_2884_7725) (v_1@@0 T@FrameType) (q T@Field_2884_7725) (w@@0 T@FrameType) (r T@Field_2884_7725) (u T@FrameType) ) (!  (=> (and (InsidePredicate_2884_2884 p@@1 v_1@@0 q w@@0) (InsidePredicate_2884_2884 q w@@0 r u)) (InsidePredicate_2884_2884 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2884_2884 p@@1 v_1@@0 q w@@0) (InsidePredicate_2884_2884 q w@@0 r u))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_2824) ) (!  (and (= (foo_2 Heap@@19) (|foo'| Heap@@19)) (dummyFunction_1299 |foo#triggerStateless|))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (foo_2 Heap@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 4) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
