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
(declare-sort T@Field_9315_53 0)
(declare-sort T@Field_9328_9329 0)
(declare-sort T@Field_13462_1625 0)
(declare-sort T@Field_13855_13856 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_15334_15339 0)
(declare-sort T@Field_12661_12666 0)
(declare-sort T@Field_5090_5122 0)
(declare-sort T@Field_5090_12666 0)
(declare-sort T@Field_5121_1625 0)
(declare-sort T@Field_5121_53 0)
(declare-sort T@Field_5121_9329 0)
(declare-sort T@Field_12646_1214 0)
(declare-sort T@Field_12679_12680 0)
(declare-sort T@Field_12646_53 0)
(declare-sort T@Field_12646_9329 0)
(declare-datatypes ((T@PolymorphicMapType_9276 0)) (((PolymorphicMapType_9276 (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| (Array T@Ref T@Field_13855_13856 Real)) (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| (Array T@Ref T@Field_13462_1625 Real)) (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| (Array T@Ref T@Field_12646_1214 Real)) (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| (Array T@Ref T@Field_5121_1625 Real)) (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| (Array T@Ref T@Field_5121_53 Real)) (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| (Array T@Ref T@Field_5121_9329 Real)) (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| (Array T@Ref T@Field_15334_15339 Real)) (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| (Array T@Ref T@Field_5090_5122 Real)) (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| (Array T@Ref T@Field_9315_53 Real)) (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| (Array T@Ref T@Field_9328_9329 Real)) (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| (Array T@Ref T@Field_5090_12666 Real)) (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| (Array T@Ref T@Field_12679_12680 Real)) (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| (Array T@Ref T@Field_12646_53 Real)) (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| (Array T@Ref T@Field_12646_9329 Real)) (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| (Array T@Ref T@Field_12661_12666 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9804 0)) (((PolymorphicMapType_9804 (|PolymorphicMapType_9804_5090_1625#PolymorphicMapType_9804| (Array T@Ref T@Field_13462_1625 Bool)) (|PolymorphicMapType_9804_5090_53#PolymorphicMapType_9804| (Array T@Ref T@Field_9315_53 Bool)) (|PolymorphicMapType_9804_5090_9329#PolymorphicMapType_9804| (Array T@Ref T@Field_9328_9329 Bool)) (|PolymorphicMapType_9804_5090_33752#PolymorphicMapType_9804| (Array T@Ref T@Field_5090_12666 Bool)) (|PolymorphicMapType_9804_5090_12680#PolymorphicMapType_9804| (Array T@Ref T@Field_5090_5122 Bool)) (|PolymorphicMapType_9804_12646_1625#PolymorphicMapType_9804| (Array T@Ref T@Field_12646_1214 Bool)) (|PolymorphicMapType_9804_12646_53#PolymorphicMapType_9804| (Array T@Ref T@Field_12646_53 Bool)) (|PolymorphicMapType_9804_12646_9329#PolymorphicMapType_9804| (Array T@Ref T@Field_12646_9329 Bool)) (|PolymorphicMapType_9804_12646_34800#PolymorphicMapType_9804| (Array T@Ref T@Field_12661_12666 Bool)) (|PolymorphicMapType_9804_12646_12680#PolymorphicMapType_9804| (Array T@Ref T@Field_12679_12680 Bool)) (|PolymorphicMapType_9804_13855_1625#PolymorphicMapType_9804| (Array T@Ref T@Field_5121_1625 Bool)) (|PolymorphicMapType_9804_13855_53#PolymorphicMapType_9804| (Array T@Ref T@Field_5121_53 Bool)) (|PolymorphicMapType_9804_13855_9329#PolymorphicMapType_9804| (Array T@Ref T@Field_5121_9329 Bool)) (|PolymorphicMapType_9804_13855_35848#PolymorphicMapType_9804| (Array T@Ref T@Field_15334_15339 Bool)) (|PolymorphicMapType_9804_13855_12680#PolymorphicMapType_9804| (Array T@Ref T@Field_13855_13856 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9255 0)) (((PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| (Array T@Ref T@Field_9315_53 Bool)) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| (Array T@Ref T@Field_9328_9329 T@Ref)) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| (Array T@Ref T@Field_13462_1625 Int)) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| (Array T@Ref T@Field_13855_13856 T@FrameType)) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| (Array T@Ref T@Field_15334_15339 T@PolymorphicMapType_9804)) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| (Array T@Ref T@Field_12661_12666 T@PolymorphicMapType_9804)) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| (Array T@Ref T@Field_5090_5122 T@FrameType)) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| (Array T@Ref T@Field_5090_12666 T@PolymorphicMapType_9804)) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| (Array T@Ref T@Field_5121_1625 Int)) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| (Array T@Ref T@Field_5121_53 Bool)) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| (Array T@Ref T@Field_5121_9329 T@Ref)) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| (Array T@Ref T@Field_12646_1214 Int)) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| (Array T@Ref T@Field_12679_12680 T@FrameType)) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| (Array T@Ref T@Field_12646_53 Bool)) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| (Array T@Ref T@Field_12646_9329 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_9315_53)
(declare-fun f_7 () T@Field_13462_1625)
(declare-fun g () T@Field_13462_1625)
(declare-fun succHeap (T@PolymorphicMapType_9255 T@PolymorphicMapType_9255) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9255 T@PolymorphicMapType_9255) Bool)
(declare-fun state (T@PolymorphicMapType_9255 T@PolymorphicMapType_9276) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9276) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9804)
(declare-fun Pair (T@Ref) T@Field_13855_13856)
(declare-fun IsPredicateField_5121_5122 (T@Field_13855_13856) Bool)
(declare-fun |sum'| (T@PolymorphicMapType_9255 T@Ref) Int)
(declare-fun dummyFunction_1848 (Int) Bool)
(declare-fun |sum#triggerStateless| (T@Ref) Int)
(declare-fun |Pair#trigger_5121| (T@PolymorphicMapType_9255 T@Field_13855_13856) Bool)
(declare-fun |Pair#everUsed_5121| (T@Field_13855_13856) Bool)
(declare-fun WandMaskField_5047 (T@Field_12679_12680) T@Field_12661_12666)
(declare-fun |wand#ft| (T@Ref Real T@Ref T@Ref Int T@Ref) T@Field_12679_12680)
(declare-fun |wand#sm| (T@Ref Real T@Ref T@Ref Int T@Ref) T@Field_12661_12666)
(declare-fun sum_1 (T@PolymorphicMapType_9255 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9255 T@PolymorphicMapType_9255 T@PolymorphicMapType_9276) Bool)
(declare-fun IsPredicateField_5047_5048 (T@Field_12679_12680) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12646 (T@Field_12679_12680) T@Field_12661_12666)
(declare-fun HasDirectPerm_12646_5122 (T@PolymorphicMapType_9276 T@Ref T@Field_12679_12680) Bool)
(declare-fun PredicateMaskField_5121 (T@Field_13855_13856) T@Field_15334_15339)
(declare-fun HasDirectPerm_5121_5122 (T@PolymorphicMapType_9276 T@Ref T@Field_13855_13856) Bool)
(declare-fun IsPredicateField_5090_32134 (T@Field_5090_5122) Bool)
(declare-fun PredicateMaskField_5090 (T@Field_5090_5122) T@Field_5090_12666)
(declare-fun HasDirectPerm_5090_5122 (T@PolymorphicMapType_9276 T@Ref T@Field_5090_5122) Bool)
(declare-fun IsWandField_5047_5048 (T@Field_12679_12680) Bool)
(declare-fun IsWandField_5121_37498 (T@Field_13855_13856) Bool)
(declare-fun WandMaskField_5121 (T@Field_13855_13856) T@Field_15334_15339)
(declare-fun IsWandField_5090_37141 (T@Field_5090_5122) Bool)
(declare-fun WandMaskField_5090 (T@Field_5090_5122) T@Field_5090_12666)
(declare-fun |Pair#sm| (T@Ref) T@Field_15334_15339)
(declare-fun dummyHeap () T@PolymorphicMapType_9255)
(declare-fun ZeroMask () T@PolymorphicMapType_9276)
(declare-fun InsidePredicate_13855_13855 (T@Field_13855_13856 T@FrameType T@Field_13855_13856 T@FrameType) Bool)
(declare-fun InsidePredicate_12646_12646 (T@Field_12679_12680 T@FrameType T@Field_12679_12680 T@FrameType) Bool)
(declare-fun InsidePredicate_9315_9315 (T@Field_5090_5122 T@FrameType T@Field_5090_5122 T@FrameType) Bool)
(declare-fun IsPredicateField_5090_1625 (T@Field_13462_1625) Bool)
(declare-fun IsWandField_5090_1625 (T@Field_13462_1625) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5032_48130 (T@Field_12661_12666) Bool)
(declare-fun IsWandField_5032_48146 (T@Field_12661_12666) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5032_9329 (T@Field_12646_9329) Bool)
(declare-fun IsWandField_5032_9329 (T@Field_12646_9329) Bool)
(declare-fun IsPredicateField_5032_53 (T@Field_12646_53) Bool)
(declare-fun IsWandField_5032_53 (T@Field_12646_53) Bool)
(declare-fun IsPredicateField_5032_1214 (T@Field_12646_1214) Bool)
(declare-fun IsWandField_5032_1214 (T@Field_12646_1214) Bool)
(declare-fun IsPredicateField_5090_47313 (T@Field_5090_12666) Bool)
(declare-fun IsWandField_5090_47329 (T@Field_5090_12666) Bool)
(declare-fun IsPredicateField_5090_9329 (T@Field_9328_9329) Bool)
(declare-fun IsWandField_5090_9329 (T@Field_9328_9329) Bool)
(declare-fun IsPredicateField_5090_53 (T@Field_9315_53) Bool)
(declare-fun IsWandField_5090_53 (T@Field_9315_53) Bool)
(declare-fun IsPredicateField_5121_46496 (T@Field_15334_15339) Bool)
(declare-fun IsWandField_5121_46512 (T@Field_15334_15339) Bool)
(declare-fun IsPredicateField_5121_9329 (T@Field_5121_9329) Bool)
(declare-fun IsWandField_5121_9329 (T@Field_5121_9329) Bool)
(declare-fun IsPredicateField_5121_53 (T@Field_5121_53) Bool)
(declare-fun IsWandField_5121_53 (T@Field_5121_53) Bool)
(declare-fun IsPredicateField_5121_1625 (T@Field_5121_1625) Bool)
(declare-fun IsWandField_5121_1625 (T@Field_5121_1625) Bool)
(declare-fun HasDirectPerm_12646_31889 (T@PolymorphicMapType_9276 T@Ref T@Field_12661_12666) Bool)
(declare-fun HasDirectPerm_12646_9329 (T@PolymorphicMapType_9276 T@Ref T@Field_12646_9329) Bool)
(declare-fun HasDirectPerm_12646_53 (T@PolymorphicMapType_9276 T@Ref T@Field_12646_53) Bool)
(declare-fun HasDirectPerm_12646_1625 (T@PolymorphicMapType_9276 T@Ref T@Field_12646_1214) Bool)
(declare-fun HasDirectPerm_5121_30755 (T@PolymorphicMapType_9276 T@Ref T@Field_15334_15339) Bool)
(declare-fun HasDirectPerm_5121_9329 (T@PolymorphicMapType_9276 T@Ref T@Field_5121_9329) Bool)
(declare-fun HasDirectPerm_5121_53 (T@PolymorphicMapType_9276 T@Ref T@Field_5121_53) Bool)
(declare-fun HasDirectPerm_5121_1625 (T@PolymorphicMapType_9276 T@Ref T@Field_5121_1625) Bool)
(declare-fun HasDirectPerm_5090_29614 (T@PolymorphicMapType_9276 T@Ref T@Field_5090_12666) Bool)
(declare-fun HasDirectPerm_5090_9329 (T@PolymorphicMapType_9276 T@Ref T@Field_9328_9329) Bool)
(declare-fun HasDirectPerm_5090_53 (T@PolymorphicMapType_9276 T@Ref T@Field_9315_53) Bool)
(declare-fun HasDirectPerm_5090_1625 (T@PolymorphicMapType_9276 T@Ref T@Field_13462_1625) Bool)
(declare-fun wand (T@Ref Real T@Ref T@Ref Int T@Ref) T@Field_12646_1214)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun getPredWandId_5032_1214 (T@Field_12646_1214) Int)
(declare-fun sumMask (T@PolymorphicMapType_9276 T@PolymorphicMapType_9276 T@PolymorphicMapType_9276) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_5121_5122 (T@Field_13855_13856) Int)
(declare-fun InsidePredicate_13855_12646 (T@Field_13855_13856 T@FrameType T@Field_12679_12680 T@FrameType) Bool)
(declare-fun InsidePredicate_13855_9315 (T@Field_13855_13856 T@FrameType T@Field_5090_5122 T@FrameType) Bool)
(declare-fun InsidePredicate_12646_13855 (T@Field_12679_12680 T@FrameType T@Field_13855_13856 T@FrameType) Bool)
(declare-fun InsidePredicate_12646_9315 (T@Field_12679_12680 T@FrameType T@Field_5090_5122 T@FrameType) Bool)
(declare-fun InsidePredicate_9315_13855 (T@Field_5090_5122 T@FrameType T@Field_13855_13856 T@FrameType) Bool)
(declare-fun InsidePredicate_9315_12646 (T@Field_5090_5122 T@FrameType T@Field_12679_12680 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_9255) (Heap1 T@PolymorphicMapType_9255) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9255) (Mask T@PolymorphicMapType_9276) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9255) (Heap1@@0 T@PolymorphicMapType_9255) (Heap2 T@PolymorphicMapType_9255) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13855_13856) ) (!  (not (select (|PolymorphicMapType_9804_13855_12680#PolymorphicMapType_9804| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_13855_12680#PolymorphicMapType_9804| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_15334_15339) ) (!  (not (select (|PolymorphicMapType_9804_13855_35848#PolymorphicMapType_9804| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_13855_35848#PolymorphicMapType_9804| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5121_9329) ) (!  (not (select (|PolymorphicMapType_9804_13855_9329#PolymorphicMapType_9804| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_13855_9329#PolymorphicMapType_9804| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5121_53) ) (!  (not (select (|PolymorphicMapType_9804_13855_53#PolymorphicMapType_9804| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_13855_53#PolymorphicMapType_9804| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5121_1625) ) (!  (not (select (|PolymorphicMapType_9804_13855_1625#PolymorphicMapType_9804| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_13855_1625#PolymorphicMapType_9804| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12679_12680) ) (!  (not (select (|PolymorphicMapType_9804_12646_12680#PolymorphicMapType_9804| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_12646_12680#PolymorphicMapType_9804| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12661_12666) ) (!  (not (select (|PolymorphicMapType_9804_12646_34800#PolymorphicMapType_9804| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_12646_34800#PolymorphicMapType_9804| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_12646_9329) ) (!  (not (select (|PolymorphicMapType_9804_12646_9329#PolymorphicMapType_9804| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_12646_9329#PolymorphicMapType_9804| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_12646_53) ) (!  (not (select (|PolymorphicMapType_9804_12646_53#PolymorphicMapType_9804| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_12646_53#PolymorphicMapType_9804| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12646_1214) ) (!  (not (select (|PolymorphicMapType_9804_12646_1625#PolymorphicMapType_9804| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_12646_1625#PolymorphicMapType_9804| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_5090_5122) ) (!  (not (select (|PolymorphicMapType_9804_5090_12680#PolymorphicMapType_9804| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_5090_12680#PolymorphicMapType_9804| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_5090_12666) ) (!  (not (select (|PolymorphicMapType_9804_5090_33752#PolymorphicMapType_9804| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_5090_33752#PolymorphicMapType_9804| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9328_9329) ) (!  (not (select (|PolymorphicMapType_9804_5090_9329#PolymorphicMapType_9804| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_5090_9329#PolymorphicMapType_9804| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9315_53) ) (!  (not (select (|PolymorphicMapType_9804_5090_53#PolymorphicMapType_9804| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_5090_53#PolymorphicMapType_9804| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_13462_1625) ) (!  (not (select (|PolymorphicMapType_9804_5090_1625#PolymorphicMapType_9804| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9804_5090_1625#PolymorphicMapType_9804| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_5121_5122 (Pair this))
 :qid |stdinbpl.331:15|
 :skolemid |34|
 :pattern ( (Pair this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9255) (p_1 T@Ref) ) (! (dummyFunction_1848 (|sum#triggerStateless| p_1))
 :qid |stdinbpl.238:15|
 :skolemid |30|
 :pattern ( (|sum'| Heap@@0 p_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9255) (this@@0 T@Ref) ) (! (|Pair#everUsed_5121| (Pair this@@0))
 :qid |stdinbpl.350:15|
 :skolemid |38|
 :pattern ( (|Pair#trigger_5121| Heap@@1 (Pair this@@0)))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 T@Ref) (arg5 Int) (arg6 T@Ref) ) (! (= (|wand#sm| arg1 arg2 arg3 arg4 arg5 arg6) (WandMaskField_5047 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6)))
 :qid |stdinbpl.203:15|
 :skolemid |26|
 :pattern ( (WandMaskField_5047 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9255) (p_1@@0 T@Ref) ) (!  (and (= (sum_1 Heap@@2 p_1@@0) (|sum'| Heap@@2 p_1@@0)) (dummyFunction_1848 (|sum#triggerStateless| p_1@@0)))
 :qid |stdinbpl.234:15|
 :skolemid |29|
 :pattern ( (sum_1 Heap@@2 p_1@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9255) (ExhaleHeap T@PolymorphicMapType_9255) (Mask@@0 T@PolymorphicMapType_9276) (pm_f_5 T@Field_12679_12680) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12646_5122 Mask@@0 null pm_f_5) (IsPredicateField_5047_5048 pm_f_5)) (= (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@3) null (PredicateMaskField_12646 pm_f_5)) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap) null (PredicateMaskField_12646 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_5047_5048 pm_f_5) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap) null (PredicateMaskField_12646 pm_f_5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9255) (ExhaleHeap@@0 T@PolymorphicMapType_9255) (Mask@@1 T@PolymorphicMapType_9276) (pm_f_5@@0 T@Field_13855_13856) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5121_5122 Mask@@1 null pm_f_5@@0) (IsPredicateField_5121_5122 pm_f_5@@0)) (= (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@4) null (PredicateMaskField_5121 pm_f_5@@0)) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@0) null (PredicateMaskField_5121 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5121_5122 pm_f_5@@0) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@0) null (PredicateMaskField_5121 pm_f_5@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9255) (ExhaleHeap@@1 T@PolymorphicMapType_9255) (Mask@@2 T@PolymorphicMapType_9276) (pm_f_5@@1 T@Field_5090_5122) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5090_5122 Mask@@2 null pm_f_5@@1) (IsPredicateField_5090_32134 pm_f_5@@1)) (= (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@5) null (PredicateMaskField_5090 pm_f_5@@1)) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@1) null (PredicateMaskField_5090 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5090_32134 pm_f_5@@1) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@1) null (PredicateMaskField_5090 pm_f_5@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9255) (ExhaleHeap@@2 T@PolymorphicMapType_9255) (Mask@@3 T@PolymorphicMapType_9276) (pm_f_5@@2 T@Field_12679_12680) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12646_5122 Mask@@3 null pm_f_5@@2) (IsWandField_5047_5048 pm_f_5@@2)) (= (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@6) null (WandMaskField_5047 pm_f_5@@2)) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@2) null (WandMaskField_5047 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_5047_5048 pm_f_5@@2) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@2) null (WandMaskField_5047 pm_f_5@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9255) (ExhaleHeap@@3 T@PolymorphicMapType_9255) (Mask@@4 T@PolymorphicMapType_9276) (pm_f_5@@3 T@Field_13855_13856) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5121_5122 Mask@@4 null pm_f_5@@3) (IsWandField_5121_37498 pm_f_5@@3)) (= (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@7) null (WandMaskField_5121 pm_f_5@@3)) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@3) null (WandMaskField_5121 pm_f_5@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsWandField_5121_37498 pm_f_5@@3) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@3) null (WandMaskField_5121 pm_f_5@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9255) (ExhaleHeap@@4 T@PolymorphicMapType_9255) (Mask@@5 T@PolymorphicMapType_9276) (pm_f_5@@4 T@Field_5090_5122) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5090_5122 Mask@@5 null pm_f_5@@4) (IsWandField_5090_37141 pm_f_5@@4)) (= (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@8) null (WandMaskField_5090 pm_f_5@@4)) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@4) null (WandMaskField_5090 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsWandField_5090_37141 pm_f_5@@4) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@4) null (WandMaskField_5090 pm_f_5@@4)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (Pair this@@1) (Pair this2)) (= this@@1 this2))
 :qid |stdinbpl.341:15|
 :skolemid |36|
 :pattern ( (Pair this@@1) (Pair this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|Pair#sm| this@@2) (|Pair#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.345:15|
 :skolemid |37|
 :pattern ( (|Pair#sm| this@@2) (|Pair#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9255) (ExhaleHeap@@5 T@PolymorphicMapType_9255) (Mask@@6 T@PolymorphicMapType_9276) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@9) o_15 $allocated) (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@5) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@5) o_15 $allocated))
)))
(assert (forall ((p T@Field_13855_13856) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13855_13855 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13855_13855 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12679_12680) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_12646_12646 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12646_12646 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_5090_5122) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9315_9315 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9315_9315 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_5090_1625 f_7)))
(assert  (not (IsWandField_5090_1625 f_7)))
(assert  (not (IsPredicateField_5090_1625 g)))
(assert  (not (IsWandField_5090_1625 g)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9255) (ExhaleHeap@@6 T@PolymorphicMapType_9255) (Mask@@7 T@PolymorphicMapType_9276) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@10 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9276) (o_2@@14 T@Ref) (f_4@@14 T@Field_12661_12666) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5032_48130 f_4@@14))) (not (IsWandField_5032_48146 f_4@@14))) (<= (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9276) (o_2@@15 T@Ref) (f_4@@15 T@Field_12646_9329) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5032_9329 f_4@@15))) (not (IsWandField_5032_9329 f_4@@15))) (<= (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9276) (o_2@@16 T@Ref) (f_4@@16 T@Field_12646_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5032_53 f_4@@16))) (not (IsWandField_5032_53 f_4@@16))) (<= (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9276) (o_2@@17 T@Ref) (f_4@@17 T@Field_12646_1214) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5032_1214 f_4@@17))) (not (IsWandField_5032_1214 f_4@@17))) (<= (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9276) (o_2@@18 T@Ref) (f_4@@18 T@Field_12679_12680) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5047_5048 f_4@@18))) (not (IsWandField_5047_5048 f_4@@18))) (<= (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9276) (o_2@@19 T@Ref) (f_4@@19 T@Field_5090_12666) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5090_47313 f_4@@19))) (not (IsWandField_5090_47329 f_4@@19))) (<= (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9276) (o_2@@20 T@Ref) (f_4@@20 T@Field_9328_9329) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5090_9329 f_4@@20))) (not (IsWandField_5090_9329 f_4@@20))) (<= (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9276) (o_2@@21 T@Ref) (f_4@@21 T@Field_9315_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5090_53 f_4@@21))) (not (IsWandField_5090_53 f_4@@21))) (<= (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9276) (o_2@@22 T@Ref) (f_4@@22 T@Field_13462_1625) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5090_1625 f_4@@22))) (not (IsWandField_5090_1625 f_4@@22))) (<= (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9276) (o_2@@23 T@Ref) (f_4@@23 T@Field_5090_5122) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5090_32134 f_4@@23))) (not (IsWandField_5090_37141 f_4@@23))) (<= (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9276) (o_2@@24 T@Ref) (f_4@@24 T@Field_15334_15339) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5121_46496 f_4@@24))) (not (IsWandField_5121_46512 f_4@@24))) (<= (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9276) (o_2@@25 T@Ref) (f_4@@25 T@Field_5121_9329) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5121_9329 f_4@@25))) (not (IsWandField_5121_9329 f_4@@25))) (<= (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9276) (o_2@@26 T@Ref) (f_4@@26 T@Field_5121_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5121_53 f_4@@26))) (not (IsWandField_5121_53 f_4@@26))) (<= (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9276) (o_2@@27 T@Ref) (f_4@@27 T@Field_5121_1625) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5121_1625 f_4@@27))) (not (IsWandField_5121_1625 f_4@@27))) (<= (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9276) (o_2@@28 T@Ref) (f_4@@28 T@Field_13855_13856) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5121_5122 f_4@@28))) (not (IsWandField_5121_37498 f_4@@28))) (<= (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9276) (o_2@@29 T@Ref) (f_4@@29 T@Field_12661_12666) ) (! (= (HasDirectPerm_12646_31889 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12646_31889 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9276) (o_2@@30 T@Ref) (f_4@@30 T@Field_12646_9329) ) (! (= (HasDirectPerm_12646_9329 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12646_9329 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9276) (o_2@@31 T@Ref) (f_4@@31 T@Field_12646_53) ) (! (= (HasDirectPerm_12646_53 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12646_53 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9276) (o_2@@32 T@Ref) (f_4@@32 T@Field_12679_12680) ) (! (= (HasDirectPerm_12646_5122 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12646_5122 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9276) (o_2@@33 T@Ref) (f_4@@33 T@Field_12646_1214) ) (! (= (HasDirectPerm_12646_1625 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12646_1625 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9276) (o_2@@34 T@Ref) (f_4@@34 T@Field_15334_15339) ) (! (= (HasDirectPerm_5121_30755 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5121_30755 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9276) (o_2@@35 T@Ref) (f_4@@35 T@Field_5121_9329) ) (! (= (HasDirectPerm_5121_9329 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5121_9329 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9276) (o_2@@36 T@Ref) (f_4@@36 T@Field_5121_53) ) (! (= (HasDirectPerm_5121_53 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5121_53 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9276) (o_2@@37 T@Ref) (f_4@@37 T@Field_13855_13856) ) (! (= (HasDirectPerm_5121_5122 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5121_5122 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9276) (o_2@@38 T@Ref) (f_4@@38 T@Field_5121_1625) ) (! (= (HasDirectPerm_5121_1625 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5121_1625 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9276) (o_2@@39 T@Ref) (f_4@@39 T@Field_5090_12666) ) (! (= (HasDirectPerm_5090_29614 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5090_29614 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9276) (o_2@@40 T@Ref) (f_4@@40 T@Field_9328_9329) ) (! (= (HasDirectPerm_5090_9329 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5090_9329 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_9276) (o_2@@41 T@Ref) (f_4@@41 T@Field_9315_53) ) (! (= (HasDirectPerm_5090_53 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5090_53 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_9276) (o_2@@42 T@Ref) (f_4@@42 T@Field_5090_5122) ) (! (= (HasDirectPerm_5090_5122 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5090_5122 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_9276) (o_2@@43 T@Ref) (f_4@@43 T@Field_13462_1625) ) (! (= (HasDirectPerm_5090_1625 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5090_1625 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 T@Ref) (arg5@@0 Int) (arg6@@0 T@Ref) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 T@Ref) (arg5_2 Int) (arg6_2 T@Ref) ) (!  (=> (= (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2)) (and (= arg1@@0 arg1_2) (and (= arg2@@0 arg2_2) (and (= arg3@@0 arg3_2) (and (= arg4@@0 arg4_2) (and (= arg5@@0 arg5_2) (= arg6@@0 arg6_2)))))))
 :qid |stdinbpl.211:15|
 :skolemid |28|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9255) (ExhaleHeap@@7 T@PolymorphicMapType_9255) (Mask@@38 T@PolymorphicMapType_9276) (o_15@@0 T@Ref) (f_23 T@Field_12661_12666) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_12646_31889 Mask@@38 o_15@@0 f_23) (= (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@11) o_15@@0 f_23) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@7) o_15@@0 f_23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@7) o_15@@0 f_23))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9255) (ExhaleHeap@@8 T@PolymorphicMapType_9255) (Mask@@39 T@PolymorphicMapType_9276) (o_15@@1 T@Ref) (f_23@@0 T@Field_12646_9329) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_12646_9329 Mask@@39 o_15@@1 f_23@@0) (= (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@12) o_15@@1 f_23@@0) (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@8) o_15@@1 f_23@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@8) o_15@@1 f_23@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9255) (ExhaleHeap@@9 T@PolymorphicMapType_9255) (Mask@@40 T@PolymorphicMapType_9276) (o_15@@2 T@Ref) (f_23@@1 T@Field_12646_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_12646_53 Mask@@40 o_15@@2 f_23@@1) (= (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@13) o_15@@2 f_23@@1) (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@9) o_15@@2 f_23@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@9) o_15@@2 f_23@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9255) (ExhaleHeap@@10 T@PolymorphicMapType_9255) (Mask@@41 T@PolymorphicMapType_9276) (o_15@@3 T@Ref) (f_23@@2 T@Field_12679_12680) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_12646_5122 Mask@@41 o_15@@3 f_23@@2) (= (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@14) o_15@@3 f_23@@2) (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@10) o_15@@3 f_23@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@10) o_15@@3 f_23@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9255) (ExhaleHeap@@11 T@PolymorphicMapType_9255) (Mask@@42 T@PolymorphicMapType_9276) (o_15@@4 T@Ref) (f_23@@3 T@Field_12646_1214) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_12646_1625 Mask@@42 o_15@@4 f_23@@3) (= (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@15) o_15@@4 f_23@@3) (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@11) o_15@@4 f_23@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@11) o_15@@4 f_23@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9255) (ExhaleHeap@@12 T@PolymorphicMapType_9255) (Mask@@43 T@PolymorphicMapType_9276) (o_15@@5 T@Ref) (f_23@@4 T@Field_15334_15339) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_5121_30755 Mask@@43 o_15@@5 f_23@@4) (= (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@16) o_15@@5 f_23@@4) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@12) o_15@@5 f_23@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@12) o_15@@5 f_23@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9255) (ExhaleHeap@@13 T@PolymorphicMapType_9255) (Mask@@44 T@PolymorphicMapType_9276) (o_15@@6 T@Ref) (f_23@@5 T@Field_5121_9329) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_5121_9329 Mask@@44 o_15@@6 f_23@@5) (= (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@17) o_15@@6 f_23@@5) (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@13) o_15@@6 f_23@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@13) o_15@@6 f_23@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9255) (ExhaleHeap@@14 T@PolymorphicMapType_9255) (Mask@@45 T@PolymorphicMapType_9276) (o_15@@7 T@Ref) (f_23@@6 T@Field_5121_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_5121_53 Mask@@45 o_15@@7 f_23@@6) (= (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@18) o_15@@7 f_23@@6) (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@14) o_15@@7 f_23@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@14) o_15@@7 f_23@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9255) (ExhaleHeap@@15 T@PolymorphicMapType_9255) (Mask@@46 T@PolymorphicMapType_9276) (o_15@@8 T@Ref) (f_23@@7 T@Field_13855_13856) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_5121_5122 Mask@@46 o_15@@8 f_23@@7) (= (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@19) o_15@@8 f_23@@7) (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@15) o_15@@8 f_23@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@15) o_15@@8 f_23@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9255) (ExhaleHeap@@16 T@PolymorphicMapType_9255) (Mask@@47 T@PolymorphicMapType_9276) (o_15@@9 T@Ref) (f_23@@8 T@Field_5121_1625) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_5121_1625 Mask@@47 o_15@@9 f_23@@8) (= (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@20) o_15@@9 f_23@@8) (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@16) o_15@@9 f_23@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@16) o_15@@9 f_23@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9255) (ExhaleHeap@@17 T@PolymorphicMapType_9255) (Mask@@48 T@PolymorphicMapType_9276) (o_15@@10 T@Ref) (f_23@@9 T@Field_5090_12666) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_5090_29614 Mask@@48 o_15@@10 f_23@@9) (= (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@21) o_15@@10 f_23@@9) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@17) o_15@@10 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@17) o_15@@10 f_23@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9255) (ExhaleHeap@@18 T@PolymorphicMapType_9255) (Mask@@49 T@PolymorphicMapType_9276) (o_15@@11 T@Ref) (f_23@@10 T@Field_9328_9329) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_5090_9329 Mask@@49 o_15@@11 f_23@@10) (= (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@22) o_15@@11 f_23@@10) (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@18) o_15@@11 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@18) o_15@@11 f_23@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9255) (ExhaleHeap@@19 T@PolymorphicMapType_9255) (Mask@@50 T@PolymorphicMapType_9276) (o_15@@12 T@Ref) (f_23@@11 T@Field_9315_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_5090_53 Mask@@50 o_15@@12 f_23@@11) (= (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@23) o_15@@12 f_23@@11) (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@19) o_15@@12 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@19) o_15@@12 f_23@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9255) (ExhaleHeap@@20 T@PolymorphicMapType_9255) (Mask@@51 T@PolymorphicMapType_9276) (o_15@@13 T@Ref) (f_23@@12 T@Field_5090_5122) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_5090_5122 Mask@@51 o_15@@13 f_23@@12) (= (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@24) o_15@@13 f_23@@12) (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@20) o_15@@13 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@20) o_15@@13 f_23@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9255) (ExhaleHeap@@21 T@PolymorphicMapType_9255) (Mask@@52 T@PolymorphicMapType_9276) (o_15@@14 T@Ref) (f_23@@13 T@Field_13462_1625) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_5090_1625 Mask@@52 o_15@@14 f_23@@13) (= (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@25) o_15@@14 f_23@@13) (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@21) o_15@@14 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@21) o_15@@14 f_23@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_12661_12666) ) (! (= (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_12646_9329) ) (! (= (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_12646_53) ) (! (= (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_12646_1214) ) (! (= (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_12679_12680) ) (! (= (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_5090_12666) ) (! (= (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_9328_9329) ) (! (= (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_9315_53) ) (! (= (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_13462_1625) ) (! (= (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_5090_5122) ) (! (= (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_15334_15339) ) (! (= (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_5121_9329) ) (! (= (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_5121_53) ) (! (= (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_5121_1625) ) (! (= (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_13855_13856) ) (! (= (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 T@Ref) (arg5@@1 Int) (arg6@@1 T@Ref) ) (! (= (getPredWandId_5032_1214 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1)) 1)
 :qid |stdinbpl.207:15|
 :skolemid |27|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9276) (SummandMask1 T@PolymorphicMapType_9276) (SummandMask2 T@PolymorphicMapType_9276) (o_2@@59 T@Ref) (f_4@@59 T@Field_12661_12666) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9276) (SummandMask1@@0 T@PolymorphicMapType_9276) (SummandMask2@@0 T@PolymorphicMapType_9276) (o_2@@60 T@Ref) (f_4@@60 T@Field_12646_9329) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9276) (SummandMask1@@1 T@PolymorphicMapType_9276) (SummandMask2@@1 T@PolymorphicMapType_9276) (o_2@@61 T@Ref) (f_4@@61 T@Field_12646_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9276) (SummandMask1@@2 T@PolymorphicMapType_9276) (SummandMask2@@2 T@PolymorphicMapType_9276) (o_2@@62 T@Ref) (f_4@@62 T@Field_12646_1214) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9276) (SummandMask1@@3 T@PolymorphicMapType_9276) (SummandMask2@@3 T@PolymorphicMapType_9276) (o_2@@63 T@Ref) (f_4@@63 T@Field_12679_12680) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9276) (SummandMask1@@4 T@PolymorphicMapType_9276) (SummandMask2@@4 T@PolymorphicMapType_9276) (o_2@@64 T@Ref) (f_4@@64 T@Field_5090_12666) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9276) (SummandMask1@@5 T@PolymorphicMapType_9276) (SummandMask2@@5 T@PolymorphicMapType_9276) (o_2@@65 T@Ref) (f_4@@65 T@Field_9328_9329) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9276) (SummandMask1@@6 T@PolymorphicMapType_9276) (SummandMask2@@6 T@PolymorphicMapType_9276) (o_2@@66 T@Ref) (f_4@@66 T@Field_9315_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9276) (SummandMask1@@7 T@PolymorphicMapType_9276) (SummandMask2@@7 T@PolymorphicMapType_9276) (o_2@@67 T@Ref) (f_4@@67 T@Field_13462_1625) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9276) (SummandMask1@@8 T@PolymorphicMapType_9276) (SummandMask2@@8 T@PolymorphicMapType_9276) (o_2@@68 T@Ref) (f_4@@68 T@Field_5090_5122) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9276) (SummandMask1@@9 T@PolymorphicMapType_9276) (SummandMask2@@9 T@PolymorphicMapType_9276) (o_2@@69 T@Ref) (f_4@@69 T@Field_15334_15339) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9276) (SummandMask1@@10 T@PolymorphicMapType_9276) (SummandMask2@@10 T@PolymorphicMapType_9276) (o_2@@70 T@Ref) (f_4@@70 T@Field_5121_9329) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_9276) (SummandMask1@@11 T@PolymorphicMapType_9276) (SummandMask2@@11 T@PolymorphicMapType_9276) (o_2@@71 T@Ref) (f_4@@71 T@Field_5121_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_9276) (SummandMask1@@12 T@PolymorphicMapType_9276) (SummandMask2@@12 T@PolymorphicMapType_9276) (o_2@@72 T@Ref) (f_4@@72 T@Field_5121_1625) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_9276) (SummandMask1@@13 T@PolymorphicMapType_9276) (SummandMask2@@13 T@PolymorphicMapType_9276) (o_2@@73 T@Ref) (f_4@@73 T@Field_13855_13856) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9255) (ExhaleHeap@@22 T@PolymorphicMapType_9255) (Mask@@53 T@PolymorphicMapType_9276) (pm_f_5@@5 T@Field_12679_12680) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_12646_5122 Mask@@53 null pm_f_5@@5) (IsPredicateField_5047_5048 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23@@14 T@Field_13462_1625) ) (!  (=> (select (|PolymorphicMapType_9804_5090_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5 f_23@@14) (= (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@26) o2_5 f_23@@14) (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5 f_23@@14))
)) (forall ((o2_5@@0 T@Ref) (f_23@@15 T@Field_9315_53) ) (!  (=> (select (|PolymorphicMapType_9804_5090_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@0 f_23@@15) (= (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@26) o2_5@@0 f_23@@15) (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@0 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@0 f_23@@15))
))) (forall ((o2_5@@1 T@Ref) (f_23@@16 T@Field_9328_9329) ) (!  (=> (select (|PolymorphicMapType_9804_5090_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@1 f_23@@16) (= (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@26) o2_5@@1 f_23@@16) (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@1 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@1 f_23@@16))
))) (forall ((o2_5@@2 T@Ref) (f_23@@17 T@Field_5090_12666) ) (!  (=> (select (|PolymorphicMapType_9804_5090_33752#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@2 f_23@@17) (= (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@26) o2_5@@2 f_23@@17) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@2 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@2 f_23@@17))
))) (forall ((o2_5@@3 T@Ref) (f_23@@18 T@Field_5090_5122) ) (!  (=> (select (|PolymorphicMapType_9804_5090_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@3 f_23@@18) (= (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@26) o2_5@@3 f_23@@18) (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@3 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@3 f_23@@18))
))) (forall ((o2_5@@4 T@Ref) (f_23@@19 T@Field_12646_1214) ) (!  (=> (select (|PolymorphicMapType_9804_12646_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@4 f_23@@19) (= (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@26) o2_5@@4 f_23@@19) (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@4 f_23@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@4 f_23@@19))
))) (forall ((o2_5@@5 T@Ref) (f_23@@20 T@Field_12646_53) ) (!  (=> (select (|PolymorphicMapType_9804_12646_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@5 f_23@@20) (= (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@26) o2_5@@5 f_23@@20) (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@5 f_23@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@5 f_23@@20))
))) (forall ((o2_5@@6 T@Ref) (f_23@@21 T@Field_12646_9329) ) (!  (=> (select (|PolymorphicMapType_9804_12646_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@6 f_23@@21) (= (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@26) o2_5@@6 f_23@@21) (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@6 f_23@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@6 f_23@@21))
))) (forall ((o2_5@@7 T@Ref) (f_23@@22 T@Field_12661_12666) ) (!  (=> (select (|PolymorphicMapType_9804_12646_34800#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@7 f_23@@22) (= (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) o2_5@@7 f_23@@22) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@7 f_23@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@7 f_23@@22))
))) (forall ((o2_5@@8 T@Ref) (f_23@@23 T@Field_12679_12680) ) (!  (=> (select (|PolymorphicMapType_9804_12646_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@8 f_23@@23) (= (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@26) o2_5@@8 f_23@@23) (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@8 f_23@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@8 f_23@@23))
))) (forall ((o2_5@@9 T@Ref) (f_23@@24 T@Field_5121_1625) ) (!  (=> (select (|PolymorphicMapType_9804_13855_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@9 f_23@@24) (= (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@26) o2_5@@9 f_23@@24) (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@9 f_23@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@9 f_23@@24))
))) (forall ((o2_5@@10 T@Ref) (f_23@@25 T@Field_5121_53) ) (!  (=> (select (|PolymorphicMapType_9804_13855_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@10 f_23@@25) (= (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@26) o2_5@@10 f_23@@25) (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@10 f_23@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@10 f_23@@25))
))) (forall ((o2_5@@11 T@Ref) (f_23@@26 T@Field_5121_9329) ) (!  (=> (select (|PolymorphicMapType_9804_13855_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@11 f_23@@26) (= (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@26) o2_5@@11 f_23@@26) (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@11 f_23@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@11 f_23@@26))
))) (forall ((o2_5@@12 T@Ref) (f_23@@27 T@Field_15334_15339) ) (!  (=> (select (|PolymorphicMapType_9804_13855_35848#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@12 f_23@@27) (= (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@26) o2_5@@12 f_23@@27) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@12 f_23@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@12 f_23@@27))
))) (forall ((o2_5@@13 T@Ref) (f_23@@28 T@Field_13855_13856) ) (!  (=> (select (|PolymorphicMapType_9804_13855_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@26) null (PredicateMaskField_12646 pm_f_5@@5))) o2_5@@13 f_23@@28) (= (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@26) o2_5@@13 f_23@@28) (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@13 f_23@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@22) o2_5@@13 f_23@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (IsPredicateField_5047_5048 pm_f_5@@5))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9255) (ExhaleHeap@@23 T@PolymorphicMapType_9255) (Mask@@54 T@PolymorphicMapType_9276) (pm_f_5@@6 T@Field_13855_13856) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_5121_5122 Mask@@54 null pm_f_5@@6) (IsPredicateField_5121_5122 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@14 T@Ref) (f_23@@29 T@Field_13462_1625) ) (!  (=> (select (|PolymorphicMapType_9804_5090_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@14 f_23@@29) (= (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@27) o2_5@@14 f_23@@29) (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@14 f_23@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@14 f_23@@29))
)) (forall ((o2_5@@15 T@Ref) (f_23@@30 T@Field_9315_53) ) (!  (=> (select (|PolymorphicMapType_9804_5090_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@15 f_23@@30) (= (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@27) o2_5@@15 f_23@@30) (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@15 f_23@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@15 f_23@@30))
))) (forall ((o2_5@@16 T@Ref) (f_23@@31 T@Field_9328_9329) ) (!  (=> (select (|PolymorphicMapType_9804_5090_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@16 f_23@@31) (= (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@27) o2_5@@16 f_23@@31) (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@16 f_23@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@16 f_23@@31))
))) (forall ((o2_5@@17 T@Ref) (f_23@@32 T@Field_5090_12666) ) (!  (=> (select (|PolymorphicMapType_9804_5090_33752#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@17 f_23@@32) (= (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@27) o2_5@@17 f_23@@32) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@17 f_23@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@17 f_23@@32))
))) (forall ((o2_5@@18 T@Ref) (f_23@@33 T@Field_5090_5122) ) (!  (=> (select (|PolymorphicMapType_9804_5090_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@18 f_23@@33) (= (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@27) o2_5@@18 f_23@@33) (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@18 f_23@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@18 f_23@@33))
))) (forall ((o2_5@@19 T@Ref) (f_23@@34 T@Field_12646_1214) ) (!  (=> (select (|PolymorphicMapType_9804_12646_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@19 f_23@@34) (= (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@27) o2_5@@19 f_23@@34) (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@19 f_23@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@19 f_23@@34))
))) (forall ((o2_5@@20 T@Ref) (f_23@@35 T@Field_12646_53) ) (!  (=> (select (|PolymorphicMapType_9804_12646_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@20 f_23@@35) (= (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@27) o2_5@@20 f_23@@35) (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@20 f_23@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@20 f_23@@35))
))) (forall ((o2_5@@21 T@Ref) (f_23@@36 T@Field_12646_9329) ) (!  (=> (select (|PolymorphicMapType_9804_12646_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@21 f_23@@36) (= (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@27) o2_5@@21 f_23@@36) (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@21 f_23@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@21 f_23@@36))
))) (forall ((o2_5@@22 T@Ref) (f_23@@37 T@Field_12661_12666) ) (!  (=> (select (|PolymorphicMapType_9804_12646_34800#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@22 f_23@@37) (= (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@27) o2_5@@22 f_23@@37) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@22 f_23@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@22 f_23@@37))
))) (forall ((o2_5@@23 T@Ref) (f_23@@38 T@Field_12679_12680) ) (!  (=> (select (|PolymorphicMapType_9804_12646_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@23 f_23@@38) (= (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@27) o2_5@@23 f_23@@38) (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@23 f_23@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@23 f_23@@38))
))) (forall ((o2_5@@24 T@Ref) (f_23@@39 T@Field_5121_1625) ) (!  (=> (select (|PolymorphicMapType_9804_13855_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@24 f_23@@39) (= (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@27) o2_5@@24 f_23@@39) (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@24 f_23@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@24 f_23@@39))
))) (forall ((o2_5@@25 T@Ref) (f_23@@40 T@Field_5121_53) ) (!  (=> (select (|PolymorphicMapType_9804_13855_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@25 f_23@@40) (= (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@27) o2_5@@25 f_23@@40) (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@25 f_23@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@25 f_23@@40))
))) (forall ((o2_5@@26 T@Ref) (f_23@@41 T@Field_5121_9329) ) (!  (=> (select (|PolymorphicMapType_9804_13855_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@26 f_23@@41) (= (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@27) o2_5@@26 f_23@@41) (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@26 f_23@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@26 f_23@@41))
))) (forall ((o2_5@@27 T@Ref) (f_23@@42 T@Field_15334_15339) ) (!  (=> (select (|PolymorphicMapType_9804_13855_35848#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@27 f_23@@42) (= (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) o2_5@@27 f_23@@42) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@27 f_23@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@27 f_23@@42))
))) (forall ((o2_5@@28 T@Ref) (f_23@@43 T@Field_13855_13856) ) (!  (=> (select (|PolymorphicMapType_9804_13855_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@27) null (PredicateMaskField_5121 pm_f_5@@6))) o2_5@@28 f_23@@43) (= (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@27) o2_5@@28 f_23@@43) (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@28 f_23@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@23) o2_5@@28 f_23@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (IsPredicateField_5121_5122 pm_f_5@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9255) (ExhaleHeap@@24 T@PolymorphicMapType_9255) (Mask@@55 T@PolymorphicMapType_9276) (pm_f_5@@7 T@Field_5090_5122) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_5090_5122 Mask@@55 null pm_f_5@@7) (IsPredicateField_5090_32134 pm_f_5@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_23@@44 T@Field_13462_1625) ) (!  (=> (select (|PolymorphicMapType_9804_5090_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@29 f_23@@44) (= (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@28) o2_5@@29 f_23@@44) (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@29 f_23@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@29 f_23@@44))
)) (forall ((o2_5@@30 T@Ref) (f_23@@45 T@Field_9315_53) ) (!  (=> (select (|PolymorphicMapType_9804_5090_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@30 f_23@@45) (= (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@28) o2_5@@30 f_23@@45) (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@30 f_23@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@30 f_23@@45))
))) (forall ((o2_5@@31 T@Ref) (f_23@@46 T@Field_9328_9329) ) (!  (=> (select (|PolymorphicMapType_9804_5090_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@31 f_23@@46) (= (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@28) o2_5@@31 f_23@@46) (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@31 f_23@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@31 f_23@@46))
))) (forall ((o2_5@@32 T@Ref) (f_23@@47 T@Field_5090_12666) ) (!  (=> (select (|PolymorphicMapType_9804_5090_33752#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@32 f_23@@47) (= (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) o2_5@@32 f_23@@47) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@32 f_23@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@32 f_23@@47))
))) (forall ((o2_5@@33 T@Ref) (f_23@@48 T@Field_5090_5122) ) (!  (=> (select (|PolymorphicMapType_9804_5090_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@33 f_23@@48) (= (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@28) o2_5@@33 f_23@@48) (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@33 f_23@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@33 f_23@@48))
))) (forall ((o2_5@@34 T@Ref) (f_23@@49 T@Field_12646_1214) ) (!  (=> (select (|PolymorphicMapType_9804_12646_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@34 f_23@@49) (= (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@28) o2_5@@34 f_23@@49) (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@34 f_23@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@34 f_23@@49))
))) (forall ((o2_5@@35 T@Ref) (f_23@@50 T@Field_12646_53) ) (!  (=> (select (|PolymorphicMapType_9804_12646_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@35 f_23@@50) (= (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@28) o2_5@@35 f_23@@50) (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@35 f_23@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@35 f_23@@50))
))) (forall ((o2_5@@36 T@Ref) (f_23@@51 T@Field_12646_9329) ) (!  (=> (select (|PolymorphicMapType_9804_12646_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@36 f_23@@51) (= (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@28) o2_5@@36 f_23@@51) (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@36 f_23@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@36 f_23@@51))
))) (forall ((o2_5@@37 T@Ref) (f_23@@52 T@Field_12661_12666) ) (!  (=> (select (|PolymorphicMapType_9804_12646_34800#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@37 f_23@@52) (= (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@28) o2_5@@37 f_23@@52) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@37 f_23@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@37 f_23@@52))
))) (forall ((o2_5@@38 T@Ref) (f_23@@53 T@Field_12679_12680) ) (!  (=> (select (|PolymorphicMapType_9804_12646_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@38 f_23@@53) (= (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@28) o2_5@@38 f_23@@53) (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@38 f_23@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@38 f_23@@53))
))) (forall ((o2_5@@39 T@Ref) (f_23@@54 T@Field_5121_1625) ) (!  (=> (select (|PolymorphicMapType_9804_13855_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@39 f_23@@54) (= (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@28) o2_5@@39 f_23@@54) (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@39 f_23@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@39 f_23@@54))
))) (forall ((o2_5@@40 T@Ref) (f_23@@55 T@Field_5121_53) ) (!  (=> (select (|PolymorphicMapType_9804_13855_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@40 f_23@@55) (= (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@28) o2_5@@40 f_23@@55) (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@40 f_23@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@40 f_23@@55))
))) (forall ((o2_5@@41 T@Ref) (f_23@@56 T@Field_5121_9329) ) (!  (=> (select (|PolymorphicMapType_9804_13855_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@41 f_23@@56) (= (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@28) o2_5@@41 f_23@@56) (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@41 f_23@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@41 f_23@@56))
))) (forall ((o2_5@@42 T@Ref) (f_23@@57 T@Field_15334_15339) ) (!  (=> (select (|PolymorphicMapType_9804_13855_35848#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@42 f_23@@57) (= (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@28) o2_5@@42 f_23@@57) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@42 f_23@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@42 f_23@@57))
))) (forall ((o2_5@@43 T@Ref) (f_23@@58 T@Field_13855_13856) ) (!  (=> (select (|PolymorphicMapType_9804_13855_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@28) null (PredicateMaskField_5090 pm_f_5@@7))) o2_5@@43 f_23@@58) (= (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@28) o2_5@@43 f_23@@58) (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@43 f_23@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@24) o2_5@@43 f_23@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (IsPredicateField_5090_32134 pm_f_5@@7))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9255) (ExhaleHeap@@25 T@PolymorphicMapType_9255) (Mask@@56 T@PolymorphicMapType_9276) (pm_f_5@@8 T@Field_12679_12680) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_12646_5122 Mask@@56 null pm_f_5@@8) (IsWandField_5047_5048 pm_f_5@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@44 T@Ref) (f_23@@59 T@Field_13462_1625) ) (!  (=> (select (|PolymorphicMapType_9804_5090_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@44 f_23@@59) (= (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@29) o2_5@@44 f_23@@59) (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@44 f_23@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@44 f_23@@59))
)) (forall ((o2_5@@45 T@Ref) (f_23@@60 T@Field_9315_53) ) (!  (=> (select (|PolymorphicMapType_9804_5090_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@45 f_23@@60) (= (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@29) o2_5@@45 f_23@@60) (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@45 f_23@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@45 f_23@@60))
))) (forall ((o2_5@@46 T@Ref) (f_23@@61 T@Field_9328_9329) ) (!  (=> (select (|PolymorphicMapType_9804_5090_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@46 f_23@@61) (= (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@29) o2_5@@46 f_23@@61) (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@46 f_23@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@46 f_23@@61))
))) (forall ((o2_5@@47 T@Ref) (f_23@@62 T@Field_5090_12666) ) (!  (=> (select (|PolymorphicMapType_9804_5090_33752#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@47 f_23@@62) (= (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@29) o2_5@@47 f_23@@62) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@47 f_23@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@47 f_23@@62))
))) (forall ((o2_5@@48 T@Ref) (f_23@@63 T@Field_5090_5122) ) (!  (=> (select (|PolymorphicMapType_9804_5090_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@48 f_23@@63) (= (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@29) o2_5@@48 f_23@@63) (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@48 f_23@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@48 f_23@@63))
))) (forall ((o2_5@@49 T@Ref) (f_23@@64 T@Field_12646_1214) ) (!  (=> (select (|PolymorphicMapType_9804_12646_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@49 f_23@@64) (= (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@29) o2_5@@49 f_23@@64) (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@49 f_23@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@49 f_23@@64))
))) (forall ((o2_5@@50 T@Ref) (f_23@@65 T@Field_12646_53) ) (!  (=> (select (|PolymorphicMapType_9804_12646_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@50 f_23@@65) (= (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@29) o2_5@@50 f_23@@65) (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@50 f_23@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@50 f_23@@65))
))) (forall ((o2_5@@51 T@Ref) (f_23@@66 T@Field_12646_9329) ) (!  (=> (select (|PolymorphicMapType_9804_12646_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@51 f_23@@66) (= (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@29) o2_5@@51 f_23@@66) (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@51 f_23@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@51 f_23@@66))
))) (forall ((o2_5@@52 T@Ref) (f_23@@67 T@Field_12661_12666) ) (!  (=> (select (|PolymorphicMapType_9804_12646_34800#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@52 f_23@@67) (= (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) o2_5@@52 f_23@@67) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@52 f_23@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@52 f_23@@67))
))) (forall ((o2_5@@53 T@Ref) (f_23@@68 T@Field_12679_12680) ) (!  (=> (select (|PolymorphicMapType_9804_12646_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@53 f_23@@68) (= (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@29) o2_5@@53 f_23@@68) (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@53 f_23@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@53 f_23@@68))
))) (forall ((o2_5@@54 T@Ref) (f_23@@69 T@Field_5121_1625) ) (!  (=> (select (|PolymorphicMapType_9804_13855_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@54 f_23@@69) (= (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@29) o2_5@@54 f_23@@69) (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@54 f_23@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@54 f_23@@69))
))) (forall ((o2_5@@55 T@Ref) (f_23@@70 T@Field_5121_53) ) (!  (=> (select (|PolymorphicMapType_9804_13855_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@55 f_23@@70) (= (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@29) o2_5@@55 f_23@@70) (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@55 f_23@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@55 f_23@@70))
))) (forall ((o2_5@@56 T@Ref) (f_23@@71 T@Field_5121_9329) ) (!  (=> (select (|PolymorphicMapType_9804_13855_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@56 f_23@@71) (= (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@29) o2_5@@56 f_23@@71) (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@56 f_23@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@56 f_23@@71))
))) (forall ((o2_5@@57 T@Ref) (f_23@@72 T@Field_15334_15339) ) (!  (=> (select (|PolymorphicMapType_9804_13855_35848#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@57 f_23@@72) (= (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@29) o2_5@@57 f_23@@72) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@57 f_23@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@57 f_23@@72))
))) (forall ((o2_5@@58 T@Ref) (f_23@@73 T@Field_13855_13856) ) (!  (=> (select (|PolymorphicMapType_9804_13855_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@29) null (WandMaskField_5047 pm_f_5@@8))) o2_5@@58 f_23@@73) (= (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@29) o2_5@@58 f_23@@73) (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@58 f_23@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@25) o2_5@@58 f_23@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (IsWandField_5047_5048 pm_f_5@@8))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9255) (ExhaleHeap@@26 T@PolymorphicMapType_9255) (Mask@@57 T@PolymorphicMapType_9276) (pm_f_5@@9 T@Field_13855_13856) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_5121_5122 Mask@@57 null pm_f_5@@9) (IsWandField_5121_37498 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_23@@74 T@Field_13462_1625) ) (!  (=> (select (|PolymorphicMapType_9804_5090_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@59 f_23@@74) (= (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@30) o2_5@@59 f_23@@74) (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@59 f_23@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@59 f_23@@74))
)) (forall ((o2_5@@60 T@Ref) (f_23@@75 T@Field_9315_53) ) (!  (=> (select (|PolymorphicMapType_9804_5090_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@60 f_23@@75) (= (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@30) o2_5@@60 f_23@@75) (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@60 f_23@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@60 f_23@@75))
))) (forall ((o2_5@@61 T@Ref) (f_23@@76 T@Field_9328_9329) ) (!  (=> (select (|PolymorphicMapType_9804_5090_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@61 f_23@@76) (= (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@30) o2_5@@61 f_23@@76) (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@61 f_23@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@61 f_23@@76))
))) (forall ((o2_5@@62 T@Ref) (f_23@@77 T@Field_5090_12666) ) (!  (=> (select (|PolymorphicMapType_9804_5090_33752#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@62 f_23@@77) (= (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@30) o2_5@@62 f_23@@77) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@62 f_23@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@62 f_23@@77))
))) (forall ((o2_5@@63 T@Ref) (f_23@@78 T@Field_5090_5122) ) (!  (=> (select (|PolymorphicMapType_9804_5090_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@63 f_23@@78) (= (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@30) o2_5@@63 f_23@@78) (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@63 f_23@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@63 f_23@@78))
))) (forall ((o2_5@@64 T@Ref) (f_23@@79 T@Field_12646_1214) ) (!  (=> (select (|PolymorphicMapType_9804_12646_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@64 f_23@@79) (= (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@30) o2_5@@64 f_23@@79) (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@64 f_23@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@64 f_23@@79))
))) (forall ((o2_5@@65 T@Ref) (f_23@@80 T@Field_12646_53) ) (!  (=> (select (|PolymorphicMapType_9804_12646_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@65 f_23@@80) (= (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@30) o2_5@@65 f_23@@80) (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@65 f_23@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@65 f_23@@80))
))) (forall ((o2_5@@66 T@Ref) (f_23@@81 T@Field_12646_9329) ) (!  (=> (select (|PolymorphicMapType_9804_12646_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@66 f_23@@81) (= (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@30) o2_5@@66 f_23@@81) (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@66 f_23@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@66 f_23@@81))
))) (forall ((o2_5@@67 T@Ref) (f_23@@82 T@Field_12661_12666) ) (!  (=> (select (|PolymorphicMapType_9804_12646_34800#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@67 f_23@@82) (= (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@30) o2_5@@67 f_23@@82) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@67 f_23@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@67 f_23@@82))
))) (forall ((o2_5@@68 T@Ref) (f_23@@83 T@Field_12679_12680) ) (!  (=> (select (|PolymorphicMapType_9804_12646_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@68 f_23@@83) (= (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@30) o2_5@@68 f_23@@83) (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@68 f_23@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@68 f_23@@83))
))) (forall ((o2_5@@69 T@Ref) (f_23@@84 T@Field_5121_1625) ) (!  (=> (select (|PolymorphicMapType_9804_13855_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@69 f_23@@84) (= (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@30) o2_5@@69 f_23@@84) (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@69 f_23@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@69 f_23@@84))
))) (forall ((o2_5@@70 T@Ref) (f_23@@85 T@Field_5121_53) ) (!  (=> (select (|PolymorphicMapType_9804_13855_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@70 f_23@@85) (= (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@30) o2_5@@70 f_23@@85) (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@70 f_23@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@70 f_23@@85))
))) (forall ((o2_5@@71 T@Ref) (f_23@@86 T@Field_5121_9329) ) (!  (=> (select (|PolymorphicMapType_9804_13855_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@71 f_23@@86) (= (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@30) o2_5@@71 f_23@@86) (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@71 f_23@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@71 f_23@@86))
))) (forall ((o2_5@@72 T@Ref) (f_23@@87 T@Field_15334_15339) ) (!  (=> (select (|PolymorphicMapType_9804_13855_35848#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@72 f_23@@87) (= (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) o2_5@@72 f_23@@87) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@72 f_23@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@72 f_23@@87))
))) (forall ((o2_5@@73 T@Ref) (f_23@@88 T@Field_13855_13856) ) (!  (=> (select (|PolymorphicMapType_9804_13855_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@30) null (WandMaskField_5121 pm_f_5@@9))) o2_5@@73 f_23@@88) (= (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@30) o2_5@@73 f_23@@88) (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@73 f_23@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@26) o2_5@@73 f_23@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (IsWandField_5121_37498 pm_f_5@@9))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9255) (ExhaleHeap@@27 T@PolymorphicMapType_9255) (Mask@@58 T@PolymorphicMapType_9276) (pm_f_5@@10 T@Field_5090_5122) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_5090_5122 Mask@@58 null pm_f_5@@10) (IsWandField_5090_37141 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@74 T@Ref) (f_23@@89 T@Field_13462_1625) ) (!  (=> (select (|PolymorphicMapType_9804_5090_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@74 f_23@@89) (= (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@31) o2_5@@74 f_23@@89) (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@74 f_23@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@74 f_23@@89))
)) (forall ((o2_5@@75 T@Ref) (f_23@@90 T@Field_9315_53) ) (!  (=> (select (|PolymorphicMapType_9804_5090_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@75 f_23@@90) (= (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@31) o2_5@@75 f_23@@90) (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@75 f_23@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@75 f_23@@90))
))) (forall ((o2_5@@76 T@Ref) (f_23@@91 T@Field_9328_9329) ) (!  (=> (select (|PolymorphicMapType_9804_5090_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@76 f_23@@91) (= (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@31) o2_5@@76 f_23@@91) (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@76 f_23@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@76 f_23@@91))
))) (forall ((o2_5@@77 T@Ref) (f_23@@92 T@Field_5090_12666) ) (!  (=> (select (|PolymorphicMapType_9804_5090_33752#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@77 f_23@@92) (= (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) o2_5@@77 f_23@@92) (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@77 f_23@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@77 f_23@@92))
))) (forall ((o2_5@@78 T@Ref) (f_23@@93 T@Field_5090_5122) ) (!  (=> (select (|PolymorphicMapType_9804_5090_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@78 f_23@@93) (= (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@31) o2_5@@78 f_23@@93) (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@78 f_23@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@78 f_23@@93))
))) (forall ((o2_5@@79 T@Ref) (f_23@@94 T@Field_12646_1214) ) (!  (=> (select (|PolymorphicMapType_9804_12646_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@79 f_23@@94) (= (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@31) o2_5@@79 f_23@@94) (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@79 f_23@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@79 f_23@@94))
))) (forall ((o2_5@@80 T@Ref) (f_23@@95 T@Field_12646_53) ) (!  (=> (select (|PolymorphicMapType_9804_12646_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@80 f_23@@95) (= (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@31) o2_5@@80 f_23@@95) (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@80 f_23@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@80 f_23@@95))
))) (forall ((o2_5@@81 T@Ref) (f_23@@96 T@Field_12646_9329) ) (!  (=> (select (|PolymorphicMapType_9804_12646_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@81 f_23@@96) (= (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@31) o2_5@@81 f_23@@96) (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@81 f_23@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@81 f_23@@96))
))) (forall ((o2_5@@82 T@Ref) (f_23@@97 T@Field_12661_12666) ) (!  (=> (select (|PolymorphicMapType_9804_12646_34800#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@82 f_23@@97) (= (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@31) o2_5@@82 f_23@@97) (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@82 f_23@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@82 f_23@@97))
))) (forall ((o2_5@@83 T@Ref) (f_23@@98 T@Field_12679_12680) ) (!  (=> (select (|PolymorphicMapType_9804_12646_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@83 f_23@@98) (= (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@31) o2_5@@83 f_23@@98) (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@83 f_23@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@83 f_23@@98))
))) (forall ((o2_5@@84 T@Ref) (f_23@@99 T@Field_5121_1625) ) (!  (=> (select (|PolymorphicMapType_9804_13855_1625#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@84 f_23@@99) (= (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@31) o2_5@@84 f_23@@99) (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@84 f_23@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@84 f_23@@99))
))) (forall ((o2_5@@85 T@Ref) (f_23@@100 T@Field_5121_53) ) (!  (=> (select (|PolymorphicMapType_9804_13855_53#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@85 f_23@@100) (= (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@31) o2_5@@85 f_23@@100) (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@85 f_23@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@85 f_23@@100))
))) (forall ((o2_5@@86 T@Ref) (f_23@@101 T@Field_5121_9329) ) (!  (=> (select (|PolymorphicMapType_9804_13855_9329#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@86 f_23@@101) (= (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@31) o2_5@@86 f_23@@101) (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@86 f_23@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@86 f_23@@101))
))) (forall ((o2_5@@87 T@Ref) (f_23@@102 T@Field_15334_15339) ) (!  (=> (select (|PolymorphicMapType_9804_13855_35848#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@87 f_23@@102) (= (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@31) o2_5@@87 f_23@@102) (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@87 f_23@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@87 f_23@@102))
))) (forall ((o2_5@@88 T@Ref) (f_23@@103 T@Field_13855_13856) ) (!  (=> (select (|PolymorphicMapType_9804_13855_12680#PolymorphicMapType_9804| (select (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@31) null (WandMaskField_5090 pm_f_5@@10))) o2_5@@88 f_23@@103) (= (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@31) o2_5@@88 f_23@@103) (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@88 f_23@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| ExhaleHeap@@27) o2_5@@88 f_23@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (IsWandField_5090_37141 pm_f_5@@10))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9255) (Mask@@59 T@PolymorphicMapType_9276) (p_1@@1 T@Ref) ) (!  (=> (and (state Heap@@32 Mask@@59) (< AssumeFunctionsAbove 0)) (= (sum_1 Heap@@32 p_1@@1) (+ (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@32) p_1@@1 f_7) (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@32) p_1@@1 g))))
 :qid |stdinbpl.244:15|
 :skolemid |31|
 :pattern ( (state Heap@@32 Mask@@59) (sum_1 Heap@@32 p_1@@1))
 :pattern ( (state Heap@@32 Mask@@59) (|sum#triggerStateless| p_1@@1) (|Pair#trigger_5121| Heap@@32 (Pair p_1@@1)))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 T@Ref) (arg5@@2 Int) (arg6@@2 T@Ref) ) (! (IsWandField_5032_1214 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 T@Ref) (arg5@@3 Int) (arg6@@3 T@Ref) ) (! (IsWandField_5047_5048 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3))
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 T@Ref) (arg5@@4 Int) (arg6@@4 T@Ref) ) (!  (not (IsPredicateField_5032_1214 (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4)))
 :qid |stdinbpl.195:15|
 :skolemid |24|
 :pattern ( (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 T@Ref) (arg5@@5 Int) (arg6@@5 T@Ref) ) (!  (not (IsPredicateField_5047_5048 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5)))
 :qid |stdinbpl.199:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9255) (Mask@@60 T@PolymorphicMapType_9276) (p_1@@2 T@Ref) ) (!  (=> (state Heap@@33 Mask@@60) (= (|sum'| Heap@@33 p_1@@2) (|sum#frame| (select (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@33) null (Pair p_1@@2)) p_1@@2)))
 :qid |stdinbpl.251:15|
 :skolemid |32|
 :pattern ( (state Heap@@33 Mask@@60) (|sum'| Heap@@33 p_1@@2))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_5121_5122 (Pair this@@3)) 0)
 :qid |stdinbpl.335:15|
 :skolemid |35|
 :pattern ( (Pair this@@3))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9255) (o_14 T@Ref) (f_24 T@Field_12661_12666) (v T@PolymorphicMapType_9804) ) (! (succHeap Heap@@34 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@34) (store (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@34) o_14 f_24 v) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@34) (store (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@34) o_14 f_24 v) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@34) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9255) (o_14@@0 T@Ref) (f_24@@0 T@Field_12679_12680) (v@@0 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@35) (store (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@35) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@35) (store (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@35) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@35) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9255) (o_14@@1 T@Ref) (f_24@@1 T@Field_12646_1214) (v@@1 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@36) (store (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@36) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@36) (store (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@36) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@36) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9255) (o_14@@2 T@Ref) (f_24@@2 T@Field_12646_9329) (v@@2 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@37) (store (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@37) o_14@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@37) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@37) (store (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@37) o_14@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9255) (o_14@@3 T@Ref) (f_24@@3 T@Field_12646_53) (v@@3 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@38) (store (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@38) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@38) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@38) (store (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@38) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9255) (o_14@@4 T@Ref) (f_24@@4 T@Field_15334_15339) (v@@4 T@PolymorphicMapType_9804) ) (! (succHeap Heap@@39 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@39) (store (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@39) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@39) (store (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@39) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@39) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9255) (o_14@@5 T@Ref) (f_24@@5 T@Field_13855_13856) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@40) (store (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@40) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@40) (store (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@40) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@40) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9255) (o_14@@6 T@Ref) (f_24@@6 T@Field_5121_1625) (v@@6 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@41) (store (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@41) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@41) (store (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@41) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@41) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9255) (o_14@@7 T@Ref) (f_24@@7 T@Field_5121_9329) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@42) (store (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@42) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@42) (store (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@42) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@42) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9255) (o_14@@8 T@Ref) (f_24@@8 T@Field_5121_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@43) (store (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@43) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@43) (store (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@43) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@43) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9255) (o_14@@9 T@Ref) (f_24@@9 T@Field_5090_12666) (v@@9 T@PolymorphicMapType_9804) ) (! (succHeap Heap@@44 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@44) (store (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@44) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@44) (store (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@44) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@44) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_9255) (o_14@@10 T@Ref) (f_24@@10 T@Field_5090_5122) (v@@10 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@45) (store (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@45) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@45) (store (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@45) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@45) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_9255) (o_14@@11 T@Ref) (f_24@@11 T@Field_13462_1625) (v@@11 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@46) (store (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@46) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@46) (store (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@46) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@46) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_9255) (o_14@@12 T@Ref) (f_24@@12 T@Field_9328_9329) (v@@12 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@47) (store (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@47) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@47) (store (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@47) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@47) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_9255) (o_14@@13 T@Ref) (f_24@@13 T@Field_9315_53) (v@@13 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_9255 (store (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@48) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9255 (store (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@48) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@48) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@48)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_5121 (Pair this@@4)) (|Pair#sm| this@@4))
 :qid |stdinbpl.327:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_5121 (Pair this@@4)))
)))
(assert (forall ((o_14@@14 T@Ref) (f_22 T@Field_9328_9329) (Heap@@49 T@PolymorphicMapType_9255) ) (!  (=> (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@49) o_14@@14 $allocated) (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@49) (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@49) o_14@@14 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@49) o_14@@14 f_22))
)))
(assert (forall ((p@@3 T@Field_13855_13856) (v_1@@2 T@FrameType) (q T@Field_13855_13856) (w@@2 T@FrameType) (r T@Field_13855_13856) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13855_13855 p@@3 v_1@@2 q w@@2) (InsidePredicate_13855_13855 q w@@2 r u)) (InsidePredicate_13855_13855 p@@3 v_1@@2 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13855_13855 p@@3 v_1@@2 q w@@2) (InsidePredicate_13855_13855 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_13855_13856) (v_1@@3 T@FrameType) (q@@0 T@Field_13855_13856) (w@@3 T@FrameType) (r@@0 T@Field_12679_12680) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13855_13855 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_13855_12646 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_13855_12646 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13855_13855 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_13855_12646 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_13855_13856) (v_1@@4 T@FrameType) (q@@1 T@Field_13855_13856) (w@@4 T@FrameType) (r@@1 T@Field_5090_5122) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13855_13855 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_13855_9315 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_13855_9315 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13855_13855 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_13855_9315 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_13855_13856) (v_1@@5 T@FrameType) (q@@2 T@Field_12679_12680) (w@@5 T@FrameType) (r@@2 T@Field_13855_13856) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13855_12646 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_12646_13855 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_13855_13855 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13855_12646 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_12646_13855 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_13855_13856) (v_1@@6 T@FrameType) (q@@3 T@Field_12679_12680) (w@@6 T@FrameType) (r@@3 T@Field_12679_12680) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_13855_12646 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_12646_12646 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_13855_12646 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13855_12646 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_12646_12646 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_13855_13856) (v_1@@7 T@FrameType) (q@@4 T@Field_12679_12680) (w@@7 T@FrameType) (r@@4 T@Field_5090_5122) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_13855_12646 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_12646_9315 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_13855_9315 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13855_12646 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_12646_9315 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_13855_13856) (v_1@@8 T@FrameType) (q@@5 T@Field_5090_5122) (w@@8 T@FrameType) (r@@5 T@Field_13855_13856) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_13855_9315 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9315_13855 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_13855_13855 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13855_9315 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9315_13855 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_13855_13856) (v_1@@9 T@FrameType) (q@@6 T@Field_5090_5122) (w@@9 T@FrameType) (r@@6 T@Field_12679_12680) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_13855_9315 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9315_12646 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_13855_12646 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13855_9315 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9315_12646 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_13855_13856) (v_1@@10 T@FrameType) (q@@7 T@Field_5090_5122) (w@@10 T@FrameType) (r@@7 T@Field_5090_5122) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_13855_9315 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9315_9315 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_13855_9315 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13855_9315 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9315_9315 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_12679_12680) (v_1@@11 T@FrameType) (q@@8 T@Field_13855_13856) (w@@11 T@FrameType) (r@@8 T@Field_13855_13856) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_13855 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_13855_13855 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_12646_13855 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_13855 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_13855_13855 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_12679_12680) (v_1@@12 T@FrameType) (q@@9 T@Field_13855_13856) (w@@12 T@FrameType) (r@@9 T@Field_12679_12680) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_13855 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_13855_12646 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_12646_12646 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_13855 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_13855_12646 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_12679_12680) (v_1@@13 T@FrameType) (q@@10 T@Field_13855_13856) (w@@13 T@FrameType) (r@@10 T@Field_5090_5122) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_13855 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_13855_9315 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_12646_9315 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_13855 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_13855_9315 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_12679_12680) (v_1@@14 T@FrameType) (q@@11 T@Field_12679_12680) (w@@14 T@FrameType) (r@@11 T@Field_13855_13856) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_12646 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_12646_13855 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_12646_13855 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_12646 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_12646_13855 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_12679_12680) (v_1@@15 T@FrameType) (q@@12 T@Field_12679_12680) (w@@15 T@FrameType) (r@@12 T@Field_12679_12680) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_12646 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_12646_12646 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_12646_12646 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_12646 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_12646_12646 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_12679_12680) (v_1@@16 T@FrameType) (q@@13 T@Field_12679_12680) (w@@16 T@FrameType) (r@@13 T@Field_5090_5122) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_12646 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_12646_9315 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_12646_9315 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_12646 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_12646_9315 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_12679_12680) (v_1@@17 T@FrameType) (q@@14 T@Field_5090_5122) (w@@17 T@FrameType) (r@@14 T@Field_13855_13856) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_9315 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9315_13855 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_12646_13855 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_9315 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9315_13855 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_12679_12680) (v_1@@18 T@FrameType) (q@@15 T@Field_5090_5122) (w@@18 T@FrameType) (r@@15 T@Field_12679_12680) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_9315 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9315_12646 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_12646_12646 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_9315 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9315_12646 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_12679_12680) (v_1@@19 T@FrameType) (q@@16 T@Field_5090_5122) (w@@19 T@FrameType) (r@@16 T@Field_5090_5122) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_12646_9315 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9315_9315 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_12646_9315 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12646_9315 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9315_9315 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_5090_5122) (v_1@@20 T@FrameType) (q@@17 T@Field_13855_13856) (w@@20 T@FrameType) (r@@17 T@Field_13855_13856) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9315_13855 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_13855_13855 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_9315_13855 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9315_13855 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_13855_13855 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_5090_5122) (v_1@@21 T@FrameType) (q@@18 T@Field_13855_13856) (w@@21 T@FrameType) (r@@18 T@Field_12679_12680) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9315_13855 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_13855_12646 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_9315_12646 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9315_13855 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_13855_12646 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_5090_5122) (v_1@@22 T@FrameType) (q@@19 T@Field_13855_13856) (w@@22 T@FrameType) (r@@19 T@Field_5090_5122) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9315_13855 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_13855_9315 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_9315_9315 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9315_13855 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_13855_9315 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_5090_5122) (v_1@@23 T@FrameType) (q@@20 T@Field_12679_12680) (w@@23 T@FrameType) (r@@20 T@Field_13855_13856) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9315_12646 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_12646_13855 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_9315_13855 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9315_12646 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_12646_13855 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_5090_5122) (v_1@@24 T@FrameType) (q@@21 T@Field_12679_12680) (w@@24 T@FrameType) (r@@21 T@Field_12679_12680) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9315_12646 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_12646_12646 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_9315_12646 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9315_12646 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_12646_12646 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_5090_5122) (v_1@@25 T@FrameType) (q@@22 T@Field_12679_12680) (w@@25 T@FrameType) (r@@22 T@Field_5090_5122) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9315_12646 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_12646_9315 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_9315_9315 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9315_12646 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_12646_9315 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_5090_5122) (v_1@@26 T@FrameType) (q@@23 T@Field_5090_5122) (w@@26 T@FrameType) (r@@23 T@Field_13855_13856) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9315_9315 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9315_13855 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_9315_13855 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9315_9315 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9315_13855 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_5090_5122) (v_1@@27 T@FrameType) (q@@24 T@Field_5090_5122) (w@@27 T@FrameType) (r@@24 T@Field_12679_12680) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9315_9315 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9315_12646 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_9315_12646 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9315_9315 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9315_12646 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_5090_5122) (v_1@@28 T@FrameType) (q@@25 T@Field_5090_5122) (w@@28 T@FrameType) (r@@25 T@Field_5090_5122) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9315_9315 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9315_9315 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_9315_9315 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9315_9315 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9315_9315 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun WandDefLHSMask@0 () T@PolymorphicMapType_9276)
(declare-fun p_1@@3 () T@Ref)
(declare-fun WandDefRHSMask@0 () T@PolymorphicMapType_9276)
(declare-fun WandDefLHSHeap@0 () T@PolymorphicMapType_9255)
(declare-fun WandDefRHSHeap@0 () T@PolymorphicMapType_9255)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_9255)
(declare-fun Mask@4 () T@PolymorphicMapType_9276)
(declare-fun Mask@3 () T@PolymorphicMapType_9276)
(declare-fun Mask@2 () T@PolymorphicMapType_9276)
(declare-fun Heap@0 () T@PolymorphicMapType_9255)
(declare-fun Labellhs4Heap () T@PolymorphicMapType_9255)
(declare-fun Mask@1 () T@PolymorphicMapType_9276)
(declare-fun Mask@0 () T@PolymorphicMapType_9276)
(declare-fun Heap@@50 () T@PolymorphicMapType_9255)
(set-info :boogie-vc-id test2_1)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon10_Else_correct  (=> (= (ControlFlow 0 15) (- 0 14)) (HasDirectPerm_5090_1625 WandDefLHSMask@0 p_1@@3 g))))
(let ((anon10_Then_correct  (=> (= (ControlFlow 0 13) (- 0 12)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| WandDefRHSMask@0) null (Pair p_1@@3)))))))
(let ((anon9_Then_correct  (=> (and (and (and (not (= p_1@@3 null)) (= WandDefLHSMask@0 (PolymorphicMapType_9276 (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| ZeroMask) (store (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| ZeroMask) p_1@@3 g (+ (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| ZeroMask) p_1@@3 g) FullPerm)) (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| ZeroMask)))) (and (state WandDefLHSHeap@0 WandDefLHSMask@0) (state WandDefLHSHeap@0 WandDefLHSMask@0))) (and (and (state WandDefLHSHeap@0 WandDefLHSMask@0) (= WandDefRHSMask@0 (PolymorphicMapType_9276 (store (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| ZeroMask) null (Pair p_1@@3) (+ (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| ZeroMask) null (Pair p_1@@3)) FullPerm)) (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| ZeroMask)))) (and (state WandDefRHSHeap@0 WandDefRHSMask@0) (state WandDefRHSHeap@0 WandDefRHSMask@0)))) (and (=> (= (ControlFlow 0 16) 13) anon10_Then_correct) (=> (= (ControlFlow 0 16) 15) anon10_Else_correct)))))
(let ((anon12_Else_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= (sum_1 ExhaleHeap@0 p_1@@3) 13))))
(let ((anon12_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| Mask@4) null (Pair p_1@@3)))))))
(let ((anon6_correct  (=> (and (= Mask@3 (PolymorphicMapType_9276 (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| Mask@2) (store (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@2) p_1@@3 g (- (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@2) p_1@@3 g) FullPerm)) (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| Mask@2) (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| Mask@2))) (state Heap@0 Mask@3)) (=> (and (and (and (= Mask@4 (PolymorphicMapType_9276 (store (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| Mask@3) null (Pair p_1@@3) (+ (select (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| Mask@3) null (Pair p_1@@3)) FullPerm)) (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| Mask@3) (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| Mask@3))) (state Heap@0 Mask@4)) (and (state Heap@0 Mask@4) (= (sum_1 Heap@0 p_1@@3) (+ 10 (select (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Labellhs4Heap) p_1@@3 g))))) (and (and (state Heap@0 Mask@4) (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 Mask@4)) (and (state ExhaleHeap@0 Mask@4) (state ExhaleHeap@0 Mask@4)))) (and (=> (= (ControlFlow 0 5) 2) anon12_Then_correct) (=> (= (ControlFlow 0 5) 4) anon12_Else_correct))))))
(let ((anon11_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 8) 5)) anon6_correct)))
(let ((anon11_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= FullPerm (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@2) p_1@@3 g))) (=> (<= FullPerm (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@2) p_1@@3 g)) (=> (= (ControlFlow 0 6) 5) anon6_correct))))))
(let ((anon9_Else_correct  (=> (= Mask@1 (PolymorphicMapType_9276 (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@0) (store (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@0) null (wand p_1@@3 FullPerm p_1@@3 p_1@@3 10 p_1@@3) (+ (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@0) null (wand p_1@@3 FullPerm p_1@@3 p_1@@3 10 p_1@@3)) FullPerm)) (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| Mask@0) (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| Mask@0))) (=> (and (state Heap@@50 Mask@1) (state Heap@@50 Mask@1)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (= FullPerm (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@1) p_1@@3 g))) (=> (= FullPerm (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@1) p_1@@3 g)) (=> (and (= Heap@0 (PolymorphicMapType_9255 (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_4902_4903#PolymorphicMapType_9255| Heap@@50) (store (|PolymorphicMapType_9255_5090_1625#PolymorphicMapType_9255| Heap@@50) p_1@@3 g 3) (|PolymorphicMapType_9255_5121_5122#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_5125_15426#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_5039_19474#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_5090_5122#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_5090_29656#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_5121_1625#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_5121_53#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_5121_9329#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_12646_1625#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_12646_5122#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_12646_53#PolymorphicMapType_9255| Heap@@50) (|PolymorphicMapType_9255_12646_9329#PolymorphicMapType_9255| Heap@@50))) (state Heap@0 Mask@1)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@1) null (wand p_1@@3 FullPerm p_1@@3 p_1@@3 10 p_1@@3)))) (=> (<= FullPerm (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@1) null (wand p_1@@3 FullPerm p_1@@3 p_1@@3 10 p_1@@3))) (=> (and (= Mask@2 (PolymorphicMapType_9276 (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| Mask@1) (store (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@1) null (wand p_1@@3 FullPerm p_1@@3 p_1@@3 10 p_1@@3) (- (select (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| Mask@1) null (wand p_1@@3 FullPerm p_1@@3 p_1@@3 10 p_1@@3)) FullPerm)) (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| Mask@1) (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| Mask@1))) (state Heap@0 Mask@2)) (and (=> (= (ControlFlow 0 9) 6) anon11_Then_correct) (=> (= (ControlFlow 0 9) 8) anon11_Else_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@50 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_9255_4899_53#PolymorphicMapType_9255| Heap@@50) p_1@@3 $allocated) (not (= p_1@@3 null)))) (and (and (= Mask@0 (PolymorphicMapType_9276 (|PolymorphicMapType_9276_5121_5122#PolymorphicMapType_9276| ZeroMask) (store (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| ZeroMask) p_1@@3 g (+ (select (|PolymorphicMapType_9276_5090_1625#PolymorphicMapType_9276| ZeroMask) p_1@@3 g) FullPerm)) (|PolymorphicMapType_9276_5032_1214#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_1625#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_53#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_9329#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5121_43861#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_5122#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_53#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_9329#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5090_44275#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_5122#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_53#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_9329#PolymorphicMapType_9276| ZeroMask) (|PolymorphicMapType_9276_5032_44689#PolymorphicMapType_9276| ZeroMask))) (state Heap@@50 Mask@0)) (and (state Heap@@50 Mask@0) (state Heap@@50 Mask@0)))) (and (=> (= (ControlFlow 0 17) 16) anon9_Then_correct) (=> (= (ControlFlow 0 17) 9) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 17) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
