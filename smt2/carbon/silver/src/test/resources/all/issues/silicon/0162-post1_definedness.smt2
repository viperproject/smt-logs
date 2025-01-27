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
(declare-sort T@Field_3593_53 0)
(declare-sort T@Field_3606_3607 0)
(declare-sort T@Field_6920_1189 0)
(declare-sort T@Field_1953_9630 0)
(declare-sort T@Field_1953_9497 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3554 0)) (((PolymorphicMapType_3554 (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| (Array T@Ref T@Field_3593_53 Real)) (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| (Array T@Ref T@Field_3606_3607 Real)) (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| (Array T@Ref T@Field_6920_1189 Real)) (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| (Array T@Ref T@Field_1953_9497 Real)) (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| (Array T@Ref T@Field_1953_9630 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4082 0)) (((PolymorphicMapType_4082 (|PolymorphicMapType_4082_3593_53#PolymorphicMapType_4082| (Array T@Ref T@Field_3593_53 Bool)) (|PolymorphicMapType_4082_3593_3607#PolymorphicMapType_4082| (Array T@Ref T@Field_3606_3607 Bool)) (|PolymorphicMapType_4082_3593_1189#PolymorphicMapType_4082| (Array T@Ref T@Field_6920_1189 Bool)) (|PolymorphicMapType_4082_3593_9497#PolymorphicMapType_4082| (Array T@Ref T@Field_1953_9497 Bool)) (|PolymorphicMapType_4082_3593_10808#PolymorphicMapType_4082| (Array T@Ref T@Field_1953_9630 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3533 0)) (((PolymorphicMapType_3533 (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| (Array T@Ref T@Field_3593_53 Bool)) (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| (Array T@Ref T@Field_3606_3607 T@Ref)) (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| (Array T@Ref T@Field_6920_1189 Int)) (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| (Array T@Ref T@Field_1953_9630 T@PolymorphicMapType_4082)) (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| (Array T@Ref T@Field_1953_9497 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3593_53)
(declare-fun x_42 () T@Field_6920_1189)
(declare-fun succHeap (T@PolymorphicMapType_3533 T@PolymorphicMapType_3533) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3533 T@PolymorphicMapType_3533) Bool)
(declare-fun state (T@PolymorphicMapType_3533 T@PolymorphicMapType_3554) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3554) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4082)
(declare-fun |post1'| (T@PolymorphicMapType_3533 T@Ref) Int)
(declare-fun dummyFunction_1418 (Int) Bool)
(declare-fun |post1#triggerStateless| (T@Ref) Int)
(declare-fun |post2'| (T@PolymorphicMapType_3533 T@Ref) Int)
(declare-fun |post2#triggerStateless| (T@Ref) Int)
(declare-fun post1 (T@PolymorphicMapType_3533 T@Ref) Int)
(declare-fun post2 (T@PolymorphicMapType_3533 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3533 T@PolymorphicMapType_3533 T@PolymorphicMapType_3554) Bool)
(declare-fun IsPredicateField_1953_9588 (T@Field_1953_9497) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_1953 (T@Field_1953_9497) T@Field_1953_9630)
(declare-fun HasDirectPerm_1953_9561 (T@PolymorphicMapType_3554 T@Ref T@Field_1953_9497) Bool)
(declare-fun IsWandField_1953_11335 (T@Field_1953_9497) Bool)
(declare-fun WandMaskField_1953 (T@Field_1953_9497) T@Field_1953_9630)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |post2#trigger| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_3533)
(declare-fun ZeroMask () T@PolymorphicMapType_3554)
(declare-fun InsidePredicate_3593_3593 (T@Field_1953_9497 T@FrameType T@Field_1953_9497 T@FrameType) Bool)
(declare-fun IsPredicateField_1953_1189 (T@Field_6920_1189) Bool)
(declare-fun IsWandField_1953_1189 (T@Field_6920_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3593_14893 (T@Field_1953_9630) Bool)
(declare-fun IsWandField_3593_14909 (T@Field_1953_9630) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3593_3607 (T@Field_3606_3607) Bool)
(declare-fun IsWandField_3593_3607 (T@Field_3606_3607) Bool)
(declare-fun IsPredicateField_3593_53 (T@Field_3593_53) Bool)
(declare-fun IsWandField_3593_53 (T@Field_3593_53) Bool)
(declare-fun HasDirectPerm_1953_15347 (T@PolymorphicMapType_3554 T@Ref T@Field_1953_9630) Bool)
(declare-fun HasDirectPerm_1953_3607 (T@PolymorphicMapType_3554 T@Ref T@Field_3606_3607) Bool)
(declare-fun HasDirectPerm_1953_53 (T@PolymorphicMapType_3554 T@Ref T@Field_3593_53) Bool)
(declare-fun HasDirectPerm_1953_1189 (T@PolymorphicMapType_3554 T@Ref T@Field_6920_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3554 T@PolymorphicMapType_3554 T@PolymorphicMapType_3554) Bool)
(declare-fun |post1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |post1#frame| (T@FrameType T@Ref) Int)
(declare-fun |post2#frame| (T@FrameType T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_3533) (Heap1 T@PolymorphicMapType_3533) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3533) (Mask T@PolymorphicMapType_3554) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3533) (Heap1@@0 T@PolymorphicMapType_3533) (Heap2 T@PolymorphicMapType_3533) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_1953_9630) ) (!  (not (select (|PolymorphicMapType_4082_3593_10808#PolymorphicMapType_4082| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4082_3593_10808#PolymorphicMapType_4082| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_1953_9497) ) (!  (not (select (|PolymorphicMapType_4082_3593_9497#PolymorphicMapType_4082| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4082_3593_9497#PolymorphicMapType_4082| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6920_1189) ) (!  (not (select (|PolymorphicMapType_4082_3593_1189#PolymorphicMapType_4082| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4082_3593_1189#PolymorphicMapType_4082| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3606_3607) ) (!  (not (select (|PolymorphicMapType_4082_3593_3607#PolymorphicMapType_4082| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4082_3593_3607#PolymorphicMapType_4082| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3593_53) ) (!  (not (select (|PolymorphicMapType_4082_3593_53#PolymorphicMapType_4082| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4082_3593_53#PolymorphicMapType_4082| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3533) (this T@Ref) ) (! (dummyFunction_1418 (|post1#triggerStateless| this))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|post1'| Heap@@0 this))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3533) (this@@0 T@Ref) ) (! (dummyFunction_1418 (|post2#triggerStateless| this@@0))
 :qid |stdinbpl.272:15|
 :skolemid |28|
 :pattern ( (|post2'| Heap@@1 this@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3533) (this@@1 T@Ref) ) (!  (and (= (post1 Heap@@2 this@@1) (|post1'| Heap@@2 this@@1)) (dummyFunction_1418 (|post1#triggerStateless| this@@1)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (post1 Heap@@2 this@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3533) (this@@2 T@Ref) ) (!  (and (= (post2 Heap@@3 this@@2) (|post2'| Heap@@3 this@@2)) (dummyFunction_1418 (|post2#triggerStateless| this@@2)))
 :qid |stdinbpl.268:15|
 :skolemid |27|
 :pattern ( (post2 Heap@@3 this@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3533) (ExhaleHeap T@PolymorphicMapType_3533) (Mask@@0 T@PolymorphicMapType_3554) (pm_f T@Field_1953_9497) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_1953_9561 Mask@@0 null pm_f) (IsPredicateField_1953_9588 pm_f)) (= (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@4) null (PredicateMaskField_1953 pm_f)) (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| ExhaleHeap) null (PredicateMaskField_1953 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_1953_9588 pm_f) (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| ExhaleHeap) null (PredicateMaskField_1953 pm_f)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3533) (ExhaleHeap@@0 T@PolymorphicMapType_3533) (Mask@@1 T@PolymorphicMapType_3554) (pm_f@@0 T@Field_1953_9497) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_1953_9561 Mask@@1 null pm_f@@0) (IsWandField_1953_11335 pm_f@@0)) (= (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@5) null (WandMaskField_1953 pm_f@@0)) (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| ExhaleHeap@@0) null (WandMaskField_1953 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsWandField_1953_11335 pm_f@@0) (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| ExhaleHeap@@0) null (WandMaskField_1953 pm_f@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3533) (Mask@@2 T@PolymorphicMapType_3554) (this@@3 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@2) (or (< AssumeFunctionsAbove 1) (|post2#trigger| EmptyFrame this@@3))) (=> (not (= this@@3 null)) (and (not (= this@@3 null)) (= (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@6) this@@3 x_42) 0))))
 :qid |stdinbpl.291:15|
 :skolemid |31|
 :pattern ( (state Heap@@6 Mask@@2) (|post2'| Heap@@6 this@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3533) (ExhaleHeap@@1 T@PolymorphicMapType_3533) (Mask@@3 T@PolymorphicMapType_3554) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@7) o_1 $allocated) (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_1953_9497) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3593_3593 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3593_3593 p v_1 p w))
)))
(assert  (not (IsPredicateField_1953_1189 x_42)))
(assert  (not (IsWandField_1953_1189 x_42)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3533) (ExhaleHeap@@2 T@PolymorphicMapType_3533) (Mask@@4 T@PolymorphicMapType_3554) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@8 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_3554) (o_2@@4 T@Ref) (f_4@@4 T@Field_1953_9630) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3593_14893 f_4@@4))) (not (IsWandField_3593_14909 f_4@@4))) (<= (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3554) (o_2@@5 T@Ref) (f_4@@5 T@Field_1953_9497) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_1953_9588 f_4@@5))) (not (IsWandField_1953_11335 f_4@@5))) (<= (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3554) (o_2@@6 T@Ref) (f_4@@6 T@Field_6920_1189) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_1953_1189 f_4@@6))) (not (IsWandField_1953_1189 f_4@@6))) (<= (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3554) (o_2@@7 T@Ref) (f_4@@7 T@Field_3606_3607) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3593_3607 f_4@@7))) (not (IsWandField_3593_3607 f_4@@7))) (<= (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3554) (o_2@@8 T@Ref) (f_4@@8 T@Field_3593_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3593_53 f_4@@8))) (not (IsWandField_3593_53 f_4@@8))) (<= (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3554) (o_2@@9 T@Ref) (f_4@@9 T@Field_1953_9630) ) (! (= (HasDirectPerm_1953_15347 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1953_15347 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3554) (o_2@@10 T@Ref) (f_4@@10 T@Field_1953_9497) ) (! (= (HasDirectPerm_1953_9561 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1953_9561 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3554) (o_2@@11 T@Ref) (f_4@@11 T@Field_3606_3607) ) (! (= (HasDirectPerm_1953_3607 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1953_3607 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3554) (o_2@@12 T@Ref) (f_4@@12 T@Field_3593_53) ) (! (= (HasDirectPerm_1953_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1953_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3554) (o_2@@13 T@Ref) (f_4@@13 T@Field_6920_1189) ) (! (= (HasDirectPerm_1953_1189 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1953_1189 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3533) (ExhaleHeap@@3 T@PolymorphicMapType_3533) (Mask@@15 T@PolymorphicMapType_3554) (pm_f@@1 T@Field_1953_9497) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_1953_9561 Mask@@15 null pm_f@@1) (IsPredicateField_1953_9588 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3593_53) ) (!  (=> (select (|PolymorphicMapType_4082_3593_53#PolymorphicMapType_4082| (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@9) null (PredicateMaskField_1953 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@9) o2 f_2) (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3606_3607) ) (!  (=> (select (|PolymorphicMapType_4082_3593_3607#PolymorphicMapType_4082| (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@9) null (PredicateMaskField_1953 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@9) o2@@0 f_2@@0) (select (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6920_1189) ) (!  (=> (select (|PolymorphicMapType_4082_3593_1189#PolymorphicMapType_4082| (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@9) null (PredicateMaskField_1953 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@9) o2@@1 f_2@@1) (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_1953_9497) ) (!  (=> (select (|PolymorphicMapType_4082_3593_9497#PolymorphicMapType_4082| (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@9) null (PredicateMaskField_1953 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@9) o2@@2 f_2@@2) (select (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_1953_9630) ) (!  (=> (select (|PolymorphicMapType_4082_3593_10808#PolymorphicMapType_4082| (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@9) null (PredicateMaskField_1953 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@9) o2@@3 f_2@@3) (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@15) (IsPredicateField_1953_9588 pm_f@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3533) (ExhaleHeap@@4 T@PolymorphicMapType_3533) (Mask@@16 T@PolymorphicMapType_3554) (pm_f@@2 T@Field_1953_9497) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_1953_9561 Mask@@16 null pm_f@@2) (IsWandField_1953_11335 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3593_53) ) (!  (=> (select (|PolymorphicMapType_4082_3593_53#PolymorphicMapType_4082| (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@10) null (WandMaskField_1953 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@10) o2@@4 f_2@@4) (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3606_3607) ) (!  (=> (select (|PolymorphicMapType_4082_3593_3607#PolymorphicMapType_4082| (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@10) null (WandMaskField_1953 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@10) o2@@5 f_2@@5) (select (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6920_1189) ) (!  (=> (select (|PolymorphicMapType_4082_3593_1189#PolymorphicMapType_4082| (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@10) null (WandMaskField_1953 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@10) o2@@6 f_2@@6) (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_1953_9497) ) (!  (=> (select (|PolymorphicMapType_4082_3593_9497#PolymorphicMapType_4082| (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@10) null (WandMaskField_1953 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@10) o2@@7 f_2@@7) (select (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_1953_9630) ) (!  (=> (select (|PolymorphicMapType_4082_3593_10808#PolymorphicMapType_4082| (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@10) null (WandMaskField_1953 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@10) o2@@8 f_2@@8) (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@16) (IsWandField_1953_11335 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3533) (ExhaleHeap@@5 T@PolymorphicMapType_3533) (Mask@@17 T@PolymorphicMapType_3554) (o_1@@0 T@Ref) (f_2@@9 T@Field_1953_9630) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_1953_15347 Mask@@17 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@11) o_1@@0 f_2@@9) (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3533) (ExhaleHeap@@6 T@PolymorphicMapType_3533) (Mask@@18 T@PolymorphicMapType_3554) (o_1@@1 T@Ref) (f_2@@10 T@Field_1953_9497) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_1953_9561 Mask@@18 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@12) o_1@@1 f_2@@10) (select (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3533) (ExhaleHeap@@7 T@PolymorphicMapType_3533) (Mask@@19 T@PolymorphicMapType_3554) (o_1@@2 T@Ref) (f_2@@11 T@Field_3606_3607) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_1953_3607 Mask@@19 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@13) o_1@@2 f_2@@11) (select (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3533) (ExhaleHeap@@8 T@PolymorphicMapType_3533) (Mask@@20 T@PolymorphicMapType_3554) (o_1@@3 T@Ref) (f_2@@12 T@Field_3593_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_1953_53 Mask@@20 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@14) o_1@@3 f_2@@12) (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3533) (ExhaleHeap@@9 T@PolymorphicMapType_3533) (Mask@@21 T@PolymorphicMapType_3554) (o_1@@4 T@Ref) (f_2@@13 T@Field_6920_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_1953_1189 Mask@@21 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@15) o_1@@4 f_2@@13) (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_1953_9630) ) (! (= (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_1953_9497) ) (! (= (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6920_1189) ) (! (= (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_3606_3607) ) (! (= (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_3593_53) ) (! (= (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3533) (Mask@@22 T@PolymorphicMapType_3554) (this@@4 T@Ref) ) (!  (=> (and (state Heap@@16 Mask@@22) (< AssumeFunctionsAbove 0)) (=> (not (= this@@4 null)) (= (post1 Heap@@16 this@@4) 1)))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@16 Mask@@22) (post1 Heap@@16 this@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3533) (Mask@@23 T@PolymorphicMapType_3554) (this@@5 T@Ref) ) (!  (=> (and (state Heap@@17 Mask@@23) (< AssumeFunctionsAbove 1)) (=> (not (= this@@5 null)) (= (post2 Heap@@17 this@@5) 1)))
 :qid |stdinbpl.278:15|
 :skolemid |29|
 :pattern ( (state Heap@@17 Mask@@23) (post2 Heap@@17 this@@5))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3554) (SummandMask1 T@PolymorphicMapType_3554) (SummandMask2 T@PolymorphicMapType_3554) (o_2@@19 T@Ref) (f_4@@19 T@Field_1953_9630) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3554_3593_13764#PolymorphicMapType_3554| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3554) (SummandMask1@@0 T@PolymorphicMapType_3554) (SummandMask2@@0 T@PolymorphicMapType_3554) (o_2@@20 T@Ref) (f_4@@20 T@Field_1953_9497) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3554_3593_9497#PolymorphicMapType_3554| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3554) (SummandMask1@@1 T@PolymorphicMapType_3554) (SummandMask2@@1 T@PolymorphicMapType_3554) (o_2@@21 T@Ref) (f_4@@21 T@Field_6920_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3554_3593_1189#PolymorphicMapType_3554| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3554) (SummandMask1@@2 T@PolymorphicMapType_3554) (SummandMask2@@2 T@PolymorphicMapType_3554) (o_2@@22 T@Ref) (f_4@@22 T@Field_3606_3607) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3554_3593_3607#PolymorphicMapType_3554| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3554) (SummandMask1@@3 T@PolymorphicMapType_3554) (SummandMask2@@3 T@PolymorphicMapType_3554) (o_2@@23 T@Ref) (f_4@@23 T@Field_3593_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3554_3593_53#PolymorphicMapType_3554| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3533) (Mask@@24 T@PolymorphicMapType_3554) (this@@6 T@Ref) ) (!  (=> (and (state Heap@@18 Mask@@24) (or (< AssumeFunctionsAbove 0) (|post1#trigger| EmptyFrame this@@6))) (=> (not (= this@@6 null)) (= (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@18) this@@6 x_42) 0)))
 :qid |stdinbpl.218:15|
 :skolemid |26|
 :pattern ( (state Heap@@18 Mask@@24) (|post1'| Heap@@18 this@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3533) (Mask@@25 T@PolymorphicMapType_3554) (this@@7 T@Ref) ) (!  (=> (state Heap@@19 Mask@@25) (= (|post1'| Heap@@19 this@@7) (|post1#frame| EmptyFrame this@@7)))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (state Heap@@19 Mask@@25) (|post1'| Heap@@19 this@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3533) (Mask@@26 T@PolymorphicMapType_3554) (this@@8 T@Ref) ) (!  (=> (state Heap@@20 Mask@@26) (= (|post2'| Heap@@20 this@@8) (|post2#frame| EmptyFrame this@@8)))
 :qid |stdinbpl.285:15|
 :skolemid |30|
 :pattern ( (state Heap@@20 Mask@@26) (|post2'| Heap@@20 this@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3533) (o T@Ref) (f_3 T@Field_1953_9497) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_3533 (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@21) (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@21) (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@21) (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@21) (store (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@21) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3533 (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@21) (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@21) (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@21) (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@21) (store (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@21) o f_3 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3533) (o@@0 T@Ref) (f_3@@0 T@Field_1953_9630) (v@@0 T@PolymorphicMapType_4082) ) (! (succHeap Heap@@22 (PolymorphicMapType_3533 (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@22) (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@22) (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@22) (store (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3533 (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@22) (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@22) (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@22) (store (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3533) (o@@1 T@Ref) (f_3@@1 T@Field_6920_1189) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_3533 (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@23) (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@23) (store (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@23) (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3533 (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@23) (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@23) (store (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@23) (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3533) (o@@2 T@Ref) (f_3@@2 T@Field_3606_3607) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_3533 (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@24) (store (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@24) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@24) (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@24) (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3533 (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@24) (store (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@24) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@24) (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@24) (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3533) (o@@3 T@Ref) (f_3@@3 T@Field_3593_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_3533 (store (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@25) (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@25) (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@25) (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3533 (store (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@25) (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@25) (|PolymorphicMapType_3533_1953_9674#PolymorphicMapType_3533| Heap@@25) (|PolymorphicMapType_3533_3593_9497#PolymorphicMapType_3533| Heap@@25)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_3606_3607) (Heap@@26 T@PolymorphicMapType_3533) ) (!  (=> (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@26) o@@4 $allocated) (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@26) (select (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@26) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3533_1828_1829#PolymorphicMapType_3533| Heap@@26) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_1953_9497) (v_1@@0 T@FrameType) (q T@Field_1953_9497) (w@@0 T@FrameType) (r T@Field_1953_9497) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3593_3593 p@@1 v_1@@0 q w@@0) (InsidePredicate_3593_3593 q w@@0 r u)) (InsidePredicate_3593_3593 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3593_3593 p@@1 v_1@@0 q w@@0) (InsidePredicate_3593_3593 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@27 () T@PolymorphicMapType_3533)
(declare-fun this@@9 () T@Ref)
(set-info :boogie-vc-id |post1#definedness|)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (state Heap@@27 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (select (|PolymorphicMapType_3533_1825_53#PolymorphicMapType_3533| Heap@@27) this@@9 $allocated) (= AssumeFunctionsAbove 0)) (and (not (= this@@9 null)) (state Heap@@27 ZeroMask))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_1953_1189 ZeroMask this@@9 x_42)) (=> (HasDirectPerm_1953_1189 ZeroMask this@@9 x_42) (=> (= (ControlFlow 0 2) (- 0 1)) (= (select (|PolymorphicMapType_3533_1953_1189#PolymorphicMapType_3533| Heap@@27) this@@9 x_42) 0))))))))
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
