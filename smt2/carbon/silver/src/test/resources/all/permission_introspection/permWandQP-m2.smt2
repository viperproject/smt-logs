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
(declare-sort T@Field_13676_53 0)
(declare-sort T@Field_13689_13690 0)
(declare-sort T@Field_21282_4093 0)
(declare-sort T@Field_19882_3444 0)
(declare-sort T@Field_8502_19900 0)
(declare-sort T@Field_8502_19912 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_19882_53 0)
(declare-sort T@Field_19882_13690 0)
(declare-sort T@Field_19895_19900 0)
(declare-sort T@Field_19911_19912 0)
(declare-sort T@Field_20528_3768 0)
(declare-sort T@Field_20528_53 0)
(declare-sort T@Field_20528_13690 0)
(declare-sort T@Field_20543_20548 0)
(declare-sort T@Field_20561_20562 0)
(declare-datatypes ((T@PolymorphicMapType_13637 0)) (((PolymorphicMapType_13637 (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| (Array T@Ref T@Field_21282_4093 Real)) (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| (Array T@Ref T@Field_19882_3444 Real)) (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| (Array T@Ref T@Field_20528_3768 Real)) (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| (Array T@Ref T@Field_13676_53 Real)) (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| (Array T@Ref T@Field_13689_13690 Real)) (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| (Array T@Ref T@Field_8502_19900 Real)) (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| (Array T@Ref T@Field_8502_19912 Real)) (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| (Array T@Ref T@Field_19882_53 Real)) (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| (Array T@Ref T@Field_19882_13690 Real)) (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| (Array T@Ref T@Field_19895_19900 Real)) (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| (Array T@Ref T@Field_19911_19912 Real)) (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| (Array T@Ref T@Field_20528_53 Real)) (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| (Array T@Ref T@Field_20528_13690 Real)) (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| (Array T@Ref T@Field_20543_20548 Real)) (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| (Array T@Ref T@Field_20561_20562 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14165 0)) (((PolymorphicMapType_14165 (|PolymorphicMapType_14165_13676_53#PolymorphicMapType_14165| (Array T@Ref T@Field_13676_53 Bool)) (|PolymorphicMapType_14165_13676_13690#PolymorphicMapType_14165| (Array T@Ref T@Field_13689_13690 Bool)) (|PolymorphicMapType_14165_13676_3444#PolymorphicMapType_14165| (Array T@Ref T@Field_21282_4093 Bool)) (|PolymorphicMapType_14165_13676_43225#PolymorphicMapType_14165| (Array T@Ref T@Field_8502_19900 Bool)) (|PolymorphicMapType_14165_13676_19912#PolymorphicMapType_14165| (Array T@Ref T@Field_8502_19912 Bool)) (|PolymorphicMapType_14165_19882_53#PolymorphicMapType_14165| (Array T@Ref T@Field_19882_53 Bool)) (|PolymorphicMapType_14165_19882_13690#PolymorphicMapType_14165| (Array T@Ref T@Field_19882_13690 Bool)) (|PolymorphicMapType_14165_19882_3444#PolymorphicMapType_14165| (Array T@Ref T@Field_19882_3444 Bool)) (|PolymorphicMapType_14165_19882_44273#PolymorphicMapType_14165| (Array T@Ref T@Field_19895_19900 Bool)) (|PolymorphicMapType_14165_19882_19912#PolymorphicMapType_14165| (Array T@Ref T@Field_19911_19912 Bool)) (|PolymorphicMapType_14165_20528_53#PolymorphicMapType_14165| (Array T@Ref T@Field_20528_53 Bool)) (|PolymorphicMapType_14165_20528_13690#PolymorphicMapType_14165| (Array T@Ref T@Field_20528_13690 Bool)) (|PolymorphicMapType_14165_20528_3444#PolymorphicMapType_14165| (Array T@Ref T@Field_20528_3768 Bool)) (|PolymorphicMapType_14165_20528_45321#PolymorphicMapType_14165| (Array T@Ref T@Field_20543_20548 Bool)) (|PolymorphicMapType_14165_20528_19912#PolymorphicMapType_14165| (Array T@Ref T@Field_20561_20562 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13616 0)) (((PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| (Array T@Ref T@Field_13676_53 Bool)) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| (Array T@Ref T@Field_13689_13690 T@Ref)) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| (Array T@Ref T@Field_21282_4093 Int)) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| (Array T@Ref T@Field_19882_3444 Int)) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| (Array T@Ref T@Field_8502_19900 T@PolymorphicMapType_14165)) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| (Array T@Ref T@Field_8502_19912 T@FrameType)) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| (Array T@Ref T@Field_19882_53 Bool)) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| (Array T@Ref T@Field_19882_13690 T@Ref)) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| (Array T@Ref T@Field_19895_19900 T@PolymorphicMapType_14165)) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| (Array T@Ref T@Field_19911_19912 T@FrameType)) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| (Array T@Ref T@Field_20528_3768 Int)) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| (Array T@Ref T@Field_20528_53 Bool)) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| (Array T@Ref T@Field_20528_13690 T@Ref)) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| (Array T@Ref T@Field_20543_20548 T@PolymorphicMapType_14165)) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| (Array T@Ref T@Field_20561_20562 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_13676_53)
(declare-fun f_7 () T@Field_21282_4093)
(declare-fun g () T@Field_21282_4093)
(declare-fun succHeap (T@PolymorphicMapType_13616 T@PolymorphicMapType_13616) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13616 T@PolymorphicMapType_13616) Bool)
(declare-fun wand (T@Ref Real T@Ref Real) T@Field_19882_3444)
(declare-fun getPredWandId_8358_3444 (T@Field_19882_3444) Int)
(declare-fun wand_1 ((Array T@Ref Bool) Real (Array T@Ref Bool) Real) T@Field_20528_3768)
(declare-fun getPredWandId_8414_3768 (T@Field_20528_3768) Int)
(declare-fun state (T@PolymorphicMapType_13616 T@PolymorphicMapType_13637) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_13637) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_14165)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13616 T@PolymorphicMapType_13616 T@PolymorphicMapType_13637) Bool)
(declare-fun IsPredicateField_8435_8436 (T@Field_20561_20562) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_20528 (T@Field_20561_20562) T@Field_20543_20548)
(declare-fun HasDirectPerm_20528_19912 (T@PolymorphicMapType_13637 T@Ref T@Field_20561_20562) Bool)
(declare-fun IsPredicateField_8371_8372 (T@Field_19911_19912) Bool)
(declare-fun PredicateMaskField_19882 (T@Field_19911_19912) T@Field_19895_19900)
(declare-fun HasDirectPerm_19882_19912 (T@PolymorphicMapType_13637 T@Ref T@Field_19911_19912) Bool)
(declare-fun IsPredicateField_8502_41570 (T@Field_8502_19912) Bool)
(declare-fun PredicateMaskField_8502 (T@Field_8502_19912) T@Field_8502_19900)
(declare-fun HasDirectPerm_8502_19912 (T@PolymorphicMapType_13637 T@Ref T@Field_8502_19912) Bool)
(declare-fun IsWandField_8435_8436 (T@Field_20561_20562) Bool)
(declare-fun WandMaskField_8435 (T@Field_20561_20562) T@Field_20543_20548)
(declare-fun IsWandField_8371_8372 (T@Field_19911_19912) Bool)
(declare-fun WandMaskField_8371 (T@Field_19911_19912) T@Field_19895_19900)
(declare-fun IsWandField_8502_46614 (T@Field_8502_19912) Bool)
(declare-fun WandMaskField_8502 (T@Field_8502_19912) T@Field_8502_19900)
(declare-fun dummyHeap () T@PolymorphicMapType_13616)
(declare-fun ZeroMask () T@PolymorphicMapType_13637)
(declare-fun InsidePredicate_20528_20528 (T@Field_20561_20562 T@FrameType T@Field_20561_20562 T@FrameType) Bool)
(declare-fun InsidePredicate_19882_19882 (T@Field_19911_19912 T@FrameType T@Field_19911_19912 T@FrameType) Bool)
(declare-fun InsidePredicate_13676_13676 (T@Field_8502_19912 T@FrameType T@Field_8502_19912 T@FrameType) Bool)
(declare-fun IsPredicateField_8502_4093 (T@Field_21282_4093) Bool)
(declare-fun IsWandField_8502_4093 (T@Field_21282_4093) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8414_57406 (T@Field_20543_20548) Bool)
(declare-fun IsWandField_8414_57422 (T@Field_20543_20548) Bool)
(declare-fun IsPredicateField_8414_13690 (T@Field_20528_13690) Bool)
(declare-fun IsWandField_8414_13690 (T@Field_20528_13690) Bool)
(declare-fun IsPredicateField_8414_53 (T@Field_20528_53) Bool)
(declare-fun IsWandField_8414_53 (T@Field_20528_53) Bool)
(declare-fun IsPredicateField_8414_3768 (T@Field_20528_3768) Bool)
(declare-fun IsWandField_8414_3768 (T@Field_20528_3768) Bool)
(declare-fun IsPredicateField_8358_56589 (T@Field_19895_19900) Bool)
(declare-fun IsWandField_8358_56605 (T@Field_19895_19900) Bool)
(declare-fun IsPredicateField_8358_13690 (T@Field_19882_13690) Bool)
(declare-fun IsWandField_8358_13690 (T@Field_19882_13690) Bool)
(declare-fun IsPredicateField_8358_53 (T@Field_19882_53) Bool)
(declare-fun IsWandField_8358_53 (T@Field_19882_53) Bool)
(declare-fun IsPredicateField_8358_3444 (T@Field_19882_3444) Bool)
(declare-fun IsWandField_8358_3444 (T@Field_19882_3444) Bool)
(declare-fun IsPredicateField_8502_55772 (T@Field_8502_19900) Bool)
(declare-fun IsWandField_8502_55788 (T@Field_8502_19900) Bool)
(declare-fun IsPredicateField_8502_13690 (T@Field_13689_13690) Bool)
(declare-fun IsWandField_8502_13690 (T@Field_13689_13690) Bool)
(declare-fun IsPredicateField_8502_53 (T@Field_13676_53) Bool)
(declare-fun IsWandField_8502_53 (T@Field_13676_53) Bool)
(declare-fun HasDirectPerm_20528_41054 (T@PolymorphicMapType_13637 T@Ref T@Field_20543_20548) Bool)
(declare-fun HasDirectPerm_20528_13690 (T@PolymorphicMapType_13637 T@Ref T@Field_20528_13690) Bool)
(declare-fun HasDirectPerm_20528_53 (T@PolymorphicMapType_13637 T@Ref T@Field_20528_53) Bool)
(declare-fun HasDirectPerm_20528_4093 (T@PolymorphicMapType_13637 T@Ref T@Field_20528_3768) Bool)
(declare-fun HasDirectPerm_19882_39877 (T@PolymorphicMapType_13637 T@Ref T@Field_19895_19900) Bool)
(declare-fun HasDirectPerm_19882_13690 (T@PolymorphicMapType_13637 T@Ref T@Field_19882_13690) Bool)
(declare-fun HasDirectPerm_19882_53 (T@PolymorphicMapType_13637 T@Ref T@Field_19882_53) Bool)
(declare-fun HasDirectPerm_19882_4093 (T@PolymorphicMapType_13637 T@Ref T@Field_19882_3444) Bool)
(declare-fun HasDirectPerm_8502_38711 (T@PolymorphicMapType_13637 T@Ref T@Field_8502_19900) Bool)
(declare-fun HasDirectPerm_8502_13690 (T@PolymorphicMapType_13637 T@Ref T@Field_13689_13690) Bool)
(declare-fun HasDirectPerm_8502_53 (T@PolymorphicMapType_13637 T@Ref T@Field_13676_53) Bool)
(declare-fun HasDirectPerm_8502_4093 (T@PolymorphicMapType_13637 T@Ref T@Field_21282_4093) Bool)
(declare-fun |wand#ft| (T@Ref Real T@Ref Real) T@Field_19911_19912)
(declare-fun |wand_1#ft| ((Array T@Ref Bool) Real (Array T@Ref Bool) Real) T@Field_20561_20562)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (T@Ref Real T@Ref Real) T@Field_19895_19900)
(declare-fun |wand_1#sm| ((Array T@Ref Bool) Real (Array T@Ref Bool) Real) T@Field_20543_20548)
(declare-fun sumMask (T@PolymorphicMapType_13637 T@PolymorphicMapType_13637 T@PolymorphicMapType_13637) Bool)
(declare-fun InsidePredicate_20528_19882 (T@Field_20561_20562 T@FrameType T@Field_19911_19912 T@FrameType) Bool)
(declare-fun InsidePredicate_20528_13676 (T@Field_20561_20562 T@FrameType T@Field_8502_19912 T@FrameType) Bool)
(declare-fun InsidePredicate_19882_20528 (T@Field_19911_19912 T@FrameType T@Field_20561_20562 T@FrameType) Bool)
(declare-fun InsidePredicate_19882_13676 (T@Field_19911_19912 T@FrameType T@Field_8502_19912 T@FrameType) Bool)
(declare-fun InsidePredicate_13676_20528 (T@Field_8502_19912 T@FrameType T@Field_20561_20562 T@FrameType) Bool)
(declare-fun InsidePredicate_13676_19882 (T@Field_8502_19912 T@FrameType T@Field_19911_19912 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_13616) (Heap1 T@PolymorphicMapType_13616) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Real) ) (! (= (getPredWandId_8358_3444 (wand arg1 arg2 arg3 arg4)) 0)
 :qid |stdinbpl.431:15|
 :skolemid |87|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((arg1@@0 (Array T@Ref Bool)) (arg2@@0 Real) (arg3@@0 (Array T@Ref Bool)) (arg4@@0 Real) ) (! (= (getPredWandId_8414_3768 (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0)) 1)
 :qid |stdinbpl.463:15|
 :skolemid |94|
 :pattern ( (wand_1 arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_13616) (Mask T@PolymorphicMapType_13637) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13616) (Heap1@@0 T@PolymorphicMapType_13616) (Heap2 T@PolymorphicMapType_13616) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_20561_20562) ) (!  (not (select (|PolymorphicMapType_14165_20528_19912#PolymorphicMapType_14165| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_20528_19912#PolymorphicMapType_14165| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20543_20548) ) (!  (not (select (|PolymorphicMapType_14165_20528_45321#PolymorphicMapType_14165| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_20528_45321#PolymorphicMapType_14165| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20528_3768) ) (!  (not (select (|PolymorphicMapType_14165_20528_3444#PolymorphicMapType_14165| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_20528_3444#PolymorphicMapType_14165| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20528_13690) ) (!  (not (select (|PolymorphicMapType_14165_20528_13690#PolymorphicMapType_14165| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_20528_13690#PolymorphicMapType_14165| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20528_53) ) (!  (not (select (|PolymorphicMapType_14165_20528_53#PolymorphicMapType_14165| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_20528_53#PolymorphicMapType_14165| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_19911_19912) ) (!  (not (select (|PolymorphicMapType_14165_19882_19912#PolymorphicMapType_14165| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_19882_19912#PolymorphicMapType_14165| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_19895_19900) ) (!  (not (select (|PolymorphicMapType_14165_19882_44273#PolymorphicMapType_14165| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_19882_44273#PolymorphicMapType_14165| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_19882_3444) ) (!  (not (select (|PolymorphicMapType_14165_19882_3444#PolymorphicMapType_14165| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_19882_3444#PolymorphicMapType_14165| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_19882_13690) ) (!  (not (select (|PolymorphicMapType_14165_19882_13690#PolymorphicMapType_14165| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_19882_13690#PolymorphicMapType_14165| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_19882_53) ) (!  (not (select (|PolymorphicMapType_14165_19882_53#PolymorphicMapType_14165| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_19882_53#PolymorphicMapType_14165| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8502_19912) ) (!  (not (select (|PolymorphicMapType_14165_13676_19912#PolymorphicMapType_14165| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_13676_19912#PolymorphicMapType_14165| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8502_19900) ) (!  (not (select (|PolymorphicMapType_14165_13676_43225#PolymorphicMapType_14165| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_13676_43225#PolymorphicMapType_14165| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_21282_4093) ) (!  (not (select (|PolymorphicMapType_14165_13676_3444#PolymorphicMapType_14165| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_13676_3444#PolymorphicMapType_14165| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_13689_13690) ) (!  (not (select (|PolymorphicMapType_14165_13676_13690#PolymorphicMapType_14165| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_13676_13690#PolymorphicMapType_14165| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_13676_53) ) (!  (not (select (|PolymorphicMapType_14165_13676_53#PolymorphicMapType_14165| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14165_13676_53#PolymorphicMapType_14165| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.309:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.312:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13616) (ExhaleHeap T@PolymorphicMapType_13616) (Mask@@0 T@PolymorphicMapType_13637) (pm_f_22 T@Field_20561_20562) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_20528_19912 Mask@@0 null pm_f_22) (IsPredicateField_8435_8436 pm_f_22)) (= (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@0) null (PredicateMaskField_20528 pm_f_22)) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap) null (PredicateMaskField_20528 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_8435_8436 pm_f_22) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap) null (PredicateMaskField_20528 pm_f_22)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13616) (ExhaleHeap@@0 T@PolymorphicMapType_13616) (Mask@@1 T@PolymorphicMapType_13637) (pm_f_22@@0 T@Field_19911_19912) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_19882_19912 Mask@@1 null pm_f_22@@0) (IsPredicateField_8371_8372 pm_f_22@@0)) (= (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@1) null (PredicateMaskField_19882 pm_f_22@@0)) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@0) null (PredicateMaskField_19882 pm_f_22@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8371_8372 pm_f_22@@0) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@0) null (PredicateMaskField_19882 pm_f_22@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13616) (ExhaleHeap@@1 T@PolymorphicMapType_13616) (Mask@@2 T@PolymorphicMapType_13637) (pm_f_22@@1 T@Field_8502_19912) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8502_19912 Mask@@2 null pm_f_22@@1) (IsPredicateField_8502_41570 pm_f_22@@1)) (= (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@2) null (PredicateMaskField_8502 pm_f_22@@1)) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@1) null (PredicateMaskField_8502 pm_f_22@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_8502_41570 pm_f_22@@1) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@1) null (PredicateMaskField_8502 pm_f_22@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13616) (ExhaleHeap@@2 T@PolymorphicMapType_13616) (Mask@@3 T@PolymorphicMapType_13637) (pm_f_22@@2 T@Field_20561_20562) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_20528_19912 Mask@@3 null pm_f_22@@2) (IsWandField_8435_8436 pm_f_22@@2)) (= (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@3) null (WandMaskField_8435 pm_f_22@@2)) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@2) null (WandMaskField_8435 pm_f_22@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_8435_8436 pm_f_22@@2) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@2) null (WandMaskField_8435 pm_f_22@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13616) (ExhaleHeap@@3 T@PolymorphicMapType_13616) (Mask@@4 T@PolymorphicMapType_13637) (pm_f_22@@3 T@Field_19911_19912) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_19882_19912 Mask@@4 null pm_f_22@@3) (IsWandField_8371_8372 pm_f_22@@3)) (= (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@4) null (WandMaskField_8371 pm_f_22@@3)) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@3) null (WandMaskField_8371 pm_f_22@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsWandField_8371_8372 pm_f_22@@3) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@3) null (WandMaskField_8371 pm_f_22@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13616) (ExhaleHeap@@4 T@PolymorphicMapType_13616) (Mask@@5 T@PolymorphicMapType_13637) (pm_f_22@@4 T@Field_8502_19912) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8502_19912 Mask@@5 null pm_f_22@@4) (IsWandField_8502_46614 pm_f_22@@4)) (= (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@5) null (WandMaskField_8502 pm_f_22@@4)) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@4) null (WandMaskField_8502 pm_f_22@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_8502_46614 pm_f_22@@4) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@4) null (WandMaskField_8502 pm_f_22@@4)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13616) (ExhaleHeap@@5 T@PolymorphicMapType_13616) (Mask@@6 T@PolymorphicMapType_13637) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@6) o_46 $allocated) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@5) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@5) o_46 $allocated))
)))
(assert (forall ((p T@Field_20561_20562) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20528_20528 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20528_20528 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_19911_19912) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_19882_19882 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19882_19882 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_8502_19912) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_13676_13676 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13676_13676 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_8502_4093 f_7)))
(assert  (not (IsWandField_8502_4093 f_7)))
(assert  (not (IsPredicateField_8502_4093 g)))
(assert  (not (IsWandField_8502_4093 g)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13616) (ExhaleHeap@@6 T@PolymorphicMapType_13616) (Mask@@7 T@PolymorphicMapType_13637) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@7 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_13637) (o_2@@14 T@Ref) (f_4@@14 T@Field_20561_20562) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8435_8436 f_4@@14))) (not (IsWandField_8435_8436 f_4@@14))) (<= (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_13637) (o_2@@15 T@Ref) (f_4@@15 T@Field_20543_20548) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8414_57406 f_4@@15))) (not (IsWandField_8414_57422 f_4@@15))) (<= (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_13637) (o_2@@16 T@Ref) (f_4@@16 T@Field_20528_13690) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8414_13690 f_4@@16))) (not (IsWandField_8414_13690 f_4@@16))) (<= (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_13637) (o_2@@17 T@Ref) (f_4@@17 T@Field_20528_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8414_53 f_4@@17))) (not (IsWandField_8414_53 f_4@@17))) (<= (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_13637) (o_2@@18 T@Ref) (f_4@@18 T@Field_20528_3768) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8414_3768 f_4@@18))) (not (IsWandField_8414_3768 f_4@@18))) (<= (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_13637) (o_2@@19 T@Ref) (f_4@@19 T@Field_19911_19912) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8371_8372 f_4@@19))) (not (IsWandField_8371_8372 f_4@@19))) (<= (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_13637) (o_2@@20 T@Ref) (f_4@@20 T@Field_19895_19900) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8358_56589 f_4@@20))) (not (IsWandField_8358_56605 f_4@@20))) (<= (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_13637) (o_2@@21 T@Ref) (f_4@@21 T@Field_19882_13690) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8358_13690 f_4@@21))) (not (IsWandField_8358_13690 f_4@@21))) (<= (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_13637) (o_2@@22 T@Ref) (f_4@@22 T@Field_19882_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8358_53 f_4@@22))) (not (IsWandField_8358_53 f_4@@22))) (<= (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_13637) (o_2@@23 T@Ref) (f_4@@23 T@Field_19882_3444) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8358_3444 f_4@@23))) (not (IsWandField_8358_3444 f_4@@23))) (<= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_13637) (o_2@@24 T@Ref) (f_4@@24 T@Field_8502_19912) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8502_41570 f_4@@24))) (not (IsWandField_8502_46614 f_4@@24))) (<= (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_13637) (o_2@@25 T@Ref) (f_4@@25 T@Field_8502_19900) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8502_55772 f_4@@25))) (not (IsWandField_8502_55788 f_4@@25))) (<= (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_13637) (o_2@@26 T@Ref) (f_4@@26 T@Field_13689_13690) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8502_13690 f_4@@26))) (not (IsWandField_8502_13690 f_4@@26))) (<= (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_13637) (o_2@@27 T@Ref) (f_4@@27 T@Field_13676_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8502_53 f_4@@27))) (not (IsWandField_8502_53 f_4@@27))) (<= (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_13637) (o_2@@28 T@Ref) (f_4@@28 T@Field_21282_4093) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8502_4093 f_4@@28))) (not (IsWandField_8502_4093 f_4@@28))) (<= (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_13637) (o_2@@29 T@Ref) (f_4@@29 T@Field_20561_20562) ) (! (= (HasDirectPerm_20528_19912 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20528_19912 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_13637) (o_2@@30 T@Ref) (f_4@@30 T@Field_20543_20548) ) (! (= (HasDirectPerm_20528_41054 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20528_41054 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_13637) (o_2@@31 T@Ref) (f_4@@31 T@Field_20528_13690) ) (! (= (HasDirectPerm_20528_13690 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20528_13690 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_13637) (o_2@@32 T@Ref) (f_4@@32 T@Field_20528_53) ) (! (= (HasDirectPerm_20528_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20528_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_13637) (o_2@@33 T@Ref) (f_4@@33 T@Field_20528_3768) ) (! (= (HasDirectPerm_20528_4093 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20528_4093 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_13637) (o_2@@34 T@Ref) (f_4@@34 T@Field_19911_19912) ) (! (= (HasDirectPerm_19882_19912 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19882_19912 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_13637) (o_2@@35 T@Ref) (f_4@@35 T@Field_19895_19900) ) (! (= (HasDirectPerm_19882_39877 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19882_39877 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_13637) (o_2@@36 T@Ref) (f_4@@36 T@Field_19882_13690) ) (! (= (HasDirectPerm_19882_13690 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19882_13690 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_13637) (o_2@@37 T@Ref) (f_4@@37 T@Field_19882_53) ) (! (= (HasDirectPerm_19882_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19882_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_13637) (o_2@@38 T@Ref) (f_4@@38 T@Field_19882_3444) ) (! (= (HasDirectPerm_19882_4093 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19882_4093 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_13637) (o_2@@39 T@Ref) (f_4@@39 T@Field_8502_19912) ) (! (= (HasDirectPerm_8502_19912 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8502_19912 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_13637) (o_2@@40 T@Ref) (f_4@@40 T@Field_8502_19900) ) (! (= (HasDirectPerm_8502_38711 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8502_38711 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_13637) (o_2@@41 T@Ref) (f_4@@41 T@Field_13689_13690) ) (! (= (HasDirectPerm_8502_13690 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8502_13690 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_13637) (o_2@@42 T@Ref) (f_4@@42 T@Field_13676_53) ) (! (= (HasDirectPerm_8502_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8502_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_13637) (o_2@@43 T@Ref) (f_4@@43 T@Field_21282_4093) ) (! (= (HasDirectPerm_8502_4093 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8502_4093 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 Real) ) (! (IsWandField_8358_3444 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1))
 :qid |stdinbpl.411:15|
 :skolemid |82|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Real) ) (! (IsWandField_8371_8372 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2))
 :qid |stdinbpl.415:15|
 :skolemid |83|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2))
)))
(assert (forall ((arg1@@3 (Array T@Ref Bool)) (arg2@@3 Real) (arg3@@3 (Array T@Ref Bool)) (arg4@@3 Real) ) (! (IsWandField_8414_3768 (wand_1 arg1@@3 arg2@@3 arg3@@3 arg4@@3))
 :qid |stdinbpl.443:15|
 :skolemid |89|
 :pattern ( (wand_1 arg1@@3 arg2@@3 arg3@@3 arg4@@3))
)))
(assert (forall ((arg1@@4 (Array T@Ref Bool)) (arg2@@4 Real) (arg3@@4 (Array T@Ref Bool)) (arg4@@4 Real) ) (! (IsWandField_8435_8436 (|wand_1#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4))
 :qid |stdinbpl.447:15|
 :skolemid |90|
 :pattern ( (|wand_1#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13616) (ExhaleHeap@@7 T@PolymorphicMapType_13616) (Mask@@38 T@PolymorphicMapType_13637) (o_46@@0 T@Ref) (f_37 T@Field_20561_20562) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_20528_19912 Mask@@38 o_46@@0 f_37) (= (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@8) o_46@@0 f_37) (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@7) o_46@@0 f_37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@7) o_46@@0 f_37))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13616) (ExhaleHeap@@8 T@PolymorphicMapType_13616) (Mask@@39 T@PolymorphicMapType_13637) (o_46@@1 T@Ref) (f_37@@0 T@Field_20543_20548) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_20528_41054 Mask@@39 o_46@@1 f_37@@0) (= (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@9) o_46@@1 f_37@@0) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@8) o_46@@1 f_37@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@8) o_46@@1 f_37@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13616) (ExhaleHeap@@9 T@PolymorphicMapType_13616) (Mask@@40 T@PolymorphicMapType_13637) (o_46@@2 T@Ref) (f_37@@1 T@Field_20528_13690) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_20528_13690 Mask@@40 o_46@@2 f_37@@1) (= (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@10) o_46@@2 f_37@@1) (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@9) o_46@@2 f_37@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@9) o_46@@2 f_37@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13616) (ExhaleHeap@@10 T@PolymorphicMapType_13616) (Mask@@41 T@PolymorphicMapType_13637) (o_46@@3 T@Ref) (f_37@@2 T@Field_20528_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_20528_53 Mask@@41 o_46@@3 f_37@@2) (= (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@11) o_46@@3 f_37@@2) (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@10) o_46@@3 f_37@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@10) o_46@@3 f_37@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13616) (ExhaleHeap@@11 T@PolymorphicMapType_13616) (Mask@@42 T@PolymorphicMapType_13637) (o_46@@4 T@Ref) (f_37@@3 T@Field_20528_3768) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_20528_4093 Mask@@42 o_46@@4 f_37@@3) (= (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@12) o_46@@4 f_37@@3) (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@11) o_46@@4 f_37@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@11) o_46@@4 f_37@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13616) (ExhaleHeap@@12 T@PolymorphicMapType_13616) (Mask@@43 T@PolymorphicMapType_13637) (o_46@@5 T@Ref) (f_37@@4 T@Field_19911_19912) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_19882_19912 Mask@@43 o_46@@5 f_37@@4) (= (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@13) o_46@@5 f_37@@4) (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@12) o_46@@5 f_37@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@12) o_46@@5 f_37@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13616) (ExhaleHeap@@13 T@PolymorphicMapType_13616) (Mask@@44 T@PolymorphicMapType_13637) (o_46@@6 T@Ref) (f_37@@5 T@Field_19895_19900) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_19882_39877 Mask@@44 o_46@@6 f_37@@5) (= (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@14) o_46@@6 f_37@@5) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@13) o_46@@6 f_37@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@13) o_46@@6 f_37@@5))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13616) (ExhaleHeap@@14 T@PolymorphicMapType_13616) (Mask@@45 T@PolymorphicMapType_13637) (o_46@@7 T@Ref) (f_37@@6 T@Field_19882_13690) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_19882_13690 Mask@@45 o_46@@7 f_37@@6) (= (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@15) o_46@@7 f_37@@6) (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@14) o_46@@7 f_37@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@14) o_46@@7 f_37@@6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13616) (ExhaleHeap@@15 T@PolymorphicMapType_13616) (Mask@@46 T@PolymorphicMapType_13637) (o_46@@8 T@Ref) (f_37@@7 T@Field_19882_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_19882_53 Mask@@46 o_46@@8 f_37@@7) (= (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@16) o_46@@8 f_37@@7) (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@15) o_46@@8 f_37@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@15) o_46@@8 f_37@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13616) (ExhaleHeap@@16 T@PolymorphicMapType_13616) (Mask@@47 T@PolymorphicMapType_13637) (o_46@@9 T@Ref) (f_37@@8 T@Field_19882_3444) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_19882_4093 Mask@@47 o_46@@9 f_37@@8) (= (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@17) o_46@@9 f_37@@8) (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@16) o_46@@9 f_37@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@16) o_46@@9 f_37@@8))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13616) (ExhaleHeap@@17 T@PolymorphicMapType_13616) (Mask@@48 T@PolymorphicMapType_13637) (o_46@@10 T@Ref) (f_37@@9 T@Field_8502_19912) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_8502_19912 Mask@@48 o_46@@10 f_37@@9) (= (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@18) o_46@@10 f_37@@9) (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@17) o_46@@10 f_37@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@17) o_46@@10 f_37@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_13616) (ExhaleHeap@@18 T@PolymorphicMapType_13616) (Mask@@49 T@PolymorphicMapType_13637) (o_46@@11 T@Ref) (f_37@@10 T@Field_8502_19900) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_8502_38711 Mask@@49 o_46@@11 f_37@@10) (= (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@19) o_46@@11 f_37@@10) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@18) o_46@@11 f_37@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@18) o_46@@11 f_37@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_13616) (ExhaleHeap@@19 T@PolymorphicMapType_13616) (Mask@@50 T@PolymorphicMapType_13637) (o_46@@12 T@Ref) (f_37@@11 T@Field_13689_13690) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_8502_13690 Mask@@50 o_46@@12 f_37@@11) (= (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@20) o_46@@12 f_37@@11) (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@19) o_46@@12 f_37@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@19) o_46@@12 f_37@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_13616) (ExhaleHeap@@20 T@PolymorphicMapType_13616) (Mask@@51 T@PolymorphicMapType_13637) (o_46@@13 T@Ref) (f_37@@12 T@Field_13676_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_8502_53 Mask@@51 o_46@@13 f_37@@12) (= (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@21) o_46@@13 f_37@@12) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@20) o_46@@13 f_37@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@20) o_46@@13 f_37@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_13616) (ExhaleHeap@@21 T@PolymorphicMapType_13616) (Mask@@52 T@PolymorphicMapType_13637) (o_46@@14 T@Ref) (f_37@@13 T@Field_21282_4093) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_8502_4093 Mask@@52 o_46@@14 f_37@@13) (= (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@22) o_46@@14 f_37@@13) (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@21) o_46@@14 f_37@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@21) o_46@@14 f_37@@13))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 Real) ) (!  (not (IsPredicateField_8358_3444 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5)))
 :qid |stdinbpl.419:15|
 :skolemid |84|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@6 T@Ref) (arg4@@6 Real) ) (!  (not (IsPredicateField_8371_8372 (|wand#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6)))
 :qid |stdinbpl.423:15|
 :skolemid |85|
 :pattern ( (|wand#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6))
)))
(assert (forall ((arg1@@7 (Array T@Ref Bool)) (arg2@@7 Real) (arg3@@7 (Array T@Ref Bool)) (arg4@@7 Real) ) (!  (not (IsPredicateField_8414_3768 (wand_1 arg1@@7 arg2@@7 arg3@@7 arg4@@7)))
 :qid |stdinbpl.451:15|
 :skolemid |91|
 :pattern ( (wand_1 arg1@@7 arg2@@7 arg3@@7 arg4@@7))
)))
(assert (forall ((arg1@@8 (Array T@Ref Bool)) (arg2@@8 Real) (arg3@@8 (Array T@Ref Bool)) (arg4@@8 Real) ) (!  (not (IsPredicateField_8435_8436 (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8 arg4@@8)))
 :qid |stdinbpl.455:15|
 :skolemid |92|
 :pattern ( (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8 arg4@@8))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@9 T@Ref) (arg4@@9 Real) ) (! (= (|wand#sm| arg1@@9 arg2@@9 arg3@@9 arg4@@9) (WandMaskField_8371 (|wand#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9)))
 :qid |stdinbpl.427:15|
 :skolemid |86|
 :pattern ( (WandMaskField_8371 (|wand#ft| arg1@@9 arg2@@9 arg3@@9 arg4@@9)))
)))
(assert (forall ((arg1@@10 (Array T@Ref Bool)) (arg2@@10 Real) (arg3@@10 (Array T@Ref Bool)) (arg4@@10 Real) ) (! (= (|wand_1#sm| arg1@@10 arg2@@10 arg3@@10 arg4@@10) (WandMaskField_8435 (|wand_1#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10)))
 :qid |stdinbpl.459:15|
 :skolemid |93|
 :pattern ( (WandMaskField_8435 (|wand_1#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_20561_20562) ) (! (= (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_20543_20548) ) (! (= (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_20528_13690) ) (! (= (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_20528_53) ) (! (= (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_20528_3768) ) (! (= (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_19911_19912) ) (! (= (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_19895_19900) ) (! (= (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_19882_13690) ) (! (= (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_19882_53) ) (! (= (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_19882_3444) ) (! (= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_8502_19912) ) (! (= (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_8502_19900) ) (! (= (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_13689_13690) ) (! (= (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_13676_53) ) (! (= (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_21282_4093) ) (! (= (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13637) (SummandMask1 T@PolymorphicMapType_13637) (SummandMask2 T@PolymorphicMapType_13637) (o_2@@59 T@Ref) (f_4@@59 T@Field_20561_20562) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13637) (SummandMask1@@0 T@PolymorphicMapType_13637) (SummandMask2@@0 T@PolymorphicMapType_13637) (o_2@@60 T@Ref) (f_4@@60 T@Field_20543_20548) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13637) (SummandMask1@@1 T@PolymorphicMapType_13637) (SummandMask2@@1 T@PolymorphicMapType_13637) (o_2@@61 T@Ref) (f_4@@61 T@Field_20528_13690) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13637) (SummandMask1@@2 T@PolymorphicMapType_13637) (SummandMask2@@2 T@PolymorphicMapType_13637) (o_2@@62 T@Ref) (f_4@@62 T@Field_20528_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13637) (SummandMask1@@3 T@PolymorphicMapType_13637) (SummandMask2@@3 T@PolymorphicMapType_13637) (o_2@@63 T@Ref) (f_4@@63 T@Field_20528_3768) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_13637) (SummandMask1@@4 T@PolymorphicMapType_13637) (SummandMask2@@4 T@PolymorphicMapType_13637) (o_2@@64 T@Ref) (f_4@@64 T@Field_19911_19912) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_13637) (SummandMask1@@5 T@PolymorphicMapType_13637) (SummandMask2@@5 T@PolymorphicMapType_13637) (o_2@@65 T@Ref) (f_4@@65 T@Field_19895_19900) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_13637) (SummandMask1@@6 T@PolymorphicMapType_13637) (SummandMask2@@6 T@PolymorphicMapType_13637) (o_2@@66 T@Ref) (f_4@@66 T@Field_19882_13690) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_13637) (SummandMask1@@7 T@PolymorphicMapType_13637) (SummandMask2@@7 T@PolymorphicMapType_13637) (o_2@@67 T@Ref) (f_4@@67 T@Field_19882_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_13637) (SummandMask1@@8 T@PolymorphicMapType_13637) (SummandMask2@@8 T@PolymorphicMapType_13637) (o_2@@68 T@Ref) (f_4@@68 T@Field_19882_3444) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_13637) (SummandMask1@@9 T@PolymorphicMapType_13637) (SummandMask2@@9 T@PolymorphicMapType_13637) (o_2@@69 T@Ref) (f_4@@69 T@Field_8502_19912) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_13637) (SummandMask1@@10 T@PolymorphicMapType_13637) (SummandMask2@@10 T@PolymorphicMapType_13637) (o_2@@70 T@Ref) (f_4@@70 T@Field_8502_19900) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_13637) (SummandMask1@@11 T@PolymorphicMapType_13637) (SummandMask2@@11 T@PolymorphicMapType_13637) (o_2@@71 T@Ref) (f_4@@71 T@Field_13689_13690) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_13637) (SummandMask1@@12 T@PolymorphicMapType_13637) (SummandMask2@@12 T@PolymorphicMapType_13637) (o_2@@72 T@Ref) (f_4@@72 T@Field_13676_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_13637) (SummandMask1@@13 T@PolymorphicMapType_13637) (SummandMask2@@13 T@PolymorphicMapType_13637) (o_2@@73 T@Ref) (f_4@@73 T@Field_21282_4093) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_13616) (ExhaleHeap@@22 T@PolymorphicMapType_13616) (Mask@@53 T@PolymorphicMapType_13637) (pm_f_22@@5 T@Field_20561_20562) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_20528_19912 Mask@@53 null pm_f_22@@5) (IsPredicateField_8435_8436 pm_f_22@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37@@14 T@Field_13676_53) ) (!  (=> (select (|PolymorphicMapType_14165_13676_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22 f_37@@14) (= (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@23) o2_22 f_37@@14) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22 f_37@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22 f_37@@14))
)) (forall ((o2_22@@0 T@Ref) (f_37@@15 T@Field_13689_13690) ) (!  (=> (select (|PolymorphicMapType_14165_13676_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@0 f_37@@15) (= (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@23) o2_22@@0 f_37@@15) (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@0 f_37@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@0 f_37@@15))
))) (forall ((o2_22@@1 T@Ref) (f_37@@16 T@Field_21282_4093) ) (!  (=> (select (|PolymorphicMapType_14165_13676_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@1 f_37@@16) (= (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@23) o2_22@@1 f_37@@16) (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@1 f_37@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@1 f_37@@16))
))) (forall ((o2_22@@2 T@Ref) (f_37@@17 T@Field_8502_19900) ) (!  (=> (select (|PolymorphicMapType_14165_13676_43225#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@2 f_37@@17) (= (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@23) o2_22@@2 f_37@@17) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@2 f_37@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@2 f_37@@17))
))) (forall ((o2_22@@3 T@Ref) (f_37@@18 T@Field_8502_19912) ) (!  (=> (select (|PolymorphicMapType_14165_13676_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@3 f_37@@18) (= (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@23) o2_22@@3 f_37@@18) (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@3 f_37@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@3 f_37@@18))
))) (forall ((o2_22@@4 T@Ref) (f_37@@19 T@Field_19882_53) ) (!  (=> (select (|PolymorphicMapType_14165_19882_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@4 f_37@@19) (= (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@23) o2_22@@4 f_37@@19) (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@4 f_37@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@4 f_37@@19))
))) (forall ((o2_22@@5 T@Ref) (f_37@@20 T@Field_19882_13690) ) (!  (=> (select (|PolymorphicMapType_14165_19882_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@5 f_37@@20) (= (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@23) o2_22@@5 f_37@@20) (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@5 f_37@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@5 f_37@@20))
))) (forall ((o2_22@@6 T@Ref) (f_37@@21 T@Field_19882_3444) ) (!  (=> (select (|PolymorphicMapType_14165_19882_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@6 f_37@@21) (= (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@23) o2_22@@6 f_37@@21) (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@6 f_37@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@6 f_37@@21))
))) (forall ((o2_22@@7 T@Ref) (f_37@@22 T@Field_19895_19900) ) (!  (=> (select (|PolymorphicMapType_14165_19882_44273#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@7 f_37@@22) (= (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@23) o2_22@@7 f_37@@22) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@7 f_37@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@7 f_37@@22))
))) (forall ((o2_22@@8 T@Ref) (f_37@@23 T@Field_19911_19912) ) (!  (=> (select (|PolymorphicMapType_14165_19882_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@8 f_37@@23) (= (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@23) o2_22@@8 f_37@@23) (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@8 f_37@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@8 f_37@@23))
))) (forall ((o2_22@@9 T@Ref) (f_37@@24 T@Field_20528_53) ) (!  (=> (select (|PolymorphicMapType_14165_20528_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@9 f_37@@24) (= (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@23) o2_22@@9 f_37@@24) (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@9 f_37@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@9 f_37@@24))
))) (forall ((o2_22@@10 T@Ref) (f_37@@25 T@Field_20528_13690) ) (!  (=> (select (|PolymorphicMapType_14165_20528_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@10 f_37@@25) (= (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@23) o2_22@@10 f_37@@25) (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@10 f_37@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@10 f_37@@25))
))) (forall ((o2_22@@11 T@Ref) (f_37@@26 T@Field_20528_3768) ) (!  (=> (select (|PolymorphicMapType_14165_20528_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@11 f_37@@26) (= (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@23) o2_22@@11 f_37@@26) (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@11 f_37@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@11 f_37@@26))
))) (forall ((o2_22@@12 T@Ref) (f_37@@27 T@Field_20543_20548) ) (!  (=> (select (|PolymorphicMapType_14165_20528_45321#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@12 f_37@@27) (= (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) o2_22@@12 f_37@@27) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@12 f_37@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@12 f_37@@27))
))) (forall ((o2_22@@13 T@Ref) (f_37@@28 T@Field_20561_20562) ) (!  (=> (select (|PolymorphicMapType_14165_20528_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@23) null (PredicateMaskField_20528 pm_f_22@@5))) o2_22@@13 f_37@@28) (= (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@23) o2_22@@13 f_37@@28) (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@13 f_37@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@22) o2_22@@13 f_37@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (IsPredicateField_8435_8436 pm_f_22@@5))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_13616) (ExhaleHeap@@23 T@PolymorphicMapType_13616) (Mask@@54 T@PolymorphicMapType_13637) (pm_f_22@@6 T@Field_19911_19912) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_19882_19912 Mask@@54 null pm_f_22@@6) (IsPredicateField_8371_8372 pm_f_22@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@14 T@Ref) (f_37@@29 T@Field_13676_53) ) (!  (=> (select (|PolymorphicMapType_14165_13676_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@14 f_37@@29) (= (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@24) o2_22@@14 f_37@@29) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@14 f_37@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@14 f_37@@29))
)) (forall ((o2_22@@15 T@Ref) (f_37@@30 T@Field_13689_13690) ) (!  (=> (select (|PolymorphicMapType_14165_13676_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@15 f_37@@30) (= (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@24) o2_22@@15 f_37@@30) (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@15 f_37@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@15 f_37@@30))
))) (forall ((o2_22@@16 T@Ref) (f_37@@31 T@Field_21282_4093) ) (!  (=> (select (|PolymorphicMapType_14165_13676_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@16 f_37@@31) (= (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@24) o2_22@@16 f_37@@31) (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@16 f_37@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@16 f_37@@31))
))) (forall ((o2_22@@17 T@Ref) (f_37@@32 T@Field_8502_19900) ) (!  (=> (select (|PolymorphicMapType_14165_13676_43225#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@17 f_37@@32) (= (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@24) o2_22@@17 f_37@@32) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@17 f_37@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@17 f_37@@32))
))) (forall ((o2_22@@18 T@Ref) (f_37@@33 T@Field_8502_19912) ) (!  (=> (select (|PolymorphicMapType_14165_13676_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@18 f_37@@33) (= (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@24) o2_22@@18 f_37@@33) (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@18 f_37@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@18 f_37@@33))
))) (forall ((o2_22@@19 T@Ref) (f_37@@34 T@Field_19882_53) ) (!  (=> (select (|PolymorphicMapType_14165_19882_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@19 f_37@@34) (= (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@24) o2_22@@19 f_37@@34) (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@19 f_37@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@19 f_37@@34))
))) (forall ((o2_22@@20 T@Ref) (f_37@@35 T@Field_19882_13690) ) (!  (=> (select (|PolymorphicMapType_14165_19882_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@20 f_37@@35) (= (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@24) o2_22@@20 f_37@@35) (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@20 f_37@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@20 f_37@@35))
))) (forall ((o2_22@@21 T@Ref) (f_37@@36 T@Field_19882_3444) ) (!  (=> (select (|PolymorphicMapType_14165_19882_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@21 f_37@@36) (= (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@24) o2_22@@21 f_37@@36) (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@21 f_37@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@21 f_37@@36))
))) (forall ((o2_22@@22 T@Ref) (f_37@@37 T@Field_19895_19900) ) (!  (=> (select (|PolymorphicMapType_14165_19882_44273#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@22 f_37@@37) (= (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) o2_22@@22 f_37@@37) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@22 f_37@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@22 f_37@@37))
))) (forall ((o2_22@@23 T@Ref) (f_37@@38 T@Field_19911_19912) ) (!  (=> (select (|PolymorphicMapType_14165_19882_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@23 f_37@@38) (= (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@24) o2_22@@23 f_37@@38) (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@23 f_37@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@23 f_37@@38))
))) (forall ((o2_22@@24 T@Ref) (f_37@@39 T@Field_20528_53) ) (!  (=> (select (|PolymorphicMapType_14165_20528_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@24 f_37@@39) (= (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@24) o2_22@@24 f_37@@39) (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@24 f_37@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@24 f_37@@39))
))) (forall ((o2_22@@25 T@Ref) (f_37@@40 T@Field_20528_13690) ) (!  (=> (select (|PolymorphicMapType_14165_20528_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@25 f_37@@40) (= (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@24) o2_22@@25 f_37@@40) (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@25 f_37@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@25 f_37@@40))
))) (forall ((o2_22@@26 T@Ref) (f_37@@41 T@Field_20528_3768) ) (!  (=> (select (|PolymorphicMapType_14165_20528_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@26 f_37@@41) (= (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@24) o2_22@@26 f_37@@41) (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@26 f_37@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@26 f_37@@41))
))) (forall ((o2_22@@27 T@Ref) (f_37@@42 T@Field_20543_20548) ) (!  (=> (select (|PolymorphicMapType_14165_20528_45321#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@27 f_37@@42) (= (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@24) o2_22@@27 f_37@@42) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@27 f_37@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@27 f_37@@42))
))) (forall ((o2_22@@28 T@Ref) (f_37@@43 T@Field_20561_20562) ) (!  (=> (select (|PolymorphicMapType_14165_20528_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@24) null (PredicateMaskField_19882 pm_f_22@@6))) o2_22@@28 f_37@@43) (= (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@24) o2_22@@28 f_37@@43) (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@28 f_37@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@23) o2_22@@28 f_37@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (IsPredicateField_8371_8372 pm_f_22@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_13616) (ExhaleHeap@@24 T@PolymorphicMapType_13616) (Mask@@55 T@PolymorphicMapType_13637) (pm_f_22@@7 T@Field_8502_19912) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_8502_19912 Mask@@55 null pm_f_22@@7) (IsPredicateField_8502_41570 pm_f_22@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@29 T@Ref) (f_37@@44 T@Field_13676_53) ) (!  (=> (select (|PolymorphicMapType_14165_13676_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@29 f_37@@44) (= (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@25) o2_22@@29 f_37@@44) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@29 f_37@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@29 f_37@@44))
)) (forall ((o2_22@@30 T@Ref) (f_37@@45 T@Field_13689_13690) ) (!  (=> (select (|PolymorphicMapType_14165_13676_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@30 f_37@@45) (= (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@25) o2_22@@30 f_37@@45) (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@30 f_37@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@30 f_37@@45))
))) (forall ((o2_22@@31 T@Ref) (f_37@@46 T@Field_21282_4093) ) (!  (=> (select (|PolymorphicMapType_14165_13676_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@31 f_37@@46) (= (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@25) o2_22@@31 f_37@@46) (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@31 f_37@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@31 f_37@@46))
))) (forall ((o2_22@@32 T@Ref) (f_37@@47 T@Field_8502_19900) ) (!  (=> (select (|PolymorphicMapType_14165_13676_43225#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@32 f_37@@47) (= (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) o2_22@@32 f_37@@47) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@32 f_37@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@32 f_37@@47))
))) (forall ((o2_22@@33 T@Ref) (f_37@@48 T@Field_8502_19912) ) (!  (=> (select (|PolymorphicMapType_14165_13676_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@33 f_37@@48) (= (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@25) o2_22@@33 f_37@@48) (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@33 f_37@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@33 f_37@@48))
))) (forall ((o2_22@@34 T@Ref) (f_37@@49 T@Field_19882_53) ) (!  (=> (select (|PolymorphicMapType_14165_19882_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@34 f_37@@49) (= (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@25) o2_22@@34 f_37@@49) (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@34 f_37@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@34 f_37@@49))
))) (forall ((o2_22@@35 T@Ref) (f_37@@50 T@Field_19882_13690) ) (!  (=> (select (|PolymorphicMapType_14165_19882_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@35 f_37@@50) (= (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@25) o2_22@@35 f_37@@50) (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@35 f_37@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@35 f_37@@50))
))) (forall ((o2_22@@36 T@Ref) (f_37@@51 T@Field_19882_3444) ) (!  (=> (select (|PolymorphicMapType_14165_19882_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@36 f_37@@51) (= (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@25) o2_22@@36 f_37@@51) (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@36 f_37@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@36 f_37@@51))
))) (forall ((o2_22@@37 T@Ref) (f_37@@52 T@Field_19895_19900) ) (!  (=> (select (|PolymorphicMapType_14165_19882_44273#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@37 f_37@@52) (= (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@25) o2_22@@37 f_37@@52) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@37 f_37@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@37 f_37@@52))
))) (forall ((o2_22@@38 T@Ref) (f_37@@53 T@Field_19911_19912) ) (!  (=> (select (|PolymorphicMapType_14165_19882_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@38 f_37@@53) (= (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@25) o2_22@@38 f_37@@53) (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@38 f_37@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@38 f_37@@53))
))) (forall ((o2_22@@39 T@Ref) (f_37@@54 T@Field_20528_53) ) (!  (=> (select (|PolymorphicMapType_14165_20528_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@39 f_37@@54) (= (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@25) o2_22@@39 f_37@@54) (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@39 f_37@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@39 f_37@@54))
))) (forall ((o2_22@@40 T@Ref) (f_37@@55 T@Field_20528_13690) ) (!  (=> (select (|PolymorphicMapType_14165_20528_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@40 f_37@@55) (= (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@25) o2_22@@40 f_37@@55) (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@40 f_37@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@40 f_37@@55))
))) (forall ((o2_22@@41 T@Ref) (f_37@@56 T@Field_20528_3768) ) (!  (=> (select (|PolymorphicMapType_14165_20528_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@41 f_37@@56) (= (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@25) o2_22@@41 f_37@@56) (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@41 f_37@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@41 f_37@@56))
))) (forall ((o2_22@@42 T@Ref) (f_37@@57 T@Field_20543_20548) ) (!  (=> (select (|PolymorphicMapType_14165_20528_45321#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@42 f_37@@57) (= (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@25) o2_22@@42 f_37@@57) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@42 f_37@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@42 f_37@@57))
))) (forall ((o2_22@@43 T@Ref) (f_37@@58 T@Field_20561_20562) ) (!  (=> (select (|PolymorphicMapType_14165_20528_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@25) null (PredicateMaskField_8502 pm_f_22@@7))) o2_22@@43 f_37@@58) (= (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@25) o2_22@@43 f_37@@58) (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@43 f_37@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@24) o2_22@@43 f_37@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (IsPredicateField_8502_41570 pm_f_22@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_13616) (ExhaleHeap@@25 T@PolymorphicMapType_13616) (Mask@@56 T@PolymorphicMapType_13637) (pm_f_22@@8 T@Field_20561_20562) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_20528_19912 Mask@@56 null pm_f_22@@8) (IsWandField_8435_8436 pm_f_22@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@44 T@Ref) (f_37@@59 T@Field_13676_53) ) (!  (=> (select (|PolymorphicMapType_14165_13676_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@44 f_37@@59) (= (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@26) o2_22@@44 f_37@@59) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@44 f_37@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@44 f_37@@59))
)) (forall ((o2_22@@45 T@Ref) (f_37@@60 T@Field_13689_13690) ) (!  (=> (select (|PolymorphicMapType_14165_13676_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@45 f_37@@60) (= (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@26) o2_22@@45 f_37@@60) (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@45 f_37@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@45 f_37@@60))
))) (forall ((o2_22@@46 T@Ref) (f_37@@61 T@Field_21282_4093) ) (!  (=> (select (|PolymorphicMapType_14165_13676_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@46 f_37@@61) (= (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@26) o2_22@@46 f_37@@61) (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@46 f_37@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@46 f_37@@61))
))) (forall ((o2_22@@47 T@Ref) (f_37@@62 T@Field_8502_19900) ) (!  (=> (select (|PolymorphicMapType_14165_13676_43225#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@47 f_37@@62) (= (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@26) o2_22@@47 f_37@@62) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@47 f_37@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@47 f_37@@62))
))) (forall ((o2_22@@48 T@Ref) (f_37@@63 T@Field_8502_19912) ) (!  (=> (select (|PolymorphicMapType_14165_13676_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@48 f_37@@63) (= (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@26) o2_22@@48 f_37@@63) (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@48 f_37@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@48 f_37@@63))
))) (forall ((o2_22@@49 T@Ref) (f_37@@64 T@Field_19882_53) ) (!  (=> (select (|PolymorphicMapType_14165_19882_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@49 f_37@@64) (= (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@26) o2_22@@49 f_37@@64) (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@49 f_37@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@49 f_37@@64))
))) (forall ((o2_22@@50 T@Ref) (f_37@@65 T@Field_19882_13690) ) (!  (=> (select (|PolymorphicMapType_14165_19882_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@50 f_37@@65) (= (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@26) o2_22@@50 f_37@@65) (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@50 f_37@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@50 f_37@@65))
))) (forall ((o2_22@@51 T@Ref) (f_37@@66 T@Field_19882_3444) ) (!  (=> (select (|PolymorphicMapType_14165_19882_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@51 f_37@@66) (= (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@26) o2_22@@51 f_37@@66) (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@51 f_37@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@51 f_37@@66))
))) (forall ((o2_22@@52 T@Ref) (f_37@@67 T@Field_19895_19900) ) (!  (=> (select (|PolymorphicMapType_14165_19882_44273#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@52 f_37@@67) (= (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@26) o2_22@@52 f_37@@67) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@52 f_37@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@52 f_37@@67))
))) (forall ((o2_22@@53 T@Ref) (f_37@@68 T@Field_19911_19912) ) (!  (=> (select (|PolymorphicMapType_14165_19882_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@53 f_37@@68) (= (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@26) o2_22@@53 f_37@@68) (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@53 f_37@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@53 f_37@@68))
))) (forall ((o2_22@@54 T@Ref) (f_37@@69 T@Field_20528_53) ) (!  (=> (select (|PolymorphicMapType_14165_20528_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@54 f_37@@69) (= (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@26) o2_22@@54 f_37@@69) (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@54 f_37@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@54 f_37@@69))
))) (forall ((o2_22@@55 T@Ref) (f_37@@70 T@Field_20528_13690) ) (!  (=> (select (|PolymorphicMapType_14165_20528_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@55 f_37@@70) (= (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@26) o2_22@@55 f_37@@70) (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@55 f_37@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@55 f_37@@70))
))) (forall ((o2_22@@56 T@Ref) (f_37@@71 T@Field_20528_3768) ) (!  (=> (select (|PolymorphicMapType_14165_20528_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@56 f_37@@71) (= (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@26) o2_22@@56 f_37@@71) (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@56 f_37@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@56 f_37@@71))
))) (forall ((o2_22@@57 T@Ref) (f_37@@72 T@Field_20543_20548) ) (!  (=> (select (|PolymorphicMapType_14165_20528_45321#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@57 f_37@@72) (= (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) o2_22@@57 f_37@@72) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@57 f_37@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@57 f_37@@72))
))) (forall ((o2_22@@58 T@Ref) (f_37@@73 T@Field_20561_20562) ) (!  (=> (select (|PolymorphicMapType_14165_20528_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@26) null (WandMaskField_8435 pm_f_22@@8))) o2_22@@58 f_37@@73) (= (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@26) o2_22@@58 f_37@@73) (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@58 f_37@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@25) o2_22@@58 f_37@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (IsWandField_8435_8436 pm_f_22@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_13616) (ExhaleHeap@@26 T@PolymorphicMapType_13616) (Mask@@57 T@PolymorphicMapType_13637) (pm_f_22@@9 T@Field_19911_19912) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_19882_19912 Mask@@57 null pm_f_22@@9) (IsWandField_8371_8372 pm_f_22@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@59 T@Ref) (f_37@@74 T@Field_13676_53) ) (!  (=> (select (|PolymorphicMapType_14165_13676_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@59 f_37@@74) (= (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@27) o2_22@@59 f_37@@74) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@59 f_37@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@59 f_37@@74))
)) (forall ((o2_22@@60 T@Ref) (f_37@@75 T@Field_13689_13690) ) (!  (=> (select (|PolymorphicMapType_14165_13676_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@60 f_37@@75) (= (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@27) o2_22@@60 f_37@@75) (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@60 f_37@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@60 f_37@@75))
))) (forall ((o2_22@@61 T@Ref) (f_37@@76 T@Field_21282_4093) ) (!  (=> (select (|PolymorphicMapType_14165_13676_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@61 f_37@@76) (= (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@27) o2_22@@61 f_37@@76) (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@61 f_37@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@61 f_37@@76))
))) (forall ((o2_22@@62 T@Ref) (f_37@@77 T@Field_8502_19900) ) (!  (=> (select (|PolymorphicMapType_14165_13676_43225#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@62 f_37@@77) (= (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@27) o2_22@@62 f_37@@77) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@62 f_37@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@62 f_37@@77))
))) (forall ((o2_22@@63 T@Ref) (f_37@@78 T@Field_8502_19912) ) (!  (=> (select (|PolymorphicMapType_14165_13676_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@63 f_37@@78) (= (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@27) o2_22@@63 f_37@@78) (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@63 f_37@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@63 f_37@@78))
))) (forall ((o2_22@@64 T@Ref) (f_37@@79 T@Field_19882_53) ) (!  (=> (select (|PolymorphicMapType_14165_19882_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@64 f_37@@79) (= (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@27) o2_22@@64 f_37@@79) (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@64 f_37@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@64 f_37@@79))
))) (forall ((o2_22@@65 T@Ref) (f_37@@80 T@Field_19882_13690) ) (!  (=> (select (|PolymorphicMapType_14165_19882_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@65 f_37@@80) (= (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@27) o2_22@@65 f_37@@80) (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@65 f_37@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@65 f_37@@80))
))) (forall ((o2_22@@66 T@Ref) (f_37@@81 T@Field_19882_3444) ) (!  (=> (select (|PolymorphicMapType_14165_19882_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@66 f_37@@81) (= (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@27) o2_22@@66 f_37@@81) (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@66 f_37@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@66 f_37@@81))
))) (forall ((o2_22@@67 T@Ref) (f_37@@82 T@Field_19895_19900) ) (!  (=> (select (|PolymorphicMapType_14165_19882_44273#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@67 f_37@@82) (= (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) o2_22@@67 f_37@@82) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@67 f_37@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@67 f_37@@82))
))) (forall ((o2_22@@68 T@Ref) (f_37@@83 T@Field_19911_19912) ) (!  (=> (select (|PolymorphicMapType_14165_19882_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@68 f_37@@83) (= (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@27) o2_22@@68 f_37@@83) (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@68 f_37@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@68 f_37@@83))
))) (forall ((o2_22@@69 T@Ref) (f_37@@84 T@Field_20528_53) ) (!  (=> (select (|PolymorphicMapType_14165_20528_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@69 f_37@@84) (= (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@27) o2_22@@69 f_37@@84) (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@69 f_37@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@69 f_37@@84))
))) (forall ((o2_22@@70 T@Ref) (f_37@@85 T@Field_20528_13690) ) (!  (=> (select (|PolymorphicMapType_14165_20528_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@70 f_37@@85) (= (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@27) o2_22@@70 f_37@@85) (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@70 f_37@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@70 f_37@@85))
))) (forall ((o2_22@@71 T@Ref) (f_37@@86 T@Field_20528_3768) ) (!  (=> (select (|PolymorphicMapType_14165_20528_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@71 f_37@@86) (= (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@27) o2_22@@71 f_37@@86) (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@71 f_37@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@71 f_37@@86))
))) (forall ((o2_22@@72 T@Ref) (f_37@@87 T@Field_20543_20548) ) (!  (=> (select (|PolymorphicMapType_14165_20528_45321#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@72 f_37@@87) (= (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@27) o2_22@@72 f_37@@87) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@72 f_37@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@72 f_37@@87))
))) (forall ((o2_22@@73 T@Ref) (f_37@@88 T@Field_20561_20562) ) (!  (=> (select (|PolymorphicMapType_14165_20528_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@27) null (WandMaskField_8371 pm_f_22@@9))) o2_22@@73 f_37@@88) (= (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@27) o2_22@@73 f_37@@88) (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@73 f_37@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@26) o2_22@@73 f_37@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (IsWandField_8371_8372 pm_f_22@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_13616) (ExhaleHeap@@27 T@PolymorphicMapType_13616) (Mask@@58 T@PolymorphicMapType_13637) (pm_f_22@@10 T@Field_8502_19912) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_8502_19912 Mask@@58 null pm_f_22@@10) (IsWandField_8502_46614 pm_f_22@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@74 T@Ref) (f_37@@89 T@Field_13676_53) ) (!  (=> (select (|PolymorphicMapType_14165_13676_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@74 f_37@@89) (= (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@28) o2_22@@74 f_37@@89) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@74 f_37@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@74 f_37@@89))
)) (forall ((o2_22@@75 T@Ref) (f_37@@90 T@Field_13689_13690) ) (!  (=> (select (|PolymorphicMapType_14165_13676_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@75 f_37@@90) (= (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@28) o2_22@@75 f_37@@90) (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@75 f_37@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@75 f_37@@90))
))) (forall ((o2_22@@76 T@Ref) (f_37@@91 T@Field_21282_4093) ) (!  (=> (select (|PolymorphicMapType_14165_13676_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@76 f_37@@91) (= (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@28) o2_22@@76 f_37@@91) (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@76 f_37@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@76 f_37@@91))
))) (forall ((o2_22@@77 T@Ref) (f_37@@92 T@Field_8502_19900) ) (!  (=> (select (|PolymorphicMapType_14165_13676_43225#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@77 f_37@@92) (= (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) o2_22@@77 f_37@@92) (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@77 f_37@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@77 f_37@@92))
))) (forall ((o2_22@@78 T@Ref) (f_37@@93 T@Field_8502_19912) ) (!  (=> (select (|PolymorphicMapType_14165_13676_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@78 f_37@@93) (= (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@28) o2_22@@78 f_37@@93) (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@78 f_37@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@78 f_37@@93))
))) (forall ((o2_22@@79 T@Ref) (f_37@@94 T@Field_19882_53) ) (!  (=> (select (|PolymorphicMapType_14165_19882_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@79 f_37@@94) (= (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@28) o2_22@@79 f_37@@94) (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@79 f_37@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@79 f_37@@94))
))) (forall ((o2_22@@80 T@Ref) (f_37@@95 T@Field_19882_13690) ) (!  (=> (select (|PolymorphicMapType_14165_19882_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@80 f_37@@95) (= (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@28) o2_22@@80 f_37@@95) (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@80 f_37@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@80 f_37@@95))
))) (forall ((o2_22@@81 T@Ref) (f_37@@96 T@Field_19882_3444) ) (!  (=> (select (|PolymorphicMapType_14165_19882_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@81 f_37@@96) (= (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@28) o2_22@@81 f_37@@96) (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@81 f_37@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@81 f_37@@96))
))) (forall ((o2_22@@82 T@Ref) (f_37@@97 T@Field_19895_19900) ) (!  (=> (select (|PolymorphicMapType_14165_19882_44273#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@82 f_37@@97) (= (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@28) o2_22@@82 f_37@@97) (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@82 f_37@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@82 f_37@@97))
))) (forall ((o2_22@@83 T@Ref) (f_37@@98 T@Field_19911_19912) ) (!  (=> (select (|PolymorphicMapType_14165_19882_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@83 f_37@@98) (= (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@28) o2_22@@83 f_37@@98) (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@83 f_37@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@83 f_37@@98))
))) (forall ((o2_22@@84 T@Ref) (f_37@@99 T@Field_20528_53) ) (!  (=> (select (|PolymorphicMapType_14165_20528_53#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@84 f_37@@99) (= (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@28) o2_22@@84 f_37@@99) (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@84 f_37@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@84 f_37@@99))
))) (forall ((o2_22@@85 T@Ref) (f_37@@100 T@Field_20528_13690) ) (!  (=> (select (|PolymorphicMapType_14165_20528_13690#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@85 f_37@@100) (= (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@28) o2_22@@85 f_37@@100) (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@85 f_37@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@85 f_37@@100))
))) (forall ((o2_22@@86 T@Ref) (f_37@@101 T@Field_20528_3768) ) (!  (=> (select (|PolymorphicMapType_14165_20528_3444#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@86 f_37@@101) (= (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@28) o2_22@@86 f_37@@101) (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@86 f_37@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@86 f_37@@101))
))) (forall ((o2_22@@87 T@Ref) (f_37@@102 T@Field_20543_20548) ) (!  (=> (select (|PolymorphicMapType_14165_20528_45321#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@87 f_37@@102) (= (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@28) o2_22@@87 f_37@@102) (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@87 f_37@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@87 f_37@@102))
))) (forall ((o2_22@@88 T@Ref) (f_37@@103 T@Field_20561_20562) ) (!  (=> (select (|PolymorphicMapType_14165_20528_19912#PolymorphicMapType_14165| (select (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@28) null (WandMaskField_8502 pm_f_22@@10))) o2_22@@88 f_37@@103) (= (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@28) o2_22@@88 f_37@@103) (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@88 f_37@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| ExhaleHeap@@27) o2_22@@88 f_37@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (IsWandField_8502_46614 pm_f_22@@10))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_13616) (o_12 T@Ref) (f_24 T@Field_20561_20562) (v T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@29) (store (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@29) o_12 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@29) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@29) (store (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@29) o_12 f_24 v)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_13616) (o_12@@0 T@Ref) (f_24@@0 T@Field_20543_20548) (v@@0 T@PolymorphicMapType_14165) ) (! (succHeap Heap@@30 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@30) (store (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@30) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@30) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@30) (store (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@30) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_13616) (o_12@@1 T@Ref) (f_24@@1 T@Field_20528_3768) (v@@1 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@31) (store (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@31) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@31) (store (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@31) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@31) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_13616) (o_12@@2 T@Ref) (f_24@@2 T@Field_20528_13690) (v@@2 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@32) (store (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@32) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@32) (store (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@32) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@32) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_13616) (o_12@@3 T@Ref) (f_24@@3 T@Field_20528_53) (v@@3 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@33) (store (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@33) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@33) (store (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@33) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@33) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_13616) (o_12@@4 T@Ref) (f_24@@4 T@Field_19911_19912) (v@@4 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@34) (store (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@34) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@34) (store (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@34) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@34) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_13616) (o_12@@5 T@Ref) (f_24@@5 T@Field_19895_19900) (v@@5 T@PolymorphicMapType_14165) ) (! (succHeap Heap@@35 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@35) (store (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@35) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@35) (store (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@35) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@35) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_13616) (o_12@@6 T@Ref) (f_24@@6 T@Field_19882_3444) (v@@6 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@36) (store (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@36) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@36) (store (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@36) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@36) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_13616) (o_12@@7 T@Ref) (f_24@@7 T@Field_19882_13690) (v@@7 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@37) (store (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@37) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@37) (store (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@37) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@37) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_13616) (o_12@@8 T@Ref) (f_24@@8 T@Field_19882_53) (v@@8 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@38) (store (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@38) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@38) (store (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@38) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@38) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_13616) (o_12@@9 T@Ref) (f_24@@9 T@Field_8502_19912) (v@@9 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@39) (store (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@39) o_12@@9 f_24@@9 v@@9) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@39) (store (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@39) o_12@@9 f_24@@9 v@@9) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@39) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_13616) (o_12@@10 T@Ref) (f_24@@10 T@Field_8502_19900) (v@@10 T@PolymorphicMapType_14165) ) (! (succHeap Heap@@40 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@40) (store (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@40) o_12@@10 f_24@@10 v@@10) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@40) (store (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@40) o_12@@10 f_24@@10 v@@10) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@40) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_13616) (o_12@@11 T@Ref) (f_24@@11 T@Field_21282_4093) (v@@11 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@41) (store (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@41) o_12@@11 f_24@@11 v@@11) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@41) (store (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@41) o_12@@11 f_24@@11 v@@11) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@41) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_13616) (o_12@@12 T@Ref) (f_24@@12 T@Field_13689_13690) (v@@12 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@42) (store (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@42) o_12@@12 f_24@@12 v@@12) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@42) (store (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@42) o_12@@12 f_24@@12 v@@12) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@42) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_13616) (o_12@@13 T@Ref) (f_24@@13 T@Field_13676_53) (v@@13 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_13616 (store (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@43) o_12@@13 f_24@@13 v@@13) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13616 (store (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@43) o_12@@13 f_24@@13 v@@13) (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_8502_38753#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_8502_19912#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_19882_53#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_19882_13690#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_19882_39919#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_19882_19912#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_20528_4093#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_20528_53#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_20528_13690#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_20528_41096#PolymorphicMapType_13616| Heap@@43) (|PolymorphicMapType_13616_20528_19912#PolymorphicMapType_13616| Heap@@43)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.307:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.308:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_12@@14 T@Ref) (f_16 T@Field_13689_13690) (Heap@@44 T@PolymorphicMapType_13616) ) (!  (=> (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@44) o_12@@14 $allocated) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@44) (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@44) o_12@@14 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13616_8024_8025#PolymorphicMapType_13616| Heap@@44) o_12@@14 f_16))
)))
(assert (forall ((p@@3 T@Field_20561_20562) (v_1@@2 T@FrameType) (q T@Field_20561_20562) (w@@2 T@FrameType) (r T@Field_20561_20562) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20528_20528 p@@3 v_1@@2 q w@@2) (InsidePredicate_20528_20528 q w@@2 r u)) (InsidePredicate_20528_20528 p@@3 v_1@@2 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20528_20528 p@@3 v_1@@2 q w@@2) (InsidePredicate_20528_20528 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_20561_20562) (v_1@@3 T@FrameType) (q@@0 T@Field_20561_20562) (w@@3 T@FrameType) (r@@0 T@Field_19911_19912) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_20528_20528 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_20528_19882 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_20528_19882 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20528_20528 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_20528_19882 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_20561_20562) (v_1@@4 T@FrameType) (q@@1 T@Field_20561_20562) (w@@4 T@FrameType) (r@@1 T@Field_8502_19912) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_20528_20528 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_20528_13676 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_20528_13676 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20528_20528 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_20528_13676 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_20561_20562) (v_1@@5 T@FrameType) (q@@2 T@Field_19911_19912) (w@@5 T@FrameType) (r@@2 T@Field_20561_20562) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_20528_19882 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_19882_20528 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_20528_20528 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20528_19882 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_19882_20528 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_20561_20562) (v_1@@6 T@FrameType) (q@@3 T@Field_19911_19912) (w@@6 T@FrameType) (r@@3 T@Field_19911_19912) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_20528_19882 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_19882_19882 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_20528_19882 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20528_19882 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_19882_19882 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_20561_20562) (v_1@@7 T@FrameType) (q@@4 T@Field_19911_19912) (w@@7 T@FrameType) (r@@4 T@Field_8502_19912) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_20528_19882 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_19882_13676 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_20528_13676 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20528_19882 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_19882_13676 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_20561_20562) (v_1@@8 T@FrameType) (q@@5 T@Field_8502_19912) (w@@8 T@FrameType) (r@@5 T@Field_20561_20562) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_20528_13676 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_13676_20528 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_20528_20528 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20528_13676 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_13676_20528 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_20561_20562) (v_1@@9 T@FrameType) (q@@6 T@Field_8502_19912) (w@@9 T@FrameType) (r@@6 T@Field_19911_19912) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_20528_13676 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_13676_19882 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_20528_19882 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20528_13676 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_13676_19882 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_20561_20562) (v_1@@10 T@FrameType) (q@@7 T@Field_8502_19912) (w@@10 T@FrameType) (r@@7 T@Field_8502_19912) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_20528_13676 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_13676_13676 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_20528_13676 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20528_13676 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_13676_13676 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_19911_19912) (v_1@@11 T@FrameType) (q@@8 T@Field_20561_20562) (w@@11 T@FrameType) (r@@8 T@Field_20561_20562) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_19882_20528 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_20528_20528 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_19882_20528 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19882_20528 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_20528_20528 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_19911_19912) (v_1@@12 T@FrameType) (q@@9 T@Field_20561_20562) (w@@12 T@FrameType) (r@@9 T@Field_19911_19912) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_19882_20528 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_20528_19882 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_19882_19882 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19882_20528 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_20528_19882 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_19911_19912) (v_1@@13 T@FrameType) (q@@10 T@Field_20561_20562) (w@@13 T@FrameType) (r@@10 T@Field_8502_19912) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_19882_20528 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_20528_13676 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_19882_13676 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19882_20528 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_20528_13676 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_19911_19912) (v_1@@14 T@FrameType) (q@@11 T@Field_19911_19912) (w@@14 T@FrameType) (r@@11 T@Field_20561_20562) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_19882_19882 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_19882_20528 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_19882_20528 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19882_19882 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_19882_20528 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_19911_19912) (v_1@@15 T@FrameType) (q@@12 T@Field_19911_19912) (w@@15 T@FrameType) (r@@12 T@Field_19911_19912) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_19882_19882 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_19882_19882 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_19882_19882 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19882_19882 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_19882_19882 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_19911_19912) (v_1@@16 T@FrameType) (q@@13 T@Field_19911_19912) (w@@16 T@FrameType) (r@@13 T@Field_8502_19912) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_19882_19882 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_19882_13676 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_19882_13676 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19882_19882 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_19882_13676 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_19911_19912) (v_1@@17 T@FrameType) (q@@14 T@Field_8502_19912) (w@@17 T@FrameType) (r@@14 T@Field_20561_20562) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_19882_13676 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_13676_20528 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_19882_20528 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19882_13676 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_13676_20528 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_19911_19912) (v_1@@18 T@FrameType) (q@@15 T@Field_8502_19912) (w@@18 T@FrameType) (r@@15 T@Field_19911_19912) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_19882_13676 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_13676_19882 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_19882_19882 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19882_13676 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_13676_19882 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_19911_19912) (v_1@@19 T@FrameType) (q@@16 T@Field_8502_19912) (w@@19 T@FrameType) (r@@16 T@Field_8502_19912) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_19882_13676 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_13676_13676 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_19882_13676 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19882_13676 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_13676_13676 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_8502_19912) (v_1@@20 T@FrameType) (q@@17 T@Field_20561_20562) (w@@20 T@FrameType) (r@@17 T@Field_20561_20562) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_13676_20528 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_20528_20528 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_13676_20528 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13676_20528 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_20528_20528 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_8502_19912) (v_1@@21 T@FrameType) (q@@18 T@Field_20561_20562) (w@@21 T@FrameType) (r@@18 T@Field_19911_19912) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_13676_20528 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_20528_19882 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_13676_19882 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13676_20528 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_20528_19882 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_8502_19912) (v_1@@22 T@FrameType) (q@@19 T@Field_20561_20562) (w@@22 T@FrameType) (r@@19 T@Field_8502_19912) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_13676_20528 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_20528_13676 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_13676_13676 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13676_20528 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_20528_13676 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_8502_19912) (v_1@@23 T@FrameType) (q@@20 T@Field_19911_19912) (w@@23 T@FrameType) (r@@20 T@Field_20561_20562) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_13676_19882 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_19882_20528 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_13676_20528 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13676_19882 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_19882_20528 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_8502_19912) (v_1@@24 T@FrameType) (q@@21 T@Field_19911_19912) (w@@24 T@FrameType) (r@@21 T@Field_19911_19912) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_13676_19882 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_19882_19882 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_13676_19882 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13676_19882 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_19882_19882 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_8502_19912) (v_1@@25 T@FrameType) (q@@22 T@Field_19911_19912) (w@@25 T@FrameType) (r@@22 T@Field_8502_19912) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_13676_19882 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_19882_13676 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_13676_13676 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13676_19882 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_19882_13676 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_8502_19912) (v_1@@26 T@FrameType) (q@@23 T@Field_8502_19912) (w@@26 T@FrameType) (r@@23 T@Field_20561_20562) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_13676_13676 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_13676_20528 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_13676_20528 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13676_13676 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_13676_20528 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_8502_19912) (v_1@@27 T@FrameType) (q@@24 T@Field_8502_19912) (w@@27 T@FrameType) (r@@24 T@Field_19911_19912) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_13676_13676 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_13676_19882 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_13676_19882 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13676_13676 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_13676_19882 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_8502_19912) (v_1@@28 T@FrameType) (q@@25 T@Field_8502_19912) (w@@28 T@FrameType) (r@@25 T@Field_8502_19912) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_13676_13676 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_13676_13676 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_13676_13676 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13676_13676 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_13676_13676 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.313:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Real) (arg3@@11 T@Ref) (arg4@@11 Real) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Real) ) (!  (=> (= (wand arg1@@11 arg2@@11 arg3@@11 arg4@@11) (wand arg1_2 arg2_2 arg3_2 arg4_2)) (and (= arg1@@11 arg1_2) (and (= arg2@@11 arg2_2) (and (= arg3@@11 arg3_2) (= arg4@@11 arg4_2)))))
 :qid |stdinbpl.435:15|
 :skolemid |88|
 :pattern ( (wand arg1@@11 arg2@@11 arg3@@11 arg4@@11) (wand arg1_2 arg2_2 arg3_2 arg4_2))
)))
(assert (forall ((arg1@@12 (Array T@Ref Bool)) (arg2@@12 Real) (arg3@@12 (Array T@Ref Bool)) (arg4@@12 Real) (arg1_2@@0 (Array T@Ref Bool)) (arg2_2@@0 Real) (arg3_2@@0 (Array T@Ref Bool)) (arg4_2@@0 Real) ) (!  (=> (= (wand_1 arg1@@12 arg2@@12 arg3@@12 arg4@@12) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0)) (and (= arg1@@12 arg1_2@@0) (and (= arg2@@12 arg2_2@@0) (and (= arg3@@12 arg3_2@@0) (= arg4@@12 arg4_2@@0)))))
 :qid |stdinbpl.467:15|
 :skolemid |95|
 :pattern ( (wand_1 arg1@@12 arg2@@12 arg3@@12 arg4@@12) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_13637)
(declare-fun x () T@Ref)
(declare-fun Heap@@45 () T@PolymorphicMapType_13616)
(declare-fun y () T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_13637)
(declare-fun neverTriggered4 (T@Ref) Bool)
(declare-fun vas () (Array T@Ref Bool))
(declare-fun QPMask@0 () T@PolymorphicMapType_13637)
(declare-fun invRecv4 (T@Ref Real T@Ref Real) T@Ref)
(declare-fun qpRange4 (T@Ref Real T@Ref Real) Bool)
(declare-fun getPredWandId_8358_8372 (T@Field_19911_19912) Int)
(declare-fun getPredWandId_8358_53 (T@Field_19882_53) Int)
(declare-fun getPredWandId_8358_13690 (T@Field_19882_13690) Int)
(declare-fun getPredWandId_8358_69316 (T@Field_19895_19900) Int)
(declare-fun getPredWandId_8414_8372 (T@Field_20561_20562) Int)
(declare-fun getPredWandId_8414_53 (T@Field_20528_53) Int)
(declare-fun getPredWandId_8414_13690 (T@Field_20528_13690) Int)
(declare-fun getPredWandId_8414_70125 (T@Field_20543_20548) Int)
(declare-fun getPredWandId_8502_3444 (T@Field_21282_4093) Int)
(declare-fun getPredWandId_8502_8372 (T@Field_8502_19912) Int)
(declare-fun getPredWandId_8502_53 (T@Field_13676_53) Int)
(declare-fun getPredWandId_8502_13690 (T@Field_13689_13690) Int)
(declare-fun getPredWandId_8502_70941 (T@Field_8502_19900) Int)
(declare-fun a_8 () T@Ref)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon26_Then_correct true))
(let ((anon17_correct true))
(let ((anon26_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| Mask@0) null (wand x FullPerm x FullPerm)) (* (to_real 2) FullPerm))) (=> (= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| Mask@0) null (wand x FullPerm x FullPerm)) (* (to_real 2) FullPerm)) (=> (and (state Heap@@45 Mask@0) (= (ControlFlow 0 14) 11)) anon17_correct)))))
(let ((anon25_Then_correct  (=> (= x y) (and (=> (= (ControlFlow 0 16) 13) anon26_Then_correct) (=> (= (ControlFlow 0 16) 14) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not (= x y)) (= (ControlFlow 0 12) 11)) anon17_correct)))
(let ((anon24_Else_correct  (=> (and (and (= Mask@0 (PolymorphicMapType_13637 (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@1) (store (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@1) null (wand y FullPerm y FullPerm) (+ (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@1) null (wand y FullPerm y FullPerm)) FullPerm)) (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| QPMask@1) (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| QPMask@1))) (state Heap@@45 Mask@0)) (and (state Heap@@45 Mask@0) (state Heap@@45 Mask@0))) (and (=> (= (ControlFlow 0 17) 16) anon25_Then_correct) (=> (= (ControlFlow 0 17) 12) anon25_Else_correct)))))
(let ((anon24_Then_correct true))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@1) null (wand x FullPerm x FullPerm)) FullPerm)) (=> (= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@1) null (wand x FullPerm x FullPerm)) FullPerm) (=> (state Heap@@45 QPMask@1) (and (=> (= (ControlFlow 0 18) 10) anon24_Then_correct) (=> (= (ControlFlow 0 18) 17) anon24_Else_correct)))))))
(let ((anon23_Then_correct true))
(let ((anon19_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 22)) (forall ((a_3_1 T@Ref) (a_3_2 T@Ref) ) (!  (=> (and (and (and (and (not (= a_3_1 a_3_2)) (and (select vas a_3_1) (> (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) a_3_1 f_7) 3))) (and (select vas a_3_2) (> (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) a_3_2 f_7) 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (or (or (not (= a_3_1 a_3_2)) (not (= FullPerm FullPerm))) (not (= x x))) (not (= FullPerm FullPerm))))
 :qid |stdinbpl.878:17|
 :skolemid |114|
 :pattern ( (neverTriggered4 a_3_1) (neverTriggered4 a_3_2))
))) (=> (forall ((a_3_1@@0 T@Ref) (a_3_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= a_3_1@@0 a_3_2@@0)) (and (select vas a_3_1@@0) (> (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) a_3_1@@0 f_7) 3))) (and (select vas a_3_2@@0) (> (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) a_3_2@@0 f_7) 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (or (or (not (= a_3_1@@0 a_3_2@@0)) (not (= FullPerm FullPerm))) (not (= x x))) (not (= FullPerm FullPerm))))
 :qid |stdinbpl.878:17|
 :skolemid |114|
 :pattern ( (neverTriggered4 a_3_1@@0) (neverTriggered4 a_3_2@@0))
)) (=> (forall ((a_3_1@@1 T@Ref) ) (!  (=> (and (and (select vas a_3_1@@1) (> (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) a_3_1@@1 f_7) 3)) (< NoPerm FullPerm)) (and (= (invRecv4 a_3_1@@1 FullPerm x FullPerm) a_3_1@@1) (qpRange4 a_3_1@@1 FullPerm x FullPerm)))
 :qid |stdinbpl.884:22|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_13616_8358_3444#PolymorphicMapType_13616| Heap@@45) null (wand a_3_1@@1 FullPerm x FullPerm)))
 :pattern ( (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@0) null (wand a_3_1@@1 FullPerm x FullPerm)))
 :pattern ( (select vas a_3_1@@1))
)) (=> (and (forall ((arg_0 T@Ref) (arg_1_2 Real) (arg_2_1 T@Ref) (arg_3_1 Real) ) (!  (=> (and (and (and (select vas (invRecv4 arg_0 arg_1_2 arg_2_1 arg_3_1)) (> (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) (invRecv4 arg_0 arg_1_2 arg_2_1 arg_3_1) f_7) 3)) (< NoPerm FullPerm)) (qpRange4 arg_0 arg_1_2 arg_2_1 arg_3_1)) (and (and (and (= (invRecv4 arg_0 arg_1_2 arg_2_1 arg_3_1) arg_0) (= FullPerm arg_1_2)) (= x arg_2_1)) (= FullPerm arg_3_1)))
 :qid |stdinbpl.888:22|
 :skolemid |116|
 :pattern ( (invRecv4 arg_0 arg_1_2 arg_2_1 arg_3_1))
)) (forall ((arg_0@@0 T@Ref) (arg_1_2@@0 Real) (arg_2_1@@0 T@Ref) (arg_3_1@@0 Real) ) (!  (=> (and (and (and (select vas (invRecv4 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) (> (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) (invRecv4 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0) f_7) 3)) (< NoPerm FullPerm)) (qpRange4 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) (and (=> (< NoPerm FullPerm) (and (and (and (= (invRecv4 arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0) arg_0@@0) (= FullPerm arg_1_2@@0)) (= x arg_2_1@@0)) (= FullPerm arg_3_1@@0))) (= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@1) null (wand arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) (+ (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@0) null (wand arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)) FullPerm))))
 :qid |stdinbpl.894:22|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@1) null (wand arg_0@@0 arg_1_2@@0 arg_2_1@@0 arg_3_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_19882_3444) ) (!  (=> (or (or (not (= o_4 null)) (not (IsWandField_8358_3444 f_5))) (not (= (getPredWandId_8358_3444 f_5) 0))) (= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@0) o_4 f_5) (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@1) o_4 f_5)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@0) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@1) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_19911_19912) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsWandField_8371_8372 f_5@@0))) (not (= (getPredWandId_8358_8372 f_5@@0) 0))) (= (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| QPMask@0) o_4@@0 f_5@@0) (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| QPMask@1) o_4@@0 f_5@@0)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| QPMask@0) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| QPMask@1) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_19882_53) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsWandField_8358_53 f_5@@1))) (not (= (getPredWandId_8358_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| QPMask@0) o_4@@1 f_5@@1) (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| QPMask@1) o_4@@1 f_5@@1)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| QPMask@0) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| QPMask@1) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_19882_13690) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsWandField_8358_13690 f_5@@2))) (not (= (getPredWandId_8358_13690 f_5@@2) 0))) (= (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| QPMask@0) o_4@@2 f_5@@2) (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| QPMask@1) o_4@@2 f_5@@2)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| QPMask@0) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| QPMask@1) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_19895_19900) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsWandField_8358_56605 f_5@@3))) (not (= (getPredWandId_8358_69316 f_5@@3) 0))) (= (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| QPMask@0) o_4@@3 f_5@@3) (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| QPMask@1) o_4@@3 f_5@@3)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| QPMask@0) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| QPMask@1) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_20528_3768) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsWandField_8414_3768 f_5@@4))) (not (= (getPredWandId_8414_3768 f_5@@4) 0))) (= (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| QPMask@0) o_4@@4 f_5@@4) (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| QPMask@1) o_4@@4 f_5@@4)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| QPMask@0) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| QPMask@1) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_20561_20562) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsWandField_8435_8436 f_5@@5))) (not (= (getPredWandId_8414_8372 f_5@@5) 0))) (= (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| QPMask@0) o_4@@5 f_5@@5) (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| QPMask@1) o_4@@5 f_5@@5)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| QPMask@0) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| QPMask@1) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_20528_53) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsWandField_8414_53 f_5@@6))) (not (= (getPredWandId_8414_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| QPMask@0) o_4@@6 f_5@@6) (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| QPMask@1) o_4@@6 f_5@@6)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| QPMask@0) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| QPMask@1) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_20528_13690) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsWandField_8414_13690 f_5@@7))) (not (= (getPredWandId_8414_13690 f_5@@7) 0))) (= (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| QPMask@0) o_4@@7 f_5@@7) (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| QPMask@1) o_4@@7 f_5@@7)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| QPMask@0) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| QPMask@1) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_20543_20548) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsWandField_8414_57422 f_5@@8))) (not (= (getPredWandId_8414_70125 f_5@@8) 0))) (= (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| QPMask@0) o_4@@8 f_5@@8) (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| QPMask@1) o_4@@8 f_5@@8)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| QPMask@0) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| QPMask@1) o_4@@8 f_5@@8))
))) (forall ((o_4@@9 T@Ref) (f_5@@9 T@Field_21282_4093) ) (!  (=> (or (or (not (= o_4@@9 null)) (not (IsWandField_8502_4093 f_5@@9))) (not (= (getPredWandId_8502_3444 f_5@@9) 0))) (= (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@0) o_4@@9 f_5@@9) (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@1) o_4@@9 f_5@@9)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@0) o_4@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@1) o_4@@9 f_5@@9))
))) (forall ((o_4@@10 T@Ref) (f_5@@10 T@Field_8502_19912) ) (!  (=> (or (or (not (= o_4@@10 null)) (not (IsWandField_8502_46614 f_5@@10))) (not (= (getPredWandId_8502_8372 f_5@@10) 0))) (= (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| QPMask@0) o_4@@10 f_5@@10) (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| QPMask@1) o_4@@10 f_5@@10)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| QPMask@0) o_4@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| QPMask@1) o_4@@10 f_5@@10))
))) (forall ((o_4@@11 T@Ref) (f_5@@11 T@Field_13676_53) ) (!  (=> (or (or (not (= o_4@@11 null)) (not (IsWandField_8502_53 f_5@@11))) (not (= (getPredWandId_8502_53 f_5@@11) 0))) (= (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| QPMask@0) o_4@@11 f_5@@11) (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| QPMask@1) o_4@@11 f_5@@11)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| QPMask@0) o_4@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| QPMask@1) o_4@@11 f_5@@11))
))) (forall ((o_4@@12 T@Ref) (f_5@@12 T@Field_13689_13690) ) (!  (=> (or (or (not (= o_4@@12 null)) (not (IsWandField_8502_13690 f_5@@12))) (not (= (getPredWandId_8502_13690 f_5@@12) 0))) (= (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| QPMask@0) o_4@@12 f_5@@12) (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| QPMask@1) o_4@@12 f_5@@12)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| QPMask@0) o_4@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| QPMask@1) o_4@@12 f_5@@12))
))) (forall ((o_4@@13 T@Ref) (f_5@@13 T@Field_8502_19900) ) (!  (=> (or (or (not (= o_4@@13 null)) (not (IsWandField_8502_55788 f_5@@13))) (not (= (getPredWandId_8502_70941 f_5@@13) 0))) (= (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| QPMask@0) o_4@@13 f_5@@13) (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| QPMask@1) o_4@@13 f_5@@13)))
 :qid |stdinbpl.900:29|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| QPMask@0) o_4@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| QPMask@1) o_4@@13 f_5@@13))
))) (and (and (forall ((arg_0@@1 T@Ref) (arg_1_2@@1 Real) (arg_2_1@@1 T@Ref) (arg_3_1@@1 Real) ) (!  (=> (not (and (and (and (select vas (invRecv4 arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1)) (> (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) (invRecv4 arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1) f_7) 3)) (< NoPerm FullPerm)) (qpRange4 arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1))) (= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@1) null (wand arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1)) (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@0) null (wand arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1))))
 :qid |stdinbpl.904:22|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@1) null (wand arg_0@@1 arg_1_2@@1 arg_2_1@@1 arg_3_1@@1)))
)) (state Heap@@45 QPMask@1)) (and (state Heap@@45 QPMask@1) (state Heap@@45 QPMask@1)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (HasDirectPerm_8502_4093 QPMask@1 x f_7)) (=> (HasDirectPerm_8502_4093 QPMask@1 x f_7) (=> (> (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) x f_7) 3) (=> (and (state Heap@@45 QPMask@1) (state Heap@@45 QPMask@1)) (and (=> (= (ControlFlow 0 20) 9) anon23_Then_correct) (=> (= (ControlFlow 0 20) 18) anon23_Else_correct)))))))))))))
(let ((anon22_Then_correct true))
(let ((anon8_correct true))
(let ((anon21_Then_correct  (=> (and (select vas a_8) (> (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) a_8 f_7) 3)) (and (=> (= (ControlFlow 0 5) 4) anon22_Then_correct) (=> (= (ControlFlow 0 5) 2) anon8_correct)))))
(let ((anon21_Else_correct  (=> (and (not (and (select vas a_8) (> (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) a_8 f_7) 3))) (= (ControlFlow 0 3) 2)) anon8_correct)))
(let ((anon20_Else_correct  (=> (not (select vas a_8)) (and (=> (= (ControlFlow 0 8) 5) anon21_Then_correct) (=> (= (ControlFlow 0 8) 3) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (select vas a_8) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_8502_4093 QPMask@0 a_8 f_7)) (=> (HasDirectPerm_8502_4093 QPMask@0 a_8 f_7) (and (=> (= (ControlFlow 0 6) 5) anon21_Then_correct) (=> (= (ControlFlow 0 6) 3) anon21_Else_correct)))))))
(let ((anon18_Else_correct  (and (=> (= (ControlFlow 0 23) (- 0 24)) (forall ((a_1_1 T@Ref) (a_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= a_1_1 a_1_2)) (select vas a_1_1)) (select vas a_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= a_1_1 a_1_2)))
 :qid |stdinbpl.797:15|
 :skolemid |108|
))) (=> (forall ((a_1_1@@0 T@Ref) (a_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= a_1_1@@0 a_1_2@@0)) (select vas a_1_1@@0)) (select vas a_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= a_1_1@@0 a_1_2@@0)))
 :qid |stdinbpl.797:15|
 :skolemid |108|
)) (=> (and (and (forall ((a_1_1@@1 T@Ref) ) (!  (=> (and (select vas a_1_1@@1) (< NoPerm FullPerm)) (and (qpRange3 a_1_1@@1) (= (invRecv3 a_1_1@@1) a_1_1@@1)))
 :qid |stdinbpl.803:22|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) a_1_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@0) a_1_1@@1 f_7))
 :pattern ( (select vas a_1_1@@1))
)) (forall ((o_4@@14 T@Ref) ) (!  (=> (and (and (select vas (invRecv3 o_4@@14)) (< NoPerm FullPerm)) (qpRange3 o_4@@14)) (= (invRecv3 o_4@@14) o_4@@14))
 :qid |stdinbpl.807:22|
 :skolemid |110|
 :pattern ( (invRecv3 o_4@@14))
))) (and (forall ((a_1_1@@2 T@Ref) ) (!  (=> (select vas a_1_1@@2) (not (= a_1_1@@2 null)))
 :qid |stdinbpl.813:22|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_13616_8502_4093#PolymorphicMapType_13616| Heap@@45) a_1_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@0) a_1_1@@2 f_7))
 :pattern ( (select vas a_1_1@@2))
)) (forall ((o_4@@15 T@Ref) ) (!  (and (=> (and (and (select vas (invRecv3 o_4@@15)) (< NoPerm FullPerm)) (qpRange3 o_4@@15)) (and (=> (< NoPerm FullPerm) (= (invRecv3 o_4@@15) o_4@@15)) (= (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@0) o_4@@15 f_7) (+ (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| ZeroMask) o_4@@15 f_7) FullPerm)))) (=> (not (and (and (select vas (invRecv3 o_4@@15)) (< NoPerm FullPerm)) (qpRange3 o_4@@15))) (= (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@0) o_4@@15 f_7) (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| ZeroMask) o_4@@15 f_7))))
 :qid |stdinbpl.819:22|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@0) o_4@@15 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@16 T@Ref) (f_5@@14 T@Field_13676_53) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| ZeroMask) o_4@@16 f_5@@14) (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| QPMask@0) o_4@@16 f_5@@14)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| ZeroMask) o_4@@16 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_13637_8502_53#PolymorphicMapType_13637| QPMask@0) o_4@@16 f_5@@14))
)) (forall ((o_4@@17 T@Ref) (f_5@@15 T@Field_13689_13690) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| ZeroMask) o_4@@17 f_5@@15) (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| QPMask@0) o_4@@17 f_5@@15)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| ZeroMask) o_4@@17 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_13637_8502_13690#PolymorphicMapType_13637| QPMask@0) o_4@@17 f_5@@15))
))) (forall ((o_4@@18 T@Ref) (f_5@@16 T@Field_21282_4093) ) (!  (=> (not (= f_5@@16 f_7)) (= (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| ZeroMask) o_4@@18 f_5@@16) (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@0) o_4@@18 f_5@@16)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| ZeroMask) o_4@@18 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_13637_8502_4093#PolymorphicMapType_13637| QPMask@0) o_4@@18 f_5@@16))
))) (forall ((o_4@@19 T@Ref) (f_5@@17 T@Field_8502_19900) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| ZeroMask) o_4@@19 f_5@@17) (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| QPMask@0) o_4@@19 f_5@@17)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| ZeroMask) o_4@@19 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_13637_8502_53222#PolymorphicMapType_13637| QPMask@0) o_4@@19 f_5@@17))
))) (forall ((o_4@@20 T@Ref) (f_5@@18 T@Field_8502_19912) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| ZeroMask) o_4@@20 f_5@@18) (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| QPMask@0) o_4@@20 f_5@@18)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| ZeroMask) o_4@@20 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_13637_8502_19912#PolymorphicMapType_13637| QPMask@0) o_4@@20 f_5@@18))
))) (forall ((o_4@@21 T@Ref) (f_5@@19 T@Field_19882_53) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| ZeroMask) o_4@@21 f_5@@19) (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| QPMask@0) o_4@@21 f_5@@19)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| ZeroMask) o_4@@21 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_13637_8358_53#PolymorphicMapType_13637| QPMask@0) o_4@@21 f_5@@19))
))) (forall ((o_4@@22 T@Ref) (f_5@@20 T@Field_19882_13690) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| ZeroMask) o_4@@22 f_5@@20) (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| QPMask@0) o_4@@22 f_5@@20)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| ZeroMask) o_4@@22 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_13637_8358_13690#PolymorphicMapType_13637| QPMask@0) o_4@@22 f_5@@20))
))) (forall ((o_4@@23 T@Ref) (f_5@@21 T@Field_19882_3444) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| ZeroMask) o_4@@23 f_5@@21) (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@0) o_4@@23 f_5@@21)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| ZeroMask) o_4@@23 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_13637_8358_3444#PolymorphicMapType_13637| QPMask@0) o_4@@23 f_5@@21))
))) (forall ((o_4@@24 T@Ref) (f_5@@22 T@Field_19895_19900) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| ZeroMask) o_4@@24 f_5@@22) (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| QPMask@0) o_4@@24 f_5@@22)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| ZeroMask) o_4@@24 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_13637_8358_53636#PolymorphicMapType_13637| QPMask@0) o_4@@24 f_5@@22))
))) (forall ((o_4@@25 T@Ref) (f_5@@23 T@Field_19911_19912) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| ZeroMask) o_4@@25 f_5@@23) (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| QPMask@0) o_4@@25 f_5@@23)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| ZeroMask) o_4@@25 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_13637_8358_19912#PolymorphicMapType_13637| QPMask@0) o_4@@25 f_5@@23))
))) (forall ((o_4@@26 T@Ref) (f_5@@24 T@Field_20528_53) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| ZeroMask) o_4@@26 f_5@@24) (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| QPMask@0) o_4@@26 f_5@@24)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| ZeroMask) o_4@@26 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_13637_8414_53#PolymorphicMapType_13637| QPMask@0) o_4@@26 f_5@@24))
))) (forall ((o_4@@27 T@Ref) (f_5@@25 T@Field_20528_13690) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| ZeroMask) o_4@@27 f_5@@25) (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| QPMask@0) o_4@@27 f_5@@25)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| ZeroMask) o_4@@27 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_13637_8414_13690#PolymorphicMapType_13637| QPMask@0) o_4@@27 f_5@@25))
))) (forall ((o_4@@28 T@Ref) (f_5@@26 T@Field_20528_3768) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| ZeroMask) o_4@@28 f_5@@26) (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| QPMask@0) o_4@@28 f_5@@26)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| ZeroMask) o_4@@28 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_13637_8414_3768#PolymorphicMapType_13637| QPMask@0) o_4@@28 f_5@@26))
))) (forall ((o_4@@29 T@Ref) (f_5@@27 T@Field_20543_20548) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| ZeroMask) o_4@@29 f_5@@27) (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| QPMask@0) o_4@@29 f_5@@27)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| ZeroMask) o_4@@29 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_13637_8414_54050#PolymorphicMapType_13637| QPMask@0) o_4@@29 f_5@@27))
))) (forall ((o_4@@30 T@Ref) (f_5@@28 T@Field_20561_20562) ) (!  (=> true (= (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| ZeroMask) o_4@@30 f_5@@28) (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| QPMask@0) o_4@@30 f_5@@28)))
 :qid |stdinbpl.823:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| ZeroMask) o_4@@30 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_13637_8414_19912#PolymorphicMapType_13637| QPMask@0) o_4@@30 f_5@@28))
))) (and (state Heap@@45 QPMask@0) (state Heap@@45 QPMask@0))) (and (and (state Heap@@45 QPMask@0) (select vas x)) (and (state Heap@@45 QPMask@0) (state Heap@@45 QPMask@0)))) (and (and (=> (= (ControlFlow 0 23) 20) anon19_Else_correct) (=> (= (ControlFlow 0 23) 6) anon20_Then_correct)) (=> (= (ControlFlow 0 23) 8) anon20_Else_correct))))))))
(let ((anon18_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@45 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@45) x $allocated) (select (|PolymorphicMapType_13616_8021_53#PolymorphicMapType_13616| Heap@@45) y $allocated))) (and (=> (= (ControlFlow 0 25) 1) anon18_Then_correct) (=> (= (ControlFlow 0 25) 23) anon18_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 26) 25) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
