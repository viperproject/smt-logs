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
(declare-sort T@Field_3625_53 0)
(declare-sort T@Field_3638_3639 0)
(declare-sort T@Field_3625_1203 0)
(declare-sort T@Field_3625_6967 0)
(declare-sort T@Field_3625_6977 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_6951_53 0)
(declare-sort T@Field_6951_3639 0)
(declare-sort T@Field_6951_1203 0)
(declare-sort T@Field_6962_6967 0)
(declare-sort T@Field_6976_6977 0)
(declare-sort T@Field_7535_53 0)
(declare-sort T@Field_7535_3639 0)
(declare-sort T@Field_7535_1517 0)
(declare-sort T@Field_7546_7551 0)
(declare-sort T@Field_7560_7561 0)
(declare-datatypes ((T@PolymorphicMapType_3586 0)) (((PolymorphicMapType_3586 (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| (Array T@Ref T@Field_7535_1517 Real)) (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| (Array T@Ref T@Field_6951_1203 Real)) (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| (Array T@Ref T@Field_7535_53 Real)) (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| (Array T@Ref T@Field_7535_3639 Real)) (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| (Array T@Ref T@Field_7546_7551 Real)) (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| (Array T@Ref T@Field_7560_7561 Real)) (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| (Array T@Ref T@Field_6951_53 Real)) (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| (Array T@Ref T@Field_6951_3639 Real)) (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| (Array T@Ref T@Field_6962_6967 Real)) (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| (Array T@Ref T@Field_6976_6977 Real)) (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| (Array T@Ref T@Field_3625_1203 Real)) (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| (Array T@Ref T@Field_3625_53 Real)) (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| (Array T@Ref T@Field_3638_3639 Real)) (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| (Array T@Ref T@Field_3625_6967 Real)) (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| (Array T@Ref T@Field_3625_6977 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4114 0)) (((PolymorphicMapType_4114 (|PolymorphicMapType_4114_3625_53#PolymorphicMapType_4114| (Array T@Ref T@Field_3625_53 Bool)) (|PolymorphicMapType_4114_3625_3639#PolymorphicMapType_4114| (Array T@Ref T@Field_3638_3639 Bool)) (|PolymorphicMapType_4114_3625_1203#PolymorphicMapType_4114| (Array T@Ref T@Field_3625_1203 Bool)) (|PolymorphicMapType_4114_3625_14638#PolymorphicMapType_4114| (Array T@Ref T@Field_3625_6967 Bool)) (|PolymorphicMapType_4114_3625_6977#PolymorphicMapType_4114| (Array T@Ref T@Field_3625_6977 Bool)) (|PolymorphicMapType_4114_6951_53#PolymorphicMapType_4114| (Array T@Ref T@Field_6951_53 Bool)) (|PolymorphicMapType_4114_6951_3639#PolymorphicMapType_4114| (Array T@Ref T@Field_6951_3639 Bool)) (|PolymorphicMapType_4114_6951_1203#PolymorphicMapType_4114| (Array T@Ref T@Field_6951_1203 Bool)) (|PolymorphicMapType_4114_6951_15686#PolymorphicMapType_4114| (Array T@Ref T@Field_6962_6967 Bool)) (|PolymorphicMapType_4114_6951_6977#PolymorphicMapType_4114| (Array T@Ref T@Field_6976_6977 Bool)) (|PolymorphicMapType_4114_7535_53#PolymorphicMapType_4114| (Array T@Ref T@Field_7535_53 Bool)) (|PolymorphicMapType_4114_7535_3639#PolymorphicMapType_4114| (Array T@Ref T@Field_7535_3639 Bool)) (|PolymorphicMapType_4114_7535_1203#PolymorphicMapType_4114| (Array T@Ref T@Field_7535_1517 Bool)) (|PolymorphicMapType_4114_7535_16734#PolymorphicMapType_4114| (Array T@Ref T@Field_7546_7551 Bool)) (|PolymorphicMapType_4114_7535_6977#PolymorphicMapType_4114| (Array T@Ref T@Field_7560_7561 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3565 0)) (((PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| (Array T@Ref T@Field_3625_53 Bool)) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| (Array T@Ref T@Field_3638_3639 T@Ref)) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| (Array T@Ref T@Field_3625_1203 Int)) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| (Array T@Ref T@Field_3625_6967 T@PolymorphicMapType_4114)) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| (Array T@Ref T@Field_3625_6977 T@FrameType)) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| (Array T@Ref T@Field_6951_53 Bool)) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| (Array T@Ref T@Field_6951_3639 T@Ref)) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| (Array T@Ref T@Field_6951_1203 Int)) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| (Array T@Ref T@Field_6962_6967 T@PolymorphicMapType_4114)) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| (Array T@Ref T@Field_6976_6977 T@FrameType)) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| (Array T@Ref T@Field_7535_53 Bool)) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| (Array T@Ref T@Field_7535_3639 T@Ref)) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| (Array T@Ref T@Field_7535_1517 Int)) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| (Array T@Ref T@Field_7546_7551 T@PolymorphicMapType_4114)) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| (Array T@Ref T@Field_7560_7561 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3565 T@PolymorphicMapType_3565) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3565 T@PolymorphicMapType_3565) Bool)
(declare-fun wand (Bool Bool Bool Bool) T@Field_6951_1203)
(declare-fun getPredWandId_2115_1203 (T@Field_6951_1203) Int)
(declare-fun state (T@PolymorphicMapType_3565 T@PolymorphicMapType_3586) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3586) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4114)
(declare-fun wand_1 (Bool Bool) T@Field_7535_1517)
(declare-fun IsWandField_2123_1517 (T@Field_7535_1517) Bool)
(declare-fun |wand_1#ft| (Bool Bool) T@Field_7560_7561)
(declare-fun IsWandField_2128_2129 (T@Field_7560_7561) Bool)
(declare-fun IsPredicateField_2123_1517 (T@Field_7535_1517) Bool)
(declare-fun IsPredicateField_2128_2129 (T@Field_7560_7561) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3565 T@PolymorphicMapType_3565 T@PolymorphicMapType_3586) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7535 (T@Field_7560_7561) T@Field_7546_7551)
(declare-fun HasDirectPerm_7535_6977 (T@PolymorphicMapType_3586 T@Ref T@Field_7560_7561) Bool)
(declare-fun IsPredicateField_2120_2121 (T@Field_6976_6977) Bool)
(declare-fun PredicateMaskField_6951 (T@Field_6976_6977) T@Field_6962_6967)
(declare-fun HasDirectPerm_6951_6977 (T@PolymorphicMapType_3586 T@Ref T@Field_6976_6977) Bool)
(declare-fun IsPredicateField_3625_12983 (T@Field_3625_6977) Bool)
(declare-fun PredicateMaskField_3625 (T@Field_3625_6977) T@Field_3625_6967)
(declare-fun HasDirectPerm_3625_6977 (T@PolymorphicMapType_3586 T@Ref T@Field_3625_6977) Bool)
(declare-fun WandMaskField_2128 (T@Field_7560_7561) T@Field_7546_7551)
(declare-fun IsWandField_2120_2121 (T@Field_6976_6977) Bool)
(declare-fun WandMaskField_2120 (T@Field_6976_6977) T@Field_6962_6967)
(declare-fun IsWandField_3625_18027 (T@Field_3625_6977) Bool)
(declare-fun WandMaskField_3625 (T@Field_3625_6977) T@Field_3625_6967)
(declare-fun dummyHeap () T@PolymorphicMapType_3565)
(declare-fun ZeroMask () T@PolymorphicMapType_3586)
(declare-fun $allocated () T@Field_3625_53)
(declare-fun InsidePredicate_7535_7535 (T@Field_7560_7561 T@FrameType T@Field_7560_7561 T@FrameType) Bool)
(declare-fun InsidePredicate_6951_6951 (T@Field_6976_6977 T@FrameType T@Field_6976_6977 T@FrameType) Bool)
(declare-fun InsidePredicate_3625_3625 (T@Field_3625_6977 T@FrameType T@Field_3625_6977 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3625_28845 (T@Field_3625_6967) Bool)
(declare-fun IsWandField_3625_28861 (T@Field_3625_6967) Bool)
(declare-fun IsPredicateField_3625_3639 (T@Field_3638_3639) Bool)
(declare-fun IsWandField_3625_3639 (T@Field_3638_3639) Bool)
(declare-fun IsPredicateField_3625_53 (T@Field_3625_53) Bool)
(declare-fun IsWandField_3625_53 (T@Field_3625_53) Bool)
(declare-fun IsPredicateField_3625_1517 (T@Field_3625_1203) Bool)
(declare-fun IsWandField_3625_1517 (T@Field_3625_1203) Bool)
(declare-fun IsPredicateField_2115_28014 (T@Field_6962_6967) Bool)
(declare-fun IsWandField_2115_28030 (T@Field_6962_6967) Bool)
(declare-fun IsPredicateField_2115_3639 (T@Field_6951_3639) Bool)
(declare-fun IsWandField_2115_3639 (T@Field_6951_3639) Bool)
(declare-fun IsPredicateField_2115_53 (T@Field_6951_53) Bool)
(declare-fun IsWandField_2115_53 (T@Field_6951_53) Bool)
(declare-fun IsPredicateField_2115_1203 (T@Field_6951_1203) Bool)
(declare-fun IsWandField_2115_1203 (T@Field_6951_1203) Bool)
(declare-fun IsPredicateField_2123_27197 (T@Field_7546_7551) Bool)
(declare-fun IsWandField_2123_27213 (T@Field_7546_7551) Bool)
(declare-fun IsPredicateField_2123_3639 (T@Field_7535_3639) Bool)
(declare-fun IsWandField_2123_3639 (T@Field_7535_3639) Bool)
(declare-fun IsPredicateField_2123_53 (T@Field_7535_53) Bool)
(declare-fun IsWandField_2123_53 (T@Field_7535_53) Bool)
(declare-fun HasDirectPerm_7535_12467 (T@PolymorphicMapType_3586 T@Ref T@Field_7546_7551) Bool)
(declare-fun HasDirectPerm_7535_1203 (T@PolymorphicMapType_3586 T@Ref T@Field_7535_1517) Bool)
(declare-fun HasDirectPerm_7535_3639 (T@PolymorphicMapType_3586 T@Ref T@Field_7535_3639) Bool)
(declare-fun HasDirectPerm_7535_53 (T@PolymorphicMapType_3586 T@Ref T@Field_7535_53) Bool)
(declare-fun HasDirectPerm_6951_11290 (T@PolymorphicMapType_3586 T@Ref T@Field_6962_6967) Bool)
(declare-fun HasDirectPerm_6951_1203 (T@PolymorphicMapType_3586 T@Ref T@Field_6951_1203) Bool)
(declare-fun HasDirectPerm_6951_3639 (T@PolymorphicMapType_3586 T@Ref T@Field_6951_3639) Bool)
(declare-fun HasDirectPerm_6951_53 (T@PolymorphicMapType_3586 T@Ref T@Field_6951_53) Bool)
(declare-fun HasDirectPerm_3625_10112 (T@PolymorphicMapType_3586 T@Ref T@Field_3625_6967) Bool)
(declare-fun HasDirectPerm_3625_1203 (T@PolymorphicMapType_3586 T@Ref T@Field_3625_1203) Bool)
(declare-fun HasDirectPerm_3625_3639 (T@PolymorphicMapType_3586 T@Ref T@Field_3638_3639) Bool)
(declare-fun HasDirectPerm_3625_53 (T@PolymorphicMapType_3586 T@Ref T@Field_3625_53) Bool)
(declare-fun |wand#ft| (Bool Bool Bool Bool) T@Field_6976_6977)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (Bool Bool Bool Bool) T@Field_6962_6967)
(declare-fun sumMask (T@PolymorphicMapType_3586 T@PolymorphicMapType_3586 T@PolymorphicMapType_3586) Bool)
(declare-fun getPredWandId_2123_1517 (T@Field_7535_1517) Int)
(declare-fun |wand_1#sm| (Bool Bool) T@Field_7546_7551)
(declare-fun InsidePredicate_7535_6951 (T@Field_7560_7561 T@FrameType T@Field_6976_6977 T@FrameType) Bool)
(declare-fun InsidePredicate_7535_3625 (T@Field_7560_7561 T@FrameType T@Field_3625_6977 T@FrameType) Bool)
(declare-fun InsidePredicate_6951_7535 (T@Field_6976_6977 T@FrameType T@Field_7560_7561 T@FrameType) Bool)
(declare-fun InsidePredicate_6951_3625 (T@Field_6976_6977 T@FrameType T@Field_3625_6977 T@FrameType) Bool)
(declare-fun InsidePredicate_3625_7535 (T@Field_3625_6977 T@FrameType T@Field_7560_7561 T@FrameType) Bool)
(declare-fun InsidePredicate_3625_6951 (T@Field_3625_6977 T@FrameType T@Field_6976_6977 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3565) (Heap1 T@PolymorphicMapType_3565) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 Bool) (arg2 Bool) (arg3 Bool) (arg4 Bool) ) (! (= (getPredWandId_2115_1203 (wand arg1 arg2 arg3 arg4)) 0)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((Heap T@PolymorphicMapType_3565) (Mask T@PolymorphicMapType_3586) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3565) (Heap1@@0 T@PolymorphicMapType_3565) (Heap2 T@PolymorphicMapType_3565) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7560_7561) ) (!  (not (select (|PolymorphicMapType_4114_7535_6977#PolymorphicMapType_4114| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_7535_6977#PolymorphicMapType_4114| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7546_7551) ) (!  (not (select (|PolymorphicMapType_4114_7535_16734#PolymorphicMapType_4114| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_7535_16734#PolymorphicMapType_4114| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7535_1517) ) (!  (not (select (|PolymorphicMapType_4114_7535_1203#PolymorphicMapType_4114| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_7535_1203#PolymorphicMapType_4114| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7535_3639) ) (!  (not (select (|PolymorphicMapType_4114_7535_3639#PolymorphicMapType_4114| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_7535_3639#PolymorphicMapType_4114| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7535_53) ) (!  (not (select (|PolymorphicMapType_4114_7535_53#PolymorphicMapType_4114| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_7535_53#PolymorphicMapType_4114| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6976_6977) ) (!  (not (select (|PolymorphicMapType_4114_6951_6977#PolymorphicMapType_4114| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_6951_6977#PolymorphicMapType_4114| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6962_6967) ) (!  (not (select (|PolymorphicMapType_4114_6951_15686#PolymorphicMapType_4114| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_6951_15686#PolymorphicMapType_4114| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6951_1203) ) (!  (not (select (|PolymorphicMapType_4114_6951_1203#PolymorphicMapType_4114| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_6951_1203#PolymorphicMapType_4114| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_6951_3639) ) (!  (not (select (|PolymorphicMapType_4114_6951_3639#PolymorphicMapType_4114| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_6951_3639#PolymorphicMapType_4114| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_6951_53) ) (!  (not (select (|PolymorphicMapType_4114_6951_53#PolymorphicMapType_4114| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_6951_53#PolymorphicMapType_4114| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_3625_6977) ) (!  (not (select (|PolymorphicMapType_4114_3625_6977#PolymorphicMapType_4114| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_3625_6977#PolymorphicMapType_4114| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_3625_6967) ) (!  (not (select (|PolymorphicMapType_4114_3625_14638#PolymorphicMapType_4114| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_3625_14638#PolymorphicMapType_4114| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3625_1203) ) (!  (not (select (|PolymorphicMapType_4114_3625_1203#PolymorphicMapType_4114| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_3625_1203#PolymorphicMapType_4114| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3638_3639) ) (!  (not (select (|PolymorphicMapType_4114_3625_3639#PolymorphicMapType_4114| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_3625_3639#PolymorphicMapType_4114| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3625_53) ) (!  (not (select (|PolymorphicMapType_4114_3625_53#PolymorphicMapType_4114| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4114_3625_53#PolymorphicMapType_4114| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 Bool) ) (! (IsWandField_2123_1517 (wand_1 arg1@@0 arg2@@0))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@0 arg2@@0))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 Bool) ) (! (IsWandField_2128_2129 (|wand_1#ft| arg1@@1 arg2@@1))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@1 arg2@@1))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 Bool) ) (!  (not (IsPredicateField_2123_1517 (wand_1 arg1@@2 arg2@@2)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@2 arg2@@2))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 Bool) ) (!  (not (IsPredicateField_2128_2129 (|wand_1#ft| arg1@@3 arg2@@3)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@3 arg2@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3565) (ExhaleHeap T@PolymorphicMapType_3565) (Mask@@0 T@PolymorphicMapType_3586) (pm_f T@Field_7560_7561) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7535_6977 Mask@@0 null pm_f) (IsPredicateField_2128_2129 pm_f)) (= (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@0) null (PredicateMaskField_7535 pm_f)) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap) null (PredicateMaskField_7535 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2128_2129 pm_f) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap) null (PredicateMaskField_7535 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3565) (ExhaleHeap@@0 T@PolymorphicMapType_3565) (Mask@@1 T@PolymorphicMapType_3586) (pm_f@@0 T@Field_6976_6977) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6951_6977 Mask@@1 null pm_f@@0) (IsPredicateField_2120_2121 pm_f@@0)) (= (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@1) null (PredicateMaskField_6951 pm_f@@0)) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@0) null (PredicateMaskField_6951 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2120_2121 pm_f@@0) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@0) null (PredicateMaskField_6951 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3565) (ExhaleHeap@@1 T@PolymorphicMapType_3565) (Mask@@2 T@PolymorphicMapType_3586) (pm_f@@1 T@Field_3625_6977) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3625_6977 Mask@@2 null pm_f@@1) (IsPredicateField_3625_12983 pm_f@@1)) (= (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@2) null (PredicateMaskField_3625 pm_f@@1)) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@1) null (PredicateMaskField_3625 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3625_12983 pm_f@@1) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@1) null (PredicateMaskField_3625 pm_f@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3565) (ExhaleHeap@@2 T@PolymorphicMapType_3565) (Mask@@3 T@PolymorphicMapType_3586) (pm_f@@2 T@Field_7560_7561) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7535_6977 Mask@@3 null pm_f@@2) (IsWandField_2128_2129 pm_f@@2)) (= (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@3) null (WandMaskField_2128 pm_f@@2)) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@2) null (WandMaskField_2128 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_2128_2129 pm_f@@2) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@2) null (WandMaskField_2128 pm_f@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3565) (ExhaleHeap@@3 T@PolymorphicMapType_3565) (Mask@@4 T@PolymorphicMapType_3586) (pm_f@@3 T@Field_6976_6977) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6951_6977 Mask@@4 null pm_f@@3) (IsWandField_2120_2121 pm_f@@3)) (= (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@4) null (WandMaskField_2120 pm_f@@3)) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@3) null (WandMaskField_2120 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsWandField_2120_2121 pm_f@@3) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@3) null (WandMaskField_2120 pm_f@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3565) (ExhaleHeap@@4 T@PolymorphicMapType_3565) (Mask@@5 T@PolymorphicMapType_3586) (pm_f@@4 T@Field_3625_6977) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3625_6977 Mask@@5 null pm_f@@4) (IsWandField_3625_18027 pm_f@@4)) (= (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@5) null (WandMaskField_3625 pm_f@@4)) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@4) null (WandMaskField_3625 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_3625_18027 pm_f@@4) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@4) null (WandMaskField_3625 pm_f@@4)))
)))
(assert (forall ((arg1@@4 Bool) (arg2@@4 Bool) (arg3@@0 Bool) (arg4@@0 Bool) (arg1_2 Bool) (arg2_2 Bool) (arg3_2 Bool) (arg4_2 Bool) ) (!  (=> (= (wand arg1@@4 arg2@@4 arg3@@0 arg4@@0) (wand arg1_2 arg2_2 arg3_2 arg4_2)) (and (= arg1@@4 arg1_2) (and (= arg2@@4 arg2_2) (and (= arg3@@0 arg3_2) (= arg4@@0 arg4_2)))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@4 arg2@@4 arg3@@0 arg4@@0) (wand arg1_2 arg2_2 arg3_2 arg4_2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3565) (ExhaleHeap@@5 T@PolymorphicMapType_3565) (Mask@@6 T@PolymorphicMapType_3586) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@5) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@5) o_1 $allocated))
)))
(assert (forall ((p T@Field_7560_7561) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7535_7535 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7535_7535 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6976_6977) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6951_6951 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6951_6951 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_3625_6977) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_3625_3625 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3625_3625 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3565) (ExhaleHeap@@6 T@PolymorphicMapType_3565) (Mask@@7 T@PolymorphicMapType_3586) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@7 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3586) (o_2@@14 T@Ref) (f_4@@14 T@Field_3625_6977) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3625_12983 f_4@@14))) (not (IsWandField_3625_18027 f_4@@14))) (<= (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3586) (o_2@@15 T@Ref) (f_4@@15 T@Field_3625_6967) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3625_28845 f_4@@15))) (not (IsWandField_3625_28861 f_4@@15))) (<= (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3586) (o_2@@16 T@Ref) (f_4@@16 T@Field_3638_3639) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3625_3639 f_4@@16))) (not (IsWandField_3625_3639 f_4@@16))) (<= (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3586) (o_2@@17 T@Ref) (f_4@@17 T@Field_3625_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3625_53 f_4@@17))) (not (IsWandField_3625_53 f_4@@17))) (<= (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3586) (o_2@@18 T@Ref) (f_4@@18 T@Field_3625_1203) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3625_1517 f_4@@18))) (not (IsWandField_3625_1517 f_4@@18))) (<= (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3586) (o_2@@19 T@Ref) (f_4@@19 T@Field_6976_6977) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2120_2121 f_4@@19))) (not (IsWandField_2120_2121 f_4@@19))) (<= (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3586) (o_2@@20 T@Ref) (f_4@@20 T@Field_6962_6967) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2115_28014 f_4@@20))) (not (IsWandField_2115_28030 f_4@@20))) (<= (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3586) (o_2@@21 T@Ref) (f_4@@21 T@Field_6951_3639) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2115_3639 f_4@@21))) (not (IsWandField_2115_3639 f_4@@21))) (<= (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3586) (o_2@@22 T@Ref) (f_4@@22 T@Field_6951_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2115_53 f_4@@22))) (not (IsWandField_2115_53 f_4@@22))) (<= (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3586) (o_2@@23 T@Ref) (f_4@@23 T@Field_6951_1203) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2115_1203 f_4@@23))) (not (IsWandField_2115_1203 f_4@@23))) (<= (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_3586) (o_2@@24 T@Ref) (f_4@@24 T@Field_7560_7561) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2128_2129 f_4@@24))) (not (IsWandField_2128_2129 f_4@@24))) (<= (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_3586) (o_2@@25 T@Ref) (f_4@@25 T@Field_7546_7551) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2123_27197 f_4@@25))) (not (IsWandField_2123_27213 f_4@@25))) (<= (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_3586) (o_2@@26 T@Ref) (f_4@@26 T@Field_7535_3639) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2123_3639 f_4@@26))) (not (IsWandField_2123_3639 f_4@@26))) (<= (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_3586) (o_2@@27 T@Ref) (f_4@@27 T@Field_7535_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_2123_53 f_4@@27))) (not (IsWandField_2123_53 f_4@@27))) (<= (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_3586) (o_2@@28 T@Ref) (f_4@@28 T@Field_7535_1517) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_2123_1517 f_4@@28))) (not (IsWandField_2123_1517 f_4@@28))) (<= (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_3586) (o_2@@29 T@Ref) (f_4@@29 T@Field_7560_7561) ) (! (= (HasDirectPerm_7535_6977 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7535_6977 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_3586) (o_2@@30 T@Ref) (f_4@@30 T@Field_7546_7551) ) (! (= (HasDirectPerm_7535_12467 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7535_12467 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_3586) (o_2@@31 T@Ref) (f_4@@31 T@Field_7535_1517) ) (! (= (HasDirectPerm_7535_1203 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7535_1203 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_3586) (o_2@@32 T@Ref) (f_4@@32 T@Field_7535_3639) ) (! (= (HasDirectPerm_7535_3639 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7535_3639 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_3586) (o_2@@33 T@Ref) (f_4@@33 T@Field_7535_53) ) (! (= (HasDirectPerm_7535_53 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7535_53 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_3586) (o_2@@34 T@Ref) (f_4@@34 T@Field_6976_6977) ) (! (= (HasDirectPerm_6951_6977 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6951_6977 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_3586) (o_2@@35 T@Ref) (f_4@@35 T@Field_6962_6967) ) (! (= (HasDirectPerm_6951_11290 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6951_11290 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_3586) (o_2@@36 T@Ref) (f_4@@36 T@Field_6951_1203) ) (! (= (HasDirectPerm_6951_1203 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6951_1203 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_3586) (o_2@@37 T@Ref) (f_4@@37 T@Field_6951_3639) ) (! (= (HasDirectPerm_6951_3639 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6951_3639 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_3586) (o_2@@38 T@Ref) (f_4@@38 T@Field_6951_53) ) (! (= (HasDirectPerm_6951_53 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6951_53 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_3586) (o_2@@39 T@Ref) (f_4@@39 T@Field_3625_6977) ) (! (= (HasDirectPerm_3625_6977 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3625_6977 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_3586) (o_2@@40 T@Ref) (f_4@@40 T@Field_3625_6967) ) (! (= (HasDirectPerm_3625_10112 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3625_10112 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_3586) (o_2@@41 T@Ref) (f_4@@41 T@Field_3625_1203) ) (! (= (HasDirectPerm_3625_1203 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3625_1203 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_3586) (o_2@@42 T@Ref) (f_4@@42 T@Field_3638_3639) ) (! (= (HasDirectPerm_3625_3639 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3625_3639 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_3586) (o_2@@43 T@Ref) (f_4@@43 T@Field_3625_53) ) (! (= (HasDirectPerm_3625_53 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3625_53 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((arg1@@5 Bool) (arg2@@5 Bool) (arg3@@1 Bool) (arg4@@1 Bool) ) (! (IsWandField_2115_1203 (wand arg1@@5 arg2@@5 arg3@@1 arg4@@1))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@1 arg4@@1))
)))
(assert (forall ((arg1@@6 Bool) (arg2@@6 Bool) (arg3@@2 Bool) (arg4@@2 Bool) ) (! (IsWandField_2120_2121 (|wand#ft| arg1@@6 arg2@@6 arg3@@2 arg4@@2))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@6 arg2@@6 arg3@@2 arg4@@2))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3565) (ExhaleHeap@@7 T@PolymorphicMapType_3565) (Mask@@38 T@PolymorphicMapType_3586) (o_1@@0 T@Ref) (f_2 T@Field_7560_7561) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_7535_6977 Mask@@38 o_1@@0 f_2) (= (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@8) o_1@@0 f_2) (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@7) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@7) o_1@@0 f_2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3565) (ExhaleHeap@@8 T@PolymorphicMapType_3565) (Mask@@39 T@PolymorphicMapType_3586) (o_1@@1 T@Ref) (f_2@@0 T@Field_7546_7551) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_7535_12467 Mask@@39 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@9) o_1@@1 f_2@@0) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@8) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@8) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3565) (ExhaleHeap@@9 T@PolymorphicMapType_3565) (Mask@@40 T@PolymorphicMapType_3586) (o_1@@2 T@Ref) (f_2@@1 T@Field_7535_1517) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_7535_1203 Mask@@40 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@10) o_1@@2 f_2@@1) (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@9) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@9) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3565) (ExhaleHeap@@10 T@PolymorphicMapType_3565) (Mask@@41 T@PolymorphicMapType_3586) (o_1@@3 T@Ref) (f_2@@2 T@Field_7535_3639) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_7535_3639 Mask@@41 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@11) o_1@@3 f_2@@2) (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@10) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@10) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3565) (ExhaleHeap@@11 T@PolymorphicMapType_3565) (Mask@@42 T@PolymorphicMapType_3586) (o_1@@4 T@Ref) (f_2@@3 T@Field_7535_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_7535_53 Mask@@42 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@12) o_1@@4 f_2@@3) (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@11) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@11) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3565) (ExhaleHeap@@12 T@PolymorphicMapType_3565) (Mask@@43 T@PolymorphicMapType_3586) (o_1@@5 T@Ref) (f_2@@4 T@Field_6976_6977) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_6951_6977 Mask@@43 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@13) o_1@@5 f_2@@4) (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@12) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@12) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3565) (ExhaleHeap@@13 T@PolymorphicMapType_3565) (Mask@@44 T@PolymorphicMapType_3586) (o_1@@6 T@Ref) (f_2@@5 T@Field_6962_6967) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_6951_11290 Mask@@44 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@14) o_1@@6 f_2@@5) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@13) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@13) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3565) (ExhaleHeap@@14 T@PolymorphicMapType_3565) (Mask@@45 T@PolymorphicMapType_3586) (o_1@@7 T@Ref) (f_2@@6 T@Field_6951_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_6951_1203 Mask@@45 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@15) o_1@@7 f_2@@6) (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@14) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@14) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3565) (ExhaleHeap@@15 T@PolymorphicMapType_3565) (Mask@@46 T@PolymorphicMapType_3586) (o_1@@8 T@Ref) (f_2@@7 T@Field_6951_3639) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_6951_3639 Mask@@46 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@16) o_1@@8 f_2@@7) (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@15) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@15) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3565) (ExhaleHeap@@16 T@PolymorphicMapType_3565) (Mask@@47 T@PolymorphicMapType_3586) (o_1@@9 T@Ref) (f_2@@8 T@Field_6951_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_6951_53 Mask@@47 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@17) o_1@@9 f_2@@8) (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@16) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@16) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3565) (ExhaleHeap@@17 T@PolymorphicMapType_3565) (Mask@@48 T@PolymorphicMapType_3586) (o_1@@10 T@Ref) (f_2@@9 T@Field_3625_6977) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_3625_6977 Mask@@48 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@18) o_1@@10 f_2@@9) (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@17) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@17) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3565) (ExhaleHeap@@18 T@PolymorphicMapType_3565) (Mask@@49 T@PolymorphicMapType_3586) (o_1@@11 T@Ref) (f_2@@10 T@Field_3625_6967) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_3625_10112 Mask@@49 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@19) o_1@@11 f_2@@10) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@18) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@18) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3565) (ExhaleHeap@@19 T@PolymorphicMapType_3565) (Mask@@50 T@PolymorphicMapType_3586) (o_1@@12 T@Ref) (f_2@@11 T@Field_3625_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_3625_1203 Mask@@50 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@20) o_1@@12 f_2@@11) (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@19) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@19) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3565) (ExhaleHeap@@20 T@PolymorphicMapType_3565) (Mask@@51 T@PolymorphicMapType_3586) (o_1@@13 T@Ref) (f_2@@12 T@Field_3638_3639) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_3625_3639 Mask@@51 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@21) o_1@@13 f_2@@12) (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@20) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@20) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3565) (ExhaleHeap@@21 T@PolymorphicMapType_3565) (Mask@@52 T@PolymorphicMapType_3586) (o_1@@14 T@Ref) (f_2@@13 T@Field_3625_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_3625_53 Mask@@52 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@22) o_1@@14 f_2@@13) (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@21) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@21) o_1@@14 f_2@@13))
)))
(assert (forall ((arg1@@7 Bool) (arg2@@7 Bool) (arg3@@3 Bool) (arg4@@3 Bool) ) (!  (not (IsPredicateField_2115_1203 (wand arg1@@7 arg2@@7 arg3@@3 arg4@@3)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@7 arg2@@7 arg3@@3 arg4@@3))
)))
(assert (forall ((arg1@@8 Bool) (arg2@@8 Bool) (arg3@@4 Bool) (arg4@@4 Bool) ) (!  (not (IsPredicateField_2120_2121 (|wand#ft| arg1@@8 arg2@@8 arg3@@4 arg4@@4)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@8 arg2@@8 arg3@@4 arg4@@4))
)))
(assert (forall ((arg1@@9 Bool) (arg2@@9 Bool) (arg3@@5 Bool) (arg4@@5 Bool) ) (! (= (|wand#sm| arg1@@9 arg2@@9 arg3@@5 arg4@@5) (WandMaskField_2120 (|wand#ft| arg1@@9 arg2@@9 arg3@@5 arg4@@5)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_2120 (|wand#ft| arg1@@9 arg2@@9 arg3@@5 arg4@@5)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_3625_6977) ) (! (= (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_3625_6967) ) (! (= (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_3638_3639) ) (! (= (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_3625_53) ) (! (= (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_3625_1203) ) (! (= (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_6976_6977) ) (! (= (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_6962_6967) ) (! (= (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_6951_3639) ) (! (= (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_6951_53) ) (! (= (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_6951_1203) ) (! (= (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_7560_7561) ) (! (= (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_7546_7551) ) (! (= (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_7535_3639) ) (! (= (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_7535_53) ) (! (= (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_7535_1517) ) (! (= (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3586) (SummandMask1 T@PolymorphicMapType_3586) (SummandMask2 T@PolymorphicMapType_3586) (o_2@@59 T@Ref) (f_4@@59 T@Field_3625_6977) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3586) (SummandMask1@@0 T@PolymorphicMapType_3586) (SummandMask2@@0 T@PolymorphicMapType_3586) (o_2@@60 T@Ref) (f_4@@60 T@Field_3625_6967) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3586) (SummandMask1@@1 T@PolymorphicMapType_3586) (SummandMask2@@1 T@PolymorphicMapType_3586) (o_2@@61 T@Ref) (f_4@@61 T@Field_3638_3639) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3586) (SummandMask1@@2 T@PolymorphicMapType_3586) (SummandMask2@@2 T@PolymorphicMapType_3586) (o_2@@62 T@Ref) (f_4@@62 T@Field_3625_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3586) (SummandMask1@@3 T@PolymorphicMapType_3586) (SummandMask2@@3 T@PolymorphicMapType_3586) (o_2@@63 T@Ref) (f_4@@63 T@Field_3625_1203) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_3586) (SummandMask1@@4 T@PolymorphicMapType_3586) (SummandMask2@@4 T@PolymorphicMapType_3586) (o_2@@64 T@Ref) (f_4@@64 T@Field_6976_6977) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_3586) (SummandMask1@@5 T@PolymorphicMapType_3586) (SummandMask2@@5 T@PolymorphicMapType_3586) (o_2@@65 T@Ref) (f_4@@65 T@Field_6962_6967) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_3586) (SummandMask1@@6 T@PolymorphicMapType_3586) (SummandMask2@@6 T@PolymorphicMapType_3586) (o_2@@66 T@Ref) (f_4@@66 T@Field_6951_3639) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_3586) (SummandMask1@@7 T@PolymorphicMapType_3586) (SummandMask2@@7 T@PolymorphicMapType_3586) (o_2@@67 T@Ref) (f_4@@67 T@Field_6951_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_3586) (SummandMask1@@8 T@PolymorphicMapType_3586) (SummandMask2@@8 T@PolymorphicMapType_3586) (o_2@@68 T@Ref) (f_4@@68 T@Field_6951_1203) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_3586) (SummandMask1@@9 T@PolymorphicMapType_3586) (SummandMask2@@9 T@PolymorphicMapType_3586) (o_2@@69 T@Ref) (f_4@@69 T@Field_7560_7561) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_3586) (SummandMask1@@10 T@PolymorphicMapType_3586) (SummandMask2@@10 T@PolymorphicMapType_3586) (o_2@@70 T@Ref) (f_4@@70 T@Field_7546_7551) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_3586) (SummandMask1@@11 T@PolymorphicMapType_3586) (SummandMask2@@11 T@PolymorphicMapType_3586) (o_2@@71 T@Ref) (f_4@@71 T@Field_7535_3639) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_3586) (SummandMask1@@12 T@PolymorphicMapType_3586) (SummandMask2@@12 T@PolymorphicMapType_3586) (o_2@@72 T@Ref) (f_4@@72 T@Field_7535_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_3586) (SummandMask1@@13 T@PolymorphicMapType_3586) (SummandMask2@@13 T@PolymorphicMapType_3586) (o_2@@73 T@Ref) (f_4@@73 T@Field_7535_1517) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3565) (ExhaleHeap@@22 T@PolymorphicMapType_3565) (Mask@@53 T@PolymorphicMapType_3586) (pm_f@@5 T@Field_7560_7561) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_7535_6977 Mask@@53 null pm_f@@5) (IsPredicateField_2128_2129 pm_f@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@14 T@Field_3625_53) ) (!  (=> (select (|PolymorphicMapType_4114_3625_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2 f_2@@14) (= (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@23) o2 f_2@@14) (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@22) o2 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@22) o2 f_2@@14))
)) (forall ((o2@@0 T@Ref) (f_2@@15 T@Field_3638_3639) ) (!  (=> (select (|PolymorphicMapType_4114_3625_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@0 f_2@@15) (= (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@23) o2@@0 f_2@@15) (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@0 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@0 f_2@@15))
))) (forall ((o2@@1 T@Ref) (f_2@@16 T@Field_3625_1203) ) (!  (=> (select (|PolymorphicMapType_4114_3625_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@1 f_2@@16) (= (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@23) o2@@1 f_2@@16) (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@1 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@1 f_2@@16))
))) (forall ((o2@@2 T@Ref) (f_2@@17 T@Field_3625_6967) ) (!  (=> (select (|PolymorphicMapType_4114_3625_14638#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@2 f_2@@17) (= (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@23) o2@@2 f_2@@17) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@2 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@2 f_2@@17))
))) (forall ((o2@@3 T@Ref) (f_2@@18 T@Field_3625_6977) ) (!  (=> (select (|PolymorphicMapType_4114_3625_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@3 f_2@@18) (= (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@23) o2@@3 f_2@@18) (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@3 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@3 f_2@@18))
))) (forall ((o2@@4 T@Ref) (f_2@@19 T@Field_6951_53) ) (!  (=> (select (|PolymorphicMapType_4114_6951_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@4 f_2@@19) (= (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@23) o2@@4 f_2@@19) (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@4 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@4 f_2@@19))
))) (forall ((o2@@5 T@Ref) (f_2@@20 T@Field_6951_3639) ) (!  (=> (select (|PolymorphicMapType_4114_6951_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@5 f_2@@20) (= (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@23) o2@@5 f_2@@20) (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@5 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@5 f_2@@20))
))) (forall ((o2@@6 T@Ref) (f_2@@21 T@Field_6951_1203) ) (!  (=> (select (|PolymorphicMapType_4114_6951_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@6 f_2@@21) (= (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@23) o2@@6 f_2@@21) (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@6 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@6 f_2@@21))
))) (forall ((o2@@7 T@Ref) (f_2@@22 T@Field_6962_6967) ) (!  (=> (select (|PolymorphicMapType_4114_6951_15686#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@7 f_2@@22) (= (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@23) o2@@7 f_2@@22) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@7 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@7 f_2@@22))
))) (forall ((o2@@8 T@Ref) (f_2@@23 T@Field_6976_6977) ) (!  (=> (select (|PolymorphicMapType_4114_6951_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@8 f_2@@23) (= (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@23) o2@@8 f_2@@23) (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@8 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@8 f_2@@23))
))) (forall ((o2@@9 T@Ref) (f_2@@24 T@Field_7535_53) ) (!  (=> (select (|PolymorphicMapType_4114_7535_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@9 f_2@@24) (= (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@23) o2@@9 f_2@@24) (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@9 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@9 f_2@@24))
))) (forall ((o2@@10 T@Ref) (f_2@@25 T@Field_7535_3639) ) (!  (=> (select (|PolymorphicMapType_4114_7535_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@10 f_2@@25) (= (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@23) o2@@10 f_2@@25) (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@10 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@10 f_2@@25))
))) (forall ((o2@@11 T@Ref) (f_2@@26 T@Field_7535_1517) ) (!  (=> (select (|PolymorphicMapType_4114_7535_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@11 f_2@@26) (= (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@23) o2@@11 f_2@@26) (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@11 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@11 f_2@@26))
))) (forall ((o2@@12 T@Ref) (f_2@@27 T@Field_7546_7551) ) (!  (=> (select (|PolymorphicMapType_4114_7535_16734#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@12 f_2@@27) (= (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) o2@@12 f_2@@27) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@12 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@12 f_2@@27))
))) (forall ((o2@@13 T@Ref) (f_2@@28 T@Field_7560_7561) ) (!  (=> (select (|PolymorphicMapType_4114_7535_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@23) null (PredicateMaskField_7535 pm_f@@5))) o2@@13 f_2@@28) (= (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@23) o2@@13 f_2@@28) (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@13 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@22) o2@@13 f_2@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (IsPredicateField_2128_2129 pm_f@@5))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3565) (ExhaleHeap@@23 T@PolymorphicMapType_3565) (Mask@@54 T@PolymorphicMapType_3586) (pm_f@@6 T@Field_6976_6977) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_6951_6977 Mask@@54 null pm_f@@6) (IsPredicateField_2120_2121 pm_f@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@14 T@Ref) (f_2@@29 T@Field_3625_53) ) (!  (=> (select (|PolymorphicMapType_4114_3625_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@14 f_2@@29) (= (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@24) o2@@14 f_2@@29) (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@14 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@14 f_2@@29))
)) (forall ((o2@@15 T@Ref) (f_2@@30 T@Field_3638_3639) ) (!  (=> (select (|PolymorphicMapType_4114_3625_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@15 f_2@@30) (= (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@24) o2@@15 f_2@@30) (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@15 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@15 f_2@@30))
))) (forall ((o2@@16 T@Ref) (f_2@@31 T@Field_3625_1203) ) (!  (=> (select (|PolymorphicMapType_4114_3625_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@16 f_2@@31) (= (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@24) o2@@16 f_2@@31) (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@16 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@16 f_2@@31))
))) (forall ((o2@@17 T@Ref) (f_2@@32 T@Field_3625_6967) ) (!  (=> (select (|PolymorphicMapType_4114_3625_14638#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@17 f_2@@32) (= (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@24) o2@@17 f_2@@32) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@17 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@17 f_2@@32))
))) (forall ((o2@@18 T@Ref) (f_2@@33 T@Field_3625_6977) ) (!  (=> (select (|PolymorphicMapType_4114_3625_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@18 f_2@@33) (= (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@24) o2@@18 f_2@@33) (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@18 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@18 f_2@@33))
))) (forall ((o2@@19 T@Ref) (f_2@@34 T@Field_6951_53) ) (!  (=> (select (|PolymorphicMapType_4114_6951_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@19 f_2@@34) (= (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@24) o2@@19 f_2@@34) (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@19 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@19 f_2@@34))
))) (forall ((o2@@20 T@Ref) (f_2@@35 T@Field_6951_3639) ) (!  (=> (select (|PolymorphicMapType_4114_6951_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@20 f_2@@35) (= (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@24) o2@@20 f_2@@35) (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@20 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@20 f_2@@35))
))) (forall ((o2@@21 T@Ref) (f_2@@36 T@Field_6951_1203) ) (!  (=> (select (|PolymorphicMapType_4114_6951_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@21 f_2@@36) (= (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@24) o2@@21 f_2@@36) (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@21 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@21 f_2@@36))
))) (forall ((o2@@22 T@Ref) (f_2@@37 T@Field_6962_6967) ) (!  (=> (select (|PolymorphicMapType_4114_6951_15686#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@22 f_2@@37) (= (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) o2@@22 f_2@@37) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@22 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@22 f_2@@37))
))) (forall ((o2@@23 T@Ref) (f_2@@38 T@Field_6976_6977) ) (!  (=> (select (|PolymorphicMapType_4114_6951_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@23 f_2@@38) (= (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@24) o2@@23 f_2@@38) (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@23 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@23 f_2@@38))
))) (forall ((o2@@24 T@Ref) (f_2@@39 T@Field_7535_53) ) (!  (=> (select (|PolymorphicMapType_4114_7535_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@24 f_2@@39) (= (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@24) o2@@24 f_2@@39) (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@24 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@24 f_2@@39))
))) (forall ((o2@@25 T@Ref) (f_2@@40 T@Field_7535_3639) ) (!  (=> (select (|PolymorphicMapType_4114_7535_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@25 f_2@@40) (= (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@24) o2@@25 f_2@@40) (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@25 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@25 f_2@@40))
))) (forall ((o2@@26 T@Ref) (f_2@@41 T@Field_7535_1517) ) (!  (=> (select (|PolymorphicMapType_4114_7535_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@26 f_2@@41) (= (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@24) o2@@26 f_2@@41) (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@26 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@26 f_2@@41))
))) (forall ((o2@@27 T@Ref) (f_2@@42 T@Field_7546_7551) ) (!  (=> (select (|PolymorphicMapType_4114_7535_16734#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@27 f_2@@42) (= (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@24) o2@@27 f_2@@42) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@27 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@27 f_2@@42))
))) (forall ((o2@@28 T@Ref) (f_2@@43 T@Field_7560_7561) ) (!  (=> (select (|PolymorphicMapType_4114_7535_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@24) null (PredicateMaskField_6951 pm_f@@6))) o2@@28 f_2@@43) (= (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@24) o2@@28 f_2@@43) (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@28 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@23) o2@@28 f_2@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (IsPredicateField_2120_2121 pm_f@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3565) (ExhaleHeap@@24 T@PolymorphicMapType_3565) (Mask@@55 T@PolymorphicMapType_3586) (pm_f@@7 T@Field_3625_6977) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_3625_6977 Mask@@55 null pm_f@@7) (IsPredicateField_3625_12983 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@44 T@Field_3625_53) ) (!  (=> (select (|PolymorphicMapType_4114_3625_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@29 f_2@@44) (= (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@25) o2@@29 f_2@@44) (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@29 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@29 f_2@@44))
)) (forall ((o2@@30 T@Ref) (f_2@@45 T@Field_3638_3639) ) (!  (=> (select (|PolymorphicMapType_4114_3625_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@30 f_2@@45) (= (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@25) o2@@30 f_2@@45) (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@30 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@30 f_2@@45))
))) (forall ((o2@@31 T@Ref) (f_2@@46 T@Field_3625_1203) ) (!  (=> (select (|PolymorphicMapType_4114_3625_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@31 f_2@@46) (= (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@25) o2@@31 f_2@@46) (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@31 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@31 f_2@@46))
))) (forall ((o2@@32 T@Ref) (f_2@@47 T@Field_3625_6967) ) (!  (=> (select (|PolymorphicMapType_4114_3625_14638#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@32 f_2@@47) (= (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) o2@@32 f_2@@47) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@32 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@32 f_2@@47))
))) (forall ((o2@@33 T@Ref) (f_2@@48 T@Field_3625_6977) ) (!  (=> (select (|PolymorphicMapType_4114_3625_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@33 f_2@@48) (= (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@25) o2@@33 f_2@@48) (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@33 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@33 f_2@@48))
))) (forall ((o2@@34 T@Ref) (f_2@@49 T@Field_6951_53) ) (!  (=> (select (|PolymorphicMapType_4114_6951_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@34 f_2@@49) (= (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@25) o2@@34 f_2@@49) (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@34 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@34 f_2@@49))
))) (forall ((o2@@35 T@Ref) (f_2@@50 T@Field_6951_3639) ) (!  (=> (select (|PolymorphicMapType_4114_6951_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@35 f_2@@50) (= (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@25) o2@@35 f_2@@50) (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@35 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@35 f_2@@50))
))) (forall ((o2@@36 T@Ref) (f_2@@51 T@Field_6951_1203) ) (!  (=> (select (|PolymorphicMapType_4114_6951_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@36 f_2@@51) (= (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@25) o2@@36 f_2@@51) (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@36 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@36 f_2@@51))
))) (forall ((o2@@37 T@Ref) (f_2@@52 T@Field_6962_6967) ) (!  (=> (select (|PolymorphicMapType_4114_6951_15686#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@37 f_2@@52) (= (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@25) o2@@37 f_2@@52) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@37 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@37 f_2@@52))
))) (forall ((o2@@38 T@Ref) (f_2@@53 T@Field_6976_6977) ) (!  (=> (select (|PolymorphicMapType_4114_6951_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@38 f_2@@53) (= (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@25) o2@@38 f_2@@53) (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@38 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@38 f_2@@53))
))) (forall ((o2@@39 T@Ref) (f_2@@54 T@Field_7535_53) ) (!  (=> (select (|PolymorphicMapType_4114_7535_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@39 f_2@@54) (= (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@25) o2@@39 f_2@@54) (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@39 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@39 f_2@@54))
))) (forall ((o2@@40 T@Ref) (f_2@@55 T@Field_7535_3639) ) (!  (=> (select (|PolymorphicMapType_4114_7535_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@40 f_2@@55) (= (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@25) o2@@40 f_2@@55) (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@40 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@40 f_2@@55))
))) (forall ((o2@@41 T@Ref) (f_2@@56 T@Field_7535_1517) ) (!  (=> (select (|PolymorphicMapType_4114_7535_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@41 f_2@@56) (= (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@25) o2@@41 f_2@@56) (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@41 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@41 f_2@@56))
))) (forall ((o2@@42 T@Ref) (f_2@@57 T@Field_7546_7551) ) (!  (=> (select (|PolymorphicMapType_4114_7535_16734#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@42 f_2@@57) (= (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@25) o2@@42 f_2@@57) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@42 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@42 f_2@@57))
))) (forall ((o2@@43 T@Ref) (f_2@@58 T@Field_7560_7561) ) (!  (=> (select (|PolymorphicMapType_4114_7535_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@25) null (PredicateMaskField_3625 pm_f@@7))) o2@@43 f_2@@58) (= (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@25) o2@@43 f_2@@58) (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@43 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@24) o2@@43 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (IsPredicateField_3625_12983 pm_f@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3565) (ExhaleHeap@@25 T@PolymorphicMapType_3565) (Mask@@56 T@PolymorphicMapType_3586) (pm_f@@8 T@Field_7560_7561) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_7535_6977 Mask@@56 null pm_f@@8) (IsWandField_2128_2129 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@44 T@Ref) (f_2@@59 T@Field_3625_53) ) (!  (=> (select (|PolymorphicMapType_4114_3625_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@44 f_2@@59) (= (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@26) o2@@44 f_2@@59) (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@44 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@44 f_2@@59))
)) (forall ((o2@@45 T@Ref) (f_2@@60 T@Field_3638_3639) ) (!  (=> (select (|PolymorphicMapType_4114_3625_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@45 f_2@@60) (= (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@26) o2@@45 f_2@@60) (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@45 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@45 f_2@@60))
))) (forall ((o2@@46 T@Ref) (f_2@@61 T@Field_3625_1203) ) (!  (=> (select (|PolymorphicMapType_4114_3625_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@46 f_2@@61) (= (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@26) o2@@46 f_2@@61) (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@46 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@46 f_2@@61))
))) (forall ((o2@@47 T@Ref) (f_2@@62 T@Field_3625_6967) ) (!  (=> (select (|PolymorphicMapType_4114_3625_14638#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@47 f_2@@62) (= (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@26) o2@@47 f_2@@62) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@47 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@47 f_2@@62))
))) (forall ((o2@@48 T@Ref) (f_2@@63 T@Field_3625_6977) ) (!  (=> (select (|PolymorphicMapType_4114_3625_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@48 f_2@@63) (= (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@26) o2@@48 f_2@@63) (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@48 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@48 f_2@@63))
))) (forall ((o2@@49 T@Ref) (f_2@@64 T@Field_6951_53) ) (!  (=> (select (|PolymorphicMapType_4114_6951_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@49 f_2@@64) (= (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@26) o2@@49 f_2@@64) (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@49 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@49 f_2@@64))
))) (forall ((o2@@50 T@Ref) (f_2@@65 T@Field_6951_3639) ) (!  (=> (select (|PolymorphicMapType_4114_6951_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@50 f_2@@65) (= (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@26) o2@@50 f_2@@65) (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@50 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@50 f_2@@65))
))) (forall ((o2@@51 T@Ref) (f_2@@66 T@Field_6951_1203) ) (!  (=> (select (|PolymorphicMapType_4114_6951_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@51 f_2@@66) (= (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@26) o2@@51 f_2@@66) (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@51 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@51 f_2@@66))
))) (forall ((o2@@52 T@Ref) (f_2@@67 T@Field_6962_6967) ) (!  (=> (select (|PolymorphicMapType_4114_6951_15686#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@52 f_2@@67) (= (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@26) o2@@52 f_2@@67) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@52 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@52 f_2@@67))
))) (forall ((o2@@53 T@Ref) (f_2@@68 T@Field_6976_6977) ) (!  (=> (select (|PolymorphicMapType_4114_6951_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@53 f_2@@68) (= (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@26) o2@@53 f_2@@68) (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@53 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@53 f_2@@68))
))) (forall ((o2@@54 T@Ref) (f_2@@69 T@Field_7535_53) ) (!  (=> (select (|PolymorphicMapType_4114_7535_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@54 f_2@@69) (= (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@26) o2@@54 f_2@@69) (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@54 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@54 f_2@@69))
))) (forall ((o2@@55 T@Ref) (f_2@@70 T@Field_7535_3639) ) (!  (=> (select (|PolymorphicMapType_4114_7535_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@55 f_2@@70) (= (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@26) o2@@55 f_2@@70) (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@55 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@55 f_2@@70))
))) (forall ((o2@@56 T@Ref) (f_2@@71 T@Field_7535_1517) ) (!  (=> (select (|PolymorphicMapType_4114_7535_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@56 f_2@@71) (= (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@26) o2@@56 f_2@@71) (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@56 f_2@@71)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@56 f_2@@71))
))) (forall ((o2@@57 T@Ref) (f_2@@72 T@Field_7546_7551) ) (!  (=> (select (|PolymorphicMapType_4114_7535_16734#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@57 f_2@@72) (= (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) o2@@57 f_2@@72) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@57 f_2@@72)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@57 f_2@@72))
))) (forall ((o2@@58 T@Ref) (f_2@@73 T@Field_7560_7561) ) (!  (=> (select (|PolymorphicMapType_4114_7535_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@26) null (WandMaskField_2128 pm_f@@8))) o2@@58 f_2@@73) (= (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@26) o2@@58 f_2@@73) (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@58 f_2@@73)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@25) o2@@58 f_2@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (IsWandField_2128_2129 pm_f@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_3565) (ExhaleHeap@@26 T@PolymorphicMapType_3565) (Mask@@57 T@PolymorphicMapType_3586) (pm_f@@9 T@Field_6976_6977) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_6951_6977 Mask@@57 null pm_f@@9) (IsWandField_2120_2121 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@74 T@Field_3625_53) ) (!  (=> (select (|PolymorphicMapType_4114_3625_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@59 f_2@@74) (= (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@27) o2@@59 f_2@@74) (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@59 f_2@@74)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@59 f_2@@74))
)) (forall ((o2@@60 T@Ref) (f_2@@75 T@Field_3638_3639) ) (!  (=> (select (|PolymorphicMapType_4114_3625_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@60 f_2@@75) (= (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@27) o2@@60 f_2@@75) (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@60 f_2@@75)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@60 f_2@@75))
))) (forall ((o2@@61 T@Ref) (f_2@@76 T@Field_3625_1203) ) (!  (=> (select (|PolymorphicMapType_4114_3625_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@61 f_2@@76) (= (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@27) o2@@61 f_2@@76) (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@61 f_2@@76)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@61 f_2@@76))
))) (forall ((o2@@62 T@Ref) (f_2@@77 T@Field_3625_6967) ) (!  (=> (select (|PolymorphicMapType_4114_3625_14638#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@62 f_2@@77) (= (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@27) o2@@62 f_2@@77) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@62 f_2@@77)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@62 f_2@@77))
))) (forall ((o2@@63 T@Ref) (f_2@@78 T@Field_3625_6977) ) (!  (=> (select (|PolymorphicMapType_4114_3625_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@63 f_2@@78) (= (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@27) o2@@63 f_2@@78) (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@63 f_2@@78)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@63 f_2@@78))
))) (forall ((o2@@64 T@Ref) (f_2@@79 T@Field_6951_53) ) (!  (=> (select (|PolymorphicMapType_4114_6951_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@64 f_2@@79) (= (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@27) o2@@64 f_2@@79) (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@64 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@64 f_2@@79))
))) (forall ((o2@@65 T@Ref) (f_2@@80 T@Field_6951_3639) ) (!  (=> (select (|PolymorphicMapType_4114_6951_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@65 f_2@@80) (= (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@27) o2@@65 f_2@@80) (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@65 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@65 f_2@@80))
))) (forall ((o2@@66 T@Ref) (f_2@@81 T@Field_6951_1203) ) (!  (=> (select (|PolymorphicMapType_4114_6951_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@66 f_2@@81) (= (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@27) o2@@66 f_2@@81) (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@66 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@66 f_2@@81))
))) (forall ((o2@@67 T@Ref) (f_2@@82 T@Field_6962_6967) ) (!  (=> (select (|PolymorphicMapType_4114_6951_15686#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@67 f_2@@82) (= (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) o2@@67 f_2@@82) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@67 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@67 f_2@@82))
))) (forall ((o2@@68 T@Ref) (f_2@@83 T@Field_6976_6977) ) (!  (=> (select (|PolymorphicMapType_4114_6951_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@68 f_2@@83) (= (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@27) o2@@68 f_2@@83) (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@68 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@68 f_2@@83))
))) (forall ((o2@@69 T@Ref) (f_2@@84 T@Field_7535_53) ) (!  (=> (select (|PolymorphicMapType_4114_7535_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@69 f_2@@84) (= (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@27) o2@@69 f_2@@84) (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@69 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@69 f_2@@84))
))) (forall ((o2@@70 T@Ref) (f_2@@85 T@Field_7535_3639) ) (!  (=> (select (|PolymorphicMapType_4114_7535_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@70 f_2@@85) (= (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@27) o2@@70 f_2@@85) (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@70 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@70 f_2@@85))
))) (forall ((o2@@71 T@Ref) (f_2@@86 T@Field_7535_1517) ) (!  (=> (select (|PolymorphicMapType_4114_7535_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@71 f_2@@86) (= (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@27) o2@@71 f_2@@86) (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@71 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@71 f_2@@86))
))) (forall ((o2@@72 T@Ref) (f_2@@87 T@Field_7546_7551) ) (!  (=> (select (|PolymorphicMapType_4114_7535_16734#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@72 f_2@@87) (= (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@27) o2@@72 f_2@@87) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@72 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@72 f_2@@87))
))) (forall ((o2@@73 T@Ref) (f_2@@88 T@Field_7560_7561) ) (!  (=> (select (|PolymorphicMapType_4114_7535_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@27) null (WandMaskField_2120 pm_f@@9))) o2@@73 f_2@@88) (= (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@27) o2@@73 f_2@@88) (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@73 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@26) o2@@73 f_2@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (IsWandField_2120_2121 pm_f@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_3565) (ExhaleHeap@@27 T@PolymorphicMapType_3565) (Mask@@58 T@PolymorphicMapType_3586) (pm_f@@10 T@Field_3625_6977) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_3625_6977 Mask@@58 null pm_f@@10) (IsWandField_3625_18027 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@89 T@Field_3625_53) ) (!  (=> (select (|PolymorphicMapType_4114_3625_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@74 f_2@@89) (= (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@28) o2@@74 f_2@@89) (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@74 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@74 f_2@@89))
)) (forall ((o2@@75 T@Ref) (f_2@@90 T@Field_3638_3639) ) (!  (=> (select (|PolymorphicMapType_4114_3625_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@75 f_2@@90) (= (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@28) o2@@75 f_2@@90) (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@75 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@75 f_2@@90))
))) (forall ((o2@@76 T@Ref) (f_2@@91 T@Field_3625_1203) ) (!  (=> (select (|PolymorphicMapType_4114_3625_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@76 f_2@@91) (= (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@28) o2@@76 f_2@@91) (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@76 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@76 f_2@@91))
))) (forall ((o2@@77 T@Ref) (f_2@@92 T@Field_3625_6967) ) (!  (=> (select (|PolymorphicMapType_4114_3625_14638#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@77 f_2@@92) (= (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) o2@@77 f_2@@92) (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@77 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@77 f_2@@92))
))) (forall ((o2@@78 T@Ref) (f_2@@93 T@Field_3625_6977) ) (!  (=> (select (|PolymorphicMapType_4114_3625_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@78 f_2@@93) (= (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@28) o2@@78 f_2@@93) (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@78 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@78 f_2@@93))
))) (forall ((o2@@79 T@Ref) (f_2@@94 T@Field_6951_53) ) (!  (=> (select (|PolymorphicMapType_4114_6951_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@79 f_2@@94) (= (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@28) o2@@79 f_2@@94) (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@79 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@79 f_2@@94))
))) (forall ((o2@@80 T@Ref) (f_2@@95 T@Field_6951_3639) ) (!  (=> (select (|PolymorphicMapType_4114_6951_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@80 f_2@@95) (= (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@28) o2@@80 f_2@@95) (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@80 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@80 f_2@@95))
))) (forall ((o2@@81 T@Ref) (f_2@@96 T@Field_6951_1203) ) (!  (=> (select (|PolymorphicMapType_4114_6951_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@81 f_2@@96) (= (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@28) o2@@81 f_2@@96) (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@81 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@81 f_2@@96))
))) (forall ((o2@@82 T@Ref) (f_2@@97 T@Field_6962_6967) ) (!  (=> (select (|PolymorphicMapType_4114_6951_15686#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@82 f_2@@97) (= (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@28) o2@@82 f_2@@97) (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@82 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@82 f_2@@97))
))) (forall ((o2@@83 T@Ref) (f_2@@98 T@Field_6976_6977) ) (!  (=> (select (|PolymorphicMapType_4114_6951_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@83 f_2@@98) (= (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@28) o2@@83 f_2@@98) (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@83 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@83 f_2@@98))
))) (forall ((o2@@84 T@Ref) (f_2@@99 T@Field_7535_53) ) (!  (=> (select (|PolymorphicMapType_4114_7535_53#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@84 f_2@@99) (= (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@28) o2@@84 f_2@@99) (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@84 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@84 f_2@@99))
))) (forall ((o2@@85 T@Ref) (f_2@@100 T@Field_7535_3639) ) (!  (=> (select (|PolymorphicMapType_4114_7535_3639#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@85 f_2@@100) (= (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@28) o2@@85 f_2@@100) (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@85 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@85 f_2@@100))
))) (forall ((o2@@86 T@Ref) (f_2@@101 T@Field_7535_1517) ) (!  (=> (select (|PolymorphicMapType_4114_7535_1203#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@86 f_2@@101) (= (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@28) o2@@86 f_2@@101) (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@86 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@86 f_2@@101))
))) (forall ((o2@@87 T@Ref) (f_2@@102 T@Field_7546_7551) ) (!  (=> (select (|PolymorphicMapType_4114_7535_16734#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@87 f_2@@102) (= (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@28) o2@@87 f_2@@102) (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@87 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@87 f_2@@102))
))) (forall ((o2@@88 T@Ref) (f_2@@103 T@Field_7560_7561) ) (!  (=> (select (|PolymorphicMapType_4114_7535_6977#PolymorphicMapType_4114| (select (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@28) null (WandMaskField_3625 pm_f@@10))) o2@@88 f_2@@103) (= (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@28) o2@@88 f_2@@103) (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@88 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| ExhaleHeap@@27) o2@@88 f_2@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (IsWandField_3625_18027 pm_f@@10))
)))
(assert (forall ((arg1@@10 Bool) (arg2@@10 Bool) (arg1_2@@0 Bool) (arg2_2@@0 Bool) ) (!  (=> (= (wand_1 arg1@@10 arg2@@10) (wand_1 arg1_2@@0 arg2_2@@0)) (and (= arg1@@10 arg1_2@@0) (= arg2@@10 arg2_2@@0)))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@10 arg2@@10) (wand_1 arg1_2@@0 arg2_2@@0))
)))
(assert (forall ((arg1@@11 Bool) (arg2@@11 Bool) ) (! (= (getPredWandId_2123_1517 (wand_1 arg1@@11 arg2@@11)) 1)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@11 arg2@@11))
)))
(assert (forall ((arg1@@12 Bool) (arg2@@12 Bool) ) (! (= (|wand_1#sm| arg1@@12 arg2@@12) (WandMaskField_2128 (|wand_1#ft| arg1@@12 arg2@@12)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_2128 (|wand_1#ft| arg1@@12 arg2@@12)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_3565) (o T@Ref) (f_3 T@Field_7560_7561) (v T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@29) (store (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@29) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@29) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@29) (store (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@29) o f_3 v)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_3565) (o@@0 T@Ref) (f_3@@0 T@Field_7546_7551) (v@@0 T@PolymorphicMapType_4114) ) (! (succHeap Heap@@30 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@30) (store (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@30) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@30) (store (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_3565) (o@@1 T@Ref) (f_3@@1 T@Field_7535_1517) (v@@1 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@31) (store (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@31) (store (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@31) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_3565) (o@@2 T@Ref) (f_3@@2 T@Field_7535_3639) (v@@2 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@32) (store (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@32) (store (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@32) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_3565) (o@@3 T@Ref) (f_3@@3 T@Field_7535_53) (v@@3 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@33) (store (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@33) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@33) (store (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@33) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@33) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_3565) (o@@4 T@Ref) (f_3@@4 T@Field_6976_6977) (v@@4 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@34) (store (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@34) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@34) (store (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@34) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@34) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_3565) (o@@5 T@Ref) (f_3@@5 T@Field_6962_6967) (v@@5 T@PolymorphicMapType_4114) ) (! (succHeap Heap@@35 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@35) (store (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@35) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@35) (store (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@35) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@35) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_3565) (o@@6 T@Ref) (f_3@@6 T@Field_6951_1203) (v@@6 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@36) (store (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@36) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@36) (store (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@36) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@36) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_3565) (o@@7 T@Ref) (f_3@@7 T@Field_6951_3639) (v@@7 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@37) (store (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@37) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@37) (store (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@37) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@37) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_3565) (o@@8 T@Ref) (f_3@@8 T@Field_6951_53) (v@@8 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@38) (store (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@38) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@38) (store (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@38) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@38) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_3565) (o@@9 T@Ref) (f_3@@9 T@Field_3625_6977) (v@@9 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@39) (store (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@39) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@39) (store (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@39) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@39) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_3565) (o@@10 T@Ref) (f_3@@10 T@Field_3625_6967) (v@@10 T@PolymorphicMapType_4114) ) (! (succHeap Heap@@40 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@40) (store (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@40) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@40) (store (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@40) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@40) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_3565) (o@@11 T@Ref) (f_3@@11 T@Field_3625_1203) (v@@11 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@41) (store (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@41) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@41) (store (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@41) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@41) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_3565) (o@@12 T@Ref) (f_3@@12 T@Field_3638_3639) (v@@12 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@42) (store (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@42) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@42) (store (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@42) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@42) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_3565) (o@@13 T@Ref) (f_3@@13 T@Field_3625_53) (v@@13 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_3565 (store (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@43) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3565 (store (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@43) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_3625_1203#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_3625_10154#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_3625_6977#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_6951_53#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_6951_3639#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_6951_1203#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_6951_11332#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_6951_6977#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_7535_53#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_7535_3639#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_7535_1203#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_7535_12509#PolymorphicMapType_3565| Heap@@43) (|PolymorphicMapType_3565_7535_6977#PolymorphicMapType_3565| Heap@@43)))
)))
(assert (forall ((o@@14 T@Ref) (f T@Field_3638_3639) (Heap@@44 T@PolymorphicMapType_3565) ) (!  (=> (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@44) o@@14 $allocated) (select (|PolymorphicMapType_3565_1987_53#PolymorphicMapType_3565| Heap@@44) (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@44) o@@14 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3565_1990_1991#PolymorphicMapType_3565| Heap@@44) o@@14 f))
)))
(assert (forall ((p@@3 T@Field_7560_7561) (v_1@@2 T@FrameType) (q T@Field_7560_7561) (w@@2 T@FrameType) (r T@Field_7560_7561) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7535_7535 p@@3 v_1@@2 q w@@2) (InsidePredicate_7535_7535 q w@@2 r u)) (InsidePredicate_7535_7535 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7535_7535 p@@3 v_1@@2 q w@@2) (InsidePredicate_7535_7535 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_7560_7561) (v_1@@3 T@FrameType) (q@@0 T@Field_7560_7561) (w@@3 T@FrameType) (r@@0 T@Field_6976_6977) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_7535_7535 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_7535_6951 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_7535_6951 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7535_7535 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_7535_6951 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_7560_7561) (v_1@@4 T@FrameType) (q@@1 T@Field_7560_7561) (w@@4 T@FrameType) (r@@1 T@Field_3625_6977) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_7535_7535 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_7535_3625 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_7535_3625 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7535_7535 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_7535_3625 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_7560_7561) (v_1@@5 T@FrameType) (q@@2 T@Field_6976_6977) (w@@5 T@FrameType) (r@@2 T@Field_7560_7561) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_7535_6951 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_6951_7535 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_7535_7535 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7535_6951 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_6951_7535 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_7560_7561) (v_1@@6 T@FrameType) (q@@3 T@Field_6976_6977) (w@@6 T@FrameType) (r@@3 T@Field_6976_6977) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7535_6951 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_6951_6951 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_7535_6951 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7535_6951 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_6951_6951 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_7560_7561) (v_1@@7 T@FrameType) (q@@4 T@Field_6976_6977) (w@@7 T@FrameType) (r@@4 T@Field_3625_6977) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7535_6951 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_6951_3625 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_7535_3625 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7535_6951 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_6951_3625 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_7560_7561) (v_1@@8 T@FrameType) (q@@5 T@Field_3625_6977) (w@@8 T@FrameType) (r@@5 T@Field_7560_7561) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7535_3625 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_3625_7535 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_7535_7535 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7535_3625 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_3625_7535 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_7560_7561) (v_1@@9 T@FrameType) (q@@6 T@Field_3625_6977) (w@@9 T@FrameType) (r@@6 T@Field_6976_6977) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7535_3625 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_3625_6951 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_7535_6951 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7535_3625 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_3625_6951 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_7560_7561) (v_1@@10 T@FrameType) (q@@7 T@Field_3625_6977) (w@@10 T@FrameType) (r@@7 T@Field_3625_6977) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_7535_3625 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_3625_3625 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_7535_3625 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7535_3625 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_3625_3625 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_6976_6977) (v_1@@11 T@FrameType) (q@@8 T@Field_7560_7561) (w@@11 T@FrameType) (r@@8 T@Field_7560_7561) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_6951_7535 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_7535_7535 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_6951_7535 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6951_7535 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_7535_7535 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_6976_6977) (v_1@@12 T@FrameType) (q@@9 T@Field_7560_7561) (w@@12 T@FrameType) (r@@9 T@Field_6976_6977) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_6951_7535 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_7535_6951 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_6951_6951 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6951_7535 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_7535_6951 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_6976_6977) (v_1@@13 T@FrameType) (q@@10 T@Field_7560_7561) (w@@13 T@FrameType) (r@@10 T@Field_3625_6977) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_6951_7535 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_7535_3625 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_6951_3625 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6951_7535 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_7535_3625 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_6976_6977) (v_1@@14 T@FrameType) (q@@11 T@Field_6976_6977) (w@@14 T@FrameType) (r@@11 T@Field_7560_7561) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_6951_6951 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_6951_7535 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_6951_7535 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6951_6951 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_6951_7535 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_6976_6977) (v_1@@15 T@FrameType) (q@@12 T@Field_6976_6977) (w@@15 T@FrameType) (r@@12 T@Field_6976_6977) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_6951_6951 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_6951_6951 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_6951_6951 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6951_6951 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_6951_6951 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_6976_6977) (v_1@@16 T@FrameType) (q@@13 T@Field_6976_6977) (w@@16 T@FrameType) (r@@13 T@Field_3625_6977) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_6951_6951 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_6951_3625 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_6951_3625 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6951_6951 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_6951_3625 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_6976_6977) (v_1@@17 T@FrameType) (q@@14 T@Field_3625_6977) (w@@17 T@FrameType) (r@@14 T@Field_7560_7561) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_6951_3625 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_3625_7535 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_6951_7535 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6951_3625 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_3625_7535 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_6976_6977) (v_1@@18 T@FrameType) (q@@15 T@Field_3625_6977) (w@@18 T@FrameType) (r@@15 T@Field_6976_6977) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_6951_3625 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_3625_6951 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_6951_6951 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6951_3625 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_3625_6951 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_6976_6977) (v_1@@19 T@FrameType) (q@@16 T@Field_3625_6977) (w@@19 T@FrameType) (r@@16 T@Field_3625_6977) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_6951_3625 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_3625_3625 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_6951_3625 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6951_3625 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_3625_3625 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_3625_6977) (v_1@@20 T@FrameType) (q@@17 T@Field_7560_7561) (w@@20 T@FrameType) (r@@17 T@Field_7560_7561) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_3625_7535 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_7535_7535 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_3625_7535 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3625_7535 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_7535_7535 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_3625_6977) (v_1@@21 T@FrameType) (q@@18 T@Field_7560_7561) (w@@21 T@FrameType) (r@@18 T@Field_6976_6977) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_3625_7535 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_7535_6951 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_3625_6951 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3625_7535 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_7535_6951 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_3625_6977) (v_1@@22 T@FrameType) (q@@19 T@Field_7560_7561) (w@@22 T@FrameType) (r@@19 T@Field_3625_6977) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_3625_7535 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_7535_3625 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_3625_3625 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3625_7535 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_7535_3625 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_3625_6977) (v_1@@23 T@FrameType) (q@@20 T@Field_6976_6977) (w@@23 T@FrameType) (r@@20 T@Field_7560_7561) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_3625_6951 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_6951_7535 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_3625_7535 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3625_6951 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_6951_7535 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_3625_6977) (v_1@@24 T@FrameType) (q@@21 T@Field_6976_6977) (w@@24 T@FrameType) (r@@21 T@Field_6976_6977) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_3625_6951 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_6951_6951 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_3625_6951 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3625_6951 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_6951_6951 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_3625_6977) (v_1@@25 T@FrameType) (q@@22 T@Field_6976_6977) (w@@25 T@FrameType) (r@@22 T@Field_3625_6977) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_3625_6951 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_6951_3625 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_3625_3625 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3625_6951 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_6951_3625 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_3625_6977) (v_1@@26 T@FrameType) (q@@23 T@Field_3625_6977) (w@@26 T@FrameType) (r@@23 T@Field_7560_7561) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_3625_3625 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_3625_7535 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_3625_7535 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3625_3625 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_3625_7535 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_3625_6977) (v_1@@27 T@FrameType) (q@@24 T@Field_3625_6977) (w@@27 T@FrameType) (r@@24 T@Field_6976_6977) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_3625_3625 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_3625_6951 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_3625_6951 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3625_3625 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_3625_6951 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_3625_6977) (v_1@@28 T@FrameType) (q@@25 T@Field_3625_6977) (w@@28 T@FrameType) (r@@25 T@Field_3625_6977) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_3625_3625 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_3625_3625 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_3625_3625 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3625_3625 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_3625_3625 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun WandDefRHSMask@0 () T@PolymorphicMapType_3586)
(declare-fun WandDefRHSHeap@0 () T@PolymorphicMapType_3565)
(declare-fun WandDefRHSMask@1 () T@PolymorphicMapType_3586)
(declare-fun b_24 () Bool)
(declare-fun WandDefLHSHeap@0 () T@PolymorphicMapType_3565)
(declare-fun Heap@@45 () T@PolymorphicMapType_3565)
(set-info :boogie-vc-id test)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon9_Then_correct true))
(let ((anon5_correct true))
(let ((anon9_Else_correct  (=> (and (and (= WandDefRHSMask@0 (PolymorphicMapType_3586 (store (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| ZeroMask) null (wand_1 true true) (+ (select (|PolymorphicMapType_3586_2123_1517#PolymorphicMapType_3586| ZeroMask) null (wand_1 true true)) FullPerm)) (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_2123_53#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_2123_3639#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_2123_24635#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_2123_6977#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_2115_53#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_2115_3639#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_2115_25049#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_2115_6977#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_3625_1517#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_3625_53#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_3625_3639#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_3625_25475#PolymorphicMapType_3586| ZeroMask) (|PolymorphicMapType_3586_3625_6977#PolymorphicMapType_3586| ZeroMask))) (state WandDefRHSHeap@0 WandDefRHSMask@0)) (and (= WandDefRHSMask@1 WandDefRHSMask@0) (= (ControlFlow 0 6) 3))) anon5_correct)))
(let ((anon8_Then_correct  (=> b_24 (and (=> (= (ControlFlow 0 7) 5) anon9_Then_correct) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not b_24) (=> (and (= WandDefRHSMask@1 ZeroMask) (= (ControlFlow 0 4) 3)) anon5_correct))))
(let ((anon7_Then_correct  (=> (and (state WandDefLHSHeap@0 ZeroMask) (state WandDefLHSHeap@0 ZeroMask)) (and (=> (= (ControlFlow 0 8) 7) anon8_Then_correct) (=> (= (ControlFlow 0 8) 4) anon8_Else_correct)))))
(let ((anon7_Else_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (<= FullPerm (select (|PolymorphicMapType_3586_2115_1203#PolymorphicMapType_3586| ZeroMask) null (wand true b_24 true true))))))
(let ((anon0_correct  (=> (and (state Heap@@45 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 9) 8) anon7_Then_correct) (=> (= (ControlFlow 0 9) 2) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
