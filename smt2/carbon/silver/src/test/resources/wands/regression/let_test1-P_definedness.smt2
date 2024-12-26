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
(declare-sort T@Field_5660_53 0)
(declare-sort T@Field_5673_5674 0)
(declare-sort T@Field_9624_9625 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9001_9006 0)
(declare-sort T@Field_9637_9642 0)
(declare-sort T@Field_3204_1199 0)
(declare-sort T@Field_3204_9006 0)
(declare-sort T@Field_3204_9018 0)
(declare-sort T@Field_8988_3205 0)
(declare-sort T@Field_8988_53 0)
(declare-sort T@Field_8988_1199 0)
(declare-sort T@Field_9017_9018 0)
(declare-sort T@Field_9624_3205 0)
(declare-sort T@Field_9624_53 0)
(declare-sort T@Field_9624_1199 0)
(declare-datatypes ((T@PolymorphicMapType_5621 0)) (((PolymorphicMapType_5621 (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| (Array T@Ref T@Field_5673_5674 Real)) (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| (Array T@Ref T@Field_9624_9625 Real)) (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| (Array T@Ref T@Field_8988_1199 Real)) (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| (Array T@Ref T@Field_3204_9018 Real)) (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| (Array T@Ref T@Field_3204_1199 Real)) (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| (Array T@Ref T@Field_5660_53 Real)) (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| (Array T@Ref T@Field_3204_9006 Real)) (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| (Array T@Ref T@Field_9624_3205 Real)) (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| (Array T@Ref T@Field_9624_1199 Real)) (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| (Array T@Ref T@Field_9624_53 Real)) (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| (Array T@Ref T@Field_9637_9642 Real)) (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| (Array T@Ref T@Field_8988_3205 Real)) (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| (Array T@Ref T@Field_9017_9018 Real)) (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| (Array T@Ref T@Field_8988_53 Real)) (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| (Array T@Ref T@Field_9001_9006 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6149 0)) (((PolymorphicMapType_6149 (|PolymorphicMapType_6149_3204_3205#PolymorphicMapType_6149| (Array T@Ref T@Field_5673_5674 Bool)) (|PolymorphicMapType_6149_3204_53#PolymorphicMapType_6149| (Array T@Ref T@Field_5660_53 Bool)) (|PolymorphicMapType_6149_3204_1199#PolymorphicMapType_6149| (Array T@Ref T@Field_3204_1199 Bool)) (|PolymorphicMapType_6149_3204_21660#PolymorphicMapType_6149| (Array T@Ref T@Field_3204_9006 Bool)) (|PolymorphicMapType_6149_3204_9018#PolymorphicMapType_6149| (Array T@Ref T@Field_3204_9018 Bool)) (|PolymorphicMapType_6149_8988_3205#PolymorphicMapType_6149| (Array T@Ref T@Field_8988_3205 Bool)) (|PolymorphicMapType_6149_8988_53#PolymorphicMapType_6149| (Array T@Ref T@Field_8988_53 Bool)) (|PolymorphicMapType_6149_8988_1199#PolymorphicMapType_6149| (Array T@Ref T@Field_8988_1199 Bool)) (|PolymorphicMapType_6149_8988_22708#PolymorphicMapType_6149| (Array T@Ref T@Field_9001_9006 Bool)) (|PolymorphicMapType_6149_8988_9018#PolymorphicMapType_6149| (Array T@Ref T@Field_9017_9018 Bool)) (|PolymorphicMapType_6149_9624_3205#PolymorphicMapType_6149| (Array T@Ref T@Field_9624_3205 Bool)) (|PolymorphicMapType_6149_9624_53#PolymorphicMapType_6149| (Array T@Ref T@Field_9624_53 Bool)) (|PolymorphicMapType_6149_9624_1199#PolymorphicMapType_6149| (Array T@Ref T@Field_9624_1199 Bool)) (|PolymorphicMapType_6149_9624_23756#PolymorphicMapType_6149| (Array T@Ref T@Field_9637_9642 Bool)) (|PolymorphicMapType_6149_9624_9018#PolymorphicMapType_6149| (Array T@Ref T@Field_9624_9625 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5600 0)) (((PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| (Array T@Ref T@Field_5660_53 Bool)) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| (Array T@Ref T@Field_5673_5674 T@Ref)) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| (Array T@Ref T@Field_9624_9625 T@FrameType)) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| (Array T@Ref T@Field_9001_9006 T@PolymorphicMapType_6149)) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| (Array T@Ref T@Field_9637_9642 T@PolymorphicMapType_6149)) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| (Array T@Ref T@Field_3204_1199 Int)) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| (Array T@Ref T@Field_3204_9006 T@PolymorphicMapType_6149)) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| (Array T@Ref T@Field_3204_9018 T@FrameType)) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| (Array T@Ref T@Field_8988_3205 T@Ref)) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| (Array T@Ref T@Field_8988_53 Bool)) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| (Array T@Ref T@Field_8988_1199 Int)) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| (Array T@Ref T@Field_9017_9018 T@FrameType)) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| (Array T@Ref T@Field_9624_3205 T@Ref)) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| (Array T@Ref T@Field_9624_53 Bool)) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| (Array T@Ref T@Field_9624_1199 Int)) ) ) ))
(declare-fun $allocated () T@Field_5660_53)
(declare-fun f_7 () T@Field_5673_5674)
(declare-fun succHeap (T@PolymorphicMapType_5600 T@PolymorphicMapType_5600) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5600 T@PolymorphicMapType_5600) Bool)
(declare-fun state (T@PolymorphicMapType_5600 T@PolymorphicMapType_5621) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5621) Bool)
(declare-fun wand (T@Ref T@Ref Real) T@Field_8988_1199)
(declare-fun IsWandField_3166_1199 (T@Field_8988_1199) Bool)
(declare-fun |wand#ft| (T@Ref T@Ref Real) T@Field_9017_9018)
(declare-fun IsWandField_3177_3178 (T@Field_9017_9018) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6149)
(declare-fun getPredWandId_3166_1199 (T@Field_8988_1199) Int)
(declare-fun IsPredicateField_3166_1199 (T@Field_8988_1199) Bool)
(declare-fun IsPredicateField_3177_3178 (T@Field_9017_9018) Bool)
(declare-fun P (T@Ref) T@Field_9624_9625)
(declare-fun IsPredicateField_3208_3209 (T@Field_9624_9625) Bool)
(declare-fun |P#trigger_3208| (T@PolymorphicMapType_5600 T@Field_9624_9625) Bool)
(declare-fun |P#everUsed_3208| (T@Field_9624_9625) Bool)
(declare-fun WandMaskField_3177 (T@Field_9017_9018) T@Field_9001_9006)
(declare-fun |wand#sm| (T@Ref T@Ref Real) T@Field_9001_9006)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5600 T@PolymorphicMapType_5600 T@PolymorphicMapType_5621) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3208 (T@Field_9624_9625) T@Field_9637_9642)
(declare-fun HasDirectPerm_9624_9018 (T@PolymorphicMapType_5621 T@Ref T@Field_9624_9625) Bool)
(declare-fun PredicateMaskField_8988 (T@Field_9017_9018) T@Field_9001_9006)
(declare-fun HasDirectPerm_8988_9018 (T@PolymorphicMapType_5621 T@Ref T@Field_9017_9018) Bool)
(declare-fun IsPredicateField_3204_20045 (T@Field_3204_9018) Bool)
(declare-fun PredicateMaskField_3204 (T@Field_3204_9018) T@Field_3204_9006)
(declare-fun HasDirectPerm_3204_9018 (T@PolymorphicMapType_5621 T@Ref T@Field_3204_9018) Bool)
(declare-fun IsWandField_9624_25731 (T@Field_9624_9625) Bool)
(declare-fun WandMaskField_9624 (T@Field_9624_9625) T@Field_9637_9642)
(declare-fun IsWandField_3204_25049 (T@Field_3204_9018) Bool)
(declare-fun WandMaskField_3204 (T@Field_3204_9018) T@Field_3204_9006)
(declare-fun |P#sm| (T@Ref) T@Field_9637_9642)
(declare-fun dummyHeap () T@PolymorphicMapType_5600)
(declare-fun ZeroMask () T@PolymorphicMapType_5621)
(declare-fun InsidePredicate_9624_9624 (T@Field_9624_9625 T@FrameType T@Field_9624_9625 T@FrameType) Bool)
(declare-fun InsidePredicate_8988_8988 (T@Field_9017_9018 T@FrameType T@Field_9017_9018 T@FrameType) Bool)
(declare-fun InsidePredicate_5660_5660 (T@Field_3204_9018 T@FrameType T@Field_3204_9018 T@FrameType) Bool)
(declare-fun IsPredicateField_3204_3205 (T@Field_5673_5674) Bool)
(declare-fun IsWandField_3204_3205 (T@Field_5673_5674) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3166_36035 (T@Field_9001_9006) Bool)
(declare-fun IsWandField_3166_36051 (T@Field_9001_9006) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3166_53 (T@Field_8988_53) Bool)
(declare-fun IsWandField_3166_53 (T@Field_8988_53) Bool)
(declare-fun IsPredicateField_3166_3205 (T@Field_8988_3205) Bool)
(declare-fun IsWandField_3166_3205 (T@Field_8988_3205) Bool)
(declare-fun IsPredicateField_3208_35218 (T@Field_9637_9642) Bool)
(declare-fun IsWandField_3208_35234 (T@Field_9637_9642) Bool)
(declare-fun IsPredicateField_3208_53 (T@Field_9624_53) Bool)
(declare-fun IsWandField_3208_53 (T@Field_9624_53) Bool)
(declare-fun IsPredicateField_3208_1199 (T@Field_9624_1199) Bool)
(declare-fun IsWandField_3208_1199 (T@Field_9624_1199) Bool)
(declare-fun IsPredicateField_3208_3205 (T@Field_9624_3205) Bool)
(declare-fun IsWandField_3208_3205 (T@Field_9624_3205) Bool)
(declare-fun IsPredicateField_3204_34387 (T@Field_3204_9006) Bool)
(declare-fun IsWandField_3204_34403 (T@Field_3204_9006) Bool)
(declare-fun IsPredicateField_3204_53 (T@Field_5660_53) Bool)
(declare-fun IsWandField_3204_53 (T@Field_5660_53) Bool)
(declare-fun IsPredicateField_3204_1199 (T@Field_3204_1199) Bool)
(declare-fun IsWandField_3204_1199 (T@Field_3204_1199) Bool)
(declare-fun HasDirectPerm_9624_19589 (T@PolymorphicMapType_5621 T@Ref T@Field_9637_9642) Bool)
(declare-fun HasDirectPerm_9624_1199 (T@PolymorphicMapType_5621 T@Ref T@Field_9624_1199) Bool)
(declare-fun HasDirectPerm_9624_53 (T@PolymorphicMapType_5621 T@Ref T@Field_9624_53) Bool)
(declare-fun HasDirectPerm_9624_3205 (T@PolymorphicMapType_5621 T@Ref T@Field_9624_3205) Bool)
(declare-fun HasDirectPerm_8988_18454 (T@PolymorphicMapType_5621 T@Ref T@Field_9001_9006) Bool)
(declare-fun HasDirectPerm_8988_1199 (T@PolymorphicMapType_5621 T@Ref T@Field_8988_1199) Bool)
(declare-fun HasDirectPerm_8988_53 (T@PolymorphicMapType_5621 T@Ref T@Field_8988_53) Bool)
(declare-fun HasDirectPerm_8988_3205 (T@PolymorphicMapType_5621 T@Ref T@Field_8988_3205) Bool)
(declare-fun HasDirectPerm_3204_17276 (T@PolymorphicMapType_5621 T@Ref T@Field_3204_9006) Bool)
(declare-fun HasDirectPerm_3204_1199 (T@PolymorphicMapType_5621 T@Ref T@Field_3204_1199) Bool)
(declare-fun HasDirectPerm_3204_53 (T@PolymorphicMapType_5621 T@Ref T@Field_5660_53) Bool)
(declare-fun HasDirectPerm_3204_3205 (T@PolymorphicMapType_5621 T@Ref T@Field_5673_5674) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5621 T@PolymorphicMapType_5621 T@PolymorphicMapType_5621) Bool)
(declare-fun getPredWandId_3208_3209 (T@Field_9624_9625) Int)
(declare-fun InsidePredicate_9624_8988 (T@Field_9624_9625 T@FrameType T@Field_9017_9018 T@FrameType) Bool)
(declare-fun InsidePredicate_9624_5660 (T@Field_9624_9625 T@FrameType T@Field_3204_9018 T@FrameType) Bool)
(declare-fun InsidePredicate_8988_9624 (T@Field_9017_9018 T@FrameType T@Field_9624_9625 T@FrameType) Bool)
(declare-fun InsidePredicate_8988_5660 (T@Field_9017_9018 T@FrameType T@Field_3204_9018 T@FrameType) Bool)
(declare-fun InsidePredicate_5660_9624 (T@Field_3204_9018 T@FrameType T@Field_9624_9625 T@FrameType) Bool)
(declare-fun InsidePredicate_5660_8988 (T@Field_3204_9018 T@FrameType T@Field_9017_9018 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5600) (Heap1 T@PolymorphicMapType_5600) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5600) (Mask T@PolymorphicMapType_5621) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5600) (Heap1@@0 T@PolymorphicMapType_5600) (Heap2 T@PolymorphicMapType_5600) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) (arg3 Real) ) (! (IsWandField_3166_1199 (wand arg1 arg2 arg3))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1 arg2 arg3))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) (arg3@@0 Real) ) (! (IsWandField_3177_3178 (|wand#ft| arg1@@0 arg2@@0 arg3@@0))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@0 arg2@@0 arg3@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9624_9625) ) (!  (not (select (|PolymorphicMapType_6149_9624_9018#PolymorphicMapType_6149| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_9624_9018#PolymorphicMapType_6149| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9637_9642) ) (!  (not (select (|PolymorphicMapType_6149_9624_23756#PolymorphicMapType_6149| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_9624_23756#PolymorphicMapType_6149| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9624_1199) ) (!  (not (select (|PolymorphicMapType_6149_9624_1199#PolymorphicMapType_6149| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_9624_1199#PolymorphicMapType_6149| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9624_53) ) (!  (not (select (|PolymorphicMapType_6149_9624_53#PolymorphicMapType_6149| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_9624_53#PolymorphicMapType_6149| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9624_3205) ) (!  (not (select (|PolymorphicMapType_6149_9624_3205#PolymorphicMapType_6149| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_9624_3205#PolymorphicMapType_6149| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9017_9018) ) (!  (not (select (|PolymorphicMapType_6149_8988_9018#PolymorphicMapType_6149| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_8988_9018#PolymorphicMapType_6149| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9001_9006) ) (!  (not (select (|PolymorphicMapType_6149_8988_22708#PolymorphicMapType_6149| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_8988_22708#PolymorphicMapType_6149| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8988_1199) ) (!  (not (select (|PolymorphicMapType_6149_8988_1199#PolymorphicMapType_6149| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_8988_1199#PolymorphicMapType_6149| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8988_53) ) (!  (not (select (|PolymorphicMapType_6149_8988_53#PolymorphicMapType_6149| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_8988_53#PolymorphicMapType_6149| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8988_3205) ) (!  (not (select (|PolymorphicMapType_6149_8988_3205#PolymorphicMapType_6149| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_8988_3205#PolymorphicMapType_6149| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_3204_9018) ) (!  (not (select (|PolymorphicMapType_6149_3204_9018#PolymorphicMapType_6149| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_3204_9018#PolymorphicMapType_6149| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_3204_9006) ) (!  (not (select (|PolymorphicMapType_6149_3204_21660#PolymorphicMapType_6149| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_3204_21660#PolymorphicMapType_6149| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3204_1199) ) (!  (not (select (|PolymorphicMapType_6149_3204_1199#PolymorphicMapType_6149| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_3204_1199#PolymorphicMapType_6149| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5660_53) ) (!  (not (select (|PolymorphicMapType_6149_3204_53#PolymorphicMapType_6149| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_3204_53#PolymorphicMapType_6149| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5673_5674) ) (!  (not (select (|PolymorphicMapType_6149_3204_3205#PolymorphicMapType_6149| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6149_3204_3205#PolymorphicMapType_6149| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) (arg3@@1 Real) ) (! (= (getPredWandId_3166_1199 (wand arg1@@1 arg2@@1 arg3@@1)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) (arg3@@2 Real) ) (!  (not (IsPredicateField_3166_1199 (wand arg1@@2 arg2@@2 arg3@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg3@@3 Real) ) (!  (not (IsPredicateField_3177_3178 (|wand#ft| arg1@@3 arg2@@3 arg3@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_3208_3209 (P x))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5600) (x@@0 T@Ref) ) (! (|P#everUsed_3208| (P x@@0))
 :qid |stdinbpl.251:15|
 :skolemid |34|
 :pattern ( (|P#trigger_3208| Heap@@0 (P x@@0)))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) (arg3@@4 Real) ) (! (= (|wand#sm| arg1@@4 arg2@@4 arg3@@4) (WandMaskField_3177 (|wand#ft| arg1@@4 arg2@@4 arg3@@4)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_3177 (|wand#ft| arg1@@4 arg2@@4 arg3@@4)))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) (arg3@@5 Real) (arg1_2 T@Ref) (arg2_2 T@Ref) (arg3_2 Real) ) (!  (=> (= (wand arg1@@5 arg2@@5 arg3@@5) (wand arg1_2 arg2_2 arg3_2)) (and (= arg1@@5 arg1_2) (and (= arg2@@5 arg2_2) (= arg3@@5 arg3_2))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5) (wand arg1_2 arg2_2 arg3_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5600) (ExhaleHeap T@PolymorphicMapType_5600) (Mask@@0 T@PolymorphicMapType_5621) (pm_f_5 T@Field_9624_9625) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9624_9018 Mask@@0 null pm_f_5) (IsPredicateField_3208_3209 pm_f_5)) (= (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@1) null (PredicateMaskField_3208 pm_f_5)) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap) null (PredicateMaskField_3208 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_3208_3209 pm_f_5) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap) null (PredicateMaskField_3208 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5600) (ExhaleHeap@@0 T@PolymorphicMapType_5600) (Mask@@1 T@PolymorphicMapType_5621) (pm_f_5@@0 T@Field_9017_9018) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8988_9018 Mask@@1 null pm_f_5@@0) (IsPredicateField_3177_3178 pm_f_5@@0)) (= (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@2) null (PredicateMaskField_8988 pm_f_5@@0)) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@0) null (PredicateMaskField_8988 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3177_3178 pm_f_5@@0) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@0) null (PredicateMaskField_8988 pm_f_5@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5600) (ExhaleHeap@@1 T@PolymorphicMapType_5600) (Mask@@2 T@PolymorphicMapType_5621) (pm_f_5@@1 T@Field_3204_9018) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3204_9018 Mask@@2 null pm_f_5@@1) (IsPredicateField_3204_20045 pm_f_5@@1)) (= (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@3) null (PredicateMaskField_3204 pm_f_5@@1)) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@1) null (PredicateMaskField_3204 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3204_20045 pm_f_5@@1) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@1) null (PredicateMaskField_3204 pm_f_5@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5600) (ExhaleHeap@@2 T@PolymorphicMapType_5600) (Mask@@3 T@PolymorphicMapType_5621) (pm_f_5@@2 T@Field_9624_9625) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_9624_9018 Mask@@3 null pm_f_5@@2) (IsWandField_9624_25731 pm_f_5@@2)) (= (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@4) null (WandMaskField_9624 pm_f_5@@2)) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@2) null (WandMaskField_9624 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_9624_25731 pm_f_5@@2) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@2) null (WandMaskField_9624 pm_f_5@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5600) (ExhaleHeap@@3 T@PolymorphicMapType_5600) (Mask@@4 T@PolymorphicMapType_5621) (pm_f_5@@3 T@Field_9017_9018) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8988_9018 Mask@@4 null pm_f_5@@3) (IsWandField_3177_3178 pm_f_5@@3)) (= (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@5) null (WandMaskField_3177 pm_f_5@@3)) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@3) null (WandMaskField_3177 pm_f_5@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsWandField_3177_3178 pm_f_5@@3) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@3) null (WandMaskField_3177 pm_f_5@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5600) (ExhaleHeap@@4 T@PolymorphicMapType_5600) (Mask@@5 T@PolymorphicMapType_5621) (pm_f_5@@4 T@Field_3204_9018) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3204_9018 Mask@@5 null pm_f_5@@4) (IsWandField_3204_25049 pm_f_5@@4)) (= (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@6) null (WandMaskField_3204 pm_f_5@@4)) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@4) null (WandMaskField_3204 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_3204_25049 pm_f_5@@4) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@4) null (WandMaskField_3204 pm_f_5@@4)))
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
(assert (forall ((Heap@@7 T@PolymorphicMapType_5600) (ExhaleHeap@@5 T@PolymorphicMapType_5600) (Mask@@6 T@PolymorphicMapType_5621) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@7) o_12 $allocated) (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@5) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@5) o_12 $allocated))
)))
(assert (forall ((p T@Field_9624_9625) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9624_9624 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9624_9624 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9017_9018) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8988_8988 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8988_8988 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_3204_9018) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_5660_5660 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5660_5660 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_3204_3205 f_7)))
(assert  (not (IsWandField_3204_3205 f_7)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5600) (ExhaleHeap@@6 T@PolymorphicMapType_5600) (Mask@@7 T@PolymorphicMapType_5621) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@8 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5621) (o_2@@14 T@Ref) (f_4@@14 T@Field_9001_9006) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3166_36035 f_4@@14))) (not (IsWandField_3166_36051 f_4@@14))) (<= (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5621) (o_2@@15 T@Ref) (f_4@@15 T@Field_8988_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3166_53 f_4@@15))) (not (IsWandField_3166_53 f_4@@15))) (<= (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5621) (o_2@@16 T@Ref) (f_4@@16 T@Field_8988_1199) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3166_1199 f_4@@16))) (not (IsWandField_3166_1199 f_4@@16))) (<= (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5621) (o_2@@17 T@Ref) (f_4@@17 T@Field_9017_9018) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3177_3178 f_4@@17))) (not (IsWandField_3177_3178 f_4@@17))) (<= (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5621) (o_2@@18 T@Ref) (f_4@@18 T@Field_8988_3205) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3166_3205 f_4@@18))) (not (IsWandField_3166_3205 f_4@@18))) (<= (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5621) (o_2@@19 T@Ref) (f_4@@19 T@Field_9637_9642) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3208_35218 f_4@@19))) (not (IsWandField_3208_35234 f_4@@19))) (<= (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5621) (o_2@@20 T@Ref) (f_4@@20 T@Field_9624_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3208_53 f_4@@20))) (not (IsWandField_3208_53 f_4@@20))) (<= (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5621) (o_2@@21 T@Ref) (f_4@@21 T@Field_9624_1199) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3208_1199 f_4@@21))) (not (IsWandField_3208_1199 f_4@@21))) (<= (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5621) (o_2@@22 T@Ref) (f_4@@22 T@Field_9624_9625) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3208_3209 f_4@@22))) (not (IsWandField_9624_25731 f_4@@22))) (<= (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5621) (o_2@@23 T@Ref) (f_4@@23 T@Field_9624_3205) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3208_3205 f_4@@23))) (not (IsWandField_3208_3205 f_4@@23))) (<= (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5621) (o_2@@24 T@Ref) (f_4@@24 T@Field_3204_9006) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3204_34387 f_4@@24))) (not (IsWandField_3204_34403 f_4@@24))) (<= (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5621) (o_2@@25 T@Ref) (f_4@@25 T@Field_5660_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3204_53 f_4@@25))) (not (IsWandField_3204_53 f_4@@25))) (<= (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5621) (o_2@@26 T@Ref) (f_4@@26 T@Field_3204_1199) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3204_1199 f_4@@26))) (not (IsWandField_3204_1199 f_4@@26))) (<= (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5621) (o_2@@27 T@Ref) (f_4@@27 T@Field_3204_9018) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3204_20045 f_4@@27))) (not (IsWandField_3204_25049 f_4@@27))) (<= (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5621) (o_2@@28 T@Ref) (f_4@@28 T@Field_5673_5674) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_3204_3205 f_4@@28))) (not (IsWandField_3204_3205 f_4@@28))) (<= (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5621) (o_2@@29 T@Ref) (f_4@@29 T@Field_9624_9625) ) (! (= (HasDirectPerm_9624_9018 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9624_9018 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5621) (o_2@@30 T@Ref) (f_4@@30 T@Field_9637_9642) ) (! (= (HasDirectPerm_9624_19589 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9624_19589 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5621) (o_2@@31 T@Ref) (f_4@@31 T@Field_9624_1199) ) (! (= (HasDirectPerm_9624_1199 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9624_1199 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5621) (o_2@@32 T@Ref) (f_4@@32 T@Field_9624_53) ) (! (= (HasDirectPerm_9624_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9624_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_5621) (o_2@@33 T@Ref) (f_4@@33 T@Field_9624_3205) ) (! (= (HasDirectPerm_9624_3205 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9624_3205 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_5621) (o_2@@34 T@Ref) (f_4@@34 T@Field_9017_9018) ) (! (= (HasDirectPerm_8988_9018 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8988_9018 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_5621) (o_2@@35 T@Ref) (f_4@@35 T@Field_9001_9006) ) (! (= (HasDirectPerm_8988_18454 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8988_18454 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_5621) (o_2@@36 T@Ref) (f_4@@36 T@Field_8988_1199) ) (! (= (HasDirectPerm_8988_1199 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8988_1199 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_5621) (o_2@@37 T@Ref) (f_4@@37 T@Field_8988_53) ) (! (= (HasDirectPerm_8988_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8988_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_5621) (o_2@@38 T@Ref) (f_4@@38 T@Field_8988_3205) ) (! (= (HasDirectPerm_8988_3205 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8988_3205 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_5621) (o_2@@39 T@Ref) (f_4@@39 T@Field_3204_9018) ) (! (= (HasDirectPerm_3204_9018 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3204_9018 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_5621) (o_2@@40 T@Ref) (f_4@@40 T@Field_3204_9006) ) (! (= (HasDirectPerm_3204_17276 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3204_17276 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_5621) (o_2@@41 T@Ref) (f_4@@41 T@Field_3204_1199) ) (! (= (HasDirectPerm_3204_1199 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3204_1199 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_5621) (o_2@@42 T@Ref) (f_4@@42 T@Field_5660_53) ) (! (= (HasDirectPerm_3204_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3204_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_5621) (o_2@@43 T@Ref) (f_4@@43 T@Field_5673_5674) ) (! (= (HasDirectPerm_3204_3205 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3204_3205 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5600) (ExhaleHeap@@7 T@PolymorphicMapType_5600) (Mask@@38 T@PolymorphicMapType_5621) (o_12@@0 T@Ref) (f_16 T@Field_9624_9625) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_9624_9018 Mask@@38 o_12@@0 f_16) (= (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@9) o_12@@0 f_16) (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@7) o_12@@0 f_16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@7) o_12@@0 f_16))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5600) (ExhaleHeap@@8 T@PolymorphicMapType_5600) (Mask@@39 T@PolymorphicMapType_5621) (o_12@@1 T@Ref) (f_16@@0 T@Field_9637_9642) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_9624_19589 Mask@@39 o_12@@1 f_16@@0) (= (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@10) o_12@@1 f_16@@0) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@8) o_12@@1 f_16@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@8) o_12@@1 f_16@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5600) (ExhaleHeap@@9 T@PolymorphicMapType_5600) (Mask@@40 T@PolymorphicMapType_5621) (o_12@@2 T@Ref) (f_16@@1 T@Field_9624_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_9624_1199 Mask@@40 o_12@@2 f_16@@1) (= (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@11) o_12@@2 f_16@@1) (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@9) o_12@@2 f_16@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@9) o_12@@2 f_16@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5600) (ExhaleHeap@@10 T@PolymorphicMapType_5600) (Mask@@41 T@PolymorphicMapType_5621) (o_12@@3 T@Ref) (f_16@@2 T@Field_9624_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_9624_53 Mask@@41 o_12@@3 f_16@@2) (= (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@12) o_12@@3 f_16@@2) (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@10) o_12@@3 f_16@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@10) o_12@@3 f_16@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5600) (ExhaleHeap@@11 T@PolymorphicMapType_5600) (Mask@@42 T@PolymorphicMapType_5621) (o_12@@4 T@Ref) (f_16@@3 T@Field_9624_3205) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_9624_3205 Mask@@42 o_12@@4 f_16@@3) (= (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@13) o_12@@4 f_16@@3) (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@11) o_12@@4 f_16@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@11) o_12@@4 f_16@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5600) (ExhaleHeap@@12 T@PolymorphicMapType_5600) (Mask@@43 T@PolymorphicMapType_5621) (o_12@@5 T@Ref) (f_16@@4 T@Field_9017_9018) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_8988_9018 Mask@@43 o_12@@5 f_16@@4) (= (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@14) o_12@@5 f_16@@4) (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@12) o_12@@5 f_16@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@12) o_12@@5 f_16@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5600) (ExhaleHeap@@13 T@PolymorphicMapType_5600) (Mask@@44 T@PolymorphicMapType_5621) (o_12@@6 T@Ref) (f_16@@5 T@Field_9001_9006) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_8988_18454 Mask@@44 o_12@@6 f_16@@5) (= (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@15) o_12@@6 f_16@@5) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@13) o_12@@6 f_16@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@13) o_12@@6 f_16@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5600) (ExhaleHeap@@14 T@PolymorphicMapType_5600) (Mask@@45 T@PolymorphicMapType_5621) (o_12@@7 T@Ref) (f_16@@6 T@Field_8988_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_8988_1199 Mask@@45 o_12@@7 f_16@@6) (= (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@16) o_12@@7 f_16@@6) (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@14) o_12@@7 f_16@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@14) o_12@@7 f_16@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5600) (ExhaleHeap@@15 T@PolymorphicMapType_5600) (Mask@@46 T@PolymorphicMapType_5621) (o_12@@8 T@Ref) (f_16@@7 T@Field_8988_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_8988_53 Mask@@46 o_12@@8 f_16@@7) (= (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@17) o_12@@8 f_16@@7) (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@15) o_12@@8 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@15) o_12@@8 f_16@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5600) (ExhaleHeap@@16 T@PolymorphicMapType_5600) (Mask@@47 T@PolymorphicMapType_5621) (o_12@@9 T@Ref) (f_16@@8 T@Field_8988_3205) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_8988_3205 Mask@@47 o_12@@9 f_16@@8) (= (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@18) o_12@@9 f_16@@8) (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@16) o_12@@9 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@16) o_12@@9 f_16@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5600) (ExhaleHeap@@17 T@PolymorphicMapType_5600) (Mask@@48 T@PolymorphicMapType_5621) (o_12@@10 T@Ref) (f_16@@9 T@Field_3204_9018) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_3204_9018 Mask@@48 o_12@@10 f_16@@9) (= (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@19) o_12@@10 f_16@@9) (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@17) o_12@@10 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@17) o_12@@10 f_16@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5600) (ExhaleHeap@@18 T@PolymorphicMapType_5600) (Mask@@49 T@PolymorphicMapType_5621) (o_12@@11 T@Ref) (f_16@@10 T@Field_3204_9006) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_3204_17276 Mask@@49 o_12@@11 f_16@@10) (= (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@20) o_12@@11 f_16@@10) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@18) o_12@@11 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@18) o_12@@11 f_16@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5600) (ExhaleHeap@@19 T@PolymorphicMapType_5600) (Mask@@50 T@PolymorphicMapType_5621) (o_12@@12 T@Ref) (f_16@@11 T@Field_3204_1199) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_3204_1199 Mask@@50 o_12@@12 f_16@@11) (= (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@21) o_12@@12 f_16@@11) (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@19) o_12@@12 f_16@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@19) o_12@@12 f_16@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5600) (ExhaleHeap@@20 T@PolymorphicMapType_5600) (Mask@@51 T@PolymorphicMapType_5621) (o_12@@13 T@Ref) (f_16@@12 T@Field_5660_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_3204_53 Mask@@51 o_12@@13 f_16@@12) (= (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@22) o_12@@13 f_16@@12) (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@20) o_12@@13 f_16@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@20) o_12@@13 f_16@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5600) (ExhaleHeap@@21 T@PolymorphicMapType_5600) (Mask@@52 T@PolymorphicMapType_5621) (o_12@@14 T@Ref) (f_16@@13 T@Field_5673_5674) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_3204_3205 Mask@@52 o_12@@14 f_16@@13) (= (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@23) o_12@@14 f_16@@13) (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@21) o_12@@14 f_16@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@21) o_12@@14 f_16@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_9001_9006) ) (! (= (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_8988_53) ) (! (= (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_8988_1199) ) (! (= (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_9017_9018) ) (! (= (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_8988_3205) ) (! (= (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_9637_9642) ) (! (= (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_9624_53) ) (! (= (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_9624_1199) ) (! (= (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_9624_9625) ) (! (= (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_9624_3205) ) (! (= (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_3204_9006) ) (! (= (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_5660_53) ) (! (= (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_3204_1199) ) (! (= (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_3204_9018) ) (! (= (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_5673_5674) ) (! (= (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5621) (SummandMask1 T@PolymorphicMapType_5621) (SummandMask2 T@PolymorphicMapType_5621) (o_2@@59 T@Ref) (f_4@@59 T@Field_9001_9006) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5621) (SummandMask1@@0 T@PolymorphicMapType_5621) (SummandMask2@@0 T@PolymorphicMapType_5621) (o_2@@60 T@Ref) (f_4@@60 T@Field_8988_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5621) (SummandMask1@@1 T@PolymorphicMapType_5621) (SummandMask2@@1 T@PolymorphicMapType_5621) (o_2@@61 T@Ref) (f_4@@61 T@Field_8988_1199) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5621) (SummandMask1@@2 T@PolymorphicMapType_5621) (SummandMask2@@2 T@PolymorphicMapType_5621) (o_2@@62 T@Ref) (f_4@@62 T@Field_9017_9018) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5621) (SummandMask1@@3 T@PolymorphicMapType_5621) (SummandMask2@@3 T@PolymorphicMapType_5621) (o_2@@63 T@Ref) (f_4@@63 T@Field_8988_3205) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5621) (SummandMask1@@4 T@PolymorphicMapType_5621) (SummandMask2@@4 T@PolymorphicMapType_5621) (o_2@@64 T@Ref) (f_4@@64 T@Field_9637_9642) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5621) (SummandMask1@@5 T@PolymorphicMapType_5621) (SummandMask2@@5 T@PolymorphicMapType_5621) (o_2@@65 T@Ref) (f_4@@65 T@Field_9624_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5621) (SummandMask1@@6 T@PolymorphicMapType_5621) (SummandMask2@@6 T@PolymorphicMapType_5621) (o_2@@66 T@Ref) (f_4@@66 T@Field_9624_1199) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_5621) (SummandMask1@@7 T@PolymorphicMapType_5621) (SummandMask2@@7 T@PolymorphicMapType_5621) (o_2@@67 T@Ref) (f_4@@67 T@Field_9624_9625) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_5621) (SummandMask1@@8 T@PolymorphicMapType_5621) (SummandMask2@@8 T@PolymorphicMapType_5621) (o_2@@68 T@Ref) (f_4@@68 T@Field_9624_3205) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_5621) (SummandMask1@@9 T@PolymorphicMapType_5621) (SummandMask2@@9 T@PolymorphicMapType_5621) (o_2@@69 T@Ref) (f_4@@69 T@Field_3204_9006) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_5621) (SummandMask1@@10 T@PolymorphicMapType_5621) (SummandMask2@@10 T@PolymorphicMapType_5621) (o_2@@70 T@Ref) (f_4@@70 T@Field_5660_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_5621) (SummandMask1@@11 T@PolymorphicMapType_5621) (SummandMask2@@11 T@PolymorphicMapType_5621) (o_2@@71 T@Ref) (f_4@@71 T@Field_3204_1199) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_5621) (SummandMask1@@12 T@PolymorphicMapType_5621) (SummandMask2@@12 T@PolymorphicMapType_5621) (o_2@@72 T@Ref) (f_4@@72 T@Field_3204_9018) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_5621) (SummandMask1@@13 T@PolymorphicMapType_5621) (SummandMask2@@13 T@PolymorphicMapType_5621) (o_2@@73 T@Ref) (f_4@@73 T@Field_5673_5674) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5600) (ExhaleHeap@@22 T@PolymorphicMapType_5600) (Mask@@53 T@PolymorphicMapType_5621) (pm_f_5@@5 T@Field_9624_9625) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_9624_9018 Mask@@53 null pm_f_5@@5) (IsPredicateField_3208_3209 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16@@14 T@Field_5673_5674) ) (!  (=> (select (|PolymorphicMapType_6149_3204_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5 f_16@@14) (= (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@24) o2_5 f_16@@14) (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5 f_16@@14))
)) (forall ((o2_5@@0 T@Ref) (f_16@@15 T@Field_5660_53) ) (!  (=> (select (|PolymorphicMapType_6149_3204_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@0 f_16@@15) (= (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@24) o2_5@@0 f_16@@15) (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@0 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@0 f_16@@15))
))) (forall ((o2_5@@1 T@Ref) (f_16@@16 T@Field_3204_1199) ) (!  (=> (select (|PolymorphicMapType_6149_3204_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@1 f_16@@16) (= (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@24) o2_5@@1 f_16@@16) (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@1 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@1 f_16@@16))
))) (forall ((o2_5@@2 T@Ref) (f_16@@17 T@Field_3204_9006) ) (!  (=> (select (|PolymorphicMapType_6149_3204_21660#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@2 f_16@@17) (= (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@24) o2_5@@2 f_16@@17) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@2 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@2 f_16@@17))
))) (forall ((o2_5@@3 T@Ref) (f_16@@18 T@Field_3204_9018) ) (!  (=> (select (|PolymorphicMapType_6149_3204_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@3 f_16@@18) (= (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@24) o2_5@@3 f_16@@18) (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@3 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@3 f_16@@18))
))) (forall ((o2_5@@4 T@Ref) (f_16@@19 T@Field_8988_3205) ) (!  (=> (select (|PolymorphicMapType_6149_8988_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@4 f_16@@19) (= (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@24) o2_5@@4 f_16@@19) (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@4 f_16@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@4 f_16@@19))
))) (forall ((o2_5@@5 T@Ref) (f_16@@20 T@Field_8988_53) ) (!  (=> (select (|PolymorphicMapType_6149_8988_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@5 f_16@@20) (= (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@24) o2_5@@5 f_16@@20) (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@5 f_16@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@5 f_16@@20))
))) (forall ((o2_5@@6 T@Ref) (f_16@@21 T@Field_8988_1199) ) (!  (=> (select (|PolymorphicMapType_6149_8988_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@6 f_16@@21) (= (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@24) o2_5@@6 f_16@@21) (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@6 f_16@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@6 f_16@@21))
))) (forall ((o2_5@@7 T@Ref) (f_16@@22 T@Field_9001_9006) ) (!  (=> (select (|PolymorphicMapType_6149_8988_22708#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@7 f_16@@22) (= (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@24) o2_5@@7 f_16@@22) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@7 f_16@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@7 f_16@@22))
))) (forall ((o2_5@@8 T@Ref) (f_16@@23 T@Field_9017_9018) ) (!  (=> (select (|PolymorphicMapType_6149_8988_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@8 f_16@@23) (= (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@24) o2_5@@8 f_16@@23) (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@8 f_16@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@8 f_16@@23))
))) (forall ((o2_5@@9 T@Ref) (f_16@@24 T@Field_9624_3205) ) (!  (=> (select (|PolymorphicMapType_6149_9624_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@9 f_16@@24) (= (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@24) o2_5@@9 f_16@@24) (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@9 f_16@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@9 f_16@@24))
))) (forall ((o2_5@@10 T@Ref) (f_16@@25 T@Field_9624_53) ) (!  (=> (select (|PolymorphicMapType_6149_9624_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@10 f_16@@25) (= (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@24) o2_5@@10 f_16@@25) (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@10 f_16@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@10 f_16@@25))
))) (forall ((o2_5@@11 T@Ref) (f_16@@26 T@Field_9624_1199) ) (!  (=> (select (|PolymorphicMapType_6149_9624_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@11 f_16@@26) (= (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@24) o2_5@@11 f_16@@26) (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@11 f_16@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@11 f_16@@26))
))) (forall ((o2_5@@12 T@Ref) (f_16@@27 T@Field_9637_9642) ) (!  (=> (select (|PolymorphicMapType_6149_9624_23756#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@12 f_16@@27) (= (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) o2_5@@12 f_16@@27) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@12 f_16@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@12 f_16@@27))
))) (forall ((o2_5@@13 T@Ref) (f_16@@28 T@Field_9624_9625) ) (!  (=> (select (|PolymorphicMapType_6149_9624_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@24) null (PredicateMaskField_3208 pm_f_5@@5))) o2_5@@13 f_16@@28) (= (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@24) o2_5@@13 f_16@@28) (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@13 f_16@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@22) o2_5@@13 f_16@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (IsPredicateField_3208_3209 pm_f_5@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5600) (ExhaleHeap@@23 T@PolymorphicMapType_5600) (Mask@@54 T@PolymorphicMapType_5621) (pm_f_5@@6 T@Field_9017_9018) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_8988_9018 Mask@@54 null pm_f_5@@6) (IsPredicateField_3177_3178 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@14 T@Ref) (f_16@@29 T@Field_5673_5674) ) (!  (=> (select (|PolymorphicMapType_6149_3204_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@14 f_16@@29) (= (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@25) o2_5@@14 f_16@@29) (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@14 f_16@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@14 f_16@@29))
)) (forall ((o2_5@@15 T@Ref) (f_16@@30 T@Field_5660_53) ) (!  (=> (select (|PolymorphicMapType_6149_3204_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@15 f_16@@30) (= (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@25) o2_5@@15 f_16@@30) (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@15 f_16@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@15 f_16@@30))
))) (forall ((o2_5@@16 T@Ref) (f_16@@31 T@Field_3204_1199) ) (!  (=> (select (|PolymorphicMapType_6149_3204_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@16 f_16@@31) (= (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@25) o2_5@@16 f_16@@31) (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@16 f_16@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@16 f_16@@31))
))) (forall ((o2_5@@17 T@Ref) (f_16@@32 T@Field_3204_9006) ) (!  (=> (select (|PolymorphicMapType_6149_3204_21660#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@17 f_16@@32) (= (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@25) o2_5@@17 f_16@@32) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@17 f_16@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@17 f_16@@32))
))) (forall ((o2_5@@18 T@Ref) (f_16@@33 T@Field_3204_9018) ) (!  (=> (select (|PolymorphicMapType_6149_3204_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@18 f_16@@33) (= (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@25) o2_5@@18 f_16@@33) (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@18 f_16@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@18 f_16@@33))
))) (forall ((o2_5@@19 T@Ref) (f_16@@34 T@Field_8988_3205) ) (!  (=> (select (|PolymorphicMapType_6149_8988_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@19 f_16@@34) (= (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@25) o2_5@@19 f_16@@34) (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@19 f_16@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@19 f_16@@34))
))) (forall ((o2_5@@20 T@Ref) (f_16@@35 T@Field_8988_53) ) (!  (=> (select (|PolymorphicMapType_6149_8988_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@20 f_16@@35) (= (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@25) o2_5@@20 f_16@@35) (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@20 f_16@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@20 f_16@@35))
))) (forall ((o2_5@@21 T@Ref) (f_16@@36 T@Field_8988_1199) ) (!  (=> (select (|PolymorphicMapType_6149_8988_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@21 f_16@@36) (= (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@25) o2_5@@21 f_16@@36) (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@21 f_16@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@21 f_16@@36))
))) (forall ((o2_5@@22 T@Ref) (f_16@@37 T@Field_9001_9006) ) (!  (=> (select (|PolymorphicMapType_6149_8988_22708#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@22 f_16@@37) (= (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) o2_5@@22 f_16@@37) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@22 f_16@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@22 f_16@@37))
))) (forall ((o2_5@@23 T@Ref) (f_16@@38 T@Field_9017_9018) ) (!  (=> (select (|PolymorphicMapType_6149_8988_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@23 f_16@@38) (= (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@25) o2_5@@23 f_16@@38) (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@23 f_16@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@23 f_16@@38))
))) (forall ((o2_5@@24 T@Ref) (f_16@@39 T@Field_9624_3205) ) (!  (=> (select (|PolymorphicMapType_6149_9624_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@24 f_16@@39) (= (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@25) o2_5@@24 f_16@@39) (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@24 f_16@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@24 f_16@@39))
))) (forall ((o2_5@@25 T@Ref) (f_16@@40 T@Field_9624_53) ) (!  (=> (select (|PolymorphicMapType_6149_9624_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@25 f_16@@40) (= (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@25) o2_5@@25 f_16@@40) (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@25 f_16@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@25 f_16@@40))
))) (forall ((o2_5@@26 T@Ref) (f_16@@41 T@Field_9624_1199) ) (!  (=> (select (|PolymorphicMapType_6149_9624_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@26 f_16@@41) (= (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@25) o2_5@@26 f_16@@41) (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@26 f_16@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@26 f_16@@41))
))) (forall ((o2_5@@27 T@Ref) (f_16@@42 T@Field_9637_9642) ) (!  (=> (select (|PolymorphicMapType_6149_9624_23756#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@27 f_16@@42) (= (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@25) o2_5@@27 f_16@@42) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@27 f_16@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@27 f_16@@42))
))) (forall ((o2_5@@28 T@Ref) (f_16@@43 T@Field_9624_9625) ) (!  (=> (select (|PolymorphicMapType_6149_9624_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@25) null (PredicateMaskField_8988 pm_f_5@@6))) o2_5@@28 f_16@@43) (= (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@25) o2_5@@28 f_16@@43) (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@28 f_16@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@23) o2_5@@28 f_16@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (IsPredicateField_3177_3178 pm_f_5@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5600) (ExhaleHeap@@24 T@PolymorphicMapType_5600) (Mask@@55 T@PolymorphicMapType_5621) (pm_f_5@@7 T@Field_3204_9018) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_3204_9018 Mask@@55 null pm_f_5@@7) (IsPredicateField_3204_20045 pm_f_5@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@44 T@Field_5673_5674) ) (!  (=> (select (|PolymorphicMapType_6149_3204_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@29 f_16@@44) (= (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@26) o2_5@@29 f_16@@44) (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@29 f_16@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@29 f_16@@44))
)) (forall ((o2_5@@30 T@Ref) (f_16@@45 T@Field_5660_53) ) (!  (=> (select (|PolymorphicMapType_6149_3204_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@30 f_16@@45) (= (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@26) o2_5@@30 f_16@@45) (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@30 f_16@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@30 f_16@@45))
))) (forall ((o2_5@@31 T@Ref) (f_16@@46 T@Field_3204_1199) ) (!  (=> (select (|PolymorphicMapType_6149_3204_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@31 f_16@@46) (= (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@26) o2_5@@31 f_16@@46) (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@31 f_16@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@31 f_16@@46))
))) (forall ((o2_5@@32 T@Ref) (f_16@@47 T@Field_3204_9006) ) (!  (=> (select (|PolymorphicMapType_6149_3204_21660#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@32 f_16@@47) (= (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) o2_5@@32 f_16@@47) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@32 f_16@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@32 f_16@@47))
))) (forall ((o2_5@@33 T@Ref) (f_16@@48 T@Field_3204_9018) ) (!  (=> (select (|PolymorphicMapType_6149_3204_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@33 f_16@@48) (= (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@26) o2_5@@33 f_16@@48) (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@33 f_16@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@33 f_16@@48))
))) (forall ((o2_5@@34 T@Ref) (f_16@@49 T@Field_8988_3205) ) (!  (=> (select (|PolymorphicMapType_6149_8988_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@34 f_16@@49) (= (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@26) o2_5@@34 f_16@@49) (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@34 f_16@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@34 f_16@@49))
))) (forall ((o2_5@@35 T@Ref) (f_16@@50 T@Field_8988_53) ) (!  (=> (select (|PolymorphicMapType_6149_8988_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@35 f_16@@50) (= (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@26) o2_5@@35 f_16@@50) (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@35 f_16@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@35 f_16@@50))
))) (forall ((o2_5@@36 T@Ref) (f_16@@51 T@Field_8988_1199) ) (!  (=> (select (|PolymorphicMapType_6149_8988_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@36 f_16@@51) (= (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@26) o2_5@@36 f_16@@51) (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@36 f_16@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@36 f_16@@51))
))) (forall ((o2_5@@37 T@Ref) (f_16@@52 T@Field_9001_9006) ) (!  (=> (select (|PolymorphicMapType_6149_8988_22708#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@37 f_16@@52) (= (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@26) o2_5@@37 f_16@@52) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@37 f_16@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@37 f_16@@52))
))) (forall ((o2_5@@38 T@Ref) (f_16@@53 T@Field_9017_9018) ) (!  (=> (select (|PolymorphicMapType_6149_8988_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@38 f_16@@53) (= (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@26) o2_5@@38 f_16@@53) (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@38 f_16@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@38 f_16@@53))
))) (forall ((o2_5@@39 T@Ref) (f_16@@54 T@Field_9624_3205) ) (!  (=> (select (|PolymorphicMapType_6149_9624_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@39 f_16@@54) (= (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@26) o2_5@@39 f_16@@54) (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@39 f_16@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@39 f_16@@54))
))) (forall ((o2_5@@40 T@Ref) (f_16@@55 T@Field_9624_53) ) (!  (=> (select (|PolymorphicMapType_6149_9624_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@40 f_16@@55) (= (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@26) o2_5@@40 f_16@@55) (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@40 f_16@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@40 f_16@@55))
))) (forall ((o2_5@@41 T@Ref) (f_16@@56 T@Field_9624_1199) ) (!  (=> (select (|PolymorphicMapType_6149_9624_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@41 f_16@@56) (= (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@26) o2_5@@41 f_16@@56) (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@41 f_16@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@41 f_16@@56))
))) (forall ((o2_5@@42 T@Ref) (f_16@@57 T@Field_9637_9642) ) (!  (=> (select (|PolymorphicMapType_6149_9624_23756#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@42 f_16@@57) (= (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@26) o2_5@@42 f_16@@57) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@42 f_16@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@42 f_16@@57))
))) (forall ((o2_5@@43 T@Ref) (f_16@@58 T@Field_9624_9625) ) (!  (=> (select (|PolymorphicMapType_6149_9624_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@26) null (PredicateMaskField_3204 pm_f_5@@7))) o2_5@@43 f_16@@58) (= (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@26) o2_5@@43 f_16@@58) (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@43 f_16@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@24) o2_5@@43 f_16@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (IsPredicateField_3204_20045 pm_f_5@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5600) (ExhaleHeap@@25 T@PolymorphicMapType_5600) (Mask@@56 T@PolymorphicMapType_5621) (pm_f_5@@8 T@Field_9624_9625) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_9624_9018 Mask@@56 null pm_f_5@@8) (IsWandField_9624_25731 pm_f_5@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@44 T@Ref) (f_16@@59 T@Field_5673_5674) ) (!  (=> (select (|PolymorphicMapType_6149_3204_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@44 f_16@@59) (= (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@27) o2_5@@44 f_16@@59) (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@44 f_16@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@44 f_16@@59))
)) (forall ((o2_5@@45 T@Ref) (f_16@@60 T@Field_5660_53) ) (!  (=> (select (|PolymorphicMapType_6149_3204_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@45 f_16@@60) (= (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@27) o2_5@@45 f_16@@60) (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@45 f_16@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@45 f_16@@60))
))) (forall ((o2_5@@46 T@Ref) (f_16@@61 T@Field_3204_1199) ) (!  (=> (select (|PolymorphicMapType_6149_3204_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@46 f_16@@61) (= (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@27) o2_5@@46 f_16@@61) (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@46 f_16@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@46 f_16@@61))
))) (forall ((o2_5@@47 T@Ref) (f_16@@62 T@Field_3204_9006) ) (!  (=> (select (|PolymorphicMapType_6149_3204_21660#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@47 f_16@@62) (= (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@27) o2_5@@47 f_16@@62) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@47 f_16@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@47 f_16@@62))
))) (forall ((o2_5@@48 T@Ref) (f_16@@63 T@Field_3204_9018) ) (!  (=> (select (|PolymorphicMapType_6149_3204_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@48 f_16@@63) (= (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@27) o2_5@@48 f_16@@63) (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@48 f_16@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@48 f_16@@63))
))) (forall ((o2_5@@49 T@Ref) (f_16@@64 T@Field_8988_3205) ) (!  (=> (select (|PolymorphicMapType_6149_8988_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@49 f_16@@64) (= (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@27) o2_5@@49 f_16@@64) (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@49 f_16@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@49 f_16@@64))
))) (forall ((o2_5@@50 T@Ref) (f_16@@65 T@Field_8988_53) ) (!  (=> (select (|PolymorphicMapType_6149_8988_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@50 f_16@@65) (= (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@27) o2_5@@50 f_16@@65) (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@50 f_16@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@50 f_16@@65))
))) (forall ((o2_5@@51 T@Ref) (f_16@@66 T@Field_8988_1199) ) (!  (=> (select (|PolymorphicMapType_6149_8988_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@51 f_16@@66) (= (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@27) o2_5@@51 f_16@@66) (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@51 f_16@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@51 f_16@@66))
))) (forall ((o2_5@@52 T@Ref) (f_16@@67 T@Field_9001_9006) ) (!  (=> (select (|PolymorphicMapType_6149_8988_22708#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@52 f_16@@67) (= (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@27) o2_5@@52 f_16@@67) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@52 f_16@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@52 f_16@@67))
))) (forall ((o2_5@@53 T@Ref) (f_16@@68 T@Field_9017_9018) ) (!  (=> (select (|PolymorphicMapType_6149_8988_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@53 f_16@@68) (= (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@27) o2_5@@53 f_16@@68) (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@53 f_16@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@53 f_16@@68))
))) (forall ((o2_5@@54 T@Ref) (f_16@@69 T@Field_9624_3205) ) (!  (=> (select (|PolymorphicMapType_6149_9624_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@54 f_16@@69) (= (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@27) o2_5@@54 f_16@@69) (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@54 f_16@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@54 f_16@@69))
))) (forall ((o2_5@@55 T@Ref) (f_16@@70 T@Field_9624_53) ) (!  (=> (select (|PolymorphicMapType_6149_9624_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@55 f_16@@70) (= (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@27) o2_5@@55 f_16@@70) (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@55 f_16@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@55 f_16@@70))
))) (forall ((o2_5@@56 T@Ref) (f_16@@71 T@Field_9624_1199) ) (!  (=> (select (|PolymorphicMapType_6149_9624_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@56 f_16@@71) (= (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@27) o2_5@@56 f_16@@71) (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@56 f_16@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@56 f_16@@71))
))) (forall ((o2_5@@57 T@Ref) (f_16@@72 T@Field_9637_9642) ) (!  (=> (select (|PolymorphicMapType_6149_9624_23756#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@57 f_16@@72) (= (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) o2_5@@57 f_16@@72) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@57 f_16@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@57 f_16@@72))
))) (forall ((o2_5@@58 T@Ref) (f_16@@73 T@Field_9624_9625) ) (!  (=> (select (|PolymorphicMapType_6149_9624_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@27) null (WandMaskField_9624 pm_f_5@@8))) o2_5@@58 f_16@@73) (= (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@27) o2_5@@58 f_16@@73) (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@58 f_16@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@25) o2_5@@58 f_16@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (IsWandField_9624_25731 pm_f_5@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5600) (ExhaleHeap@@26 T@PolymorphicMapType_5600) (Mask@@57 T@PolymorphicMapType_5621) (pm_f_5@@9 T@Field_9017_9018) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_8988_9018 Mask@@57 null pm_f_5@@9) (IsWandField_3177_3178 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_16@@74 T@Field_5673_5674) ) (!  (=> (select (|PolymorphicMapType_6149_3204_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@59 f_16@@74) (= (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@28) o2_5@@59 f_16@@74) (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@59 f_16@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@59 f_16@@74))
)) (forall ((o2_5@@60 T@Ref) (f_16@@75 T@Field_5660_53) ) (!  (=> (select (|PolymorphicMapType_6149_3204_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@60 f_16@@75) (= (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@28) o2_5@@60 f_16@@75) (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@60 f_16@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@60 f_16@@75))
))) (forall ((o2_5@@61 T@Ref) (f_16@@76 T@Field_3204_1199) ) (!  (=> (select (|PolymorphicMapType_6149_3204_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@61 f_16@@76) (= (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@28) o2_5@@61 f_16@@76) (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@61 f_16@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@61 f_16@@76))
))) (forall ((o2_5@@62 T@Ref) (f_16@@77 T@Field_3204_9006) ) (!  (=> (select (|PolymorphicMapType_6149_3204_21660#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@62 f_16@@77) (= (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@28) o2_5@@62 f_16@@77) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@62 f_16@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@62 f_16@@77))
))) (forall ((o2_5@@63 T@Ref) (f_16@@78 T@Field_3204_9018) ) (!  (=> (select (|PolymorphicMapType_6149_3204_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@63 f_16@@78) (= (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@28) o2_5@@63 f_16@@78) (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@63 f_16@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@63 f_16@@78))
))) (forall ((o2_5@@64 T@Ref) (f_16@@79 T@Field_8988_3205) ) (!  (=> (select (|PolymorphicMapType_6149_8988_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@64 f_16@@79) (= (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@28) o2_5@@64 f_16@@79) (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@64 f_16@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@64 f_16@@79))
))) (forall ((o2_5@@65 T@Ref) (f_16@@80 T@Field_8988_53) ) (!  (=> (select (|PolymorphicMapType_6149_8988_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@65 f_16@@80) (= (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@28) o2_5@@65 f_16@@80) (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@65 f_16@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@65 f_16@@80))
))) (forall ((o2_5@@66 T@Ref) (f_16@@81 T@Field_8988_1199) ) (!  (=> (select (|PolymorphicMapType_6149_8988_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@66 f_16@@81) (= (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@28) o2_5@@66 f_16@@81) (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@66 f_16@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@66 f_16@@81))
))) (forall ((o2_5@@67 T@Ref) (f_16@@82 T@Field_9001_9006) ) (!  (=> (select (|PolymorphicMapType_6149_8988_22708#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@67 f_16@@82) (= (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) o2_5@@67 f_16@@82) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@67 f_16@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@67 f_16@@82))
))) (forall ((o2_5@@68 T@Ref) (f_16@@83 T@Field_9017_9018) ) (!  (=> (select (|PolymorphicMapType_6149_8988_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@68 f_16@@83) (= (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@28) o2_5@@68 f_16@@83) (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@68 f_16@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@68 f_16@@83))
))) (forall ((o2_5@@69 T@Ref) (f_16@@84 T@Field_9624_3205) ) (!  (=> (select (|PolymorphicMapType_6149_9624_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@69 f_16@@84) (= (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@28) o2_5@@69 f_16@@84) (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@69 f_16@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@69 f_16@@84))
))) (forall ((o2_5@@70 T@Ref) (f_16@@85 T@Field_9624_53) ) (!  (=> (select (|PolymorphicMapType_6149_9624_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@70 f_16@@85) (= (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@28) o2_5@@70 f_16@@85) (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@70 f_16@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@70 f_16@@85))
))) (forall ((o2_5@@71 T@Ref) (f_16@@86 T@Field_9624_1199) ) (!  (=> (select (|PolymorphicMapType_6149_9624_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@71 f_16@@86) (= (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@28) o2_5@@71 f_16@@86) (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@71 f_16@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@71 f_16@@86))
))) (forall ((o2_5@@72 T@Ref) (f_16@@87 T@Field_9637_9642) ) (!  (=> (select (|PolymorphicMapType_6149_9624_23756#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@72 f_16@@87) (= (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@28) o2_5@@72 f_16@@87) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@72 f_16@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@72 f_16@@87))
))) (forall ((o2_5@@73 T@Ref) (f_16@@88 T@Field_9624_9625) ) (!  (=> (select (|PolymorphicMapType_6149_9624_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@28) null (WandMaskField_3177 pm_f_5@@9))) o2_5@@73 f_16@@88) (= (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@28) o2_5@@73 f_16@@88) (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@73 f_16@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@26) o2_5@@73 f_16@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (IsWandField_3177_3178 pm_f_5@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5600) (ExhaleHeap@@27 T@PolymorphicMapType_5600) (Mask@@58 T@PolymorphicMapType_5621) (pm_f_5@@10 T@Field_3204_9018) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_3204_9018 Mask@@58 null pm_f_5@@10) (IsWandField_3204_25049 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@74 T@Ref) (f_16@@89 T@Field_5673_5674) ) (!  (=> (select (|PolymorphicMapType_6149_3204_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@74 f_16@@89) (= (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@29) o2_5@@74 f_16@@89) (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@74 f_16@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@74 f_16@@89))
)) (forall ((o2_5@@75 T@Ref) (f_16@@90 T@Field_5660_53) ) (!  (=> (select (|PolymorphicMapType_6149_3204_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@75 f_16@@90) (= (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@29) o2_5@@75 f_16@@90) (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@75 f_16@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@75 f_16@@90))
))) (forall ((o2_5@@76 T@Ref) (f_16@@91 T@Field_3204_1199) ) (!  (=> (select (|PolymorphicMapType_6149_3204_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@76 f_16@@91) (= (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@29) o2_5@@76 f_16@@91) (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@76 f_16@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@76 f_16@@91))
))) (forall ((o2_5@@77 T@Ref) (f_16@@92 T@Field_3204_9006) ) (!  (=> (select (|PolymorphicMapType_6149_3204_21660#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@77 f_16@@92) (= (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) o2_5@@77 f_16@@92) (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@77 f_16@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@77 f_16@@92))
))) (forall ((o2_5@@78 T@Ref) (f_16@@93 T@Field_3204_9018) ) (!  (=> (select (|PolymorphicMapType_6149_3204_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@78 f_16@@93) (= (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@29) o2_5@@78 f_16@@93) (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@78 f_16@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@78 f_16@@93))
))) (forall ((o2_5@@79 T@Ref) (f_16@@94 T@Field_8988_3205) ) (!  (=> (select (|PolymorphicMapType_6149_8988_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@79 f_16@@94) (= (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@29) o2_5@@79 f_16@@94) (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@79 f_16@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@79 f_16@@94))
))) (forall ((o2_5@@80 T@Ref) (f_16@@95 T@Field_8988_53) ) (!  (=> (select (|PolymorphicMapType_6149_8988_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@80 f_16@@95) (= (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@29) o2_5@@80 f_16@@95) (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@80 f_16@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@80 f_16@@95))
))) (forall ((o2_5@@81 T@Ref) (f_16@@96 T@Field_8988_1199) ) (!  (=> (select (|PolymorphicMapType_6149_8988_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@81 f_16@@96) (= (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@29) o2_5@@81 f_16@@96) (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@81 f_16@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@81 f_16@@96))
))) (forall ((o2_5@@82 T@Ref) (f_16@@97 T@Field_9001_9006) ) (!  (=> (select (|PolymorphicMapType_6149_8988_22708#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@82 f_16@@97) (= (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@29) o2_5@@82 f_16@@97) (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@82 f_16@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@82 f_16@@97))
))) (forall ((o2_5@@83 T@Ref) (f_16@@98 T@Field_9017_9018) ) (!  (=> (select (|PolymorphicMapType_6149_8988_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@83 f_16@@98) (= (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@29) o2_5@@83 f_16@@98) (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@83 f_16@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@83 f_16@@98))
))) (forall ((o2_5@@84 T@Ref) (f_16@@99 T@Field_9624_3205) ) (!  (=> (select (|PolymorphicMapType_6149_9624_3205#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@84 f_16@@99) (= (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@29) o2_5@@84 f_16@@99) (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@84 f_16@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@84 f_16@@99))
))) (forall ((o2_5@@85 T@Ref) (f_16@@100 T@Field_9624_53) ) (!  (=> (select (|PolymorphicMapType_6149_9624_53#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@85 f_16@@100) (= (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@29) o2_5@@85 f_16@@100) (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@85 f_16@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@85 f_16@@100))
))) (forall ((o2_5@@86 T@Ref) (f_16@@101 T@Field_9624_1199) ) (!  (=> (select (|PolymorphicMapType_6149_9624_1199#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@86 f_16@@101) (= (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@29) o2_5@@86 f_16@@101) (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@86 f_16@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@86 f_16@@101))
))) (forall ((o2_5@@87 T@Ref) (f_16@@102 T@Field_9637_9642) ) (!  (=> (select (|PolymorphicMapType_6149_9624_23756#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@87 f_16@@102) (= (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@29) o2_5@@87 f_16@@102) (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@87 f_16@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@87 f_16@@102))
))) (forall ((o2_5@@88 T@Ref) (f_16@@103 T@Field_9624_9625) ) (!  (=> (select (|PolymorphicMapType_6149_9624_9018#PolymorphicMapType_6149| (select (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@29) null (WandMaskField_3204 pm_f_5@@10))) o2_5@@88 f_16@@103) (= (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@29) o2_5@@88 f_16@@103) (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@88 f_16@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| ExhaleHeap@@27) o2_5@@88 f_16@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (IsWandField_3204_25049 pm_f_5@@10))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_3208_3209 (P x@@3)) 0)
 :qid |stdinbpl.236:15|
 :skolemid |31|
 :pattern ( (P x@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5600) (o_11 T@Ref) (f_17 T@Field_8988_1199) (v Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@30) (store (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@30) o_11 f_17 v) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@30) (store (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@30) o_11 f_17 v) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@30) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5600) (o_11@@0 T@Ref) (f_17@@0 T@Field_9001_9006) (v@@0 T@PolymorphicMapType_6149) ) (! (succHeap Heap@@31 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@31) (store (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@31) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@31) (store (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@31) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@31) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5600) (o_11@@1 T@Ref) (f_17@@1 T@Field_9017_9018) (v@@1 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@32) (store (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@32) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@32) (store (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@32) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@32) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5600) (o_11@@2 T@Ref) (f_17@@2 T@Field_8988_3205) (v@@2 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@33) (store (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@33) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@33) (store (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@33) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@33) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5600) (o_11@@3 T@Ref) (f_17@@3 T@Field_8988_53) (v@@3 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@34) (store (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@34) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@34) (store (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@34) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@34) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5600) (o_11@@4 T@Ref) (f_17@@4 T@Field_9624_1199) (v@@4 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@35) (store (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@35) o_11@@4 f_17@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@35) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@35) (store (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@35) o_11@@4 f_17@@4 v@@4)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5600) (o_11@@5 T@Ref) (f_17@@5 T@Field_9637_9642) (v@@5 T@PolymorphicMapType_6149) ) (! (succHeap Heap@@36 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@36) (store (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@36) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@36) (store (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@36) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@36) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5600) (o_11@@6 T@Ref) (f_17@@6 T@Field_9624_9625) (v@@6 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@37) (store (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@37) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@37) (store (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@37) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@37) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5600) (o_11@@7 T@Ref) (f_17@@7 T@Field_9624_3205) (v@@7 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@38) (store (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@38) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@38) (store (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@38) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@38) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5600) (o_11@@8 T@Ref) (f_17@@8 T@Field_9624_53) (v@@8 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@39) (store (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@39) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@39) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@39) (store (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@39) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5600) (o_11@@9 T@Ref) (f_17@@9 T@Field_3204_1199) (v@@9 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@40) (store (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@40) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@40) (store (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@40) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@40) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5600) (o_11@@10 T@Ref) (f_17@@10 T@Field_3204_9006) (v@@10 T@PolymorphicMapType_6149) ) (! (succHeap Heap@@41 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@41) (store (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@41) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@41) (store (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@41) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@41) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5600) (o_11@@11 T@Ref) (f_17@@11 T@Field_3204_9018) (v@@11 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@42) (store (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@42) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@42) (store (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@42) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@42) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5600) (o_11@@12 T@Ref) (f_17@@12 T@Field_5673_5674) (v@@12 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@43) (store (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@43) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@43) (store (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@43) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@43) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_5600) (o_11@@13 T@Ref) (f_17@@13 T@Field_5660_53) (v@@13 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_5600 (store (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@44) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5600 (store (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@44) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3208_3209#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3171_13274#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3212_13393#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3204_1199#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3204_17318#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_3204_9018#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_8988_3205#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_8988_53#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_8988_1199#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_8988_9018#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_9624_3205#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_9624_53#PolymorphicMapType_5600| Heap@@44) (|PolymorphicMapType_5600_9624_1199#PolymorphicMapType_5600| Heap@@44)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_3208 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.228:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_3208 (P x@@4)))
)))
(assert (forall ((o_11@@14 T@Ref) (f_10 T@Field_5673_5674) (Heap@@45 T@PolymorphicMapType_5600) ) (!  (=> (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@45) o_11@@14 $allocated) (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@45) (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@45) o_11@@14 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5600_3038_3039#PolymorphicMapType_5600| Heap@@45) o_11@@14 f_10))
)))
(assert (forall ((p@@3 T@Field_9624_9625) (v_1@@2 T@FrameType) (q T@Field_9624_9625) (w@@2 T@FrameType) (r T@Field_9624_9625) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9624_9624 p@@3 v_1@@2 q w@@2) (InsidePredicate_9624_9624 q w@@2 r u)) (InsidePredicate_9624_9624 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9624_9624 p@@3 v_1@@2 q w@@2) (InsidePredicate_9624_9624 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_9624_9625) (v_1@@3 T@FrameType) (q@@0 T@Field_9624_9625) (w@@3 T@FrameType) (r@@0 T@Field_9017_9018) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_9624_9624 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_9624_8988 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_9624_8988 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9624_9624 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_9624_8988 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_9624_9625) (v_1@@4 T@FrameType) (q@@1 T@Field_9624_9625) (w@@4 T@FrameType) (r@@1 T@Field_3204_9018) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_9624_9624 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_9624_5660 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_9624_5660 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9624_9624 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_9624_5660 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_9624_9625) (v_1@@5 T@FrameType) (q@@2 T@Field_9017_9018) (w@@5 T@FrameType) (r@@2 T@Field_9624_9625) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_9624_8988 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_8988_9624 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_9624_9624 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9624_8988 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_8988_9624 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_9624_9625) (v_1@@6 T@FrameType) (q@@3 T@Field_9017_9018) (w@@6 T@FrameType) (r@@3 T@Field_9017_9018) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9624_8988 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_8988_8988 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_9624_8988 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9624_8988 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_8988_8988 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_9624_9625) (v_1@@7 T@FrameType) (q@@4 T@Field_9017_9018) (w@@7 T@FrameType) (r@@4 T@Field_3204_9018) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9624_8988 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_8988_5660 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_9624_5660 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9624_8988 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_8988_5660 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_9624_9625) (v_1@@8 T@FrameType) (q@@5 T@Field_3204_9018) (w@@8 T@FrameType) (r@@5 T@Field_9624_9625) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9624_5660 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5660_9624 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_9624_9624 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9624_5660 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5660_9624 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_9624_9625) (v_1@@9 T@FrameType) (q@@6 T@Field_3204_9018) (w@@9 T@FrameType) (r@@6 T@Field_9017_9018) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9624_5660 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5660_8988 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_9624_8988 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9624_5660 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5660_8988 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_9624_9625) (v_1@@10 T@FrameType) (q@@7 T@Field_3204_9018) (w@@10 T@FrameType) (r@@7 T@Field_3204_9018) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_9624_5660 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5660_5660 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_9624_5660 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9624_5660 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5660_5660 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_9017_9018) (v_1@@11 T@FrameType) (q@@8 T@Field_9624_9625) (w@@11 T@FrameType) (r@@8 T@Field_9624_9625) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_8988_9624 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_9624_9624 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_8988_9624 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8988_9624 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_9624_9624 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_9017_9018) (v_1@@12 T@FrameType) (q@@9 T@Field_9624_9625) (w@@12 T@FrameType) (r@@9 T@Field_9017_9018) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_8988_9624 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_9624_8988 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_8988_8988 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8988_9624 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_9624_8988 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_9017_9018) (v_1@@13 T@FrameType) (q@@10 T@Field_9624_9625) (w@@13 T@FrameType) (r@@10 T@Field_3204_9018) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_8988_9624 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_9624_5660 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_8988_5660 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8988_9624 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_9624_5660 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_9017_9018) (v_1@@14 T@FrameType) (q@@11 T@Field_9017_9018) (w@@14 T@FrameType) (r@@11 T@Field_9624_9625) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_8988_8988 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_8988_9624 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_8988_9624 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8988_8988 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_8988_9624 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_9017_9018) (v_1@@15 T@FrameType) (q@@12 T@Field_9017_9018) (w@@15 T@FrameType) (r@@12 T@Field_9017_9018) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_8988_8988 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_8988_8988 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_8988_8988 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8988_8988 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_8988_8988 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_9017_9018) (v_1@@16 T@FrameType) (q@@13 T@Field_9017_9018) (w@@16 T@FrameType) (r@@13 T@Field_3204_9018) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_8988_8988 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_8988_5660 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_8988_5660 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8988_8988 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_8988_5660 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_9017_9018) (v_1@@17 T@FrameType) (q@@14 T@Field_3204_9018) (w@@17 T@FrameType) (r@@14 T@Field_9624_9625) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_8988_5660 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5660_9624 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_8988_9624 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8988_5660 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5660_9624 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_9017_9018) (v_1@@18 T@FrameType) (q@@15 T@Field_3204_9018) (w@@18 T@FrameType) (r@@15 T@Field_9017_9018) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_8988_5660 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5660_8988 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_8988_8988 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8988_5660 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5660_8988 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_9017_9018) (v_1@@19 T@FrameType) (q@@16 T@Field_3204_9018) (w@@19 T@FrameType) (r@@16 T@Field_3204_9018) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_8988_5660 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5660_5660 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_8988_5660 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8988_5660 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5660_5660 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_3204_9018) (v_1@@20 T@FrameType) (q@@17 T@Field_9624_9625) (w@@20 T@FrameType) (r@@17 T@Field_9624_9625) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_5660_9624 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_9624_9624 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_5660_9624 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5660_9624 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_9624_9624 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_3204_9018) (v_1@@21 T@FrameType) (q@@18 T@Field_9624_9625) (w@@21 T@FrameType) (r@@18 T@Field_9017_9018) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_5660_9624 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_9624_8988 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_5660_8988 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5660_9624 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_9624_8988 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_3204_9018) (v_1@@22 T@FrameType) (q@@19 T@Field_9624_9625) (w@@22 T@FrameType) (r@@19 T@Field_3204_9018) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_5660_9624 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_9624_5660 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_5660_5660 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5660_9624 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_9624_5660 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_3204_9018) (v_1@@23 T@FrameType) (q@@20 T@Field_9017_9018) (w@@23 T@FrameType) (r@@20 T@Field_9624_9625) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_5660_8988 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_8988_9624 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_5660_9624 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5660_8988 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_8988_9624 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_3204_9018) (v_1@@24 T@FrameType) (q@@21 T@Field_9017_9018) (w@@24 T@FrameType) (r@@21 T@Field_9017_9018) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_5660_8988 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_8988_8988 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_5660_8988 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5660_8988 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_8988_8988 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_3204_9018) (v_1@@25 T@FrameType) (q@@22 T@Field_9017_9018) (w@@25 T@FrameType) (r@@22 T@Field_3204_9018) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_5660_8988 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_8988_5660 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_5660_5660 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5660_8988 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_8988_5660 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_3204_9018) (v_1@@26 T@FrameType) (q@@23 T@Field_3204_9018) (w@@26 T@FrameType) (r@@23 T@Field_9624_9625) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_5660_5660 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5660_9624 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_5660_9624 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5660_5660 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5660_9624 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_3204_9018) (v_1@@27 T@FrameType) (q@@24 T@Field_3204_9018) (w@@27 T@FrameType) (r@@24 T@Field_9017_9018) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_5660_5660 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5660_8988 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_5660_8988 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5660_5660 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5660_8988 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_3204_9018) (v_1@@28 T@FrameType) (q@@25 T@Field_3204_9018) (w@@28 T@FrameType) (r@@25 T@Field_3204_9018) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_5660_5660 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5660_5660 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_5660_5660 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5660_5660 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5660_5660 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@46 () T@PolymorphicMapType_5600)
(declare-fun x@@5 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_5621)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@46 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_5600_3035_53#PolymorphicMapType_5600| Heap@@46) x@@5 $allocated)) (=> (and (and (not (= x@@5 null)) (= Mask@0 (PolymorphicMapType_5621 (store (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| ZeroMask) x@@5 f_7 (+ (select (|PolymorphicMapType_5621_3204_3205#PolymorphicMapType_5621| ZeroMask) x@@5 f_7) FullPerm)) (|PolymorphicMapType_5621_3208_3209#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3166_1199#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3204_3209#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3204_1199#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3204_53#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3204_31769#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3208_3205#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3208_1199#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3208_53#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3208_32180#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3166_3205#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3166_3209#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3166_53#PolymorphicMapType_5621| ZeroMask) (|PolymorphicMapType_5621_3166_32594#PolymorphicMapType_5621| ZeroMask)))) (and (state Heap@@46 Mask@0) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_3204_3205 Mask@0 x@@5 f_7))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid