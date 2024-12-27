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
(declare-sort T@Field_6162_53 0)
(declare-sort T@Field_6175_6176 0)
(declare-sort T@Field_10411_10412 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9613_1273 0)
(declare-sort T@Field_10424_10429 0)
(declare-sort T@Field_3264_3283 0)
(declare-sort T@Field_3264_10429 0)
(declare-sort T@Field_3282_3265 0)
(declare-sort T@Field_3282_53 0)
(declare-sort T@Field_3282_1273 0)
(declare-datatypes ((T@PolymorphicMapType_6123 0)) (((PolymorphicMapType_6123 (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| (Array T@Ref T@Field_6175_6176 Real)) (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| (Array T@Ref T@Field_9613_1273 Real)) (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| (Array T@Ref T@Field_10411_10412 Real)) (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| (Array T@Ref T@Field_3264_3283 Real)) (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| (Array T@Ref T@Field_6162_53 Real)) (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| (Array T@Ref T@Field_3264_10429 Real)) (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| (Array T@Ref T@Field_3282_3265 Real)) (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| (Array T@Ref T@Field_3282_1273 Real)) (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| (Array T@Ref T@Field_3282_53 Real)) (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| (Array T@Ref T@Field_10424_10429 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6651 0)) (((PolymorphicMapType_6651 (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| (Array T@Ref T@Field_6175_6176 Bool)) (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| (Array T@Ref T@Field_9613_1273 Bool)) (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| (Array T@Ref T@Field_6162_53 Bool)) (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| (Array T@Ref T@Field_3264_3283 Bool)) (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| (Array T@Ref T@Field_3264_10429 Bool)) (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| (Array T@Ref T@Field_3282_3265 Bool)) (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| (Array T@Ref T@Field_3282_1273 Bool)) (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| (Array T@Ref T@Field_3282_53 Bool)) (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| (Array T@Ref T@Field_10411_10412 Bool)) (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| (Array T@Ref T@Field_10424_10429 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6102 0)) (((PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| (Array T@Ref T@Field_6162_53 Bool)) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| (Array T@Ref T@Field_6175_6176 T@Ref)) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| (Array T@Ref T@Field_10411_10412 T@FrameType)) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| (Array T@Ref T@Field_9613_1273 Int)) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| (Array T@Ref T@Field_10424_10429 T@PolymorphicMapType_6651)) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| (Array T@Ref T@Field_3264_3283 T@FrameType)) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| (Array T@Ref T@Field_3264_10429 T@PolymorphicMapType_6651)) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| (Array T@Ref T@Field_3282_3265 T@Ref)) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| (Array T@Ref T@Field_3282_53 Bool)) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| (Array T@Ref T@Field_3282_1273 Int)) ) ) ))
(declare-fun $allocated () T@Field_6162_53)
(declare-fun next () T@Field_6175_6176)
(declare-fun value () T@Field_9613_1273)
(declare-fun succHeap (T@PolymorphicMapType_6102 T@PolymorphicMapType_6102) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6102 T@PolymorphicMapType_6102) Bool)
(declare-fun state (T@PolymorphicMapType_6102 T@PolymorphicMapType_6123) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6123) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6651)
(declare-fun list (T@Ref) T@Field_10411_10412)
(declare-fun IsPredicateField_3282_3283 (T@Field_10411_10412) Bool)
(declare-fun |factorialPure'| (T@PolymorphicMapType_6102 Int) Int)
(declare-fun dummyFunction_1470 (Int) Bool)
(declare-fun |factorialPure#triggerStateless| (Int) Int)
(declare-fun |list#trigger_3282| (T@PolymorphicMapType_6102 T@Field_10411_10412) Bool)
(declare-fun |list#everUsed_3282| (T@Field_10411_10412) Bool)
(declare-fun factorialPure (T@PolymorphicMapType_6102 Int) Int)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6102 T@PolymorphicMapType_6102 T@PolymorphicMapType_6123) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3282 (T@Field_10411_10412) T@Field_10424_10429)
(declare-fun HasDirectPerm_3282_3283 (T@PolymorphicMapType_6123 T@Ref T@Field_10411_10412) Bool)
(declare-fun IsPredicateField_3264_21240 (T@Field_3264_3283) Bool)
(declare-fun PredicateMaskField_3264 (T@Field_3264_3283) T@Field_3264_10429)
(declare-fun HasDirectPerm_3264_3283 (T@PolymorphicMapType_6123 T@Ref T@Field_3264_3283) Bool)
(declare-fun IsWandField_3282_24910 (T@Field_10411_10412) Bool)
(declare-fun WandMaskField_3282 (T@Field_10411_10412) T@Field_10424_10429)
(declare-fun IsWandField_3264_24553 (T@Field_3264_3283) Bool)
(declare-fun WandMaskField_3264 (T@Field_3264_3283) T@Field_3264_10429)
(declare-fun |list#sm| (T@Ref) T@Field_10424_10429)
(declare-fun dummyHeap () T@PolymorphicMapType_6102)
(declare-fun ZeroMask () T@PolymorphicMapType_6123)
(declare-fun InsidePredicate_6162_6162 (T@Field_3264_3283 T@FrameType T@Field_3264_3283 T@FrameType) Bool)
(declare-fun InsidePredicate_3282_3282 (T@Field_10411_10412 T@FrameType T@Field_10411_10412 T@FrameType) Bool)
(declare-fun IsPredicateField_3264_3265 (T@Field_6175_6176) Bool)
(declare-fun IsWandField_3264_3265 (T@Field_6175_6176) Bool)
(declare-fun IsPredicateField_3267_1273 (T@Field_9613_1273) Bool)
(declare-fun IsWandField_3267_1273 (T@Field_9613_1273) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3282_31813 (T@Field_10424_10429) Bool)
(declare-fun IsWandField_3282_31829 (T@Field_10424_10429) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3282_53 (T@Field_3282_53) Bool)
(declare-fun IsWandField_3282_53 (T@Field_3282_53) Bool)
(declare-fun IsPredicateField_3282_1273 (T@Field_3282_1273) Bool)
(declare-fun IsWandField_3282_1273 (T@Field_3282_1273) Bool)
(declare-fun IsPredicateField_3282_3265 (T@Field_3282_3265) Bool)
(declare-fun IsWandField_3282_3265 (T@Field_3282_3265) Bool)
(declare-fun IsPredicateField_3264_30982 (T@Field_3264_10429) Bool)
(declare-fun IsWandField_3264_30998 (T@Field_3264_10429) Bool)
(declare-fun IsPredicateField_3264_53 (T@Field_6162_53) Bool)
(declare-fun IsWandField_3264_53 (T@Field_6162_53) Bool)
(declare-fun HasDirectPerm_3282_20995 (T@PolymorphicMapType_6123 T@Ref T@Field_10424_10429) Bool)
(declare-fun HasDirectPerm_3282_1273 (T@PolymorphicMapType_6123 T@Ref T@Field_3282_1273) Bool)
(declare-fun HasDirectPerm_3282_53 (T@PolymorphicMapType_6123 T@Ref T@Field_3282_53) Bool)
(declare-fun HasDirectPerm_3282_3265 (T@PolymorphicMapType_6123 T@Ref T@Field_3282_3265) Bool)
(declare-fun HasDirectPerm_3264_19854 (T@PolymorphicMapType_6123 T@Ref T@Field_3264_10429) Bool)
(declare-fun HasDirectPerm_3264_1273 (T@PolymorphicMapType_6123 T@Ref T@Field_9613_1273) Bool)
(declare-fun HasDirectPerm_3264_53 (T@PolymorphicMapType_6123 T@Ref T@Field_6162_53) Bool)
(declare-fun HasDirectPerm_3264_3265 (T@PolymorphicMapType_6123 T@Ref T@Field_6175_6176) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6123 T@PolymorphicMapType_6123 T@PolymorphicMapType_6123) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun getPredWandId_3282_3283 (T@Field_10411_10412) Int)
(declare-fun |factorialPure#frame| (T@FrameType Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun InsidePredicate_6162_3282 (T@Field_3264_3283 T@FrameType T@Field_10411_10412 T@FrameType) Bool)
(declare-fun InsidePredicate_3282_6162 (T@Field_10411_10412 T@FrameType T@Field_3264_3283 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6102) (Heap1 T@PolymorphicMapType_6102) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6102) (Mask T@PolymorphicMapType_6123) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6102) (Heap1@@0 T@PolymorphicMapType_6102) (Heap2 T@PolymorphicMapType_6102) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10424_10429) ) (!  (not (select (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10411_10412) ) (!  (not (select (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3282_53) ) (!  (not (select (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3282_1273) ) (!  (not (select (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3282_3265) ) (!  (not (select (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3264_10429) ) (!  (not (select (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3264_3283) ) (!  (not (select (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6162_53) ) (!  (not (select (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9613_1273) ) (!  (not (select (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_6175_6176) ) (!  (not (select (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_3282_3283 (list self))
 :qid |stdinbpl.308:15|
 :skolemid |29|
 :pattern ( (list self))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6102) (n Int) ) (! (dummyFunction_1470 (|factorialPure#triggerStateless| n))
 :qid |stdinbpl.233:15|
 :skolemid |25|
 :pattern ( (|factorialPure'| Heap@@0 n))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6102) (self@@0 T@Ref) ) (! (|list#everUsed_3282| (list self@@0))
 :qid |stdinbpl.327:15|
 :skolemid |33|
 :pattern ( (|list#trigger_3282| Heap@@1 (list self@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6102) (n@@0 Int) ) (!  (and (= (factorialPure Heap@@2 n@@0) (|factorialPure'| Heap@@2 n@@0)) (dummyFunction_1470 (|factorialPure#triggerStateless| n@@0)))
 :qid |stdinbpl.229:15|
 :skolemid |24|
 :pattern ( (factorialPure Heap@@2 n@@0))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6102) (ExhaleHeap T@PolymorphicMapType_6102) (Mask@@0 T@PolymorphicMapType_6123) (pm_f_5 T@Field_10411_10412) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3282_3283 Mask@@0 null pm_f_5) (IsPredicateField_3282_3283 pm_f_5)) (= (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@3) null (PredicateMaskField_3282 pm_f_5)) (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap) null (PredicateMaskField_3282 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_3282_3283 pm_f_5) (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap) null (PredicateMaskField_3282 pm_f_5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6102) (ExhaleHeap@@0 T@PolymorphicMapType_6102) (Mask@@1 T@PolymorphicMapType_6123) (pm_f_5@@0 T@Field_3264_3283) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3264_3283 Mask@@1 null pm_f_5@@0) (IsPredicateField_3264_21240 pm_f_5@@0)) (= (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@4) null (PredicateMaskField_3264 pm_f_5@@0)) (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@0) null (PredicateMaskField_3264 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3264_21240 pm_f_5@@0) (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@0) null (PredicateMaskField_3264 pm_f_5@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6102) (ExhaleHeap@@1 T@PolymorphicMapType_6102) (Mask@@2 T@PolymorphicMapType_6123) (pm_f_5@@1 T@Field_10411_10412) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3282_3283 Mask@@2 null pm_f_5@@1) (IsWandField_3282_24910 pm_f_5@@1)) (= (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@5) null (WandMaskField_3282 pm_f_5@@1)) (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@1) null (WandMaskField_3282 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsWandField_3282_24910 pm_f_5@@1) (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@1) null (WandMaskField_3282 pm_f_5@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6102) (ExhaleHeap@@2 T@PolymorphicMapType_6102) (Mask@@3 T@PolymorphicMapType_6123) (pm_f_5@@2 T@Field_3264_3283) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3264_3283 Mask@@3 null pm_f_5@@2) (IsWandField_3264_24553 pm_f_5@@2)) (= (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@6) null (WandMaskField_3264 pm_f_5@@2)) (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@2) null (WandMaskField_3264 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_3264_24553 pm_f_5@@2) (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@2) null (WandMaskField_3264 pm_f_5@@2)))
)))
(assert (forall ((self@@1 T@Ref) (self2 T@Ref) ) (!  (=> (= (list self@@1) (list self2)) (= self@@1 self2))
 :qid |stdinbpl.318:15|
 :skolemid |31|
 :pattern ( (list self@@1) (list self2))
)))
(assert (forall ((self@@2 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|list#sm| self@@2) (|list#sm| self2@@0)) (= self@@2 self2@@0))
 :qid |stdinbpl.322:15|
 :skolemid |32|
 :pattern ( (|list#sm| self@@2) (|list#sm| self2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6102) (ExhaleHeap@@3 T@PolymorphicMapType_6102) (Mask@@4 T@PolymorphicMapType_6123) (pm_f_5@@3 T@Field_10411_10412) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_3282_3283 Mask@@4 null pm_f_5@@3) (IsPredicateField_3282_3283 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_6175_6176) ) (!  (=> (select (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@7) null (PredicateMaskField_3282 pm_f_5@@3))) o2_5 f_16) (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@7) o2_5 f_16) (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_9613_1273) ) (!  (=> (select (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@7) null (PredicateMaskField_3282 pm_f_5@@3))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@7) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_6162_53) ) (!  (=> (select (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@7) null (PredicateMaskField_3282 pm_f_5@@3))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@7) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_3264_3283) ) (!  (=> (select (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@7) null (PredicateMaskField_3282 pm_f_5@@3))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@7) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_3264_10429) ) (!  (=> (select (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@7) null (PredicateMaskField_3282 pm_f_5@@3))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@7) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_3282_3265) ) (!  (=> (select (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@7) null (PredicateMaskField_3282 pm_f_5@@3))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@7) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_3282_1273) ) (!  (=> (select (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@7) null (PredicateMaskField_3282 pm_f_5@@3))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@7) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_3282_53) ) (!  (=> (select (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@7) null (PredicateMaskField_3282 pm_f_5@@3))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@7) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_10411_10412) ) (!  (=> (select (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@7) null (PredicateMaskField_3282 pm_f_5@@3))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@7) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_10424_10429) ) (!  (=> (select (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@7) null (PredicateMaskField_3282 pm_f_5@@3))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@7) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@3) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3282_3283 pm_f_5@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6102) (ExhaleHeap@@4 T@PolymorphicMapType_6102) (Mask@@5 T@PolymorphicMapType_6123) (pm_f_5@@4 T@Field_3264_3283) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3264_3283 Mask@@5 null pm_f_5@@4) (IsPredicateField_3264_21240 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_6175_6176) ) (!  (=> (select (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@8) null (PredicateMaskField_3264 pm_f_5@@4))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@8) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@9 f_16@@9))
)) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_9613_1273) ) (!  (=> (select (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@8) null (PredicateMaskField_3264 pm_f_5@@4))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@8) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_6162_53) ) (!  (=> (select (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@8) null (PredicateMaskField_3264 pm_f_5@@4))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@8) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_3264_3283) ) (!  (=> (select (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@8) null (PredicateMaskField_3264 pm_f_5@@4))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@8) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_3264_10429) ) (!  (=> (select (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@8) null (PredicateMaskField_3264 pm_f_5@@4))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@8) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_3282_3265) ) (!  (=> (select (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@8) null (PredicateMaskField_3264 pm_f_5@@4))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@8) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@14 f_16@@14))
))) (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_3282_1273) ) (!  (=> (select (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@8) null (PredicateMaskField_3264 pm_f_5@@4))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@8) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@15 f_16@@15))
))) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_3282_53) ) (!  (=> (select (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@8) null (PredicateMaskField_3264 pm_f_5@@4))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@8) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_10411_10412) ) (!  (=> (select (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@8) null (PredicateMaskField_3264 pm_f_5@@4))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@8) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_10424_10429) ) (!  (=> (select (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@8) null (PredicateMaskField_3264 pm_f_5@@4))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@8) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@4) o2_5@@18 f_16@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3264_21240 pm_f_5@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6102) (ExhaleHeap@@5 T@PolymorphicMapType_6102) (Mask@@6 T@PolymorphicMapType_6123) (pm_f_5@@5 T@Field_10411_10412) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_3282_3283 Mask@@6 null pm_f_5@@5) (IsWandField_3282_24910 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_6175_6176) ) (!  (=> (select (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@9) null (WandMaskField_3282 pm_f_5@@5))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@9) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@19 f_16@@19))
)) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_9613_1273) ) (!  (=> (select (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@9) null (WandMaskField_3282 pm_f_5@@5))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@9) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_6162_53) ) (!  (=> (select (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@9) null (WandMaskField_3282 pm_f_5@@5))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@9) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_3264_3283) ) (!  (=> (select (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@9) null (WandMaskField_3282 pm_f_5@@5))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@9) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@22 f_16@@22))
))) (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_3264_10429) ) (!  (=> (select (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@9) null (WandMaskField_3282 pm_f_5@@5))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@9) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@23 f_16@@23))
))) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_3282_3265) ) (!  (=> (select (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@9) null (WandMaskField_3282 pm_f_5@@5))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@9) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_3282_1273) ) (!  (=> (select (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@9) null (WandMaskField_3282 pm_f_5@@5))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@9) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_3282_53) ) (!  (=> (select (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@9) null (WandMaskField_3282 pm_f_5@@5))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@9) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_10411_10412) ) (!  (=> (select (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@9) null (WandMaskField_3282 pm_f_5@@5))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@9) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_10424_10429) ) (!  (=> (select (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@9) null (WandMaskField_3282 pm_f_5@@5))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@9) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@5) o2_5@@28 f_16@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_3282_24910 pm_f_5@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6102) (ExhaleHeap@@6 T@PolymorphicMapType_6102) (Mask@@7 T@PolymorphicMapType_6123) (pm_f_5@@6 T@Field_3264_3283) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3264_3283 Mask@@7 null pm_f_5@@6) (IsWandField_3264_24553 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_6175_6176) ) (!  (=> (select (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@10) null (WandMaskField_3264 pm_f_5@@6))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@10) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@29 f_16@@29))
)) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_9613_1273) ) (!  (=> (select (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@10) null (WandMaskField_3264 pm_f_5@@6))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@10) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@30 f_16@@30))
))) (forall ((o2_5@@31 T@Ref) (f_16@@31 T@Field_6162_53) ) (!  (=> (select (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@10) null (WandMaskField_3264 pm_f_5@@6))) o2_5@@31 f_16@@31) (= (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@10) o2_5@@31 f_16@@31) (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@31 f_16@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@31 f_16@@31))
))) (forall ((o2_5@@32 T@Ref) (f_16@@32 T@Field_3264_3283) ) (!  (=> (select (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@10) null (WandMaskField_3264 pm_f_5@@6))) o2_5@@32 f_16@@32) (= (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@10) o2_5@@32 f_16@@32) (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@32 f_16@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@32 f_16@@32))
))) (forall ((o2_5@@33 T@Ref) (f_16@@33 T@Field_3264_10429) ) (!  (=> (select (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@10) null (WandMaskField_3264 pm_f_5@@6))) o2_5@@33 f_16@@33) (= (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@10) o2_5@@33 f_16@@33) (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@33 f_16@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@33 f_16@@33))
))) (forall ((o2_5@@34 T@Ref) (f_16@@34 T@Field_3282_3265) ) (!  (=> (select (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@10) null (WandMaskField_3264 pm_f_5@@6))) o2_5@@34 f_16@@34) (= (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@10) o2_5@@34 f_16@@34) (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@34 f_16@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@34 f_16@@34))
))) (forall ((o2_5@@35 T@Ref) (f_16@@35 T@Field_3282_1273) ) (!  (=> (select (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@10) null (WandMaskField_3264 pm_f_5@@6))) o2_5@@35 f_16@@35) (= (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@10) o2_5@@35 f_16@@35) (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@35 f_16@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@35 f_16@@35))
))) (forall ((o2_5@@36 T@Ref) (f_16@@36 T@Field_3282_53) ) (!  (=> (select (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@10) null (WandMaskField_3264 pm_f_5@@6))) o2_5@@36 f_16@@36) (= (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@10) o2_5@@36 f_16@@36) (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@36 f_16@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@36 f_16@@36))
))) (forall ((o2_5@@37 T@Ref) (f_16@@37 T@Field_10411_10412) ) (!  (=> (select (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@10) null (WandMaskField_3264 pm_f_5@@6))) o2_5@@37 f_16@@37) (= (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@10) o2_5@@37 f_16@@37) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@37 f_16@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@37 f_16@@37))
))) (forall ((o2_5@@38 T@Ref) (f_16@@38 T@Field_10424_10429) ) (!  (=> (select (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@10) null (WandMaskField_3264 pm_f_5@@6))) o2_5@@38 f_16@@38) (= (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@10) o2_5@@38 f_16@@38) (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@38 f_16@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@6) o2_5@@38 f_16@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_3264_24553 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6102) (ExhaleHeap@@7 T@PolymorphicMapType_6102) (Mask@@8 T@PolymorphicMapType_6123) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@11) o_12 $allocated) (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_3264_3283) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6162_6162 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6162_6162 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_10411_10412) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3282_3282 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3282_3282 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3264_3265 next)))
(assert  (not (IsWandField_3264_3265 next)))
(assert  (not (IsPredicateField_3267_1273 value)))
(assert  (not (IsWandField_3267_1273 value)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6102) (ExhaleHeap@@8 T@PolymorphicMapType_6102) (Mask@@9 T@PolymorphicMapType_6123) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6123) (o_2@@9 T@Ref) (f_4@@9 T@Field_10424_10429) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3282_31813 f_4@@9))) (not (IsWandField_3282_31829 f_4@@9))) (<= (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6123) (o_2@@10 T@Ref) (f_4@@10 T@Field_3282_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3282_53 f_4@@10))) (not (IsWandField_3282_53 f_4@@10))) (<= (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6123) (o_2@@11 T@Ref) (f_4@@11 T@Field_10411_10412) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3282_3283 f_4@@11))) (not (IsWandField_3282_24910 f_4@@11))) (<= (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6123) (o_2@@12 T@Ref) (f_4@@12 T@Field_3282_1273) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3282_1273 f_4@@12))) (not (IsWandField_3282_1273 f_4@@12))) (<= (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6123) (o_2@@13 T@Ref) (f_4@@13 T@Field_3282_3265) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3282_3265 f_4@@13))) (not (IsWandField_3282_3265 f_4@@13))) (<= (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6123) (o_2@@14 T@Ref) (f_4@@14 T@Field_3264_10429) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3264_30982 f_4@@14))) (not (IsWandField_3264_30998 f_4@@14))) (<= (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6123) (o_2@@15 T@Ref) (f_4@@15 T@Field_6162_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3264_53 f_4@@15))) (not (IsWandField_3264_53 f_4@@15))) (<= (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6123) (o_2@@16 T@Ref) (f_4@@16 T@Field_3264_3283) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3264_21240 f_4@@16))) (not (IsWandField_3264_24553 f_4@@16))) (<= (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6123) (o_2@@17 T@Ref) (f_4@@17 T@Field_9613_1273) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3267_1273 f_4@@17))) (not (IsWandField_3267_1273 f_4@@17))) (<= (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6123) (o_2@@18 T@Ref) (f_4@@18 T@Field_6175_6176) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3264_3265 f_4@@18))) (not (IsWandField_3264_3265 f_4@@18))) (<= (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6123) (o_2@@19 T@Ref) (f_4@@19 T@Field_10424_10429) ) (! (= (HasDirectPerm_3282_20995 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3282_20995 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6123) (o_2@@20 T@Ref) (f_4@@20 T@Field_3282_1273) ) (! (= (HasDirectPerm_3282_1273 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3282_1273 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6123) (o_2@@21 T@Ref) (f_4@@21 T@Field_3282_53) ) (! (= (HasDirectPerm_3282_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3282_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6123) (o_2@@22 T@Ref) (f_4@@22 T@Field_10411_10412) ) (! (= (HasDirectPerm_3282_3283 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3282_3283 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6123) (o_2@@23 T@Ref) (f_4@@23 T@Field_3282_3265) ) (! (= (HasDirectPerm_3282_3265 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3282_3265 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6123) (o_2@@24 T@Ref) (f_4@@24 T@Field_3264_10429) ) (! (= (HasDirectPerm_3264_19854 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3264_19854 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6123) (o_2@@25 T@Ref) (f_4@@25 T@Field_9613_1273) ) (! (= (HasDirectPerm_3264_1273 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3264_1273 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6123) (o_2@@26 T@Ref) (f_4@@26 T@Field_6162_53) ) (! (= (HasDirectPerm_3264_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3264_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6123) (o_2@@27 T@Ref) (f_4@@27 T@Field_3264_3283) ) (! (= (HasDirectPerm_3264_3283 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3264_3283 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6123) (o_2@@28 T@Ref) (f_4@@28 T@Field_6175_6176) ) (! (= (HasDirectPerm_3264_3265 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3264_3265 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6102) (ExhaleHeap@@9 T@PolymorphicMapType_6102) (Mask@@30 T@PolymorphicMapType_6123) (o_12@@0 T@Ref) (f_16@@39 T@Field_10424_10429) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_3282_20995 Mask@@30 o_12@@0 f_16@@39) (= (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@13) o_12@@0 f_16@@39) (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@9) o_12@@0 f_16@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| ExhaleHeap@@9) o_12@@0 f_16@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6102) (ExhaleHeap@@10 T@PolymorphicMapType_6102) (Mask@@31 T@PolymorphicMapType_6123) (o_12@@1 T@Ref) (f_16@@40 T@Field_3282_1273) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_3282_1273 Mask@@31 o_12@@1 f_16@@40) (= (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@14) o_12@@1 f_16@@40) (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| ExhaleHeap@@10) o_12@@1 f_16@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| ExhaleHeap@@10) o_12@@1 f_16@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6102) (ExhaleHeap@@11 T@PolymorphicMapType_6102) (Mask@@32 T@PolymorphicMapType_6123) (o_12@@2 T@Ref) (f_16@@41 T@Field_3282_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_3282_53 Mask@@32 o_12@@2 f_16@@41) (= (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@15) o_12@@2 f_16@@41) (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| ExhaleHeap@@11) o_12@@2 f_16@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| ExhaleHeap@@11) o_12@@2 f_16@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6102) (ExhaleHeap@@12 T@PolymorphicMapType_6102) (Mask@@33 T@PolymorphicMapType_6123) (o_12@@3 T@Ref) (f_16@@42 T@Field_10411_10412) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_3282_3283 Mask@@33 o_12@@3 f_16@@42) (= (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@16) o_12@@3 f_16@@42) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| ExhaleHeap@@12) o_12@@3 f_16@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| ExhaleHeap@@12) o_12@@3 f_16@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6102) (ExhaleHeap@@13 T@PolymorphicMapType_6102) (Mask@@34 T@PolymorphicMapType_6123) (o_12@@4 T@Ref) (f_16@@43 T@Field_3282_3265) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_3282_3265 Mask@@34 o_12@@4 f_16@@43) (= (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@17) o_12@@4 f_16@@43) (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| ExhaleHeap@@13) o_12@@4 f_16@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| ExhaleHeap@@13) o_12@@4 f_16@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6102) (ExhaleHeap@@14 T@PolymorphicMapType_6102) (Mask@@35 T@PolymorphicMapType_6123) (o_12@@5 T@Ref) (f_16@@44 T@Field_3264_10429) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_3264_19854 Mask@@35 o_12@@5 f_16@@44) (= (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@18) o_12@@5 f_16@@44) (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@14) o_12@@5 f_16@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| ExhaleHeap@@14) o_12@@5 f_16@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6102) (ExhaleHeap@@15 T@PolymorphicMapType_6102) (Mask@@36 T@PolymorphicMapType_6123) (o_12@@6 T@Ref) (f_16@@45 T@Field_9613_1273) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_3264_1273 Mask@@36 o_12@@6 f_16@@45) (= (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@19) o_12@@6 f_16@@45) (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| ExhaleHeap@@15) o_12@@6 f_16@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| ExhaleHeap@@15) o_12@@6 f_16@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6102) (ExhaleHeap@@16 T@PolymorphicMapType_6102) (Mask@@37 T@PolymorphicMapType_6123) (o_12@@7 T@Ref) (f_16@@46 T@Field_6162_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_3264_53 Mask@@37 o_12@@7 f_16@@46) (= (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@20) o_12@@7 f_16@@46) (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@16) o_12@@7 f_16@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| ExhaleHeap@@16) o_12@@7 f_16@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6102) (ExhaleHeap@@17 T@PolymorphicMapType_6102) (Mask@@38 T@PolymorphicMapType_6123) (o_12@@8 T@Ref) (f_16@@47 T@Field_3264_3283) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_3264_3283 Mask@@38 o_12@@8 f_16@@47) (= (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@21) o_12@@8 f_16@@47) (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| ExhaleHeap@@17) o_12@@8 f_16@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| ExhaleHeap@@17) o_12@@8 f_16@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6102) (ExhaleHeap@@18 T@PolymorphicMapType_6102) (Mask@@39 T@PolymorphicMapType_6123) (o_12@@9 T@Ref) (f_16@@48 T@Field_6175_6176) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_3264_3265 Mask@@39 o_12@@9 f_16@@48) (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@22) o_12@@9 f_16@@48) (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| ExhaleHeap@@18) o_12@@9 f_16@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| ExhaleHeap@@18) o_12@@9 f_16@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_10424_10429) ) (! (= (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_3282_53) ) (! (= (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_10411_10412) ) (! (= (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_3282_1273) ) (! (= (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_3282_3265) ) (! (= (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_3264_10429) ) (! (= (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_6162_53) ) (! (= (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_3264_3283) ) (! (= (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_9613_1273) ) (! (= (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_6175_6176) ) (! (= (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6123) (SummandMask1 T@PolymorphicMapType_6123) (SummandMask2 T@PolymorphicMapType_6123) (o_2@@39 T@Ref) (f_4@@39 T@Field_10424_10429) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6123) (SummandMask1@@0 T@PolymorphicMapType_6123) (SummandMask2@@0 T@PolymorphicMapType_6123) (o_2@@40 T@Ref) (f_4@@40 T@Field_3282_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6123) (SummandMask1@@1 T@PolymorphicMapType_6123) (SummandMask2@@1 T@PolymorphicMapType_6123) (o_2@@41 T@Ref) (f_4@@41 T@Field_10411_10412) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6123) (SummandMask1@@2 T@PolymorphicMapType_6123) (SummandMask2@@2 T@PolymorphicMapType_6123) (o_2@@42 T@Ref) (f_4@@42 T@Field_3282_1273) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6123) (SummandMask1@@3 T@PolymorphicMapType_6123) (SummandMask2@@3 T@PolymorphicMapType_6123) (o_2@@43 T@Ref) (f_4@@43 T@Field_3282_3265) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6123) (SummandMask1@@4 T@PolymorphicMapType_6123) (SummandMask2@@4 T@PolymorphicMapType_6123) (o_2@@44 T@Ref) (f_4@@44 T@Field_3264_10429) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6123) (SummandMask1@@5 T@PolymorphicMapType_6123) (SummandMask2@@5 T@PolymorphicMapType_6123) (o_2@@45 T@Ref) (f_4@@45 T@Field_6162_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6123) (SummandMask1@@6 T@PolymorphicMapType_6123) (SummandMask2@@6 T@PolymorphicMapType_6123) (o_2@@46 T@Ref) (f_4@@46 T@Field_3264_3283) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6123) (SummandMask1@@7 T@PolymorphicMapType_6123) (SummandMask2@@7 T@PolymorphicMapType_6123) (o_2@@47 T@Ref) (f_4@@47 T@Field_9613_1273) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6123) (SummandMask1@@8 T@PolymorphicMapType_6123) (SummandMask2@@8 T@PolymorphicMapType_6123) (o_2@@48 T@Ref) (f_4@@48 T@Field_6175_6176) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.193:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((self@@3 T@Ref) ) (! (= (getPredWandId_3282_3283 (list self@@3)) 0)
 :qid |stdinbpl.312:15|
 :skolemid |30|
 :pattern ( (list self@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6102) (Mask@@40 T@PolymorphicMapType_6123) (n@@1 Int) ) (!  (=> (state Heap@@23 Mask@@40) (= (|factorialPure'| Heap@@23 n@@1) (|factorialPure#frame| EmptyFrame n@@1)))
 :qid |stdinbpl.246:15|
 :skolemid |27|
 :pattern ( (state Heap@@23 Mask@@40) (|factorialPure'| Heap@@23 n@@1))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6102) (o_11 T@Ref) (f_17 T@Field_10424_10429) (v T@PolymorphicMapType_6651) ) (! (succHeap Heap@@24 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@24) (store (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@24) o_11 f_17 v) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@24) (store (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@24) o_11 f_17 v) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@24) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6102) (o_11@@0 T@Ref) (f_17@@0 T@Field_3282_1273) (v@@0 Int) ) (! (succHeap Heap@@25 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@25) (store (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@25) o_11@@0 f_17@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@25) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@25) (store (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@25) o_11@@0 f_17@@0 v@@0)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6102) (o_11@@1 T@Ref) (f_17@@1 T@Field_10411_10412) (v@@1 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@26) (store (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@26) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@26) (store (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@26) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@26) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6102) (o_11@@2 T@Ref) (f_17@@2 T@Field_3282_3265) (v@@2 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@27) (store (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@27) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@27) (store (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@27) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@27) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6102) (o_11@@3 T@Ref) (f_17@@3 T@Field_3282_53) (v@@3 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@28) (store (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@28) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@28) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@28) (store (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@28) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6102) (o_11@@4 T@Ref) (f_17@@4 T@Field_3264_10429) (v@@4 T@PolymorphicMapType_6651) ) (! (succHeap Heap@@29 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@29) (store (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@29) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@29) (store (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@29) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@29) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6102) (o_11@@5 T@Ref) (f_17@@5 T@Field_9613_1273) (v@@5 Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@30) (store (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@30) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@30) (store (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@30) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@30) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6102) (o_11@@6 T@Ref) (f_17@@6 T@Field_3264_3283) (v@@6 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@31) (store (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@31) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@31) (store (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@31) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@31) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6102) (o_11@@7 T@Ref) (f_17@@7 T@Field_6175_6176) (v@@7 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@32) (store (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@32) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@32) (store (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@32) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@32) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6102) (o_11@@8 T@Ref) (f_17@@8 T@Field_6162_53) (v@@8 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_6102 (store (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@33) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6102 (store (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@33) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@33) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@33)))
)))
(assert (forall ((self@@4 T@Ref) ) (! (= (PredicateMaskField_3282 (list self@@4)) (|list#sm| self@@4))
 :qid |stdinbpl.304:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_3282 (list self@@4)))
)))
(assert (forall ((o_11@@9 T@Ref) (f_10 T@Field_6175_6176) (Heap@@34 T@PolymorphicMapType_6102) ) (!  (=> (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@34) o_11@@9 $allocated) (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@34) (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@34) o_11@@9 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@34) o_11@@9 f_10))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6102) (Mask@@41 T@PolymorphicMapType_6123) (n@@2 Int) ) (!  (=> (and (state Heap@@35 Mask@@41) (< AssumeFunctionsAbove 0)) (=> (>= n@@2 0) (= (factorialPure Heap@@35 n@@2) (ite (= n@@2 0) 1 (* 1 (|factorialPure'| Heap@@35 (- n@@2 1)))))))
 :qid |stdinbpl.239:15|
 :skolemid |26|
 :pattern ( (state Heap@@35 Mask@@41) (factorialPure Heap@@35 n@@2))
)))
(assert (forall ((p@@2 T@Field_3264_3283) (v_1@@1 T@FrameType) (q T@Field_3264_3283) (w@@1 T@FrameType) (r T@Field_3264_3283) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6162_6162 p@@2 v_1@@1 q w@@1) (InsidePredicate_6162_6162 q w@@1 r u)) (InsidePredicate_6162_6162 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6162_6162 p@@2 v_1@@1 q w@@1) (InsidePredicate_6162_6162 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_3264_3283) (v_1@@2 T@FrameType) (q@@0 T@Field_3264_3283) (w@@2 T@FrameType) (r@@0 T@Field_10411_10412) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_6162_6162 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6162_3282 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_6162_3282 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6162_6162 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6162_3282 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_3264_3283) (v_1@@3 T@FrameType) (q@@1 T@Field_10411_10412) (w@@3 T@FrameType) (r@@1 T@Field_3264_3283) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_6162_3282 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3282_6162 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_6162_6162 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6162_3282 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3282_6162 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_3264_3283) (v_1@@4 T@FrameType) (q@@2 T@Field_10411_10412) (w@@4 T@FrameType) (r@@2 T@Field_10411_10412) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_6162_3282 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3282_3282 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_6162_3282 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6162_3282 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3282_3282 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_10411_10412) (v_1@@5 T@FrameType) (q@@3 T@Field_3264_3283) (w@@5 T@FrameType) (r@@3 T@Field_3264_3283) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3282_6162 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6162_6162 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3282_6162 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3282_6162 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6162_6162 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_10411_10412) (v_1@@6 T@FrameType) (q@@4 T@Field_3264_3283) (w@@6 T@FrameType) (r@@4 T@Field_10411_10412) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3282_6162 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6162_3282 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3282_3282 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3282_6162 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6162_3282 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_10411_10412) (v_1@@7 T@FrameType) (q@@5 T@Field_10411_10412) (w@@7 T@FrameType) (r@@5 T@Field_3264_3283) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3282_3282 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3282_6162 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3282_6162 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3282_3282 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3282_6162 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_10411_10412) (v_1@@8 T@FrameType) (q@@6 T@Field_10411_10412) (w@@8 T@FrameType) (r@@6 T@Field_10411_10412) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3282_3282 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3282_3282 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3282_3282 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3282_3282 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3282_3282 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@10 () T@PolymorphicMapType_6123)
(declare-fun x () T@Ref)
(declare-fun Heap@8 () T@PolymorphicMapType_6102)
(declare-fun Heap@6 () T@PolymorphicMapType_6102)
(declare-fun newPMask@0 () T@PolymorphicMapType_6651)
(declare-fun Heap@7 () T@PolymorphicMapType_6102)
(declare-fun Heap@5 () T@PolymorphicMapType_6102)
(declare-fun Heap@4 () T@PolymorphicMapType_6102)
(declare-fun Heap@1 () T@PolymorphicMapType_6102)
(declare-fun Heap@2 () T@PolymorphicMapType_6102)
(declare-fun Heap@3 () T@PolymorphicMapType_6102)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@9 () T@PolymorphicMapType_6123)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3265 (T@Ref) T@FrameType)
(declare-fun FrameFragment_1273 (Int) T@FrameType)
(declare-fun FrameFragment_3283 (T@FrameType) T@FrameType)
(declare-fun Mask@8 () T@PolymorphicMapType_6123)
(declare-fun Mask@7 () T@PolymorphicMapType_6123)
(declare-fun Mask@6 () T@PolymorphicMapType_6123)
(declare-fun Mask@5 () T@PolymorphicMapType_6123)
(declare-fun Mask@3 () T@PolymorphicMapType_6123)
(declare-fun Mask@4 () T@PolymorphicMapType_6123)
(declare-fun Mask@2 () T@PolymorphicMapType_6123)
(declare-fun Mask@1 () T@PolymorphicMapType_6123)
(declare-fun Heap@@36 () T@PolymorphicMapType_6102)
(declare-fun Heap@0 () T@PolymorphicMapType_6102)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_6123)
(set-info :boogie-vc-id length_3)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon27_correct true))
(let ((anon40_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 8) 5)) anon27_correct)))
(let ((anon40_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= FullPerm (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@10) null (list x)))) (=> (<= FullPerm (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@10) null (list x))) (=> (= (ControlFlow 0 6) 5) anon27_correct))))))
(let ((anon25_correct  (=> (and (state Heap@8 Mask@10) (state Heap@8 Mask@10)) (and (=> (= (ControlFlow 0 9) 6) anon40_Then_correct) (=> (= (ControlFlow 0 9) 8) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next) null) (=> (and (= Heap@8 Heap@6) (= (ControlFlow 0 11) 9)) anon25_correct))))
(let ((anon39_Then_correct  (=> (not (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_6175_6176) ) (!  (=> (or (select (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| x))) o_15 f_20) (select (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next)))) o_15 f_20)) (select (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| newPMask@0) o_15 f_20))
 :qid |stdinbpl.560:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_9613_1273) ) (!  (=> (or (select (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| x))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.560:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_6162_53) ) (!  (=> (or (select (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| x))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.560:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_3264_3283) ) (!  (=> (or (select (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| x))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.560:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_3264_10429) ) (!  (=> (or (select (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| x))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.560:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_3282_3265) ) (!  (=> (or (select (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| x))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.560:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_3282_1273) ) (!  (=> (or (select (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| x))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.560:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_3282_53) ) (!  (=> (or (select (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| x))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.560:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_10411_10412) ) (!  (=> (or (select (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| x))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.560:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_10424_10429) ) (!  (=> (or (select (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| x))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) x next)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.560:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| newPMask@0) o_15@@8 f_20@@8))
))) (= Heap@7 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@6) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@6) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@6) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@6) (store (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@6) null (|list#sm| x) newPMask@0) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@6) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@6) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@6) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@6) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@6)))) (and (= Heap@8 Heap@7) (= (ControlFlow 0 10) 9))) anon25_correct))))
(let ((anon23_correct  (=> (and (= Heap@5 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@4) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@4) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@4) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@4) (store (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@4) null (|list#sm| x) (PolymorphicMapType_6651 (store (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@4) null (|list#sm| x))) x next true) (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@4) null (|list#sm| x))) (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@4) null (|list#sm| x))) (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@4) null (|list#sm| x))) (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@4) null (|list#sm| x))) (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@4) null (|list#sm| x))) (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@4) null (|list#sm| x))) (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@4) null (|list#sm| x))) (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@4) null (|list#sm| x))) (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@4) null (|list#sm| x))))) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@4) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@4) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@4) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@4) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@4))) (= Heap@6 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@5) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@5) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@5) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@5) (store (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@5) null (|list#sm| x) (PolymorphicMapType_6651 (|PolymorphicMapType_6651_3264_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@5) null (|list#sm| x))) (store (|PolymorphicMapType_6651_3267_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@5) null (|list#sm| x))) x value true) (|PolymorphicMapType_6651_3264_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@5) null (|list#sm| x))) (|PolymorphicMapType_6651_3264_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@5) null (|list#sm| x))) (|PolymorphicMapType_6651_3264_22697#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@5) null (|list#sm| x))) (|PolymorphicMapType_6651_10411_3265#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@5) null (|list#sm| x))) (|PolymorphicMapType_6651_10411_1273#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@5) null (|list#sm| x))) (|PolymorphicMapType_6651_10411_53#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@5) null (|list#sm| x))) (|PolymorphicMapType_6651_10411_10412#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@5) null (|list#sm| x))) (|PolymorphicMapType_6651_10411_23745#PolymorphicMapType_6651| (select (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@5) null (|list#sm| x))))) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@5) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@5) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@5) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@5) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@5)))) (and (=> (= (ControlFlow 0 12) 10) anon39_Then_correct) (=> (= (ControlFlow 0 12) 11) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (HasDirectPerm_3282_3283 Mask@10 null (list x)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 14) 12)) anon23_correct))))
(let ((anon38_Then_correct  (=> (not (HasDirectPerm_3282_3283 Mask@10 null (list x))) (=> (and (and (= Heap@2 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@1) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@1) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@1) (store (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@1) null (|list#sm| x) ZeroPMask) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@1) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@1) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@1) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@1) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@1))) (= Heap@3 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@2) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@2) (store (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@2) null (list x) freshVersion@0) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@2) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@2) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@2) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@2) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@2) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@2) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 13) 12))) anon23_correct))))
(let ((anon21_correct  (=> (= Mask@10 (PolymorphicMapType_6123 (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@9) (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@9) (store (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@9) null (list x) (+ (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@9) null (list x)) FullPerm)) (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@9) (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@9) (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@9) (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@9) (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@9) (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@9) (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@9))) (=> (and (and (state Heap@1 Mask@10) (state Heap@1 Mask@10)) (and (|list#trigger_3282| Heap@1 (list x)) (= (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@1) null (list x)) (CombineFrames (FrameFragment_3265 (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next)) (CombineFrames (FrameFragment_1273 (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@1) x value)) (FrameFragment_3283 (ite (not (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next) null)) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@1) null (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 15) 13) anon38_Then_correct) (=> (= (ControlFlow 0 15) 14) anon38_Else_correct))))))
(let ((anon20_correct  (=> (and (and (= Mask@8 (PolymorphicMapType_6123 (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@7) (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@7) (store (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@7) null (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next)) (- (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@7) null (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next))) FullPerm)) (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@7) (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@7) (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@7) (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@7) (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@7) (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@7) (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@7))) (InsidePredicate_3282_3282 (list x) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@1) null (list x)) (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next)) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@1) null (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next))))) (and (= Mask@9 Mask@8) (= (ControlFlow 0 17) 15))) anon21_correct)))
(let ((anon37_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 20) 17)) anon20_correct)))
(let ((anon37_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= FullPerm (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@7) null (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next))))) (=> (<= FullPerm (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@7) null (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next)))) (=> (= (ControlFlow 0 18) 17) anon20_correct))))))
(let ((anon36_Then_correct  (=> (not (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next) null)) (and (=> (= (ControlFlow 0 21) 18) anon37_Then_correct) (=> (= (ControlFlow 0 21) 20) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next) null) (=> (and (= Mask@9 Mask@7) (= (ControlFlow 0 16) 15)) anon21_correct))))
(let ((anon17_correct  (=> (= Mask@7 (PolymorphicMapType_6123 (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@6) (store (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@6) x value (- (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@6) x value) FullPerm)) (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@6) (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@6) (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@6) (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@6) (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@6) (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@6) (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@6) (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@6))) (and (=> (= (ControlFlow 0 22) 21) anon36_Then_correct) (=> (= (ControlFlow 0 22) 16) anon36_Else_correct)))))
(let ((anon35_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 25) 22)) anon17_correct)))
(let ((anon35_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (<= FullPerm (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@6) x value))) (=> (<= FullPerm (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@6) x value)) (=> (= (ControlFlow 0 23) 22) anon17_correct))))))
(let ((anon15_correct  (=> (= Mask@6 (PolymorphicMapType_6123 (store (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@5) x next (- (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@5) x next) FullPerm)) (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@5) (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@5) (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@5) (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@5) (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@5) (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@5) (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@5) (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@5) (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@5))) (and (=> (= (ControlFlow 0 26) 23) anon35_Then_correct) (=> (= (ControlFlow 0 26) 25) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 29) 26)) anon15_correct)))
(let ((anon34_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (<= FullPerm (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@5) x next))) (=> (<= FullPerm (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@5) x next)) (=> (= (ControlFlow 0 27) 26) anon15_correct))))))
(let ((anon32_Then_correct  (=> (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next) null) (=> (and (state Heap@1 Mask@5) (state Heap@1 Mask@5)) (and (=> (= (ControlFlow 0 30) 27) anon34_Then_correct) (=> (= (ControlFlow 0 30) 29) anon34_Else_correct))))))
(let ((anon32_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next) null)) (= (ControlFlow 0 3) (- 0 4))) false)))
(let ((anon8_correct  (=> (and (state Heap@1 Mask@5) (state Heap@1 Mask@5)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (HasDirectPerm_3264_3265 Mask@5 x next)) (=> (HasDirectPerm_3264_3265 Mask@5 x next) (and (=> (= (ControlFlow 0 31) 30) anon32_Then_correct) (=> (= (ControlFlow 0 31) 3) anon32_Else_correct)))))))
(let ((anon31_Else_correct  (=> (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next) null) (=> (and (= Mask@5 Mask@3) (= (ControlFlow 0 34) 31)) anon8_correct))))
(let ((anon31_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next) null)) (= Mask@4 (PolymorphicMapType_6123 (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@3) (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@3) (store (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@3) null (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next)) (+ (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@3) null (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next))) FullPerm)) (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@3) (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@3) (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@3) (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@3) (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@3) (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@3) (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@3)))) (=> (and (and (InsidePredicate_3282_3282 (list x) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@1) null (list x)) (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next)) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@1) null (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@1) x next)))) (state Heap@1 Mask@4)) (and (= Mask@5 Mask@4) (= (ControlFlow 0 33) 31))) anon8_correct))))
(let ((anon6_correct  (=> (and (not (= x null)) (= Mask@2 (PolymorphicMapType_6123 (store (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@1) x next (+ (select (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@1) x next) FullPerm)) (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@1) (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@1) (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@1) (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@1) (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@1) (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@1) (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@1) (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@1) (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@1)))) (=> (and (and (state Heap@1 Mask@2) (not (= x null))) (and (= Mask@3 (PolymorphicMapType_6123 (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@2) (store (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@2) x value (+ (select (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@2) x value) FullPerm)) (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@2) (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@2) (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@2) (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@2) (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@2) (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@2) (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@2) (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@2))) (state Heap@1 Mask@3))) (and (=> (= (ControlFlow 0 35) 33) anon31_Then_correct) (=> (= (ControlFlow 0 35) 34) anon31_Else_correct))))))
(let ((anon30_Else_correct  (=> (HasDirectPerm_3282_3283 Mask@1 null (list x)) (=> (and (= Heap@1 Heap@@36) (= (ControlFlow 0 37) 35)) anon6_correct))))
(let ((anon30_Then_correct  (=> (and (and (not (HasDirectPerm_3282_3283 Mask@1 null (list x))) (= Heap@0 (PolymorphicMapType_6102 (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@36) (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@36) (store (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@36) null (list x) newVersion@0) (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@36) (|PolymorphicMapType_6102_3286_16973#PolymorphicMapType_6102| Heap@@36) (|PolymorphicMapType_6102_3264_3283#PolymorphicMapType_6102| Heap@@36) (|PolymorphicMapType_6102_3264_19896#PolymorphicMapType_6102| Heap@@36) (|PolymorphicMapType_6102_3282_3265#PolymorphicMapType_6102| Heap@@36) (|PolymorphicMapType_6102_3282_53#PolymorphicMapType_6102| Heap@@36) (|PolymorphicMapType_6102_3282_1273#PolymorphicMapType_6102| Heap@@36)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 36) 35))) anon6_correct)))
(let ((anon4_correct  (=> (= Mask@1 (PolymorphicMapType_6123 (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| Mask@0) (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| Mask@0) (store (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@0) null (list x) (- (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@0) null (list x)) FullPerm)) (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| Mask@0) (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| Mask@0) (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| Mask@0) (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| Mask@0) (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| Mask@0) (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| Mask@0) (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| Mask@0))) (and (=> (= (ControlFlow 0 38) 36) anon30_Then_correct) (=> (= (ControlFlow 0 38) 37) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 41) 38)) anon4_correct)))
(let ((anon29_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 39) (- 0 40)) (<= FullPerm (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@0) null (list x)))) (=> (<= FullPerm (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| Mask@0) null (list x))) (=> (= (ControlFlow 0 39) 38) anon4_correct))))))
(let ((anon28_Else_correct  (=> (and (|list#trigger_3282| Heap@@36 (list x)) (= (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@36) null (list x)) (CombineFrames (FrameFragment_3265 (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@36) x next)) (CombineFrames (FrameFragment_1273 (select (|PolymorphicMapType_6102_3267_1273#PolymorphicMapType_6102| Heap@@36) x value)) (FrameFragment_3283 (ite (not (= (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@36) x next) null)) (select (|PolymorphicMapType_6102_3282_3283#PolymorphicMapType_6102| Heap@@36) null (list (select (|PolymorphicMapType_6102_3139_3140#PolymorphicMapType_6102| Heap@@36) x next))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 42) 39) anon29_Then_correct) (=> (= (ControlFlow 0 42) 41) anon29_Else_correct)))))
(let ((anon28_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_6102_3136_53#PolymorphicMapType_6102| Heap@@36) x $allocated) (= Mask@0 (PolymorphicMapType_6123 (|PolymorphicMapType_6123_3264_3265#PolymorphicMapType_6123| ZeroMask) (|PolymorphicMapType_6123_3267_1273#PolymorphicMapType_6123| ZeroMask) (store (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| ZeroMask) null (list x) (+ (select (|PolymorphicMapType_6123_3282_3283#PolymorphicMapType_6123| ZeroMask) null (list x)) FullPerm)) (|PolymorphicMapType_6123_3264_3283#PolymorphicMapType_6123| ZeroMask) (|PolymorphicMapType_6123_3264_53#PolymorphicMapType_6123| ZeroMask) (|PolymorphicMapType_6123_3264_29124#PolymorphicMapType_6123| ZeroMask) (|PolymorphicMapType_6123_3282_3265#PolymorphicMapType_6123| ZeroMask) (|PolymorphicMapType_6123_3282_1273#PolymorphicMapType_6123| ZeroMask) (|PolymorphicMapType_6123_3282_53#PolymorphicMapType_6123| ZeroMask) (|PolymorphicMapType_6123_3282_29535#PolymorphicMapType_6123| ZeroMask)))) (and (state Heap@@36 Mask@0) (state Heap@@36 Mask@0))) (and (=> (= (ControlFlow 0 43) 1) anon28_Then_correct) (=> (= (ControlFlow 0 43) 42) anon28_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 44) 43) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)