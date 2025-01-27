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
(declare-sort T@Field_5480_53 0)
(declare-sort T@Field_5493_5494 0)
(declare-sort T@Field_9502_9503 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_8821_8826 0)
(declare-sort T@Field_9515_9520 0)
(declare-sort T@Field_5480_1203 0)
(declare-sort T@Field_5480_8826 0)
(declare-sort T@Field_5480_8838 0)
(declare-sort T@Field_8808_53 0)
(declare-sort T@Field_8808_5494 0)
(declare-sort T@Field_8808_1203 0)
(declare-sort T@Field_8837_8838 0)
(declare-sort T@Field_9502_53 0)
(declare-sort T@Field_9502_5494 0)
(declare-sort T@Field_9502_1203 0)
(declare-datatypes ((T@PolymorphicMapType_5441 0)) (((PolymorphicMapType_5441 (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| (Array T@Ref T@Field_5493_5494 Real)) (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| (Array T@Ref T@Field_9502_9503 Real)) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| (Array T@Ref T@Field_8808_1203 Real)) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| (Array T@Ref T@Field_5480_8838 Real)) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| (Array T@Ref T@Field_5480_1203 Real)) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| (Array T@Ref T@Field_5480_53 Real)) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| (Array T@Ref T@Field_5480_8826 Real)) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| (Array T@Ref T@Field_9502_5494 Real)) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| (Array T@Ref T@Field_9502_1203 Real)) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| (Array T@Ref T@Field_9502_53 Real)) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| (Array T@Ref T@Field_9515_9520 Real)) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| (Array T@Ref T@Field_8808_5494 Real)) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| (Array T@Ref T@Field_8837_8838 Real)) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| (Array T@Ref T@Field_8808_53 Real)) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| (Array T@Ref T@Field_8821_8826 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5969 0)) (((PolymorphicMapType_5969 (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| (Array T@Ref T@Field_5493_5494 Bool)) (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| (Array T@Ref T@Field_5480_53 Bool)) (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| (Array T@Ref T@Field_5480_1203 Bool)) (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| (Array T@Ref T@Field_5480_8826 Bool)) (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| (Array T@Ref T@Field_5480_8838 Bool)) (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| (Array T@Ref T@Field_8808_5494 Bool)) (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| (Array T@Ref T@Field_8808_53 Bool)) (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| (Array T@Ref T@Field_8808_1203 Bool)) (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| (Array T@Ref T@Field_8821_8826 Bool)) (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| (Array T@Ref T@Field_8837_8838 Bool)) (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| (Array T@Ref T@Field_9502_5494 Bool)) (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| (Array T@Ref T@Field_9502_53 Bool)) (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| (Array T@Ref T@Field_9502_1203 Bool)) (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| (Array T@Ref T@Field_9515_9520 Bool)) (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| (Array T@Ref T@Field_9502_9503 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5420 0)) (((PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| (Array T@Ref T@Field_5480_53 Bool)) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| (Array T@Ref T@Field_5493_5494 T@Ref)) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| (Array T@Ref T@Field_9502_9503 T@FrameType)) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| (Array T@Ref T@Field_8821_8826 T@PolymorphicMapType_5969)) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| (Array T@Ref T@Field_9515_9520 T@PolymorphicMapType_5969)) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| (Array T@Ref T@Field_5480_1203 Int)) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| (Array T@Ref T@Field_5480_8826 T@PolymorphicMapType_5969)) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| (Array T@Ref T@Field_5480_8838 T@FrameType)) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| (Array T@Ref T@Field_8808_53 Bool)) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| (Array T@Ref T@Field_8808_5494 T@Ref)) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| (Array T@Ref T@Field_8808_1203 Int)) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| (Array T@Ref T@Field_8837_8838 T@FrameType)) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| (Array T@Ref T@Field_9502_53 Bool)) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| (Array T@Ref T@Field_9502_5494 T@Ref)) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| (Array T@Ref T@Field_9502_1203 Int)) ) ) ))
(declare-fun $allocated () T@Field_5480_53)
(declare-fun next () T@Field_5493_5494)
(declare-fun succHeap (T@PolymorphicMapType_5420 T@PolymorphicMapType_5420) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5420 T@PolymorphicMapType_5420) Bool)
(declare-fun wand (T@Ref T@Ref Real Bool) T@Field_8808_1203)
(declare-fun getPredWandId_3119_1203 (T@Field_8808_1203) Int)
(declare-fun state (T@PolymorphicMapType_5420 T@PolymorphicMapType_5441) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5441) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5969)
(declare-fun P (T@Ref) T@Field_9502_9503)
(declare-fun IsPredicateField_3161_3162 (T@Field_9502_9503) Bool)
(declare-fun |P#trigger_3161| (T@PolymorphicMapType_5420 T@Field_9502_9503) Bool)
(declare-fun |P#everUsed_3161| (T@Field_9502_9503) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5420 T@PolymorphicMapType_5420 T@PolymorphicMapType_5441) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3161 (T@Field_9502_9503) T@Field_9515_9520)
(declare-fun HasDirectPerm_9502_8838 (T@PolymorphicMapType_5441 T@Ref T@Field_9502_9503) Bool)
(declare-fun IsPredicateField_3130_3131 (T@Field_8837_8838) Bool)
(declare-fun PredicateMaskField_8808 (T@Field_8837_8838) T@Field_8821_8826)
(declare-fun HasDirectPerm_8808_8838 (T@PolymorphicMapType_5441 T@Ref T@Field_8837_8838) Bool)
(declare-fun IsPredicateField_5480_19252 (T@Field_5480_8838) Bool)
(declare-fun PredicateMaskField_5480 (T@Field_5480_8838) T@Field_5480_8826)
(declare-fun HasDirectPerm_5480_8838 (T@PolymorphicMapType_5441 T@Ref T@Field_5480_8838) Bool)
(declare-fun IsWandField_9502_24938 (T@Field_9502_9503) Bool)
(declare-fun WandMaskField_9502 (T@Field_9502_9503) T@Field_9515_9520)
(declare-fun IsWandField_3130_3131 (T@Field_8837_8838) Bool)
(declare-fun WandMaskField_3130 (T@Field_8837_8838) T@Field_8821_8826)
(declare-fun IsWandField_5480_24256 (T@Field_5480_8838) Bool)
(declare-fun WandMaskField_5480 (T@Field_5480_8838) T@Field_5480_8826)
(declare-fun |P#sm| (T@Ref) T@Field_9515_9520)
(declare-fun dummyHeap () T@PolymorphicMapType_5420)
(declare-fun ZeroMask () T@PolymorphicMapType_5441)
(declare-fun InsidePredicate_9502_9502 (T@Field_9502_9503 T@FrameType T@Field_9502_9503 T@FrameType) Bool)
(declare-fun InsidePredicate_8808_8808 (T@Field_8837_8838 T@FrameType T@Field_8837_8838 T@FrameType) Bool)
(declare-fun InsidePredicate_5480_5480 (T@Field_5480_8838 T@FrameType T@Field_5480_8838 T@FrameType) Bool)
(declare-fun IsPredicateField_3157_3158 (T@Field_5493_5494) Bool)
(declare-fun IsWandField_3157_3158 (T@Field_5493_5494) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3119_35242 (T@Field_8821_8826) Bool)
(declare-fun IsWandField_3119_35258 (T@Field_8821_8826) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3119_53 (T@Field_8808_53) Bool)
(declare-fun IsWandField_3119_53 (T@Field_8808_53) Bool)
(declare-fun IsPredicateField_3119_1203 (T@Field_8808_1203) Bool)
(declare-fun IsWandField_3119_1203 (T@Field_8808_1203) Bool)
(declare-fun IsPredicateField_3119_3158 (T@Field_8808_5494) Bool)
(declare-fun IsWandField_3119_3158 (T@Field_8808_5494) Bool)
(declare-fun IsPredicateField_3161_34425 (T@Field_9515_9520) Bool)
(declare-fun IsWandField_3161_34441 (T@Field_9515_9520) Bool)
(declare-fun IsPredicateField_3161_53 (T@Field_9502_53) Bool)
(declare-fun IsWandField_3161_53 (T@Field_9502_53) Bool)
(declare-fun IsPredicateField_3161_1203 (T@Field_9502_1203) Bool)
(declare-fun IsWandField_3161_1203 (T@Field_9502_1203) Bool)
(declare-fun IsPredicateField_3161_3158 (T@Field_9502_5494) Bool)
(declare-fun IsWandField_3161_3158 (T@Field_9502_5494) Bool)
(declare-fun IsPredicateField_3157_33594 (T@Field_5480_8826) Bool)
(declare-fun IsWandField_3157_33610 (T@Field_5480_8826) Bool)
(declare-fun IsPredicateField_3157_53 (T@Field_5480_53) Bool)
(declare-fun IsWandField_3157_53 (T@Field_5480_53) Bool)
(declare-fun IsPredicateField_3157_1203 (T@Field_5480_1203) Bool)
(declare-fun IsWandField_3157_1203 (T@Field_5480_1203) Bool)
(declare-fun HasDirectPerm_9502_18796 (T@PolymorphicMapType_5441 T@Ref T@Field_9515_9520) Bool)
(declare-fun HasDirectPerm_9502_1203 (T@PolymorphicMapType_5441 T@Ref T@Field_9502_1203) Bool)
(declare-fun HasDirectPerm_9502_5494 (T@PolymorphicMapType_5441 T@Ref T@Field_9502_5494) Bool)
(declare-fun HasDirectPerm_9502_53 (T@PolymorphicMapType_5441 T@Ref T@Field_9502_53) Bool)
(declare-fun HasDirectPerm_8808_17661 (T@PolymorphicMapType_5441 T@Ref T@Field_8821_8826) Bool)
(declare-fun HasDirectPerm_8808_1203 (T@PolymorphicMapType_5441 T@Ref T@Field_8808_1203) Bool)
(declare-fun HasDirectPerm_8808_5494 (T@PolymorphicMapType_5441 T@Ref T@Field_8808_5494) Bool)
(declare-fun HasDirectPerm_8808_53 (T@PolymorphicMapType_5441 T@Ref T@Field_8808_53) Bool)
(declare-fun HasDirectPerm_5480_16483 (T@PolymorphicMapType_5441 T@Ref T@Field_5480_8826) Bool)
(declare-fun HasDirectPerm_5480_1203 (T@PolymorphicMapType_5441 T@Ref T@Field_5480_1203) Bool)
(declare-fun HasDirectPerm_5480_5494 (T@PolymorphicMapType_5441 T@Ref T@Field_5493_5494) Bool)
(declare-fun HasDirectPerm_5480_53 (T@PolymorphicMapType_5441 T@Ref T@Field_5480_53) Bool)
(declare-fun |wand#ft| (T@Ref T@Ref Real Bool) T@Field_8837_8838)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (T@Ref T@Ref Real Bool) T@Field_8821_8826)
(declare-fun sumMask (T@PolymorphicMapType_5441 T@PolymorphicMapType_5441 T@PolymorphicMapType_5441) Bool)
(declare-fun getPredWandId_3161_3162 (T@Field_9502_9503) Int)
(declare-fun InsidePredicate_9502_8808 (T@Field_9502_9503 T@FrameType T@Field_8837_8838 T@FrameType) Bool)
(declare-fun InsidePredicate_9502_5480 (T@Field_9502_9503 T@FrameType T@Field_5480_8838 T@FrameType) Bool)
(declare-fun InsidePredicate_8808_9502 (T@Field_8837_8838 T@FrameType T@Field_9502_9503 T@FrameType) Bool)
(declare-fun InsidePredicate_8808_5480 (T@Field_8837_8838 T@FrameType T@Field_5480_8838 T@FrameType) Bool)
(declare-fun InsidePredicate_5480_9502 (T@Field_5480_8838 T@FrameType T@Field_9502_9503 T@FrameType) Bool)
(declare-fun InsidePredicate_5480_8808 (T@Field_5480_8838 T@FrameType T@Field_8837_8838 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5420) (Heap1 T@PolymorphicMapType_5420) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) (arg3 Real) (arg4 Bool) ) (! (= (getPredWandId_3119_1203 (wand arg1 arg2 arg3 arg4)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((Heap T@PolymorphicMapType_5420) (Mask T@PolymorphicMapType_5441) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5420) (Heap1@@0 T@PolymorphicMapType_5420) (Heap2 T@PolymorphicMapType_5420) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9502_9503) ) (!  (not (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9515_9520) ) (!  (not (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9502_1203) ) (!  (not (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9502_53) ) (!  (not (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9502_5494) ) (!  (not (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8837_8838) ) (!  (not (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8821_8826) ) (!  (not (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8808_1203) ) (!  (not (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8808_53) ) (!  (not (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8808_5494) ) (!  (not (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_5480_8838) ) (!  (not (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_5480_8826) ) (!  (not (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5480_1203) ) (!  (not (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5480_53) ) (!  (not (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5493_5494) ) (!  (not (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_3161_3162 (P x))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5420) (x@@0 T@Ref) ) (! (|P#everUsed_3161| (P x@@0))
 :qid |stdinbpl.251:15|
 :skolemid |34|
 :pattern ( (|P#trigger_3161| Heap@@0 (P x@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5420) (ExhaleHeap T@PolymorphicMapType_5420) (Mask@@0 T@PolymorphicMapType_5441) (pm_f_5 T@Field_9502_9503) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9502_8838 Mask@@0 null pm_f_5) (IsPredicateField_3161_3162 pm_f_5)) (= (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@1) null (PredicateMaskField_3161 pm_f_5)) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap) null (PredicateMaskField_3161 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_3161_3162 pm_f_5) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap) null (PredicateMaskField_3161 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5420) (ExhaleHeap@@0 T@PolymorphicMapType_5420) (Mask@@1 T@PolymorphicMapType_5441) (pm_f_5@@0 T@Field_8837_8838) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8808_8838 Mask@@1 null pm_f_5@@0) (IsPredicateField_3130_3131 pm_f_5@@0)) (= (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@2) null (PredicateMaskField_8808 pm_f_5@@0)) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@0) null (PredicateMaskField_8808 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3130_3131 pm_f_5@@0) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@0) null (PredicateMaskField_8808 pm_f_5@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5420) (ExhaleHeap@@1 T@PolymorphicMapType_5420) (Mask@@2 T@PolymorphicMapType_5441) (pm_f_5@@1 T@Field_5480_8838) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5480_8838 Mask@@2 null pm_f_5@@1) (IsPredicateField_5480_19252 pm_f_5@@1)) (= (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@3) null (PredicateMaskField_5480 pm_f_5@@1)) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@1) null (PredicateMaskField_5480 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5480_19252 pm_f_5@@1) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@1) null (PredicateMaskField_5480 pm_f_5@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5420) (ExhaleHeap@@2 T@PolymorphicMapType_5420) (Mask@@3 T@PolymorphicMapType_5441) (pm_f_5@@2 T@Field_9502_9503) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_9502_8838 Mask@@3 null pm_f_5@@2) (IsWandField_9502_24938 pm_f_5@@2)) (= (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@4) null (WandMaskField_9502 pm_f_5@@2)) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@2) null (WandMaskField_9502 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_9502_24938 pm_f_5@@2) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@2) null (WandMaskField_9502 pm_f_5@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5420) (ExhaleHeap@@3 T@PolymorphicMapType_5420) (Mask@@4 T@PolymorphicMapType_5441) (pm_f_5@@3 T@Field_8837_8838) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8808_8838 Mask@@4 null pm_f_5@@3) (IsWandField_3130_3131 pm_f_5@@3)) (= (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@5) null (WandMaskField_3130 pm_f_5@@3)) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@3) null (WandMaskField_3130 pm_f_5@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsWandField_3130_3131 pm_f_5@@3) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@3) null (WandMaskField_3130 pm_f_5@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5420) (ExhaleHeap@@4 T@PolymorphicMapType_5420) (Mask@@5 T@PolymorphicMapType_5441) (pm_f_5@@4 T@Field_5480_8838) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5480_8838 Mask@@5 null pm_f_5@@4) (IsWandField_5480_24256 pm_f_5@@4)) (= (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@6) null (WandMaskField_5480 pm_f_5@@4)) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@4) null (WandMaskField_5480 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_5480_24256 pm_f_5@@4) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@4) null (WandMaskField_5480 pm_f_5@@4)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@1) (P x2)) (= x@@1 x2))
 :qid |stdinbpl.242:15|
 :skolemid |32|
 :pattern ( (P x@@1) (P x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@2) (|P#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.246:15|
 :skolemid |33|
 :pattern ( (|P#sm| x@@2) (|P#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5420) (ExhaleHeap@@5 T@PolymorphicMapType_5420) (Mask@@6 T@PolymorphicMapType_5441) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@7) o_15 $allocated) (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@5) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@5) o_15 $allocated))
)))
(assert (forall ((p T@Field_9502_9503) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9502_9502 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9502_9502 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8837_8838) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8808_8808 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8808_8808 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_5480_8838) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_5480_5480 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5480_5480 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_3157_3158 next)))
(assert  (not (IsWandField_3157_3158 next)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5420) (ExhaleHeap@@6 T@PolymorphicMapType_5420) (Mask@@7 T@PolymorphicMapType_5441) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@8 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5441) (o_2@@14 T@Ref) (f_4@@14 T@Field_8821_8826) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3119_35242 f_4@@14))) (not (IsWandField_3119_35258 f_4@@14))) (<= (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5441) (o_2@@15 T@Ref) (f_4@@15 T@Field_8808_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3119_53 f_4@@15))) (not (IsWandField_3119_53 f_4@@15))) (<= (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5441) (o_2@@16 T@Ref) (f_4@@16 T@Field_8808_1203) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3119_1203 f_4@@16))) (not (IsWandField_3119_1203 f_4@@16))) (<= (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5441) (o_2@@17 T@Ref) (f_4@@17 T@Field_8837_8838) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3130_3131 f_4@@17))) (not (IsWandField_3130_3131 f_4@@17))) (<= (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5441) (o_2@@18 T@Ref) (f_4@@18 T@Field_8808_5494) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3119_3158 f_4@@18))) (not (IsWandField_3119_3158 f_4@@18))) (<= (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5441) (o_2@@19 T@Ref) (f_4@@19 T@Field_9515_9520) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3161_34425 f_4@@19))) (not (IsWandField_3161_34441 f_4@@19))) (<= (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5441) (o_2@@20 T@Ref) (f_4@@20 T@Field_9502_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3161_53 f_4@@20))) (not (IsWandField_3161_53 f_4@@20))) (<= (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5441) (o_2@@21 T@Ref) (f_4@@21 T@Field_9502_1203) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3161_1203 f_4@@21))) (not (IsWandField_3161_1203 f_4@@21))) (<= (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5441) (o_2@@22 T@Ref) (f_4@@22 T@Field_9502_9503) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3161_3162 f_4@@22))) (not (IsWandField_9502_24938 f_4@@22))) (<= (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5441) (o_2@@23 T@Ref) (f_4@@23 T@Field_9502_5494) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3161_3158 f_4@@23))) (not (IsWandField_3161_3158 f_4@@23))) (<= (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5441) (o_2@@24 T@Ref) (f_4@@24 T@Field_5480_8826) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3157_33594 f_4@@24))) (not (IsWandField_3157_33610 f_4@@24))) (<= (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5441) (o_2@@25 T@Ref) (f_4@@25 T@Field_5480_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3157_53 f_4@@25))) (not (IsWandField_3157_53 f_4@@25))) (<= (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5441) (o_2@@26 T@Ref) (f_4@@26 T@Field_5480_1203) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3157_1203 f_4@@26))) (not (IsWandField_3157_1203 f_4@@26))) (<= (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5441) (o_2@@27 T@Ref) (f_4@@27 T@Field_5480_8838) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5480_19252 f_4@@27))) (not (IsWandField_5480_24256 f_4@@27))) (<= (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5441) (o_2@@28 T@Ref) (f_4@@28 T@Field_5493_5494) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_3157_3158 f_4@@28))) (not (IsWandField_3157_3158 f_4@@28))) (<= (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5441) (o_2@@29 T@Ref) (f_4@@29 T@Field_9502_9503) ) (! (= (HasDirectPerm_9502_8838 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9502_8838 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5441) (o_2@@30 T@Ref) (f_4@@30 T@Field_9515_9520) ) (! (= (HasDirectPerm_9502_18796 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9502_18796 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5441) (o_2@@31 T@Ref) (f_4@@31 T@Field_9502_1203) ) (! (= (HasDirectPerm_9502_1203 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9502_1203 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5441) (o_2@@32 T@Ref) (f_4@@32 T@Field_9502_5494) ) (! (= (HasDirectPerm_9502_5494 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9502_5494 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_5441) (o_2@@33 T@Ref) (f_4@@33 T@Field_9502_53) ) (! (= (HasDirectPerm_9502_53 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9502_53 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_5441) (o_2@@34 T@Ref) (f_4@@34 T@Field_8837_8838) ) (! (= (HasDirectPerm_8808_8838 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8808_8838 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_5441) (o_2@@35 T@Ref) (f_4@@35 T@Field_8821_8826) ) (! (= (HasDirectPerm_8808_17661 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8808_17661 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_5441) (o_2@@36 T@Ref) (f_4@@36 T@Field_8808_1203) ) (! (= (HasDirectPerm_8808_1203 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8808_1203 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_5441) (o_2@@37 T@Ref) (f_4@@37 T@Field_8808_5494) ) (! (= (HasDirectPerm_8808_5494 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8808_5494 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_5441) (o_2@@38 T@Ref) (f_4@@38 T@Field_8808_53) ) (! (= (HasDirectPerm_8808_53 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8808_53 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_5441) (o_2@@39 T@Ref) (f_4@@39 T@Field_5480_8838) ) (! (= (HasDirectPerm_5480_8838 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5480_8838 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_5441) (o_2@@40 T@Ref) (f_4@@40 T@Field_5480_8826) ) (! (= (HasDirectPerm_5480_16483 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5480_16483 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_5441) (o_2@@41 T@Ref) (f_4@@41 T@Field_5480_1203) ) (! (= (HasDirectPerm_5480_1203 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5480_1203 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_5441) (o_2@@42 T@Ref) (f_4@@42 T@Field_5493_5494) ) (! (= (HasDirectPerm_5480_5494 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5480_5494 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_5441) (o_2@@43 T@Ref) (f_4@@43 T@Field_5480_53) ) (! (= (HasDirectPerm_5480_53 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5480_53 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) (arg3@@0 Real) (arg4@@0 Bool) ) (! (IsWandField_3119_1203 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) (arg3@@1 Real) (arg4@@1 Bool) ) (! (IsWandField_3130_3131 (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5420) (ExhaleHeap@@7 T@PolymorphicMapType_5420) (Mask@@38 T@PolymorphicMapType_5441) (o_15@@0 T@Ref) (f_23 T@Field_9502_9503) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_9502_8838 Mask@@38 o_15@@0 f_23) (= (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@9) o_15@@0 f_23) (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@7) o_15@@0 f_23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@7) o_15@@0 f_23))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5420) (ExhaleHeap@@8 T@PolymorphicMapType_5420) (Mask@@39 T@PolymorphicMapType_5441) (o_15@@1 T@Ref) (f_23@@0 T@Field_9515_9520) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_9502_18796 Mask@@39 o_15@@1 f_23@@0) (= (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@10) o_15@@1 f_23@@0) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@8) o_15@@1 f_23@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@8) o_15@@1 f_23@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5420) (ExhaleHeap@@9 T@PolymorphicMapType_5420) (Mask@@40 T@PolymorphicMapType_5441) (o_15@@2 T@Ref) (f_23@@1 T@Field_9502_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_9502_1203 Mask@@40 o_15@@2 f_23@@1) (= (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@11) o_15@@2 f_23@@1) (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@9) o_15@@2 f_23@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@9) o_15@@2 f_23@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5420) (ExhaleHeap@@10 T@PolymorphicMapType_5420) (Mask@@41 T@PolymorphicMapType_5441) (o_15@@3 T@Ref) (f_23@@2 T@Field_9502_5494) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_9502_5494 Mask@@41 o_15@@3 f_23@@2) (= (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@12) o_15@@3 f_23@@2) (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@10) o_15@@3 f_23@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@10) o_15@@3 f_23@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5420) (ExhaleHeap@@11 T@PolymorphicMapType_5420) (Mask@@42 T@PolymorphicMapType_5441) (o_15@@4 T@Ref) (f_23@@3 T@Field_9502_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_9502_53 Mask@@42 o_15@@4 f_23@@3) (= (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@13) o_15@@4 f_23@@3) (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@11) o_15@@4 f_23@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@11) o_15@@4 f_23@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5420) (ExhaleHeap@@12 T@PolymorphicMapType_5420) (Mask@@43 T@PolymorphicMapType_5441) (o_15@@5 T@Ref) (f_23@@4 T@Field_8837_8838) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_8808_8838 Mask@@43 o_15@@5 f_23@@4) (= (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@14) o_15@@5 f_23@@4) (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@12) o_15@@5 f_23@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@12) o_15@@5 f_23@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5420) (ExhaleHeap@@13 T@PolymorphicMapType_5420) (Mask@@44 T@PolymorphicMapType_5441) (o_15@@6 T@Ref) (f_23@@5 T@Field_8821_8826) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_8808_17661 Mask@@44 o_15@@6 f_23@@5) (= (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@15) o_15@@6 f_23@@5) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@13) o_15@@6 f_23@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@13) o_15@@6 f_23@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5420) (ExhaleHeap@@14 T@PolymorphicMapType_5420) (Mask@@45 T@PolymorphicMapType_5441) (o_15@@7 T@Ref) (f_23@@6 T@Field_8808_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_8808_1203 Mask@@45 o_15@@7 f_23@@6) (= (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@16) o_15@@7 f_23@@6) (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@14) o_15@@7 f_23@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@14) o_15@@7 f_23@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5420) (ExhaleHeap@@15 T@PolymorphicMapType_5420) (Mask@@46 T@PolymorphicMapType_5441) (o_15@@8 T@Ref) (f_23@@7 T@Field_8808_5494) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_8808_5494 Mask@@46 o_15@@8 f_23@@7) (= (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@17) o_15@@8 f_23@@7) (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@15) o_15@@8 f_23@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@15) o_15@@8 f_23@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5420) (ExhaleHeap@@16 T@PolymorphicMapType_5420) (Mask@@47 T@PolymorphicMapType_5441) (o_15@@9 T@Ref) (f_23@@8 T@Field_8808_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_8808_53 Mask@@47 o_15@@9 f_23@@8) (= (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@18) o_15@@9 f_23@@8) (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@16) o_15@@9 f_23@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@16) o_15@@9 f_23@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5420) (ExhaleHeap@@17 T@PolymorphicMapType_5420) (Mask@@48 T@PolymorphicMapType_5441) (o_15@@10 T@Ref) (f_23@@9 T@Field_5480_8838) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_5480_8838 Mask@@48 o_15@@10 f_23@@9) (= (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@19) o_15@@10 f_23@@9) (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@17) o_15@@10 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@17) o_15@@10 f_23@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5420) (ExhaleHeap@@18 T@PolymorphicMapType_5420) (Mask@@49 T@PolymorphicMapType_5441) (o_15@@11 T@Ref) (f_23@@10 T@Field_5480_8826) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_5480_16483 Mask@@49 o_15@@11 f_23@@10) (= (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@20) o_15@@11 f_23@@10) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@18) o_15@@11 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@18) o_15@@11 f_23@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5420) (ExhaleHeap@@19 T@PolymorphicMapType_5420) (Mask@@50 T@PolymorphicMapType_5441) (o_15@@12 T@Ref) (f_23@@11 T@Field_5480_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_5480_1203 Mask@@50 o_15@@12 f_23@@11) (= (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@21) o_15@@12 f_23@@11) (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@19) o_15@@12 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@19) o_15@@12 f_23@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5420) (ExhaleHeap@@20 T@PolymorphicMapType_5420) (Mask@@51 T@PolymorphicMapType_5441) (o_15@@13 T@Ref) (f_23@@12 T@Field_5493_5494) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_5480_5494 Mask@@51 o_15@@13 f_23@@12) (= (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@22) o_15@@13 f_23@@12) (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@20) o_15@@13 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@20) o_15@@13 f_23@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5420) (ExhaleHeap@@21 T@PolymorphicMapType_5420) (Mask@@52 T@PolymorphicMapType_5441) (o_15@@14 T@Ref) (f_23@@13 T@Field_5480_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_5480_53 Mask@@52 o_15@@14 f_23@@13) (= (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@23) o_15@@14 f_23@@13) (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@21) o_15@@14 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@21) o_15@@14 f_23@@13))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) (arg3@@2 Real) (arg4@@2 Bool) ) (!  (not (IsPredicateField_3119_1203 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg3@@3 Real) (arg4@@3 Bool) ) (!  (not (IsPredicateField_3130_3131 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) (arg3@@4 Real) (arg4@@4 Bool) ) (! (= (|wand#sm| arg1@@4 arg2@@4 arg3@@4 arg4@@4) (WandMaskField_3130 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_3130 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_8821_8826) ) (! (= (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_8808_53) ) (! (= (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_8808_1203) ) (! (= (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_8837_8838) ) (! (= (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_8808_5494) ) (! (= (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_9515_9520) ) (! (= (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_9502_53) ) (! (= (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_9502_1203) ) (! (= (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_9502_9503) ) (! (= (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_9502_5494) ) (! (= (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_5480_8826) ) (! (= (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_5480_53) ) (! (= (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_5480_1203) ) (! (= (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_5480_8838) ) (! (= (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_5493_5494) ) (! (= (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5441) (SummandMask1 T@PolymorphicMapType_5441) (SummandMask2 T@PolymorphicMapType_5441) (o_2@@59 T@Ref) (f_4@@59 T@Field_8821_8826) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5441) (SummandMask1@@0 T@PolymorphicMapType_5441) (SummandMask2@@0 T@PolymorphicMapType_5441) (o_2@@60 T@Ref) (f_4@@60 T@Field_8808_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5441) (SummandMask1@@1 T@PolymorphicMapType_5441) (SummandMask2@@1 T@PolymorphicMapType_5441) (o_2@@61 T@Ref) (f_4@@61 T@Field_8808_1203) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5441) (SummandMask1@@2 T@PolymorphicMapType_5441) (SummandMask2@@2 T@PolymorphicMapType_5441) (o_2@@62 T@Ref) (f_4@@62 T@Field_8837_8838) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5441) (SummandMask1@@3 T@PolymorphicMapType_5441) (SummandMask2@@3 T@PolymorphicMapType_5441) (o_2@@63 T@Ref) (f_4@@63 T@Field_8808_5494) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5441) (SummandMask1@@4 T@PolymorphicMapType_5441) (SummandMask2@@4 T@PolymorphicMapType_5441) (o_2@@64 T@Ref) (f_4@@64 T@Field_9515_9520) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5441) (SummandMask1@@5 T@PolymorphicMapType_5441) (SummandMask2@@5 T@PolymorphicMapType_5441) (o_2@@65 T@Ref) (f_4@@65 T@Field_9502_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5441) (SummandMask1@@6 T@PolymorphicMapType_5441) (SummandMask2@@6 T@PolymorphicMapType_5441) (o_2@@66 T@Ref) (f_4@@66 T@Field_9502_1203) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_5441) (SummandMask1@@7 T@PolymorphicMapType_5441) (SummandMask2@@7 T@PolymorphicMapType_5441) (o_2@@67 T@Ref) (f_4@@67 T@Field_9502_9503) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_5441) (SummandMask1@@8 T@PolymorphicMapType_5441) (SummandMask2@@8 T@PolymorphicMapType_5441) (o_2@@68 T@Ref) (f_4@@68 T@Field_9502_5494) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_5441) (SummandMask1@@9 T@PolymorphicMapType_5441) (SummandMask2@@9 T@PolymorphicMapType_5441) (o_2@@69 T@Ref) (f_4@@69 T@Field_5480_8826) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_5441) (SummandMask1@@10 T@PolymorphicMapType_5441) (SummandMask2@@10 T@PolymorphicMapType_5441) (o_2@@70 T@Ref) (f_4@@70 T@Field_5480_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_5441) (SummandMask1@@11 T@PolymorphicMapType_5441) (SummandMask2@@11 T@PolymorphicMapType_5441) (o_2@@71 T@Ref) (f_4@@71 T@Field_5480_1203) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_5441) (SummandMask1@@12 T@PolymorphicMapType_5441) (SummandMask2@@12 T@PolymorphicMapType_5441) (o_2@@72 T@Ref) (f_4@@72 T@Field_5480_8838) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_5441) (SummandMask1@@13 T@PolymorphicMapType_5441) (SummandMask2@@13 T@PolymorphicMapType_5441) (o_2@@73 T@Ref) (f_4@@73 T@Field_5493_5494) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5420) (ExhaleHeap@@22 T@PolymorphicMapType_5420) (Mask@@53 T@PolymorphicMapType_5441) (pm_f_5@@5 T@Field_9502_9503) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_9502_8838 Mask@@53 null pm_f_5@@5) (IsPredicateField_3161_3162 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23@@14 T@Field_5493_5494) ) (!  (=> (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5 f_23@@14) (= (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@24) o2_5 f_23@@14) (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5 f_23@@14))
)) (forall ((o2_5@@0 T@Ref) (f_23@@15 T@Field_5480_53) ) (!  (=> (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@0 f_23@@15) (= (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@24) o2_5@@0 f_23@@15) (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@0 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@0 f_23@@15))
))) (forall ((o2_5@@1 T@Ref) (f_23@@16 T@Field_5480_1203) ) (!  (=> (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@1 f_23@@16) (= (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@24) o2_5@@1 f_23@@16) (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@1 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@1 f_23@@16))
))) (forall ((o2_5@@2 T@Ref) (f_23@@17 T@Field_5480_8826) ) (!  (=> (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@2 f_23@@17) (= (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@24) o2_5@@2 f_23@@17) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@2 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@2 f_23@@17))
))) (forall ((o2_5@@3 T@Ref) (f_23@@18 T@Field_5480_8838) ) (!  (=> (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@3 f_23@@18) (= (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@24) o2_5@@3 f_23@@18) (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@3 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@3 f_23@@18))
))) (forall ((o2_5@@4 T@Ref) (f_23@@19 T@Field_8808_5494) ) (!  (=> (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@4 f_23@@19) (= (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@24) o2_5@@4 f_23@@19) (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@4 f_23@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@4 f_23@@19))
))) (forall ((o2_5@@5 T@Ref) (f_23@@20 T@Field_8808_53) ) (!  (=> (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@5 f_23@@20) (= (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@24) o2_5@@5 f_23@@20) (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@5 f_23@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@5 f_23@@20))
))) (forall ((o2_5@@6 T@Ref) (f_23@@21 T@Field_8808_1203) ) (!  (=> (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@6 f_23@@21) (= (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@24) o2_5@@6 f_23@@21) (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@6 f_23@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@6 f_23@@21))
))) (forall ((o2_5@@7 T@Ref) (f_23@@22 T@Field_8821_8826) ) (!  (=> (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@7 f_23@@22) (= (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@24) o2_5@@7 f_23@@22) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@7 f_23@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@7 f_23@@22))
))) (forall ((o2_5@@8 T@Ref) (f_23@@23 T@Field_8837_8838) ) (!  (=> (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@8 f_23@@23) (= (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@24) o2_5@@8 f_23@@23) (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@8 f_23@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@8 f_23@@23))
))) (forall ((o2_5@@9 T@Ref) (f_23@@24 T@Field_9502_5494) ) (!  (=> (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@9 f_23@@24) (= (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@24) o2_5@@9 f_23@@24) (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@9 f_23@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@9 f_23@@24))
))) (forall ((o2_5@@10 T@Ref) (f_23@@25 T@Field_9502_53) ) (!  (=> (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@10 f_23@@25) (= (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@24) o2_5@@10 f_23@@25) (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@10 f_23@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@10 f_23@@25))
))) (forall ((o2_5@@11 T@Ref) (f_23@@26 T@Field_9502_1203) ) (!  (=> (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@11 f_23@@26) (= (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@24) o2_5@@11 f_23@@26) (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@11 f_23@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@11 f_23@@26))
))) (forall ((o2_5@@12 T@Ref) (f_23@@27 T@Field_9515_9520) ) (!  (=> (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@12 f_23@@27) (= (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) o2_5@@12 f_23@@27) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@12 f_23@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@12 f_23@@27))
))) (forall ((o2_5@@13 T@Ref) (f_23@@28 T@Field_9502_9503) ) (!  (=> (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@24) null (PredicateMaskField_3161 pm_f_5@@5))) o2_5@@13 f_23@@28) (= (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@24) o2_5@@13 f_23@@28) (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@13 f_23@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@22) o2_5@@13 f_23@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (IsPredicateField_3161_3162 pm_f_5@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5420) (ExhaleHeap@@23 T@PolymorphicMapType_5420) (Mask@@54 T@PolymorphicMapType_5441) (pm_f_5@@6 T@Field_8837_8838) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_8808_8838 Mask@@54 null pm_f_5@@6) (IsPredicateField_3130_3131 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@14 T@Ref) (f_23@@29 T@Field_5493_5494) ) (!  (=> (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@14 f_23@@29) (= (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@25) o2_5@@14 f_23@@29) (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@14 f_23@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@14 f_23@@29))
)) (forall ((o2_5@@15 T@Ref) (f_23@@30 T@Field_5480_53) ) (!  (=> (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@15 f_23@@30) (= (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@25) o2_5@@15 f_23@@30) (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@15 f_23@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@15 f_23@@30))
))) (forall ((o2_5@@16 T@Ref) (f_23@@31 T@Field_5480_1203) ) (!  (=> (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@16 f_23@@31) (= (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@25) o2_5@@16 f_23@@31) (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@16 f_23@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@16 f_23@@31))
))) (forall ((o2_5@@17 T@Ref) (f_23@@32 T@Field_5480_8826) ) (!  (=> (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@17 f_23@@32) (= (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@25) o2_5@@17 f_23@@32) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@17 f_23@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@17 f_23@@32))
))) (forall ((o2_5@@18 T@Ref) (f_23@@33 T@Field_5480_8838) ) (!  (=> (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@18 f_23@@33) (= (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@25) o2_5@@18 f_23@@33) (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@18 f_23@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@18 f_23@@33))
))) (forall ((o2_5@@19 T@Ref) (f_23@@34 T@Field_8808_5494) ) (!  (=> (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@19 f_23@@34) (= (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@25) o2_5@@19 f_23@@34) (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@19 f_23@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@19 f_23@@34))
))) (forall ((o2_5@@20 T@Ref) (f_23@@35 T@Field_8808_53) ) (!  (=> (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@20 f_23@@35) (= (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@25) o2_5@@20 f_23@@35) (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@20 f_23@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@20 f_23@@35))
))) (forall ((o2_5@@21 T@Ref) (f_23@@36 T@Field_8808_1203) ) (!  (=> (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@21 f_23@@36) (= (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@25) o2_5@@21 f_23@@36) (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@21 f_23@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@21 f_23@@36))
))) (forall ((o2_5@@22 T@Ref) (f_23@@37 T@Field_8821_8826) ) (!  (=> (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@22 f_23@@37) (= (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) o2_5@@22 f_23@@37) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@22 f_23@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@22 f_23@@37))
))) (forall ((o2_5@@23 T@Ref) (f_23@@38 T@Field_8837_8838) ) (!  (=> (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@23 f_23@@38) (= (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@25) o2_5@@23 f_23@@38) (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@23 f_23@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@23 f_23@@38))
))) (forall ((o2_5@@24 T@Ref) (f_23@@39 T@Field_9502_5494) ) (!  (=> (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@24 f_23@@39) (= (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@25) o2_5@@24 f_23@@39) (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@24 f_23@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@24 f_23@@39))
))) (forall ((o2_5@@25 T@Ref) (f_23@@40 T@Field_9502_53) ) (!  (=> (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@25 f_23@@40) (= (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@25) o2_5@@25 f_23@@40) (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@25 f_23@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@25 f_23@@40))
))) (forall ((o2_5@@26 T@Ref) (f_23@@41 T@Field_9502_1203) ) (!  (=> (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@26 f_23@@41) (= (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@25) o2_5@@26 f_23@@41) (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@26 f_23@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@26 f_23@@41))
))) (forall ((o2_5@@27 T@Ref) (f_23@@42 T@Field_9515_9520) ) (!  (=> (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@27 f_23@@42) (= (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@25) o2_5@@27 f_23@@42) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@27 f_23@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@27 f_23@@42))
))) (forall ((o2_5@@28 T@Ref) (f_23@@43 T@Field_9502_9503) ) (!  (=> (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@25) null (PredicateMaskField_8808 pm_f_5@@6))) o2_5@@28 f_23@@43) (= (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@25) o2_5@@28 f_23@@43) (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@28 f_23@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@23) o2_5@@28 f_23@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (IsPredicateField_3130_3131 pm_f_5@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5420) (ExhaleHeap@@24 T@PolymorphicMapType_5420) (Mask@@55 T@PolymorphicMapType_5441) (pm_f_5@@7 T@Field_5480_8838) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_5480_8838 Mask@@55 null pm_f_5@@7) (IsPredicateField_5480_19252 pm_f_5@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_23@@44 T@Field_5493_5494) ) (!  (=> (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@29 f_23@@44) (= (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@26) o2_5@@29 f_23@@44) (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@29 f_23@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@29 f_23@@44))
)) (forall ((o2_5@@30 T@Ref) (f_23@@45 T@Field_5480_53) ) (!  (=> (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@30 f_23@@45) (= (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@26) o2_5@@30 f_23@@45) (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@30 f_23@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@30 f_23@@45))
))) (forall ((o2_5@@31 T@Ref) (f_23@@46 T@Field_5480_1203) ) (!  (=> (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@31 f_23@@46) (= (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@26) o2_5@@31 f_23@@46) (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@31 f_23@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@31 f_23@@46))
))) (forall ((o2_5@@32 T@Ref) (f_23@@47 T@Field_5480_8826) ) (!  (=> (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@32 f_23@@47) (= (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) o2_5@@32 f_23@@47) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@32 f_23@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@32 f_23@@47))
))) (forall ((o2_5@@33 T@Ref) (f_23@@48 T@Field_5480_8838) ) (!  (=> (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@33 f_23@@48) (= (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@26) o2_5@@33 f_23@@48) (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@33 f_23@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@33 f_23@@48))
))) (forall ((o2_5@@34 T@Ref) (f_23@@49 T@Field_8808_5494) ) (!  (=> (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@34 f_23@@49) (= (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@26) o2_5@@34 f_23@@49) (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@34 f_23@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@34 f_23@@49))
))) (forall ((o2_5@@35 T@Ref) (f_23@@50 T@Field_8808_53) ) (!  (=> (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@35 f_23@@50) (= (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@26) o2_5@@35 f_23@@50) (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@35 f_23@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@35 f_23@@50))
))) (forall ((o2_5@@36 T@Ref) (f_23@@51 T@Field_8808_1203) ) (!  (=> (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@36 f_23@@51) (= (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@26) o2_5@@36 f_23@@51) (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@36 f_23@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@36 f_23@@51))
))) (forall ((o2_5@@37 T@Ref) (f_23@@52 T@Field_8821_8826) ) (!  (=> (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@37 f_23@@52) (= (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@26) o2_5@@37 f_23@@52) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@37 f_23@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@37 f_23@@52))
))) (forall ((o2_5@@38 T@Ref) (f_23@@53 T@Field_8837_8838) ) (!  (=> (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@38 f_23@@53) (= (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@26) o2_5@@38 f_23@@53) (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@38 f_23@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@38 f_23@@53))
))) (forall ((o2_5@@39 T@Ref) (f_23@@54 T@Field_9502_5494) ) (!  (=> (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@39 f_23@@54) (= (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@26) o2_5@@39 f_23@@54) (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@39 f_23@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@39 f_23@@54))
))) (forall ((o2_5@@40 T@Ref) (f_23@@55 T@Field_9502_53) ) (!  (=> (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@40 f_23@@55) (= (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@26) o2_5@@40 f_23@@55) (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@40 f_23@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@40 f_23@@55))
))) (forall ((o2_5@@41 T@Ref) (f_23@@56 T@Field_9502_1203) ) (!  (=> (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@41 f_23@@56) (= (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@26) o2_5@@41 f_23@@56) (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@41 f_23@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@41 f_23@@56))
))) (forall ((o2_5@@42 T@Ref) (f_23@@57 T@Field_9515_9520) ) (!  (=> (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@42 f_23@@57) (= (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@26) o2_5@@42 f_23@@57) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@42 f_23@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@42 f_23@@57))
))) (forall ((o2_5@@43 T@Ref) (f_23@@58 T@Field_9502_9503) ) (!  (=> (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@26) null (PredicateMaskField_5480 pm_f_5@@7))) o2_5@@43 f_23@@58) (= (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@26) o2_5@@43 f_23@@58) (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@43 f_23@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@24) o2_5@@43 f_23@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (IsPredicateField_5480_19252 pm_f_5@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5420) (ExhaleHeap@@25 T@PolymorphicMapType_5420) (Mask@@56 T@PolymorphicMapType_5441) (pm_f_5@@8 T@Field_9502_9503) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_9502_8838 Mask@@56 null pm_f_5@@8) (IsWandField_9502_24938 pm_f_5@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@44 T@Ref) (f_23@@59 T@Field_5493_5494) ) (!  (=> (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@44 f_23@@59) (= (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@27) o2_5@@44 f_23@@59) (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@44 f_23@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@44 f_23@@59))
)) (forall ((o2_5@@45 T@Ref) (f_23@@60 T@Field_5480_53) ) (!  (=> (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@45 f_23@@60) (= (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@27) o2_5@@45 f_23@@60) (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@45 f_23@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@45 f_23@@60))
))) (forall ((o2_5@@46 T@Ref) (f_23@@61 T@Field_5480_1203) ) (!  (=> (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@46 f_23@@61) (= (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@27) o2_5@@46 f_23@@61) (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@46 f_23@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@46 f_23@@61))
))) (forall ((o2_5@@47 T@Ref) (f_23@@62 T@Field_5480_8826) ) (!  (=> (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@47 f_23@@62) (= (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@27) o2_5@@47 f_23@@62) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@47 f_23@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@47 f_23@@62))
))) (forall ((o2_5@@48 T@Ref) (f_23@@63 T@Field_5480_8838) ) (!  (=> (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@48 f_23@@63) (= (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@27) o2_5@@48 f_23@@63) (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@48 f_23@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@48 f_23@@63))
))) (forall ((o2_5@@49 T@Ref) (f_23@@64 T@Field_8808_5494) ) (!  (=> (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@49 f_23@@64) (= (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@27) o2_5@@49 f_23@@64) (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@49 f_23@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@49 f_23@@64))
))) (forall ((o2_5@@50 T@Ref) (f_23@@65 T@Field_8808_53) ) (!  (=> (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@50 f_23@@65) (= (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@27) o2_5@@50 f_23@@65) (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@50 f_23@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@50 f_23@@65))
))) (forall ((o2_5@@51 T@Ref) (f_23@@66 T@Field_8808_1203) ) (!  (=> (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@51 f_23@@66) (= (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@27) o2_5@@51 f_23@@66) (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@51 f_23@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@51 f_23@@66))
))) (forall ((o2_5@@52 T@Ref) (f_23@@67 T@Field_8821_8826) ) (!  (=> (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@52 f_23@@67) (= (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@27) o2_5@@52 f_23@@67) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@52 f_23@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@52 f_23@@67))
))) (forall ((o2_5@@53 T@Ref) (f_23@@68 T@Field_8837_8838) ) (!  (=> (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@53 f_23@@68) (= (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@27) o2_5@@53 f_23@@68) (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@53 f_23@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@53 f_23@@68))
))) (forall ((o2_5@@54 T@Ref) (f_23@@69 T@Field_9502_5494) ) (!  (=> (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@54 f_23@@69) (= (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@27) o2_5@@54 f_23@@69) (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@54 f_23@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@54 f_23@@69))
))) (forall ((o2_5@@55 T@Ref) (f_23@@70 T@Field_9502_53) ) (!  (=> (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@55 f_23@@70) (= (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@27) o2_5@@55 f_23@@70) (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@55 f_23@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@55 f_23@@70))
))) (forall ((o2_5@@56 T@Ref) (f_23@@71 T@Field_9502_1203) ) (!  (=> (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@56 f_23@@71) (= (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@27) o2_5@@56 f_23@@71) (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@56 f_23@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@56 f_23@@71))
))) (forall ((o2_5@@57 T@Ref) (f_23@@72 T@Field_9515_9520) ) (!  (=> (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@57 f_23@@72) (= (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) o2_5@@57 f_23@@72) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@57 f_23@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@57 f_23@@72))
))) (forall ((o2_5@@58 T@Ref) (f_23@@73 T@Field_9502_9503) ) (!  (=> (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@27) null (WandMaskField_9502 pm_f_5@@8))) o2_5@@58 f_23@@73) (= (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@27) o2_5@@58 f_23@@73) (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@58 f_23@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@25) o2_5@@58 f_23@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (IsWandField_9502_24938 pm_f_5@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5420) (ExhaleHeap@@26 T@PolymorphicMapType_5420) (Mask@@57 T@PolymorphicMapType_5441) (pm_f_5@@9 T@Field_8837_8838) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_8808_8838 Mask@@57 null pm_f_5@@9) (IsWandField_3130_3131 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_23@@74 T@Field_5493_5494) ) (!  (=> (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@59 f_23@@74) (= (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@28) o2_5@@59 f_23@@74) (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@59 f_23@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@59 f_23@@74))
)) (forall ((o2_5@@60 T@Ref) (f_23@@75 T@Field_5480_53) ) (!  (=> (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@60 f_23@@75) (= (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@28) o2_5@@60 f_23@@75) (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@60 f_23@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@60 f_23@@75))
))) (forall ((o2_5@@61 T@Ref) (f_23@@76 T@Field_5480_1203) ) (!  (=> (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@61 f_23@@76) (= (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@28) o2_5@@61 f_23@@76) (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@61 f_23@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@61 f_23@@76))
))) (forall ((o2_5@@62 T@Ref) (f_23@@77 T@Field_5480_8826) ) (!  (=> (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@62 f_23@@77) (= (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@28) o2_5@@62 f_23@@77) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@62 f_23@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@62 f_23@@77))
))) (forall ((o2_5@@63 T@Ref) (f_23@@78 T@Field_5480_8838) ) (!  (=> (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@63 f_23@@78) (= (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@28) o2_5@@63 f_23@@78) (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@63 f_23@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@63 f_23@@78))
))) (forall ((o2_5@@64 T@Ref) (f_23@@79 T@Field_8808_5494) ) (!  (=> (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@64 f_23@@79) (= (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@28) o2_5@@64 f_23@@79) (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@64 f_23@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@64 f_23@@79))
))) (forall ((o2_5@@65 T@Ref) (f_23@@80 T@Field_8808_53) ) (!  (=> (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@65 f_23@@80) (= (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@28) o2_5@@65 f_23@@80) (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@65 f_23@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@65 f_23@@80))
))) (forall ((o2_5@@66 T@Ref) (f_23@@81 T@Field_8808_1203) ) (!  (=> (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@66 f_23@@81) (= (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@28) o2_5@@66 f_23@@81) (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@66 f_23@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@66 f_23@@81))
))) (forall ((o2_5@@67 T@Ref) (f_23@@82 T@Field_8821_8826) ) (!  (=> (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@67 f_23@@82) (= (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) o2_5@@67 f_23@@82) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@67 f_23@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@67 f_23@@82))
))) (forall ((o2_5@@68 T@Ref) (f_23@@83 T@Field_8837_8838) ) (!  (=> (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@68 f_23@@83) (= (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@28) o2_5@@68 f_23@@83) (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@68 f_23@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@68 f_23@@83))
))) (forall ((o2_5@@69 T@Ref) (f_23@@84 T@Field_9502_5494) ) (!  (=> (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@69 f_23@@84) (= (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@28) o2_5@@69 f_23@@84) (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@69 f_23@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@69 f_23@@84))
))) (forall ((o2_5@@70 T@Ref) (f_23@@85 T@Field_9502_53) ) (!  (=> (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@70 f_23@@85) (= (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@28) o2_5@@70 f_23@@85) (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@70 f_23@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@70 f_23@@85))
))) (forall ((o2_5@@71 T@Ref) (f_23@@86 T@Field_9502_1203) ) (!  (=> (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@71 f_23@@86) (= (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@28) o2_5@@71 f_23@@86) (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@71 f_23@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@71 f_23@@86))
))) (forall ((o2_5@@72 T@Ref) (f_23@@87 T@Field_9515_9520) ) (!  (=> (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@72 f_23@@87) (= (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@28) o2_5@@72 f_23@@87) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@72 f_23@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@72 f_23@@87))
))) (forall ((o2_5@@73 T@Ref) (f_23@@88 T@Field_9502_9503) ) (!  (=> (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@28) null (WandMaskField_3130 pm_f_5@@9))) o2_5@@73 f_23@@88) (= (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@28) o2_5@@73 f_23@@88) (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@73 f_23@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@26) o2_5@@73 f_23@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (IsWandField_3130_3131 pm_f_5@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5420) (ExhaleHeap@@27 T@PolymorphicMapType_5420) (Mask@@58 T@PolymorphicMapType_5441) (pm_f_5@@10 T@Field_5480_8838) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_5480_8838 Mask@@58 null pm_f_5@@10) (IsWandField_5480_24256 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@74 T@Ref) (f_23@@89 T@Field_5493_5494) ) (!  (=> (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@74 f_23@@89) (= (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@29) o2_5@@74 f_23@@89) (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@74 f_23@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@74 f_23@@89))
)) (forall ((o2_5@@75 T@Ref) (f_23@@90 T@Field_5480_53) ) (!  (=> (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@75 f_23@@90) (= (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@29) o2_5@@75 f_23@@90) (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@75 f_23@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@75 f_23@@90))
))) (forall ((o2_5@@76 T@Ref) (f_23@@91 T@Field_5480_1203) ) (!  (=> (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@76 f_23@@91) (= (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@29) o2_5@@76 f_23@@91) (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@76 f_23@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@76 f_23@@91))
))) (forall ((o2_5@@77 T@Ref) (f_23@@92 T@Field_5480_8826) ) (!  (=> (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@77 f_23@@92) (= (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) o2_5@@77 f_23@@92) (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@77 f_23@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@77 f_23@@92))
))) (forall ((o2_5@@78 T@Ref) (f_23@@93 T@Field_5480_8838) ) (!  (=> (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@78 f_23@@93) (= (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@29) o2_5@@78 f_23@@93) (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@78 f_23@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@78 f_23@@93))
))) (forall ((o2_5@@79 T@Ref) (f_23@@94 T@Field_8808_5494) ) (!  (=> (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@79 f_23@@94) (= (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@29) o2_5@@79 f_23@@94) (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@79 f_23@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@79 f_23@@94))
))) (forall ((o2_5@@80 T@Ref) (f_23@@95 T@Field_8808_53) ) (!  (=> (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@80 f_23@@95) (= (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@29) o2_5@@80 f_23@@95) (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@80 f_23@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@80 f_23@@95))
))) (forall ((o2_5@@81 T@Ref) (f_23@@96 T@Field_8808_1203) ) (!  (=> (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@81 f_23@@96) (= (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@29) o2_5@@81 f_23@@96) (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@81 f_23@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@81 f_23@@96))
))) (forall ((o2_5@@82 T@Ref) (f_23@@97 T@Field_8821_8826) ) (!  (=> (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@82 f_23@@97) (= (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@29) o2_5@@82 f_23@@97) (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@82 f_23@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@82 f_23@@97))
))) (forall ((o2_5@@83 T@Ref) (f_23@@98 T@Field_8837_8838) ) (!  (=> (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@83 f_23@@98) (= (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@29) o2_5@@83 f_23@@98) (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@83 f_23@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@83 f_23@@98))
))) (forall ((o2_5@@84 T@Ref) (f_23@@99 T@Field_9502_5494) ) (!  (=> (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@84 f_23@@99) (= (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@29) o2_5@@84 f_23@@99) (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@84 f_23@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@84 f_23@@99))
))) (forall ((o2_5@@85 T@Ref) (f_23@@100 T@Field_9502_53) ) (!  (=> (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@85 f_23@@100) (= (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@29) o2_5@@85 f_23@@100) (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@85 f_23@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@85 f_23@@100))
))) (forall ((o2_5@@86 T@Ref) (f_23@@101 T@Field_9502_1203) ) (!  (=> (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@86 f_23@@101) (= (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@29) o2_5@@86 f_23@@101) (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@86 f_23@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@86 f_23@@101))
))) (forall ((o2_5@@87 T@Ref) (f_23@@102 T@Field_9515_9520) ) (!  (=> (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@87 f_23@@102) (= (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@29) o2_5@@87 f_23@@102) (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@87 f_23@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@87 f_23@@102))
))) (forall ((o2_5@@88 T@Ref) (f_23@@103 T@Field_9502_9503) ) (!  (=> (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@29) null (WandMaskField_5480 pm_f_5@@10))) o2_5@@88 f_23@@103) (= (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@29) o2_5@@88 f_23@@103) (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@88 f_23@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| ExhaleHeap@@27) o2_5@@88 f_23@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (IsWandField_5480_24256 pm_f_5@@10))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_3161_3162 (P x@@3)) 0)
 :qid |stdinbpl.236:15|
 :skolemid |31|
 :pattern ( (P x@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5420) (o_14 T@Ref) (f_24 T@Field_8808_1203) (v Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@30) (store (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@30) o_14 f_24 v) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@30) (store (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@30) o_14 f_24 v) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@30) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5420) (o_14@@0 T@Ref) (f_24@@0 T@Field_8821_8826) (v@@0 T@PolymorphicMapType_5969) ) (! (succHeap Heap@@31 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@31) (store (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@31) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@31) (store (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@31) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@31) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5420) (o_14@@1 T@Ref) (f_24@@1 T@Field_8837_8838) (v@@1 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@32) (store (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@32) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@32) (store (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@32) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@32) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5420) (o_14@@2 T@Ref) (f_24@@2 T@Field_8808_5494) (v@@2 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@33) (store (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@33) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@33) (store (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@33) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@33) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5420) (o_14@@3 T@Ref) (f_24@@3 T@Field_8808_53) (v@@3 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@34) (store (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@34) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@34) (store (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@34) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@34) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5420) (o_14@@4 T@Ref) (f_24@@4 T@Field_9502_1203) (v@@4 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@35) (store (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@35) o_14@@4 f_24@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@35) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@35) (store (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@35) o_14@@4 f_24@@4 v@@4)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5420) (o_14@@5 T@Ref) (f_24@@5 T@Field_9515_9520) (v@@5 T@PolymorphicMapType_5969) ) (! (succHeap Heap@@36 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@36) (store (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@36) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@36) (store (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@36) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@36) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5420) (o_14@@6 T@Ref) (f_24@@6 T@Field_9502_9503) (v@@6 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@37) (store (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@37) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@37) (store (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@37) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@37) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5420) (o_14@@7 T@Ref) (f_24@@7 T@Field_9502_5494) (v@@7 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@38) (store (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@38) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@38) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@38) (store (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@38) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5420) (o_14@@8 T@Ref) (f_24@@8 T@Field_9502_53) (v@@8 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@39) (store (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@39) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@39) (store (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@39) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@39) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5420) (o_14@@9 T@Ref) (f_24@@9 T@Field_5480_1203) (v@@9 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@40) (store (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@40) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@40) (store (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@40) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@40) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5420) (o_14@@10 T@Ref) (f_24@@10 T@Field_5480_8826) (v@@10 T@PolymorphicMapType_5969) ) (! (succHeap Heap@@41 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@41) (store (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@41) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@41) (store (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@41) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@41) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5420) (o_14@@11 T@Ref) (f_24@@11 T@Field_5480_8838) (v@@11 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@42) (store (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@42) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@42) (store (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@42) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@42) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5420) (o_14@@12 T@Ref) (f_24@@12 T@Field_5493_5494) (v@@12 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@43) (store (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@43) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@43) (store (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@43) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@43) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_5420) (o_14@@13 T@Ref) (f_24@@13 T@Field_5480_53) (v@@13 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_5420 (store (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@44) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5420 (store (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@44) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@44) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@44)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_3161 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.228:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_3161 (P x@@4)))
)))
(assert (forall ((o_14@@14 T@Ref) (f_22 T@Field_5493_5494) (Heap@@45 T@PolymorphicMapType_5420) ) (!  (=> (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@45) o_14@@14 $allocated) (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@45) (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@45) o_14@@14 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@45) o_14@@14 f_22))
)))
(assert (forall ((p@@3 T@Field_9502_9503) (v_1@@2 T@FrameType) (q T@Field_9502_9503) (w@@2 T@FrameType) (r T@Field_9502_9503) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9502_9502 p@@3 v_1@@2 q w@@2) (InsidePredicate_9502_9502 q w@@2 r u)) (InsidePredicate_9502_9502 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9502_9502 p@@3 v_1@@2 q w@@2) (InsidePredicate_9502_9502 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_9502_9503) (v_1@@3 T@FrameType) (q@@0 T@Field_9502_9503) (w@@3 T@FrameType) (r@@0 T@Field_8837_8838) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_9502_9502 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_9502_8808 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_9502_8808 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9502_9502 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_9502_8808 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_9502_9503) (v_1@@4 T@FrameType) (q@@1 T@Field_9502_9503) (w@@4 T@FrameType) (r@@1 T@Field_5480_8838) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_9502_9502 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_9502_5480 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_9502_5480 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9502_9502 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_9502_5480 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_9502_9503) (v_1@@5 T@FrameType) (q@@2 T@Field_8837_8838) (w@@5 T@FrameType) (r@@2 T@Field_9502_9503) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_9502_8808 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_8808_9502 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_9502_9502 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9502_8808 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_8808_9502 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_9502_9503) (v_1@@6 T@FrameType) (q@@3 T@Field_8837_8838) (w@@6 T@FrameType) (r@@3 T@Field_8837_8838) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9502_8808 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_8808_8808 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_9502_8808 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9502_8808 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_8808_8808 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_9502_9503) (v_1@@7 T@FrameType) (q@@4 T@Field_8837_8838) (w@@7 T@FrameType) (r@@4 T@Field_5480_8838) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9502_8808 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_8808_5480 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_9502_5480 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9502_8808 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_8808_5480 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_9502_9503) (v_1@@8 T@FrameType) (q@@5 T@Field_5480_8838) (w@@8 T@FrameType) (r@@5 T@Field_9502_9503) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9502_5480 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5480_9502 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_9502_9502 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9502_5480 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5480_9502 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_9502_9503) (v_1@@9 T@FrameType) (q@@6 T@Field_5480_8838) (w@@9 T@FrameType) (r@@6 T@Field_8837_8838) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9502_5480 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5480_8808 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_9502_8808 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9502_5480 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5480_8808 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_9502_9503) (v_1@@10 T@FrameType) (q@@7 T@Field_5480_8838) (w@@10 T@FrameType) (r@@7 T@Field_5480_8838) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_9502_5480 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5480_5480 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_9502_5480 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9502_5480 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5480_5480 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_8837_8838) (v_1@@11 T@FrameType) (q@@8 T@Field_9502_9503) (w@@11 T@FrameType) (r@@8 T@Field_9502_9503) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_8808_9502 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_9502_9502 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_8808_9502 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8808_9502 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_9502_9502 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_8837_8838) (v_1@@12 T@FrameType) (q@@9 T@Field_9502_9503) (w@@12 T@FrameType) (r@@9 T@Field_8837_8838) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_8808_9502 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_9502_8808 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_8808_8808 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8808_9502 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_9502_8808 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_8837_8838) (v_1@@13 T@FrameType) (q@@10 T@Field_9502_9503) (w@@13 T@FrameType) (r@@10 T@Field_5480_8838) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_8808_9502 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_9502_5480 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_8808_5480 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8808_9502 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_9502_5480 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_8837_8838) (v_1@@14 T@FrameType) (q@@11 T@Field_8837_8838) (w@@14 T@FrameType) (r@@11 T@Field_9502_9503) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_8808_8808 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_8808_9502 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_8808_9502 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8808_8808 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_8808_9502 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_8837_8838) (v_1@@15 T@FrameType) (q@@12 T@Field_8837_8838) (w@@15 T@FrameType) (r@@12 T@Field_8837_8838) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_8808_8808 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_8808_8808 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_8808_8808 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8808_8808 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_8808_8808 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_8837_8838) (v_1@@16 T@FrameType) (q@@13 T@Field_8837_8838) (w@@16 T@FrameType) (r@@13 T@Field_5480_8838) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_8808_8808 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_8808_5480 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_8808_5480 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8808_8808 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_8808_5480 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_8837_8838) (v_1@@17 T@FrameType) (q@@14 T@Field_5480_8838) (w@@17 T@FrameType) (r@@14 T@Field_9502_9503) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_8808_5480 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5480_9502 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_8808_9502 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8808_5480 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5480_9502 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_8837_8838) (v_1@@18 T@FrameType) (q@@15 T@Field_5480_8838) (w@@18 T@FrameType) (r@@15 T@Field_8837_8838) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_8808_5480 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5480_8808 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_8808_8808 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8808_5480 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5480_8808 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_8837_8838) (v_1@@19 T@FrameType) (q@@16 T@Field_5480_8838) (w@@19 T@FrameType) (r@@16 T@Field_5480_8838) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_8808_5480 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5480_5480 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_8808_5480 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8808_5480 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5480_5480 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_5480_8838) (v_1@@20 T@FrameType) (q@@17 T@Field_9502_9503) (w@@20 T@FrameType) (r@@17 T@Field_9502_9503) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_5480_9502 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_9502_9502 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_5480_9502 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5480_9502 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_9502_9502 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_5480_8838) (v_1@@21 T@FrameType) (q@@18 T@Field_9502_9503) (w@@21 T@FrameType) (r@@18 T@Field_8837_8838) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_5480_9502 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_9502_8808 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_5480_8808 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5480_9502 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_9502_8808 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_5480_8838) (v_1@@22 T@FrameType) (q@@19 T@Field_9502_9503) (w@@22 T@FrameType) (r@@19 T@Field_5480_8838) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_5480_9502 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_9502_5480 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_5480_5480 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5480_9502 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_9502_5480 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_5480_8838) (v_1@@23 T@FrameType) (q@@20 T@Field_8837_8838) (w@@23 T@FrameType) (r@@20 T@Field_9502_9503) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_5480_8808 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_8808_9502 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_5480_9502 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5480_8808 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_8808_9502 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_5480_8838) (v_1@@24 T@FrameType) (q@@21 T@Field_8837_8838) (w@@24 T@FrameType) (r@@21 T@Field_8837_8838) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_5480_8808 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_8808_8808 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_5480_8808 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5480_8808 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_8808_8808 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_5480_8838) (v_1@@25 T@FrameType) (q@@22 T@Field_8837_8838) (w@@25 T@FrameType) (r@@22 T@Field_5480_8838) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_5480_8808 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_8808_5480 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_5480_5480 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5480_8808 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_8808_5480 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_5480_8838) (v_1@@26 T@FrameType) (q@@23 T@Field_5480_8838) (w@@26 T@FrameType) (r@@23 T@Field_9502_9503) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_5480_5480 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5480_9502 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_5480_9502 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5480_5480 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5480_9502 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_5480_8838) (v_1@@27 T@FrameType) (q@@24 T@Field_5480_8838) (w@@27 T@FrameType) (r@@24 T@Field_8837_8838) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_5480_5480 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5480_8808 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_5480_8808 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5480_5480 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5480_8808 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_5480_8838) (v_1@@28 T@FrameType) (q@@25 T@Field_5480_8838) (w@@28 T@FrameType) (r@@25 T@Field_5480_8838) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_5480_5480 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5480_5480 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_5480_5480 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5480_5480 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5480_5480 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) (arg3@@5 Real) (arg4@@5 Bool) (arg1_2 T@Ref) (arg2_2 T@Ref) (arg3_2 Real) (arg4_2 Bool) ) (!  (=> (= (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2)) (and (= arg1@@5 arg1_2) (and (= arg2@@5 arg2_2) (and (= arg3@@5 arg3_2) (= arg4@@5 arg4_2)))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5) (wand arg1_2 arg2_2 arg3_2 arg4_2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_1_1@12 () Bool)
(declare-fun b_4@6 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun Used_2Mask@3 () T@PolymorphicMapType_5441)
(declare-fun l_1 () T@Ref)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun takeTransfer@3 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_5441)
(declare-fun Mask@2 () T@PolymorphicMapType_5441)
(declare-fun Heap@4 () T@PolymorphicMapType_5420)
(declare-fun Heap@2 () T@PolymorphicMapType_5420)
(declare-fun neededTransfer@5 () Real)
(declare-fun b_4@3 () Bool)
(declare-fun Used_2Mask@1 () T@PolymorphicMapType_5441)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_2Mask@2 () T@PolymorphicMapType_5441)
(declare-fun b_4@4 () Bool)
(declare-fun Used_2Heap@0 () T@PolymorphicMapType_5420)
(declare-fun b_4@5 () Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_5441)
(declare-fun Heap@3 () T@PolymorphicMapType_5420)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun b_4@0 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_2Mask@0 () T@PolymorphicMapType_5441)
(declare-fun b_4@1 () Bool)
(declare-fun b_4@2 () Bool)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_5420)
(declare-fun Ops_1Mask@6 () T@PolymorphicMapType_5441)
(declare-fun Ops_1Mask@5 () T@PolymorphicMapType_5441)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_4 () Bool)
(declare-fun b_1_1@4 () Bool)
(declare-fun b_2_1@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_1Mask@3 () T@PolymorphicMapType_5441)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_3@0 () Bool)
(declare-fun b_3@1 () Bool)
(declare-fun ResultHeap () T@PolymorphicMapType_5420)
(declare-fun ResultMask@@14 () T@PolymorphicMapType_5441)
(declare-fun b_3@2 () Bool)
(declare-fun Ops_1Mask@3 () T@PolymorphicMapType_5441)
(declare-fun b_3@3 () Bool)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_5420)
(declare-fun b_3@4 () Bool)
(declare-fun b_1_1@5 () Bool)
(declare-fun b_1_1@6 () Bool)
(declare-fun b_1_1@7 () Bool)
(declare-fun b_1_1@8 () Bool)
(declare-fun Ops_1Mask@4 () T@PolymorphicMapType_5441)
(declare-fun b_1_1@9 () Bool)
(declare-fun b_1_1@10 () Bool)
(declare-fun b_1_1@11 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_5441)
(declare-fun Heap@1 () T@PolymorphicMapType_5420)
(declare-fun takeTransfer@1 () Real)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_2_1@3 () Bool)
(declare-fun Used_1Mask@1 () T@PolymorphicMapType_5441)
(declare-fun Heap@@46 () T@PolymorphicMapType_5420)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_1Mask@2 () T@PolymorphicMapType_5441)
(declare-fun b_2_1@4 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_5441)
(declare-fun b_2_1@5 () Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_5441)
(declare-fun newPMask@0 () T@PolymorphicMapType_5969)
(declare-fun Heap@0 () T@PolymorphicMapType_5420)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_1Mask@1 () T@PolymorphicMapType_5441)
(declare-fun b_2_1@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_1Mask@0 () T@PolymorphicMapType_5441)
(declare-fun b_2_1@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_5441)
(declare-fun b_2_1@2 () Bool)
(declare-fun Ops_1Mask@2 () T@PolymorphicMapType_5441)
(declare-fun maskTransfer@0 () Real)
(declare-fun FrameFragment_3158 (T@Ref) T@FrameType)
(declare-fun b_2_1 () Bool)
(declare-fun b_1_1@3 () Bool)
(declare-fun b_1_1@2 () Bool)
(declare-fun b_1_1@0 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_5441)
(declare-fun b_1_1@1 () Bool)
(declare-fun b_1_1 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_5420)
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
 (=> (= (ControlFlow 0 0) 38) (let ((anon28_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (and b_1_1@12 b_1_1@12) b_4@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Used_2Mask@3) l_1 next) initNeededTransfer@1))))))
(let ((anon42_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= Mask@4 Mask@2) (= Heap@4 Heap@2)) (=> (and (and (= neededTransfer@7 neededTransfer@5) (= b_4@6 b_4@3)) (and (= Used_2Mask@3 Used_2Mask@1) (= (ControlFlow 0 5) 2))) anon28_correct)))))
(let ((anon42_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (and (= neededTransfer@6 (- neededTransfer@5 takeTransfer@3)) (= Used_2Mask@2 (PolymorphicMapType_5441 (store (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Used_2Mask@1) l_1 next (+ (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Used_2Mask@1) l_1 next) takeTransfer@3)) (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| Used_2Mask@1) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| Used_2Mask@1)))) (and (= b_4@4  (and b_4@3 (state Used_2Heap@0 Used_2Mask@2))) (= b_4@5  (and b_4@4 (= (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@2) l_1 next) (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Used_2Heap@0) l_1 next)))))) (=> (and (and (and (= Mask@3 (PolymorphicMapType_5441 (store (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Mask@2) l_1 next (- (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Mask@2) l_1 next) takeTransfer@3)) (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| Mask@2) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| Mask@2))) (= Heap@3 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@2) (store (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true) (PolymorphicMapType_5969 (store (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) l_1 next true) (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))) (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@2) null (|wand#sm| l_1 l_1 FullPerm true))))) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@2) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@2)))) (and (= Mask@4 Mask@3) (= Heap@4 Heap@3))) (and (and (= neededTransfer@7 neededTransfer@6) (= b_4@6 b_4@5)) (and (= Used_2Mask@3 Used_2Mask@2) (= (ControlFlow 0 4) 2)))) anon28_correct)))))
(let ((anon41_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@5) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 7) 4) anon42_Then_correct) (=> (= (ControlFlow 0 7) 5) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@3) (= takeTransfer@3 neededTransfer@5)) (and (=> (= (ControlFlow 0 6) 4) anon42_Then_correct) (=> (= (ControlFlow 0 6) 5) anon42_Else_correct)))))
(let ((anon40_Then_correct  (=> (and (and (and (and (and b_1_1@12 b_1_1@12) b_4@3) true) (> neededTransfer@5 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Mask@2) l_1 next))) (and (=> (= (ControlFlow 0 8) 6) anon41_Then_correct) (=> (= (ControlFlow 0 8) 7) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (not (and (and (and (and b_1_1@12 b_1_1@12) b_4@3) true) (> neededTransfer@5 0.0))) (=> (and (= Mask@4 Mask@2) (= Heap@4 Heap@2)) (=> (and (and (= neededTransfer@7 neededTransfer@5) (= b_4@6 b_4@3)) (and (= Used_2Mask@3 Used_2Mask@1) (= (ControlFlow 0 3) 2))) anon28_correct)))))
(let ((anon39_Else_correct  (=> (and (and (>= 0.0 takeTransfer@2) (= Used_2Mask@1 ZeroMask)) (and (= b_4@3 b_4@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 11) 8) anon40_Then_correct) (=> (= (ControlFlow 0 11) 3) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (> takeTransfer@2 0.0) (=> (and (and (and (= neededTransfer@4 (- FullPerm takeTransfer@2)) (= Used_2Mask@0 (PolymorphicMapType_5441 (store (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ZeroMask) l_1 next (+ (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ZeroMask) l_1 next) takeTransfer@2)) (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| ZeroMask)))) (and (= b_4@1  (and b_4@0 (state Used_2Heap@0 Used_2Mask@0))) (= b_4@2  (and b_4@1 (= (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Ops_1Heap@0) l_1 next) (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Used_2Heap@0) l_1 next)))))) (and (and (= Ops_1Mask@6 (PolymorphicMapType_5441 (store (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Ops_1Mask@5) l_1 next (- (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Ops_1Mask@5) l_1 next) takeTransfer@2)) (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| Ops_1Mask@5) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| Ops_1Mask@5))) (= Used_2Mask@1 Used_2Mask@0)) (and (= b_4@3 b_4@2) (= neededTransfer@5 neededTransfer@4)))) (and (=> (= (ControlFlow 0 10) 8) anon40_Then_correct) (=> (= (ControlFlow 0 10) 3) anon40_Else_correct))))))
(let ((anon38_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 13) 10) anon39_Then_correct) (=> (= (ControlFlow 0 13) 11) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 12) 10) anon39_Then_correct) (=> (= (ControlFlow 0 12) 11) anon39_Else_correct)))))
(let ((anon37_Then_correct  (=> (and (and (and (and (and b_1_1@12 b_1_1@12) b_4@0) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Ops_1Mask@5) l_1 next))) (and (=> (= (ControlFlow 0 14) 12) anon38_Then_correct) (=> (= (ControlFlow 0 14) 13) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (and (not (and (and (and (and b_1_1@12 b_1_1@12) b_4@0) true) (> FullPerm 0.0))) (= Used_2Mask@1 ZeroMask)) (and (= b_4@3 b_4@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 9) 8) anon40_Then_correct) (=> (= (ControlFlow 0 9) 3) anon40_Else_correct)))))
(let ((anon16_correct  (=> (and (= b_4@0  (and b_4 (state Used_2Heap@0 ZeroMask))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ZeroMask) l_1 next) FullPerm))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 15) 14) anon37_Then_correct) (=> (= (ControlFlow 0 15) 9) anon37_Else_correct)))))))
(let ((anon15_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> (and b_1_1@4 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Used_1Mask@3) null (P l_1)) initNeededTransfer@0)))) (=> (=> (and b_1_1@4 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Used_1Mask@3) null (P l_1)) initNeededTransfer@0))) (=> (and (= b_3@0  (and b_1_1@4 b_2_1@6)) (= b_3@1  (and b_3@0 (state ResultHeap ResultMask@@14)))) (=> (and (and (and (and (= b_3@2  (and b_3@1 (sumMask ResultMask@@14 Ops_1Mask@3 Used_1Mask@3))) (= b_3@3  (and (and b_3@2 (IdenticalOnKnownLocations Ops_1Heap@0 ResultHeap Ops_1Mask@3)) (IdenticalOnKnownLocations Used_1Heap@0 ResultHeap Used_1Mask@3)))) (and (= b_3@4  (and b_3@3 (state ResultHeap ResultMask@@14))) (= b_1_1@5  (and b_1_1@4 b_3@4)))) (and (and (= b_1_1@6  (and b_1_1@5 b_2_1@6)) (= b_1_1@7  (and b_1_1@6 (= Used_1Heap@0 Ops_1Heap@0)))) (and (= b_1_1@8  (and b_1_1@7 (not (= l_1 null)))) (= Ops_1Mask@4 (PolymorphicMapType_5441 (store (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Ops_1Mask@3) l_1 next (+ (select (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Ops_1Mask@3) l_1 next) FullPerm)) (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| Ops_1Mask@3) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| Ops_1Mask@3)))))) (and (and (and (= b_1_1@9  (and b_1_1@8 (state Ops_1Heap@0 Ops_1Mask@4))) (= b_1_1@10  (and b_1_1@9 (state Ops_1Heap@0 Ops_1Mask@4)))) (and (= b_1_1@11  (and b_1_1@10 (state Ops_1Heap@0 Ops_1Mask@4))) (= b_1_1@12 b_1_1@11))) (and (and (= Mask@2 Mask@1) (= Ops_1Mask@5 Ops_1Mask@4)) (and (= Heap@2 Heap@1) (= (ControlFlow 0 18) 15))))) anon16_correct))))))
(let ((anon36_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@1 ZeroMask) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@46) (= (ControlFlow 0 22) 18))) anon15_correct)))))
(let ((anon36_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_1Mask@2 (PolymorphicMapType_5441 (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Used_1Mask@1) (store (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Used_1Mask@1) null (P l_1) (+ (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Used_1Mask@1) null (P l_1)) takeTransfer@1)) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| Used_1Mask@1) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| Used_1Mask@1)))) (=> (and (and (= b_2_1@4  (and b_2_1@3 (state Used_1Heap@0 Used_1Mask@2))) (= TempMask@1 (PolymorphicMapType_5441 (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ZeroMask) (store (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) null (P l_1) FullPerm) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| ZeroMask)))) (and (= b_2_1@5  (and b_2_1@4 (IdenticalOnKnownLocations Heap@@46 Used_1Heap@0 TempMask@1))) (= Mask@0 (PolymorphicMapType_5441 (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ZeroMask) (store (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) null (P l_1) (- (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) null (P l_1)) takeTransfer@1)) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| ZeroMask))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_5493_5494) ) (!  (=> (or (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5 f_11) (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5 f_11)) (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| newPMask@0) o_5 f_11))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_3157_3158#PolymorphicMapType_5969| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_5480_53) ) (!  (=> (or (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@0 f_11@@0)) (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_3157_53#PolymorphicMapType_5969| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_5480_1203) ) (!  (=> (or (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@1 f_11@@1)) (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_3157_1203#PolymorphicMapType_5969| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_5480_8826) ) (!  (=> (or (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@2 f_11@@2)) (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_3157_20867#PolymorphicMapType_5969| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_5480_8838) ) (!  (=> (or (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@3 f_11@@3)) (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_3157_8838#PolymorphicMapType_5969| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_8808_5494) ) (!  (=> (or (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@4 f_11@@4)) (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_8808_3158#PolymorphicMapType_5969| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_8808_53) ) (!  (=> (or (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@5 f_11@@5)) (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_8808_53#PolymorphicMapType_5969| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_8808_1203) ) (!  (=> (or (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@6 f_11@@6)) (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_8808_1203#PolymorphicMapType_5969| newPMask@0) o_5@@6 f_11@@6))
))) (forall ((o_5@@7 T@Ref) (f_11@@7 T@Field_8821_8826) ) (!  (=> (or (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@7 f_11@@7) (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@7 f_11@@7)) (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| newPMask@0) o_5@@7 f_11@@7))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_8808_21915#PolymorphicMapType_5969| newPMask@0) o_5@@7 f_11@@7))
))) (forall ((o_5@@8 T@Ref) (f_11@@8 T@Field_8837_8838) ) (!  (=> (or (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@8 f_11@@8) (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@8 f_11@@8)) (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| newPMask@0) o_5@@8 f_11@@8))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_8808_8838#PolymorphicMapType_5969| newPMask@0) o_5@@8 f_11@@8))
))) (forall ((o_5@@9 T@Ref) (f_11@@9 T@Field_9502_5494) ) (!  (=> (or (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@9 f_11@@9) (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@9 f_11@@9)) (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| newPMask@0) o_5@@9 f_11@@9))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_9502_3158#PolymorphicMapType_5969| newPMask@0) o_5@@9 f_11@@9))
))) (forall ((o_5@@10 T@Ref) (f_11@@10 T@Field_9502_53) ) (!  (=> (or (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@10 f_11@@10) (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@10 f_11@@10)) (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| newPMask@0) o_5@@10 f_11@@10))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_9502_53#PolymorphicMapType_5969| newPMask@0) o_5@@10 f_11@@10))
))) (forall ((o_5@@11 T@Ref) (f_11@@11 T@Field_9502_1203) ) (!  (=> (or (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@11 f_11@@11) (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@11 f_11@@11)) (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| newPMask@0) o_5@@11 f_11@@11))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_9502_1203#PolymorphicMapType_5969| newPMask@0) o_5@@11 f_11@@11))
))) (forall ((o_5@@12 T@Ref) (f_11@@12 T@Field_9515_9520) ) (!  (=> (or (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@12 f_11@@12) (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@12 f_11@@12)) (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| newPMask@0) o_5@@12 f_11@@12))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_9502_22963#PolymorphicMapType_5969| newPMask@0) o_5@@12 f_11@@12))
))) (forall ((o_5@@13 T@Ref) (f_11@@13 T@Field_9502_9503) ) (!  (=> (or (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true))) o_5@@13 f_11@@13) (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| (select (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) null (|P#sm| l_1))) o_5@@13 f_11@@13)) (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| newPMask@0) o_5@@13 f_11@@13))
 :qid |stdinbpl.414:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_5969_9502_8838#PolymorphicMapType_5969| newPMask@0) o_5@@13 f_11@@13))
))) (= Heap@0 (PolymorphicMapType_5420 (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Heap@@46) (store (|PolymorphicMapType_5420_3124_12766#PolymorphicMapType_5420| Heap@@46) null (|wand#sm| l_1 l_1 FullPerm true) newPMask@0) (|PolymorphicMapType_5420_3165_12885#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_5480_1203#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_5480_16525#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_5480_8838#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_8808_53#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_8808_5494#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_8808_1203#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_8808_8838#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_9502_53#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_9502_5494#PolymorphicMapType_5420| Heap@@46) (|PolymorphicMapType_5420_9502_1203#PolymorphicMapType_5420| Heap@@46)))) (and (= Mask@1 Mask@0) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_2_1@6 b_2_1@5) (= Used_1Mask@3 Used_1Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 21) 18)))) anon15_correct))))))
(let ((anon35_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 24) 21) anon36_Then_correct) (=> (= (ControlFlow 0 24) 22) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 23) 21) anon36_Then_correct) (=> (= (ControlFlow 0 23) 22) anon36_Else_correct)))))
(let ((anon34_Then_correct  (=> (and (and (and (and b_1_1@4 b_2_1@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) null (P l_1)))) (and (=> (= (ControlFlow 0 25) 23) anon35_Then_correct) (=> (= (ControlFlow 0 25) 24) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (not (and (and (and b_1_1@4 b_2_1@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@1 ZeroMask) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@46) (= (ControlFlow 0 20) 18))) anon15_correct)))))
(let ((anon33_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_1Mask@3 Ops_1Mask@1) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 28) 25) anon34_Then_correct) (=> (= (ControlFlow 0 28) 20) anon34_Else_correct))))))
(let ((anon33_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_1Mask@0 (PolymorphicMapType_5441 (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ZeroMask) (store (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) null (P l_1) (+ (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) null (P l_1)) takeTransfer@0)) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| ZeroMask)))) (=> (and (and (and (= b_2_1@1  (and b_2_1@0 (state Used_1Heap@0 Used_1Mask@0))) (= TempMask@0 (PolymorphicMapType_5441 (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ZeroMask) (store (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) null (P l_1) FullPerm) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| ZeroMask)))) (and (= b_2_1@2  (and b_2_1@1 (IdenticalOnKnownLocations Ops_1Heap@0 Used_1Heap@0 TempMask@0))) (= Ops_1Mask@2 (PolymorphicMapType_5441 (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| Ops_1Mask@1) (store (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Ops_1Mask@1) null (P l_1) (- (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Ops_1Mask@1) null (P l_1)) takeTransfer@0)) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| Ops_1Mask@1) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| Ops_1Mask@1))))) (and (and (= Ops_1Mask@3 Ops_1Mask@2) (= Used_1Mask@1 Used_1Mask@0)) (and (= b_2_1@3 b_2_1@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 27) 25) anon34_Then_correct) (=> (= (ControlFlow 0 27) 20) anon34_Else_correct)))))))
(let ((anon32_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 30) 27) anon33_Then_correct) (=> (= (ControlFlow 0 30) 28) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 29) 27) anon33_Then_correct) (=> (= (ControlFlow 0 29) 28) anon33_Else_correct)))))
(let ((anon31_Then_correct  (=> (and (and (and (and b_1_1@4 b_2_1@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| Ops_1Mask@1) null (P l_1)))) (and (=> (= (ControlFlow 0 31) 29) anon32_Then_correct) (=> (= (ControlFlow 0 31) 30) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (not (and (and (and b_1_1@4 b_2_1@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@3 Ops_1Mask@1) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 26) 25) anon34_Then_correct) (=> (= (ControlFlow 0 26) 20) anon34_Else_correct))))))
(let ((anon30_Then_correct  (=> b_1_1@4 (=> (and (and (|P#trigger_3161| Ops_1Heap@0 (P l_1)) (= (select (|PolymorphicMapType_5420_3161_3162#PolymorphicMapType_5420| Ops_1Heap@0) null (P l_1)) (FrameFragment_3158 (select (|PolymorphicMapType_5420_2991_2992#PolymorphicMapType_5420| Ops_1Heap@0) l_1 next)))) (and (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) null (P l_1)) FullPerm)))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 32) 31) anon31_Then_correct) (=> (= (ControlFlow 0 32) 26) anon31_Else_correct))))))))
(let ((anon30_Else_correct  (=> (and (not b_1_1@4) (= b_1_1@12 b_1_1@4)) (=> (and (and (= Mask@2 ZeroMask) (= Ops_1Mask@5 Ops_1Mask@1)) (and (= Heap@2 Heap@@46) (= (ControlFlow 0 17) 15))) anon16_correct))))
(let ((anon2_correct  (=> (and (= b_1_1@3  (and b_1_1@2 (state Ops_1Heap@0 Ops_1Mask@1))) (= b_1_1@4  (and b_1_1@3 (state Ops_1Heap@0 Ops_1Mask@1)))) (and (=> (= (ControlFlow 0 34) 32) anon30_Then_correct) (=> (= (ControlFlow 0 34) 17) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (and (not b_1_1@0) (= Ops_1Mask@1 ZeroMask)) (and (= b_1_1@2 b_1_1@0) (= (ControlFlow 0 36) 34))) anon2_correct)))
(let ((anon29_Then_correct  (=> (and b_1_1@0 (= Ops_1Mask@0 (PolymorphicMapType_5441 (|PolymorphicMapType_5441_3157_3158#PolymorphicMapType_5441| ZeroMask) (store (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) null (P l_1) (+ (select (|PolymorphicMapType_5441_3161_3162#PolymorphicMapType_5441| ZeroMask) null (P l_1)) FullPerm)) (|PolymorphicMapType_5441_3119_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3157_30976#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_1203#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3161_31387#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3158#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_3162#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_53#PolymorphicMapType_5441| ZeroMask) (|PolymorphicMapType_5441_3119_31801#PolymorphicMapType_5441| ZeroMask)))) (=> (and (and (= b_1_1@1  (and b_1_1@0 (state Ops_1Heap@0 Ops_1Mask@0))) (= Ops_1Mask@1 Ops_1Mask@0)) (and (= b_1_1@2 b_1_1@1) (= (ControlFlow 0 35) 34))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@46 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_5420_2988_53#PolymorphicMapType_5420| Heap@@46) l_1 $allocated)) (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 37) 35) anon29_Then_correct) (=> (= (ControlFlow 0 37) 36) anon29_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 38) 37) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
