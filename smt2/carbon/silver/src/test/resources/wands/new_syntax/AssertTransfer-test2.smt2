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
(declare-sort T@Field_14643_53 0)
(declare-sort T@Field_14656_14657 0)
(declare-sort T@Field_19139_1773 0)
(declare-sort T@Field_17980_17985 0)
(declare-sort T@Field_18452_18457 0)
(declare-sort T@Field_8157_17985 0)
(declare-sort T@Field_8157_17995 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17969_1195 0)
(declare-sort T@Field_17969_53 0)
(declare-sort T@Field_17969_14657 0)
(declare-sort T@Field_17994_17995 0)
(declare-sort T@Field_18439_1415 0)
(declare-sort T@Field_18439_53 0)
(declare-sort T@Field_18439_14657 0)
(declare-sort T@Field_18468_18469 0)
(declare-datatypes ((T@PolymorphicMapType_14604 0)) (((PolymorphicMapType_14604 (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| (Array T@Ref T@Field_19139_1773 Real)) (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| (Array T@Ref T@Field_17969_1195 Real)) (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| (Array T@Ref T@Field_18439_1415 Real)) (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| (Array T@Ref T@Field_14643_53 Real)) (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| (Array T@Ref T@Field_14656_14657 Real)) (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| (Array T@Ref T@Field_8157_17985 Real)) (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| (Array T@Ref T@Field_8157_17995 Real)) (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| (Array T@Ref T@Field_17969_53 Real)) (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| (Array T@Ref T@Field_17969_14657 Real)) (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| (Array T@Ref T@Field_17980_17985 Real)) (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| (Array T@Ref T@Field_17994_17995 Real)) (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| (Array T@Ref T@Field_18439_53 Real)) (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| (Array T@Ref T@Field_18439_14657 Real)) (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| (Array T@Ref T@Field_18452_18457 Real)) (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| (Array T@Ref T@Field_18468_18469 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15132 0)) (((PolymorphicMapType_15132 (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (Array T@Ref T@Field_19139_1773 Bool)) (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (Array T@Ref T@Field_14643_53 Bool)) (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (Array T@Ref T@Field_14656_14657 Bool)) (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (Array T@Ref T@Field_8157_17985 Bool)) (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (Array T@Ref T@Field_8157_17995 Bool)) (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (Array T@Ref T@Field_17969_1195 Bool)) (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (Array T@Ref T@Field_17969_53 Bool)) (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (Array T@Ref T@Field_17969_14657 Bool)) (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (Array T@Ref T@Field_17980_17985 Bool)) (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (Array T@Ref T@Field_17994_17995 Bool)) (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (Array T@Ref T@Field_18439_1415 Bool)) (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (Array T@Ref T@Field_18439_53 Bool)) (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (Array T@Ref T@Field_18439_14657 Bool)) (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (Array T@Ref T@Field_18452_18457 Bool)) (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (Array T@Ref T@Field_18468_18469 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14583 0)) (((PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| (Array T@Ref T@Field_14643_53 Bool)) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| (Array T@Ref T@Field_14656_14657 T@Ref)) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| (Array T@Ref T@Field_19139_1773 Int)) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| (Array T@Ref T@Field_17980_17985 T@PolymorphicMapType_15132)) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| (Array T@Ref T@Field_18452_18457 T@PolymorphicMapType_15132)) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| (Array T@Ref T@Field_8157_17985 T@PolymorphicMapType_15132)) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| (Array T@Ref T@Field_8157_17995 T@FrameType)) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| (Array T@Ref T@Field_17969_1195 Int)) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| (Array T@Ref T@Field_17969_53 Bool)) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| (Array T@Ref T@Field_17969_14657 T@Ref)) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| (Array T@Ref T@Field_17994_17995 T@FrameType)) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| (Array T@Ref T@Field_18439_1415 Int)) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| (Array T@Ref T@Field_18439_53 Bool)) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| (Array T@Ref T@Field_18439_14657 T@Ref)) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| (Array T@Ref T@Field_18468_18469 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_14643_53)
(declare-fun f_7 () T@Field_19139_1773)
(declare-fun g () T@Field_19139_1773)
(declare-fun succHeap (T@PolymorphicMapType_14583 T@PolymorphicMapType_14583) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_14583 T@PolymorphicMapType_14583) Bool)
(declare-fun wand_1 (T@Ref Real T@Ref Int Bool) T@Field_18439_1415)
(declare-fun state (T@PolymorphicMapType_14583 T@PolymorphicMapType_14604) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_14604) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15132)
(declare-fun wand (Bool Bool) T@Field_17969_1195)
(declare-fun IsWandField_8108_1195 (T@Field_17969_1195) Bool)
(declare-fun |wand#ft| (Bool Bool) T@Field_17994_17995)
(declare-fun IsWandField_8113_8114 (T@Field_17994_17995) Bool)
(declare-fun IsPredicateField_8108_1195 (T@Field_17969_1195) Bool)
(declare-fun IsPredicateField_8113_8114 (T@Field_17994_17995) Bool)
(declare-fun getPredWandId_8119_1415 (T@Field_18439_1415) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_14583 T@PolymorphicMapType_14583 T@PolymorphicMapType_14604) Bool)
(declare-fun IsPredicateField_8130_8131 (T@Field_18468_18469) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_18439 (T@Field_18468_18469) T@Field_18452_18457)
(declare-fun HasDirectPerm_18439_17995 (T@PolymorphicMapType_14604 T@Ref T@Field_18468_18469) Bool)
(declare-fun PredicateMaskField_17969 (T@Field_17994_17995) T@Field_17980_17985)
(declare-fun HasDirectPerm_17969_17995 (T@PolymorphicMapType_14604 T@Ref T@Field_17994_17995) Bool)
(declare-fun IsPredicateField_8157_48328 (T@Field_8157_17995) Bool)
(declare-fun PredicateMaskField_8157 (T@Field_8157_17995) T@Field_8157_17985)
(declare-fun HasDirectPerm_8157_17995 (T@PolymorphicMapType_14604 T@Ref T@Field_8157_17995) Bool)
(declare-fun IsWandField_8130_8131 (T@Field_18468_18469) Bool)
(declare-fun WandMaskField_8130 (T@Field_18468_18469) T@Field_18452_18457)
(declare-fun WandMaskField_8113 (T@Field_17994_17995) T@Field_17980_17985)
(declare-fun IsWandField_8157_53360 (T@Field_8157_17995) Bool)
(declare-fun WandMaskField_8157 (T@Field_8157_17995) T@Field_8157_17985)
(declare-fun dummyHeap () T@PolymorphicMapType_14583)
(declare-fun ZeroMask () T@PolymorphicMapType_14604)
(declare-fun InsidePredicate_18439_18439 (T@Field_18468_18469 T@FrameType T@Field_18468_18469 T@FrameType) Bool)
(declare-fun InsidePredicate_17969_17969 (T@Field_17994_17995 T@FrameType T@Field_17994_17995 T@FrameType) Bool)
(declare-fun InsidePredicate_14643_14643 (T@Field_8157_17995 T@FrameType T@Field_8157_17995 T@FrameType) Bool)
(declare-fun IsWandField_8119_1415 (T@Field_18439_1415) Bool)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref Int Bool) T@Field_18468_18469)
(declare-fun IsPredicateField_8157_1773 (T@Field_19139_1773) Bool)
(declare-fun IsWandField_8157_1773 (T@Field_19139_1773) Bool)
(declare-fun IsPredicateField_8119_1415 (T@Field_18439_1415) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8119_64152 (T@Field_18452_18457) Bool)
(declare-fun IsWandField_8119_64168 (T@Field_18452_18457) Bool)
(declare-fun IsPredicateField_8119_14657 (T@Field_18439_14657) Bool)
(declare-fun IsWandField_8119_14657 (T@Field_18439_14657) Bool)
(declare-fun IsPredicateField_8119_53 (T@Field_18439_53) Bool)
(declare-fun IsWandField_8119_53 (T@Field_18439_53) Bool)
(declare-fun IsPredicateField_8108_63335 (T@Field_17980_17985) Bool)
(declare-fun IsWandField_8108_63351 (T@Field_17980_17985) Bool)
(declare-fun IsPredicateField_8108_14657 (T@Field_17969_14657) Bool)
(declare-fun IsWandField_8108_14657 (T@Field_17969_14657) Bool)
(declare-fun IsPredicateField_8108_53 (T@Field_17969_53) Bool)
(declare-fun IsWandField_8108_53 (T@Field_17969_53) Bool)
(declare-fun IsPredicateField_8157_62518 (T@Field_8157_17985) Bool)
(declare-fun IsWandField_8157_62534 (T@Field_8157_17985) Bool)
(declare-fun IsPredicateField_8157_14657 (T@Field_14656_14657) Bool)
(declare-fun IsWandField_8157_14657 (T@Field_14656_14657) Bool)
(declare-fun IsPredicateField_8157_53 (T@Field_14643_53) Bool)
(declare-fun IsWandField_8157_53 (T@Field_14643_53) Bool)
(declare-fun HasDirectPerm_18439_47855 (T@PolymorphicMapType_14604 T@Ref T@Field_18452_18457) Bool)
(declare-fun HasDirectPerm_18439_14657 (T@PolymorphicMapType_14604 T@Ref T@Field_18439_14657) Bool)
(declare-fun HasDirectPerm_18439_53 (T@PolymorphicMapType_14604 T@Ref T@Field_18439_53) Bool)
(declare-fun HasDirectPerm_18439_1773 (T@PolymorphicMapType_14604 T@Ref T@Field_18439_1415) Bool)
(declare-fun HasDirectPerm_17969_46721 (T@PolymorphicMapType_14604 T@Ref T@Field_17980_17985) Bool)
(declare-fun HasDirectPerm_17969_14657 (T@PolymorphicMapType_14604 T@Ref T@Field_17969_14657) Bool)
(declare-fun HasDirectPerm_17969_53 (T@PolymorphicMapType_14604 T@Ref T@Field_17969_53) Bool)
(declare-fun HasDirectPerm_17969_1773 (T@PolymorphicMapType_14604 T@Ref T@Field_17969_1195) Bool)
(declare-fun HasDirectPerm_8157_45543 (T@PolymorphicMapType_14604 T@Ref T@Field_8157_17985) Bool)
(declare-fun HasDirectPerm_8157_14657 (T@PolymorphicMapType_14604 T@Ref T@Field_14656_14657) Bool)
(declare-fun HasDirectPerm_8157_53 (T@PolymorphicMapType_14604 T@Ref T@Field_14643_53) Bool)
(declare-fun HasDirectPerm_8157_1773 (T@PolymorphicMapType_14604 T@Ref T@Field_19139_1773) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_14604 T@PolymorphicMapType_14604 T@PolymorphicMapType_14604) Bool)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref Int Bool) T@Field_18452_18457)
(declare-fun getPredWandId_8108_1195 (T@Field_17969_1195) Int)
(declare-fun |wand#sm| (Bool Bool) T@Field_17980_17985)
(declare-fun InsidePredicate_18439_17969 (T@Field_18468_18469 T@FrameType T@Field_17994_17995 T@FrameType) Bool)
(declare-fun InsidePredicate_18439_14643 (T@Field_18468_18469 T@FrameType T@Field_8157_17995 T@FrameType) Bool)
(declare-fun InsidePredicate_17969_18439 (T@Field_17994_17995 T@FrameType T@Field_18468_18469 T@FrameType) Bool)
(declare-fun InsidePredicate_17969_14643 (T@Field_17994_17995 T@FrameType T@Field_8157_17995 T@FrameType) Bool)
(declare-fun InsidePredicate_14643_18439 (T@Field_8157_17995 T@FrameType T@Field_18468_18469 T@FrameType) Bool)
(declare-fun InsidePredicate_14643_17969 (T@Field_8157_17995 T@FrameType T@Field_17994_17995 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_14583) (Heap1 T@PolymorphicMapType_14583) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Int) (arg5 Bool) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Int) (arg5_2 Bool) ) (!  (=> (= (wand_1 arg1 arg2 arg3 arg4 arg5) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2)) (and (= arg1 arg1_2) (and (= arg2 arg2_2) (and (= arg3 arg3_2) (and (= arg4 arg4_2) (= arg5 arg5_2))))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1 arg2 arg3 arg4 arg5) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2))
)))
(assert (forall ((Heap T@PolymorphicMapType_14583) (Mask T@PolymorphicMapType_14604) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_14583) (Heap1@@0 T@PolymorphicMapType_14583) (Heap2 T@PolymorphicMapType_14583) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18468_18469) ) (!  (not (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18452_18457) ) (!  (not (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18439_14657) ) (!  (not (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18439_53) ) (!  (not (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_18439_1415) ) (!  (not (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_17994_17995) ) (!  (not (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_17980_17985) ) (!  (not (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_17969_14657) ) (!  (not (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_17969_53) ) (!  (not (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_17969_1195) ) (!  (not (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8157_17995) ) (!  (not (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8157_17985) ) (!  (not (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_14656_14657) ) (!  (not (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_14643_53) ) (!  (not (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_19139_1773) ) (!  (not (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 Bool) ) (! (IsWandField_8108_1195 (wand arg1@@0 arg2@@0))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@0 arg2@@0))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 Bool) ) (! (IsWandField_8113_8114 (|wand#ft| arg1@@1 arg2@@1))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 Bool) ) (!  (not (IsPredicateField_8108_1195 (wand arg1@@2 arg2@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 Bool) ) (!  (not (IsPredicateField_8113_8114 (|wand#ft| arg1@@3 arg2@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@0 T@Ref) (arg4@@0 Int) (arg5@@0 Bool) ) (! (= (getPredWandId_8119_1415 (wand_1 arg1@@4 arg2@@4 arg3@@0 arg4@@0 arg5@@0)) 1)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@4 arg2@@4 arg3@@0 arg4@@0 arg5@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_14583) (ExhaleHeap T@PolymorphicMapType_14583) (Mask@@0 T@PolymorphicMapType_14604) (pm_f T@Field_18468_18469) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_18439_17995 Mask@@0 null pm_f) (IsPredicateField_8130_8131 pm_f)) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@0) null (PredicateMaskField_18439 pm_f)) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap) null (PredicateMaskField_18439 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_8130_8131 pm_f) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap) null (PredicateMaskField_18439 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_14583) (ExhaleHeap@@0 T@PolymorphicMapType_14583) (Mask@@1 T@PolymorphicMapType_14604) (pm_f@@0 T@Field_17994_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17969_17995 Mask@@1 null pm_f@@0) (IsPredicateField_8113_8114 pm_f@@0)) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@1) null (PredicateMaskField_17969 pm_f@@0)) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@0) null (PredicateMaskField_17969 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8113_8114 pm_f@@0) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@0) null (PredicateMaskField_17969 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_14583) (ExhaleHeap@@1 T@PolymorphicMapType_14583) (Mask@@2 T@PolymorphicMapType_14604) (pm_f@@1 T@Field_8157_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8157_17995 Mask@@2 null pm_f@@1) (IsPredicateField_8157_48328 pm_f@@1)) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@2) null (PredicateMaskField_8157 pm_f@@1)) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@1) null (PredicateMaskField_8157 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_8157_48328 pm_f@@1) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@1) null (PredicateMaskField_8157 pm_f@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_14583) (ExhaleHeap@@2 T@PolymorphicMapType_14583) (Mask@@3 T@PolymorphicMapType_14604) (pm_f@@2 T@Field_18468_18469) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_18439_17995 Mask@@3 null pm_f@@2) (IsWandField_8130_8131 pm_f@@2)) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@3) null (WandMaskField_8130 pm_f@@2)) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@2) null (WandMaskField_8130 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_8130_8131 pm_f@@2) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@2) null (WandMaskField_8130 pm_f@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_14583) (ExhaleHeap@@3 T@PolymorphicMapType_14583) (Mask@@4 T@PolymorphicMapType_14604) (pm_f@@3 T@Field_17994_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_17969_17995 Mask@@4 null pm_f@@3) (IsWandField_8113_8114 pm_f@@3)) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@4) null (WandMaskField_8113 pm_f@@3)) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@3) null (WandMaskField_8113 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsWandField_8113_8114 pm_f@@3) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@3) null (WandMaskField_8113 pm_f@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_14583) (ExhaleHeap@@4 T@PolymorphicMapType_14583) (Mask@@5 T@PolymorphicMapType_14604) (pm_f@@4 T@Field_8157_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8157_17995 Mask@@5 null pm_f@@4) (IsWandField_8157_53360 pm_f@@4)) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@5) null (WandMaskField_8157 pm_f@@4)) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@4) null (WandMaskField_8157 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_8157_53360 pm_f@@4) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@4) null (WandMaskField_8157 pm_f@@4)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_14583) (ExhaleHeap@@5 T@PolymorphicMapType_14583) (Mask@@6 T@PolymorphicMapType_14604) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@5) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@5) o_1 $allocated))
)))
(assert (forall ((p T@Field_18468_18469) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18439_18439 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18439_18439 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_17994_17995) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_17969_17969 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17969_17969 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_8157_17995) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_14643_14643 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14643_14643 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@1 T@Ref) (arg4@@1 Int) (arg5@@1 Bool) ) (! (IsWandField_8119_1415 (wand_1 arg1@@5 arg2@@5 arg3@@1 arg4@@1 arg5@@1))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@5 arg2@@5 arg3@@1 arg4@@1 arg5@@1))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@2 T@Ref) (arg4@@2 Int) (arg5@@2 Bool) ) (! (IsWandField_8130_8131 (|wand_1#ft| arg1@@6 arg2@@6 arg3@@2 arg4@@2 arg5@@2))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@6 arg2@@6 arg3@@2 arg4@@2 arg5@@2))
)))
(assert  (not (IsPredicateField_8157_1773 f_7)))
(assert  (not (IsWandField_8157_1773 f_7)))
(assert  (not (IsPredicateField_8157_1773 g)))
(assert  (not (IsWandField_8157_1773 g)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_14583) (ExhaleHeap@@6 T@PolymorphicMapType_14583) (Mask@@7 T@PolymorphicMapType_14604) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@7 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@3 T@Ref) (arg4@@3 Int) (arg5@@3 Bool) ) (!  (not (IsPredicateField_8119_1415 (wand_1 arg1@@7 arg2@@7 arg3@@3 arg4@@3 arg5@@3)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@7 arg2@@7 arg3@@3 arg4@@3 arg5@@3))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@4 T@Ref) (arg4@@4 Int) (arg5@@4 Bool) ) (!  (not (IsPredicateField_8130_8131 (|wand_1#ft| arg1@@8 arg2@@8 arg3@@4 arg4@@4 arg5@@4)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@8 arg2@@8 arg3@@4 arg4@@4 arg5@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_14604) (o_2@@14 T@Ref) (f_4@@14 T@Field_18468_18469) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8130_8131 f_4@@14))) (not (IsWandField_8130_8131 f_4@@14))) (<= (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_14604) (o_2@@15 T@Ref) (f_4@@15 T@Field_18452_18457) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8119_64152 f_4@@15))) (not (IsWandField_8119_64168 f_4@@15))) (<= (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_14604) (o_2@@16 T@Ref) (f_4@@16 T@Field_18439_14657) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8119_14657 f_4@@16))) (not (IsWandField_8119_14657 f_4@@16))) (<= (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_14604) (o_2@@17 T@Ref) (f_4@@17 T@Field_18439_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8119_53 f_4@@17))) (not (IsWandField_8119_53 f_4@@17))) (<= (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_14604) (o_2@@18 T@Ref) (f_4@@18 T@Field_18439_1415) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8119_1415 f_4@@18))) (not (IsWandField_8119_1415 f_4@@18))) (<= (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_14604) (o_2@@19 T@Ref) (f_4@@19 T@Field_17994_17995) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8113_8114 f_4@@19))) (not (IsWandField_8113_8114 f_4@@19))) (<= (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_14604) (o_2@@20 T@Ref) (f_4@@20 T@Field_17980_17985) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8108_63335 f_4@@20))) (not (IsWandField_8108_63351 f_4@@20))) (<= (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_14604) (o_2@@21 T@Ref) (f_4@@21 T@Field_17969_14657) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8108_14657 f_4@@21))) (not (IsWandField_8108_14657 f_4@@21))) (<= (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_14604) (o_2@@22 T@Ref) (f_4@@22 T@Field_17969_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8108_53 f_4@@22))) (not (IsWandField_8108_53 f_4@@22))) (<= (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_14604) (o_2@@23 T@Ref) (f_4@@23 T@Field_17969_1195) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8108_1195 f_4@@23))) (not (IsWandField_8108_1195 f_4@@23))) (<= (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_14604) (o_2@@24 T@Ref) (f_4@@24 T@Field_8157_17995) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8157_48328 f_4@@24))) (not (IsWandField_8157_53360 f_4@@24))) (<= (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_14604) (o_2@@25 T@Ref) (f_4@@25 T@Field_8157_17985) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8157_62518 f_4@@25))) (not (IsWandField_8157_62534 f_4@@25))) (<= (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_14604) (o_2@@26 T@Ref) (f_4@@26 T@Field_14656_14657) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8157_14657 f_4@@26))) (not (IsWandField_8157_14657 f_4@@26))) (<= (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_14604) (o_2@@27 T@Ref) (f_4@@27 T@Field_14643_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8157_53 f_4@@27))) (not (IsWandField_8157_53 f_4@@27))) (<= (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_14604) (o_2@@28 T@Ref) (f_4@@28 T@Field_19139_1773) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8157_1773 f_4@@28))) (not (IsWandField_8157_1773 f_4@@28))) (<= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_14604) (o_2@@29 T@Ref) (f_4@@29 T@Field_18468_18469) ) (! (= (HasDirectPerm_18439_17995 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18439_17995 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_14604) (o_2@@30 T@Ref) (f_4@@30 T@Field_18452_18457) ) (! (= (HasDirectPerm_18439_47855 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18439_47855 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_14604) (o_2@@31 T@Ref) (f_4@@31 T@Field_18439_14657) ) (! (= (HasDirectPerm_18439_14657 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18439_14657 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_14604) (o_2@@32 T@Ref) (f_4@@32 T@Field_18439_53) ) (! (= (HasDirectPerm_18439_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18439_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_14604) (o_2@@33 T@Ref) (f_4@@33 T@Field_18439_1415) ) (! (= (HasDirectPerm_18439_1773 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18439_1773 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_14604) (o_2@@34 T@Ref) (f_4@@34 T@Field_17994_17995) ) (! (= (HasDirectPerm_17969_17995 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17969_17995 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_14604) (o_2@@35 T@Ref) (f_4@@35 T@Field_17980_17985) ) (! (= (HasDirectPerm_17969_46721 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17969_46721 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_14604) (o_2@@36 T@Ref) (f_4@@36 T@Field_17969_14657) ) (! (= (HasDirectPerm_17969_14657 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17969_14657 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_14604) (o_2@@37 T@Ref) (f_4@@37 T@Field_17969_53) ) (! (= (HasDirectPerm_17969_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17969_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_14604) (o_2@@38 T@Ref) (f_4@@38 T@Field_17969_1195) ) (! (= (HasDirectPerm_17969_1773 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17969_1773 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_14604) (o_2@@39 T@Ref) (f_4@@39 T@Field_8157_17995) ) (! (= (HasDirectPerm_8157_17995 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8157_17995 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_14604) (o_2@@40 T@Ref) (f_4@@40 T@Field_8157_17985) ) (! (= (HasDirectPerm_8157_45543 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8157_45543 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_14604) (o_2@@41 T@Ref) (f_4@@41 T@Field_14656_14657) ) (! (= (HasDirectPerm_8157_14657 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8157_14657 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_14604) (o_2@@42 T@Ref) (f_4@@42 T@Field_14643_53) ) (! (= (HasDirectPerm_8157_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8157_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_14604) (o_2@@43 T@Ref) (f_4@@43 T@Field_19139_1773) ) (! (= (HasDirectPerm_8157_1773 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8157_1773 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_14583) (ExhaleHeap@@7 T@PolymorphicMapType_14583) (Mask@@38 T@PolymorphicMapType_14604) (o_1@@0 T@Ref) (f_2 T@Field_18468_18469) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_18439_17995 Mask@@38 o_1@@0 f_2) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@8) o_1@@0 f_2) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@7) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@7) o_1@@0 f_2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_14583) (ExhaleHeap@@8 T@PolymorphicMapType_14583) (Mask@@39 T@PolymorphicMapType_14604) (o_1@@1 T@Ref) (f_2@@0 T@Field_18452_18457) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_18439_47855 Mask@@39 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@9) o_1@@1 f_2@@0) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@8) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@8) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_14583) (ExhaleHeap@@9 T@PolymorphicMapType_14583) (Mask@@40 T@PolymorphicMapType_14604) (o_1@@2 T@Ref) (f_2@@1 T@Field_18439_14657) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_18439_14657 Mask@@40 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@10) o_1@@2 f_2@@1) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@9) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@9) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_14583) (ExhaleHeap@@10 T@PolymorphicMapType_14583) (Mask@@41 T@PolymorphicMapType_14604) (o_1@@3 T@Ref) (f_2@@2 T@Field_18439_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_18439_53 Mask@@41 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@11) o_1@@3 f_2@@2) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@10) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@10) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_14583) (ExhaleHeap@@11 T@PolymorphicMapType_14583) (Mask@@42 T@PolymorphicMapType_14604) (o_1@@4 T@Ref) (f_2@@3 T@Field_18439_1415) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_18439_1773 Mask@@42 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@12) o_1@@4 f_2@@3) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@11) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@11) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_14583) (ExhaleHeap@@12 T@PolymorphicMapType_14583) (Mask@@43 T@PolymorphicMapType_14604) (o_1@@5 T@Ref) (f_2@@4 T@Field_17994_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_17969_17995 Mask@@43 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@13) o_1@@5 f_2@@4) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@12) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@12) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_14583) (ExhaleHeap@@13 T@PolymorphicMapType_14583) (Mask@@44 T@PolymorphicMapType_14604) (o_1@@6 T@Ref) (f_2@@5 T@Field_17980_17985) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_17969_46721 Mask@@44 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@14) o_1@@6 f_2@@5) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@13) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@13) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_14583) (ExhaleHeap@@14 T@PolymorphicMapType_14583) (Mask@@45 T@PolymorphicMapType_14604) (o_1@@7 T@Ref) (f_2@@6 T@Field_17969_14657) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_17969_14657 Mask@@45 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@15) o_1@@7 f_2@@6) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@14) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@14) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_14583) (ExhaleHeap@@15 T@PolymorphicMapType_14583) (Mask@@46 T@PolymorphicMapType_14604) (o_1@@8 T@Ref) (f_2@@7 T@Field_17969_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_17969_53 Mask@@46 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@16) o_1@@8 f_2@@7) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@15) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@15) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_14583) (ExhaleHeap@@16 T@PolymorphicMapType_14583) (Mask@@47 T@PolymorphicMapType_14604) (o_1@@9 T@Ref) (f_2@@8 T@Field_17969_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_17969_1773 Mask@@47 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@17) o_1@@9 f_2@@8) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@16) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@16) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_14583) (ExhaleHeap@@17 T@PolymorphicMapType_14583) (Mask@@48 T@PolymorphicMapType_14604) (o_1@@10 T@Ref) (f_2@@9 T@Field_8157_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_8157_17995 Mask@@48 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@18) o_1@@10 f_2@@9) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@17) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@17) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_14583) (ExhaleHeap@@18 T@PolymorphicMapType_14583) (Mask@@49 T@PolymorphicMapType_14604) (o_1@@11 T@Ref) (f_2@@10 T@Field_8157_17985) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_8157_45543 Mask@@49 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@19) o_1@@11 f_2@@10) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@18) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@18) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_14583) (ExhaleHeap@@19 T@PolymorphicMapType_14583) (Mask@@50 T@PolymorphicMapType_14604) (o_1@@12 T@Ref) (f_2@@11 T@Field_14656_14657) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_8157_14657 Mask@@50 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@20) o_1@@12 f_2@@11) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@19) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@19) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_14583) (ExhaleHeap@@20 T@PolymorphicMapType_14583) (Mask@@51 T@PolymorphicMapType_14604) (o_1@@13 T@Ref) (f_2@@12 T@Field_14643_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_8157_53 Mask@@51 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@21) o_1@@13 f_2@@12) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@20) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@20) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_14583) (ExhaleHeap@@21 T@PolymorphicMapType_14583) (Mask@@52 T@PolymorphicMapType_14604) (o_1@@14 T@Ref) (f_2@@13 T@Field_19139_1773) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_8157_1773 Mask@@52 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@22) o_1@@14 f_2@@13) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@21) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@21) o_1@@14 f_2@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_18468_18469) ) (! (= (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_18452_18457) ) (! (= (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_18439_14657) ) (! (= (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_18439_53) ) (! (= (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_18439_1415) ) (! (= (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_17994_17995) ) (! (= (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_17980_17985) ) (! (= (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_17969_14657) ) (! (= (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_17969_53) ) (! (= (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_17969_1195) ) (! (= (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_8157_17995) ) (! (= (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_8157_17985) ) (! (= (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_14656_14657) ) (! (= (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_14643_53) ) (! (= (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_19139_1773) ) (! (= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_14604) (SummandMask1 T@PolymorphicMapType_14604) (SummandMask2 T@PolymorphicMapType_14604) (o_2@@59 T@Ref) (f_4@@59 T@Field_18468_18469) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_14604) (SummandMask1@@0 T@PolymorphicMapType_14604) (SummandMask2@@0 T@PolymorphicMapType_14604) (o_2@@60 T@Ref) (f_4@@60 T@Field_18452_18457) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_14604) (SummandMask1@@1 T@PolymorphicMapType_14604) (SummandMask2@@1 T@PolymorphicMapType_14604) (o_2@@61 T@Ref) (f_4@@61 T@Field_18439_14657) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_14604) (SummandMask1@@2 T@PolymorphicMapType_14604) (SummandMask2@@2 T@PolymorphicMapType_14604) (o_2@@62 T@Ref) (f_4@@62 T@Field_18439_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_14604) (SummandMask1@@3 T@PolymorphicMapType_14604) (SummandMask2@@3 T@PolymorphicMapType_14604) (o_2@@63 T@Ref) (f_4@@63 T@Field_18439_1415) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_14604) (SummandMask1@@4 T@PolymorphicMapType_14604) (SummandMask2@@4 T@PolymorphicMapType_14604) (o_2@@64 T@Ref) (f_4@@64 T@Field_17994_17995) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_14604) (SummandMask1@@5 T@PolymorphicMapType_14604) (SummandMask2@@5 T@PolymorphicMapType_14604) (o_2@@65 T@Ref) (f_4@@65 T@Field_17980_17985) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_14604) (SummandMask1@@6 T@PolymorphicMapType_14604) (SummandMask2@@6 T@PolymorphicMapType_14604) (o_2@@66 T@Ref) (f_4@@66 T@Field_17969_14657) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_14604) (SummandMask1@@7 T@PolymorphicMapType_14604) (SummandMask2@@7 T@PolymorphicMapType_14604) (o_2@@67 T@Ref) (f_4@@67 T@Field_17969_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_14604) (SummandMask1@@8 T@PolymorphicMapType_14604) (SummandMask2@@8 T@PolymorphicMapType_14604) (o_2@@68 T@Ref) (f_4@@68 T@Field_17969_1195) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_14604) (SummandMask1@@9 T@PolymorphicMapType_14604) (SummandMask2@@9 T@PolymorphicMapType_14604) (o_2@@69 T@Ref) (f_4@@69 T@Field_8157_17995) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_14604) (SummandMask1@@10 T@PolymorphicMapType_14604) (SummandMask2@@10 T@PolymorphicMapType_14604) (o_2@@70 T@Ref) (f_4@@70 T@Field_8157_17985) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_14604) (SummandMask1@@11 T@PolymorphicMapType_14604) (SummandMask2@@11 T@PolymorphicMapType_14604) (o_2@@71 T@Ref) (f_4@@71 T@Field_14656_14657) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_14604) (SummandMask1@@12 T@PolymorphicMapType_14604) (SummandMask2@@12 T@PolymorphicMapType_14604) (o_2@@72 T@Ref) (f_4@@72 T@Field_14643_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_14604) (SummandMask1@@13 T@PolymorphicMapType_14604) (SummandMask2@@13 T@PolymorphicMapType_14604) (o_2@@73 T@Ref) (f_4@@73 T@Field_19139_1773) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_14583) (ExhaleHeap@@22 T@PolymorphicMapType_14583) (Mask@@53 T@PolymorphicMapType_14604) (pm_f@@5 T@Field_18468_18469) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_18439_17995 Mask@@53 null pm_f@@5) (IsPredicateField_8130_8131 pm_f@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@14 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2 f_2@@14) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@23) o2 f_2@@14) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2 f_2@@14))
)) (forall ((o2@@0 T@Ref) (f_2@@15 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@0 f_2@@15) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@23) o2@@0 f_2@@15) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@0 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@0 f_2@@15))
))) (forall ((o2@@1 T@Ref) (f_2@@16 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@1 f_2@@16) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@23) o2@@1 f_2@@16) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@1 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@1 f_2@@16))
))) (forall ((o2@@2 T@Ref) (f_2@@17 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@2 f_2@@17) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@23) o2@@2 f_2@@17) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@2 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@2 f_2@@17))
))) (forall ((o2@@3 T@Ref) (f_2@@18 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@3 f_2@@18) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@23) o2@@3 f_2@@18) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@3 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@3 f_2@@18))
))) (forall ((o2@@4 T@Ref) (f_2@@19 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@4 f_2@@19) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@23) o2@@4 f_2@@19) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@4 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@4 f_2@@19))
))) (forall ((o2@@5 T@Ref) (f_2@@20 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@5 f_2@@20) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@23) o2@@5 f_2@@20) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@5 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@5 f_2@@20))
))) (forall ((o2@@6 T@Ref) (f_2@@21 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@6 f_2@@21) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@23) o2@@6 f_2@@21) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@6 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@6 f_2@@21))
))) (forall ((o2@@7 T@Ref) (f_2@@22 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@7 f_2@@22) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@23) o2@@7 f_2@@22) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@7 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@7 f_2@@22))
))) (forall ((o2@@8 T@Ref) (f_2@@23 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@8 f_2@@23) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@23) o2@@8 f_2@@23) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@8 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@8 f_2@@23))
))) (forall ((o2@@9 T@Ref) (f_2@@24 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@9 f_2@@24) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@23) o2@@9 f_2@@24) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@9 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@9 f_2@@24))
))) (forall ((o2@@10 T@Ref) (f_2@@25 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@10 f_2@@25) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@23) o2@@10 f_2@@25) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@10 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@10 f_2@@25))
))) (forall ((o2@@11 T@Ref) (f_2@@26 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@11 f_2@@26) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@23) o2@@11 f_2@@26) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@11 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@11 f_2@@26))
))) (forall ((o2@@12 T@Ref) (f_2@@27 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@12 f_2@@27) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) o2@@12 f_2@@27) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@12 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@12 f_2@@27))
))) (forall ((o2@@13 T@Ref) (f_2@@28 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@13 f_2@@28) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@23) o2@@13 f_2@@28) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@13 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@13 f_2@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (IsPredicateField_8130_8131 pm_f@@5))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_14583) (ExhaleHeap@@23 T@PolymorphicMapType_14583) (Mask@@54 T@PolymorphicMapType_14604) (pm_f@@6 T@Field_17994_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_17969_17995 Mask@@54 null pm_f@@6) (IsPredicateField_8113_8114 pm_f@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@14 T@Ref) (f_2@@29 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@14 f_2@@29) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@24) o2@@14 f_2@@29) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@14 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@14 f_2@@29))
)) (forall ((o2@@15 T@Ref) (f_2@@30 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@15 f_2@@30) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@24) o2@@15 f_2@@30) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@15 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@15 f_2@@30))
))) (forall ((o2@@16 T@Ref) (f_2@@31 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@16 f_2@@31) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@24) o2@@16 f_2@@31) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@16 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@16 f_2@@31))
))) (forall ((o2@@17 T@Ref) (f_2@@32 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@17 f_2@@32) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@24) o2@@17 f_2@@32) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@17 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@17 f_2@@32))
))) (forall ((o2@@18 T@Ref) (f_2@@33 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@18 f_2@@33) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@24) o2@@18 f_2@@33) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@18 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@18 f_2@@33))
))) (forall ((o2@@19 T@Ref) (f_2@@34 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@19 f_2@@34) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@24) o2@@19 f_2@@34) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@19 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@19 f_2@@34))
))) (forall ((o2@@20 T@Ref) (f_2@@35 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@20 f_2@@35) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@24) o2@@20 f_2@@35) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@20 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@20 f_2@@35))
))) (forall ((o2@@21 T@Ref) (f_2@@36 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@21 f_2@@36) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@24) o2@@21 f_2@@36) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@21 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@21 f_2@@36))
))) (forall ((o2@@22 T@Ref) (f_2@@37 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@22 f_2@@37) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) o2@@22 f_2@@37) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@22 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@22 f_2@@37))
))) (forall ((o2@@23 T@Ref) (f_2@@38 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@23 f_2@@38) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@24) o2@@23 f_2@@38) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@23 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@23 f_2@@38))
))) (forall ((o2@@24 T@Ref) (f_2@@39 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@24 f_2@@39) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@24) o2@@24 f_2@@39) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@24 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@24 f_2@@39))
))) (forall ((o2@@25 T@Ref) (f_2@@40 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@25 f_2@@40) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@24) o2@@25 f_2@@40) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@25 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@25 f_2@@40))
))) (forall ((o2@@26 T@Ref) (f_2@@41 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@26 f_2@@41) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@24) o2@@26 f_2@@41) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@26 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@26 f_2@@41))
))) (forall ((o2@@27 T@Ref) (f_2@@42 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@27 f_2@@42) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@24) o2@@27 f_2@@42) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@27 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@27 f_2@@42))
))) (forall ((o2@@28 T@Ref) (f_2@@43 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@28 f_2@@43) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@24) o2@@28 f_2@@43) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@28 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@28 f_2@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (IsPredicateField_8113_8114 pm_f@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_14583) (ExhaleHeap@@24 T@PolymorphicMapType_14583) (Mask@@55 T@PolymorphicMapType_14604) (pm_f@@7 T@Field_8157_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_8157_17995 Mask@@55 null pm_f@@7) (IsPredicateField_8157_48328 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@44 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@29 f_2@@44) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@25) o2@@29 f_2@@44) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@29 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@29 f_2@@44))
)) (forall ((o2@@30 T@Ref) (f_2@@45 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@30 f_2@@45) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@25) o2@@30 f_2@@45) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@30 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@30 f_2@@45))
))) (forall ((o2@@31 T@Ref) (f_2@@46 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@31 f_2@@46) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@25) o2@@31 f_2@@46) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@31 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@31 f_2@@46))
))) (forall ((o2@@32 T@Ref) (f_2@@47 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@32 f_2@@47) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) o2@@32 f_2@@47) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@32 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@32 f_2@@47))
))) (forall ((o2@@33 T@Ref) (f_2@@48 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@33 f_2@@48) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@25) o2@@33 f_2@@48) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@33 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@33 f_2@@48))
))) (forall ((o2@@34 T@Ref) (f_2@@49 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@34 f_2@@49) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@25) o2@@34 f_2@@49) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@34 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@34 f_2@@49))
))) (forall ((o2@@35 T@Ref) (f_2@@50 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@35 f_2@@50) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@25) o2@@35 f_2@@50) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@35 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@35 f_2@@50))
))) (forall ((o2@@36 T@Ref) (f_2@@51 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@36 f_2@@51) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@25) o2@@36 f_2@@51) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@36 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@36 f_2@@51))
))) (forall ((o2@@37 T@Ref) (f_2@@52 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@37 f_2@@52) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@25) o2@@37 f_2@@52) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@37 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@37 f_2@@52))
))) (forall ((o2@@38 T@Ref) (f_2@@53 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@38 f_2@@53) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@25) o2@@38 f_2@@53) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@38 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@38 f_2@@53))
))) (forall ((o2@@39 T@Ref) (f_2@@54 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@39 f_2@@54) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@25) o2@@39 f_2@@54) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@39 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@39 f_2@@54))
))) (forall ((o2@@40 T@Ref) (f_2@@55 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@40 f_2@@55) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@25) o2@@40 f_2@@55) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@40 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@40 f_2@@55))
))) (forall ((o2@@41 T@Ref) (f_2@@56 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@41 f_2@@56) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@25) o2@@41 f_2@@56) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@41 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@41 f_2@@56))
))) (forall ((o2@@42 T@Ref) (f_2@@57 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@42 f_2@@57) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@25) o2@@42 f_2@@57) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@42 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@42 f_2@@57))
))) (forall ((o2@@43 T@Ref) (f_2@@58 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@43 f_2@@58) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@25) o2@@43 f_2@@58) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@43 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@43 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (IsPredicateField_8157_48328 pm_f@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_14583) (ExhaleHeap@@25 T@PolymorphicMapType_14583) (Mask@@56 T@PolymorphicMapType_14604) (pm_f@@8 T@Field_18468_18469) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_18439_17995 Mask@@56 null pm_f@@8) (IsWandField_8130_8131 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@44 T@Ref) (f_2@@59 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@44 f_2@@59) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@26) o2@@44 f_2@@59) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@44 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@44 f_2@@59))
)) (forall ((o2@@45 T@Ref) (f_2@@60 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@45 f_2@@60) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@26) o2@@45 f_2@@60) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@45 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@45 f_2@@60))
))) (forall ((o2@@46 T@Ref) (f_2@@61 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@46 f_2@@61) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@26) o2@@46 f_2@@61) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@46 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@46 f_2@@61))
))) (forall ((o2@@47 T@Ref) (f_2@@62 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@47 f_2@@62) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@26) o2@@47 f_2@@62) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@47 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@47 f_2@@62))
))) (forall ((o2@@48 T@Ref) (f_2@@63 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@48 f_2@@63) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@26) o2@@48 f_2@@63) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@48 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@48 f_2@@63))
))) (forall ((o2@@49 T@Ref) (f_2@@64 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@49 f_2@@64) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@26) o2@@49 f_2@@64) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@49 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@49 f_2@@64))
))) (forall ((o2@@50 T@Ref) (f_2@@65 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@50 f_2@@65) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@26) o2@@50 f_2@@65) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@50 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@50 f_2@@65))
))) (forall ((o2@@51 T@Ref) (f_2@@66 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@51 f_2@@66) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@26) o2@@51 f_2@@66) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@51 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@51 f_2@@66))
))) (forall ((o2@@52 T@Ref) (f_2@@67 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@52 f_2@@67) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@26) o2@@52 f_2@@67) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@52 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@52 f_2@@67))
))) (forall ((o2@@53 T@Ref) (f_2@@68 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@53 f_2@@68) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@26) o2@@53 f_2@@68) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@53 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@53 f_2@@68))
))) (forall ((o2@@54 T@Ref) (f_2@@69 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@54 f_2@@69) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@26) o2@@54 f_2@@69) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@54 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@54 f_2@@69))
))) (forall ((o2@@55 T@Ref) (f_2@@70 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@55 f_2@@70) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@26) o2@@55 f_2@@70) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@55 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@55 f_2@@70))
))) (forall ((o2@@56 T@Ref) (f_2@@71 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@56 f_2@@71) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@26) o2@@56 f_2@@71) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@56 f_2@@71)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@56 f_2@@71))
))) (forall ((o2@@57 T@Ref) (f_2@@72 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@57 f_2@@72) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) o2@@57 f_2@@72) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@57 f_2@@72)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@57 f_2@@72))
))) (forall ((o2@@58 T@Ref) (f_2@@73 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@58 f_2@@73) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@26) o2@@58 f_2@@73) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@58 f_2@@73)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@58 f_2@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (IsWandField_8130_8131 pm_f@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_14583) (ExhaleHeap@@26 T@PolymorphicMapType_14583) (Mask@@57 T@PolymorphicMapType_14604) (pm_f@@9 T@Field_17994_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_17969_17995 Mask@@57 null pm_f@@9) (IsWandField_8113_8114 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@74 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@59 f_2@@74) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@27) o2@@59 f_2@@74) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@59 f_2@@74)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@59 f_2@@74))
)) (forall ((o2@@60 T@Ref) (f_2@@75 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@60 f_2@@75) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@27) o2@@60 f_2@@75) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@60 f_2@@75)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@60 f_2@@75))
))) (forall ((o2@@61 T@Ref) (f_2@@76 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@61 f_2@@76) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@27) o2@@61 f_2@@76) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@61 f_2@@76)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@61 f_2@@76))
))) (forall ((o2@@62 T@Ref) (f_2@@77 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@62 f_2@@77) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@27) o2@@62 f_2@@77) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@62 f_2@@77)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@62 f_2@@77))
))) (forall ((o2@@63 T@Ref) (f_2@@78 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@63 f_2@@78) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@27) o2@@63 f_2@@78) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@63 f_2@@78)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@63 f_2@@78))
))) (forall ((o2@@64 T@Ref) (f_2@@79 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@64 f_2@@79) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@27) o2@@64 f_2@@79) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@64 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@64 f_2@@79))
))) (forall ((o2@@65 T@Ref) (f_2@@80 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@65 f_2@@80) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@27) o2@@65 f_2@@80) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@65 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@65 f_2@@80))
))) (forall ((o2@@66 T@Ref) (f_2@@81 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@66 f_2@@81) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@27) o2@@66 f_2@@81) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@66 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@66 f_2@@81))
))) (forall ((o2@@67 T@Ref) (f_2@@82 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@67 f_2@@82) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) o2@@67 f_2@@82) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@67 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@67 f_2@@82))
))) (forall ((o2@@68 T@Ref) (f_2@@83 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@68 f_2@@83) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@27) o2@@68 f_2@@83) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@68 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@68 f_2@@83))
))) (forall ((o2@@69 T@Ref) (f_2@@84 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@69 f_2@@84) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@27) o2@@69 f_2@@84) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@69 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@69 f_2@@84))
))) (forall ((o2@@70 T@Ref) (f_2@@85 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@70 f_2@@85) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@27) o2@@70 f_2@@85) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@70 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@70 f_2@@85))
))) (forall ((o2@@71 T@Ref) (f_2@@86 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@71 f_2@@86) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@27) o2@@71 f_2@@86) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@71 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@71 f_2@@86))
))) (forall ((o2@@72 T@Ref) (f_2@@87 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@72 f_2@@87) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@27) o2@@72 f_2@@87) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@72 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@72 f_2@@87))
))) (forall ((o2@@73 T@Ref) (f_2@@88 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@73 f_2@@88) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@27) o2@@73 f_2@@88) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@73 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@73 f_2@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (IsWandField_8113_8114 pm_f@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_14583) (ExhaleHeap@@27 T@PolymorphicMapType_14583) (Mask@@58 T@PolymorphicMapType_14604) (pm_f@@10 T@Field_8157_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_8157_17995 Mask@@58 null pm_f@@10) (IsWandField_8157_53360 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@89 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@74 f_2@@89) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@28) o2@@74 f_2@@89) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@74 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@74 f_2@@89))
)) (forall ((o2@@75 T@Ref) (f_2@@90 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@75 f_2@@90) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@28) o2@@75 f_2@@90) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@75 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@75 f_2@@90))
))) (forall ((o2@@76 T@Ref) (f_2@@91 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@76 f_2@@91) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@28) o2@@76 f_2@@91) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@76 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@76 f_2@@91))
))) (forall ((o2@@77 T@Ref) (f_2@@92 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@77 f_2@@92) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) o2@@77 f_2@@92) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@77 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@77 f_2@@92))
))) (forall ((o2@@78 T@Ref) (f_2@@93 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@78 f_2@@93) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@28) o2@@78 f_2@@93) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@78 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@78 f_2@@93))
))) (forall ((o2@@79 T@Ref) (f_2@@94 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@79 f_2@@94) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@28) o2@@79 f_2@@94) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@79 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@79 f_2@@94))
))) (forall ((o2@@80 T@Ref) (f_2@@95 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@80 f_2@@95) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@28) o2@@80 f_2@@95) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@80 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@80 f_2@@95))
))) (forall ((o2@@81 T@Ref) (f_2@@96 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@81 f_2@@96) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@28) o2@@81 f_2@@96) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@81 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@81 f_2@@96))
))) (forall ((o2@@82 T@Ref) (f_2@@97 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@82 f_2@@97) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@28) o2@@82 f_2@@97) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@82 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@82 f_2@@97))
))) (forall ((o2@@83 T@Ref) (f_2@@98 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@83 f_2@@98) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@28) o2@@83 f_2@@98) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@83 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@83 f_2@@98))
))) (forall ((o2@@84 T@Ref) (f_2@@99 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@84 f_2@@99) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@28) o2@@84 f_2@@99) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@84 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@84 f_2@@99))
))) (forall ((o2@@85 T@Ref) (f_2@@100 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@85 f_2@@100) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@28) o2@@85 f_2@@100) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@85 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@85 f_2@@100))
))) (forall ((o2@@86 T@Ref) (f_2@@101 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@86 f_2@@101) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@28) o2@@86 f_2@@101) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@86 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@86 f_2@@101))
))) (forall ((o2@@87 T@Ref) (f_2@@102 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@87 f_2@@102) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@28) o2@@87 f_2@@102) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@87 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@87 f_2@@102))
))) (forall ((o2@@88 T@Ref) (f_2@@103 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@88 f_2@@103) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@28) o2@@88 f_2@@103) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@88 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@88 f_2@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (IsWandField_8157_53360 pm_f@@10))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@5 T@Ref) (arg4@@5 Int) (arg5@@5 Bool) ) (! (= (|wand_1#sm| arg1@@9 arg2@@9 arg3@@5 arg4@@5 arg5@@5) (WandMaskField_8130 (|wand_1#ft| arg1@@9 arg2@@9 arg3@@5 arg4@@5 arg5@@5)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_8130 (|wand_1#ft| arg1@@9 arg2@@9 arg3@@5 arg4@@5 arg5@@5)))
)))
(assert (forall ((arg1@@10 Bool) (arg2@@10 Bool) (arg1_2@@0 Bool) (arg2_2@@0 Bool) ) (!  (=> (= (wand arg1@@10 arg2@@10) (wand arg1_2@@0 arg2_2@@0)) (and (= arg1@@10 arg1_2@@0) (= arg2@@10 arg2_2@@0)))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@10 arg2@@10) (wand arg1_2@@0 arg2_2@@0))
)))
(assert (forall ((arg1@@11 Bool) (arg2@@11 Bool) ) (! (= (getPredWandId_8108_1195 (wand arg1@@11 arg2@@11)) 0)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@11 arg2@@11))
)))
(assert (forall ((arg1@@12 Bool) (arg2@@12 Bool) ) (! (= (|wand#sm| arg1@@12 arg2@@12) (WandMaskField_8113 (|wand#ft| arg1@@12 arg2@@12)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_8113 (|wand#ft| arg1@@12 arg2@@12)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_14583) (o T@Ref) (f_3 T@Field_18468_18469) (v T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@29) (store (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@29) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@29) (store (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@29) o f_3 v)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_14583) (o@@0 T@Ref) (f_3@@0 T@Field_18452_18457) (v@@0 T@PolymorphicMapType_15132) ) (! (succHeap Heap@@30 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@30) (store (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@30) (store (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_14583) (o@@1 T@Ref) (f_3@@1 T@Field_18439_1415) (v@@1 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@31) (store (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@31) (store (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_14583) (o@@2 T@Ref) (f_3@@2 T@Field_18439_14657) (v@@2 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@32) (store (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@32) (store (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_14583) (o@@3 T@Ref) (f_3@@3 T@Field_18439_53) (v@@3 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@33) (store (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@33) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@33) (store (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@33) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_14583) (o@@4 T@Ref) (f_3@@4 T@Field_17994_17995) (v@@4 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@34) (store (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@34) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@34) (store (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@34) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_14583) (o@@5 T@Ref) (f_3@@5 T@Field_17980_17985) (v@@5 T@PolymorphicMapType_15132) ) (! (succHeap Heap@@35 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@35) (store (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@35) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@35) (store (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@35) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_14583) (o@@6 T@Ref) (f_3@@6 T@Field_17969_1195) (v@@6 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@36) (store (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@36) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@36) (store (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@36) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_14583) (o@@7 T@Ref) (f_3@@7 T@Field_17969_14657) (v@@7 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@37) (store (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@37) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@37) (store (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@37) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_14583) (o@@8 T@Ref) (f_3@@8 T@Field_17969_53) (v@@8 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@38) (store (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@38) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@38) (store (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@38) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_14583) (o@@9 T@Ref) (f_3@@9 T@Field_8157_17995) (v@@9 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@39) (store (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@39) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@39) (store (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@39) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_14583) (o@@10 T@Ref) (f_3@@10 T@Field_8157_17985) (v@@10 T@PolymorphicMapType_15132) ) (! (succHeap Heap@@40 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@40) (store (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@40) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@40) (store (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@40) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_14583) (o@@11 T@Ref) (f_3@@11 T@Field_19139_1773) (v@@11 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@41) (store (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@41) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@41) (store (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@41) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_14583) (o@@12 T@Ref) (f_3@@12 T@Field_14656_14657) (v@@12 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@42) (store (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@42) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@42) (store (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@42) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_14583) (o@@13 T@Ref) (f_3@@13 T@Field_14643_53) (v@@13 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_14583 (store (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@43) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (store (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@43) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@43)))
)))
(assert (forall ((o@@14 T@Ref) (f T@Field_14656_14657) (Heap@@44 T@PolymorphicMapType_14583) ) (!  (=> (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@44) o@@14 $allocated) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@44) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@44) o@@14 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@44) o@@14 f))
)))
(assert (forall ((p@@3 T@Field_18468_18469) (v_1@@2 T@FrameType) (q T@Field_18468_18469) (w@@2 T@FrameType) (r T@Field_18468_18469) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18439_18439 p@@3 v_1@@2 q w@@2) (InsidePredicate_18439_18439 q w@@2 r u)) (InsidePredicate_18439_18439 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_18439 p@@3 v_1@@2 q w@@2) (InsidePredicate_18439_18439 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_18468_18469) (v_1@@3 T@FrameType) (q@@0 T@Field_18468_18469) (w@@3 T@FrameType) (r@@0 T@Field_17994_17995) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_18439 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_18439_17969 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_18439_17969 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_18439 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_18439_17969 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_18468_18469) (v_1@@4 T@FrameType) (q@@1 T@Field_18468_18469) (w@@4 T@FrameType) (r@@1 T@Field_8157_17995) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_18439 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_18439_14643 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_18439_14643 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_18439 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_18439_14643 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_18468_18469) (v_1@@5 T@FrameType) (q@@2 T@Field_17994_17995) (w@@5 T@FrameType) (r@@2 T@Field_18468_18469) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_17969 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_17969_18439 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_18439_18439 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_17969 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_17969_18439 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_18468_18469) (v_1@@6 T@FrameType) (q@@3 T@Field_17994_17995) (w@@6 T@FrameType) (r@@3 T@Field_17994_17995) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_17969 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_17969_17969 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_18439_17969 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_17969 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_17969_17969 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_18468_18469) (v_1@@7 T@FrameType) (q@@4 T@Field_17994_17995) (w@@7 T@FrameType) (r@@4 T@Field_8157_17995) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_17969 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_17969_14643 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_18439_14643 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_17969 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_17969_14643 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_18468_18469) (v_1@@8 T@FrameType) (q@@5 T@Field_8157_17995) (w@@8 T@FrameType) (r@@5 T@Field_18468_18469) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_14643 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_14643_18439 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_18439_18439 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_14643 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_14643_18439 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_18468_18469) (v_1@@9 T@FrameType) (q@@6 T@Field_8157_17995) (w@@9 T@FrameType) (r@@6 T@Field_17994_17995) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_14643 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_14643_17969 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_18439_17969 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_14643 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_14643_17969 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_18468_18469) (v_1@@10 T@FrameType) (q@@7 T@Field_8157_17995) (w@@10 T@FrameType) (r@@7 T@Field_8157_17995) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_14643 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_14643_14643 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_18439_14643 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_14643 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_14643_14643 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_17994_17995) (v_1@@11 T@FrameType) (q@@8 T@Field_18468_18469) (w@@11 T@FrameType) (r@@8 T@Field_18468_18469) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_18439 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_18439_18439 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_17969_18439 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_18439 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_18439_18439 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_17994_17995) (v_1@@12 T@FrameType) (q@@9 T@Field_18468_18469) (w@@12 T@FrameType) (r@@9 T@Field_17994_17995) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_18439 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_18439_17969 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_17969_17969 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_18439 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_18439_17969 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_17994_17995) (v_1@@13 T@FrameType) (q@@10 T@Field_18468_18469) (w@@13 T@FrameType) (r@@10 T@Field_8157_17995) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_18439 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_18439_14643 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_17969_14643 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_18439 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_18439_14643 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_17994_17995) (v_1@@14 T@FrameType) (q@@11 T@Field_17994_17995) (w@@14 T@FrameType) (r@@11 T@Field_18468_18469) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_17969 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_17969_18439 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_17969_18439 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_17969 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_17969_18439 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_17994_17995) (v_1@@15 T@FrameType) (q@@12 T@Field_17994_17995) (w@@15 T@FrameType) (r@@12 T@Field_17994_17995) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_17969 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_17969_17969 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_17969_17969 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_17969 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_17969_17969 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_17994_17995) (v_1@@16 T@FrameType) (q@@13 T@Field_17994_17995) (w@@16 T@FrameType) (r@@13 T@Field_8157_17995) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_17969 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_17969_14643 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_17969_14643 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_17969 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_17969_14643 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_17994_17995) (v_1@@17 T@FrameType) (q@@14 T@Field_8157_17995) (w@@17 T@FrameType) (r@@14 T@Field_18468_18469) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_14643 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_14643_18439 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_17969_18439 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_14643 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_14643_18439 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_17994_17995) (v_1@@18 T@FrameType) (q@@15 T@Field_8157_17995) (w@@18 T@FrameType) (r@@15 T@Field_17994_17995) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_14643 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_14643_17969 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_17969_17969 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_14643 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_14643_17969 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_17994_17995) (v_1@@19 T@FrameType) (q@@16 T@Field_8157_17995) (w@@19 T@FrameType) (r@@16 T@Field_8157_17995) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_14643 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_14643_14643 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_17969_14643 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_14643 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_14643_14643 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_8157_17995) (v_1@@20 T@FrameType) (q@@17 T@Field_18468_18469) (w@@20 T@FrameType) (r@@17 T@Field_18468_18469) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_18439 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_18439_18439 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_14643_18439 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_18439 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_18439_18439 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_8157_17995) (v_1@@21 T@FrameType) (q@@18 T@Field_18468_18469) (w@@21 T@FrameType) (r@@18 T@Field_17994_17995) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_18439 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_18439_17969 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_14643_17969 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_18439 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_18439_17969 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_8157_17995) (v_1@@22 T@FrameType) (q@@19 T@Field_18468_18469) (w@@22 T@FrameType) (r@@19 T@Field_8157_17995) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_18439 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_18439_14643 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_14643_14643 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_18439 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_18439_14643 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_8157_17995) (v_1@@23 T@FrameType) (q@@20 T@Field_17994_17995) (w@@23 T@FrameType) (r@@20 T@Field_18468_18469) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_17969 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_17969_18439 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_14643_18439 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_17969 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_17969_18439 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_8157_17995) (v_1@@24 T@FrameType) (q@@21 T@Field_17994_17995) (w@@24 T@FrameType) (r@@21 T@Field_17994_17995) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_17969 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_17969_17969 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_14643_17969 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_17969 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_17969_17969 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_8157_17995) (v_1@@25 T@FrameType) (q@@22 T@Field_17994_17995) (w@@25 T@FrameType) (r@@22 T@Field_8157_17995) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_17969 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_17969_14643 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_14643_14643 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_17969 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_17969_14643 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_8157_17995) (v_1@@26 T@FrameType) (q@@23 T@Field_8157_17995) (w@@26 T@FrameType) (r@@23 T@Field_18468_18469) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_14643 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_14643_18439 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_14643_18439 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_14643 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_14643_18439 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_8157_17995) (v_1@@27 T@FrameType) (q@@24 T@Field_8157_17995) (w@@27 T@FrameType) (r@@24 T@Field_17994_17995) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_14643 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_14643_17969 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_14643_17969 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_14643 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_14643_17969 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_8157_17995) (v_1@@28 T@FrameType) (q@@25 T@Field_8157_17995) (w@@28 T@FrameType) (r@@25 T@Field_8157_17995) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_14643 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_14643_14643 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_14643_14643 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_14643 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_14643_14643 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_12@13 () Bool)
(declare-fun neededTransfer@5 () Real)
(declare-fun Ops_5Mask@6 () T@PolymorphicMapType_14604)
(declare-fun x () T@Ref)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_15@0 () Bool)
(declare-fun b_13@6 () Bool)
(declare-fun b_15@1 () Bool)
(declare-fun Result_3Heap () T@PolymorphicMapType_14583)
(declare-fun Result_3Mask () T@PolymorphicMapType_14604)
(declare-fun b_15@2 () Bool)
(declare-fun Used_8Mask@5 () T@PolymorphicMapType_14604)
(declare-fun b_15@3 () Bool)
(declare-fun Ops_5Heap@0 () T@PolymorphicMapType_14583)
(declare-fun Used_8Heap@2 () T@PolymorphicMapType_14583)
(declare-fun b_15@4 () Bool)
(declare-fun b_12@14 () Bool)
(declare-fun b_12@15 () Bool)
(declare-fun b_12@16 () Bool)
(declare-fun b_12@17 () Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_14604)
(declare-fun Mask@2 () T@PolymorphicMapType_14604)
(declare-fun Heap@2 () T@PolymorphicMapType_14583)
(declare-fun Heap@1 () T@PolymorphicMapType_14583)
(declare-fun takeTransfer@2 () Real)
(declare-fun Used_8Mask@3 () T@PolymorphicMapType_14604)
(declare-fun b_12@10 () Bool)
(declare-fun Used_8Heap@0 () T@PolymorphicMapType_14583)
(declare-fun Ops_5Mask@4 () T@PolymorphicMapType_14604)
(declare-fun neededTransfer@4 () Real)
(declare-fun Ops_5Mask@5 () T@PolymorphicMapType_14604)
(declare-fun b_12@11 () Bool)
(declare-fun b_12@12 () Bool)
(declare-fun Used_8Mask@4 () T@PolymorphicMapType_14604)
(declare-fun Used_8Heap@1 () T@PolymorphicMapType_14583)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_12@7 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_14@0 () Bool)
(declare-fun b_14@1 () Bool)
(declare-fun Result_2Heap () T@PolymorphicMapType_14583)
(declare-fun Result_2Mask () T@PolymorphicMapType_14604)
(declare-fun b_14@2 () Bool)
(declare-fun b_14@3 () Bool)
(declare-fun b_14@4 () Bool)
(declare-fun b_12@8 () Bool)
(declare-fun b_12@9 () Bool)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_14604)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_13@3 () Bool)
(declare-fun Used_8Mask@1 () T@PolymorphicMapType_14604)
(declare-fun Heap@@45 () T@PolymorphicMapType_14583)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_8Mask@2 () T@PolymorphicMapType_14604)
(declare-fun b_13@4 () Bool)
(declare-fun b_13@5 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_14604)
(declare-fun Heap@0 () T@PolymorphicMapType_14583)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_5Mask@2 () T@PolymorphicMapType_14604)
(declare-fun b_13@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_8Mask@0 () T@PolymorphicMapType_14604)
(declare-fun b_13@1 () Bool)
(declare-fun b_13@2 () Bool)
(declare-fun Ops_5Mask@3 () T@PolymorphicMapType_14604)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_13 () Bool)
(declare-fun b_12@6 () Bool)
(declare-fun b_12@5 () Bool)
(declare-fun b_12@4 () Bool)
(declare-fun b_12@3 () Bool)
(declare-fun Ops_5Mask@1 () T@PolymorphicMapType_14604)
(declare-fun b_12@0 () Bool)
(declare-fun perm@0 () Real)
(declare-fun b_12@1 () Bool)
(declare-fun Ops_5Mask@0 () T@PolymorphicMapType_14604)
(declare-fun b_12@2 () Bool)
(declare-fun b_12 () Bool)
(declare-fun b_11@0 () Bool)
(declare-fun b_11 () Bool)
(declare-fun Used_7Heap@0 () T@PolymorphicMapType_14583)
(set-info :boogie-vc-id test2)
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
 (=> (= (ControlFlow 0 0) 43) (let ((anon27_correct true))
(let ((anon26_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> (and b_12@13 b_12@13) (and (= neededTransfer@5 0.0) (= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Ops_5Mask@6) x f_7) initNeededTransfer@1)))) (=> (=> (and b_12@13 b_12@13) (and (= neededTransfer@5 0.0) (= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Ops_5Mask@6) x f_7) initNeededTransfer@1))) (=> (and (= b_15@0  (and b_12@13 b_13@6)) (= b_15@1  (and b_15@0 (state Result_3Heap Result_3Mask)))) (=> (and (and (= b_15@2  (and b_15@1 (sumMask Result_3Mask Ops_5Mask@6 Used_8Mask@5))) (= b_15@3  (and (and b_15@2 (IdenticalOnKnownLocations Ops_5Heap@0 Result_3Heap Ops_5Mask@6)) (IdenticalOnKnownLocations Used_8Heap@2 Result_3Heap Used_8Mask@5)))) (and (= b_15@4  (and b_15@3 (state Result_3Heap Result_3Mask))) (= b_12@14  (and b_12@13 b_15@4)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> (and b_12@14 b_13@6) false)) (=> (=> (and b_12@14 b_13@6) false) (=> (and (= b_12@15  (and b_12@14 b_13@6)) (= b_12@16  (and b_12@15 (= Used_8Heap@2 Ops_5Heap@0)))) (=> (and (and (= b_12@17  (and b_12@16 (state Ops_5Heap@0 Ops_5Mask@6))) (= Mask@3 Mask@2)) (and (= Heap@2 Heap@1) (= (ControlFlow 0 3) 1))) anon27_correct))))))))))
(let ((anon41_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (= Used_8Mask@5 Used_8Mask@3) (= b_12@13 b_12@10)) (=> (and (and (= Used_8Heap@2 Used_8Heap@0) (= neededTransfer@5 FullPerm)) (and (= Ops_5Mask@6 Ops_5Mask@4) (= (ControlFlow 0 8) 3))) anon26_correct)))))
(let ((anon41_Then_correct  (=> (> takeTransfer@2 0.0) (=> (and (and (= neededTransfer@4 (- FullPerm takeTransfer@2)) (= Ops_5Mask@5 (PolymorphicMapType_14604 (store (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Ops_5Mask@4) x f_7 (+ (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Ops_5Mask@4) x f_7) takeTransfer@2)) (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Ops_5Mask@4) (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Ops_5Mask@4)))) (and (= b_12@11  (and b_12@10 (state Ops_5Heap@0 Ops_5Mask@5))) (= b_12@12  (and b_12@11 (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Used_8Heap@0) x f_7) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Ops_5Heap@0) x f_7)))))) (=> (and (and (and (= Used_8Mask@4 (PolymorphicMapType_14604 (store (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Used_8Mask@3) x f_7 (- (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Used_8Mask@3) x f_7) takeTransfer@2)) (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Used_8Mask@3) (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Used_8Mask@3))) (= Used_8Heap@1 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Used_8Heap@0) (store (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true) (PolymorphicMapType_15132 (store (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) x f_7 true) (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Used_8Heap@0) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))))) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Used_8Heap@0) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Used_8Heap@0)))) (and (= Used_8Mask@5 Used_8Mask@4) (= b_12@13 b_12@12))) (and (and (= Used_8Heap@2 Used_8Heap@1) (= neededTransfer@5 neededTransfer@4)) (and (= Ops_5Mask@6 Ops_5Mask@5) (= (ControlFlow 0 7) 3)))) anon26_correct)))))
(let ((anon40_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 10) 7) anon41_Then_correct) (=> (= (ControlFlow 0 10) 8) anon41_Else_correct)))))
(let ((anon40_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 9) 7) anon41_Then_correct) (=> (= (ControlFlow 0 9) 8) anon41_Else_correct)))))
(let ((anon39_Then_correct  (=> (and (and (and (and b_12@10 b_12@10) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Used_8Mask@3) x f_7))) (and (=> (= (ControlFlow 0 11) 9) anon40_Then_correct) (=> (= (ControlFlow 0 11) 10) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (not (and (and (and b_12@10 b_12@10) true) (> FullPerm 0.0))) (=> (and (= Used_8Mask@5 Used_8Mask@3) (= b_12@13 b_12@10)) (=> (and (and (= Used_8Heap@2 Used_8Heap@0) (= neededTransfer@5 FullPerm)) (and (= Ops_5Mask@6 Ops_5Mask@4) (= (ControlFlow 0 6) 3))) anon26_correct)))))
(let ((anon20_correct  (and (=> (= (ControlFlow 0 12) (- 0 14)) (=> (and b_12@7 b_13@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Used_8Mask@3) x f_7) initNeededTransfer@0)))) (=> (=> (and b_12@7 b_13@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Used_8Mask@3) x f_7) initNeededTransfer@0))) (=> (= b_14@0  (and b_12@7 b_13@6)) (=> (and (and (and (= b_14@1  (and b_14@0 (state Result_2Heap Result_2Mask))) (= b_14@2  (and b_14@1 (sumMask Result_2Mask Ops_5Mask@4 Used_8Mask@3)))) (and (= b_14@3  (and (and b_14@2 (IdenticalOnKnownLocations Ops_5Heap@0 Result_2Heap Ops_5Mask@4)) (IdenticalOnKnownLocations Used_8Heap@0 Result_2Heap Used_8Mask@3))) (= b_14@4  (and b_14@3 (state Result_2Heap Result_2Mask))))) (and (and (= b_12@8  (and b_12@7 b_14@4)) (= b_12@9  (and b_12@8 b_13@6))) (and (= b_12@10  (and b_12@9 (= Used_8Heap@0 Ops_5Heap@0))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Ops_5Mask@4) x f_7) FullPerm))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 12) 11) anon39_Then_correct) (=> (= (ControlFlow 0 12) 6) anon39_Else_correct))))))))))
(let ((anon38_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_13@6 b_13@3) (= Used_8Mask@3 Used_8Mask@1)) (and (= Heap@1 Heap@@45) (= (ControlFlow 0 17) 12))) anon20_correct)))))
(let ((anon38_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_8Mask@2 (PolymorphicMapType_14604 (store (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Used_8Mask@1) x f_7 (+ (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Used_8Mask@1) x f_7) takeTransfer@1)) (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Used_8Mask@1) (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Used_8Mask@1)))) (and (= b_13@4  (and b_13@3 (state Used_8Heap@0 Used_8Mask@2))) (= b_13@5  (and b_13@4 (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@45) x f_7) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Used_8Heap@0) x f_7)))))) (=> (and (and (and (= Mask@1 (PolymorphicMapType_14604 (store (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Mask@0) x f_7 (- (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Mask@0) x f_7) takeTransfer@1)) (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Mask@0) (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Mask@0))) (= Heap@0 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@45) (store (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true) (PolymorphicMapType_15132 (store (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) x f_7 true) (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))) (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@45) null (|wand_1#sm| x (/ (to_real 1) (to_real 2)) x 2 true))))) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@45) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@45)))) (and (= Mask@2 Mask@1) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_13@6 b_13@5) (= Used_8Mask@3 Used_8Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 16) 12)))) anon20_correct)))))
(let ((anon37_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 19) 16) anon38_Then_correct) (=> (= (ControlFlow 0 19) 17) anon38_Else_correct)))))
(let ((anon37_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 18) 16) anon38_Then_correct) (=> (= (ControlFlow 0 18) 17) anon38_Else_correct)))))
(let ((anon36_Then_correct  (=> (and (and (and (and b_12@7 b_13@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Mask@0) x f_7))) (and (=> (= (ControlFlow 0 20) 18) anon37_Then_correct) (=> (= (ControlFlow 0 20) 19) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (not (and (and (and b_12@7 b_13@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_13@6 b_13@3) (= Used_8Mask@3 Used_8Mask@1)) (and (= Heap@1 Heap@@45) (= (ControlFlow 0 15) 12))) anon20_correct)))))
(let ((anon35_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_5Mask@4 Ops_5Mask@2) (= Used_8Mask@1 ZeroMask)) (and (= b_13@3 b_13@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 23) 20) anon36_Then_correct) (=> (= (ControlFlow 0 23) 15) anon36_Else_correct))))))
(let ((anon35_Then_correct  (=> (and (> takeTransfer@0 0.0) (= neededTransfer@0 (- FullPerm takeTransfer@0))) (=> (and (and (and (= Used_8Mask@0 (PolymorphicMapType_14604 (store (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ZeroMask) x f_7) takeTransfer@0)) (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| ZeroMask))) (= b_13@1  (and b_13@0 (state Used_8Heap@0 Used_8Mask@0)))) (and (= b_13@2  (and b_13@1 (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Ops_5Heap@0) x f_7) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Used_8Heap@0) x f_7)))) (= Ops_5Mask@3 (PolymorphicMapType_14604 (store (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Ops_5Mask@2) x f_7 (- (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Ops_5Mask@2) x f_7) takeTransfer@0)) (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Ops_5Mask@2) (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Ops_5Mask@2))))) (and (and (= Ops_5Mask@4 Ops_5Mask@3) (= Used_8Mask@1 Used_8Mask@0)) (and (= b_13@3 b_13@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 22) 20) anon36_Then_correct) (=> (= (ControlFlow 0 22) 15) anon36_Else_correct))))))
(let ((anon34_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 25) 22) anon35_Then_correct) (=> (= (ControlFlow 0 25) 23) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 24) 22) anon35_Then_correct) (=> (= (ControlFlow 0 24) 23) anon35_Else_correct)))))
(let ((anon33_Then_correct  (=> (and (and (and (and b_12@7 b_13@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Ops_5Mask@2) x f_7))) (and (=> (= (ControlFlow 0 26) 24) anon34_Then_correct) (=> (= (ControlFlow 0 26) 25) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (not (and (and (and b_12@7 b_13@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_5Mask@4 Ops_5Mask@2) (= Used_8Mask@1 ZeroMask)) (and (= b_13@3 b_13@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 21) 20) anon36_Then_correct) (=> (= (ControlFlow 0 21) 15) anon36_Else_correct))))))
(let ((anon32_Then_correct  (=> b_12@7 (=> (and (= b_13@0  (and b_13 (state Used_8Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ZeroMask) x f_7) FullPerm))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 27) 26) anon33_Then_correct) (=> (= (ControlFlow 0 27) 21) anon33_Else_correct))))))))
(let ((anon32_Else_correct  (=> (and (and (not b_12@7) (= Mask@3 Mask@0)) (and (= Heap@2 Heap@@45) (= (ControlFlow 0 2) 1))) anon27_correct)))
(let ((anon7_correct  (=> (and (= b_12@6  (and b_12@5 (state Ops_5Heap@0 Ops_5Mask@2))) (= b_12@7  (and b_12@6 (state Ops_5Heap@0 Ops_5Mask@2)))) (and (=> (= (ControlFlow 0 29) 27) anon32_Then_correct) (=> (= (ControlFlow 0 29) 2) anon32_Else_correct)))))
(let ((anon6_correct  (=> (and (and (= b_12@4  (and b_12@3 (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Ops_5Heap@0) x f_7) 2))) (= b_12@5 b_12@4)) (and (= Ops_5Mask@2 Ops_5Mask@1) (= (ControlFlow 0 32) 29))) anon7_correct)))
(let ((anon31_Else_correct  (=> (and (not b_12@3) (= (ControlFlow 0 35) 32)) anon6_correct)))
(let ((anon31_Then_correct  (=> b_12@3 (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_8157_1773 Ops_5Mask@1 x f_7)) (=> (HasDirectPerm_8157_1773 Ops_5Mask@1 x f_7) (=> (= (ControlFlow 0 33) 32) anon6_correct))))))
(let ((anon30_Then_correct  (=> b_12@3 (and (=> (= (ControlFlow 0 36) 33) anon31_Then_correct) (=> (= (ControlFlow 0 36) 35) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (and (not b_12@3) (= b_12@5 b_12@3)) (and (= Ops_5Mask@2 Ops_5Mask@1) (= (ControlFlow 0 31) 29))) anon7_correct)))
(let ((anon29_Else_correct  (=> (not b_12@0) (=> (and (= Ops_5Mask@1 ZeroMask) (= b_12@3 b_12@0)) (and (=> (= (ControlFlow 0 39) 36) anon30_Then_correct) (=> (= (ControlFlow 0 39) 31) anon30_Else_correct))))))
(let ((anon29_Then_correct  (=> (and b_12@0 (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (= b_12@1  (and b_12@0 (=> (> perm@0 NoPerm) (not (= x null))))) (=> (and (and (= Ops_5Mask@0 (PolymorphicMapType_14604 (store (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ZeroMask) x f_7) perm@0)) (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| ZeroMask))) (= b_12@2  (and b_12@1 (state Ops_5Heap@0 Ops_5Mask@0)))) (and (= Ops_5Mask@1 Ops_5Mask@0) (= b_12@3 b_12@2))) (and (=> (= (ControlFlow 0 37) 36) anon30_Then_correct) (=> (= (ControlFlow 0 37) 31) anon30_Else_correct)))))))))
(let ((anon28_Then_correct  (=> b_12@0 (and (=> (= (ControlFlow 0 40) 37) anon29_Then_correct) (=> (= (ControlFlow 0 40) 39) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (and (not b_12@0) (= b_12@5 b_12@0)) (and (= Ops_5Mask@2 ZeroMask) (= (ControlFlow 0 30) 29))) anon7_correct)))
(let ((anon0_correct  (=> (and (state Heap@@45 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@45) x $allocated) (not (= x null))) (and (= Mask@0 (PolymorphicMapType_14604 (store (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ZeroMask) x f_7) FullPerm)) (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| ZeroMask) (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| ZeroMask))) (state Heap@@45 Mask@0))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (HasDirectPerm_8157_1773 Mask@0 x f_7)) (=> (HasDirectPerm_8157_1773 Mask@0 x f_7) (=> (and (and (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@45) x f_7) 0) (state Heap@@45 Mask@0)) (and (= b_12@0  (and b_12 (state Ops_5Heap@0 ZeroMask))) (= b_11@0  (and b_11 (state Used_7Heap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 41) 40) anon28_Then_correct) (=> (= (ControlFlow 0 41) 30) anon28_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 43) 41) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(declare-sort T@Field_14643_53 0)
(declare-sort T@Field_14656_14657 0)
(declare-sort T@Field_19139_1773 0)
(declare-sort T@Field_17980_17985 0)
(declare-sort T@Field_18452_18457 0)
(declare-sort T@Field_8157_17985 0)
(declare-sort T@Field_8157_17995 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17969_1195 0)
(declare-sort T@Field_17969_53 0)
(declare-sort T@Field_17969_14657 0)
(declare-sort T@Field_17994_17995 0)
(declare-sort T@Field_18439_1415 0)
(declare-sort T@Field_18439_53 0)
(declare-sort T@Field_18439_14657 0)
(declare-sort T@Field_18468_18469 0)
(declare-datatypes ((T@PolymorphicMapType_14604 0)) (((PolymorphicMapType_14604 (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| (Array T@Ref T@Field_19139_1773 Real)) (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| (Array T@Ref T@Field_17969_1195 Real)) (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| (Array T@Ref T@Field_18439_1415 Real)) (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| (Array T@Ref T@Field_14643_53 Real)) (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| (Array T@Ref T@Field_14656_14657 Real)) (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| (Array T@Ref T@Field_8157_17985 Real)) (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| (Array T@Ref T@Field_8157_17995 Real)) (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| (Array T@Ref T@Field_17969_53 Real)) (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| (Array T@Ref T@Field_17969_14657 Real)) (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| (Array T@Ref T@Field_17980_17985 Real)) (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| (Array T@Ref T@Field_17994_17995 Real)) (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| (Array T@Ref T@Field_18439_53 Real)) (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| (Array T@Ref T@Field_18439_14657 Real)) (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| (Array T@Ref T@Field_18452_18457 Real)) (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| (Array T@Ref T@Field_18468_18469 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15132 0)) (((PolymorphicMapType_15132 (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (Array T@Ref T@Field_19139_1773 Bool)) (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (Array T@Ref T@Field_14643_53 Bool)) (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (Array T@Ref T@Field_14656_14657 Bool)) (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (Array T@Ref T@Field_8157_17985 Bool)) (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (Array T@Ref T@Field_8157_17995 Bool)) (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (Array T@Ref T@Field_17969_1195 Bool)) (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (Array T@Ref T@Field_17969_53 Bool)) (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (Array T@Ref T@Field_17969_14657 Bool)) (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (Array T@Ref T@Field_17980_17985 Bool)) (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (Array T@Ref T@Field_17994_17995 Bool)) (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (Array T@Ref T@Field_18439_1415 Bool)) (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (Array T@Ref T@Field_18439_53 Bool)) (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (Array T@Ref T@Field_18439_14657 Bool)) (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (Array T@Ref T@Field_18452_18457 Bool)) (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (Array T@Ref T@Field_18468_18469 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14583 0)) (((PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| (Array T@Ref T@Field_14643_53 Bool)) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| (Array T@Ref T@Field_14656_14657 T@Ref)) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| (Array T@Ref T@Field_19139_1773 Int)) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| (Array T@Ref T@Field_17980_17985 T@PolymorphicMapType_15132)) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| (Array T@Ref T@Field_18452_18457 T@PolymorphicMapType_15132)) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| (Array T@Ref T@Field_8157_17985 T@PolymorphicMapType_15132)) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| (Array T@Ref T@Field_8157_17995 T@FrameType)) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| (Array T@Ref T@Field_17969_1195 Int)) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| (Array T@Ref T@Field_17969_53 Bool)) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| (Array T@Ref T@Field_17969_14657 T@Ref)) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| (Array T@Ref T@Field_17994_17995 T@FrameType)) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| (Array T@Ref T@Field_18439_1415 Int)) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| (Array T@Ref T@Field_18439_53 Bool)) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| (Array T@Ref T@Field_18439_14657 T@Ref)) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| (Array T@Ref T@Field_18468_18469 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_14643_53)
(declare-fun f_7 () T@Field_19139_1773)
(declare-fun g () T@Field_19139_1773)
(declare-fun succHeap (T@PolymorphicMapType_14583 T@PolymorphicMapType_14583) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_14583 T@PolymorphicMapType_14583) Bool)
(declare-fun wand_1 (T@Ref Real T@Ref Int Bool) T@Field_18439_1415)
(declare-fun state (T@PolymorphicMapType_14583 T@PolymorphicMapType_14604) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_14604) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15132)
(declare-fun wand (Bool Bool) T@Field_17969_1195)
(declare-fun IsWandField_8108_1195 (T@Field_17969_1195) Bool)
(declare-fun |wand#ft| (Bool Bool) T@Field_17994_17995)
(declare-fun IsWandField_8113_8114 (T@Field_17994_17995) Bool)
(declare-fun IsPredicateField_8108_1195 (T@Field_17969_1195) Bool)
(declare-fun IsPredicateField_8113_8114 (T@Field_17994_17995) Bool)
(declare-fun getPredWandId_8119_1415 (T@Field_18439_1415) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_14583 T@PolymorphicMapType_14583 T@PolymorphicMapType_14604) Bool)
(declare-fun IsPredicateField_8130_8131 (T@Field_18468_18469) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_18439 (T@Field_18468_18469) T@Field_18452_18457)
(declare-fun HasDirectPerm_18439_17995 (T@PolymorphicMapType_14604 T@Ref T@Field_18468_18469) Bool)
(declare-fun PredicateMaskField_17969 (T@Field_17994_17995) T@Field_17980_17985)
(declare-fun HasDirectPerm_17969_17995 (T@PolymorphicMapType_14604 T@Ref T@Field_17994_17995) Bool)
(declare-fun IsPredicateField_8157_48328 (T@Field_8157_17995) Bool)
(declare-fun PredicateMaskField_8157 (T@Field_8157_17995) T@Field_8157_17985)
(declare-fun HasDirectPerm_8157_17995 (T@PolymorphicMapType_14604 T@Ref T@Field_8157_17995) Bool)
(declare-fun IsWandField_8130_8131 (T@Field_18468_18469) Bool)
(declare-fun WandMaskField_8130 (T@Field_18468_18469) T@Field_18452_18457)
(declare-fun WandMaskField_8113 (T@Field_17994_17995) T@Field_17980_17985)
(declare-fun IsWandField_8157_53360 (T@Field_8157_17995) Bool)
(declare-fun WandMaskField_8157 (T@Field_8157_17995) T@Field_8157_17985)
(declare-fun dummyHeap () T@PolymorphicMapType_14583)
(declare-fun ZeroMask () T@PolymorphicMapType_14604)
(declare-fun InsidePredicate_18439_18439 (T@Field_18468_18469 T@FrameType T@Field_18468_18469 T@FrameType) Bool)
(declare-fun InsidePredicate_17969_17969 (T@Field_17994_17995 T@FrameType T@Field_17994_17995 T@FrameType) Bool)
(declare-fun InsidePredicate_14643_14643 (T@Field_8157_17995 T@FrameType T@Field_8157_17995 T@FrameType) Bool)
(declare-fun IsWandField_8119_1415 (T@Field_18439_1415) Bool)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref Int Bool) T@Field_18468_18469)
(declare-fun IsPredicateField_8157_1773 (T@Field_19139_1773) Bool)
(declare-fun IsWandField_8157_1773 (T@Field_19139_1773) Bool)
(declare-fun IsPredicateField_8119_1415 (T@Field_18439_1415) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8119_64152 (T@Field_18452_18457) Bool)
(declare-fun IsWandField_8119_64168 (T@Field_18452_18457) Bool)
(declare-fun IsPredicateField_8119_14657 (T@Field_18439_14657) Bool)
(declare-fun IsWandField_8119_14657 (T@Field_18439_14657) Bool)
(declare-fun IsPredicateField_8119_53 (T@Field_18439_53) Bool)
(declare-fun IsWandField_8119_53 (T@Field_18439_53) Bool)
(declare-fun IsPredicateField_8108_63335 (T@Field_17980_17985) Bool)
(declare-fun IsWandField_8108_63351 (T@Field_17980_17985) Bool)
(declare-fun IsPredicateField_8108_14657 (T@Field_17969_14657) Bool)
(declare-fun IsWandField_8108_14657 (T@Field_17969_14657) Bool)
(declare-fun IsPredicateField_8108_53 (T@Field_17969_53) Bool)
(declare-fun IsWandField_8108_53 (T@Field_17969_53) Bool)
(declare-fun IsPredicateField_8157_62518 (T@Field_8157_17985) Bool)
(declare-fun IsWandField_8157_62534 (T@Field_8157_17985) Bool)
(declare-fun IsPredicateField_8157_14657 (T@Field_14656_14657) Bool)
(declare-fun IsWandField_8157_14657 (T@Field_14656_14657) Bool)
(declare-fun IsPredicateField_8157_53 (T@Field_14643_53) Bool)
(declare-fun IsWandField_8157_53 (T@Field_14643_53) Bool)
(declare-fun HasDirectPerm_18439_47855 (T@PolymorphicMapType_14604 T@Ref T@Field_18452_18457) Bool)
(declare-fun HasDirectPerm_18439_14657 (T@PolymorphicMapType_14604 T@Ref T@Field_18439_14657) Bool)
(declare-fun HasDirectPerm_18439_53 (T@PolymorphicMapType_14604 T@Ref T@Field_18439_53) Bool)
(declare-fun HasDirectPerm_18439_1773 (T@PolymorphicMapType_14604 T@Ref T@Field_18439_1415) Bool)
(declare-fun HasDirectPerm_17969_46721 (T@PolymorphicMapType_14604 T@Ref T@Field_17980_17985) Bool)
(declare-fun HasDirectPerm_17969_14657 (T@PolymorphicMapType_14604 T@Ref T@Field_17969_14657) Bool)
(declare-fun HasDirectPerm_17969_53 (T@PolymorphicMapType_14604 T@Ref T@Field_17969_53) Bool)
(declare-fun HasDirectPerm_17969_1773 (T@PolymorphicMapType_14604 T@Ref T@Field_17969_1195) Bool)
(declare-fun HasDirectPerm_8157_45543 (T@PolymorphicMapType_14604 T@Ref T@Field_8157_17985) Bool)
(declare-fun HasDirectPerm_8157_14657 (T@PolymorphicMapType_14604 T@Ref T@Field_14656_14657) Bool)
(declare-fun HasDirectPerm_8157_53 (T@PolymorphicMapType_14604 T@Ref T@Field_14643_53) Bool)
(declare-fun HasDirectPerm_8157_1773 (T@PolymorphicMapType_14604 T@Ref T@Field_19139_1773) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_14604 T@PolymorphicMapType_14604 T@PolymorphicMapType_14604) Bool)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref Int Bool) T@Field_18452_18457)
(declare-fun getPredWandId_8108_1195 (T@Field_17969_1195) Int)
(declare-fun |wand#sm| (Bool Bool) T@Field_17980_17985)
(declare-fun InsidePredicate_18439_17969 (T@Field_18468_18469 T@FrameType T@Field_17994_17995 T@FrameType) Bool)
(declare-fun InsidePredicate_18439_14643 (T@Field_18468_18469 T@FrameType T@Field_8157_17995 T@FrameType) Bool)
(declare-fun InsidePredicate_17969_18439 (T@Field_17994_17995 T@FrameType T@Field_18468_18469 T@FrameType) Bool)
(declare-fun InsidePredicate_17969_14643 (T@Field_17994_17995 T@FrameType T@Field_8157_17995 T@FrameType) Bool)
(declare-fun InsidePredicate_14643_18439 (T@Field_8157_17995 T@FrameType T@Field_18468_18469 T@FrameType) Bool)
(declare-fun InsidePredicate_14643_17969 (T@Field_8157_17995 T@FrameType T@Field_17994_17995 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_14583) (Heap1 T@PolymorphicMapType_14583) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Int) (arg5 Bool) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Int) (arg5_2 Bool) ) (!  (=> (= (wand_1 arg1 arg2 arg3 arg4 arg5) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2)) (and (= arg1 arg1_2) (and (= arg2 arg2_2) (and (= arg3 arg3_2) (and (= arg4 arg4_2) (= arg5 arg5_2))))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1 arg2 arg3 arg4 arg5) (wand_1 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2))
)))
(assert (forall ((Heap T@PolymorphicMapType_14583) (Mask T@PolymorphicMapType_14604) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_14583) (Heap1@@0 T@PolymorphicMapType_14583) (Heap2 T@PolymorphicMapType_14583) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18468_18469) ) (!  (not (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18452_18457) ) (!  (not (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18439_14657) ) (!  (not (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18439_53) ) (!  (not (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_18439_1415) ) (!  (not (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_17994_17995) ) (!  (not (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_17980_17985) ) (!  (not (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_17969_14657) ) (!  (not (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_17969_53) ) (!  (not (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_17969_1195) ) (!  (not (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8157_17995) ) (!  (not (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8157_17985) ) (!  (not (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_14656_14657) ) (!  (not (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_14643_53) ) (!  (not (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_19139_1773) ) (!  (not (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 Bool) ) (! (IsWandField_8108_1195 (wand arg1@@0 arg2@@0))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@0 arg2@@0))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 Bool) ) (! (IsWandField_8113_8114 (|wand#ft| arg1@@1 arg2@@1))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 Bool) ) (!  (not (IsPredicateField_8108_1195 (wand arg1@@2 arg2@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 Bool) ) (!  (not (IsPredicateField_8113_8114 (|wand#ft| arg1@@3 arg2@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@0 T@Ref) (arg4@@0 Int) (arg5@@0 Bool) ) (! (= (getPredWandId_8119_1415 (wand_1 arg1@@4 arg2@@4 arg3@@0 arg4@@0 arg5@@0)) 1)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@4 arg2@@4 arg3@@0 arg4@@0 arg5@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_14583) (ExhaleHeap T@PolymorphicMapType_14583) (Mask@@0 T@PolymorphicMapType_14604) (pm_f T@Field_18468_18469) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_18439_17995 Mask@@0 null pm_f) (IsPredicateField_8130_8131 pm_f)) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@0) null (PredicateMaskField_18439 pm_f)) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap) null (PredicateMaskField_18439 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_8130_8131 pm_f) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap) null (PredicateMaskField_18439 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_14583) (ExhaleHeap@@0 T@PolymorphicMapType_14583) (Mask@@1 T@PolymorphicMapType_14604) (pm_f@@0 T@Field_17994_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17969_17995 Mask@@1 null pm_f@@0) (IsPredicateField_8113_8114 pm_f@@0)) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@1) null (PredicateMaskField_17969 pm_f@@0)) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@0) null (PredicateMaskField_17969 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8113_8114 pm_f@@0) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@0) null (PredicateMaskField_17969 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_14583) (ExhaleHeap@@1 T@PolymorphicMapType_14583) (Mask@@2 T@PolymorphicMapType_14604) (pm_f@@1 T@Field_8157_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8157_17995 Mask@@2 null pm_f@@1) (IsPredicateField_8157_48328 pm_f@@1)) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@2) null (PredicateMaskField_8157 pm_f@@1)) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@1) null (PredicateMaskField_8157 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_8157_48328 pm_f@@1) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@1) null (PredicateMaskField_8157 pm_f@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_14583) (ExhaleHeap@@2 T@PolymorphicMapType_14583) (Mask@@3 T@PolymorphicMapType_14604) (pm_f@@2 T@Field_18468_18469) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_18439_17995 Mask@@3 null pm_f@@2) (IsWandField_8130_8131 pm_f@@2)) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@3) null (WandMaskField_8130 pm_f@@2)) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@2) null (WandMaskField_8130 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_8130_8131 pm_f@@2) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@2) null (WandMaskField_8130 pm_f@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_14583) (ExhaleHeap@@3 T@PolymorphicMapType_14583) (Mask@@4 T@PolymorphicMapType_14604) (pm_f@@3 T@Field_17994_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_17969_17995 Mask@@4 null pm_f@@3) (IsWandField_8113_8114 pm_f@@3)) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@4) null (WandMaskField_8113 pm_f@@3)) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@3) null (WandMaskField_8113 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsWandField_8113_8114 pm_f@@3) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@3) null (WandMaskField_8113 pm_f@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_14583) (ExhaleHeap@@4 T@PolymorphicMapType_14583) (Mask@@5 T@PolymorphicMapType_14604) (pm_f@@4 T@Field_8157_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8157_17995 Mask@@5 null pm_f@@4) (IsWandField_8157_53360 pm_f@@4)) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@5) null (WandMaskField_8157 pm_f@@4)) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@4) null (WandMaskField_8157 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_8157_53360 pm_f@@4) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@4) null (WandMaskField_8157 pm_f@@4)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_14583) (ExhaleHeap@@5 T@PolymorphicMapType_14583) (Mask@@6 T@PolymorphicMapType_14604) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@5) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@5) o_1 $allocated))
)))
(assert (forall ((p T@Field_18468_18469) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18439_18439 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18439_18439 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_17994_17995) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_17969_17969 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17969_17969 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_8157_17995) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_14643_14643 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14643_14643 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@1 T@Ref) (arg4@@1 Int) (arg5@@1 Bool) ) (! (IsWandField_8119_1415 (wand_1 arg1@@5 arg2@@5 arg3@@1 arg4@@1 arg5@@1))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@5 arg2@@5 arg3@@1 arg4@@1 arg5@@1))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@2 T@Ref) (arg4@@2 Int) (arg5@@2 Bool) ) (! (IsWandField_8130_8131 (|wand_1#ft| arg1@@6 arg2@@6 arg3@@2 arg4@@2 arg5@@2))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@6 arg2@@6 arg3@@2 arg4@@2 arg5@@2))
)))
(assert  (not (IsPredicateField_8157_1773 f_7)))
(assert  (not (IsWandField_8157_1773 f_7)))
(assert  (not (IsPredicateField_8157_1773 g)))
(assert  (not (IsWandField_8157_1773 g)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_14583) (ExhaleHeap@@6 T@PolymorphicMapType_14583) (Mask@@7 T@PolymorphicMapType_14604) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@7 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@3 T@Ref) (arg4@@3 Int) (arg5@@3 Bool) ) (!  (not (IsPredicateField_8119_1415 (wand_1 arg1@@7 arg2@@7 arg3@@3 arg4@@3 arg5@@3)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@7 arg2@@7 arg3@@3 arg4@@3 arg5@@3))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@4 T@Ref) (arg4@@4 Int) (arg5@@4 Bool) ) (!  (not (IsPredicateField_8130_8131 (|wand_1#ft| arg1@@8 arg2@@8 arg3@@4 arg4@@4 arg5@@4)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@8 arg2@@8 arg3@@4 arg4@@4 arg5@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_14604) (o_2@@14 T@Ref) (f_4@@14 T@Field_18468_18469) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8130_8131 f_4@@14))) (not (IsWandField_8130_8131 f_4@@14))) (<= (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_14604) (o_2@@15 T@Ref) (f_4@@15 T@Field_18452_18457) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8119_64152 f_4@@15))) (not (IsWandField_8119_64168 f_4@@15))) (<= (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_14604) (o_2@@16 T@Ref) (f_4@@16 T@Field_18439_14657) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8119_14657 f_4@@16))) (not (IsWandField_8119_14657 f_4@@16))) (<= (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_14604) (o_2@@17 T@Ref) (f_4@@17 T@Field_18439_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8119_53 f_4@@17))) (not (IsWandField_8119_53 f_4@@17))) (<= (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_14604) (o_2@@18 T@Ref) (f_4@@18 T@Field_18439_1415) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8119_1415 f_4@@18))) (not (IsWandField_8119_1415 f_4@@18))) (<= (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_14604) (o_2@@19 T@Ref) (f_4@@19 T@Field_17994_17995) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8113_8114 f_4@@19))) (not (IsWandField_8113_8114 f_4@@19))) (<= (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_14604) (o_2@@20 T@Ref) (f_4@@20 T@Field_17980_17985) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8108_63335 f_4@@20))) (not (IsWandField_8108_63351 f_4@@20))) (<= (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_14604) (o_2@@21 T@Ref) (f_4@@21 T@Field_17969_14657) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8108_14657 f_4@@21))) (not (IsWandField_8108_14657 f_4@@21))) (<= (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_14604) (o_2@@22 T@Ref) (f_4@@22 T@Field_17969_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8108_53 f_4@@22))) (not (IsWandField_8108_53 f_4@@22))) (<= (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_14604) (o_2@@23 T@Ref) (f_4@@23 T@Field_17969_1195) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8108_1195 f_4@@23))) (not (IsWandField_8108_1195 f_4@@23))) (<= (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_14604) (o_2@@24 T@Ref) (f_4@@24 T@Field_8157_17995) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8157_48328 f_4@@24))) (not (IsWandField_8157_53360 f_4@@24))) (<= (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_14604) (o_2@@25 T@Ref) (f_4@@25 T@Field_8157_17985) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8157_62518 f_4@@25))) (not (IsWandField_8157_62534 f_4@@25))) (<= (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_14604) (o_2@@26 T@Ref) (f_4@@26 T@Field_14656_14657) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8157_14657 f_4@@26))) (not (IsWandField_8157_14657 f_4@@26))) (<= (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_14604) (o_2@@27 T@Ref) (f_4@@27 T@Field_14643_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8157_53 f_4@@27))) (not (IsWandField_8157_53 f_4@@27))) (<= (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_14604) (o_2@@28 T@Ref) (f_4@@28 T@Field_19139_1773) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8157_1773 f_4@@28))) (not (IsWandField_8157_1773 f_4@@28))) (<= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_14604) (o_2@@29 T@Ref) (f_4@@29 T@Field_18468_18469) ) (! (= (HasDirectPerm_18439_17995 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18439_17995 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_14604) (o_2@@30 T@Ref) (f_4@@30 T@Field_18452_18457) ) (! (= (HasDirectPerm_18439_47855 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18439_47855 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_14604) (o_2@@31 T@Ref) (f_4@@31 T@Field_18439_14657) ) (! (= (HasDirectPerm_18439_14657 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18439_14657 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_14604) (o_2@@32 T@Ref) (f_4@@32 T@Field_18439_53) ) (! (= (HasDirectPerm_18439_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18439_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_14604) (o_2@@33 T@Ref) (f_4@@33 T@Field_18439_1415) ) (! (= (HasDirectPerm_18439_1773 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18439_1773 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_14604) (o_2@@34 T@Ref) (f_4@@34 T@Field_17994_17995) ) (! (= (HasDirectPerm_17969_17995 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17969_17995 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_14604) (o_2@@35 T@Ref) (f_4@@35 T@Field_17980_17985) ) (! (= (HasDirectPerm_17969_46721 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17969_46721 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_14604) (o_2@@36 T@Ref) (f_4@@36 T@Field_17969_14657) ) (! (= (HasDirectPerm_17969_14657 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17969_14657 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_14604) (o_2@@37 T@Ref) (f_4@@37 T@Field_17969_53) ) (! (= (HasDirectPerm_17969_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17969_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_14604) (o_2@@38 T@Ref) (f_4@@38 T@Field_17969_1195) ) (! (= (HasDirectPerm_17969_1773 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17969_1773 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_14604) (o_2@@39 T@Ref) (f_4@@39 T@Field_8157_17995) ) (! (= (HasDirectPerm_8157_17995 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8157_17995 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_14604) (o_2@@40 T@Ref) (f_4@@40 T@Field_8157_17985) ) (! (= (HasDirectPerm_8157_45543 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8157_45543 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_14604) (o_2@@41 T@Ref) (f_4@@41 T@Field_14656_14657) ) (! (= (HasDirectPerm_8157_14657 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8157_14657 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_14604) (o_2@@42 T@Ref) (f_4@@42 T@Field_14643_53) ) (! (= (HasDirectPerm_8157_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8157_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_14604) (o_2@@43 T@Ref) (f_4@@43 T@Field_19139_1773) ) (! (= (HasDirectPerm_8157_1773 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8157_1773 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_14583) (ExhaleHeap@@7 T@PolymorphicMapType_14583) (Mask@@38 T@PolymorphicMapType_14604) (o_1@@0 T@Ref) (f_2 T@Field_18468_18469) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_18439_17995 Mask@@38 o_1@@0 f_2) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@8) o_1@@0 f_2) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@7) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@7) o_1@@0 f_2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_14583) (ExhaleHeap@@8 T@PolymorphicMapType_14583) (Mask@@39 T@PolymorphicMapType_14604) (o_1@@1 T@Ref) (f_2@@0 T@Field_18452_18457) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_18439_47855 Mask@@39 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@9) o_1@@1 f_2@@0) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@8) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@8) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_14583) (ExhaleHeap@@9 T@PolymorphicMapType_14583) (Mask@@40 T@PolymorphicMapType_14604) (o_1@@2 T@Ref) (f_2@@1 T@Field_18439_14657) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_18439_14657 Mask@@40 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@10) o_1@@2 f_2@@1) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@9) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@9) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_14583) (ExhaleHeap@@10 T@PolymorphicMapType_14583) (Mask@@41 T@PolymorphicMapType_14604) (o_1@@3 T@Ref) (f_2@@2 T@Field_18439_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_18439_53 Mask@@41 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@11) o_1@@3 f_2@@2) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@10) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@10) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_14583) (ExhaleHeap@@11 T@PolymorphicMapType_14583) (Mask@@42 T@PolymorphicMapType_14604) (o_1@@4 T@Ref) (f_2@@3 T@Field_18439_1415) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_18439_1773 Mask@@42 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@12) o_1@@4 f_2@@3) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@11) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@11) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_14583) (ExhaleHeap@@12 T@PolymorphicMapType_14583) (Mask@@43 T@PolymorphicMapType_14604) (o_1@@5 T@Ref) (f_2@@4 T@Field_17994_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_17969_17995 Mask@@43 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@13) o_1@@5 f_2@@4) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@12) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@12) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_14583) (ExhaleHeap@@13 T@PolymorphicMapType_14583) (Mask@@44 T@PolymorphicMapType_14604) (o_1@@6 T@Ref) (f_2@@5 T@Field_17980_17985) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_17969_46721 Mask@@44 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@14) o_1@@6 f_2@@5) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@13) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@13) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_14583) (ExhaleHeap@@14 T@PolymorphicMapType_14583) (Mask@@45 T@PolymorphicMapType_14604) (o_1@@7 T@Ref) (f_2@@6 T@Field_17969_14657) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_17969_14657 Mask@@45 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@15) o_1@@7 f_2@@6) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@14) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@14) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_14583) (ExhaleHeap@@15 T@PolymorphicMapType_14583) (Mask@@46 T@PolymorphicMapType_14604) (o_1@@8 T@Ref) (f_2@@7 T@Field_17969_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_17969_53 Mask@@46 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@16) o_1@@8 f_2@@7) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@15) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@15) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_14583) (ExhaleHeap@@16 T@PolymorphicMapType_14583) (Mask@@47 T@PolymorphicMapType_14604) (o_1@@9 T@Ref) (f_2@@8 T@Field_17969_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_17969_1773 Mask@@47 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@17) o_1@@9 f_2@@8) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@16) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@16) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_14583) (ExhaleHeap@@17 T@PolymorphicMapType_14583) (Mask@@48 T@PolymorphicMapType_14604) (o_1@@10 T@Ref) (f_2@@9 T@Field_8157_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_8157_17995 Mask@@48 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@18) o_1@@10 f_2@@9) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@17) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@17) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_14583) (ExhaleHeap@@18 T@PolymorphicMapType_14583) (Mask@@49 T@PolymorphicMapType_14604) (o_1@@11 T@Ref) (f_2@@10 T@Field_8157_17985) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_8157_45543 Mask@@49 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@19) o_1@@11 f_2@@10) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@18) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@18) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_14583) (ExhaleHeap@@19 T@PolymorphicMapType_14583) (Mask@@50 T@PolymorphicMapType_14604) (o_1@@12 T@Ref) (f_2@@11 T@Field_14656_14657) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_8157_14657 Mask@@50 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@20) o_1@@12 f_2@@11) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@19) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@19) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_14583) (ExhaleHeap@@20 T@PolymorphicMapType_14583) (Mask@@51 T@PolymorphicMapType_14604) (o_1@@13 T@Ref) (f_2@@12 T@Field_14643_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_8157_53 Mask@@51 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@21) o_1@@13 f_2@@12) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@20) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@20) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_14583) (ExhaleHeap@@21 T@PolymorphicMapType_14583) (Mask@@52 T@PolymorphicMapType_14604) (o_1@@14 T@Ref) (f_2@@13 T@Field_19139_1773) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_8157_1773 Mask@@52 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@22) o_1@@14 f_2@@13) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@21) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@21) o_1@@14 f_2@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_18468_18469) ) (! (= (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_18452_18457) ) (! (= (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_18439_14657) ) (! (= (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_18439_53) ) (! (= (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_18439_1415) ) (! (= (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_17994_17995) ) (! (= (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_17980_17985) ) (! (= (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_17969_14657) ) (! (= (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_17969_53) ) (! (= (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_17969_1195) ) (! (= (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_8157_17995) ) (! (= (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_8157_17985) ) (! (= (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_14656_14657) ) (! (= (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_14643_53) ) (! (= (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_19139_1773) ) (! (= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_14604) (SummandMask1 T@PolymorphicMapType_14604) (SummandMask2 T@PolymorphicMapType_14604) (o_2@@59 T@Ref) (f_4@@59 T@Field_18468_18469) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14604_8119_17995#PolymorphicMapType_14604| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_14604) (SummandMask1@@0 T@PolymorphicMapType_14604) (SummandMask2@@0 T@PolymorphicMapType_14604) (o_2@@60 T@Ref) (f_4@@60 T@Field_18452_18457) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14604_8119_60796#PolymorphicMapType_14604| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_14604) (SummandMask1@@1 T@PolymorphicMapType_14604) (SummandMask2@@1 T@PolymorphicMapType_14604) (o_2@@61 T@Ref) (f_4@@61 T@Field_18439_14657) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14604_8119_14657#PolymorphicMapType_14604| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_14604) (SummandMask1@@2 T@PolymorphicMapType_14604) (SummandMask2@@2 T@PolymorphicMapType_14604) (o_2@@62 T@Ref) (f_4@@62 T@Field_18439_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14604_8119_53#PolymorphicMapType_14604| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_14604) (SummandMask1@@3 T@PolymorphicMapType_14604) (SummandMask2@@3 T@PolymorphicMapType_14604) (o_2@@63 T@Ref) (f_4@@63 T@Field_18439_1415) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14604_8119_1415#PolymorphicMapType_14604| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_14604) (SummandMask1@@4 T@PolymorphicMapType_14604) (SummandMask2@@4 T@PolymorphicMapType_14604) (o_2@@64 T@Ref) (f_4@@64 T@Field_17994_17995) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14604_8108_17995#PolymorphicMapType_14604| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_14604) (SummandMask1@@5 T@PolymorphicMapType_14604) (SummandMask2@@5 T@PolymorphicMapType_14604) (o_2@@65 T@Ref) (f_4@@65 T@Field_17980_17985) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14604_8108_60382#PolymorphicMapType_14604| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_14604) (SummandMask1@@6 T@PolymorphicMapType_14604) (SummandMask2@@6 T@PolymorphicMapType_14604) (o_2@@66 T@Ref) (f_4@@66 T@Field_17969_14657) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14604_8108_14657#PolymorphicMapType_14604| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_14604) (SummandMask1@@7 T@PolymorphicMapType_14604) (SummandMask2@@7 T@PolymorphicMapType_14604) (o_2@@67 T@Ref) (f_4@@67 T@Field_17969_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14604_8108_53#PolymorphicMapType_14604| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_14604) (SummandMask1@@8 T@PolymorphicMapType_14604) (SummandMask2@@8 T@PolymorphicMapType_14604) (o_2@@68 T@Ref) (f_4@@68 T@Field_17969_1195) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14604_8108_1195#PolymorphicMapType_14604| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_14604) (SummandMask1@@9 T@PolymorphicMapType_14604) (SummandMask2@@9 T@PolymorphicMapType_14604) (o_2@@69 T@Ref) (f_4@@69 T@Field_8157_17995) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14604_8157_17995#PolymorphicMapType_14604| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_14604) (SummandMask1@@10 T@PolymorphicMapType_14604) (SummandMask2@@10 T@PolymorphicMapType_14604) (o_2@@70 T@Ref) (f_4@@70 T@Field_8157_17985) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14604_8157_59968#PolymorphicMapType_14604| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_14604) (SummandMask1@@11 T@PolymorphicMapType_14604) (SummandMask2@@11 T@PolymorphicMapType_14604) (o_2@@71 T@Ref) (f_4@@71 T@Field_14656_14657) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14604_8157_14657#PolymorphicMapType_14604| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_14604) (SummandMask1@@12 T@PolymorphicMapType_14604) (SummandMask2@@12 T@PolymorphicMapType_14604) (o_2@@72 T@Ref) (f_4@@72 T@Field_14643_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14604_8157_53#PolymorphicMapType_14604| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_14604) (SummandMask1@@13 T@PolymorphicMapType_14604) (SummandMask2@@13 T@PolymorphicMapType_14604) (o_2@@73 T@Ref) (f_4@@73 T@Field_19139_1773) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14604_8157_1773#PolymorphicMapType_14604| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_14583) (ExhaleHeap@@22 T@PolymorphicMapType_14583) (Mask@@53 T@PolymorphicMapType_14604) (pm_f@@5 T@Field_18468_18469) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_18439_17995 Mask@@53 null pm_f@@5) (IsPredicateField_8130_8131 pm_f@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@14 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2 f_2@@14) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@23) o2 f_2@@14) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2 f_2@@14))
)) (forall ((o2@@0 T@Ref) (f_2@@15 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@0 f_2@@15) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@23) o2@@0 f_2@@15) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@0 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@0 f_2@@15))
))) (forall ((o2@@1 T@Ref) (f_2@@16 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@1 f_2@@16) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@23) o2@@1 f_2@@16) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@1 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@1 f_2@@16))
))) (forall ((o2@@2 T@Ref) (f_2@@17 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@2 f_2@@17) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@23) o2@@2 f_2@@17) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@2 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@2 f_2@@17))
))) (forall ((o2@@3 T@Ref) (f_2@@18 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@3 f_2@@18) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@23) o2@@3 f_2@@18) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@3 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@3 f_2@@18))
))) (forall ((o2@@4 T@Ref) (f_2@@19 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@4 f_2@@19) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@23) o2@@4 f_2@@19) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@4 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@4 f_2@@19))
))) (forall ((o2@@5 T@Ref) (f_2@@20 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@5 f_2@@20) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@23) o2@@5 f_2@@20) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@5 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@5 f_2@@20))
))) (forall ((o2@@6 T@Ref) (f_2@@21 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@6 f_2@@21) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@23) o2@@6 f_2@@21) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@6 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@6 f_2@@21))
))) (forall ((o2@@7 T@Ref) (f_2@@22 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@7 f_2@@22) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@23) o2@@7 f_2@@22) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@7 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@7 f_2@@22))
))) (forall ((o2@@8 T@Ref) (f_2@@23 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@8 f_2@@23) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@23) o2@@8 f_2@@23) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@8 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@8 f_2@@23))
))) (forall ((o2@@9 T@Ref) (f_2@@24 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@9 f_2@@24) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@23) o2@@9 f_2@@24) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@9 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@9 f_2@@24))
))) (forall ((o2@@10 T@Ref) (f_2@@25 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@10 f_2@@25) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@23) o2@@10 f_2@@25) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@10 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@10 f_2@@25))
))) (forall ((o2@@11 T@Ref) (f_2@@26 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@11 f_2@@26) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@23) o2@@11 f_2@@26) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@11 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@11 f_2@@26))
))) (forall ((o2@@12 T@Ref) (f_2@@27 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@12 f_2@@27) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) o2@@12 f_2@@27) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@12 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@12 f_2@@27))
))) (forall ((o2@@13 T@Ref) (f_2@@28 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@23) null (PredicateMaskField_18439 pm_f@@5))) o2@@13 f_2@@28) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@23) o2@@13 f_2@@28) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@13 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@22) o2@@13 f_2@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (IsPredicateField_8130_8131 pm_f@@5))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_14583) (ExhaleHeap@@23 T@PolymorphicMapType_14583) (Mask@@54 T@PolymorphicMapType_14604) (pm_f@@6 T@Field_17994_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_17969_17995 Mask@@54 null pm_f@@6) (IsPredicateField_8113_8114 pm_f@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@14 T@Ref) (f_2@@29 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@14 f_2@@29) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@24) o2@@14 f_2@@29) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@14 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@14 f_2@@29))
)) (forall ((o2@@15 T@Ref) (f_2@@30 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@15 f_2@@30) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@24) o2@@15 f_2@@30) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@15 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@15 f_2@@30))
))) (forall ((o2@@16 T@Ref) (f_2@@31 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@16 f_2@@31) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@24) o2@@16 f_2@@31) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@16 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@16 f_2@@31))
))) (forall ((o2@@17 T@Ref) (f_2@@32 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@17 f_2@@32) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@24) o2@@17 f_2@@32) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@17 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@17 f_2@@32))
))) (forall ((o2@@18 T@Ref) (f_2@@33 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@18 f_2@@33) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@24) o2@@18 f_2@@33) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@18 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@18 f_2@@33))
))) (forall ((o2@@19 T@Ref) (f_2@@34 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@19 f_2@@34) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@24) o2@@19 f_2@@34) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@19 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@19 f_2@@34))
))) (forall ((o2@@20 T@Ref) (f_2@@35 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@20 f_2@@35) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@24) o2@@20 f_2@@35) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@20 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@20 f_2@@35))
))) (forall ((o2@@21 T@Ref) (f_2@@36 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@21 f_2@@36) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@24) o2@@21 f_2@@36) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@21 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@21 f_2@@36))
))) (forall ((o2@@22 T@Ref) (f_2@@37 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@22 f_2@@37) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) o2@@22 f_2@@37) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@22 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@22 f_2@@37))
))) (forall ((o2@@23 T@Ref) (f_2@@38 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@23 f_2@@38) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@24) o2@@23 f_2@@38) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@23 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@23 f_2@@38))
))) (forall ((o2@@24 T@Ref) (f_2@@39 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@24 f_2@@39) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@24) o2@@24 f_2@@39) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@24 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@24 f_2@@39))
))) (forall ((o2@@25 T@Ref) (f_2@@40 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@25 f_2@@40) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@24) o2@@25 f_2@@40) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@25 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@25 f_2@@40))
))) (forall ((o2@@26 T@Ref) (f_2@@41 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@26 f_2@@41) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@24) o2@@26 f_2@@41) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@26 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@26 f_2@@41))
))) (forall ((o2@@27 T@Ref) (f_2@@42 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@27 f_2@@42) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@24) o2@@27 f_2@@42) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@27 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@27 f_2@@42))
))) (forall ((o2@@28 T@Ref) (f_2@@43 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@24) null (PredicateMaskField_17969 pm_f@@6))) o2@@28 f_2@@43) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@24) o2@@28 f_2@@43) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@28 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@23) o2@@28 f_2@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (IsPredicateField_8113_8114 pm_f@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_14583) (ExhaleHeap@@24 T@PolymorphicMapType_14583) (Mask@@55 T@PolymorphicMapType_14604) (pm_f@@7 T@Field_8157_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_8157_17995 Mask@@55 null pm_f@@7) (IsPredicateField_8157_48328 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@44 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@29 f_2@@44) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@25) o2@@29 f_2@@44) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@29 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@29 f_2@@44))
)) (forall ((o2@@30 T@Ref) (f_2@@45 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@30 f_2@@45) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@25) o2@@30 f_2@@45) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@30 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@30 f_2@@45))
))) (forall ((o2@@31 T@Ref) (f_2@@46 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@31 f_2@@46) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@25) o2@@31 f_2@@46) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@31 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@31 f_2@@46))
))) (forall ((o2@@32 T@Ref) (f_2@@47 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@32 f_2@@47) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) o2@@32 f_2@@47) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@32 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@32 f_2@@47))
))) (forall ((o2@@33 T@Ref) (f_2@@48 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@33 f_2@@48) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@25) o2@@33 f_2@@48) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@33 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@33 f_2@@48))
))) (forall ((o2@@34 T@Ref) (f_2@@49 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@34 f_2@@49) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@25) o2@@34 f_2@@49) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@34 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@34 f_2@@49))
))) (forall ((o2@@35 T@Ref) (f_2@@50 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@35 f_2@@50) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@25) o2@@35 f_2@@50) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@35 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@35 f_2@@50))
))) (forall ((o2@@36 T@Ref) (f_2@@51 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@36 f_2@@51) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@25) o2@@36 f_2@@51) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@36 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@36 f_2@@51))
))) (forall ((o2@@37 T@Ref) (f_2@@52 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@37 f_2@@52) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@25) o2@@37 f_2@@52) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@37 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@37 f_2@@52))
))) (forall ((o2@@38 T@Ref) (f_2@@53 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@38 f_2@@53) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@25) o2@@38 f_2@@53) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@38 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@38 f_2@@53))
))) (forall ((o2@@39 T@Ref) (f_2@@54 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@39 f_2@@54) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@25) o2@@39 f_2@@54) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@39 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@39 f_2@@54))
))) (forall ((o2@@40 T@Ref) (f_2@@55 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@40 f_2@@55) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@25) o2@@40 f_2@@55) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@40 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@40 f_2@@55))
))) (forall ((o2@@41 T@Ref) (f_2@@56 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@41 f_2@@56) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@25) o2@@41 f_2@@56) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@41 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@41 f_2@@56))
))) (forall ((o2@@42 T@Ref) (f_2@@57 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@42 f_2@@57) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@25) o2@@42 f_2@@57) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@42 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@42 f_2@@57))
))) (forall ((o2@@43 T@Ref) (f_2@@58 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@25) null (PredicateMaskField_8157 pm_f@@7))) o2@@43 f_2@@58) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@25) o2@@43 f_2@@58) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@43 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@24) o2@@43 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (IsPredicateField_8157_48328 pm_f@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_14583) (ExhaleHeap@@25 T@PolymorphicMapType_14583) (Mask@@56 T@PolymorphicMapType_14604) (pm_f@@8 T@Field_18468_18469) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_18439_17995 Mask@@56 null pm_f@@8) (IsWandField_8130_8131 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@44 T@Ref) (f_2@@59 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@44 f_2@@59) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@26) o2@@44 f_2@@59) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@44 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@44 f_2@@59))
)) (forall ((o2@@45 T@Ref) (f_2@@60 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@45 f_2@@60) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@26) o2@@45 f_2@@60) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@45 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@45 f_2@@60))
))) (forall ((o2@@46 T@Ref) (f_2@@61 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@46 f_2@@61) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@26) o2@@46 f_2@@61) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@46 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@46 f_2@@61))
))) (forall ((o2@@47 T@Ref) (f_2@@62 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@47 f_2@@62) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@26) o2@@47 f_2@@62) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@47 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@47 f_2@@62))
))) (forall ((o2@@48 T@Ref) (f_2@@63 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@48 f_2@@63) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@26) o2@@48 f_2@@63) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@48 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@48 f_2@@63))
))) (forall ((o2@@49 T@Ref) (f_2@@64 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@49 f_2@@64) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@26) o2@@49 f_2@@64) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@49 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@49 f_2@@64))
))) (forall ((o2@@50 T@Ref) (f_2@@65 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@50 f_2@@65) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@26) o2@@50 f_2@@65) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@50 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@50 f_2@@65))
))) (forall ((o2@@51 T@Ref) (f_2@@66 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@51 f_2@@66) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@26) o2@@51 f_2@@66) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@51 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@51 f_2@@66))
))) (forall ((o2@@52 T@Ref) (f_2@@67 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@52 f_2@@67) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@26) o2@@52 f_2@@67) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@52 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@52 f_2@@67))
))) (forall ((o2@@53 T@Ref) (f_2@@68 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@53 f_2@@68) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@26) o2@@53 f_2@@68) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@53 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@53 f_2@@68))
))) (forall ((o2@@54 T@Ref) (f_2@@69 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@54 f_2@@69) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@26) o2@@54 f_2@@69) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@54 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@54 f_2@@69))
))) (forall ((o2@@55 T@Ref) (f_2@@70 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@55 f_2@@70) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@26) o2@@55 f_2@@70) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@55 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@55 f_2@@70))
))) (forall ((o2@@56 T@Ref) (f_2@@71 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@56 f_2@@71) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@26) o2@@56 f_2@@71) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@56 f_2@@71)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@56 f_2@@71))
))) (forall ((o2@@57 T@Ref) (f_2@@72 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@57 f_2@@72) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) o2@@57 f_2@@72) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@57 f_2@@72)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@57 f_2@@72))
))) (forall ((o2@@58 T@Ref) (f_2@@73 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@26) null (WandMaskField_8130 pm_f@@8))) o2@@58 f_2@@73) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@26) o2@@58 f_2@@73) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@58 f_2@@73)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@25) o2@@58 f_2@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (IsWandField_8130_8131 pm_f@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_14583) (ExhaleHeap@@26 T@PolymorphicMapType_14583) (Mask@@57 T@PolymorphicMapType_14604) (pm_f@@9 T@Field_17994_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_17969_17995 Mask@@57 null pm_f@@9) (IsWandField_8113_8114 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@74 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@59 f_2@@74) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@27) o2@@59 f_2@@74) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@59 f_2@@74)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@59 f_2@@74))
)) (forall ((o2@@60 T@Ref) (f_2@@75 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@60 f_2@@75) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@27) o2@@60 f_2@@75) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@60 f_2@@75)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@60 f_2@@75))
))) (forall ((o2@@61 T@Ref) (f_2@@76 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@61 f_2@@76) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@27) o2@@61 f_2@@76) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@61 f_2@@76)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@61 f_2@@76))
))) (forall ((o2@@62 T@Ref) (f_2@@77 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@62 f_2@@77) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@27) o2@@62 f_2@@77) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@62 f_2@@77)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@62 f_2@@77))
))) (forall ((o2@@63 T@Ref) (f_2@@78 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@63 f_2@@78) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@27) o2@@63 f_2@@78) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@63 f_2@@78)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@63 f_2@@78))
))) (forall ((o2@@64 T@Ref) (f_2@@79 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@64 f_2@@79) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@27) o2@@64 f_2@@79) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@64 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@64 f_2@@79))
))) (forall ((o2@@65 T@Ref) (f_2@@80 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@65 f_2@@80) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@27) o2@@65 f_2@@80) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@65 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@65 f_2@@80))
))) (forall ((o2@@66 T@Ref) (f_2@@81 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@66 f_2@@81) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@27) o2@@66 f_2@@81) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@66 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@66 f_2@@81))
))) (forall ((o2@@67 T@Ref) (f_2@@82 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@67 f_2@@82) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) o2@@67 f_2@@82) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@67 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@67 f_2@@82))
))) (forall ((o2@@68 T@Ref) (f_2@@83 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@68 f_2@@83) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@27) o2@@68 f_2@@83) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@68 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@68 f_2@@83))
))) (forall ((o2@@69 T@Ref) (f_2@@84 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@69 f_2@@84) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@27) o2@@69 f_2@@84) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@69 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@69 f_2@@84))
))) (forall ((o2@@70 T@Ref) (f_2@@85 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@70 f_2@@85) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@27) o2@@70 f_2@@85) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@70 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@70 f_2@@85))
))) (forall ((o2@@71 T@Ref) (f_2@@86 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@71 f_2@@86) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@27) o2@@71 f_2@@86) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@71 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@71 f_2@@86))
))) (forall ((o2@@72 T@Ref) (f_2@@87 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@72 f_2@@87) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@27) o2@@72 f_2@@87) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@72 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@72 f_2@@87))
))) (forall ((o2@@73 T@Ref) (f_2@@88 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@27) null (WandMaskField_8113 pm_f@@9))) o2@@73 f_2@@88) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@27) o2@@73 f_2@@88) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@73 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@26) o2@@73 f_2@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (IsWandField_8113_8114 pm_f@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_14583) (ExhaleHeap@@27 T@PolymorphicMapType_14583) (Mask@@58 T@PolymorphicMapType_14604) (pm_f@@10 T@Field_8157_17995) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_8157_17995 Mask@@58 null pm_f@@10) (IsWandField_8157_53360 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@89 T@Field_19139_1773) ) (!  (=> (select (|PolymorphicMapType_15132_8157_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@74 f_2@@89) (= (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@28) o2@@74 f_2@@89) (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@74 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@74 f_2@@89))
)) (forall ((o2@@75 T@Ref) (f_2@@90 T@Field_14643_53) ) (!  (=> (select (|PolymorphicMapType_15132_8157_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@75 f_2@@90) (= (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@28) o2@@75 f_2@@90) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@75 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@75 f_2@@90))
))) (forall ((o2@@76 T@Ref) (f_2@@91 T@Field_14656_14657) ) (!  (=> (select (|PolymorphicMapType_15132_8157_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@76 f_2@@91) (= (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@28) o2@@76 f_2@@91) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@76 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@76 f_2@@91))
))) (forall ((o2@@77 T@Ref) (f_2@@92 T@Field_8157_17985) ) (!  (=> (select (|PolymorphicMapType_15132_8157_49971#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@77 f_2@@92) (= (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) o2@@77 f_2@@92) (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@77 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@77 f_2@@92))
))) (forall ((o2@@78 T@Ref) (f_2@@93 T@Field_8157_17995) ) (!  (=> (select (|PolymorphicMapType_15132_8157_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@78 f_2@@93) (= (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@28) o2@@78 f_2@@93) (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@78 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@78 f_2@@93))
))) (forall ((o2@@79 T@Ref) (f_2@@94 T@Field_17969_1195) ) (!  (=> (select (|PolymorphicMapType_15132_17969_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@79 f_2@@94) (= (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@28) o2@@79 f_2@@94) (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@79 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@79 f_2@@94))
))) (forall ((o2@@80 T@Ref) (f_2@@95 T@Field_17969_53) ) (!  (=> (select (|PolymorphicMapType_15132_17969_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@80 f_2@@95) (= (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@28) o2@@80 f_2@@95) (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@80 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@80 f_2@@95))
))) (forall ((o2@@81 T@Ref) (f_2@@96 T@Field_17969_14657) ) (!  (=> (select (|PolymorphicMapType_15132_17969_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@81 f_2@@96) (= (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@28) o2@@81 f_2@@96) (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@81 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@81 f_2@@96))
))) (forall ((o2@@82 T@Ref) (f_2@@97 T@Field_17980_17985) ) (!  (=> (select (|PolymorphicMapType_15132_17969_51019#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@82 f_2@@97) (= (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@28) o2@@82 f_2@@97) (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@82 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@82 f_2@@97))
))) (forall ((o2@@83 T@Ref) (f_2@@98 T@Field_17994_17995) ) (!  (=> (select (|PolymorphicMapType_15132_17969_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@83 f_2@@98) (= (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@28) o2@@83 f_2@@98) (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@83 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@83 f_2@@98))
))) (forall ((o2@@84 T@Ref) (f_2@@99 T@Field_18439_1415) ) (!  (=> (select (|PolymorphicMapType_15132_18439_1773#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@84 f_2@@99) (= (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@28) o2@@84 f_2@@99) (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@84 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@84 f_2@@99))
))) (forall ((o2@@85 T@Ref) (f_2@@100 T@Field_18439_53) ) (!  (=> (select (|PolymorphicMapType_15132_18439_53#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@85 f_2@@100) (= (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@28) o2@@85 f_2@@100) (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@85 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@85 f_2@@100))
))) (forall ((o2@@86 T@Ref) (f_2@@101 T@Field_18439_14657) ) (!  (=> (select (|PolymorphicMapType_15132_18439_14657#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@86 f_2@@101) (= (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@28) o2@@86 f_2@@101) (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@86 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@86 f_2@@101))
))) (forall ((o2@@87 T@Ref) (f_2@@102 T@Field_18452_18457) ) (!  (=> (select (|PolymorphicMapType_15132_18439_52067#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@87 f_2@@102) (= (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@28) o2@@87 f_2@@102) (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@87 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@87 f_2@@102))
))) (forall ((o2@@88 T@Ref) (f_2@@103 T@Field_18468_18469) ) (!  (=> (select (|PolymorphicMapType_15132_18439_17995#PolymorphicMapType_15132| (select (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@28) null (WandMaskField_8157 pm_f@@10))) o2@@88 f_2@@103) (= (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@28) o2@@88 f_2@@103) (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@88 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| ExhaleHeap@@27) o2@@88 f_2@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (IsWandField_8157_53360 pm_f@@10))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@5 T@Ref) (arg4@@5 Int) (arg5@@5 Bool) ) (! (= (|wand_1#sm| arg1@@9 arg2@@9 arg3@@5 arg4@@5 arg5@@5) (WandMaskField_8130 (|wand_1#ft| arg1@@9 arg2@@9 arg3@@5 arg4@@5 arg5@@5)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_8130 (|wand_1#ft| arg1@@9 arg2@@9 arg3@@5 arg4@@5 arg5@@5)))
)))
(assert (forall ((arg1@@10 Bool) (arg2@@10 Bool) (arg1_2@@0 Bool) (arg2_2@@0 Bool) ) (!  (=> (= (wand arg1@@10 arg2@@10) (wand arg1_2@@0 arg2_2@@0)) (and (= arg1@@10 arg1_2@@0) (= arg2@@10 arg2_2@@0)))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@10 arg2@@10) (wand arg1_2@@0 arg2_2@@0))
)))
(assert (forall ((arg1@@11 Bool) (arg2@@11 Bool) ) (! (= (getPredWandId_8108_1195 (wand arg1@@11 arg2@@11)) 0)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@11 arg2@@11))
)))
(assert (forall ((arg1@@12 Bool) (arg2@@12 Bool) ) (! (= (|wand#sm| arg1@@12 arg2@@12) (WandMaskField_8113 (|wand#ft| arg1@@12 arg2@@12)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_8113 (|wand#ft| arg1@@12 arg2@@12)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_14583) (o T@Ref) (f_3 T@Field_18468_18469) (v T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@29) (store (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@29) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@29) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@29) (store (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@29) o f_3 v)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_14583) (o@@0 T@Ref) (f_3@@0 T@Field_18452_18457) (v@@0 T@PolymorphicMapType_15132) ) (! (succHeap Heap@@30 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@30) (store (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@30) (store (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@30) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_14583) (o@@1 T@Ref) (f_3@@1 T@Field_18439_1415) (v@@1 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@31) (store (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@31) (store (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@31) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_14583) (o@@2 T@Ref) (f_3@@2 T@Field_18439_14657) (v@@2 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@32) (store (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@32) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@32) (store (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_14583) (o@@3 T@Ref) (f_3@@3 T@Field_18439_53) (v@@3 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@33) (store (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@33) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@33) (store (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@33) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@33) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_14583) (o@@4 T@Ref) (f_3@@4 T@Field_17994_17995) (v@@4 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@34) (store (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@34) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@34) (store (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@34) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@34) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_14583) (o@@5 T@Ref) (f_3@@5 T@Field_17980_17985) (v@@5 T@PolymorphicMapType_15132) ) (! (succHeap Heap@@35 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@35) (store (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@35) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@35) (store (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@35) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@35) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_14583) (o@@6 T@Ref) (f_3@@6 T@Field_17969_1195) (v@@6 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@36) (store (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@36) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@36) (store (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@36) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@36) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_14583) (o@@7 T@Ref) (f_3@@7 T@Field_17969_14657) (v@@7 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@37) (store (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@37) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@37) (store (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@37) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@37) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_14583) (o@@8 T@Ref) (f_3@@8 T@Field_17969_53) (v@@8 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@38) (store (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@38) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@38) (store (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@38) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@38) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_14583) (o@@9 T@Ref) (f_3@@9 T@Field_8157_17995) (v@@9 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@39) (store (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@39) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@39) (store (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@39) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@39) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_14583) (o@@10 T@Ref) (f_3@@10 T@Field_8157_17985) (v@@10 T@PolymorphicMapType_15132) ) (! (succHeap Heap@@40 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@40) (store (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@40) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@40) (store (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@40) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@40) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_14583) (o@@11 T@Ref) (f_3@@11 T@Field_19139_1773) (v@@11 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@41) (store (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@41) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@41) (store (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@41) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@41) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_14583) (o@@12 T@Ref) (f_3@@12 T@Field_14656_14657) (v@@12 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@42) (store (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@42) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@42) (store (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@42) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@42) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_14583) (o@@13 T@Ref) (f_3@@13 T@Field_14643_53) (v@@13 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_14583 (store (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@43) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14583 (store (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@43) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8110_23018#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8124_27788#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_45585#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_8157_17995#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_53#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_14657#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_17969_17995#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_1773#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_53#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_14657#PolymorphicMapType_14583| Heap@@43) (|PolymorphicMapType_14583_18439_17995#PolymorphicMapType_14583| Heap@@43)))
)))
(assert (forall ((o@@14 T@Ref) (f T@Field_14656_14657) (Heap@@44 T@PolymorphicMapType_14583) ) (!  (=> (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@44) o@@14 $allocated) (select (|PolymorphicMapType_14583_7980_53#PolymorphicMapType_14583| Heap@@44) (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@44) o@@14 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_14583_7983_7984#PolymorphicMapType_14583| Heap@@44) o@@14 f))
)))
(assert (forall ((p@@3 T@Field_18468_18469) (v_1@@2 T@FrameType) (q T@Field_18468_18469) (w@@2 T@FrameType) (r T@Field_18468_18469) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18439_18439 p@@3 v_1@@2 q w@@2) (InsidePredicate_18439_18439 q w@@2 r u)) (InsidePredicate_18439_18439 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_18439 p@@3 v_1@@2 q w@@2) (InsidePredicate_18439_18439 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_18468_18469) (v_1@@3 T@FrameType) (q@@0 T@Field_18468_18469) (w@@3 T@FrameType) (r@@0 T@Field_17994_17995) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_18439 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_18439_17969 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_18439_17969 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_18439 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_18439_17969 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_18468_18469) (v_1@@4 T@FrameType) (q@@1 T@Field_18468_18469) (w@@4 T@FrameType) (r@@1 T@Field_8157_17995) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_18439 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_18439_14643 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_18439_14643 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_18439 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_18439_14643 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_18468_18469) (v_1@@5 T@FrameType) (q@@2 T@Field_17994_17995) (w@@5 T@FrameType) (r@@2 T@Field_18468_18469) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_17969 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_17969_18439 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_18439_18439 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_17969 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_17969_18439 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_18468_18469) (v_1@@6 T@FrameType) (q@@3 T@Field_17994_17995) (w@@6 T@FrameType) (r@@3 T@Field_17994_17995) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_17969 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_17969_17969 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_18439_17969 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_17969 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_17969_17969 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_18468_18469) (v_1@@7 T@FrameType) (q@@4 T@Field_17994_17995) (w@@7 T@FrameType) (r@@4 T@Field_8157_17995) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_17969 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_17969_14643 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_18439_14643 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_17969 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_17969_14643 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_18468_18469) (v_1@@8 T@FrameType) (q@@5 T@Field_8157_17995) (w@@8 T@FrameType) (r@@5 T@Field_18468_18469) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_14643 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_14643_18439 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_18439_18439 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_14643 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_14643_18439 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_18468_18469) (v_1@@9 T@FrameType) (q@@6 T@Field_8157_17995) (w@@9 T@FrameType) (r@@6 T@Field_17994_17995) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_14643 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_14643_17969 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_18439_17969 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_14643 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_14643_17969 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_18468_18469) (v_1@@10 T@FrameType) (q@@7 T@Field_8157_17995) (w@@10 T@FrameType) (r@@7 T@Field_8157_17995) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_18439_14643 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_14643_14643 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_18439_14643 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18439_14643 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_14643_14643 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_17994_17995) (v_1@@11 T@FrameType) (q@@8 T@Field_18468_18469) (w@@11 T@FrameType) (r@@8 T@Field_18468_18469) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_18439 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_18439_18439 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_17969_18439 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_18439 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_18439_18439 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_17994_17995) (v_1@@12 T@FrameType) (q@@9 T@Field_18468_18469) (w@@12 T@FrameType) (r@@9 T@Field_17994_17995) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_18439 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_18439_17969 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_17969_17969 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_18439 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_18439_17969 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_17994_17995) (v_1@@13 T@FrameType) (q@@10 T@Field_18468_18469) (w@@13 T@FrameType) (r@@10 T@Field_8157_17995) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_18439 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_18439_14643 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_17969_14643 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_18439 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_18439_14643 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_17994_17995) (v_1@@14 T@FrameType) (q@@11 T@Field_17994_17995) (w@@14 T@FrameType) (r@@11 T@Field_18468_18469) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_17969 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_17969_18439 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_17969_18439 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_17969 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_17969_18439 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_17994_17995) (v_1@@15 T@FrameType) (q@@12 T@Field_17994_17995) (w@@15 T@FrameType) (r@@12 T@Field_17994_17995) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_17969 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_17969_17969 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_17969_17969 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_17969 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_17969_17969 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_17994_17995) (v_1@@16 T@FrameType) (q@@13 T@Field_17994_17995) (w@@16 T@FrameType) (r@@13 T@Field_8157_17995) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_17969 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_17969_14643 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_17969_14643 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_17969 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_17969_14643 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_17994_17995) (v_1@@17 T@FrameType) (q@@14 T@Field_8157_17995) (w@@17 T@FrameType) (r@@14 T@Field_18468_18469) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_14643 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_14643_18439 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_17969_18439 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_14643 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_14643_18439 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_17994_17995) (v_1@@18 T@FrameType) (q@@15 T@Field_8157_17995) (w@@18 T@FrameType) (r@@15 T@Field_17994_17995) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_14643 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_14643_17969 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_17969_17969 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_14643 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_14643_17969 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_17994_17995) (v_1@@19 T@FrameType) (q@@16 T@Field_8157_17995) (w@@19 T@FrameType) (r@@16 T@Field_8157_17995) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_17969_14643 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_14643_14643 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_17969_14643 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17969_14643 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_14643_14643 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_8157_17995) (v_1@@20 T@FrameType) (q@@17 T@Field_18468_18469) (w@@20 T@FrameType) (r@@17 T@Field_18468_18469) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_18439 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_18439_18439 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_14643_18439 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_18439 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_18439_18439 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_8157_17995) (v_1@@21 T@FrameType) (q@@18 T@Field_18468_18469) (w@@21 T@FrameType) (r@@18 T@Field_17994_17995) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_18439 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_18439_17969 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_14643_17969 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_18439 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_18439_17969 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_8157_17995) (v_1@@22 T@FrameType) (q@@19 T@Field_18468_18469) (w@@22 T@FrameType) (r@@19 T@Field_8157_17995) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_18439 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_18439_14643 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_14643_14643 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_18439 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_18439_14643 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_8157_17995) (v_1@@23 T@FrameType) (q@@20 T@Field_17994_17995) (w@@23 T@FrameType) (r@@20 T@Field_18468_18469) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_17969 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_17969_18439 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_14643_18439 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_17969 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_17969_18439 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_8157_17995) (v_1@@24 T@FrameType) (q@@21 T@Field_17994_17995) (w@@24 T@FrameType) (r@@21 T@Field_17994_17995) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_17969 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_17969_17969 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_14643_17969 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_17969 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_17969_17969 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_8157_17995) (v_1@@25 T@FrameType) (q@@22 T@Field_17994_17995) (w@@25 T@FrameType) (r@@22 T@Field_8157_17995) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_17969 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_17969_14643 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_14643_14643 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_17969 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_17969_14643 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_8157_17995) (v_1@@26 T@FrameType) (q@@23 T@Field_8157_17995) (w@@26 T@FrameType) (r@@23 T@Field_18468_18469) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_14643 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_14643_18439 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_14643_18439 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_14643 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_14643_18439 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_8157_17995) (v_1@@27 T@FrameType) (q@@24 T@Field_8157_17995) (w@@27 T@FrameType) (r@@24 T@Field_17994_17995) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_14643 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_14643_17969 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_14643_17969 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_14643 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_14643_17969 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_8157_17995) (v_1@@28 T@FrameType) (q@@25 T@Field_8157_17995) (w@@28 T@FrameType) (r@@25 T@Field_8157_17995) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_14643_14643 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_14643_14643 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_14643_14643 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14643_14643 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_14643_14643 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

