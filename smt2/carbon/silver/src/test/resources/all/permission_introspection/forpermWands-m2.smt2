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
(declare-sort T@Field_8702_53 0)
(declare-sort T@Field_8715_8716 0)
(declare-sort T@Field_13316_1830 0)
(declare-sort T@Field_12030_1203 0)
(declare-sort T@Field_12674_1525 0)
(declare-sort T@Field_4480_12048 0)
(declare-sort T@Field_4480_12060 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_4380_53 0)
(declare-sort T@Field_4380_8716 0)
(declare-sort T@Field_12043_12048 0)
(declare-sort T@Field_12059_12060 0)
(declare-sort T@Field_4432_53 0)
(declare-sort T@Field_4432_8716 0)
(declare-sort T@Field_12687_12692 0)
(declare-sort T@Field_12703_12704 0)
(declare-datatypes ((T@PolymorphicMapType_8663 0)) (((PolymorphicMapType_8663 (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| (Array T@Ref T@Field_13316_1830 Real)) (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| (Array T@Ref T@Field_12030_1203 Real)) (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| (Array T@Ref T@Field_12674_1525 Real)) (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| (Array T@Ref T@Field_8702_53 Real)) (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| (Array T@Ref T@Field_8715_8716 Real)) (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| (Array T@Ref T@Field_4480_12048 Real)) (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| (Array T@Ref T@Field_4480_12060 Real)) (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| (Array T@Ref T@Field_4380_53 Real)) (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| (Array T@Ref T@Field_4380_8716 Real)) (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| (Array T@Ref T@Field_12043_12048 Real)) (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| (Array T@Ref T@Field_12059_12060 Real)) (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| (Array T@Ref T@Field_4432_53 Real)) (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| (Array T@Ref T@Field_4432_8716 Real)) (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| (Array T@Ref T@Field_12687_12692 Real)) (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| (Array T@Ref T@Field_12703_12704 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9191 0)) (((PolymorphicMapType_9191 (|PolymorphicMapType_9191_8702_53#PolymorphicMapType_9191| (Array T@Ref T@Field_8702_53 Bool)) (|PolymorphicMapType_9191_8702_8716#PolymorphicMapType_9191| (Array T@Ref T@Field_8715_8716 Bool)) (|PolymorphicMapType_9191_8702_1203#PolymorphicMapType_9191| (Array T@Ref T@Field_13316_1830 Bool)) (|PolymorphicMapType_9191_8702_31522#PolymorphicMapType_9191| (Array T@Ref T@Field_4480_12048 Bool)) (|PolymorphicMapType_9191_8702_12060#PolymorphicMapType_9191| (Array T@Ref T@Field_4480_12060 Bool)) (|PolymorphicMapType_9191_12030_53#PolymorphicMapType_9191| (Array T@Ref T@Field_4380_53 Bool)) (|PolymorphicMapType_9191_12030_8716#PolymorphicMapType_9191| (Array T@Ref T@Field_4380_8716 Bool)) (|PolymorphicMapType_9191_12030_1203#PolymorphicMapType_9191| (Array T@Ref T@Field_12030_1203 Bool)) (|PolymorphicMapType_9191_12030_32570#PolymorphicMapType_9191| (Array T@Ref T@Field_12043_12048 Bool)) (|PolymorphicMapType_9191_12030_12060#PolymorphicMapType_9191| (Array T@Ref T@Field_12059_12060 Bool)) (|PolymorphicMapType_9191_12674_53#PolymorphicMapType_9191| (Array T@Ref T@Field_4432_53 Bool)) (|PolymorphicMapType_9191_12674_8716#PolymorphicMapType_9191| (Array T@Ref T@Field_4432_8716 Bool)) (|PolymorphicMapType_9191_12674_1203#PolymorphicMapType_9191| (Array T@Ref T@Field_12674_1525 Bool)) (|PolymorphicMapType_9191_12674_33618#PolymorphicMapType_9191| (Array T@Ref T@Field_12687_12692 Bool)) (|PolymorphicMapType_9191_12674_12060#PolymorphicMapType_9191| (Array T@Ref T@Field_12703_12704 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8642 0)) (((PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| (Array T@Ref T@Field_8702_53 Bool)) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| (Array T@Ref T@Field_8715_8716 T@Ref)) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| (Array T@Ref T@Field_13316_1830 Int)) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| (Array T@Ref T@Field_12030_1203 Int)) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| (Array T@Ref T@Field_12674_1525 Int)) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| (Array T@Ref T@Field_4480_12048 T@PolymorphicMapType_9191)) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| (Array T@Ref T@Field_4480_12060 T@FrameType)) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| (Array T@Ref T@Field_4380_53 Bool)) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| (Array T@Ref T@Field_4380_8716 T@Ref)) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| (Array T@Ref T@Field_12043_12048 T@PolymorphicMapType_9191)) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| (Array T@Ref T@Field_12059_12060 T@FrameType)) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| (Array T@Ref T@Field_4432_53 Bool)) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| (Array T@Ref T@Field_4432_8716 T@Ref)) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| (Array T@Ref T@Field_12687_12692 T@PolymorphicMapType_9191)) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| (Array T@Ref T@Field_12703_12704 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8702_53)
(declare-fun f_7 () T@Field_13316_1830)
(declare-fun succHeap (T@PolymorphicMapType_8642 T@PolymorphicMapType_8642) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8642 T@PolymorphicMapType_8642) Bool)
(declare-fun wand (T@Ref Real T@Ref Real) T@Field_12030_1203)
(declare-fun getPredWandId_4380_1203 (T@Field_12030_1203) Int)
(declare-fun wand_1 (Real T@Ref T@Ref Real) T@Field_12674_1525)
(declare-fun getPredWandId_4432_1525 (T@Field_12674_1525) Int)
(declare-fun state (T@PolymorphicMapType_8642 T@PolymorphicMapType_8663) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8663) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9191)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8642 T@PolymorphicMapType_8642 T@PolymorphicMapType_8663) Bool)
(declare-fun IsPredicateField_4445_4446 (T@Field_12703_12704) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4432 (T@Field_12703_12704) T@Field_12687_12692)
(declare-fun HasDirectPerm_4432_12060 (T@PolymorphicMapType_8663 T@Ref T@Field_12703_12704) Bool)
(declare-fun IsPredicateField_4393_4394 (T@Field_12059_12060) Bool)
(declare-fun PredicateMaskField_4380 (T@Field_12059_12060) T@Field_12043_12048)
(declare-fun HasDirectPerm_4380_12060 (T@PolymorphicMapType_8663 T@Ref T@Field_12059_12060) Bool)
(declare-fun IsPredicateField_4480_29867 (T@Field_4480_12060) Bool)
(declare-fun PredicateMaskField_4480 (T@Field_4480_12060) T@Field_4480_12048)
(declare-fun HasDirectPerm_4480_12060 (T@PolymorphicMapType_8663 T@Ref T@Field_4480_12060) Bool)
(declare-fun IsWandField_4445_4446 (T@Field_12703_12704) Bool)
(declare-fun WandMaskField_4445 (T@Field_12703_12704) T@Field_12687_12692)
(declare-fun IsWandField_4393_4394 (T@Field_12059_12060) Bool)
(declare-fun WandMaskField_4393 (T@Field_12059_12060) T@Field_12043_12048)
(declare-fun IsWandField_4480_34911 (T@Field_4480_12060) Bool)
(declare-fun WandMaskField_4480 (T@Field_4480_12060) T@Field_4480_12048)
(declare-fun dummyHeap () T@PolymorphicMapType_8642)
(declare-fun ZeroMask () T@PolymorphicMapType_8663)
(declare-fun InsidePredicate_12674_12674 (T@Field_12703_12704 T@FrameType T@Field_12703_12704 T@FrameType) Bool)
(declare-fun InsidePredicate_12030_12030 (T@Field_12059_12060 T@FrameType T@Field_12059_12060 T@FrameType) Bool)
(declare-fun InsidePredicate_8702_8702 (T@Field_4480_12060 T@FrameType T@Field_4480_12060 T@FrameType) Bool)
(declare-fun IsPredicateField_4480_1830 (T@Field_13316_1830) Bool)
(declare-fun IsWandField_4480_1830 (T@Field_13316_1830) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4432_45703 (T@Field_12687_12692) Bool)
(declare-fun IsWandField_4432_45719 (T@Field_12687_12692) Bool)
(declare-fun IsPredicateField_4432_8716 (T@Field_4432_8716) Bool)
(declare-fun IsWandField_4432_8716 (T@Field_4432_8716) Bool)
(declare-fun IsPredicateField_4432_53 (T@Field_4432_53) Bool)
(declare-fun IsWandField_4432_53 (T@Field_4432_53) Bool)
(declare-fun IsPredicateField_4432_1525 (T@Field_12674_1525) Bool)
(declare-fun IsWandField_4432_1525 (T@Field_12674_1525) Bool)
(declare-fun IsPredicateField_4380_44886 (T@Field_12043_12048) Bool)
(declare-fun IsWandField_4380_44902 (T@Field_12043_12048) Bool)
(declare-fun IsPredicateField_4380_8716 (T@Field_4380_8716) Bool)
(declare-fun IsWandField_4380_8716 (T@Field_4380_8716) Bool)
(declare-fun IsPredicateField_4380_53 (T@Field_4380_53) Bool)
(declare-fun IsWandField_4380_53 (T@Field_4380_53) Bool)
(declare-fun IsPredicateField_4380_1203 (T@Field_12030_1203) Bool)
(declare-fun IsWandField_4380_1203 (T@Field_12030_1203) Bool)
(declare-fun IsPredicateField_4480_44069 (T@Field_4480_12048) Bool)
(declare-fun IsWandField_4480_44085 (T@Field_4480_12048) Bool)
(declare-fun IsPredicateField_4480_8716 (T@Field_8715_8716) Bool)
(declare-fun IsWandField_4480_8716 (T@Field_8715_8716) Bool)
(declare-fun IsPredicateField_4480_53 (T@Field_8702_53) Bool)
(declare-fun IsWandField_4480_53 (T@Field_8702_53) Bool)
(declare-fun HasDirectPerm_4432_29351 (T@PolymorphicMapType_8663 T@Ref T@Field_12687_12692) Bool)
(declare-fun HasDirectPerm_4432_8716 (T@PolymorphicMapType_8663 T@Ref T@Field_4432_8716) Bool)
(declare-fun HasDirectPerm_4432_53 (T@PolymorphicMapType_8663 T@Ref T@Field_4432_53) Bool)
(declare-fun HasDirectPerm_4432_1525 (T@PolymorphicMapType_8663 T@Ref T@Field_12674_1525) Bool)
(declare-fun HasDirectPerm_4380_28206 (T@PolymorphicMapType_8663 T@Ref T@Field_12043_12048) Bool)
(declare-fun HasDirectPerm_4380_8716 (T@PolymorphicMapType_8663 T@Ref T@Field_4380_8716) Bool)
(declare-fun HasDirectPerm_4380_53 (T@PolymorphicMapType_8663 T@Ref T@Field_4380_53) Bool)
(declare-fun HasDirectPerm_4380_1203 (T@PolymorphicMapType_8663 T@Ref T@Field_12030_1203) Bool)
(declare-fun HasDirectPerm_4480_27060 (T@PolymorphicMapType_8663 T@Ref T@Field_4480_12048) Bool)
(declare-fun HasDirectPerm_4480_8716 (T@PolymorphicMapType_8663 T@Ref T@Field_8715_8716) Bool)
(declare-fun HasDirectPerm_4480_53 (T@PolymorphicMapType_8663 T@Ref T@Field_8702_53) Bool)
(declare-fun HasDirectPerm_4480_1830 (T@PolymorphicMapType_8663 T@Ref T@Field_13316_1830) Bool)
(declare-fun |wand#ft| (T@Ref Real T@Ref Real) T@Field_12059_12060)
(declare-fun |wand_1#ft| (Real T@Ref T@Ref Real) T@Field_12703_12704)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (T@Ref Real T@Ref Real) T@Field_12043_12048)
(declare-fun |wand_1#sm| (Real T@Ref T@Ref Real) T@Field_12687_12692)
(declare-fun sumMask (T@PolymorphicMapType_8663 T@PolymorphicMapType_8663 T@PolymorphicMapType_8663) Bool)
(declare-fun InsidePredicate_12674_12030 (T@Field_12703_12704 T@FrameType T@Field_12059_12060 T@FrameType) Bool)
(declare-fun InsidePredicate_12674_8702 (T@Field_12703_12704 T@FrameType T@Field_4480_12060 T@FrameType) Bool)
(declare-fun InsidePredicate_12030_12674 (T@Field_12059_12060 T@FrameType T@Field_12703_12704 T@FrameType) Bool)
(declare-fun InsidePredicate_12030_8702 (T@Field_12059_12060 T@FrameType T@Field_4480_12060 T@FrameType) Bool)
(declare-fun InsidePredicate_8702_12674 (T@Field_4480_12060 T@FrameType T@Field_12703_12704 T@FrameType) Bool)
(declare-fun InsidePredicate_8702_12030 (T@Field_4480_12060 T@FrameType T@Field_12059_12060 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8642) (Heap1 T@PolymorphicMapType_8642) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Real) ) (! (= (getPredWandId_4380_1203 (wand arg1 arg2 arg3 arg4)) 0)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((arg1@@0 Real) (arg2@@0 T@Ref) (arg3@@0 T@Ref) (arg4@@0 Real) ) (! (= (getPredWandId_4432_1525 (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0)) 1)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_8642) (Mask T@PolymorphicMapType_8663) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8642) (Heap1@@0 T@PolymorphicMapType_8642) (Heap2 T@PolymorphicMapType_8642) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12703_12704) ) (!  (not (select (|PolymorphicMapType_9191_12674_12060#PolymorphicMapType_9191| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_12674_12060#PolymorphicMapType_9191| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12687_12692) ) (!  (not (select (|PolymorphicMapType_9191_12674_33618#PolymorphicMapType_9191| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_12674_33618#PolymorphicMapType_9191| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12674_1525) ) (!  (not (select (|PolymorphicMapType_9191_12674_1203#PolymorphicMapType_9191| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_12674_1203#PolymorphicMapType_9191| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4432_8716) ) (!  (not (select (|PolymorphicMapType_9191_12674_8716#PolymorphicMapType_9191| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_12674_8716#PolymorphicMapType_9191| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4432_53) ) (!  (not (select (|PolymorphicMapType_9191_12674_53#PolymorphicMapType_9191| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_12674_53#PolymorphicMapType_9191| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12059_12060) ) (!  (not (select (|PolymorphicMapType_9191_12030_12060#PolymorphicMapType_9191| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_12030_12060#PolymorphicMapType_9191| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12043_12048) ) (!  (not (select (|PolymorphicMapType_9191_12030_32570#PolymorphicMapType_9191| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_12030_32570#PolymorphicMapType_9191| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_12030_1203) ) (!  (not (select (|PolymorphicMapType_9191_12030_1203#PolymorphicMapType_9191| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_12030_1203#PolymorphicMapType_9191| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_4380_8716) ) (!  (not (select (|PolymorphicMapType_9191_12030_8716#PolymorphicMapType_9191| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_12030_8716#PolymorphicMapType_9191| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_4380_53) ) (!  (not (select (|PolymorphicMapType_9191_12030_53#PolymorphicMapType_9191| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_12030_53#PolymorphicMapType_9191| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_4480_12060) ) (!  (not (select (|PolymorphicMapType_9191_8702_12060#PolymorphicMapType_9191| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_8702_12060#PolymorphicMapType_9191| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_4480_12048) ) (!  (not (select (|PolymorphicMapType_9191_8702_31522#PolymorphicMapType_9191| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_8702_31522#PolymorphicMapType_9191| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_13316_1830) ) (!  (not (select (|PolymorphicMapType_9191_8702_1203#PolymorphicMapType_9191| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_8702_1203#PolymorphicMapType_9191| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_8715_8716) ) (!  (not (select (|PolymorphicMapType_9191_8702_8716#PolymorphicMapType_9191| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_8702_8716#PolymorphicMapType_9191| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8702_53) ) (!  (not (select (|PolymorphicMapType_9191_8702_53#PolymorphicMapType_9191| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9191_8702_53#PolymorphicMapType_9191| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8642) (ExhaleHeap T@PolymorphicMapType_8642) (Mask@@0 T@PolymorphicMapType_8663) (pm_f_6 T@Field_12703_12704) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4432_12060 Mask@@0 null pm_f_6) (IsPredicateField_4445_4446 pm_f_6)) (= (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@0) null (PredicateMaskField_4432 pm_f_6)) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap) null (PredicateMaskField_4432 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4445_4446 pm_f_6) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap) null (PredicateMaskField_4432 pm_f_6)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8642) (ExhaleHeap@@0 T@PolymorphicMapType_8642) (Mask@@1 T@PolymorphicMapType_8663) (pm_f_6@@0 T@Field_12059_12060) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4380_12060 Mask@@1 null pm_f_6@@0) (IsPredicateField_4393_4394 pm_f_6@@0)) (= (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@1) null (PredicateMaskField_4380 pm_f_6@@0)) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@0) null (PredicateMaskField_4380 pm_f_6@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4393_4394 pm_f_6@@0) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@0) null (PredicateMaskField_4380 pm_f_6@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8642) (ExhaleHeap@@1 T@PolymorphicMapType_8642) (Mask@@2 T@PolymorphicMapType_8663) (pm_f_6@@1 T@Field_4480_12060) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4480_12060 Mask@@2 null pm_f_6@@1) (IsPredicateField_4480_29867 pm_f_6@@1)) (= (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@2) null (PredicateMaskField_4480 pm_f_6@@1)) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@1) null (PredicateMaskField_4480 pm_f_6@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4480_29867 pm_f_6@@1) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@1) null (PredicateMaskField_4480 pm_f_6@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8642) (ExhaleHeap@@2 T@PolymorphicMapType_8642) (Mask@@3 T@PolymorphicMapType_8663) (pm_f_6@@2 T@Field_12703_12704) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4432_12060 Mask@@3 null pm_f_6@@2) (IsWandField_4445_4446 pm_f_6@@2)) (= (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@3) null (WandMaskField_4445 pm_f_6@@2)) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@2) null (WandMaskField_4445 pm_f_6@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4445_4446 pm_f_6@@2) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@2) null (WandMaskField_4445 pm_f_6@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8642) (ExhaleHeap@@3 T@PolymorphicMapType_8642) (Mask@@4 T@PolymorphicMapType_8663) (pm_f_6@@3 T@Field_12059_12060) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_4380_12060 Mask@@4 null pm_f_6@@3) (IsWandField_4393_4394 pm_f_6@@3)) (= (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@4) null (WandMaskField_4393 pm_f_6@@3)) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@3) null (WandMaskField_4393 pm_f_6@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsWandField_4393_4394 pm_f_6@@3) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@3) null (WandMaskField_4393 pm_f_6@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8642) (ExhaleHeap@@4 T@PolymorphicMapType_8642) (Mask@@5 T@PolymorphicMapType_8663) (pm_f_6@@4 T@Field_4480_12060) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4480_12060 Mask@@5 null pm_f_6@@4) (IsWandField_4480_34911 pm_f_6@@4)) (= (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@5) null (WandMaskField_4480 pm_f_6@@4)) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@4) null (WandMaskField_4480 pm_f_6@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_4480_34911 pm_f_6@@4) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@4) null (WandMaskField_4480 pm_f_6@@4)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8642) (ExhaleHeap@@5 T@PolymorphicMapType_8642) (Mask@@6 T@PolymorphicMapType_8663) (o_17 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@6) o_17 $allocated) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@5) o_17 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@5) o_17 $allocated))
)))
(assert (forall ((p T@Field_12703_12704) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12674_12674 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12674_12674 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12059_12060) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_12030_12030 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12030_12030 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_4480_12060) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_8702_8702 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8702_8702 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_4480_1830 f_7)))
(assert  (not (IsWandField_4480_1830 f_7)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8642) (ExhaleHeap@@6 T@PolymorphicMapType_8642) (Mask@@7 T@PolymorphicMapType_8663) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@7 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8663) (o_2@@14 T@Ref) (f_4@@14 T@Field_12703_12704) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4445_4446 f_4@@14))) (not (IsWandField_4445_4446 f_4@@14))) (<= (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8663) (o_2@@15 T@Ref) (f_4@@15 T@Field_12687_12692) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4432_45703 f_4@@15))) (not (IsWandField_4432_45719 f_4@@15))) (<= (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8663) (o_2@@16 T@Ref) (f_4@@16 T@Field_4432_8716) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4432_8716 f_4@@16))) (not (IsWandField_4432_8716 f_4@@16))) (<= (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8663) (o_2@@17 T@Ref) (f_4@@17 T@Field_4432_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4432_53 f_4@@17))) (not (IsWandField_4432_53 f_4@@17))) (<= (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8663) (o_2@@18 T@Ref) (f_4@@18 T@Field_12674_1525) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4432_1525 f_4@@18))) (not (IsWandField_4432_1525 f_4@@18))) (<= (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8663) (o_2@@19 T@Ref) (f_4@@19 T@Field_12059_12060) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4393_4394 f_4@@19))) (not (IsWandField_4393_4394 f_4@@19))) (<= (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8663) (o_2@@20 T@Ref) (f_4@@20 T@Field_12043_12048) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4380_44886 f_4@@20))) (not (IsWandField_4380_44902 f_4@@20))) (<= (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8663) (o_2@@21 T@Ref) (f_4@@21 T@Field_4380_8716) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4380_8716 f_4@@21))) (not (IsWandField_4380_8716 f_4@@21))) (<= (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8663) (o_2@@22 T@Ref) (f_4@@22 T@Field_4380_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4380_53 f_4@@22))) (not (IsWandField_4380_53 f_4@@22))) (<= (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8663) (o_2@@23 T@Ref) (f_4@@23 T@Field_12030_1203) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4380_1203 f_4@@23))) (not (IsWandField_4380_1203 f_4@@23))) (<= (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8663) (o_2@@24 T@Ref) (f_4@@24 T@Field_4480_12060) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4480_29867 f_4@@24))) (not (IsWandField_4480_34911 f_4@@24))) (<= (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8663) (o_2@@25 T@Ref) (f_4@@25 T@Field_4480_12048) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4480_44069 f_4@@25))) (not (IsWandField_4480_44085 f_4@@25))) (<= (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8663) (o_2@@26 T@Ref) (f_4@@26 T@Field_8715_8716) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4480_8716 f_4@@26))) (not (IsWandField_4480_8716 f_4@@26))) (<= (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8663) (o_2@@27 T@Ref) (f_4@@27 T@Field_8702_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4480_53 f_4@@27))) (not (IsWandField_4480_53 f_4@@27))) (<= (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8663) (o_2@@28 T@Ref) (f_4@@28 T@Field_13316_1830) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_4480_1830 f_4@@28))) (not (IsWandField_4480_1830 f_4@@28))) (<= (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8663) (o_2@@29 T@Ref) (f_4@@29 T@Field_12703_12704) ) (! (= (HasDirectPerm_4432_12060 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4432_12060 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8663) (o_2@@30 T@Ref) (f_4@@30 T@Field_12687_12692) ) (! (= (HasDirectPerm_4432_29351 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4432_29351 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8663) (o_2@@31 T@Ref) (f_4@@31 T@Field_4432_8716) ) (! (= (HasDirectPerm_4432_8716 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4432_8716 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8663) (o_2@@32 T@Ref) (f_4@@32 T@Field_4432_53) ) (! (= (HasDirectPerm_4432_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4432_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8663) (o_2@@33 T@Ref) (f_4@@33 T@Field_12674_1525) ) (! (= (HasDirectPerm_4432_1525 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4432_1525 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8663) (o_2@@34 T@Ref) (f_4@@34 T@Field_12059_12060) ) (! (= (HasDirectPerm_4380_12060 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4380_12060 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8663) (o_2@@35 T@Ref) (f_4@@35 T@Field_12043_12048) ) (! (= (HasDirectPerm_4380_28206 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4380_28206 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8663) (o_2@@36 T@Ref) (f_4@@36 T@Field_4380_8716) ) (! (= (HasDirectPerm_4380_8716 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4380_8716 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_8663) (o_2@@37 T@Ref) (f_4@@37 T@Field_4380_53) ) (! (= (HasDirectPerm_4380_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4380_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_8663) (o_2@@38 T@Ref) (f_4@@38 T@Field_12030_1203) ) (! (= (HasDirectPerm_4380_1203 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4380_1203 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_8663) (o_2@@39 T@Ref) (f_4@@39 T@Field_4480_12060) ) (! (= (HasDirectPerm_4480_12060 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4480_12060 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_8663) (o_2@@40 T@Ref) (f_4@@40 T@Field_4480_12048) ) (! (= (HasDirectPerm_4480_27060 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4480_27060 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_8663) (o_2@@41 T@Ref) (f_4@@41 T@Field_8715_8716) ) (! (= (HasDirectPerm_4480_8716 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4480_8716 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_8663) (o_2@@42 T@Ref) (f_4@@42 T@Field_8702_53) ) (! (= (HasDirectPerm_4480_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4480_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_8663) (o_2@@43 T@Ref) (f_4@@43 T@Field_13316_1830) ) (! (= (HasDirectPerm_4480_1830 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4480_1830 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 Real) ) (! (IsWandField_4380_1203 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Real) ) (! (IsWandField_4393_4394 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2))
)))
(assert (forall ((arg1@@3 Real) (arg2@@3 T@Ref) (arg3@@3 T@Ref) (arg4@@3 Real) ) (! (IsWandField_4432_1525 (wand_1 arg1@@3 arg2@@3 arg3@@3 arg4@@3))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@3 arg2@@3 arg3@@3 arg4@@3))
)))
(assert (forall ((arg1@@4 Real) (arg2@@4 T@Ref) (arg3@@4 T@Ref) (arg4@@4 Real) ) (! (IsWandField_4445_4446 (|wand_1#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8642) (ExhaleHeap@@7 T@PolymorphicMapType_8642) (Mask@@38 T@PolymorphicMapType_8663) (o_17@@0 T@Ref) (f_25 T@Field_12703_12704) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_4432_12060 Mask@@38 o_17@@0 f_25) (= (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@8) o_17@@0 f_25) (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@7) o_17@@0 f_25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@7) o_17@@0 f_25))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8642) (ExhaleHeap@@8 T@PolymorphicMapType_8642) (Mask@@39 T@PolymorphicMapType_8663) (o_17@@1 T@Ref) (f_25@@0 T@Field_12687_12692) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_4432_29351 Mask@@39 o_17@@1 f_25@@0) (= (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@9) o_17@@1 f_25@@0) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@8) o_17@@1 f_25@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@8) o_17@@1 f_25@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8642) (ExhaleHeap@@9 T@PolymorphicMapType_8642) (Mask@@40 T@PolymorphicMapType_8663) (o_17@@2 T@Ref) (f_25@@1 T@Field_4432_8716) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_4432_8716 Mask@@40 o_17@@2 f_25@@1) (= (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@10) o_17@@2 f_25@@1) (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@9) o_17@@2 f_25@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@9) o_17@@2 f_25@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8642) (ExhaleHeap@@10 T@PolymorphicMapType_8642) (Mask@@41 T@PolymorphicMapType_8663) (o_17@@3 T@Ref) (f_25@@2 T@Field_4432_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_4432_53 Mask@@41 o_17@@3 f_25@@2) (= (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@11) o_17@@3 f_25@@2) (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@10) o_17@@3 f_25@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@10) o_17@@3 f_25@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8642) (ExhaleHeap@@11 T@PolymorphicMapType_8642) (Mask@@42 T@PolymorphicMapType_8663) (o_17@@4 T@Ref) (f_25@@3 T@Field_12674_1525) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_4432_1525 Mask@@42 o_17@@4 f_25@@3) (= (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@12) o_17@@4 f_25@@3) (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@11) o_17@@4 f_25@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@11) o_17@@4 f_25@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8642) (ExhaleHeap@@12 T@PolymorphicMapType_8642) (Mask@@43 T@PolymorphicMapType_8663) (o_17@@5 T@Ref) (f_25@@4 T@Field_12059_12060) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_4380_12060 Mask@@43 o_17@@5 f_25@@4) (= (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@13) o_17@@5 f_25@@4) (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@12) o_17@@5 f_25@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@12) o_17@@5 f_25@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8642) (ExhaleHeap@@13 T@PolymorphicMapType_8642) (Mask@@44 T@PolymorphicMapType_8663) (o_17@@6 T@Ref) (f_25@@5 T@Field_12043_12048) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_4380_28206 Mask@@44 o_17@@6 f_25@@5) (= (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@14) o_17@@6 f_25@@5) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@13) o_17@@6 f_25@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@13) o_17@@6 f_25@@5))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8642) (ExhaleHeap@@14 T@PolymorphicMapType_8642) (Mask@@45 T@PolymorphicMapType_8663) (o_17@@7 T@Ref) (f_25@@6 T@Field_4380_8716) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_4380_8716 Mask@@45 o_17@@7 f_25@@6) (= (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@15) o_17@@7 f_25@@6) (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@14) o_17@@7 f_25@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@14) o_17@@7 f_25@@6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8642) (ExhaleHeap@@15 T@PolymorphicMapType_8642) (Mask@@46 T@PolymorphicMapType_8663) (o_17@@8 T@Ref) (f_25@@7 T@Field_4380_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_4380_53 Mask@@46 o_17@@8 f_25@@7) (= (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@16) o_17@@8 f_25@@7) (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@15) o_17@@8 f_25@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@15) o_17@@8 f_25@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8642) (ExhaleHeap@@16 T@PolymorphicMapType_8642) (Mask@@47 T@PolymorphicMapType_8663) (o_17@@9 T@Ref) (f_25@@8 T@Field_12030_1203) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_4380_1203 Mask@@47 o_17@@9 f_25@@8) (= (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@17) o_17@@9 f_25@@8) (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@16) o_17@@9 f_25@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@16) o_17@@9 f_25@@8))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8642) (ExhaleHeap@@17 T@PolymorphicMapType_8642) (Mask@@48 T@PolymorphicMapType_8663) (o_17@@10 T@Ref) (f_25@@9 T@Field_4480_12060) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_4480_12060 Mask@@48 o_17@@10 f_25@@9) (= (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@18) o_17@@10 f_25@@9) (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@17) o_17@@10 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@17) o_17@@10 f_25@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8642) (ExhaleHeap@@18 T@PolymorphicMapType_8642) (Mask@@49 T@PolymorphicMapType_8663) (o_17@@11 T@Ref) (f_25@@10 T@Field_4480_12048) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_4480_27060 Mask@@49 o_17@@11 f_25@@10) (= (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@19) o_17@@11 f_25@@10) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@18) o_17@@11 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@18) o_17@@11 f_25@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8642) (ExhaleHeap@@19 T@PolymorphicMapType_8642) (Mask@@50 T@PolymorphicMapType_8663) (o_17@@12 T@Ref) (f_25@@11 T@Field_8715_8716) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_4480_8716 Mask@@50 o_17@@12 f_25@@11) (= (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@20) o_17@@12 f_25@@11) (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@19) o_17@@12 f_25@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@19) o_17@@12 f_25@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8642) (ExhaleHeap@@20 T@PolymorphicMapType_8642) (Mask@@51 T@PolymorphicMapType_8663) (o_17@@13 T@Ref) (f_25@@12 T@Field_8702_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_4480_53 Mask@@51 o_17@@13 f_25@@12) (= (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@21) o_17@@13 f_25@@12) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@20) o_17@@13 f_25@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@20) o_17@@13 f_25@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8642) (ExhaleHeap@@21 T@PolymorphicMapType_8642) (Mask@@52 T@PolymorphicMapType_8663) (o_17@@14 T@Ref) (f_25@@13 T@Field_13316_1830) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_4480_1830 Mask@@52 o_17@@14 f_25@@13) (= (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@22) o_17@@14 f_25@@13) (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@21) o_17@@14 f_25@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@21) o_17@@14 f_25@@13))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 Real) ) (!  (not (IsPredicateField_4380_1203 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@6 T@Ref) (arg4@@6 Real) ) (!  (not (IsPredicateField_4393_4394 (|wand#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6))
)))
(assert (forall ((arg1@@7 Real) (arg2@@7 T@Ref) (arg3@@7 T@Ref) (arg4@@7 Real) ) (!  (not (IsPredicateField_4432_1525 (wand_1 arg1@@7 arg2@@7 arg3@@7 arg4@@7)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@7 arg2@@7 arg3@@7 arg4@@7))
)))
(assert (forall ((arg1@@8 Real) (arg2@@8 T@Ref) (arg3@@8 T@Ref) (arg4@@8 Real) ) (!  (not (IsPredicateField_4445_4446 (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8 arg4@@8)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8 arg4@@8))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@9 T@Ref) (arg4@@9 Real) ) (! (= (|wand#sm| arg1@@9 arg2@@9 arg3@@9 arg4@@9) (WandMaskField_4393 (|wand#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_4393 (|wand#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9)))
)))
(assert (forall ((arg1@@10 Real) (arg2@@10 T@Ref) (arg3@@10 T@Ref) (arg4@@10 Real) ) (! (= (|wand_1#sm| arg1@@10 arg2@@10 arg3@@10 arg4@@10) (WandMaskField_4445 (|wand_1#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_4445 (|wand_1#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_12703_12704) ) (! (= (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_12687_12692) ) (! (= (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_4432_8716) ) (! (= (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_4432_53) ) (! (= (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_12674_1525) ) (! (= (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_12059_12060) ) (! (= (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_12043_12048) ) (! (= (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_4380_8716) ) (! (= (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_4380_53) ) (! (= (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_12030_1203) ) (! (= (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_4480_12060) ) (! (= (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_4480_12048) ) (! (= (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_8715_8716) ) (! (= (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_8702_53) ) (! (= (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_13316_1830) ) (! (= (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8663) (SummandMask1 T@PolymorphicMapType_8663) (SummandMask2 T@PolymorphicMapType_8663) (o_2@@59 T@Ref) (f_4@@59 T@Field_12703_12704) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8663) (SummandMask1@@0 T@PolymorphicMapType_8663) (SummandMask2@@0 T@PolymorphicMapType_8663) (o_2@@60 T@Ref) (f_4@@60 T@Field_12687_12692) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8663) (SummandMask1@@1 T@PolymorphicMapType_8663) (SummandMask2@@1 T@PolymorphicMapType_8663) (o_2@@61 T@Ref) (f_4@@61 T@Field_4432_8716) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8663) (SummandMask1@@2 T@PolymorphicMapType_8663) (SummandMask2@@2 T@PolymorphicMapType_8663) (o_2@@62 T@Ref) (f_4@@62 T@Field_4432_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8663) (SummandMask1@@3 T@PolymorphicMapType_8663) (SummandMask2@@3 T@PolymorphicMapType_8663) (o_2@@63 T@Ref) (f_4@@63 T@Field_12674_1525) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8663) (SummandMask1@@4 T@PolymorphicMapType_8663) (SummandMask2@@4 T@PolymorphicMapType_8663) (o_2@@64 T@Ref) (f_4@@64 T@Field_12059_12060) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8663) (SummandMask1@@5 T@PolymorphicMapType_8663) (SummandMask2@@5 T@PolymorphicMapType_8663) (o_2@@65 T@Ref) (f_4@@65 T@Field_12043_12048) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8663) (SummandMask1@@6 T@PolymorphicMapType_8663) (SummandMask2@@6 T@PolymorphicMapType_8663) (o_2@@66 T@Ref) (f_4@@66 T@Field_4380_8716) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8663) (SummandMask1@@7 T@PolymorphicMapType_8663) (SummandMask2@@7 T@PolymorphicMapType_8663) (o_2@@67 T@Ref) (f_4@@67 T@Field_4380_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8663) (SummandMask1@@8 T@PolymorphicMapType_8663) (SummandMask2@@8 T@PolymorphicMapType_8663) (o_2@@68 T@Ref) (f_4@@68 T@Field_12030_1203) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_8663) (SummandMask1@@9 T@PolymorphicMapType_8663) (SummandMask2@@9 T@PolymorphicMapType_8663) (o_2@@69 T@Ref) (f_4@@69 T@Field_4480_12060) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_8663) (SummandMask1@@10 T@PolymorphicMapType_8663) (SummandMask2@@10 T@PolymorphicMapType_8663) (o_2@@70 T@Ref) (f_4@@70 T@Field_4480_12048) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_8663) (SummandMask1@@11 T@PolymorphicMapType_8663) (SummandMask2@@11 T@PolymorphicMapType_8663) (o_2@@71 T@Ref) (f_4@@71 T@Field_8715_8716) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_8663) (SummandMask1@@12 T@PolymorphicMapType_8663) (SummandMask2@@12 T@PolymorphicMapType_8663) (o_2@@72 T@Ref) (f_4@@72 T@Field_8702_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_8663) (SummandMask1@@13 T@PolymorphicMapType_8663) (SummandMask2@@13 T@PolymorphicMapType_8663) (o_2@@73 T@Ref) (f_4@@73 T@Field_13316_1830) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8642) (ExhaleHeap@@22 T@PolymorphicMapType_8642) (Mask@@53 T@PolymorphicMapType_8663) (pm_f_6@@5 T@Field_12703_12704) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_4432_12060 Mask@@53 null pm_f_6@@5) (IsPredicateField_4445_4446 pm_f_6@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6 T@Ref) (f_25@@14 T@Field_8702_53) ) (!  (=> (select (|PolymorphicMapType_9191_8702_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6 f_25@@14) (= (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@23) o2_6 f_25@@14) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6 f_25@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6 f_25@@14))
)) (forall ((o2_6@@0 T@Ref) (f_25@@15 T@Field_8715_8716) ) (!  (=> (select (|PolymorphicMapType_9191_8702_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@0 f_25@@15) (= (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@23) o2_6@@0 f_25@@15) (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@0 f_25@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@0 f_25@@15))
))) (forall ((o2_6@@1 T@Ref) (f_25@@16 T@Field_13316_1830) ) (!  (=> (select (|PolymorphicMapType_9191_8702_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@1 f_25@@16) (= (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@23) o2_6@@1 f_25@@16) (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@1 f_25@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@1 f_25@@16))
))) (forall ((o2_6@@2 T@Ref) (f_25@@17 T@Field_4480_12048) ) (!  (=> (select (|PolymorphicMapType_9191_8702_31522#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@2 f_25@@17) (= (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@23) o2_6@@2 f_25@@17) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@2 f_25@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@2 f_25@@17))
))) (forall ((o2_6@@3 T@Ref) (f_25@@18 T@Field_4480_12060) ) (!  (=> (select (|PolymorphicMapType_9191_8702_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@3 f_25@@18) (= (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@23) o2_6@@3 f_25@@18) (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@3 f_25@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@3 f_25@@18))
))) (forall ((o2_6@@4 T@Ref) (f_25@@19 T@Field_4380_53) ) (!  (=> (select (|PolymorphicMapType_9191_12030_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@4 f_25@@19) (= (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@23) o2_6@@4 f_25@@19) (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@4 f_25@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@4 f_25@@19))
))) (forall ((o2_6@@5 T@Ref) (f_25@@20 T@Field_4380_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12030_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@5 f_25@@20) (= (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@23) o2_6@@5 f_25@@20) (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@5 f_25@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@5 f_25@@20))
))) (forall ((o2_6@@6 T@Ref) (f_25@@21 T@Field_12030_1203) ) (!  (=> (select (|PolymorphicMapType_9191_12030_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@6 f_25@@21) (= (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@23) o2_6@@6 f_25@@21) (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@6 f_25@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@6 f_25@@21))
))) (forall ((o2_6@@7 T@Ref) (f_25@@22 T@Field_12043_12048) ) (!  (=> (select (|PolymorphicMapType_9191_12030_32570#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@7 f_25@@22) (= (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@23) o2_6@@7 f_25@@22) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@7 f_25@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@7 f_25@@22))
))) (forall ((o2_6@@8 T@Ref) (f_25@@23 T@Field_12059_12060) ) (!  (=> (select (|PolymorphicMapType_9191_12030_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@8 f_25@@23) (= (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@23) o2_6@@8 f_25@@23) (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@8 f_25@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@8 f_25@@23))
))) (forall ((o2_6@@9 T@Ref) (f_25@@24 T@Field_4432_53) ) (!  (=> (select (|PolymorphicMapType_9191_12674_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@9 f_25@@24) (= (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@23) o2_6@@9 f_25@@24) (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@9 f_25@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@9 f_25@@24))
))) (forall ((o2_6@@10 T@Ref) (f_25@@25 T@Field_4432_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12674_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@10 f_25@@25) (= (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@23) o2_6@@10 f_25@@25) (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@10 f_25@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@10 f_25@@25))
))) (forall ((o2_6@@11 T@Ref) (f_25@@26 T@Field_12674_1525) ) (!  (=> (select (|PolymorphicMapType_9191_12674_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@11 f_25@@26) (= (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@23) o2_6@@11 f_25@@26) (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@11 f_25@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@11 f_25@@26))
))) (forall ((o2_6@@12 T@Ref) (f_25@@27 T@Field_12687_12692) ) (!  (=> (select (|PolymorphicMapType_9191_12674_33618#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@12 f_25@@27) (= (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) o2_6@@12 f_25@@27) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@12 f_25@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@12 f_25@@27))
))) (forall ((o2_6@@13 T@Ref) (f_25@@28 T@Field_12703_12704) ) (!  (=> (select (|PolymorphicMapType_9191_12674_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@23) null (PredicateMaskField_4432 pm_f_6@@5))) o2_6@@13 f_25@@28) (= (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@23) o2_6@@13 f_25@@28) (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@13 f_25@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@22) o2_6@@13 f_25@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (IsPredicateField_4445_4446 pm_f_6@@5))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8642) (ExhaleHeap@@23 T@PolymorphicMapType_8642) (Mask@@54 T@PolymorphicMapType_8663) (pm_f_6@@6 T@Field_12059_12060) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_4380_12060 Mask@@54 null pm_f_6@@6) (IsPredicateField_4393_4394 pm_f_6@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@14 T@Ref) (f_25@@29 T@Field_8702_53) ) (!  (=> (select (|PolymorphicMapType_9191_8702_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@14 f_25@@29) (= (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@24) o2_6@@14 f_25@@29) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@14 f_25@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@14 f_25@@29))
)) (forall ((o2_6@@15 T@Ref) (f_25@@30 T@Field_8715_8716) ) (!  (=> (select (|PolymorphicMapType_9191_8702_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@15 f_25@@30) (= (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@24) o2_6@@15 f_25@@30) (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@15 f_25@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@15 f_25@@30))
))) (forall ((o2_6@@16 T@Ref) (f_25@@31 T@Field_13316_1830) ) (!  (=> (select (|PolymorphicMapType_9191_8702_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@16 f_25@@31) (= (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@24) o2_6@@16 f_25@@31) (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@16 f_25@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@16 f_25@@31))
))) (forall ((o2_6@@17 T@Ref) (f_25@@32 T@Field_4480_12048) ) (!  (=> (select (|PolymorphicMapType_9191_8702_31522#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@17 f_25@@32) (= (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@24) o2_6@@17 f_25@@32) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@17 f_25@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@17 f_25@@32))
))) (forall ((o2_6@@18 T@Ref) (f_25@@33 T@Field_4480_12060) ) (!  (=> (select (|PolymorphicMapType_9191_8702_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@18 f_25@@33) (= (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@24) o2_6@@18 f_25@@33) (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@18 f_25@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@18 f_25@@33))
))) (forall ((o2_6@@19 T@Ref) (f_25@@34 T@Field_4380_53) ) (!  (=> (select (|PolymorphicMapType_9191_12030_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@19 f_25@@34) (= (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@24) o2_6@@19 f_25@@34) (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@19 f_25@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@19 f_25@@34))
))) (forall ((o2_6@@20 T@Ref) (f_25@@35 T@Field_4380_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12030_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@20 f_25@@35) (= (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@24) o2_6@@20 f_25@@35) (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@20 f_25@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@20 f_25@@35))
))) (forall ((o2_6@@21 T@Ref) (f_25@@36 T@Field_12030_1203) ) (!  (=> (select (|PolymorphicMapType_9191_12030_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@21 f_25@@36) (= (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@24) o2_6@@21 f_25@@36) (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@21 f_25@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@21 f_25@@36))
))) (forall ((o2_6@@22 T@Ref) (f_25@@37 T@Field_12043_12048) ) (!  (=> (select (|PolymorphicMapType_9191_12030_32570#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@22 f_25@@37) (= (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) o2_6@@22 f_25@@37) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@22 f_25@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@22 f_25@@37))
))) (forall ((o2_6@@23 T@Ref) (f_25@@38 T@Field_12059_12060) ) (!  (=> (select (|PolymorphicMapType_9191_12030_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@23 f_25@@38) (= (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@24) o2_6@@23 f_25@@38) (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@23 f_25@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@23 f_25@@38))
))) (forall ((o2_6@@24 T@Ref) (f_25@@39 T@Field_4432_53) ) (!  (=> (select (|PolymorphicMapType_9191_12674_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@24 f_25@@39) (= (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@24) o2_6@@24 f_25@@39) (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@24 f_25@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@24 f_25@@39))
))) (forall ((o2_6@@25 T@Ref) (f_25@@40 T@Field_4432_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12674_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@25 f_25@@40) (= (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@24) o2_6@@25 f_25@@40) (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@25 f_25@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@25 f_25@@40))
))) (forall ((o2_6@@26 T@Ref) (f_25@@41 T@Field_12674_1525) ) (!  (=> (select (|PolymorphicMapType_9191_12674_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@26 f_25@@41) (= (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@24) o2_6@@26 f_25@@41) (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@26 f_25@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@26 f_25@@41))
))) (forall ((o2_6@@27 T@Ref) (f_25@@42 T@Field_12687_12692) ) (!  (=> (select (|PolymorphicMapType_9191_12674_33618#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@27 f_25@@42) (= (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@24) o2_6@@27 f_25@@42) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@27 f_25@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@27 f_25@@42))
))) (forall ((o2_6@@28 T@Ref) (f_25@@43 T@Field_12703_12704) ) (!  (=> (select (|PolymorphicMapType_9191_12674_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@24) null (PredicateMaskField_4380 pm_f_6@@6))) o2_6@@28 f_25@@43) (= (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@24) o2_6@@28 f_25@@43) (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@28 f_25@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@23) o2_6@@28 f_25@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (IsPredicateField_4393_4394 pm_f_6@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8642) (ExhaleHeap@@24 T@PolymorphicMapType_8642) (Mask@@55 T@PolymorphicMapType_8663) (pm_f_6@@7 T@Field_4480_12060) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_4480_12060 Mask@@55 null pm_f_6@@7) (IsPredicateField_4480_29867 pm_f_6@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@29 T@Ref) (f_25@@44 T@Field_8702_53) ) (!  (=> (select (|PolymorphicMapType_9191_8702_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@29 f_25@@44) (= (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@25) o2_6@@29 f_25@@44) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@29 f_25@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@29 f_25@@44))
)) (forall ((o2_6@@30 T@Ref) (f_25@@45 T@Field_8715_8716) ) (!  (=> (select (|PolymorphicMapType_9191_8702_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@30 f_25@@45) (= (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@25) o2_6@@30 f_25@@45) (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@30 f_25@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@30 f_25@@45))
))) (forall ((o2_6@@31 T@Ref) (f_25@@46 T@Field_13316_1830) ) (!  (=> (select (|PolymorphicMapType_9191_8702_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@31 f_25@@46) (= (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@25) o2_6@@31 f_25@@46) (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@31 f_25@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@31 f_25@@46))
))) (forall ((o2_6@@32 T@Ref) (f_25@@47 T@Field_4480_12048) ) (!  (=> (select (|PolymorphicMapType_9191_8702_31522#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@32 f_25@@47) (= (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) o2_6@@32 f_25@@47) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@32 f_25@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@32 f_25@@47))
))) (forall ((o2_6@@33 T@Ref) (f_25@@48 T@Field_4480_12060) ) (!  (=> (select (|PolymorphicMapType_9191_8702_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@33 f_25@@48) (= (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@25) o2_6@@33 f_25@@48) (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@33 f_25@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@33 f_25@@48))
))) (forall ((o2_6@@34 T@Ref) (f_25@@49 T@Field_4380_53) ) (!  (=> (select (|PolymorphicMapType_9191_12030_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@34 f_25@@49) (= (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@25) o2_6@@34 f_25@@49) (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@34 f_25@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@34 f_25@@49))
))) (forall ((o2_6@@35 T@Ref) (f_25@@50 T@Field_4380_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12030_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@35 f_25@@50) (= (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@25) o2_6@@35 f_25@@50) (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@35 f_25@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@35 f_25@@50))
))) (forall ((o2_6@@36 T@Ref) (f_25@@51 T@Field_12030_1203) ) (!  (=> (select (|PolymorphicMapType_9191_12030_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@36 f_25@@51) (= (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@25) o2_6@@36 f_25@@51) (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@36 f_25@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@36 f_25@@51))
))) (forall ((o2_6@@37 T@Ref) (f_25@@52 T@Field_12043_12048) ) (!  (=> (select (|PolymorphicMapType_9191_12030_32570#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@37 f_25@@52) (= (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@25) o2_6@@37 f_25@@52) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@37 f_25@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@37 f_25@@52))
))) (forall ((o2_6@@38 T@Ref) (f_25@@53 T@Field_12059_12060) ) (!  (=> (select (|PolymorphicMapType_9191_12030_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@38 f_25@@53) (= (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@25) o2_6@@38 f_25@@53) (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@38 f_25@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@38 f_25@@53))
))) (forall ((o2_6@@39 T@Ref) (f_25@@54 T@Field_4432_53) ) (!  (=> (select (|PolymorphicMapType_9191_12674_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@39 f_25@@54) (= (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@25) o2_6@@39 f_25@@54) (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@39 f_25@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@39 f_25@@54))
))) (forall ((o2_6@@40 T@Ref) (f_25@@55 T@Field_4432_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12674_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@40 f_25@@55) (= (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@25) o2_6@@40 f_25@@55) (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@40 f_25@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@40 f_25@@55))
))) (forall ((o2_6@@41 T@Ref) (f_25@@56 T@Field_12674_1525) ) (!  (=> (select (|PolymorphicMapType_9191_12674_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@41 f_25@@56) (= (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@25) o2_6@@41 f_25@@56) (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@41 f_25@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@41 f_25@@56))
))) (forall ((o2_6@@42 T@Ref) (f_25@@57 T@Field_12687_12692) ) (!  (=> (select (|PolymorphicMapType_9191_12674_33618#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@42 f_25@@57) (= (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@25) o2_6@@42 f_25@@57) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@42 f_25@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@42 f_25@@57))
))) (forall ((o2_6@@43 T@Ref) (f_25@@58 T@Field_12703_12704) ) (!  (=> (select (|PolymorphicMapType_9191_12674_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@25) null (PredicateMaskField_4480 pm_f_6@@7))) o2_6@@43 f_25@@58) (= (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@25) o2_6@@43 f_25@@58) (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@43 f_25@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@24) o2_6@@43 f_25@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (IsPredicateField_4480_29867 pm_f_6@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8642) (ExhaleHeap@@25 T@PolymorphicMapType_8642) (Mask@@56 T@PolymorphicMapType_8663) (pm_f_6@@8 T@Field_12703_12704) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_4432_12060 Mask@@56 null pm_f_6@@8) (IsWandField_4445_4446 pm_f_6@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@44 T@Ref) (f_25@@59 T@Field_8702_53) ) (!  (=> (select (|PolymorphicMapType_9191_8702_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@44 f_25@@59) (= (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@26) o2_6@@44 f_25@@59) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@44 f_25@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@44 f_25@@59))
)) (forall ((o2_6@@45 T@Ref) (f_25@@60 T@Field_8715_8716) ) (!  (=> (select (|PolymorphicMapType_9191_8702_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@45 f_25@@60) (= (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@26) o2_6@@45 f_25@@60) (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@45 f_25@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@45 f_25@@60))
))) (forall ((o2_6@@46 T@Ref) (f_25@@61 T@Field_13316_1830) ) (!  (=> (select (|PolymorphicMapType_9191_8702_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@46 f_25@@61) (= (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@26) o2_6@@46 f_25@@61) (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@46 f_25@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@46 f_25@@61))
))) (forall ((o2_6@@47 T@Ref) (f_25@@62 T@Field_4480_12048) ) (!  (=> (select (|PolymorphicMapType_9191_8702_31522#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@47 f_25@@62) (= (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@26) o2_6@@47 f_25@@62) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@47 f_25@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@47 f_25@@62))
))) (forall ((o2_6@@48 T@Ref) (f_25@@63 T@Field_4480_12060) ) (!  (=> (select (|PolymorphicMapType_9191_8702_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@48 f_25@@63) (= (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@26) o2_6@@48 f_25@@63) (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@48 f_25@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@48 f_25@@63))
))) (forall ((o2_6@@49 T@Ref) (f_25@@64 T@Field_4380_53) ) (!  (=> (select (|PolymorphicMapType_9191_12030_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@49 f_25@@64) (= (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@26) o2_6@@49 f_25@@64) (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@49 f_25@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@49 f_25@@64))
))) (forall ((o2_6@@50 T@Ref) (f_25@@65 T@Field_4380_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12030_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@50 f_25@@65) (= (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@26) o2_6@@50 f_25@@65) (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@50 f_25@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@50 f_25@@65))
))) (forall ((o2_6@@51 T@Ref) (f_25@@66 T@Field_12030_1203) ) (!  (=> (select (|PolymorphicMapType_9191_12030_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@51 f_25@@66) (= (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@26) o2_6@@51 f_25@@66) (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@51 f_25@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@51 f_25@@66))
))) (forall ((o2_6@@52 T@Ref) (f_25@@67 T@Field_12043_12048) ) (!  (=> (select (|PolymorphicMapType_9191_12030_32570#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@52 f_25@@67) (= (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@26) o2_6@@52 f_25@@67) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@52 f_25@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@52 f_25@@67))
))) (forall ((o2_6@@53 T@Ref) (f_25@@68 T@Field_12059_12060) ) (!  (=> (select (|PolymorphicMapType_9191_12030_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@53 f_25@@68) (= (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@26) o2_6@@53 f_25@@68) (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@53 f_25@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@53 f_25@@68))
))) (forall ((o2_6@@54 T@Ref) (f_25@@69 T@Field_4432_53) ) (!  (=> (select (|PolymorphicMapType_9191_12674_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@54 f_25@@69) (= (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@26) o2_6@@54 f_25@@69) (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@54 f_25@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@54 f_25@@69))
))) (forall ((o2_6@@55 T@Ref) (f_25@@70 T@Field_4432_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12674_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@55 f_25@@70) (= (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@26) o2_6@@55 f_25@@70) (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@55 f_25@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@55 f_25@@70))
))) (forall ((o2_6@@56 T@Ref) (f_25@@71 T@Field_12674_1525) ) (!  (=> (select (|PolymorphicMapType_9191_12674_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@56 f_25@@71) (= (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@26) o2_6@@56 f_25@@71) (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@56 f_25@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@56 f_25@@71))
))) (forall ((o2_6@@57 T@Ref) (f_25@@72 T@Field_12687_12692) ) (!  (=> (select (|PolymorphicMapType_9191_12674_33618#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@57 f_25@@72) (= (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) o2_6@@57 f_25@@72) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@57 f_25@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@57 f_25@@72))
))) (forall ((o2_6@@58 T@Ref) (f_25@@73 T@Field_12703_12704) ) (!  (=> (select (|PolymorphicMapType_9191_12674_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@26) null (WandMaskField_4445 pm_f_6@@8))) o2_6@@58 f_25@@73) (= (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@26) o2_6@@58 f_25@@73) (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@58 f_25@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@25) o2_6@@58 f_25@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (IsWandField_4445_4446 pm_f_6@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8642) (ExhaleHeap@@26 T@PolymorphicMapType_8642) (Mask@@57 T@PolymorphicMapType_8663) (pm_f_6@@9 T@Field_12059_12060) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_4380_12060 Mask@@57 null pm_f_6@@9) (IsWandField_4393_4394 pm_f_6@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@59 T@Ref) (f_25@@74 T@Field_8702_53) ) (!  (=> (select (|PolymorphicMapType_9191_8702_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@59 f_25@@74) (= (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@27) o2_6@@59 f_25@@74) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@59 f_25@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@59 f_25@@74))
)) (forall ((o2_6@@60 T@Ref) (f_25@@75 T@Field_8715_8716) ) (!  (=> (select (|PolymorphicMapType_9191_8702_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@60 f_25@@75) (= (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@27) o2_6@@60 f_25@@75) (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@60 f_25@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@60 f_25@@75))
))) (forall ((o2_6@@61 T@Ref) (f_25@@76 T@Field_13316_1830) ) (!  (=> (select (|PolymorphicMapType_9191_8702_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@61 f_25@@76) (= (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@27) o2_6@@61 f_25@@76) (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@61 f_25@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@61 f_25@@76))
))) (forall ((o2_6@@62 T@Ref) (f_25@@77 T@Field_4480_12048) ) (!  (=> (select (|PolymorphicMapType_9191_8702_31522#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@62 f_25@@77) (= (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@27) o2_6@@62 f_25@@77) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@62 f_25@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@62 f_25@@77))
))) (forall ((o2_6@@63 T@Ref) (f_25@@78 T@Field_4480_12060) ) (!  (=> (select (|PolymorphicMapType_9191_8702_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@63 f_25@@78) (= (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@27) o2_6@@63 f_25@@78) (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@63 f_25@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@63 f_25@@78))
))) (forall ((o2_6@@64 T@Ref) (f_25@@79 T@Field_4380_53) ) (!  (=> (select (|PolymorphicMapType_9191_12030_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@64 f_25@@79) (= (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@27) o2_6@@64 f_25@@79) (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@64 f_25@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@64 f_25@@79))
))) (forall ((o2_6@@65 T@Ref) (f_25@@80 T@Field_4380_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12030_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@65 f_25@@80) (= (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@27) o2_6@@65 f_25@@80) (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@65 f_25@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@65 f_25@@80))
))) (forall ((o2_6@@66 T@Ref) (f_25@@81 T@Field_12030_1203) ) (!  (=> (select (|PolymorphicMapType_9191_12030_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@66 f_25@@81) (= (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@27) o2_6@@66 f_25@@81) (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@66 f_25@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@66 f_25@@81))
))) (forall ((o2_6@@67 T@Ref) (f_25@@82 T@Field_12043_12048) ) (!  (=> (select (|PolymorphicMapType_9191_12030_32570#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@67 f_25@@82) (= (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) o2_6@@67 f_25@@82) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@67 f_25@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@67 f_25@@82))
))) (forall ((o2_6@@68 T@Ref) (f_25@@83 T@Field_12059_12060) ) (!  (=> (select (|PolymorphicMapType_9191_12030_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@68 f_25@@83) (= (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@27) o2_6@@68 f_25@@83) (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@68 f_25@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@68 f_25@@83))
))) (forall ((o2_6@@69 T@Ref) (f_25@@84 T@Field_4432_53) ) (!  (=> (select (|PolymorphicMapType_9191_12674_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@69 f_25@@84) (= (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@27) o2_6@@69 f_25@@84) (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@69 f_25@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@69 f_25@@84))
))) (forall ((o2_6@@70 T@Ref) (f_25@@85 T@Field_4432_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12674_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@70 f_25@@85) (= (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@27) o2_6@@70 f_25@@85) (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@70 f_25@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@70 f_25@@85))
))) (forall ((o2_6@@71 T@Ref) (f_25@@86 T@Field_12674_1525) ) (!  (=> (select (|PolymorphicMapType_9191_12674_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@71 f_25@@86) (= (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@27) o2_6@@71 f_25@@86) (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@71 f_25@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@71 f_25@@86))
))) (forall ((o2_6@@72 T@Ref) (f_25@@87 T@Field_12687_12692) ) (!  (=> (select (|PolymorphicMapType_9191_12674_33618#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@72 f_25@@87) (= (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@27) o2_6@@72 f_25@@87) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@72 f_25@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@72 f_25@@87))
))) (forall ((o2_6@@73 T@Ref) (f_25@@88 T@Field_12703_12704) ) (!  (=> (select (|PolymorphicMapType_9191_12674_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@27) null (WandMaskField_4393 pm_f_6@@9))) o2_6@@73 f_25@@88) (= (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@27) o2_6@@73 f_25@@88) (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@73 f_25@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@26) o2_6@@73 f_25@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (IsWandField_4393_4394 pm_f_6@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8642) (ExhaleHeap@@27 T@PolymorphicMapType_8642) (Mask@@58 T@PolymorphicMapType_8663) (pm_f_6@@10 T@Field_4480_12060) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_4480_12060 Mask@@58 null pm_f_6@@10) (IsWandField_4480_34911 pm_f_6@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@74 T@Ref) (f_25@@89 T@Field_8702_53) ) (!  (=> (select (|PolymorphicMapType_9191_8702_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@74 f_25@@89) (= (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@28) o2_6@@74 f_25@@89) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@74 f_25@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@74 f_25@@89))
)) (forall ((o2_6@@75 T@Ref) (f_25@@90 T@Field_8715_8716) ) (!  (=> (select (|PolymorphicMapType_9191_8702_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@75 f_25@@90) (= (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@28) o2_6@@75 f_25@@90) (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@75 f_25@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@75 f_25@@90))
))) (forall ((o2_6@@76 T@Ref) (f_25@@91 T@Field_13316_1830) ) (!  (=> (select (|PolymorphicMapType_9191_8702_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@76 f_25@@91) (= (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@28) o2_6@@76 f_25@@91) (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@76 f_25@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@76 f_25@@91))
))) (forall ((o2_6@@77 T@Ref) (f_25@@92 T@Field_4480_12048) ) (!  (=> (select (|PolymorphicMapType_9191_8702_31522#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@77 f_25@@92) (= (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) o2_6@@77 f_25@@92) (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@77 f_25@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@77 f_25@@92))
))) (forall ((o2_6@@78 T@Ref) (f_25@@93 T@Field_4480_12060) ) (!  (=> (select (|PolymorphicMapType_9191_8702_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@78 f_25@@93) (= (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@28) o2_6@@78 f_25@@93) (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@78 f_25@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@78 f_25@@93))
))) (forall ((o2_6@@79 T@Ref) (f_25@@94 T@Field_4380_53) ) (!  (=> (select (|PolymorphicMapType_9191_12030_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@79 f_25@@94) (= (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@28) o2_6@@79 f_25@@94) (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@79 f_25@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@79 f_25@@94))
))) (forall ((o2_6@@80 T@Ref) (f_25@@95 T@Field_4380_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12030_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@80 f_25@@95) (= (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@28) o2_6@@80 f_25@@95) (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@80 f_25@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@80 f_25@@95))
))) (forall ((o2_6@@81 T@Ref) (f_25@@96 T@Field_12030_1203) ) (!  (=> (select (|PolymorphicMapType_9191_12030_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@81 f_25@@96) (= (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@28) o2_6@@81 f_25@@96) (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@81 f_25@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@81 f_25@@96))
))) (forall ((o2_6@@82 T@Ref) (f_25@@97 T@Field_12043_12048) ) (!  (=> (select (|PolymorphicMapType_9191_12030_32570#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@82 f_25@@97) (= (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@28) o2_6@@82 f_25@@97) (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@82 f_25@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@82 f_25@@97))
))) (forall ((o2_6@@83 T@Ref) (f_25@@98 T@Field_12059_12060) ) (!  (=> (select (|PolymorphicMapType_9191_12030_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@83 f_25@@98) (= (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@28) o2_6@@83 f_25@@98) (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@83 f_25@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@83 f_25@@98))
))) (forall ((o2_6@@84 T@Ref) (f_25@@99 T@Field_4432_53) ) (!  (=> (select (|PolymorphicMapType_9191_12674_53#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@84 f_25@@99) (= (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@28) o2_6@@84 f_25@@99) (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@84 f_25@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@84 f_25@@99))
))) (forall ((o2_6@@85 T@Ref) (f_25@@100 T@Field_4432_8716) ) (!  (=> (select (|PolymorphicMapType_9191_12674_8716#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@85 f_25@@100) (= (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@28) o2_6@@85 f_25@@100) (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@85 f_25@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@85 f_25@@100))
))) (forall ((o2_6@@86 T@Ref) (f_25@@101 T@Field_12674_1525) ) (!  (=> (select (|PolymorphicMapType_9191_12674_1203#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@86 f_25@@101) (= (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@28) o2_6@@86 f_25@@101) (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@86 f_25@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@86 f_25@@101))
))) (forall ((o2_6@@87 T@Ref) (f_25@@102 T@Field_12687_12692) ) (!  (=> (select (|PolymorphicMapType_9191_12674_33618#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@87 f_25@@102) (= (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@28) o2_6@@87 f_25@@102) (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@87 f_25@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@87 f_25@@102))
))) (forall ((o2_6@@88 T@Ref) (f_25@@103 T@Field_12703_12704) ) (!  (=> (select (|PolymorphicMapType_9191_12674_12060#PolymorphicMapType_9191| (select (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@28) null (WandMaskField_4480 pm_f_6@@10))) o2_6@@88 f_25@@103) (= (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@28) o2_6@@88 f_25@@103) (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@88 f_25@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| ExhaleHeap@@27) o2_6@@88 f_25@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (IsWandField_4480_34911 pm_f_6@@10))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8642) (o_16 T@Ref) (f_2 T@Field_12703_12704) (v T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@29) (store (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@29) o_16 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@29) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@29) (store (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@29) o_16 f_2 v)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8642) (o_16@@0 T@Ref) (f_2@@0 T@Field_12687_12692) (v@@0 T@PolymorphicMapType_9191) ) (! (succHeap Heap@@30 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@30) (store (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@30) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@30) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@30) (store (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@30) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8642) (o_16@@1 T@Ref) (f_2@@1 T@Field_12674_1525) (v@@1 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@31) (store (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@31) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@31) (store (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@31) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@31) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8642) (o_16@@2 T@Ref) (f_2@@2 T@Field_4432_8716) (v@@2 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@32) (store (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@32) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@32) (store (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@32) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@32) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8642) (o_16@@3 T@Ref) (f_2@@3 T@Field_4432_53) (v@@3 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@33) (store (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@33) o_16@@3 f_2@@3 v@@3) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@33) (store (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@33) o_16@@3 f_2@@3 v@@3) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@33) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8642) (o_16@@4 T@Ref) (f_2@@4 T@Field_12059_12060) (v@@4 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@34) (store (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@34) o_16@@4 f_2@@4 v@@4) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@34) (store (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@34) o_16@@4 f_2@@4 v@@4) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@34) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8642) (o_16@@5 T@Ref) (f_2@@5 T@Field_12043_12048) (v@@5 T@PolymorphicMapType_9191) ) (! (succHeap Heap@@35 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@35) (store (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@35) o_16@@5 f_2@@5 v@@5) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@35) (store (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@35) o_16@@5 f_2@@5 v@@5) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@35) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8642) (o_16@@6 T@Ref) (f_2@@6 T@Field_12030_1203) (v@@6 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@36) (store (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@36) o_16@@6 f_2@@6 v@@6) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@36) (store (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@36) o_16@@6 f_2@@6 v@@6) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@36) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_8642) (o_16@@7 T@Ref) (f_2@@7 T@Field_4380_8716) (v@@7 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@37) (store (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@37) o_16@@7 f_2@@7 v@@7) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@37) (store (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@37) o_16@@7 f_2@@7 v@@7) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@37) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8642) (o_16@@8 T@Ref) (f_2@@8 T@Field_4380_53) (v@@8 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@38) (store (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@38) o_16@@8 f_2@@8 v@@8) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@38) (store (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@38) o_16@@8 f_2@@8 v@@8) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@38) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_8642) (o_16@@9 T@Ref) (f_2@@9 T@Field_4480_12060) (v@@9 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@39) (store (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@39) o_16@@9 f_2@@9 v@@9) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@39) (store (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@39) o_16@@9 f_2@@9 v@@9) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@39) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_8642) (o_16@@10 T@Ref) (f_2@@10 T@Field_4480_12048) (v@@10 T@PolymorphicMapType_9191) ) (! (succHeap Heap@@40 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@40) (store (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@40) o_16@@10 f_2@@10 v@@10) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@40) (store (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@40) o_16@@10 f_2@@10 v@@10) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@40) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_8642) (o_16@@11 T@Ref) (f_2@@11 T@Field_13316_1830) (v@@11 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@41) (store (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@41) o_16@@11 f_2@@11 v@@11) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@41) (store (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@41) o_16@@11 f_2@@11 v@@11) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@41) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_8642) (o_16@@12 T@Ref) (f_2@@12 T@Field_8715_8716) (v@@12 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@42) (store (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@42) o_16@@12 f_2@@12 v@@12) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@42) (store (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@42) o_16@@12 f_2@@12 v@@12) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@42) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_8642) (o_16@@13 T@Ref) (f_2@@13 T@Field_8702_53) (v@@13 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_8642 (store (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@43) o_16@@13 f_2@@13 v@@13) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8642 (store (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@43) o_16@@13 f_2@@13 v@@13) (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4432_1525#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4480_27102#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4480_12060#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4380_53#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4380_8716#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4380_28248#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4380_12060#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4432_53#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4432_8716#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4432_29393#PolymorphicMapType_8642| Heap@@43) (|PolymorphicMapType_8642_4432_12060#PolymorphicMapType_8642| Heap@@43)))
)))
(assert (forall ((o_16@@14 T@Ref) (f_10 T@Field_8715_8716) (Heap@@44 T@PolymorphicMapType_8642) ) (!  (=> (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@44) o_16@@14 $allocated) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@44) (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@44) o_16@@14 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8642_4251_4252#PolymorphicMapType_8642| Heap@@44) o_16@@14 f_10))
)))
(assert (forall ((p@@3 T@Field_12703_12704) (v_1@@2 T@FrameType) (q T@Field_12703_12704) (w@@2 T@FrameType) (r T@Field_12703_12704) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12674_12674 p@@3 v_1@@2 q w@@2) (InsidePredicate_12674_12674 q w@@2 r u)) (InsidePredicate_12674_12674 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12674_12674 p@@3 v_1@@2 q w@@2) (InsidePredicate_12674_12674 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_12703_12704) (v_1@@3 T@FrameType) (q@@0 T@Field_12703_12704) (w@@3 T@FrameType) (r@@0 T@Field_12059_12060) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12674_12674 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_12674_12030 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_12674_12030 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12674_12674 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_12674_12030 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_12703_12704) (v_1@@4 T@FrameType) (q@@1 T@Field_12703_12704) (w@@4 T@FrameType) (r@@1 T@Field_4480_12060) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12674_12674 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_12674_8702 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_12674_8702 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12674_12674 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_12674_8702 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_12703_12704) (v_1@@5 T@FrameType) (q@@2 T@Field_12059_12060) (w@@5 T@FrameType) (r@@2 T@Field_12703_12704) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12674_12030 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_12030_12674 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_12674_12674 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12674_12030 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_12030_12674 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_12703_12704) (v_1@@6 T@FrameType) (q@@3 T@Field_12059_12060) (w@@6 T@FrameType) (r@@3 T@Field_12059_12060) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_12674_12030 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_12030_12030 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_12674_12030 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12674_12030 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_12030_12030 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_12703_12704) (v_1@@7 T@FrameType) (q@@4 T@Field_12059_12060) (w@@7 T@FrameType) (r@@4 T@Field_4480_12060) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_12674_12030 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_12030_8702 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_12674_8702 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12674_12030 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_12030_8702 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_12703_12704) (v_1@@8 T@FrameType) (q@@5 T@Field_4480_12060) (w@@8 T@FrameType) (r@@5 T@Field_12703_12704) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_12674_8702 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8702_12674 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_12674_12674 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12674_8702 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8702_12674 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_12703_12704) (v_1@@9 T@FrameType) (q@@6 T@Field_4480_12060) (w@@9 T@FrameType) (r@@6 T@Field_12059_12060) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_12674_8702 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8702_12030 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_12674_12030 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12674_8702 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8702_12030 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_12703_12704) (v_1@@10 T@FrameType) (q@@7 T@Field_4480_12060) (w@@10 T@FrameType) (r@@7 T@Field_4480_12060) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_12674_8702 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8702_8702 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_12674_8702 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12674_8702 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8702_8702 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_12059_12060) (v_1@@11 T@FrameType) (q@@8 T@Field_12703_12704) (w@@11 T@FrameType) (r@@8 T@Field_12703_12704) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_12030_12674 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_12674_12674 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_12030_12674 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12030_12674 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_12674_12674 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_12059_12060) (v_1@@12 T@FrameType) (q@@9 T@Field_12703_12704) (w@@12 T@FrameType) (r@@9 T@Field_12059_12060) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_12030_12674 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_12674_12030 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_12030_12030 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12030_12674 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_12674_12030 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_12059_12060) (v_1@@13 T@FrameType) (q@@10 T@Field_12703_12704) (w@@13 T@FrameType) (r@@10 T@Field_4480_12060) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_12030_12674 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_12674_8702 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_12030_8702 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12030_12674 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_12674_8702 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_12059_12060) (v_1@@14 T@FrameType) (q@@11 T@Field_12059_12060) (w@@14 T@FrameType) (r@@11 T@Field_12703_12704) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_12030_12030 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_12030_12674 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_12030_12674 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12030_12030 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_12030_12674 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_12059_12060) (v_1@@15 T@FrameType) (q@@12 T@Field_12059_12060) (w@@15 T@FrameType) (r@@12 T@Field_12059_12060) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_12030_12030 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_12030_12030 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_12030_12030 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12030_12030 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_12030_12030 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_12059_12060) (v_1@@16 T@FrameType) (q@@13 T@Field_12059_12060) (w@@16 T@FrameType) (r@@13 T@Field_4480_12060) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_12030_12030 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_12030_8702 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_12030_8702 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12030_12030 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_12030_8702 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_12059_12060) (v_1@@17 T@FrameType) (q@@14 T@Field_4480_12060) (w@@17 T@FrameType) (r@@14 T@Field_12703_12704) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_12030_8702 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8702_12674 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_12030_12674 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12030_8702 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8702_12674 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_12059_12060) (v_1@@18 T@FrameType) (q@@15 T@Field_4480_12060) (w@@18 T@FrameType) (r@@15 T@Field_12059_12060) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_12030_8702 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8702_12030 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_12030_12030 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12030_8702 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8702_12030 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_12059_12060) (v_1@@19 T@FrameType) (q@@16 T@Field_4480_12060) (w@@19 T@FrameType) (r@@16 T@Field_4480_12060) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_12030_8702 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8702_8702 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_12030_8702 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12030_8702 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8702_8702 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_4480_12060) (v_1@@20 T@FrameType) (q@@17 T@Field_12703_12704) (w@@20 T@FrameType) (r@@17 T@Field_12703_12704) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_8702_12674 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_12674_12674 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_8702_12674 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8702_12674 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_12674_12674 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_4480_12060) (v_1@@21 T@FrameType) (q@@18 T@Field_12703_12704) (w@@21 T@FrameType) (r@@18 T@Field_12059_12060) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_8702_12674 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_12674_12030 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_8702_12030 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8702_12674 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_12674_12030 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_4480_12060) (v_1@@22 T@FrameType) (q@@19 T@Field_12703_12704) (w@@22 T@FrameType) (r@@19 T@Field_4480_12060) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_8702_12674 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_12674_8702 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_8702_8702 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8702_12674 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_12674_8702 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_4480_12060) (v_1@@23 T@FrameType) (q@@20 T@Field_12059_12060) (w@@23 T@FrameType) (r@@20 T@Field_12703_12704) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_8702_12030 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_12030_12674 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_8702_12674 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8702_12030 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_12030_12674 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_4480_12060) (v_1@@24 T@FrameType) (q@@21 T@Field_12059_12060) (w@@24 T@FrameType) (r@@21 T@Field_12059_12060) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_8702_12030 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_12030_12030 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_8702_12030 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8702_12030 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_12030_12030 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_4480_12060) (v_1@@25 T@FrameType) (q@@22 T@Field_12059_12060) (w@@25 T@FrameType) (r@@22 T@Field_4480_12060) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_8702_12030 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_12030_8702 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_8702_8702 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8702_12030 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_12030_8702 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_4480_12060) (v_1@@26 T@FrameType) (q@@23 T@Field_4480_12060) (w@@26 T@FrameType) (r@@23 T@Field_12703_12704) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_8702_8702 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8702_12674 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_8702_12674 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8702_8702 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8702_12674 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_4480_12060) (v_1@@27 T@FrameType) (q@@24 T@Field_4480_12060) (w@@27 T@FrameType) (r@@24 T@Field_12059_12060) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_8702_8702 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8702_12030 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_8702_12030 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8702_8702 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8702_12030 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_4480_12060) (v_1@@28 T@FrameType) (q@@25 T@Field_4480_12060) (w@@28 T@FrameType) (r@@25 T@Field_4480_12060) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_8702_8702 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8702_8702 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_8702_8702 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8702_8702 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8702_8702 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Real) (arg3@@11 T@Ref) (arg4@@11 Real) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Real) ) (!  (=> (= (wand arg1@@11 arg2@@11 arg3@@11 arg4@@11) (wand arg1_2 arg2_2 arg3_2 arg4_2)) (and (= arg1@@11 arg1_2) (and (= arg2@@11 arg2_2) (and (= arg3@@11 arg3_2) (= arg4@@11 arg4_2)))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@11 arg2@@11 arg3@@11 arg4@@11) (wand arg1_2 arg2_2 arg3_2 arg4_2))
)))
(assert (forall ((arg1@@12 Real) (arg2@@12 T@Ref) (arg3@@12 T@Ref) (arg4@@12 Real) (arg1_2@@0 Real) (arg2_2@@0 T@Ref) (arg3_2@@0 T@Ref) (arg4_2@@0 Real) ) (!  (=> (= (wand_1 arg1@@12 arg2@@12 arg3@@12 arg4@@12) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0)) (and (= arg1@@12 arg1_2@@0) (and (= arg2@@12 arg2_2@@0) (and (= arg3@@12 arg3_2@@0) (= arg4@@12 arg4_2@@0)))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@12 arg2@@12 arg3@@12 arg4@@12) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@4 () T@PolymorphicMapType_8663)
(declare-fun a_8 () T@Ref)
(declare-fun b_30 () T@Ref)
(declare-fun Heap@@45 () T@PolymorphicMapType_8642)
(declare-fun x () T@Ref)
(declare-fun z () T@Ref)
(declare-fun y () T@Ref)
(declare-fun a_6 () T@Ref)
(declare-fun b_29 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_8663)
(declare-fun Mask@2 () T@PolymorphicMapType_8663)
(declare-fun Mask@0 () T@PolymorphicMapType_8663)
(declare-fun Mask@1 () T@PolymorphicMapType_8663)
(set-info :boogie-vc-id m2)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon25_Then_correct true))
(let ((anon15_correct true))
(let ((anon24_Then_correct  (=> (HasDirectPerm_4380_1203 Mask@4 null (wand a_8 FullPerm b_30 FullPerm)) (and (=> (= (ControlFlow 0 17) 16) anon25_Then_correct) (=> (= (ControlFlow 0 17) 14) anon15_correct)))))
(let ((anon24_Else_correct  (=> (and (not (HasDirectPerm_4380_1203 Mask@4 null (wand a_8 FullPerm b_30 FullPerm))) (= (ControlFlow 0 15) 14)) anon15_correct)))
(let ((anon23_Else_correct  (=> (and (and (forall ((a_3_1 T@Ref) (b_3_1 T@Ref) ) (!  (=> (HasDirectPerm_4380_1203 Mask@4 null (wand a_3_1 FullPerm b_3_1 FullPerm)) (= a_3_1 x))
 :qid |stdinbpl.694:20|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@4) null (wand a_3_1 FullPerm b_3_1 FullPerm)))
 :pattern ( (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@45) null (wand a_3_1 FullPerm b_3_1 FullPerm)))
)) (state Heap@@45 Mask@4)) (and (state Heap@@45 Mask@4) (= (ControlFlow 0 13) (- 0 12)))) (= x z))))
(let ((anon19_Else_correct  (=> (forall ((a_1_1 T@Ref) (b_1_2 T@Ref) ) (!  (=> (HasDirectPerm_4380_1203 Mask@4 null (wand a_1_1 FullPerm b_1_2 FullPerm)) (and (> (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@45) a_1_1 f_7) 0) (< (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@45) b_1_2 f_7) 0)))
 :qid |stdinbpl.633:20|
 :skolemid |38|
 :pattern ( (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@4) null (wand a_1_1 FullPerm b_1_2 FullPerm)))
 :pattern ( (select (|PolymorphicMapType_8642_4380_1203#PolymorphicMapType_8642| Heap@@45) null (wand a_1_1 FullPerm b_1_2 FullPerm)))
)) (=> (and (state Heap@@45 Mask@4) (state Heap@@45 Mask@4)) (and (=> (= (ControlFlow 0 18) (- 0 22)) (HasDirectPerm_4480_1830 Mask@4 x f_7)) (=> (HasDirectPerm_4480_1830 Mask@4 x f_7) (and (=> (= (ControlFlow 0 18) (- 0 21)) (> (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@45) x f_7) 0)) (=> (> (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@45) x f_7) 0) (=> (state Heap@@45 Mask@4) (and (=> (= (ControlFlow 0 18) (- 0 20)) (HasDirectPerm_4480_1830 Mask@4 y f_7)) (=> (HasDirectPerm_4480_1830 Mask@4 y f_7) (and (=> (= (ControlFlow 0 18) (- 0 19)) (< (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@45) y f_7) 0)) (=> (< (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@45) y f_7) 0) (=> (state Heap@@45 Mask@4) (and (and (=> (= (ControlFlow 0 18) 13) anon23_Else_correct) (=> (= (ControlFlow 0 18) 17) anon24_Then_correct)) (=> (= (ControlFlow 0 18) 15) anon24_Else_correct))))))))))))))))
(let ((anon21_Then_correct true))
(let ((anon10_correct true))
(let ((anon22_Else_correct  (=> (and (>= 0 (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@45) a_6 f_7)) (= (ControlFlow 0 8) 3)) anon10_correct)))
(let ((anon22_Then_correct  (=> (> (select (|PolymorphicMapType_8642_4480_1830#PolymorphicMapType_8642| Heap@@45) a_6 f_7) 0) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_4480_1830 Mask@4 b_29 f_7)) (=> (HasDirectPerm_4480_1830 Mask@4 b_29 f_7) (=> (= (ControlFlow 0 6) 3) anon10_correct))))))
(let ((anon21_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (HasDirectPerm_4480_1830 Mask@4 a_6 f_7)) (=> (HasDirectPerm_4480_1830 Mask@4 a_6 f_7) (and (=> (= (ControlFlow 0 9) 6) anon22_Then_correct) (=> (= (ControlFlow 0 9) 8) anon22_Else_correct))))))
(let ((anon20_Then_correct  (=> (HasDirectPerm_4380_1203 Mask@4 null (wand a_6 FullPerm b_29 FullPerm)) (and (=> (= (ControlFlow 0 11) 5) anon21_Then_correct) (=> (= (ControlFlow 0 11) 9) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (and (not (HasDirectPerm_4380_1203 Mask@4 null (wand a_6 FullPerm b_29 FullPerm))) (= (ControlFlow 0 4) 3)) anon10_correct)))
(let ((anon18_Else_correct  (=> (and (and (= Mask@4 (PolymorphicMapType_8663 (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| Mask@3) (store (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@3) null (wand z FullPerm y FullPerm) (+ (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@3) null (wand z FullPerm y FullPerm)) FullPerm)) (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| Mask@3) (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| Mask@3))) (state Heap@@45 Mask@4)) (and (state Heap@@45 Mask@4) (state Heap@@45 Mask@4))) (and (and (=> (= (ControlFlow 0 23) 18) anon19_Else_correct) (=> (= (ControlFlow 0 23) 11) anon20_Then_correct)) (=> (= (ControlFlow 0 23) 4) anon20_Else_correct)))))
(let ((anon18_Then_correct true))
(let ((anon17_Else_correct  (=> (and (and (= Mask@3 (PolymorphicMapType_8663 (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| Mask@2) (store (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@2) null (wand x FullPerm y FullPerm) (+ (select (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@2) null (wand x FullPerm y FullPerm)) FullPerm)) (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| Mask@2) (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| Mask@2))) (state Heap@@45 Mask@3)) (and (state Heap@@45 Mask@3) (state Heap@@45 Mask@3))) (and (=> (= (ControlFlow 0 24) 2) anon18_Then_correct) (=> (= (ControlFlow 0 24) 23) anon18_Else_correct)))))
(let ((anon17_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@45 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@45) x $allocated) (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@45) y $allocated))) (=> (and (and (and (and (select (|PolymorphicMapType_8642_4248_53#PolymorphicMapType_8642| Heap@@45) z $allocated) (not (= x null))) (and (= Mask@0 (PolymorphicMapType_8663 (store (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| ZeroMask) x f_7) FullPerm)) (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| ZeroMask) (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| ZeroMask))) (state Heap@@45 Mask@0))) (and (and (state Heap@@45 Mask@0) (state Heap@@45 Mask@0)) (and (not (= y null)) (= Mask@1 (PolymorphicMapType_8663 (store (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| Mask@0) y f_7 (+ (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| Mask@0) y f_7) FullPerm)) (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| Mask@0) (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| Mask@0)))))) (and (and (and (state Heap@@45 Mask@1) (state Heap@@45 Mask@1)) (and (state Heap@@45 Mask@1) (not (= z null)))) (and (and (= Mask@2 (PolymorphicMapType_8663 (store (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| Mask@1) z f_7 (+ (select (|PolymorphicMapType_8663_4480_1830#PolymorphicMapType_8663| Mask@1) z f_7) FullPerm)) (|PolymorphicMapType_8663_4380_1203#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4432_1525#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4480_53#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4480_8716#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4480_41519#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4480_12060#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4380_53#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4380_8716#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4380_41933#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4380_12060#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4432_53#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4432_8716#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4432_42347#PolymorphicMapType_8663| Mask@1) (|PolymorphicMapType_8663_4432_12060#PolymorphicMapType_8663| Mask@1))) (state Heap@@45 Mask@2)) (and (state Heap@@45 Mask@2) (state Heap@@45 Mask@2))))) (and (=> (= (ControlFlow 0 25) 1) anon17_Then_correct) (=> (= (ControlFlow 0 25) 24) anon17_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 26) 25) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
