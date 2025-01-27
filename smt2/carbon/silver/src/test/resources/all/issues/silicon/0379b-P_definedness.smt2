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
(declare-sort T@Field_4141_53 0)
(declare-sort T@Field_4154_4155 0)
(declare-sort T@Field_7884_7885 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_2287_7885 0)
(declare-sort T@Field_2287_8616 0)
(declare-sort T@Field_7884_2288 0)
(declare-sort T@Field_7884_53 0)
(declare-sort T@Field_8611_8616 0)
(declare-sort T@Field_9574_2288 0)
(declare-sort T@Field_9574_53 0)
(declare-sort T@Field_9574_9575 0)
(declare-sort T@Field_10235_10240 0)
(declare-datatypes ((T@PolymorphicMapType_4102 0)) (((PolymorphicMapType_4102 (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| (Array T@Ref T@Field_7884_7885 Real)) (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| (Array T@Ref T@Field_4154_4155 Real)) (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| (Array T@Ref T@Field_9574_9575 Real)) (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| (Array T@Ref T@Field_4141_53 Real)) (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| (Array T@Ref T@Field_7884_2288 Real)) (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| (Array T@Ref T@Field_7884_53 Real)) (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| (Array T@Ref T@Field_8611_8616 Real)) (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| (Array T@Ref T@Field_2287_7885 Real)) (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| (Array T@Ref T@Field_2287_8616 Real)) (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| (Array T@Ref T@Field_9574_2288 Real)) (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| (Array T@Ref T@Field_9574_53 Real)) (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| (Array T@Ref T@Field_10235_10240 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4630 0)) (((PolymorphicMapType_4630 (|PolymorphicMapType_4630_4141_53#PolymorphicMapType_4630| (Array T@Ref T@Field_4141_53 Bool)) (|PolymorphicMapType_4630_4141_4155#PolymorphicMapType_4630| (Array T@Ref T@Field_4154_4155 Bool)) (|PolymorphicMapType_4630_4141_7885#PolymorphicMapType_4630| (Array T@Ref T@Field_2287_7885 Bool)) (|PolymorphicMapType_4630_4141_15665#PolymorphicMapType_4630| (Array T@Ref T@Field_2287_8616 Bool)) (|PolymorphicMapType_4630_7884_53#PolymorphicMapType_4630| (Array T@Ref T@Field_7884_53 Bool)) (|PolymorphicMapType_4630_7884_4155#PolymorphicMapType_4630| (Array T@Ref T@Field_7884_2288 Bool)) (|PolymorphicMapType_4630_7884_7885#PolymorphicMapType_4630| (Array T@Ref T@Field_7884_7885 Bool)) (|PolymorphicMapType_4630_7884_16515#PolymorphicMapType_4630| (Array T@Ref T@Field_8611_8616 Bool)) (|PolymorphicMapType_4630_9574_53#PolymorphicMapType_4630| (Array T@Ref T@Field_9574_53 Bool)) (|PolymorphicMapType_4630_9574_4155#PolymorphicMapType_4630| (Array T@Ref T@Field_9574_2288 Bool)) (|PolymorphicMapType_4630_9574_7885#PolymorphicMapType_4630| (Array T@Ref T@Field_9574_9575 Bool)) (|PolymorphicMapType_4630_9574_17365#PolymorphicMapType_4630| (Array T@Ref T@Field_10235_10240 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4081 0)) (((PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| (Array T@Ref T@Field_4141_53 Bool)) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| (Array T@Ref T@Field_4154_4155 T@Ref)) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| (Array T@Ref T@Field_7884_7885 T@FrameType)) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| (Array T@Ref T@Field_2287_7885 T@FrameType)) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| (Array T@Ref T@Field_2287_8616 T@PolymorphicMapType_4630)) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| (Array T@Ref T@Field_7884_2288 T@Ref)) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| (Array T@Ref T@Field_7884_53 Bool)) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| (Array T@Ref T@Field_8611_8616 T@PolymorphicMapType_4630)) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| (Array T@Ref T@Field_9574_2288 T@Ref)) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| (Array T@Ref T@Field_9574_53 Bool)) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| (Array T@Ref T@Field_9574_9575 T@FrameType)) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| (Array T@Ref T@Field_10235_10240 T@PolymorphicMapType_4630)) ) ) ))
(declare-fun $allocated () T@Field_4141_53)
(declare-fun f1_2 () T@Field_4154_4155)
(declare-fun f2_2 () T@Field_4154_4155)
(declare-fun val () T@Field_4141_53)
(declare-fun succHeap (T@PolymorphicMapType_4081 T@PolymorphicMapType_4081) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4081 T@PolymorphicMapType_4081) Bool)
(declare-fun state (T@PolymorphicMapType_4081 T@PolymorphicMapType_4102) Bool)
(declare-fun |f'| (T@PolymorphicMapType_4081 T@Ref Real) Bool)
(declare-fun |f#frame| (T@FrameType T@Ref Real) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun null () T@Ref)
(declare-fun P (T@Ref) T@Field_7884_7885)
(declare-fun GoodMask (T@PolymorphicMapType_4102) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4630)
(declare-fun dummyFunction_1468 (Bool) Bool)
(declare-fun |f#triggerStateless| (T@Ref Real) Bool)
(declare-fun IsPredicateField_2329_2330 (T@Field_7884_7885) Bool)
(declare-fun u32 (T@Ref) T@Field_9574_9575)
(declare-fun IsPredicateField_2354_2355 (T@Field_9574_9575) Bool)
(declare-fun |P#trigger_2329| (T@PolymorphicMapType_4081 T@Field_7884_7885) Bool)
(declare-fun |P#everUsed_2329| (T@Field_7884_7885) Bool)
(declare-fun |u32#trigger_2354| (T@PolymorphicMapType_4081 T@Field_9574_9575) Bool)
(declare-fun |u32#everUsed_2354| (T@Field_9574_9575) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4081 T@PolymorphicMapType_4081 T@PolymorphicMapType_4102) Bool)
(declare-fun HasDirectPerm_9574_7885 (T@PolymorphicMapType_4102 T@Ref T@Field_9574_9575) Bool)
(declare-fun PredicateMaskField_2354 (T@Field_9574_9575) T@Field_10235_10240)
(declare-fun HasDirectPerm_7884_7885 (T@PolymorphicMapType_4102 T@Ref T@Field_7884_7885) Bool)
(declare-fun PredicateMaskField_2329 (T@Field_7884_7885) T@Field_8611_8616)
(declare-fun IsPredicateField_2287_14054 (T@Field_2287_7885) Bool)
(declare-fun HasDirectPerm_2287_7885 (T@PolymorphicMapType_4102 T@Ref T@Field_2287_7885) Bool)
(declare-fun PredicateMaskField_2287 (T@Field_2287_7885) T@Field_2287_8616)
(declare-fun IsWandField_9574_19168 (T@Field_9574_9575) Bool)
(declare-fun WandMaskField_9574 (T@Field_9574_9575) T@Field_10235_10240)
(declare-fun IsWandField_7884_18811 (T@Field_7884_7885) Bool)
(declare-fun WandMaskField_7884 (T@Field_7884_7885) T@Field_8611_8616)
(declare-fun IsWandField_2287_18454 (T@Field_2287_7885) Bool)
(declare-fun WandMaskField_2287 (T@Field_2287_7885) T@Field_2287_8616)
(declare-fun |P#sm| (T@Ref) T@Field_8611_8616)
(declare-fun |u32#sm| (T@Ref) T@Field_10235_10240)
(declare-fun dummyHeap () T@PolymorphicMapType_4081)
(declare-fun ZeroMask () T@PolymorphicMapType_4102)
(declare-fun InsidePredicate_9574_9574 (T@Field_9574_9575 T@FrameType T@Field_9574_9575 T@FrameType) Bool)
(declare-fun InsidePredicate_7884_7884 (T@Field_7884_7885 T@FrameType T@Field_7884_7885 T@FrameType) Bool)
(declare-fun InsidePredicate_4141_4141 (T@Field_2287_7885 T@FrameType T@Field_2287_7885 T@FrameType) Bool)
(declare-fun IsPredicateField_2287_2288 (T@Field_4154_4155) Bool)
(declare-fun IsWandField_2287_2288 (T@Field_4154_4155) Bool)
(declare-fun IsPredicateField_2293_1219 (T@Field_4141_53) Bool)
(declare-fun IsWandField_2293_1219 (T@Field_4141_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2354_27630 (T@Field_10235_10240) Bool)
(declare-fun IsWandField_2354_27646 (T@Field_10235_10240) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2354_1219 (T@Field_9574_53) Bool)
(declare-fun IsWandField_2354_1219 (T@Field_9574_53) Bool)
(declare-fun IsPredicateField_2354_2288 (T@Field_9574_2288) Bool)
(declare-fun IsWandField_2354_2288 (T@Field_9574_2288) Bool)
(declare-fun IsPredicateField_2287_26967 (T@Field_2287_8616) Bool)
(declare-fun IsWandField_2287_26983 (T@Field_2287_8616) Bool)
(declare-fun IsPredicateField_2329_26332 (T@Field_8611_8616) Bool)
(declare-fun IsWandField_2329_26348 (T@Field_8611_8616) Bool)
(declare-fun IsPredicateField_2329_1219 (T@Field_7884_53) Bool)
(declare-fun IsWandField_2329_1219 (T@Field_7884_53) Bool)
(declare-fun IsPredicateField_2329_2288 (T@Field_7884_2288) Bool)
(declare-fun IsWandField_2329_2288 (T@Field_7884_2288) Bool)
(declare-fun HasDirectPerm_9574_13766 (T@PolymorphicMapType_4102 T@Ref T@Field_10235_10240) Bool)
(declare-fun HasDirectPerm_9574_53 (T@PolymorphicMapType_4102 T@Ref T@Field_9574_53) Bool)
(declare-fun HasDirectPerm_9574_2288 (T@PolymorphicMapType_4102 T@Ref T@Field_9574_2288) Bool)
(declare-fun HasDirectPerm_7884_12809 (T@PolymorphicMapType_4102 T@Ref T@Field_8611_8616) Bool)
(declare-fun HasDirectPerm_7884_53 (T@PolymorphicMapType_4102 T@Ref T@Field_7884_53) Bool)
(declare-fun HasDirectPerm_7884_2288 (T@PolymorphicMapType_4102 T@Ref T@Field_7884_2288) Bool)
(declare-fun HasDirectPerm_2287_11869 (T@PolymorphicMapType_4102 T@Ref T@Field_2287_8616) Bool)
(declare-fun HasDirectPerm_2287_53 (T@PolymorphicMapType_4102 T@Ref T@Field_4141_53) Bool)
(declare-fun HasDirectPerm_2287_2288 (T@PolymorphicMapType_4102 T@Ref T@Field_4154_4155) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4102 T@PolymorphicMapType_4102 T@PolymorphicMapType_4102) Bool)
(declare-fun getPredWandId_2329_2330 (T@Field_7884_7885) Int)
(declare-fun getPredWandId_2354_2355 (T@Field_9574_9575) Int)
(declare-fun f_6@@0 (T@PolymorphicMapType_4081 T@Ref Real) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun InsidePredicate_9574_7884 (T@Field_9574_9575 T@FrameType T@Field_7884_7885 T@FrameType) Bool)
(declare-fun InsidePredicate_9574_4141 (T@Field_9574_9575 T@FrameType T@Field_2287_7885 T@FrameType) Bool)
(declare-fun InsidePredicate_7884_9574 (T@Field_7884_7885 T@FrameType T@Field_9574_9575 T@FrameType) Bool)
(declare-fun InsidePredicate_7884_4141 (T@Field_7884_7885 T@FrameType T@Field_2287_7885 T@FrameType) Bool)
(declare-fun InsidePredicate_4141_9574 (T@Field_2287_7885 T@FrameType T@Field_9574_9575 T@FrameType) Bool)
(declare-fun InsidePredicate_4141_7884 (T@Field_2287_7885 T@FrameType T@Field_7884_7885 T@FrameType) Bool)
(assert (and (distinct $allocated val)(distinct f1_2 f2_2))
)
(assert (forall ((Heap0 T@PolymorphicMapType_4081) (Heap1 T@PolymorphicMapType_4081) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4081) (Mask T@PolymorphicMapType_4102) (this T@Ref) (p_1 Real) ) (!  (=> (state Heap Mask) (= (|f'| Heap this p_1) (|f#frame| (ConditionalFrame p_1 (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap) null (P this))) this p_1)))
 :qid |stdinbpl.217:15|
 :skolemid |25|
 :pattern ( (state Heap Mask) (|f'| Heap this p_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4081) (Mask@@0 T@PolymorphicMapType_4102) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4081) (Heap1@@0 T@PolymorphicMapType_4081) (Heap2 T@PolymorphicMapType_4081) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10235_10240) ) (!  (not (select (|PolymorphicMapType_4630_9574_17365#PolymorphicMapType_4630| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_9574_17365#PolymorphicMapType_4630| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9574_9575) ) (!  (not (select (|PolymorphicMapType_4630_9574_7885#PolymorphicMapType_4630| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_9574_7885#PolymorphicMapType_4630| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9574_2288) ) (!  (not (select (|PolymorphicMapType_4630_9574_4155#PolymorphicMapType_4630| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_9574_4155#PolymorphicMapType_4630| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9574_53) ) (!  (not (select (|PolymorphicMapType_4630_9574_53#PolymorphicMapType_4630| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_9574_53#PolymorphicMapType_4630| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8611_8616) ) (!  (not (select (|PolymorphicMapType_4630_7884_16515#PolymorphicMapType_4630| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_7884_16515#PolymorphicMapType_4630| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7884_7885) ) (!  (not (select (|PolymorphicMapType_4630_7884_7885#PolymorphicMapType_4630| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_7884_7885#PolymorphicMapType_4630| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7884_2288) ) (!  (not (select (|PolymorphicMapType_4630_7884_4155#PolymorphicMapType_4630| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_7884_4155#PolymorphicMapType_4630| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7884_53) ) (!  (not (select (|PolymorphicMapType_4630_7884_53#PolymorphicMapType_4630| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_7884_53#PolymorphicMapType_4630| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_2287_8616) ) (!  (not (select (|PolymorphicMapType_4630_4141_15665#PolymorphicMapType_4630| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_4141_15665#PolymorphicMapType_4630| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_2287_7885) ) (!  (not (select (|PolymorphicMapType_4630_4141_7885#PolymorphicMapType_4630| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_4141_7885#PolymorphicMapType_4630| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_4154_4155) ) (!  (not (select (|PolymorphicMapType_4630_4141_4155#PolymorphicMapType_4630| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_4141_4155#PolymorphicMapType_4630| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_4141_53) ) (!  (not (select (|PolymorphicMapType_4630_4141_53#PolymorphicMapType_4630| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4630_4141_53#PolymorphicMapType_4630| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4081) (this@@0 T@Ref) (p_1@@0 Real) ) (! (dummyFunction_1468 (|f#triggerStateless| this@@0 p_1@@0))
 :qid |stdinbpl.204:15|
 :skolemid |23|
 :pattern ( (|f'| Heap@@1 this@@0 p_1@@0))
)))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_2329_2330 (P self))
 :qid |stdinbpl.266:15|
 :skolemid |27|
 :pattern ( (P self))
)))
(assert (forall ((self@@0 T@Ref) ) (! (IsPredicateField_2354_2355 (u32 self@@0))
 :qid |stdinbpl.339:15|
 :skolemid |33|
 :pattern ( (u32 self@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4081) (self@@1 T@Ref) ) (! (|P#everUsed_2329| (P self@@1))
 :qid |stdinbpl.285:15|
 :skolemid |31|
 :pattern ( (|P#trigger_2329| Heap@@2 (P self@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4081) (self@@2 T@Ref) ) (! (|u32#everUsed_2354| (u32 self@@2))
 :qid |stdinbpl.358:15|
 :skolemid |37|
 :pattern ( (|u32#trigger_2354| Heap@@3 (u32 self@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4081) (ExhaleHeap T@PolymorphicMapType_4081) (Mask@@1 T@PolymorphicMapType_4102) (pm_f_1 T@Field_9574_9575) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_9574_7885 Mask@@1 null pm_f_1) (IsPredicateField_2354_2355 pm_f_1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_4141_53) ) (!  (=> (select (|PolymorphicMapType_4630_4141_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1 f_9) (= (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@4) o2_1 f_9) (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_4154_4155) ) (!  (=> (select (|PolymorphicMapType_4630_4141_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@4) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_2287_7885) ) (!  (=> (select (|PolymorphicMapType_4630_4141_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@4) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_2287_8616) ) (!  (=> (select (|PolymorphicMapType_4630_4141_15665#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@4) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap) o2_1@@2 f_9@@2))
))) (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_7884_53) ) (!  (=> (select (|PolymorphicMapType_4630_7884_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@4) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap) o2_1@@3 f_9@@3))
))) (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_7884_2288) ) (!  (=> (select (|PolymorphicMapType_4630_7884_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@4) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap) o2_1@@4 f_9@@4))
))) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_7884_7885) ) (!  (=> (select (|PolymorphicMapType_4630_7884_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@4) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_8611_8616) ) (!  (=> (select (|PolymorphicMapType_4630_7884_16515#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@4) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap) o2_1@@6 f_9@@6))
))) (forall ((o2_1@@7 T@Ref) (f_9@@7 T@Field_9574_53) ) (!  (=> (select (|PolymorphicMapType_4630_9574_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1@@7 f_9@@7) (= (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@4) o2_1@@7 f_9@@7) (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap) o2_1@@7 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap) o2_1@@7 f_9@@7))
))) (forall ((o2_1@@8 T@Ref) (f_9@@8 T@Field_9574_2288) ) (!  (=> (select (|PolymorphicMapType_4630_9574_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1@@8 f_9@@8) (= (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@4) o2_1@@8 f_9@@8) (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap) o2_1@@8 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap) o2_1@@8 f_9@@8))
))) (forall ((o2_1@@9 T@Ref) (f_9@@9 T@Field_9574_9575) ) (!  (=> (select (|PolymorphicMapType_4630_9574_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1@@9 f_9@@9) (= (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@4) o2_1@@9 f_9@@9) (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap) o2_1@@9 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap) o2_1@@9 f_9@@9))
))) (forall ((o2_1@@10 T@Ref) (f_9@@10 T@Field_10235_10240) ) (!  (=> (select (|PolymorphicMapType_4630_9574_17365#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) null (PredicateMaskField_2354 pm_f_1))) o2_1@@10 f_9@@10) (= (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@4) o2_1@@10 f_9@@10) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap) o2_1@@10 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap) o2_1@@10 f_9@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_2354_2355 pm_f_1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4081) (ExhaleHeap@@0 T@PolymorphicMapType_4081) (Mask@@2 T@PolymorphicMapType_4102) (pm_f_1@@0 T@Field_7884_7885) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_7884_7885 Mask@@2 null pm_f_1@@0) (IsPredicateField_2329_2330 pm_f_1@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@11 T@Ref) (f_9@@11 T@Field_4141_53) ) (!  (=> (select (|PolymorphicMapType_4630_4141_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@11 f_9@@11) (= (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@5) o2_1@@11 f_9@@11) (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@11 f_9@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@11 f_9@@11))
)) (forall ((o2_1@@12 T@Ref) (f_9@@12 T@Field_4154_4155) ) (!  (=> (select (|PolymorphicMapType_4630_4141_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@12 f_9@@12) (= (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@5) o2_1@@12 f_9@@12) (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@12 f_9@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@12 f_9@@12))
))) (forall ((o2_1@@13 T@Ref) (f_9@@13 T@Field_2287_7885) ) (!  (=> (select (|PolymorphicMapType_4630_4141_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@13 f_9@@13) (= (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@5) o2_1@@13 f_9@@13) (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@13 f_9@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@13 f_9@@13))
))) (forall ((o2_1@@14 T@Ref) (f_9@@14 T@Field_2287_8616) ) (!  (=> (select (|PolymorphicMapType_4630_4141_15665#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@14 f_9@@14) (= (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@5) o2_1@@14 f_9@@14) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@14 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@14 f_9@@14))
))) (forall ((o2_1@@15 T@Ref) (f_9@@15 T@Field_7884_53) ) (!  (=> (select (|PolymorphicMapType_4630_7884_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@15 f_9@@15) (= (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@5) o2_1@@15 f_9@@15) (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@15 f_9@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@15 f_9@@15))
))) (forall ((o2_1@@16 T@Ref) (f_9@@16 T@Field_7884_2288) ) (!  (=> (select (|PolymorphicMapType_4630_7884_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@16 f_9@@16) (= (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@5) o2_1@@16 f_9@@16) (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@16 f_9@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@16 f_9@@16))
))) (forall ((o2_1@@17 T@Ref) (f_9@@17 T@Field_7884_7885) ) (!  (=> (select (|PolymorphicMapType_4630_7884_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@17 f_9@@17) (= (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@5) o2_1@@17 f_9@@17) (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@17 f_9@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@17 f_9@@17))
))) (forall ((o2_1@@18 T@Ref) (f_9@@18 T@Field_8611_8616) ) (!  (=> (select (|PolymorphicMapType_4630_7884_16515#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@18 f_9@@18) (= (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) o2_1@@18 f_9@@18) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@18 f_9@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@18 f_9@@18))
))) (forall ((o2_1@@19 T@Ref) (f_9@@19 T@Field_9574_53) ) (!  (=> (select (|PolymorphicMapType_4630_9574_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@19 f_9@@19) (= (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@5) o2_1@@19 f_9@@19) (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@19 f_9@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@19 f_9@@19))
))) (forall ((o2_1@@20 T@Ref) (f_9@@20 T@Field_9574_2288) ) (!  (=> (select (|PolymorphicMapType_4630_9574_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@20 f_9@@20) (= (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@5) o2_1@@20 f_9@@20) (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@20 f_9@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@20 f_9@@20))
))) (forall ((o2_1@@21 T@Ref) (f_9@@21 T@Field_9574_9575) ) (!  (=> (select (|PolymorphicMapType_4630_9574_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@21 f_9@@21) (= (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@5) o2_1@@21 f_9@@21) (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@21 f_9@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@21 f_9@@21))
))) (forall ((o2_1@@22 T@Ref) (f_9@@22 T@Field_10235_10240) ) (!  (=> (select (|PolymorphicMapType_4630_9574_17365#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@5) null (PredicateMaskField_2329 pm_f_1@@0))) o2_1@@22 f_9@@22) (= (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@5) o2_1@@22 f_9@@22) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@22 f_9@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@0) o2_1@@22 f_9@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_2329_2330 pm_f_1@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4081) (ExhaleHeap@@1 T@PolymorphicMapType_4081) (Mask@@3 T@PolymorphicMapType_4102) (pm_f_1@@1 T@Field_2287_7885) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_2287_7885 Mask@@3 null pm_f_1@@1) (IsPredicateField_2287_14054 pm_f_1@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@23 T@Ref) (f_9@@23 T@Field_4141_53) ) (!  (=> (select (|PolymorphicMapType_4630_4141_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@23 f_9@@23) (= (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@6) o2_1@@23 f_9@@23) (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@23 f_9@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@23 f_9@@23))
)) (forall ((o2_1@@24 T@Ref) (f_9@@24 T@Field_4154_4155) ) (!  (=> (select (|PolymorphicMapType_4630_4141_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@24 f_9@@24) (= (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@6) o2_1@@24 f_9@@24) (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@24 f_9@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@24 f_9@@24))
))) (forall ((o2_1@@25 T@Ref) (f_9@@25 T@Field_2287_7885) ) (!  (=> (select (|PolymorphicMapType_4630_4141_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@25 f_9@@25) (= (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@6) o2_1@@25 f_9@@25) (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@25 f_9@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@25 f_9@@25))
))) (forall ((o2_1@@26 T@Ref) (f_9@@26 T@Field_2287_8616) ) (!  (=> (select (|PolymorphicMapType_4630_4141_15665#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@26 f_9@@26) (= (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) o2_1@@26 f_9@@26) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@26 f_9@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@26 f_9@@26))
))) (forall ((o2_1@@27 T@Ref) (f_9@@27 T@Field_7884_53) ) (!  (=> (select (|PolymorphicMapType_4630_7884_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@27 f_9@@27) (= (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@6) o2_1@@27 f_9@@27) (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@27 f_9@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@27 f_9@@27))
))) (forall ((o2_1@@28 T@Ref) (f_9@@28 T@Field_7884_2288) ) (!  (=> (select (|PolymorphicMapType_4630_7884_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@28 f_9@@28) (= (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@6) o2_1@@28 f_9@@28) (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@28 f_9@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@28 f_9@@28))
))) (forall ((o2_1@@29 T@Ref) (f_9@@29 T@Field_7884_7885) ) (!  (=> (select (|PolymorphicMapType_4630_7884_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@29 f_9@@29) (= (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@6) o2_1@@29 f_9@@29) (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@29 f_9@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@29 f_9@@29))
))) (forall ((o2_1@@30 T@Ref) (f_9@@30 T@Field_8611_8616) ) (!  (=> (select (|PolymorphicMapType_4630_7884_16515#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@30 f_9@@30) (= (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@6) o2_1@@30 f_9@@30) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@30 f_9@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@30 f_9@@30))
))) (forall ((o2_1@@31 T@Ref) (f_9@@31 T@Field_9574_53) ) (!  (=> (select (|PolymorphicMapType_4630_9574_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@31 f_9@@31) (= (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@6) o2_1@@31 f_9@@31) (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@31 f_9@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@31 f_9@@31))
))) (forall ((o2_1@@32 T@Ref) (f_9@@32 T@Field_9574_2288) ) (!  (=> (select (|PolymorphicMapType_4630_9574_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@32 f_9@@32) (= (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@6) o2_1@@32 f_9@@32) (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@32 f_9@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@32 f_9@@32))
))) (forall ((o2_1@@33 T@Ref) (f_9@@33 T@Field_9574_9575) ) (!  (=> (select (|PolymorphicMapType_4630_9574_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@33 f_9@@33) (= (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@6) o2_1@@33 f_9@@33) (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@33 f_9@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@33 f_9@@33))
))) (forall ((o2_1@@34 T@Ref) (f_9@@34 T@Field_10235_10240) ) (!  (=> (select (|PolymorphicMapType_4630_9574_17365#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@6) null (PredicateMaskField_2287 pm_f_1@@1))) o2_1@@34 f_9@@34) (= (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@6) o2_1@@34 f_9@@34) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@34 f_9@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@1) o2_1@@34 f_9@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsPredicateField_2287_14054 pm_f_1@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4081) (ExhaleHeap@@2 T@PolymorphicMapType_4081) (Mask@@4 T@PolymorphicMapType_4102) (pm_f_1@@2 T@Field_9574_9575) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_9574_7885 Mask@@4 null pm_f_1@@2) (IsWandField_9574_19168 pm_f_1@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@35 T@Ref) (f_9@@35 T@Field_4141_53) ) (!  (=> (select (|PolymorphicMapType_4630_4141_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@35 f_9@@35) (= (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@7) o2_1@@35 f_9@@35) (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@35 f_9@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@35 f_9@@35))
)) (forall ((o2_1@@36 T@Ref) (f_9@@36 T@Field_4154_4155) ) (!  (=> (select (|PolymorphicMapType_4630_4141_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@36 f_9@@36) (= (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@7) o2_1@@36 f_9@@36) (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@36 f_9@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@36 f_9@@36))
))) (forall ((o2_1@@37 T@Ref) (f_9@@37 T@Field_2287_7885) ) (!  (=> (select (|PolymorphicMapType_4630_4141_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@37 f_9@@37) (= (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@7) o2_1@@37 f_9@@37) (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@37 f_9@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@37 f_9@@37))
))) (forall ((o2_1@@38 T@Ref) (f_9@@38 T@Field_2287_8616) ) (!  (=> (select (|PolymorphicMapType_4630_4141_15665#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@38 f_9@@38) (= (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@7) o2_1@@38 f_9@@38) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@38 f_9@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@38 f_9@@38))
))) (forall ((o2_1@@39 T@Ref) (f_9@@39 T@Field_7884_53) ) (!  (=> (select (|PolymorphicMapType_4630_7884_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@39 f_9@@39) (= (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@7) o2_1@@39 f_9@@39) (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@39 f_9@@39)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@39 f_9@@39))
))) (forall ((o2_1@@40 T@Ref) (f_9@@40 T@Field_7884_2288) ) (!  (=> (select (|PolymorphicMapType_4630_7884_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@40 f_9@@40) (= (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@7) o2_1@@40 f_9@@40) (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@40 f_9@@40)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@40 f_9@@40))
))) (forall ((o2_1@@41 T@Ref) (f_9@@41 T@Field_7884_7885) ) (!  (=> (select (|PolymorphicMapType_4630_7884_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@41 f_9@@41) (= (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@7) o2_1@@41 f_9@@41) (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@41 f_9@@41)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@41 f_9@@41))
))) (forall ((o2_1@@42 T@Ref) (f_9@@42 T@Field_8611_8616) ) (!  (=> (select (|PolymorphicMapType_4630_7884_16515#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@42 f_9@@42) (= (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@7) o2_1@@42 f_9@@42) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@42 f_9@@42)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@42 f_9@@42))
))) (forall ((o2_1@@43 T@Ref) (f_9@@43 T@Field_9574_53) ) (!  (=> (select (|PolymorphicMapType_4630_9574_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@43 f_9@@43) (= (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@7) o2_1@@43 f_9@@43) (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@43 f_9@@43)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@43 f_9@@43))
))) (forall ((o2_1@@44 T@Ref) (f_9@@44 T@Field_9574_2288) ) (!  (=> (select (|PolymorphicMapType_4630_9574_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@44 f_9@@44) (= (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@7) o2_1@@44 f_9@@44) (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@44 f_9@@44)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@44 f_9@@44))
))) (forall ((o2_1@@45 T@Ref) (f_9@@45 T@Field_9574_9575) ) (!  (=> (select (|PolymorphicMapType_4630_9574_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@45 f_9@@45) (= (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@7) o2_1@@45 f_9@@45) (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@45 f_9@@45)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@45 f_9@@45))
))) (forall ((o2_1@@46 T@Ref) (f_9@@46 T@Field_10235_10240) ) (!  (=> (select (|PolymorphicMapType_4630_9574_17365#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) null (WandMaskField_9574 pm_f_1@@2))) o2_1@@46 f_9@@46) (= (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@7) o2_1@@46 f_9@@46) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@46 f_9@@46)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@2) o2_1@@46 f_9@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_9574_19168 pm_f_1@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4081) (ExhaleHeap@@3 T@PolymorphicMapType_4081) (Mask@@5 T@PolymorphicMapType_4102) (pm_f_1@@3 T@Field_7884_7885) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_7884_7885 Mask@@5 null pm_f_1@@3) (IsWandField_7884_18811 pm_f_1@@3)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@47 T@Ref) (f_9@@47 T@Field_4141_53) ) (!  (=> (select (|PolymorphicMapType_4630_4141_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@47 f_9@@47) (= (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@8) o2_1@@47 f_9@@47) (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@47 f_9@@47)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@47 f_9@@47))
)) (forall ((o2_1@@48 T@Ref) (f_9@@48 T@Field_4154_4155) ) (!  (=> (select (|PolymorphicMapType_4630_4141_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@48 f_9@@48) (= (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@8) o2_1@@48 f_9@@48) (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@48 f_9@@48)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@48 f_9@@48))
))) (forall ((o2_1@@49 T@Ref) (f_9@@49 T@Field_2287_7885) ) (!  (=> (select (|PolymorphicMapType_4630_4141_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@49 f_9@@49) (= (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@8) o2_1@@49 f_9@@49) (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@49 f_9@@49)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@49 f_9@@49))
))) (forall ((o2_1@@50 T@Ref) (f_9@@50 T@Field_2287_8616) ) (!  (=> (select (|PolymorphicMapType_4630_4141_15665#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@50 f_9@@50) (= (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@8) o2_1@@50 f_9@@50) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@50 f_9@@50)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@50 f_9@@50))
))) (forall ((o2_1@@51 T@Ref) (f_9@@51 T@Field_7884_53) ) (!  (=> (select (|PolymorphicMapType_4630_7884_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@51 f_9@@51) (= (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@8) o2_1@@51 f_9@@51) (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@51 f_9@@51)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@51 f_9@@51))
))) (forall ((o2_1@@52 T@Ref) (f_9@@52 T@Field_7884_2288) ) (!  (=> (select (|PolymorphicMapType_4630_7884_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@52 f_9@@52) (= (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@8) o2_1@@52 f_9@@52) (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@52 f_9@@52)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@52 f_9@@52))
))) (forall ((o2_1@@53 T@Ref) (f_9@@53 T@Field_7884_7885) ) (!  (=> (select (|PolymorphicMapType_4630_7884_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@53 f_9@@53) (= (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@8) o2_1@@53 f_9@@53) (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@53 f_9@@53)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@53 f_9@@53))
))) (forall ((o2_1@@54 T@Ref) (f_9@@54 T@Field_8611_8616) ) (!  (=> (select (|PolymorphicMapType_4630_7884_16515#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@54 f_9@@54) (= (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) o2_1@@54 f_9@@54) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@54 f_9@@54)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@54 f_9@@54))
))) (forall ((o2_1@@55 T@Ref) (f_9@@55 T@Field_9574_53) ) (!  (=> (select (|PolymorphicMapType_4630_9574_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@55 f_9@@55) (= (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@8) o2_1@@55 f_9@@55) (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@55 f_9@@55)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@55 f_9@@55))
))) (forall ((o2_1@@56 T@Ref) (f_9@@56 T@Field_9574_2288) ) (!  (=> (select (|PolymorphicMapType_4630_9574_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@56 f_9@@56) (= (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@8) o2_1@@56 f_9@@56) (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@56 f_9@@56)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@56 f_9@@56))
))) (forall ((o2_1@@57 T@Ref) (f_9@@57 T@Field_9574_9575) ) (!  (=> (select (|PolymorphicMapType_4630_9574_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@57 f_9@@57) (= (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@8) o2_1@@57 f_9@@57) (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@57 f_9@@57)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@57 f_9@@57))
))) (forall ((o2_1@@58 T@Ref) (f_9@@58 T@Field_10235_10240) ) (!  (=> (select (|PolymorphicMapType_4630_9574_17365#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@8) null (WandMaskField_7884 pm_f_1@@3))) o2_1@@58 f_9@@58) (= (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@8) o2_1@@58 f_9@@58) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@58 f_9@@58)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@3) o2_1@@58 f_9@@58))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsWandField_7884_18811 pm_f_1@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4081) (ExhaleHeap@@4 T@PolymorphicMapType_4081) (Mask@@6 T@PolymorphicMapType_4102) (pm_f_1@@4 T@Field_2287_7885) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_2287_7885 Mask@@6 null pm_f_1@@4) (IsWandField_2287_18454 pm_f_1@@4)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@59 T@Ref) (f_9@@59 T@Field_4141_53) ) (!  (=> (select (|PolymorphicMapType_4630_4141_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@59 f_9@@59) (= (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@9) o2_1@@59 f_9@@59) (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@59 f_9@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@59 f_9@@59))
)) (forall ((o2_1@@60 T@Ref) (f_9@@60 T@Field_4154_4155) ) (!  (=> (select (|PolymorphicMapType_4630_4141_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@60 f_9@@60) (= (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@9) o2_1@@60 f_9@@60) (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@60 f_9@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@60 f_9@@60))
))) (forall ((o2_1@@61 T@Ref) (f_9@@61 T@Field_2287_7885) ) (!  (=> (select (|PolymorphicMapType_4630_4141_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@61 f_9@@61) (= (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@9) o2_1@@61 f_9@@61) (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@61 f_9@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@61 f_9@@61))
))) (forall ((o2_1@@62 T@Ref) (f_9@@62 T@Field_2287_8616) ) (!  (=> (select (|PolymorphicMapType_4630_4141_15665#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@62 f_9@@62) (= (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) o2_1@@62 f_9@@62) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@62 f_9@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@62 f_9@@62))
))) (forall ((o2_1@@63 T@Ref) (f_9@@63 T@Field_7884_53) ) (!  (=> (select (|PolymorphicMapType_4630_7884_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@63 f_9@@63) (= (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@9) o2_1@@63 f_9@@63) (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@63 f_9@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@63 f_9@@63))
))) (forall ((o2_1@@64 T@Ref) (f_9@@64 T@Field_7884_2288) ) (!  (=> (select (|PolymorphicMapType_4630_7884_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@64 f_9@@64) (= (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@9) o2_1@@64 f_9@@64) (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@64 f_9@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@64 f_9@@64))
))) (forall ((o2_1@@65 T@Ref) (f_9@@65 T@Field_7884_7885) ) (!  (=> (select (|PolymorphicMapType_4630_7884_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@65 f_9@@65) (= (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@9) o2_1@@65 f_9@@65) (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@65 f_9@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@65 f_9@@65))
))) (forall ((o2_1@@66 T@Ref) (f_9@@66 T@Field_8611_8616) ) (!  (=> (select (|PolymorphicMapType_4630_7884_16515#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@66 f_9@@66) (= (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@9) o2_1@@66 f_9@@66) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@66 f_9@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@66 f_9@@66))
))) (forall ((o2_1@@67 T@Ref) (f_9@@67 T@Field_9574_53) ) (!  (=> (select (|PolymorphicMapType_4630_9574_53#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@67 f_9@@67) (= (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@9) o2_1@@67 f_9@@67) (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@67 f_9@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@67 f_9@@67))
))) (forall ((o2_1@@68 T@Ref) (f_9@@68 T@Field_9574_2288) ) (!  (=> (select (|PolymorphicMapType_4630_9574_4155#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@68 f_9@@68) (= (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@9) o2_1@@68 f_9@@68) (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@68 f_9@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@68 f_9@@68))
))) (forall ((o2_1@@69 T@Ref) (f_9@@69 T@Field_9574_9575) ) (!  (=> (select (|PolymorphicMapType_4630_9574_7885#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@69 f_9@@69) (= (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@9) o2_1@@69 f_9@@69) (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@69 f_9@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@69 f_9@@69))
))) (forall ((o2_1@@70 T@Ref) (f_9@@70 T@Field_10235_10240) ) (!  (=> (select (|PolymorphicMapType_4630_9574_17365#PolymorphicMapType_4630| (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@9) null (WandMaskField_2287 pm_f_1@@4))) o2_1@@70 f_9@@70) (= (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@9) o2_1@@70 f_9@@70) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@70 f_9@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@4) o2_1@@70 f_9@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsWandField_2287_18454 pm_f_1@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4081) (ExhaleHeap@@5 T@PolymorphicMapType_4081) (Mask@@7 T@PolymorphicMapType_4102) (pm_f_1@@5 T@Field_9574_9575) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_9574_7885 Mask@@7 null pm_f_1@@5) (IsPredicateField_2354_2355 pm_f_1@@5)) (= (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@10) null (PredicateMaskField_2354 pm_f_1@@5)) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@5) null (PredicateMaskField_2354 pm_f_1@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsPredicateField_2354_2355 pm_f_1@@5) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@5) null (PredicateMaskField_2354 pm_f_1@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4081) (ExhaleHeap@@6 T@PolymorphicMapType_4081) (Mask@@8 T@PolymorphicMapType_4102) (pm_f_1@@6 T@Field_7884_7885) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_7884_7885 Mask@@8 null pm_f_1@@6) (IsPredicateField_2329_2330 pm_f_1@@6)) (= (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@11) null (PredicateMaskField_2329 pm_f_1@@6)) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@6) null (PredicateMaskField_2329 pm_f_1@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsPredicateField_2329_2330 pm_f_1@@6) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@6) null (PredicateMaskField_2329 pm_f_1@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4081) (ExhaleHeap@@7 T@PolymorphicMapType_4081) (Mask@@9 T@PolymorphicMapType_4102) (pm_f_1@@7 T@Field_2287_7885) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_2287_7885 Mask@@9 null pm_f_1@@7) (IsPredicateField_2287_14054 pm_f_1@@7)) (= (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@12) null (PredicateMaskField_2287 pm_f_1@@7)) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@7) null (PredicateMaskField_2287 pm_f_1@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (IsPredicateField_2287_14054 pm_f_1@@7) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@7) null (PredicateMaskField_2287 pm_f_1@@7)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4081) (ExhaleHeap@@8 T@PolymorphicMapType_4081) (Mask@@10 T@PolymorphicMapType_4102) (pm_f_1@@8 T@Field_9574_9575) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_9574_7885 Mask@@10 null pm_f_1@@8) (IsWandField_9574_19168 pm_f_1@@8)) (= (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@13) null (WandMaskField_9574 pm_f_1@@8)) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@8) null (WandMaskField_9574 pm_f_1@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (IsWandField_9574_19168 pm_f_1@@8) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@8) null (WandMaskField_9574 pm_f_1@@8)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4081) (ExhaleHeap@@9 T@PolymorphicMapType_4081) (Mask@@11 T@PolymorphicMapType_4102) (pm_f_1@@9 T@Field_7884_7885) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@11) (=> (and (HasDirectPerm_7884_7885 Mask@@11 null pm_f_1@@9) (IsWandField_7884_18811 pm_f_1@@9)) (= (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@14) null (WandMaskField_7884 pm_f_1@@9)) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@9) null (WandMaskField_7884 pm_f_1@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@11) (IsWandField_7884_18811 pm_f_1@@9) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@9) null (WandMaskField_7884 pm_f_1@@9)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4081) (ExhaleHeap@@10 T@PolymorphicMapType_4081) (Mask@@12 T@PolymorphicMapType_4102) (pm_f_1@@10 T@Field_2287_7885) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@12) (=> (and (HasDirectPerm_2287_7885 Mask@@12 null pm_f_1@@10) (IsWandField_2287_18454 pm_f_1@@10)) (= (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@15) null (WandMaskField_2287 pm_f_1@@10)) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@10) null (WandMaskField_2287 pm_f_1@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@12) (IsWandField_2287_18454 pm_f_1@@10) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@10) null (WandMaskField_2287 pm_f_1@@10)))
)))
(assert (forall ((self@@3 T@Ref) (self2 T@Ref) ) (!  (=> (= (P self@@3) (P self2)) (= self@@3 self2))
 :qid |stdinbpl.276:15|
 :skolemid |29|
 :pattern ( (P self@@3) (P self2))
)))
(assert (forall ((self@@4 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|P#sm| self@@4) (|P#sm| self2@@0)) (= self@@4 self2@@0))
 :qid |stdinbpl.280:15|
 :skolemid |30|
 :pattern ( (|P#sm| self@@4) (|P#sm| self2@@0))
)))
(assert (forall ((self@@5 T@Ref) (self2@@1 T@Ref) ) (!  (=> (= (u32 self@@5) (u32 self2@@1)) (= self@@5 self2@@1))
 :qid |stdinbpl.349:15|
 :skolemid |35|
 :pattern ( (u32 self@@5) (u32 self2@@1))
)))
(assert (forall ((self@@6 T@Ref) (self2@@2 T@Ref) ) (!  (=> (= (|u32#sm| self@@6) (|u32#sm| self2@@2)) (= self@@6 self2@@2))
 :qid |stdinbpl.353:15|
 :skolemid |36|
 :pattern ( (|u32#sm| self@@6) (|u32#sm| self2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4081) (ExhaleHeap@@11 T@PolymorphicMapType_4081) (Mask@@13 T@PolymorphicMapType_4102) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@13) (=> (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@16) o_4 $allocated) (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@11) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@13) (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@11) o_4 $allocated))
)))
(assert (forall ((p T@Field_9574_9575) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9574_9574 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9574_9574 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_7884_7885) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7884_7884 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7884_7884 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_2287_7885) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_4141_4141 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4141_4141 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_2287_2288 f1_2)))
(assert  (not (IsWandField_2287_2288 f1_2)))
(assert  (not (IsPredicateField_2287_2288 f2_2)))
(assert  (not (IsWandField_2287_2288 f2_2)))
(assert  (not (IsPredicateField_2293_1219 val)))
(assert  (not (IsWandField_2293_1219 val)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4081) (ExhaleHeap@@12 T@PolymorphicMapType_4081) (Mask@@14 T@PolymorphicMapType_4102) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@14) (succHeap Heap@@17 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4102) (o_2@@11 T@Ref) (f_4@@11 T@Field_10235_10240) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| Mask@@15) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2354_27630 f_4@@11))) (not (IsWandField_2354_27646 f_4@@11))) (<= (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| Mask@@15) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| Mask@@15) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4102) (o_2@@12 T@Ref) (f_4@@12 T@Field_9574_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| Mask@@16) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2354_1219 f_4@@12))) (not (IsWandField_2354_1219 f_4@@12))) (<= (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| Mask@@16) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| Mask@@16) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4102) (o_2@@13 T@Ref) (f_4@@13 T@Field_9574_2288) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| Mask@@17) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2354_2288 f_4@@13))) (not (IsWandField_2354_2288 f_4@@13))) (<= (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| Mask@@17) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| Mask@@17) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4102) (o_2@@14 T@Ref) (f_4@@14 T@Field_9574_9575) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| Mask@@18) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2354_2355 f_4@@14))) (not (IsWandField_9574_19168 f_4@@14))) (<= (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| Mask@@18) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| Mask@@18) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4102) (o_2@@15 T@Ref) (f_4@@15 T@Field_2287_8616) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| Mask@@19) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2287_26967 f_4@@15))) (not (IsWandField_2287_26983 f_4@@15))) (<= (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| Mask@@19) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| Mask@@19) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4102) (o_2@@16 T@Ref) (f_4@@16 T@Field_4141_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| Mask@@20) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2293_1219 f_4@@16))) (not (IsWandField_2293_1219 f_4@@16))) (<= (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| Mask@@20) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| Mask@@20) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4102) (o_2@@17 T@Ref) (f_4@@17 T@Field_4154_4155) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| Mask@@21) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_2287_2288 f_4@@17))) (not (IsWandField_2287_2288 f_4@@17))) (<= (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| Mask@@21) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| Mask@@21) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4102) (o_2@@18 T@Ref) (f_4@@18 T@Field_2287_7885) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| Mask@@22) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_2287_14054 f_4@@18))) (not (IsWandField_2287_18454 f_4@@18))) (<= (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| Mask@@22) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| Mask@@22) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4102) (o_2@@19 T@Ref) (f_4@@19 T@Field_8611_8616) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| Mask@@23) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_2329_26332 f_4@@19))) (not (IsWandField_2329_26348 f_4@@19))) (<= (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| Mask@@23) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| Mask@@23) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4102) (o_2@@20 T@Ref) (f_4@@20 T@Field_7884_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| Mask@@24) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_2329_1219 f_4@@20))) (not (IsWandField_2329_1219 f_4@@20))) (<= (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| Mask@@24) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| Mask@@24) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4102) (o_2@@21 T@Ref) (f_4@@21 T@Field_7884_2288) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| Mask@@25) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_2329_2288 f_4@@21))) (not (IsWandField_2329_2288 f_4@@21))) (<= (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| Mask@@25) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| Mask@@25) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4102) (o_2@@22 T@Ref) (f_4@@22 T@Field_7884_7885) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| Mask@@26) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_2329_2330 f_4@@22))) (not (IsWandField_7884_18811 f_4@@22))) (<= (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| Mask@@26) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| Mask@@26) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4102) (o_2@@23 T@Ref) (f_4@@23 T@Field_10235_10240) ) (! (= (HasDirectPerm_9574_13766 Mask@@27 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| Mask@@27) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9574_13766 Mask@@27 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4102) (o_2@@24 T@Ref) (f_4@@24 T@Field_9574_9575) ) (! (= (HasDirectPerm_9574_7885 Mask@@28 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| Mask@@28) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9574_7885 Mask@@28 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4102) (o_2@@25 T@Ref) (f_4@@25 T@Field_9574_53) ) (! (= (HasDirectPerm_9574_53 Mask@@29 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| Mask@@29) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9574_53 Mask@@29 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_4102) (o_2@@26 T@Ref) (f_4@@26 T@Field_9574_2288) ) (! (= (HasDirectPerm_9574_2288 Mask@@30 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| Mask@@30) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9574_2288 Mask@@30 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_4102) (o_2@@27 T@Ref) (f_4@@27 T@Field_8611_8616) ) (! (= (HasDirectPerm_7884_12809 Mask@@31 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| Mask@@31) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7884_12809 Mask@@31 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_4102) (o_2@@28 T@Ref) (f_4@@28 T@Field_7884_7885) ) (! (= (HasDirectPerm_7884_7885 Mask@@32 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| Mask@@32) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7884_7885 Mask@@32 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_4102) (o_2@@29 T@Ref) (f_4@@29 T@Field_7884_53) ) (! (= (HasDirectPerm_7884_53 Mask@@33 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| Mask@@33) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7884_53 Mask@@33 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_4102) (o_2@@30 T@Ref) (f_4@@30 T@Field_7884_2288) ) (! (= (HasDirectPerm_7884_2288 Mask@@34 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| Mask@@34) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7884_2288 Mask@@34 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_4102) (o_2@@31 T@Ref) (f_4@@31 T@Field_2287_8616) ) (! (= (HasDirectPerm_2287_11869 Mask@@35 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| Mask@@35) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2287_11869 Mask@@35 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_4102) (o_2@@32 T@Ref) (f_4@@32 T@Field_2287_7885) ) (! (= (HasDirectPerm_2287_7885 Mask@@36 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| Mask@@36) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2287_7885 Mask@@36 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_4102) (o_2@@33 T@Ref) (f_4@@33 T@Field_4141_53) ) (! (= (HasDirectPerm_2287_53 Mask@@37 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| Mask@@37) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2287_53 Mask@@37 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_4102) (o_2@@34 T@Ref) (f_4@@34 T@Field_4154_4155) ) (! (= (HasDirectPerm_2287_2288 Mask@@38 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| Mask@@38) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2287_2288 Mask@@38 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4081) (ExhaleHeap@@13 T@PolymorphicMapType_4081) (Mask@@39 T@PolymorphicMapType_4102) (o_4@@0 T@Ref) (f_9@@71 T@Field_10235_10240) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@39) (=> (HasDirectPerm_9574_13766 Mask@@39 o_4@@0 f_9@@71) (= (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@18) o_4@@0 f_9@@71) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@13) o_4@@0 f_9@@71))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@39) (select (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| ExhaleHeap@@13) o_4@@0 f_9@@71))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4081) (ExhaleHeap@@14 T@PolymorphicMapType_4081) (Mask@@40 T@PolymorphicMapType_4102) (o_4@@1 T@Ref) (f_9@@72 T@Field_9574_9575) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@40) (=> (HasDirectPerm_9574_7885 Mask@@40 o_4@@1 f_9@@72) (= (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@19) o_4@@1 f_9@@72) (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@14) o_4@@1 f_9@@72))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@40) (select (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| ExhaleHeap@@14) o_4@@1 f_9@@72))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4081) (ExhaleHeap@@15 T@PolymorphicMapType_4081) (Mask@@41 T@PolymorphicMapType_4102) (o_4@@2 T@Ref) (f_9@@73 T@Field_9574_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@41) (=> (HasDirectPerm_9574_53 Mask@@41 o_4@@2 f_9@@73) (= (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@20) o_4@@2 f_9@@73) (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@15) o_4@@2 f_9@@73))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@41) (select (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| ExhaleHeap@@15) o_4@@2 f_9@@73))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4081) (ExhaleHeap@@16 T@PolymorphicMapType_4081) (Mask@@42 T@PolymorphicMapType_4102) (o_4@@3 T@Ref) (f_9@@74 T@Field_9574_2288) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@42) (=> (HasDirectPerm_9574_2288 Mask@@42 o_4@@3 f_9@@74) (= (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@21) o_4@@3 f_9@@74) (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@16) o_4@@3 f_9@@74))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@42) (select (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| ExhaleHeap@@16) o_4@@3 f_9@@74))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4081) (ExhaleHeap@@17 T@PolymorphicMapType_4081) (Mask@@43 T@PolymorphicMapType_4102) (o_4@@4 T@Ref) (f_9@@75 T@Field_8611_8616) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@43) (=> (HasDirectPerm_7884_12809 Mask@@43 o_4@@4 f_9@@75) (= (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@22) o_4@@4 f_9@@75) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@17) o_4@@4 f_9@@75))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@43) (select (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| ExhaleHeap@@17) o_4@@4 f_9@@75))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4081) (ExhaleHeap@@18 T@PolymorphicMapType_4081) (Mask@@44 T@PolymorphicMapType_4102) (o_4@@5 T@Ref) (f_9@@76 T@Field_7884_7885) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@44) (=> (HasDirectPerm_7884_7885 Mask@@44 o_4@@5 f_9@@76) (= (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@23) o_4@@5 f_9@@76) (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@18) o_4@@5 f_9@@76))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@44) (select (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| ExhaleHeap@@18) o_4@@5 f_9@@76))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4081) (ExhaleHeap@@19 T@PolymorphicMapType_4081) (Mask@@45 T@PolymorphicMapType_4102) (o_4@@6 T@Ref) (f_9@@77 T@Field_7884_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@45) (=> (HasDirectPerm_7884_53 Mask@@45 o_4@@6 f_9@@77) (= (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@24) o_4@@6 f_9@@77) (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@19) o_4@@6 f_9@@77))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@45) (select (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| ExhaleHeap@@19) o_4@@6 f_9@@77))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4081) (ExhaleHeap@@20 T@PolymorphicMapType_4081) (Mask@@46 T@PolymorphicMapType_4102) (o_4@@7 T@Ref) (f_9@@78 T@Field_7884_2288) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@46) (=> (HasDirectPerm_7884_2288 Mask@@46 o_4@@7 f_9@@78) (= (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@25) o_4@@7 f_9@@78) (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@20) o_4@@7 f_9@@78))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@46) (select (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| ExhaleHeap@@20) o_4@@7 f_9@@78))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4081) (ExhaleHeap@@21 T@PolymorphicMapType_4081) (Mask@@47 T@PolymorphicMapType_4102) (o_4@@8 T@Ref) (f_9@@79 T@Field_2287_8616) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@47) (=> (HasDirectPerm_2287_11869 Mask@@47 o_4@@8 f_9@@79) (= (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@26) o_4@@8 f_9@@79) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@21) o_4@@8 f_9@@79))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@47) (select (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| ExhaleHeap@@21) o_4@@8 f_9@@79))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4081) (ExhaleHeap@@22 T@PolymorphicMapType_4081) (Mask@@48 T@PolymorphicMapType_4102) (o_4@@9 T@Ref) (f_9@@80 T@Field_2287_7885) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@48) (=> (HasDirectPerm_2287_7885 Mask@@48 o_4@@9 f_9@@80) (= (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@27) o_4@@9 f_9@@80) (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@22) o_4@@9 f_9@@80))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@48) (select (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| ExhaleHeap@@22) o_4@@9 f_9@@80))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4081) (ExhaleHeap@@23 T@PolymorphicMapType_4081) (Mask@@49 T@PolymorphicMapType_4102) (o_4@@10 T@Ref) (f_9@@81 T@Field_4141_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@49) (=> (HasDirectPerm_2287_53 Mask@@49 o_4@@10 f_9@@81) (= (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@28) o_4@@10 f_9@@81) (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@23) o_4@@10 f_9@@81))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@49) (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| ExhaleHeap@@23) o_4@@10 f_9@@81))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4081) (ExhaleHeap@@24 T@PolymorphicMapType_4081) (Mask@@50 T@PolymorphicMapType_4102) (o_4@@11 T@Ref) (f_9@@82 T@Field_4154_4155) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@50) (=> (HasDirectPerm_2287_2288 Mask@@50 o_4@@11 f_9@@82) (= (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@29) o_4@@11 f_9@@82) (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@24) o_4@@11 f_9@@82))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@50) (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| ExhaleHeap@@24) o_4@@11 f_9@@82))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_10235_10240) ) (! (= (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_9574_53) ) (! (= (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_9574_2288) ) (! (= (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_9574_9575) ) (! (= (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_2287_8616) ) (! (= (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_4141_53) ) (! (= (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_4154_4155) ) (! (= (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_2287_7885) ) (! (= (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_8611_8616) ) (! (= (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_7884_53) ) (! (= (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_7884_2288) ) (! (= (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_7884_7885) ) (! (= (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4102) (SummandMask1 T@PolymorphicMapType_4102) (SummandMask2 T@PolymorphicMapType_4102) (o_2@@47 T@Ref) (f_4@@47 T@Field_10235_10240) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4102) (SummandMask1@@0 T@PolymorphicMapType_4102) (SummandMask2@@0 T@PolymorphicMapType_4102) (o_2@@48 T@Ref) (f_4@@48 T@Field_9574_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4102) (SummandMask1@@1 T@PolymorphicMapType_4102) (SummandMask2@@1 T@PolymorphicMapType_4102) (o_2@@49 T@Ref) (f_4@@49 T@Field_9574_2288) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4102) (SummandMask1@@2 T@PolymorphicMapType_4102) (SummandMask2@@2 T@PolymorphicMapType_4102) (o_2@@50 T@Ref) (f_4@@50 T@Field_9574_9575) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4102) (SummandMask1@@3 T@PolymorphicMapType_4102) (SummandMask2@@3 T@PolymorphicMapType_4102) (o_2@@51 T@Ref) (f_4@@51 T@Field_2287_8616) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4102) (SummandMask1@@4 T@PolymorphicMapType_4102) (SummandMask2@@4 T@PolymorphicMapType_4102) (o_2@@52 T@Ref) (f_4@@52 T@Field_4141_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4102) (SummandMask1@@5 T@PolymorphicMapType_4102) (SummandMask2@@5 T@PolymorphicMapType_4102) (o_2@@53 T@Ref) (f_4@@53 T@Field_4154_4155) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4102) (SummandMask1@@6 T@PolymorphicMapType_4102) (SummandMask2@@6 T@PolymorphicMapType_4102) (o_2@@54 T@Ref) (f_4@@54 T@Field_2287_7885) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4102) (SummandMask1@@7 T@PolymorphicMapType_4102) (SummandMask2@@7 T@PolymorphicMapType_4102) (o_2@@55 T@Ref) (f_4@@55 T@Field_8611_8616) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4102) (SummandMask1@@8 T@PolymorphicMapType_4102) (SummandMask2@@8 T@PolymorphicMapType_4102) (o_2@@56 T@Ref) (f_4@@56 T@Field_7884_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_4102) (SummandMask1@@9 T@PolymorphicMapType_4102) (SummandMask2@@9 T@PolymorphicMapType_4102) (o_2@@57 T@Ref) (f_4@@57 T@Field_7884_2288) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_4102) (SummandMask1@@10 T@PolymorphicMapType_4102) (SummandMask2@@10 T@PolymorphicMapType_4102) (o_2@@58 T@Ref) (f_4@@58 T@Field_7884_7885) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((self@@7 T@Ref) ) (! (= (getPredWandId_2329_2330 (P self@@7)) 0)
 :qid |stdinbpl.270:15|
 :skolemid |28|
 :pattern ( (P self@@7))
)))
(assert (forall ((self@@8 T@Ref) ) (! (= (getPredWandId_2354_2355 (u32 self@@8)) 1)
 :qid |stdinbpl.343:15|
 :skolemid |34|
 :pattern ( (u32 self@@8))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4081) (o_3 T@Ref) (f_10 T@Field_10235_10240) (v T@PolymorphicMapType_4630) ) (! (succHeap Heap@@30 (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@30) (store (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@30) o_3 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@30) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@30) (store (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@30) o_3 f_10 v)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_4081) (o_3@@0 T@Ref) (f_10@@0 T@Field_9574_9575) (v@@0 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@31) (store (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@31) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@31) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@31) (store (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@31) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_4081) (o_3@@1 T@Ref) (f_10@@1 T@Field_9574_2288) (v@@1 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@32) (store (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@32) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@32) (store (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@32) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@32) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_4081) (o_3@@2 T@Ref) (f_10@@2 T@Field_9574_53) (v@@2 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@33) (store (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@33) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@33) (store (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@33) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@33) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_4081) (o_3@@3 T@Ref) (f_10@@3 T@Field_8611_8616) (v@@3 T@PolymorphicMapType_4630) ) (! (succHeap Heap@@34 (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@34) (store (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@34) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@34) (store (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@34) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@34) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_4081) (o_3@@4 T@Ref) (f_10@@4 T@Field_7884_7885) (v@@4 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@35) (store (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@35) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@35) (store (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@35) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@35) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_4081) (o_3@@5 T@Ref) (f_10@@5 T@Field_7884_2288) (v@@5 T@Ref) ) (! (succHeap Heap@@36 (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@36) (store (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@36) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@36) (store (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@36) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@36) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_4081) (o_3@@6 T@Ref) (f_10@@6 T@Field_7884_53) (v@@6 Bool) ) (! (succHeap Heap@@37 (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@37) (store (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@37) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@37) (store (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@37) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@37) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_4081) (o_3@@7 T@Ref) (f_10@@7 T@Field_2287_8616) (v@@7 T@PolymorphicMapType_4630) ) (! (succHeap Heap@@38 (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@38) (store (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@38) o_3@@7 f_10@@7 v@@7) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@38) (store (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@38) o_3@@7 f_10@@7 v@@7) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@38) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_4081) (o_3@@8 T@Ref) (f_10@@8 T@Field_2287_7885) (v@@8 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@39) (store (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@39) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@39) (store (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@39) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@39) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_4081) (o_3@@9 T@Ref) (f_10@@9 T@Field_4154_4155) (v@@9 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@40) (store (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@40) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@40) (store (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@40) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@40) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_4081) (o_3@@10 T@Ref) (f_10@@10 T@Field_4141_53) (v@@10 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_4081 (store (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@41) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4081 (store (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@41) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_2329_2330#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_2287_7885#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_2287_11911#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_7884_2288#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_7884_53#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_7884_12851#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_9574_2288#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_9574_53#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_9574_7885#PolymorphicMapType_4081| Heap@@41) (|PolymorphicMapType_4081_9574_13808#PolymorphicMapType_4081| Heap@@41)))
)))
(assert (forall ((self@@9 T@Ref) ) (! (= (PredicateMaskField_2329 (P self@@9)) (|P#sm| self@@9))
 :qid |stdinbpl.262:15|
 :skolemid |26|
 :pattern ( (PredicateMaskField_2329 (P self@@9)))
)))
(assert (forall ((self@@10 T@Ref) ) (! (= (PredicateMaskField_2354 (u32 self@@10)) (|u32#sm| self@@10))
 :qid |stdinbpl.335:15|
 :skolemid |32|
 :pattern ( (PredicateMaskField_2354 (u32 self@@10)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_4081) (Mask@@51 T@PolymorphicMapType_4102) (this@@1 T@Ref) (p_1@@1 Real) ) (!  (=> (and (state Heap@@42 Mask@@51) (< AssumeFunctionsAbove 0)) (=> (<= NoPerm p_1@@1) (f_6@@0 Heap@@42 this@@1 p_1@@1)))
 :qid |stdinbpl.210:15|
 :skolemid |24|
 :pattern ( (state Heap@@42 Mask@@51) (f_6@@0 Heap@@42 this@@1 p_1@@1))
 :pattern ( (state Heap@@42 Mask@@51) (|f#triggerStateless| this@@1 p_1@@1) (|P#trigger_2329| Heap@@42 (P this@@1)))
)))
(assert (forall ((o_3@@11 T@Ref) (f_8 T@Field_4154_4155) (Heap@@43 T@PolymorphicMapType_4081) ) (!  (=> (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@43) o_3@@11 $allocated) (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@43) (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@43) o_3@@11 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@43) o_3@@11 f_8))
)))
(assert (forall ((p@@3 T@Field_9574_9575) (v_1@@2 T@FrameType) (q T@Field_9574_9575) (w@@2 T@FrameType) (r T@Field_9574_9575) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9574_9574 p@@3 v_1@@2 q w@@2) (InsidePredicate_9574_9574 q w@@2 r u)) (InsidePredicate_9574_9574 p@@3 v_1@@2 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9574_9574 p@@3 v_1@@2 q w@@2) (InsidePredicate_9574_9574 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_9574_9575) (v_1@@3 T@FrameType) (q@@0 T@Field_9574_9575) (w@@3 T@FrameType) (r@@0 T@Field_7884_7885) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_9574_9574 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_9574_7884 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_9574_7884 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9574_9574 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_9574_7884 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_9574_9575) (v_1@@4 T@FrameType) (q@@1 T@Field_9574_9575) (w@@4 T@FrameType) (r@@1 T@Field_2287_7885) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_9574_9574 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_9574_4141 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_9574_4141 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9574_9574 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_9574_4141 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_9574_9575) (v_1@@5 T@FrameType) (q@@2 T@Field_7884_7885) (w@@5 T@FrameType) (r@@2 T@Field_9574_9575) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_9574_7884 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_7884_9574 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_9574_9574 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9574_7884 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_7884_9574 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_9574_9575) (v_1@@6 T@FrameType) (q@@3 T@Field_7884_7885) (w@@6 T@FrameType) (r@@3 T@Field_7884_7885) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9574_7884 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_7884_7884 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_9574_7884 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9574_7884 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_7884_7884 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_9574_9575) (v_1@@7 T@FrameType) (q@@4 T@Field_7884_7885) (w@@7 T@FrameType) (r@@4 T@Field_2287_7885) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9574_7884 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_7884_4141 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_9574_4141 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9574_7884 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_7884_4141 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_9574_9575) (v_1@@8 T@FrameType) (q@@5 T@Field_2287_7885) (w@@8 T@FrameType) (r@@5 T@Field_9574_9575) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9574_4141 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4141_9574 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_9574_9574 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9574_4141 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4141_9574 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_9574_9575) (v_1@@9 T@FrameType) (q@@6 T@Field_2287_7885) (w@@9 T@FrameType) (r@@6 T@Field_7884_7885) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9574_4141 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4141_7884 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_9574_7884 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9574_4141 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4141_7884 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_9574_9575) (v_1@@10 T@FrameType) (q@@7 T@Field_2287_7885) (w@@10 T@FrameType) (r@@7 T@Field_2287_7885) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_9574_4141 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4141_4141 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_9574_4141 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9574_4141 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4141_4141 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_7884_7885) (v_1@@11 T@FrameType) (q@@8 T@Field_9574_9575) (w@@11 T@FrameType) (r@@8 T@Field_9574_9575) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_7884_9574 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_9574_9574 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_7884_9574 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7884_9574 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_9574_9574 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_7884_7885) (v_1@@12 T@FrameType) (q@@9 T@Field_9574_9575) (w@@12 T@FrameType) (r@@9 T@Field_7884_7885) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_7884_9574 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_9574_7884 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_7884_7884 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7884_9574 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_9574_7884 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_7884_7885) (v_1@@13 T@FrameType) (q@@10 T@Field_9574_9575) (w@@13 T@FrameType) (r@@10 T@Field_2287_7885) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_7884_9574 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_9574_4141 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_7884_4141 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7884_9574 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_9574_4141 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_7884_7885) (v_1@@14 T@FrameType) (q@@11 T@Field_7884_7885) (w@@14 T@FrameType) (r@@11 T@Field_9574_9575) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_7884_7884 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_7884_9574 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_7884_9574 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7884_7884 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_7884_9574 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_7884_7885) (v_1@@15 T@FrameType) (q@@12 T@Field_7884_7885) (w@@15 T@FrameType) (r@@12 T@Field_7884_7885) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_7884_7884 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_7884_7884 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_7884_7884 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7884_7884 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_7884_7884 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_7884_7885) (v_1@@16 T@FrameType) (q@@13 T@Field_7884_7885) (w@@16 T@FrameType) (r@@13 T@Field_2287_7885) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_7884_7884 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_7884_4141 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_7884_4141 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7884_7884 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_7884_4141 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_7884_7885) (v_1@@17 T@FrameType) (q@@14 T@Field_2287_7885) (w@@17 T@FrameType) (r@@14 T@Field_9574_9575) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_7884_4141 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4141_9574 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_7884_9574 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7884_4141 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4141_9574 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_7884_7885) (v_1@@18 T@FrameType) (q@@15 T@Field_2287_7885) (w@@18 T@FrameType) (r@@15 T@Field_7884_7885) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_7884_4141 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4141_7884 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_7884_7884 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7884_4141 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4141_7884 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_7884_7885) (v_1@@19 T@FrameType) (q@@16 T@Field_2287_7885) (w@@19 T@FrameType) (r@@16 T@Field_2287_7885) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_7884_4141 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4141_4141 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_7884_4141 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7884_4141 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4141_4141 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_2287_7885) (v_1@@20 T@FrameType) (q@@17 T@Field_9574_9575) (w@@20 T@FrameType) (r@@17 T@Field_9574_9575) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_4141_9574 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_9574_9574 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_4141_9574 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4141_9574 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_9574_9574 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_2287_7885) (v_1@@21 T@FrameType) (q@@18 T@Field_9574_9575) (w@@21 T@FrameType) (r@@18 T@Field_7884_7885) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_4141_9574 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_9574_7884 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_4141_7884 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4141_9574 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_9574_7884 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_2287_7885) (v_1@@22 T@FrameType) (q@@19 T@Field_9574_9575) (w@@22 T@FrameType) (r@@19 T@Field_2287_7885) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_4141_9574 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_9574_4141 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_4141_4141 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4141_9574 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_9574_4141 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_2287_7885) (v_1@@23 T@FrameType) (q@@20 T@Field_7884_7885) (w@@23 T@FrameType) (r@@20 T@Field_9574_9575) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_4141_7884 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_7884_9574 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_4141_9574 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4141_7884 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_7884_9574 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_2287_7885) (v_1@@24 T@FrameType) (q@@21 T@Field_7884_7885) (w@@24 T@FrameType) (r@@21 T@Field_7884_7885) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_4141_7884 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_7884_7884 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_4141_7884 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4141_7884 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_7884_7884 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_2287_7885) (v_1@@25 T@FrameType) (q@@22 T@Field_7884_7885) (w@@25 T@FrameType) (r@@22 T@Field_2287_7885) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_4141_7884 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_7884_4141 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_4141_4141 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4141_7884 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_7884_4141 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_2287_7885) (v_1@@26 T@FrameType) (q@@23 T@Field_2287_7885) (w@@26 T@FrameType) (r@@23 T@Field_9574_9575) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_4141_4141 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4141_9574 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_4141_9574 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4141_4141 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4141_9574 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_2287_7885) (v_1@@27 T@FrameType) (q@@24 T@Field_2287_7885) (w@@27 T@FrameType) (r@@24 T@Field_7884_7885) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_4141_4141 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4141_7884 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_4141_7884 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4141_4141 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4141_7884 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_2287_7885) (v_1@@28 T@FrameType) (q@@25 T@Field_2287_7885) (w@@28 T@FrameType) (r@@25 T@Field_2287_7885) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_4141_4141 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4141_4141 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_4141_4141 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4141_4141 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4141_4141 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@44 T@PolymorphicMapType_4081) (this@@2 T@Ref) (p_1@@2 Real) ) (!  (and (= (f_6@@0 Heap@@44 this@@2 p_1@@2) (|f'| Heap@@44 this@@2 p_1@@2)) (dummyFunction_1468 (|f#triggerStateless| this@@2 p_1@@2)))
 :qid |stdinbpl.200:15|
 :skolemid |22|
 :pattern ( (f_6@@0 Heap@@44 this@@2 p_1@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@45 () T@PolymorphicMapType_4081)
(declare-fun self@@11 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_4102)
(declare-fun Mask@1 () T@PolymorphicMapType_4102)
(declare-fun Mask@2 () T@PolymorphicMapType_4102)
(set-info :boogie-vc-id |P#definedness|)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (state Heap@@45 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_4081_2159_53#PolymorphicMapType_4081| Heap@@45) self@@11 $allocated) (not (= self@@11 null))) (and (= Mask@0 (PolymorphicMapType_4102 (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| ZeroMask) (store (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| ZeroMask) self@@11 f1_2 (+ (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| ZeroMask) self@@11 f1_2) FullPerm)) (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| ZeroMask) (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| ZeroMask) (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| ZeroMask) (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| ZeroMask) (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| ZeroMask) (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| ZeroMask) (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| ZeroMask) (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| ZeroMask) (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| ZeroMask) (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| ZeroMask))) (state Heap@@45 Mask@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_2287_2288 Mask@0 self@@11 f1_2)) (=> (HasDirectPerm_2287_2288 Mask@0 self@@11 f1_2) (=> (and (= Mask@1 (PolymorphicMapType_4102 (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| Mask@0) (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| Mask@0) (store (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| Mask@0) null (u32 (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@45) self@@11 f1_2)) (+ (select (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| Mask@0) null (u32 (select (|PolymorphicMapType_4081_2162_2163#PolymorphicMapType_4081| Heap@@45) self@@11 f1_2))) FullPerm)) (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| Mask@0) (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| Mask@0) (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| Mask@0) (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| Mask@0) (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| Mask@0) (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| Mask@0) (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| Mask@0) (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| Mask@0) (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| Mask@0))) (state Heap@@45 Mask@1)) (=> (and (and (not (= self@@11 null)) (= Mask@2 (PolymorphicMapType_4102 (|PolymorphicMapType_4102_2329_2330#PolymorphicMapType_4102| Mask@1) (store (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| Mask@1) self@@11 f2_2 (+ (select (|PolymorphicMapType_4102_2287_2288#PolymorphicMapType_4102| Mask@1) self@@11 f2_2) FullPerm)) (|PolymorphicMapType_4102_2354_2355#PolymorphicMapType_4102| Mask@1) (|PolymorphicMapType_4102_2293_1219#PolymorphicMapType_4102| Mask@1) (|PolymorphicMapType_4102_2329_2288#PolymorphicMapType_4102| Mask@1) (|PolymorphicMapType_4102_2329_1219#PolymorphicMapType_4102| Mask@1) (|PolymorphicMapType_4102_2329_24241#PolymorphicMapType_4102| Mask@1) (|PolymorphicMapType_4102_2287_2330#PolymorphicMapType_4102| Mask@1) (|PolymorphicMapType_4102_2287_24560#PolymorphicMapType_4102| Mask@1) (|PolymorphicMapType_4102_2354_2288#PolymorphicMapType_4102| Mask@1) (|PolymorphicMapType_4102_2354_1219#PolymorphicMapType_4102| Mask@1) (|PolymorphicMapType_4102_2354_24891#PolymorphicMapType_4102| Mask@1)))) (and (state Heap@@45 Mask@2) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_2287_2288 Mask@2 self@@11 f2_2))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
