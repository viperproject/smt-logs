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
(declare-sort T@Field_4776_53 0)
(declare-sort T@Field_4789_4790 0)
(declare-sort T@Field_8746_1508 0)
(declare-sort T@Field_4776_8122 0)
(declare-sort T@Field_4776_8134 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_8104_53 0)
(declare-sort T@Field_8104_4790 0)
(declare-sort T@Field_8104_1203 0)
(declare-sort T@Field_8117_8122 0)
(declare-sort T@Field_8133_8134 0)
(declare-datatypes ((T@PolymorphicMapType_4737 0)) (((PolymorphicMapType_4737 (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| (Array T@Ref T@Field_8746_1508 Real)) (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| (Array T@Ref T@Field_8104_1203 Real)) (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| (Array T@Ref T@Field_4776_53 Real)) (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| (Array T@Ref T@Field_4789_4790 Real)) (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| (Array T@Ref T@Field_4776_8122 Real)) (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| (Array T@Ref T@Field_4776_8134 Real)) (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| (Array T@Ref T@Field_8104_53 Real)) (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| (Array T@Ref T@Field_8104_4790 Real)) (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| (Array T@Ref T@Field_8117_8122 Real)) (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| (Array T@Ref T@Field_8133_8134 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5265 0)) (((PolymorphicMapType_5265 (|PolymorphicMapType_5265_4776_53#PolymorphicMapType_5265| (Array T@Ref T@Field_4776_53 Bool)) (|PolymorphicMapType_5265_4776_4790#PolymorphicMapType_5265| (Array T@Ref T@Field_4789_4790 Bool)) (|PolymorphicMapType_5265_4776_1203#PolymorphicMapType_5265| (Array T@Ref T@Field_8746_1508 Bool)) (|PolymorphicMapType_5265_4776_17224#PolymorphicMapType_5265| (Array T@Ref T@Field_4776_8122 Bool)) (|PolymorphicMapType_5265_4776_8134#PolymorphicMapType_5265| (Array T@Ref T@Field_4776_8134 Bool)) (|PolymorphicMapType_5265_8104_53#PolymorphicMapType_5265| (Array T@Ref T@Field_8104_53 Bool)) (|PolymorphicMapType_5265_8104_4790#PolymorphicMapType_5265| (Array T@Ref T@Field_8104_4790 Bool)) (|PolymorphicMapType_5265_8104_1203#PolymorphicMapType_5265| (Array T@Ref T@Field_8104_1203 Bool)) (|PolymorphicMapType_5265_8104_18272#PolymorphicMapType_5265| (Array T@Ref T@Field_8117_8122 Bool)) (|PolymorphicMapType_5265_8104_8134#PolymorphicMapType_5265| (Array T@Ref T@Field_8133_8134 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4716 0)) (((PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| (Array T@Ref T@Field_4776_53 Bool)) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| (Array T@Ref T@Field_4789_4790 T@Ref)) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| (Array T@Ref T@Field_8746_1508 Int)) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| (Array T@Ref T@Field_4776_8122 T@PolymorphicMapType_5265)) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| (Array T@Ref T@Field_4776_8134 T@FrameType)) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| (Array T@Ref T@Field_8104_53 Bool)) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| (Array T@Ref T@Field_8104_4790 T@Ref)) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| (Array T@Ref T@Field_8104_1203 Int)) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| (Array T@Ref T@Field_8117_8122 T@PolymorphicMapType_5265)) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| (Array T@Ref T@Field_8133_8134 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4776_53)
(declare-fun f_7 () T@Field_8746_1508)
(declare-fun g () T@Field_8746_1508)
(declare-fun succHeap (T@PolymorphicMapType_4716 T@PolymorphicMapType_4716) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4716 T@PolymorphicMapType_4716) Bool)
(declare-fun wand (T@Ref Real T@Ref Real) T@Field_8104_1203)
(declare-fun getPredWandId_2489_1203 (T@Field_8104_1203) Int)
(declare-fun state (T@PolymorphicMapType_4716 T@PolymorphicMapType_4737) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4737) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5265)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4716 T@PolymorphicMapType_4716 T@PolymorphicMapType_4737) Bool)
(declare-fun IsPredicateField_2502_2503 (T@Field_8133_8134) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8104 (T@Field_8133_8134) T@Field_8117_8122)
(declare-fun HasDirectPerm_8104_8134 (T@PolymorphicMapType_4737 T@Ref T@Field_8133_8134) Bool)
(declare-fun IsPredicateField_4776_15919 (T@Field_4776_8134) Bool)
(declare-fun PredicateMaskField_4776 (T@Field_4776_8134) T@Field_4776_8122)
(declare-fun HasDirectPerm_4776_8134 (T@PolymorphicMapType_4737 T@Ref T@Field_4776_8134) Bool)
(declare-fun IsWandField_2502_2503 (T@Field_8133_8134) Bool)
(declare-fun WandMaskField_2502 (T@Field_8133_8134) T@Field_8117_8122)
(declare-fun IsWandField_4776_19284 (T@Field_4776_8134) Bool)
(declare-fun WandMaskField_4776 (T@Field_4776_8134) T@Field_4776_8122)
(declare-fun dummyHeap () T@PolymorphicMapType_4716)
(declare-fun ZeroMask () T@PolymorphicMapType_4737)
(declare-fun InsidePredicate_8104_8104 (T@Field_8133_8134 T@FrameType T@Field_8133_8134 T@FrameType) Bool)
(declare-fun InsidePredicate_4776_4776 (T@Field_4776_8134 T@FrameType T@Field_4776_8134 T@FrameType) Bool)
(declare-fun IsPredicateField_2537_1508 (T@Field_8746_1508) Bool)
(declare-fun IsWandField_2537_1508 (T@Field_8746_1508) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2489_26376 (T@Field_8117_8122) Bool)
(declare-fun IsWandField_2489_26392 (T@Field_8117_8122) Bool)
(declare-fun IsPredicateField_2489_4790 (T@Field_8104_4790) Bool)
(declare-fun IsWandField_2489_4790 (T@Field_8104_4790) Bool)
(declare-fun IsPredicateField_2489_53 (T@Field_8104_53) Bool)
(declare-fun IsWandField_2489_53 (T@Field_8104_53) Bool)
(declare-fun IsPredicateField_2489_1203 (T@Field_8104_1203) Bool)
(declare-fun IsWandField_2489_1203 (T@Field_8104_1203) Bool)
(declare-fun IsPredicateField_2537_25559 (T@Field_4776_8122) Bool)
(declare-fun IsWandField_2537_25575 (T@Field_4776_8122) Bool)
(declare-fun IsPredicateField_2537_4790 (T@Field_4789_4790) Bool)
(declare-fun IsWandField_2537_4790 (T@Field_4789_4790) Bool)
(declare-fun IsPredicateField_2537_53 (T@Field_4776_53) Bool)
(declare-fun IsWandField_2537_53 (T@Field_4776_53) Bool)
(declare-fun HasDirectPerm_8104_15403 (T@PolymorphicMapType_4737 T@Ref T@Field_8117_8122) Bool)
(declare-fun HasDirectPerm_8104_1203 (T@PolymorphicMapType_4737 T@Ref T@Field_8104_1203) Bool)
(declare-fun HasDirectPerm_8104_4790 (T@PolymorphicMapType_4737 T@Ref T@Field_8104_4790) Bool)
(declare-fun HasDirectPerm_8104_53 (T@PolymorphicMapType_4737 T@Ref T@Field_8104_53) Bool)
(declare-fun HasDirectPerm_4776_14225 (T@PolymorphicMapType_4737 T@Ref T@Field_4776_8122) Bool)
(declare-fun HasDirectPerm_4776_1203 (T@PolymorphicMapType_4737 T@Ref T@Field_8746_1508) Bool)
(declare-fun HasDirectPerm_4776_4790 (T@PolymorphicMapType_4737 T@Ref T@Field_4789_4790) Bool)
(declare-fun HasDirectPerm_4776_53 (T@PolymorphicMapType_4737 T@Ref T@Field_4776_53) Bool)
(declare-fun |wand#ft| (T@Ref Real T@Ref Real) T@Field_8133_8134)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (T@Ref Real T@Ref Real) T@Field_8117_8122)
(declare-fun sumMask (T@PolymorphicMapType_4737 T@PolymorphicMapType_4737 T@PolymorphicMapType_4737) Bool)
(declare-fun InsidePredicate_8104_4776 (T@Field_8133_8134 T@FrameType T@Field_4776_8134 T@FrameType) Bool)
(declare-fun InsidePredicate_4776_8104 (T@Field_4776_8134 T@FrameType T@Field_8133_8134 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_4716) (Heap1 T@PolymorphicMapType_4716) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Real) ) (! (= (getPredWandId_2489_1203 (wand arg1 arg2 arg3 arg4)) 0)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((Heap T@PolymorphicMapType_4716) (Mask T@PolymorphicMapType_4737) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4716) (Heap1@@0 T@PolymorphicMapType_4716) (Heap2 T@PolymorphicMapType_4716) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8133_8134) ) (!  (not (select (|PolymorphicMapType_5265_8104_8134#PolymorphicMapType_5265| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5265_8104_8134#PolymorphicMapType_5265| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8117_8122) ) (!  (not (select (|PolymorphicMapType_5265_8104_18272#PolymorphicMapType_5265| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5265_8104_18272#PolymorphicMapType_5265| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8104_1203) ) (!  (not (select (|PolymorphicMapType_5265_8104_1203#PolymorphicMapType_5265| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5265_8104_1203#PolymorphicMapType_5265| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8104_4790) ) (!  (not (select (|PolymorphicMapType_5265_8104_4790#PolymorphicMapType_5265| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5265_8104_4790#PolymorphicMapType_5265| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8104_53) ) (!  (not (select (|PolymorphicMapType_5265_8104_53#PolymorphicMapType_5265| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5265_8104_53#PolymorphicMapType_5265| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4776_8134) ) (!  (not (select (|PolymorphicMapType_5265_4776_8134#PolymorphicMapType_5265| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5265_4776_8134#PolymorphicMapType_5265| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4776_8122) ) (!  (not (select (|PolymorphicMapType_5265_4776_17224#PolymorphicMapType_5265| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5265_4776_17224#PolymorphicMapType_5265| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8746_1508) ) (!  (not (select (|PolymorphicMapType_5265_4776_1203#PolymorphicMapType_5265| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5265_4776_1203#PolymorphicMapType_5265| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_4789_4790) ) (!  (not (select (|PolymorphicMapType_5265_4776_4790#PolymorphicMapType_5265| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5265_4776_4790#PolymorphicMapType_5265| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_4776_53) ) (!  (not (select (|PolymorphicMapType_5265_4776_53#PolymorphicMapType_5265| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5265_4776_53#PolymorphicMapType_5265| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4716) (ExhaleHeap T@PolymorphicMapType_4716) (Mask@@0 T@PolymorphicMapType_4737) (pm_f T@Field_8133_8134) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8104_8134 Mask@@0 null pm_f) (IsPredicateField_2502_2503 pm_f)) (= (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@0) null (PredicateMaskField_8104 pm_f)) (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap) null (PredicateMaskField_8104 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2502_2503 pm_f) (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap) null (PredicateMaskField_8104 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4716) (ExhaleHeap@@0 T@PolymorphicMapType_4716) (Mask@@1 T@PolymorphicMapType_4737) (pm_f@@0 T@Field_4776_8134) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4776_8134 Mask@@1 null pm_f@@0) (IsPredicateField_4776_15919 pm_f@@0)) (= (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@1) null (PredicateMaskField_4776 pm_f@@0)) (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@0) null (PredicateMaskField_4776 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4776_15919 pm_f@@0) (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@0) null (PredicateMaskField_4776 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4716) (ExhaleHeap@@1 T@PolymorphicMapType_4716) (Mask@@2 T@PolymorphicMapType_4737) (pm_f@@1 T@Field_8133_8134) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8104_8134 Mask@@2 null pm_f@@1) (IsWandField_2502_2503 pm_f@@1)) (= (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@2) null (WandMaskField_2502 pm_f@@1)) (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@1) null (WandMaskField_2502 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_2502_2503 pm_f@@1) (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@1) null (WandMaskField_2502 pm_f@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4716) (ExhaleHeap@@2 T@PolymorphicMapType_4716) (Mask@@3 T@PolymorphicMapType_4737) (pm_f@@2 T@Field_4776_8134) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4776_8134 Mask@@3 null pm_f@@2) (IsWandField_4776_19284 pm_f@@2)) (= (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@3) null (WandMaskField_4776 pm_f@@2)) (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@2) null (WandMaskField_4776 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4776_19284 pm_f@@2) (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@2) null (WandMaskField_4776 pm_f@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4716) (ExhaleHeap@@3 T@PolymorphicMapType_4716) (Mask@@4 T@PolymorphicMapType_4737) (pm_f@@3 T@Field_8133_8134) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8104_8134 Mask@@4 null pm_f@@3) (IsPredicateField_2502_2503 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_4776_53) ) (!  (=> (select (|PolymorphicMapType_5265_4776_53#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@4) null (PredicateMaskField_8104 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@4) o2 f_2) (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4789_4790) ) (!  (=> (select (|PolymorphicMapType_5265_4776_4790#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@4) null (PredicateMaskField_8104 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_8746_1508) ) (!  (=> (select (|PolymorphicMapType_5265_4776_1203#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@4) null (PredicateMaskField_8104 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4776_8122) ) (!  (=> (select (|PolymorphicMapType_5265_4776_17224#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@4) null (PredicateMaskField_8104 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_4776_8134) ) (!  (=> (select (|PolymorphicMapType_5265_4776_8134#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@4) null (PredicateMaskField_8104 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_8104_53) ) (!  (=> (select (|PolymorphicMapType_5265_8104_53#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@4) null (PredicateMaskField_8104 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@4) o2@@4 f_2@@4) (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_8104_4790) ) (!  (=> (select (|PolymorphicMapType_5265_8104_4790#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@4) null (PredicateMaskField_8104 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@4) o2@@5 f_2@@5) (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_8104_1203) ) (!  (=> (select (|PolymorphicMapType_5265_8104_1203#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@4) null (PredicateMaskField_8104 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@4) o2@@6 f_2@@6) (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_8117_8122) ) (!  (=> (select (|PolymorphicMapType_5265_8104_18272#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@4) null (PredicateMaskField_8104 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@4) o2@@7 f_2@@7) (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_8133_8134) ) (!  (=> (select (|PolymorphicMapType_5265_8104_8134#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@4) null (PredicateMaskField_8104 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@4) o2@@8 f_2@@8) (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_2502_2503 pm_f@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4716) (ExhaleHeap@@4 T@PolymorphicMapType_4716) (Mask@@5 T@PolymorphicMapType_4737) (pm_f@@4 T@Field_4776_8134) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4776_8134 Mask@@5 null pm_f@@4) (IsPredicateField_4776_15919 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_4776_53) ) (!  (=> (select (|PolymorphicMapType_5265_4776_53#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@5) null (PredicateMaskField_4776 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@5) o2@@9 f_2@@9) (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_4789_4790) ) (!  (=> (select (|PolymorphicMapType_5265_4776_4790#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@5) null (PredicateMaskField_4776 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@5) o2@@10 f_2@@10) (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_8746_1508) ) (!  (=> (select (|PolymorphicMapType_5265_4776_1203#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@5) null (PredicateMaskField_4776 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@5) o2@@11 f_2@@11) (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_4776_8122) ) (!  (=> (select (|PolymorphicMapType_5265_4776_17224#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@5) null (PredicateMaskField_4776 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@5) o2@@12 f_2@@12) (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_4776_8134) ) (!  (=> (select (|PolymorphicMapType_5265_4776_8134#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@5) null (PredicateMaskField_4776 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@5) o2@@13 f_2@@13) (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_8104_53) ) (!  (=> (select (|PolymorphicMapType_5265_8104_53#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@5) null (PredicateMaskField_4776 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@5) o2@@14 f_2@@14) (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_8104_4790) ) (!  (=> (select (|PolymorphicMapType_5265_8104_4790#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@5) null (PredicateMaskField_4776 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@5) o2@@15 f_2@@15) (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_8104_1203) ) (!  (=> (select (|PolymorphicMapType_5265_8104_1203#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@5) null (PredicateMaskField_4776 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@5) o2@@16 f_2@@16) (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_8117_8122) ) (!  (=> (select (|PolymorphicMapType_5265_8104_18272#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@5) null (PredicateMaskField_4776 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@5) o2@@17 f_2@@17) (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_8133_8134) ) (!  (=> (select (|PolymorphicMapType_5265_8104_8134#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@5) null (PredicateMaskField_4776 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@5) o2@@18 f_2@@18) (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4776_15919 pm_f@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4716) (ExhaleHeap@@5 T@PolymorphicMapType_4716) (Mask@@6 T@PolymorphicMapType_4737) (pm_f@@5 T@Field_8133_8134) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8104_8134 Mask@@6 null pm_f@@5) (IsWandField_2502_2503 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_4776_53) ) (!  (=> (select (|PolymorphicMapType_5265_4776_53#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@6) null (WandMaskField_2502 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@6) o2@@19 f_2@@19) (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_4789_4790) ) (!  (=> (select (|PolymorphicMapType_5265_4776_4790#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@6) null (WandMaskField_2502 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@6) o2@@20 f_2@@20) (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_8746_1508) ) (!  (=> (select (|PolymorphicMapType_5265_4776_1203#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@6) null (WandMaskField_2502 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@6) o2@@21 f_2@@21) (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_4776_8122) ) (!  (=> (select (|PolymorphicMapType_5265_4776_17224#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@6) null (WandMaskField_2502 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@6) o2@@22 f_2@@22) (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_4776_8134) ) (!  (=> (select (|PolymorphicMapType_5265_4776_8134#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@6) null (WandMaskField_2502 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@6) o2@@23 f_2@@23) (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_8104_53) ) (!  (=> (select (|PolymorphicMapType_5265_8104_53#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@6) null (WandMaskField_2502 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@6) o2@@24 f_2@@24) (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_8104_4790) ) (!  (=> (select (|PolymorphicMapType_5265_8104_4790#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@6) null (WandMaskField_2502 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@6) o2@@25 f_2@@25) (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_8104_1203) ) (!  (=> (select (|PolymorphicMapType_5265_8104_1203#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@6) null (WandMaskField_2502 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@6) o2@@26 f_2@@26) (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_8117_8122) ) (!  (=> (select (|PolymorphicMapType_5265_8104_18272#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@6) null (WandMaskField_2502 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@6) o2@@27 f_2@@27) (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_8133_8134) ) (!  (=> (select (|PolymorphicMapType_5265_8104_8134#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@6) null (WandMaskField_2502 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@6) o2@@28 f_2@@28) (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (IsWandField_2502_2503 pm_f@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4716) (ExhaleHeap@@6 T@PolymorphicMapType_4716) (Mask@@7 T@PolymorphicMapType_4737) (pm_f@@6 T@Field_4776_8134) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4776_8134 Mask@@7 null pm_f@@6) (IsWandField_4776_19284 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_4776_53) ) (!  (=> (select (|PolymorphicMapType_5265_4776_53#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@7) null (WandMaskField_4776 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@7) o2@@29 f_2@@29) (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_4789_4790) ) (!  (=> (select (|PolymorphicMapType_5265_4776_4790#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@7) null (WandMaskField_4776 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@7) o2@@30 f_2@@30) (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_8746_1508) ) (!  (=> (select (|PolymorphicMapType_5265_4776_1203#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@7) null (WandMaskField_4776 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@7) o2@@31 f_2@@31) (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_4776_8122) ) (!  (=> (select (|PolymorphicMapType_5265_4776_17224#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@7) null (WandMaskField_4776 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@7) o2@@32 f_2@@32) (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_4776_8134) ) (!  (=> (select (|PolymorphicMapType_5265_4776_8134#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@7) null (WandMaskField_4776 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@7) o2@@33 f_2@@33) (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_8104_53) ) (!  (=> (select (|PolymorphicMapType_5265_8104_53#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@7) null (WandMaskField_4776 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@7) o2@@34 f_2@@34) (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_8104_4790) ) (!  (=> (select (|PolymorphicMapType_5265_8104_4790#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@7) null (WandMaskField_4776 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@7) o2@@35 f_2@@35) (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_8104_1203) ) (!  (=> (select (|PolymorphicMapType_5265_8104_1203#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@7) null (WandMaskField_4776 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@7) o2@@36 f_2@@36) (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_8117_8122) ) (!  (=> (select (|PolymorphicMapType_5265_8104_18272#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@7) null (WandMaskField_4776 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@7) o2@@37 f_2@@37) (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_8133_8134) ) (!  (=> (select (|PolymorphicMapType_5265_8104_8134#PolymorphicMapType_5265| (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@7) null (WandMaskField_4776 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@7) o2@@38 f_2@@38) (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (IsWandField_4776_19284 pm_f@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4716) (ExhaleHeap@@7 T@PolymorphicMapType_4716) (Mask@@8 T@PolymorphicMapType_4737) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@8) o_1 $allocated) (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_8133_8134) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8104_8104 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8104_8104 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4776_8134) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4776_4776 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4776_4776 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2537_1508 f_7)))
(assert  (not (IsWandField_2537_1508 f_7)))
(assert  (not (IsPredicateField_2537_1508 g)))
(assert  (not (IsWandField_2537_1508 g)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4716) (ExhaleHeap@@8 T@PolymorphicMapType_4716) (Mask@@9 T@PolymorphicMapType_4737) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@9 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4737) (o_2@@9 T@Ref) (f_4@@9 T@Field_8133_8134) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2502_2503 f_4@@9))) (not (IsWandField_2502_2503 f_4@@9))) (<= (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4737) (o_2@@10 T@Ref) (f_4@@10 T@Field_8117_8122) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2489_26376 f_4@@10))) (not (IsWandField_2489_26392 f_4@@10))) (<= (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4737) (o_2@@11 T@Ref) (f_4@@11 T@Field_8104_4790) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2489_4790 f_4@@11))) (not (IsWandField_2489_4790 f_4@@11))) (<= (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4737) (o_2@@12 T@Ref) (f_4@@12 T@Field_8104_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2489_53 f_4@@12))) (not (IsWandField_2489_53 f_4@@12))) (<= (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4737) (o_2@@13 T@Ref) (f_4@@13 T@Field_8104_1203) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2489_1203 f_4@@13))) (not (IsWandField_2489_1203 f_4@@13))) (<= (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4737) (o_2@@14 T@Ref) (f_4@@14 T@Field_4776_8134) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4776_15919 f_4@@14))) (not (IsWandField_4776_19284 f_4@@14))) (<= (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4737) (o_2@@15 T@Ref) (f_4@@15 T@Field_4776_8122) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2537_25559 f_4@@15))) (not (IsWandField_2537_25575 f_4@@15))) (<= (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4737) (o_2@@16 T@Ref) (f_4@@16 T@Field_4789_4790) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2537_4790 f_4@@16))) (not (IsWandField_2537_4790 f_4@@16))) (<= (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4737) (o_2@@17 T@Ref) (f_4@@17 T@Field_4776_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2537_53 f_4@@17))) (not (IsWandField_2537_53 f_4@@17))) (<= (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4737) (o_2@@18 T@Ref) (f_4@@18 T@Field_8746_1508) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2537_1508 f_4@@18))) (not (IsWandField_2537_1508 f_4@@18))) (<= (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4737) (o_2@@19 T@Ref) (f_4@@19 T@Field_8133_8134) ) (! (= (HasDirectPerm_8104_8134 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8104_8134 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4737) (o_2@@20 T@Ref) (f_4@@20 T@Field_8117_8122) ) (! (= (HasDirectPerm_8104_15403 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8104_15403 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4737) (o_2@@21 T@Ref) (f_4@@21 T@Field_8104_1203) ) (! (= (HasDirectPerm_8104_1203 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8104_1203 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4737) (o_2@@22 T@Ref) (f_4@@22 T@Field_8104_4790) ) (! (= (HasDirectPerm_8104_4790 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8104_4790 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4737) (o_2@@23 T@Ref) (f_4@@23 T@Field_8104_53) ) (! (= (HasDirectPerm_8104_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8104_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4737) (o_2@@24 T@Ref) (f_4@@24 T@Field_4776_8134) ) (! (= (HasDirectPerm_4776_8134 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4776_8134 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4737) (o_2@@25 T@Ref) (f_4@@25 T@Field_4776_8122) ) (! (= (HasDirectPerm_4776_14225 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4776_14225 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4737) (o_2@@26 T@Ref) (f_4@@26 T@Field_8746_1508) ) (! (= (HasDirectPerm_4776_1203 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4776_1203 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4737) (o_2@@27 T@Ref) (f_4@@27 T@Field_4789_4790) ) (! (= (HasDirectPerm_4776_4790 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4776_4790 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4737) (o_2@@28 T@Ref) (f_4@@28 T@Field_4776_53) ) (! (= (HasDirectPerm_4776_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4776_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 Real) ) (! (IsWandField_2489_1203 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 Real) ) (! (IsWandField_2502_2503 (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4716) (ExhaleHeap@@9 T@PolymorphicMapType_4716) (Mask@@30 T@PolymorphicMapType_4737) (o_1@@0 T@Ref) (f_2@@39 T@Field_8133_8134) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_8104_8134 Mask@@30 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@10) o_1@@0 f_2@@39) (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4716) (ExhaleHeap@@10 T@PolymorphicMapType_4716) (Mask@@31 T@PolymorphicMapType_4737) (o_1@@1 T@Ref) (f_2@@40 T@Field_8117_8122) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_8104_15403 Mask@@31 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@11) o_1@@1 f_2@@40) (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4716) (ExhaleHeap@@11 T@PolymorphicMapType_4716) (Mask@@32 T@PolymorphicMapType_4737) (o_1@@2 T@Ref) (f_2@@41 T@Field_8104_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_8104_1203 Mask@@32 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@12) o_1@@2 f_2@@41) (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4716) (ExhaleHeap@@12 T@PolymorphicMapType_4716) (Mask@@33 T@PolymorphicMapType_4737) (o_1@@3 T@Ref) (f_2@@42 T@Field_8104_4790) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_8104_4790 Mask@@33 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@13) o_1@@3 f_2@@42) (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4716) (ExhaleHeap@@13 T@PolymorphicMapType_4716) (Mask@@34 T@PolymorphicMapType_4737) (o_1@@4 T@Ref) (f_2@@43 T@Field_8104_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_8104_53 Mask@@34 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@14) o_1@@4 f_2@@43) (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4716) (ExhaleHeap@@14 T@PolymorphicMapType_4716) (Mask@@35 T@PolymorphicMapType_4737) (o_1@@5 T@Ref) (f_2@@44 T@Field_4776_8134) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_4776_8134 Mask@@35 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@15) o_1@@5 f_2@@44) (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4716) (ExhaleHeap@@15 T@PolymorphicMapType_4716) (Mask@@36 T@PolymorphicMapType_4737) (o_1@@6 T@Ref) (f_2@@45 T@Field_4776_8122) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_4776_14225 Mask@@36 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@16) o_1@@6 f_2@@45) (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4716) (ExhaleHeap@@16 T@PolymorphicMapType_4716) (Mask@@37 T@PolymorphicMapType_4737) (o_1@@7 T@Ref) (f_2@@46 T@Field_8746_1508) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_4776_1203 Mask@@37 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@17) o_1@@7 f_2@@46) (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4716) (ExhaleHeap@@17 T@PolymorphicMapType_4716) (Mask@@38 T@PolymorphicMapType_4737) (o_1@@8 T@Ref) (f_2@@47 T@Field_4789_4790) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_4776_4790 Mask@@38 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@18) o_1@@8 f_2@@47) (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4716) (ExhaleHeap@@18 T@PolymorphicMapType_4716) (Mask@@39 T@PolymorphicMapType_4737) (o_1@@9 T@Ref) (f_2@@48 T@Field_4776_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_4776_53 Mask@@39 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@19) o_1@@9 f_2@@48) (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Real) ) (!  (not (IsPredicateField_2489_1203 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 Real) ) (!  (not (IsPredicateField_2502_2503 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 Real) ) (! (= (|wand#sm| arg1@@4 arg2@@4 arg3@@4 arg4@@4) (WandMaskField_2502 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_2502 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8133_8134) ) (! (= (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8117_8122) ) (! (= (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_8104_4790) ) (! (= (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_8104_53) ) (! (= (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_8104_1203) ) (! (= (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_4776_8134) ) (! (= (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4776_8122) ) (! (= (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_4789_4790) ) (! (= (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4776_53) ) (! (= (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_8746_1508) ) (! (= (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4737) (SummandMask1 T@PolymorphicMapType_4737) (SummandMask2 T@PolymorphicMapType_4737) (o_2@@39 T@Ref) (f_4@@39 T@Field_8133_8134) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4737) (SummandMask1@@0 T@PolymorphicMapType_4737) (SummandMask2@@0 T@PolymorphicMapType_4737) (o_2@@40 T@Ref) (f_4@@40 T@Field_8117_8122) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4737) (SummandMask1@@1 T@PolymorphicMapType_4737) (SummandMask2@@1 T@PolymorphicMapType_4737) (o_2@@41 T@Ref) (f_4@@41 T@Field_8104_4790) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4737) (SummandMask1@@2 T@PolymorphicMapType_4737) (SummandMask2@@2 T@PolymorphicMapType_4737) (o_2@@42 T@Ref) (f_4@@42 T@Field_8104_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4737) (SummandMask1@@3 T@PolymorphicMapType_4737) (SummandMask2@@3 T@PolymorphicMapType_4737) (o_2@@43 T@Ref) (f_4@@43 T@Field_8104_1203) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4737) (SummandMask1@@4 T@PolymorphicMapType_4737) (SummandMask2@@4 T@PolymorphicMapType_4737) (o_2@@44 T@Ref) (f_4@@44 T@Field_4776_8134) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4737) (SummandMask1@@5 T@PolymorphicMapType_4737) (SummandMask2@@5 T@PolymorphicMapType_4737) (o_2@@45 T@Ref) (f_4@@45 T@Field_4776_8122) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4737) (SummandMask1@@6 T@PolymorphicMapType_4737) (SummandMask2@@6 T@PolymorphicMapType_4737) (o_2@@46 T@Ref) (f_4@@46 T@Field_4789_4790) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4737) (SummandMask1@@7 T@PolymorphicMapType_4737) (SummandMask2@@7 T@PolymorphicMapType_4737) (o_2@@47 T@Ref) (f_4@@47 T@Field_4776_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4737) (SummandMask1@@8 T@PolymorphicMapType_4737) (SummandMask2@@8 T@PolymorphicMapType_4737) (o_2@@48 T@Ref) (f_4@@48 T@Field_8746_1508) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4716) (o T@Ref) (f_3 T@Field_8133_8134) (v T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@20) (store (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@20) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@20) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@20) (store (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@20) o f_3 v)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4716) (o@@0 T@Ref) (f_3@@0 T@Field_8117_8122) (v@@0 T@PolymorphicMapType_5265) ) (! (succHeap Heap@@21 (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@21) (store (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@21) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@21) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@21) (store (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@21) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4716) (o@@1 T@Ref) (f_3@@1 T@Field_8104_1203) (v@@1 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@22) (store (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@22) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@22) (store (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@22) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@22) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4716) (o@@2 T@Ref) (f_3@@2 T@Field_8104_4790) (v@@2 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@23) (store (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@23) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@23) (store (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@23) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@23) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4716) (o@@3 T@Ref) (f_3@@3 T@Field_8104_53) (v@@3 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@24) (store (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@24) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@24) (store (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@24) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@24) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4716) (o@@4 T@Ref) (f_3@@4 T@Field_4776_8134) (v@@4 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@25) (store (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@25) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@25) (store (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@25) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@25) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4716) (o@@5 T@Ref) (f_3@@5 T@Field_4776_8122) (v@@5 T@PolymorphicMapType_5265) ) (! (succHeap Heap@@26 (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@26) (store (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@26) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@26) (store (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@26) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@26) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4716) (o@@6 T@Ref) (f_3@@6 T@Field_8746_1508) (v@@6 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@27) (store (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@27) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@27) (store (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@27) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@27) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4716) (o@@7 T@Ref) (f_3@@7 T@Field_4789_4790) (v@@7 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@28) (store (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@28) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4716 (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@28) (store (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@28) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@28) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4716) (o@@8 T@Ref) (f_3@@8 T@Field_4776_53) (v@@8 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_4716 (store (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@29) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4716 (store (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@29) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_4776_1203#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_4776_14267#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_4776_8134#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_8104_53#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_8104_4790#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_8104_1203#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_8104_15445#PolymorphicMapType_4716| Heap@@29) (|PolymorphicMapType_4716_8104_8134#PolymorphicMapType_4716| Heap@@29)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_4789_4790) (Heap@@30 T@PolymorphicMapType_4716) ) (!  (=> (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@30) o@@9 $allocated) (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@30) (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@30) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4716_2360_2361#PolymorphicMapType_4716| Heap@@30) o@@9 f))
)))
(assert (forall ((p@@2 T@Field_8133_8134) (v_1@@1 T@FrameType) (q T@Field_8133_8134) (w@@1 T@FrameType) (r T@Field_8133_8134) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8104_8104 p@@2 v_1@@1 q w@@1) (InsidePredicate_8104_8104 q w@@1 r u)) (InsidePredicate_8104_8104 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8104_8104 p@@2 v_1@@1 q w@@1) (InsidePredicate_8104_8104 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_8133_8134) (v_1@@2 T@FrameType) (q@@0 T@Field_8133_8134) (w@@2 T@FrameType) (r@@0 T@Field_4776_8134) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8104_8104 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8104_4776 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8104_4776 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8104_8104 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8104_4776 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_8133_8134) (v_1@@3 T@FrameType) (q@@1 T@Field_4776_8134) (w@@3 T@FrameType) (r@@1 T@Field_8133_8134) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8104_4776 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4776_8104 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8104_8104 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8104_4776 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4776_8104 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_8133_8134) (v_1@@4 T@FrameType) (q@@2 T@Field_4776_8134) (w@@4 T@FrameType) (r@@2 T@Field_4776_8134) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8104_4776 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4776_4776 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8104_4776 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8104_4776 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4776_4776 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4776_8134) (v_1@@5 T@FrameType) (q@@3 T@Field_8133_8134) (w@@5 T@FrameType) (r@@3 T@Field_8133_8134) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4776_8104 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8104_8104 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4776_8104 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4776_8104 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8104_8104 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4776_8134) (v_1@@6 T@FrameType) (q@@4 T@Field_8133_8134) (w@@6 T@FrameType) (r@@4 T@Field_4776_8134) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4776_8104 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8104_4776 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4776_4776 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4776_8104 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8104_4776 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4776_8134) (v_1@@7 T@FrameType) (q@@5 T@Field_4776_8134) (w@@7 T@FrameType) (r@@5 T@Field_8133_8134) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4776_4776 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4776_8104 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4776_8104 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4776_4776 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4776_8104 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4776_8134) (v_1@@8 T@FrameType) (q@@6 T@Field_4776_8134) (w@@8 T@FrameType) (r@@6 T@Field_4776_8134) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4776_4776 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4776_4776 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4776_4776 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4776_4776 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4776_4776 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 Real) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Real) ) (!  (=> (= (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2)) (and (= arg1@@5 arg1_2) (and (= arg2@@5 arg2_2) (and (= arg3@@5 arg3_2) (= arg4@@5 arg4_2)))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_4737)
(declare-fun x () T@Ref)
(declare-fun Heap@@31 () T@PolymorphicMapType_4716)
(declare-fun Heap@0 () T@PolymorphicMapType_4716)
(declare-fun Mask@3 () T@PolymorphicMapType_4737)
(declare-fun y () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_4737)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_4716)
(declare-fun Mask@0 () T@PolymorphicMapType_4737)
(set-info :boogie-vc-id m_17)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon17_Then_correct true))
(let ((anon13_correct true))
(let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (= (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@1) null (wand x FullPerm x FullPerm)) (* (to_real 2) FullPerm))) (=> (= (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@1) null (wand x FullPerm x FullPerm)) (* (to_real 2) FullPerm)) (=> (and (and (state Heap@@31 Mask@1) (= Heap@0 Heap@@31)) (and (= Mask@3 Mask@1) (= (ControlFlow 0 12) 5))) anon13_correct)))))
(let ((anon16_Then_correct  (=> (= x y) (and (=> (= (ControlFlow 0 14) 11) anon17_Then_correct) (=> (= (ControlFlow 0 14) 12) anon17_Else_correct)))))
(let ((anon19_Else_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (= (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@2) null (wand y FullPerm y FullPerm)) FullPerm)) (=> (= (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@2) null (wand y FullPerm y FullPerm)) FullPerm) (=> (and (and (state ExhaleHeap@0 Mask@2) (= Heap@0 ExhaleHeap@0)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 6) 5))) anon13_correct)))))
(let ((anon19_Then_correct true))
(let ((anon18_Else_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (<= FullPerm (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@1) null (wand x FullPerm x FullPerm)))) (=> (<= FullPerm (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@1) null (wand x FullPerm x FullPerm))) (=> (= Mask@2 (PolymorphicMapType_4737 (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| Mask@1) (store (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@1) null (wand x FullPerm x FullPerm) (- (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@1) null (wand x FullPerm x FullPerm)) FullPerm)) (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| Mask@1) (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| Mask@1) (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| Mask@1) (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| Mask@1) (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| Mask@1) (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| Mask@1) (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| Mask@1) (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| Mask@1))) (=> (and (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2)) (and (=> (= (ControlFlow 0 8) 4) anon19_Then_correct) (=> (= (ControlFlow 0 8) 6) anon19_Else_correct))))))))
(let ((anon18_Then_correct true))
(let ((anon16_Else_correct  (=> (not (= x y)) (and (=> (= (ControlFlow 0 10) 3) anon18_Then_correct) (=> (= (ControlFlow 0 10) 8) anon18_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (and (= Mask@1 (PolymorphicMapType_4737 (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| Mask@0) (store (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@0) null (wand y FullPerm y FullPerm) (+ (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| Mask@0) null (wand y FullPerm y FullPerm)) FullPerm)) (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| Mask@0) (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| Mask@0) (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| Mask@0) (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| Mask@0) (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| Mask@0) (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| Mask@0) (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| Mask@0) (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| Mask@0))) (state Heap@@31 Mask@1)) (and (state Heap@@31 Mask@1) (state Heap@@31 Mask@1))) (and (=> (= (ControlFlow 0 15) 14) anon16_Then_correct) (=> (= (ControlFlow 0 15) 10) anon16_Else_correct)))))
(let ((anon15_Then_correct true))
(let ((anon14_Else_correct  (=> (and (and (= Mask@0 (PolymorphicMapType_4737 (|PolymorphicMapType_4737_2537_1508#PolymorphicMapType_4737| ZeroMask) (store (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| ZeroMask) null (wand x FullPerm x FullPerm) (+ (select (|PolymorphicMapType_4737_2489_1203#PolymorphicMapType_4737| ZeroMask) null (wand x FullPerm x FullPerm)) FullPerm)) (|PolymorphicMapType_4737_2537_53#PolymorphicMapType_4737| ZeroMask) (|PolymorphicMapType_4737_2537_4790#PolymorphicMapType_4737| ZeroMask) (|PolymorphicMapType_4737_2537_23755#PolymorphicMapType_4737| ZeroMask) (|PolymorphicMapType_4737_2537_8134#PolymorphicMapType_4737| ZeroMask) (|PolymorphicMapType_4737_2489_53#PolymorphicMapType_4737| ZeroMask) (|PolymorphicMapType_4737_2489_4790#PolymorphicMapType_4737| ZeroMask) (|PolymorphicMapType_4737_2489_24169#PolymorphicMapType_4737| ZeroMask) (|PolymorphicMapType_4737_2489_8134#PolymorphicMapType_4737| ZeroMask))) (state Heap@@31 Mask@0)) (and (state Heap@@31 Mask@0) (state Heap@@31 Mask@0))) (and (=> (= (ControlFlow 0 16) 2) anon15_Then_correct) (=> (= (ControlFlow 0 16) 15) anon15_Else_correct)))))
(let ((anon14_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@31 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@31) x $allocated) (select (|PolymorphicMapType_4716_2357_53#PolymorphicMapType_4716| Heap@@31) y $allocated))) (and (=> (= (ControlFlow 0 17) 1) anon14_Then_correct) (=> (= (ControlFlow 0 17) 16) anon14_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 17) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
