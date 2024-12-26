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
(declare-sort T@Field_9357_53 0)
(declare-sort T@Field_9370_9371 0)
(declare-sort T@Field_13619_1736 0)
(declare-sort T@Field_13716_13717 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12702_12707 0)
(declare-sort T@Field_13729_13734 0)
(declare-sort T@Field_5370_12707 0)
(declare-sort T@Field_5370_12721 0)
(declare-sort T@Field_12687_1219 0)
(declare-sort T@Field_12687_5373 0)
(declare-sort T@Field_12687_53 0)
(declare-sort T@Field_12720_12721 0)
(declare-sort T@Field_13716_1736 0)
(declare-sort T@Field_13716_5373 0)
(declare-sort T@Field_13716_53 0)
(declare-datatypes ((T@PolymorphicMapType_9318 0)) (((PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| (Array T@Ref T@Field_13619_1736 Real)) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| (Array T@Ref T@Field_9370_9371 Real)) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| (Array T@Ref T@Field_13716_13717 Real)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| (Array T@Ref T@Field_12687_1219 Real)) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| (Array T@Ref T@Field_5370_12721 Real)) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| (Array T@Ref T@Field_9357_53 Real)) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| (Array T@Ref T@Field_5370_12707 Real)) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| (Array T@Ref T@Field_13716_1736 Real)) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| (Array T@Ref T@Field_13716_5373 Real)) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| (Array T@Ref T@Field_13716_53 Real)) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| (Array T@Ref T@Field_13729_13734 Real)) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| (Array T@Ref T@Field_12687_5373 Real)) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| (Array T@Ref T@Field_12720_12721 Real)) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| (Array T@Ref T@Field_12687_53 Real)) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| (Array T@Ref T@Field_12702_12707 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9846 0)) (((PolymorphicMapType_9846 (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (Array T@Ref T@Field_9370_9371 Bool)) (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (Array T@Ref T@Field_13619_1736 Bool)) (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (Array T@Ref T@Field_9357_53 Bool)) (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (Array T@Ref T@Field_5370_12707 Bool)) (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (Array T@Ref T@Field_5370_12721 Bool)) (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (Array T@Ref T@Field_12687_5373 Bool)) (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (Array T@Ref T@Field_12687_1219 Bool)) (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (Array T@Ref T@Field_12687_53 Bool)) (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (Array T@Ref T@Field_12702_12707 Bool)) (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (Array T@Ref T@Field_12720_12721 Bool)) (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (Array T@Ref T@Field_13716_5373 Bool)) (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (Array T@Ref T@Field_13716_1736 Bool)) (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (Array T@Ref T@Field_13716_53 Bool)) (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (Array T@Ref T@Field_13729_13734 Bool)) (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (Array T@Ref T@Field_13716_13717 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9297 0)) (((PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| (Array T@Ref T@Field_9357_53 Bool)) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| (Array T@Ref T@Field_9370_9371 T@Ref)) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| (Array T@Ref T@Field_13619_1736 Int)) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| (Array T@Ref T@Field_13716_13717 T@FrameType)) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| (Array T@Ref T@Field_12702_12707 T@PolymorphicMapType_9846)) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| (Array T@Ref T@Field_13729_13734 T@PolymorphicMapType_9846)) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| (Array T@Ref T@Field_5370_12707 T@PolymorphicMapType_9846)) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| (Array T@Ref T@Field_5370_12721 T@FrameType)) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| (Array T@Ref T@Field_12687_1219 Int)) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| (Array T@Ref T@Field_12687_5373 T@Ref)) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| (Array T@Ref T@Field_12687_53 Bool)) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| (Array T@Ref T@Field_12720_12721 T@FrameType)) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| (Array T@Ref T@Field_13716_1736 Int)) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| (Array T@Ref T@Field_13716_5373 T@Ref)) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| (Array T@Ref T@Field_13716_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_9357_53)
(declare-fun val () T@Field_13619_1736)
(declare-fun next () T@Field_9370_9371)
(declare-fun WandMaskField_5319 (T@Field_12720_12721) T@Field_12702_12707)
(declare-fun |wand#ft| (T@Ref Int T@Ref Real T@Ref Real T@Ref Int) T@Field_12720_12721)
(declare-fun |wand#sm| (T@Ref Int T@Ref Real T@Ref Real T@Ref Int) T@Field_12702_12707)
(declare-fun succHeap (T@PolymorphicMapType_9297 T@PolymorphicMapType_9297) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9297 T@PolymorphicMapType_9297) Bool)
(declare-fun state (T@PolymorphicMapType_9297 T@PolymorphicMapType_9318) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9318) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9846)
(declare-fun LLInf (T@Ref Int) T@Field_13716_13717)
(declare-fun IsPredicateField_5376_5377 (T@Field_13716_13717) Bool)
(declare-fun |LLInf#trigger_5376| (T@PolymorphicMapType_9297 T@Field_13716_13717) Bool)
(declare-fun |LLInf#everUsed_5376| (T@Field_13716_13717) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9297 T@PolymorphicMapType_9297 T@PolymorphicMapType_9318) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5376 (T@Field_13716_13717) T@Field_13729_13734)
(declare-fun HasDirectPerm_13716_12721 (T@PolymorphicMapType_9318 T@Ref T@Field_13716_13717) Bool)
(declare-fun IsPredicateField_5319_5320 (T@Field_12720_12721) Bool)
(declare-fun PredicateMaskField_12687 (T@Field_12720_12721) T@Field_12702_12707)
(declare-fun HasDirectPerm_12687_12721 (T@PolymorphicMapType_9318 T@Ref T@Field_12720_12721) Bool)
(declare-fun IsPredicateField_5370_32304 (T@Field_5370_12721) Bool)
(declare-fun PredicateMaskField_5370 (T@Field_5370_12721) T@Field_5370_12707)
(declare-fun HasDirectPerm_5370_12721 (T@PolymorphicMapType_9318 T@Ref T@Field_5370_12721) Bool)
(declare-fun IsWandField_13716_37978 (T@Field_13716_13717) Bool)
(declare-fun WandMaskField_13716 (T@Field_13716_13717) T@Field_13729_13734)
(declare-fun IsWandField_5319_5320 (T@Field_12720_12721) Bool)
(declare-fun IsWandField_5370_37296 (T@Field_5370_12721) Bool)
(declare-fun WandMaskField_5370 (T@Field_5370_12721) T@Field_5370_12707)
(declare-fun |LLInf#sm| (T@Ref Int) T@Field_13729_13734)
(declare-fun wand (T@Ref Int T@Ref Real T@Ref Real T@Ref Int) T@Field_12687_1219)
(declare-fun IsWandField_5302_1219 (T@Field_12687_1219) Bool)
(declare-fun IsPredicateField_5302_1219 (T@Field_12687_1219) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_9297)
(declare-fun ZeroMask () T@PolymorphicMapType_9318)
(declare-fun InsidePredicate_12687_12687 (T@Field_12720_12721 T@FrameType T@Field_12720_12721 T@FrameType) Bool)
(declare-fun InsidePredicate_9357_9357 (T@Field_5370_12721 T@FrameType T@Field_5370_12721 T@FrameType) Bool)
(declare-fun InsidePredicate_5376_5376 (T@Field_13716_13717 T@FrameType T@Field_13716_13717 T@FrameType) Bool)
(declare-fun IsPredicateField_5370_1736 (T@Field_13619_1736) Bool)
(declare-fun IsWandField_5370_1736 (T@Field_13619_1736) Bool)
(declare-fun IsPredicateField_5372_5373 (T@Field_9370_9371) Bool)
(declare-fun IsWandField_5372_5373 (T@Field_9370_9371) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5302_48256 (T@Field_12702_12707) Bool)
(declare-fun IsWandField_5302_48272 (T@Field_12702_12707) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5302_53 (T@Field_12687_53) Bool)
(declare-fun IsWandField_5302_53 (T@Field_12687_53) Bool)
(declare-fun IsPredicateField_5302_5373 (T@Field_12687_5373) Bool)
(declare-fun IsWandField_5302_5373 (T@Field_12687_5373) Bool)
(declare-fun IsPredicateField_5376_47439 (T@Field_13729_13734) Bool)
(declare-fun IsWandField_5376_47455 (T@Field_13729_13734) Bool)
(declare-fun IsPredicateField_5376_53 (T@Field_13716_53) Bool)
(declare-fun IsWandField_5376_53 (T@Field_13716_53) Bool)
(declare-fun IsPredicateField_5376_5373 (T@Field_13716_5373) Bool)
(declare-fun IsWandField_5376_5373 (T@Field_13716_5373) Bool)
(declare-fun IsPredicateField_5376_1736 (T@Field_13716_1736) Bool)
(declare-fun IsWandField_5376_1736 (T@Field_13716_1736) Bool)
(declare-fun IsPredicateField_5370_46608 (T@Field_5370_12707) Bool)
(declare-fun IsWandField_5370_46624 (T@Field_5370_12707) Bool)
(declare-fun IsPredicateField_5370_53 (T@Field_9357_53) Bool)
(declare-fun IsWandField_5370_53 (T@Field_9357_53) Bool)
(declare-fun HasDirectPerm_13716_31848 (T@PolymorphicMapType_9318 T@Ref T@Field_13729_13734) Bool)
(declare-fun HasDirectPerm_13716_53 (T@PolymorphicMapType_9318 T@Ref T@Field_13716_53) Bool)
(declare-fun HasDirectPerm_13716_5373 (T@PolymorphicMapType_9318 T@Ref T@Field_13716_5373) Bool)
(declare-fun HasDirectPerm_13716_1736 (T@PolymorphicMapType_9318 T@Ref T@Field_13716_1736) Bool)
(declare-fun HasDirectPerm_12687_30713 (T@PolymorphicMapType_9318 T@Ref T@Field_12702_12707) Bool)
(declare-fun HasDirectPerm_12687_53 (T@PolymorphicMapType_9318 T@Ref T@Field_12687_53) Bool)
(declare-fun HasDirectPerm_12687_5373 (T@PolymorphicMapType_9318 T@Ref T@Field_12687_5373) Bool)
(declare-fun HasDirectPerm_12687_1736 (T@PolymorphicMapType_9318 T@Ref T@Field_12687_1219) Bool)
(declare-fun HasDirectPerm_5370_29535 (T@PolymorphicMapType_9318 T@Ref T@Field_5370_12707) Bool)
(declare-fun HasDirectPerm_5370_53 (T@PolymorphicMapType_9318 T@Ref T@Field_9357_53) Bool)
(declare-fun HasDirectPerm_5372_5373 (T@PolymorphicMapType_9318 T@Ref T@Field_9370_9371) Bool)
(declare-fun HasDirectPerm_5370_1736 (T@PolymorphicMapType_9318 T@Ref T@Field_13619_1736) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9318 T@PolymorphicMapType_9318 T@PolymorphicMapType_9318) Bool)
(declare-fun getPredWandId_5302_1219 (T@Field_12687_1219) Int)
(declare-fun getPredWandId_5376_5377 (T@Field_13716_13717) Int)
(declare-fun InsidePredicate_12687_9357 (T@Field_12720_12721 T@FrameType T@Field_5370_12721 T@FrameType) Bool)
(declare-fun InsidePredicate_12687_5376 (T@Field_12720_12721 T@FrameType T@Field_13716_13717 T@FrameType) Bool)
(declare-fun InsidePredicate_9357_12687 (T@Field_5370_12721 T@FrameType T@Field_12720_12721 T@FrameType) Bool)
(declare-fun InsidePredicate_9357_5376 (T@Field_5370_12721 T@FrameType T@Field_13716_13717 T@FrameType) Bool)
(declare-fun InsidePredicate_5376_12687 (T@Field_13716_13717 T@FrameType T@Field_12720_12721 T@FrameType) Bool)
(declare-fun InsidePredicate_5376_9357 (T@Field_13716_13717 T@FrameType T@Field_5370_12721 T@FrameType) Bool)
(assert (forall ((arg1 T@Ref) (arg2 Int) (arg3 T@Ref) (arg4 Real) (arg5 T@Ref) (arg6 Real) (arg7 T@Ref) (arg8 Int) ) (! (= (|wand#sm| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8) (WandMaskField_5319 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_5319 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9297) (Heap1 T@PolymorphicMapType_9297) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9297) (Mask T@PolymorphicMapType_9318) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9297) (Heap1@@0 T@PolymorphicMapType_9297) (Heap2 T@PolymorphicMapType_9297) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13716_13717) ) (!  (not (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13729_13734) ) (!  (not (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13716_53) ) (!  (not (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13716_1736) ) (!  (not (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13716_5373) ) (!  (not (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12720_12721) ) (!  (not (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12702_12707) ) (!  (not (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_12687_53) ) (!  (not (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_12687_1219) ) (!  (not (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12687_5373) ) (!  (not (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_5370_12721) ) (!  (not (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_5370_12707) ) (!  (not (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9357_53) ) (!  (not (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_13619_1736) ) (!  (not (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9370_9371) ) (!  (not (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x T@Ref) (i Int) ) (! (IsPredicateField_5376_5377 (LLInf x i))
 :qid |stdinbpl.235:15|
 :skolemid |30|
 :pattern ( (LLInf x i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9297) (x@@0 T@Ref) (i@@0 Int) ) (! (|LLInf#everUsed_5376| (LLInf x@@0 i@@0))
 :qid |stdinbpl.254:15|
 :skolemid |34|
 :pattern ( (|LLInf#trigger_5376| Heap@@0 (LLInf x@@0 i@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9297) (ExhaleHeap T@PolymorphicMapType_9297) (Mask@@0 T@PolymorphicMapType_9318) (pm_f_13 T@Field_13716_13717) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13716_12721 Mask@@0 null pm_f_13) (IsPredicateField_5376_5377 pm_f_13)) (= (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@1) null (PredicateMaskField_5376 pm_f_13)) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap) null (PredicateMaskField_5376 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_5376_5377 pm_f_13) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap) null (PredicateMaskField_5376 pm_f_13)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9297) (ExhaleHeap@@0 T@PolymorphicMapType_9297) (Mask@@1 T@PolymorphicMapType_9318) (pm_f_13@@0 T@Field_12720_12721) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12687_12721 Mask@@1 null pm_f_13@@0) (IsPredicateField_5319_5320 pm_f_13@@0)) (= (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@2) null (PredicateMaskField_12687 pm_f_13@@0)) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@0) null (PredicateMaskField_12687 pm_f_13@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5319_5320 pm_f_13@@0) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@0) null (PredicateMaskField_12687 pm_f_13@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9297) (ExhaleHeap@@1 T@PolymorphicMapType_9297) (Mask@@2 T@PolymorphicMapType_9318) (pm_f_13@@1 T@Field_5370_12721) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5370_12721 Mask@@2 null pm_f_13@@1) (IsPredicateField_5370_32304 pm_f_13@@1)) (= (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@3) null (PredicateMaskField_5370 pm_f_13@@1)) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@1) null (PredicateMaskField_5370 pm_f_13@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5370_32304 pm_f_13@@1) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@1) null (PredicateMaskField_5370 pm_f_13@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9297) (ExhaleHeap@@2 T@PolymorphicMapType_9297) (Mask@@3 T@PolymorphicMapType_9318) (pm_f_13@@2 T@Field_13716_13717) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_13716_12721 Mask@@3 null pm_f_13@@2) (IsWandField_13716_37978 pm_f_13@@2)) (= (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@4) null (WandMaskField_13716 pm_f_13@@2)) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@2) null (WandMaskField_13716 pm_f_13@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_13716_37978 pm_f_13@@2) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@2) null (WandMaskField_13716 pm_f_13@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9297) (ExhaleHeap@@3 T@PolymorphicMapType_9297) (Mask@@4 T@PolymorphicMapType_9318) (pm_f_13@@3 T@Field_12720_12721) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12687_12721 Mask@@4 null pm_f_13@@3) (IsWandField_5319_5320 pm_f_13@@3)) (= (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@5) null (WandMaskField_5319 pm_f_13@@3)) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@3) null (WandMaskField_5319 pm_f_13@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsWandField_5319_5320 pm_f_13@@3) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@3) null (WandMaskField_5319 pm_f_13@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9297) (ExhaleHeap@@4 T@PolymorphicMapType_9297) (Mask@@5 T@PolymorphicMapType_9318) (pm_f_13@@4 T@Field_5370_12721) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5370_12721 Mask@@5 null pm_f_13@@4) (IsWandField_5370_37296 pm_f_13@@4)) (= (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@6) null (WandMaskField_5370 pm_f_13@@4)) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@4) null (WandMaskField_5370 pm_f_13@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_5370_37296 pm_f_13@@4) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@4) null (WandMaskField_5370 pm_f_13@@4)))
)))
(assert (forall ((x@@1 T@Ref) (i@@1 Int) (x2 T@Ref) (i2_1 Int) ) (!  (=> (= (LLInf x@@1 i@@1) (LLInf x2 i2_1)) (and (= x@@1 x2) (= i@@1 i2_1)))
 :qid |stdinbpl.245:15|
 :skolemid |32|
 :pattern ( (LLInf x@@1 i@@1) (LLInf x2 i2_1))
)))
(assert (forall ((x@@2 T@Ref) (i@@2 Int) (x2@@0 T@Ref) (i2_1@@0 Int) ) (!  (=> (= (|LLInf#sm| x@@2 i@@2) (|LLInf#sm| x2@@0 i2_1@@0)) (and (= x@@2 x2@@0) (= i@@2 i2_1@@0)))
 :qid |stdinbpl.249:15|
 :skolemid |33|
 :pattern ( (|LLInf#sm| x@@2 i@@2) (|LLInf#sm| x2@@0 i2_1@@0))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Int) (arg3@@0 T@Ref) (arg4@@0 Real) (arg5@@0 T@Ref) (arg6@@0 Real) (arg7@@0 T@Ref) (arg8@@0 Int) ) (! (IsWandField_5302_1219 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Int) (arg3@@1 T@Ref) (arg4@@1 Real) (arg5@@1 T@Ref) (arg6@@1 Real) (arg7@@1 T@Ref) (arg8@@1 Int) ) (! (IsWandField_5319_5320 (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Int) (arg3@@2 T@Ref) (arg4@@2 Real) (arg5@@2 T@Ref) (arg6@@2 Real) (arg7@@2 T@Ref) (arg8@@2 Int) ) (!  (not (IsPredicateField_5302_1219 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Int) (arg3@@3 T@Ref) (arg4@@3 Real) (arg5@@3 T@Ref) (arg6@@3 Real) (arg7@@3 T@Ref) (arg8@@3 Int) ) (!  (not (IsPredicateField_5319_5320 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9297) (ExhaleHeap@@5 T@PolymorphicMapType_9297) (Mask@@6 T@PolymorphicMapType_9318) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@7) o_22 $allocated) (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@5) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@5) o_22 $allocated))
)))
(assert (forall ((p T@Field_12720_12721) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12687_12687 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12687_12687 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5370_12721) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9357_9357 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9357_9357 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_13716_13717) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_5376_5376 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5376_5376 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_5370_1736 val)))
(assert  (not (IsWandField_5370_1736 val)))
(assert  (not (IsPredicateField_5372_5373 next)))
(assert  (not (IsWandField_5372_5373 next)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9297) (ExhaleHeap@@6 T@PolymorphicMapType_9297) (Mask@@7 T@PolymorphicMapType_9318) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@8 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9318) (o_2@@14 T@Ref) (f_4@@14 T@Field_12702_12707) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5302_48256 f_4@@14))) (not (IsWandField_5302_48272 f_4@@14))) (<= (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9318) (o_2@@15 T@Ref) (f_4@@15 T@Field_12687_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5302_53 f_4@@15))) (not (IsWandField_5302_53 f_4@@15))) (<= (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9318) (o_2@@16 T@Ref) (f_4@@16 T@Field_12720_12721) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5319_5320 f_4@@16))) (not (IsWandField_5319_5320 f_4@@16))) (<= (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9318) (o_2@@17 T@Ref) (f_4@@17 T@Field_12687_5373) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5302_5373 f_4@@17))) (not (IsWandField_5302_5373 f_4@@17))) (<= (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9318) (o_2@@18 T@Ref) (f_4@@18 T@Field_12687_1219) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5302_1219 f_4@@18))) (not (IsWandField_5302_1219 f_4@@18))) (<= (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9318) (o_2@@19 T@Ref) (f_4@@19 T@Field_13729_13734) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5376_47439 f_4@@19))) (not (IsWandField_5376_47455 f_4@@19))) (<= (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9318) (o_2@@20 T@Ref) (f_4@@20 T@Field_13716_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5376_53 f_4@@20))) (not (IsWandField_5376_53 f_4@@20))) (<= (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9318) (o_2@@21 T@Ref) (f_4@@21 T@Field_13716_13717) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5376_5377 f_4@@21))) (not (IsWandField_13716_37978 f_4@@21))) (<= (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9318) (o_2@@22 T@Ref) (f_4@@22 T@Field_13716_5373) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5376_5373 f_4@@22))) (not (IsWandField_5376_5373 f_4@@22))) (<= (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9318) (o_2@@23 T@Ref) (f_4@@23 T@Field_13716_1736) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5376_1736 f_4@@23))) (not (IsWandField_5376_1736 f_4@@23))) (<= (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9318) (o_2@@24 T@Ref) (f_4@@24 T@Field_5370_12707) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5370_46608 f_4@@24))) (not (IsWandField_5370_46624 f_4@@24))) (<= (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9318) (o_2@@25 T@Ref) (f_4@@25 T@Field_9357_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5370_53 f_4@@25))) (not (IsWandField_5370_53 f_4@@25))) (<= (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9318) (o_2@@26 T@Ref) (f_4@@26 T@Field_5370_12721) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5370_32304 f_4@@26))) (not (IsWandField_5370_37296 f_4@@26))) (<= (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9318) (o_2@@27 T@Ref) (f_4@@27 T@Field_9370_9371) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5372_5373 f_4@@27))) (not (IsWandField_5372_5373 f_4@@27))) (<= (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9318) (o_2@@28 T@Ref) (f_4@@28 T@Field_13619_1736) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5370_1736 f_4@@28))) (not (IsWandField_5370_1736 f_4@@28))) (<= (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9318) (o_2@@29 T@Ref) (f_4@@29 T@Field_13716_13717) ) (! (= (HasDirectPerm_13716_12721 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13716_12721 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9318) (o_2@@30 T@Ref) (f_4@@30 T@Field_13729_13734) ) (! (= (HasDirectPerm_13716_31848 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13716_31848 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9318) (o_2@@31 T@Ref) (f_4@@31 T@Field_13716_53) ) (! (= (HasDirectPerm_13716_53 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13716_53 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9318) (o_2@@32 T@Ref) (f_4@@32 T@Field_13716_5373) ) (! (= (HasDirectPerm_13716_5373 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13716_5373 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9318) (o_2@@33 T@Ref) (f_4@@33 T@Field_13716_1736) ) (! (= (HasDirectPerm_13716_1736 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13716_1736 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9318) (o_2@@34 T@Ref) (f_4@@34 T@Field_12720_12721) ) (! (= (HasDirectPerm_12687_12721 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12687_12721 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9318) (o_2@@35 T@Ref) (f_4@@35 T@Field_12702_12707) ) (! (= (HasDirectPerm_12687_30713 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12687_30713 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9318) (o_2@@36 T@Ref) (f_4@@36 T@Field_12687_53) ) (! (= (HasDirectPerm_12687_53 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12687_53 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9318) (o_2@@37 T@Ref) (f_4@@37 T@Field_12687_5373) ) (! (= (HasDirectPerm_12687_5373 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12687_5373 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9318) (o_2@@38 T@Ref) (f_4@@38 T@Field_12687_1219) ) (! (= (HasDirectPerm_12687_1736 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12687_1736 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9318) (o_2@@39 T@Ref) (f_4@@39 T@Field_5370_12721) ) (! (= (HasDirectPerm_5370_12721 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5370_12721 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9318) (o_2@@40 T@Ref) (f_4@@40 T@Field_5370_12707) ) (! (= (HasDirectPerm_5370_29535 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5370_29535 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_9318) (o_2@@41 T@Ref) (f_4@@41 T@Field_9357_53) ) (! (= (HasDirectPerm_5370_53 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5370_53 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_9318) (o_2@@42 T@Ref) (f_4@@42 T@Field_9370_9371) ) (! (= (HasDirectPerm_5372_5373 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5372_5373 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_9318) (o_2@@43 T@Ref) (f_4@@43 T@Field_13619_1736) ) (! (= (HasDirectPerm_5370_1736 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5370_1736 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9297) (ExhaleHeap@@7 T@PolymorphicMapType_9297) (Mask@@38 T@PolymorphicMapType_9318) (o_22@@0 T@Ref) (f_30 T@Field_13716_13717) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_13716_12721 Mask@@38 o_22@@0 f_30) (= (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@9) o_22@@0 f_30) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@7) o_22@@0 f_30))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@7) o_22@@0 f_30))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9297) (ExhaleHeap@@8 T@PolymorphicMapType_9297) (Mask@@39 T@PolymorphicMapType_9318) (o_22@@1 T@Ref) (f_30@@0 T@Field_13729_13734) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_13716_31848 Mask@@39 o_22@@1 f_30@@0) (= (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@10) o_22@@1 f_30@@0) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@8) o_22@@1 f_30@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@8) o_22@@1 f_30@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9297) (ExhaleHeap@@9 T@PolymorphicMapType_9297) (Mask@@40 T@PolymorphicMapType_9318) (o_22@@2 T@Ref) (f_30@@1 T@Field_13716_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_13716_53 Mask@@40 o_22@@2 f_30@@1) (= (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@11) o_22@@2 f_30@@1) (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@9) o_22@@2 f_30@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@9) o_22@@2 f_30@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9297) (ExhaleHeap@@10 T@PolymorphicMapType_9297) (Mask@@41 T@PolymorphicMapType_9318) (o_22@@3 T@Ref) (f_30@@2 T@Field_13716_5373) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_13716_5373 Mask@@41 o_22@@3 f_30@@2) (= (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@12) o_22@@3 f_30@@2) (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@10) o_22@@3 f_30@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@10) o_22@@3 f_30@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9297) (ExhaleHeap@@11 T@PolymorphicMapType_9297) (Mask@@42 T@PolymorphicMapType_9318) (o_22@@4 T@Ref) (f_30@@3 T@Field_13716_1736) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_13716_1736 Mask@@42 o_22@@4 f_30@@3) (= (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@13) o_22@@4 f_30@@3) (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@11) o_22@@4 f_30@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@11) o_22@@4 f_30@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9297) (ExhaleHeap@@12 T@PolymorphicMapType_9297) (Mask@@43 T@PolymorphicMapType_9318) (o_22@@5 T@Ref) (f_30@@4 T@Field_12720_12721) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_12687_12721 Mask@@43 o_22@@5 f_30@@4) (= (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@14) o_22@@5 f_30@@4) (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@12) o_22@@5 f_30@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@12) o_22@@5 f_30@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9297) (ExhaleHeap@@13 T@PolymorphicMapType_9297) (Mask@@44 T@PolymorphicMapType_9318) (o_22@@6 T@Ref) (f_30@@5 T@Field_12702_12707) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_12687_30713 Mask@@44 o_22@@6 f_30@@5) (= (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@15) o_22@@6 f_30@@5) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@13) o_22@@6 f_30@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@13) o_22@@6 f_30@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9297) (ExhaleHeap@@14 T@PolymorphicMapType_9297) (Mask@@45 T@PolymorphicMapType_9318) (o_22@@7 T@Ref) (f_30@@6 T@Field_12687_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_12687_53 Mask@@45 o_22@@7 f_30@@6) (= (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@16) o_22@@7 f_30@@6) (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@14) o_22@@7 f_30@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@14) o_22@@7 f_30@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9297) (ExhaleHeap@@15 T@PolymorphicMapType_9297) (Mask@@46 T@PolymorphicMapType_9318) (o_22@@8 T@Ref) (f_30@@7 T@Field_12687_5373) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_12687_5373 Mask@@46 o_22@@8 f_30@@7) (= (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@17) o_22@@8 f_30@@7) (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@15) o_22@@8 f_30@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@15) o_22@@8 f_30@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9297) (ExhaleHeap@@16 T@PolymorphicMapType_9297) (Mask@@47 T@PolymorphicMapType_9318) (o_22@@9 T@Ref) (f_30@@8 T@Field_12687_1219) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_12687_1736 Mask@@47 o_22@@9 f_30@@8) (= (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@18) o_22@@9 f_30@@8) (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@16) o_22@@9 f_30@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@16) o_22@@9 f_30@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9297) (ExhaleHeap@@17 T@PolymorphicMapType_9297) (Mask@@48 T@PolymorphicMapType_9318) (o_22@@10 T@Ref) (f_30@@9 T@Field_5370_12721) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_5370_12721 Mask@@48 o_22@@10 f_30@@9) (= (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@19) o_22@@10 f_30@@9) (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@17) o_22@@10 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@17) o_22@@10 f_30@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9297) (ExhaleHeap@@18 T@PolymorphicMapType_9297) (Mask@@49 T@PolymorphicMapType_9318) (o_22@@11 T@Ref) (f_30@@10 T@Field_5370_12707) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_5370_29535 Mask@@49 o_22@@11 f_30@@10) (= (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@20) o_22@@11 f_30@@10) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@18) o_22@@11 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@18) o_22@@11 f_30@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9297) (ExhaleHeap@@19 T@PolymorphicMapType_9297) (Mask@@50 T@PolymorphicMapType_9318) (o_22@@12 T@Ref) (f_30@@11 T@Field_9357_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_5370_53 Mask@@50 o_22@@12 f_30@@11) (= (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@21) o_22@@12 f_30@@11) (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@19) o_22@@12 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@19) o_22@@12 f_30@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9297) (ExhaleHeap@@20 T@PolymorphicMapType_9297) (Mask@@51 T@PolymorphicMapType_9318) (o_22@@13 T@Ref) (f_30@@12 T@Field_9370_9371) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_5372_5373 Mask@@51 o_22@@13 f_30@@12) (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@22) o_22@@13 f_30@@12) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@20) o_22@@13 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@20) o_22@@13 f_30@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9297) (ExhaleHeap@@21 T@PolymorphicMapType_9297) (Mask@@52 T@PolymorphicMapType_9318) (o_22@@14 T@Ref) (f_30@@13 T@Field_13619_1736) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_5370_1736 Mask@@52 o_22@@14 f_30@@13) (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@23) o_22@@14 f_30@@13) (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@21) o_22@@14 f_30@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@21) o_22@@14 f_30@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_12702_12707) ) (! (= (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_12687_53) ) (! (= (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_12720_12721) ) (! (= (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_12687_5373) ) (! (= (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_12687_1219) ) (! (= (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_13729_13734) ) (! (= (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_13716_53) ) (! (= (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_13716_13717) ) (! (= (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_13716_5373) ) (! (= (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_13716_1736) ) (! (= (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_5370_12707) ) (! (= (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_9357_53) ) (! (= (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_5370_12721) ) (! (= (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_9370_9371) ) (! (= (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_13619_1736) ) (! (= (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9318) (SummandMask1 T@PolymorphicMapType_9318) (SummandMask2 T@PolymorphicMapType_9318) (o_2@@59 T@Ref) (f_4@@59 T@Field_12702_12707) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9318) (SummandMask1@@0 T@PolymorphicMapType_9318) (SummandMask2@@0 T@PolymorphicMapType_9318) (o_2@@60 T@Ref) (f_4@@60 T@Field_12687_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9318) (SummandMask1@@1 T@PolymorphicMapType_9318) (SummandMask2@@1 T@PolymorphicMapType_9318) (o_2@@61 T@Ref) (f_4@@61 T@Field_12720_12721) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9318) (SummandMask1@@2 T@PolymorphicMapType_9318) (SummandMask2@@2 T@PolymorphicMapType_9318) (o_2@@62 T@Ref) (f_4@@62 T@Field_12687_5373) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9318) (SummandMask1@@3 T@PolymorphicMapType_9318) (SummandMask2@@3 T@PolymorphicMapType_9318) (o_2@@63 T@Ref) (f_4@@63 T@Field_12687_1219) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9318) (SummandMask1@@4 T@PolymorphicMapType_9318) (SummandMask2@@4 T@PolymorphicMapType_9318) (o_2@@64 T@Ref) (f_4@@64 T@Field_13729_13734) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9318) (SummandMask1@@5 T@PolymorphicMapType_9318) (SummandMask2@@5 T@PolymorphicMapType_9318) (o_2@@65 T@Ref) (f_4@@65 T@Field_13716_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9318) (SummandMask1@@6 T@PolymorphicMapType_9318) (SummandMask2@@6 T@PolymorphicMapType_9318) (o_2@@66 T@Ref) (f_4@@66 T@Field_13716_13717) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9318) (SummandMask1@@7 T@PolymorphicMapType_9318) (SummandMask2@@7 T@PolymorphicMapType_9318) (o_2@@67 T@Ref) (f_4@@67 T@Field_13716_5373) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9318) (SummandMask1@@8 T@PolymorphicMapType_9318) (SummandMask2@@8 T@PolymorphicMapType_9318) (o_2@@68 T@Ref) (f_4@@68 T@Field_13716_1736) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9318) (SummandMask1@@9 T@PolymorphicMapType_9318) (SummandMask2@@9 T@PolymorphicMapType_9318) (o_2@@69 T@Ref) (f_4@@69 T@Field_5370_12707) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9318) (SummandMask1@@10 T@PolymorphicMapType_9318) (SummandMask2@@10 T@PolymorphicMapType_9318) (o_2@@70 T@Ref) (f_4@@70 T@Field_9357_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_9318) (SummandMask1@@11 T@PolymorphicMapType_9318) (SummandMask2@@11 T@PolymorphicMapType_9318) (o_2@@71 T@Ref) (f_4@@71 T@Field_5370_12721) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_9318) (SummandMask1@@12 T@PolymorphicMapType_9318) (SummandMask2@@12 T@PolymorphicMapType_9318) (o_2@@72 T@Ref) (f_4@@72 T@Field_9370_9371) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_9318) (SummandMask1@@13 T@PolymorphicMapType_9318) (SummandMask2@@13 T@PolymorphicMapType_9318) (o_2@@73 T@Ref) (f_4@@73 T@Field_13619_1736) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9297) (ExhaleHeap@@22 T@PolymorphicMapType_9297) (Mask@@53 T@PolymorphicMapType_9318) (pm_f_13@@5 T@Field_13716_13717) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_13716_12721 Mask@@53 null pm_f_13@@5) (IsPredicateField_5376_5377 pm_f_13@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30@@14 T@Field_9370_9371) ) (!  (=> (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13 f_30@@14) (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@24) o2_13 f_30@@14) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13 f_30@@14))
)) (forall ((o2_13@@0 T@Ref) (f_30@@15 T@Field_13619_1736) ) (!  (=> (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@0 f_30@@15) (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@24) o2_13@@0 f_30@@15) (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@0 f_30@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@0 f_30@@15))
))) (forall ((o2_13@@1 T@Ref) (f_30@@16 T@Field_9357_53) ) (!  (=> (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@1 f_30@@16) (= (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@24) o2_13@@1 f_30@@16) (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@1 f_30@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@1 f_30@@16))
))) (forall ((o2_13@@2 T@Ref) (f_30@@17 T@Field_5370_12707) ) (!  (=> (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@2 f_30@@17) (= (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@24) o2_13@@2 f_30@@17) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@2 f_30@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@2 f_30@@17))
))) (forall ((o2_13@@3 T@Ref) (f_30@@18 T@Field_5370_12721) ) (!  (=> (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@3 f_30@@18) (= (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@24) o2_13@@3 f_30@@18) (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@3 f_30@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@3 f_30@@18))
))) (forall ((o2_13@@4 T@Ref) (f_30@@19 T@Field_12687_5373) ) (!  (=> (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@4 f_30@@19) (= (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@24) o2_13@@4 f_30@@19) (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@4 f_30@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@4 f_30@@19))
))) (forall ((o2_13@@5 T@Ref) (f_30@@20 T@Field_12687_1219) ) (!  (=> (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@5 f_30@@20) (= (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@24) o2_13@@5 f_30@@20) (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@5 f_30@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@5 f_30@@20))
))) (forall ((o2_13@@6 T@Ref) (f_30@@21 T@Field_12687_53) ) (!  (=> (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@6 f_30@@21) (= (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@24) o2_13@@6 f_30@@21) (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@6 f_30@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@6 f_30@@21))
))) (forall ((o2_13@@7 T@Ref) (f_30@@22 T@Field_12702_12707) ) (!  (=> (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@7 f_30@@22) (= (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@24) o2_13@@7 f_30@@22) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@7 f_30@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@7 f_30@@22))
))) (forall ((o2_13@@8 T@Ref) (f_30@@23 T@Field_12720_12721) ) (!  (=> (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@8 f_30@@23) (= (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@24) o2_13@@8 f_30@@23) (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@8 f_30@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@8 f_30@@23))
))) (forall ((o2_13@@9 T@Ref) (f_30@@24 T@Field_13716_5373) ) (!  (=> (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@9 f_30@@24) (= (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@24) o2_13@@9 f_30@@24) (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@9 f_30@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@9 f_30@@24))
))) (forall ((o2_13@@10 T@Ref) (f_30@@25 T@Field_13716_1736) ) (!  (=> (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@10 f_30@@25) (= (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@24) o2_13@@10 f_30@@25) (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@10 f_30@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@10 f_30@@25))
))) (forall ((o2_13@@11 T@Ref) (f_30@@26 T@Field_13716_53) ) (!  (=> (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@11 f_30@@26) (= (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@24) o2_13@@11 f_30@@26) (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@11 f_30@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@11 f_30@@26))
))) (forall ((o2_13@@12 T@Ref) (f_30@@27 T@Field_13729_13734) ) (!  (=> (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@12 f_30@@27) (= (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) o2_13@@12 f_30@@27) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@12 f_30@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@12 f_30@@27))
))) (forall ((o2_13@@13 T@Ref) (f_30@@28 T@Field_13716_13717) ) (!  (=> (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@24) null (PredicateMaskField_5376 pm_f_13@@5))) o2_13@@13 f_30@@28) (= (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@24) o2_13@@13 f_30@@28) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@13 f_30@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@22) o2_13@@13 f_30@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (IsPredicateField_5376_5377 pm_f_13@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9297) (ExhaleHeap@@23 T@PolymorphicMapType_9297) (Mask@@54 T@PolymorphicMapType_9318) (pm_f_13@@6 T@Field_12720_12721) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_12687_12721 Mask@@54 null pm_f_13@@6) (IsPredicateField_5319_5320 pm_f_13@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@14 T@Ref) (f_30@@29 T@Field_9370_9371) ) (!  (=> (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@14 f_30@@29) (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@25) o2_13@@14 f_30@@29) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@14 f_30@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@14 f_30@@29))
)) (forall ((o2_13@@15 T@Ref) (f_30@@30 T@Field_13619_1736) ) (!  (=> (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@15 f_30@@30) (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@25) o2_13@@15 f_30@@30) (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@15 f_30@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@15 f_30@@30))
))) (forall ((o2_13@@16 T@Ref) (f_30@@31 T@Field_9357_53) ) (!  (=> (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@16 f_30@@31) (= (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@25) o2_13@@16 f_30@@31) (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@16 f_30@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@16 f_30@@31))
))) (forall ((o2_13@@17 T@Ref) (f_30@@32 T@Field_5370_12707) ) (!  (=> (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@17 f_30@@32) (= (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@25) o2_13@@17 f_30@@32) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@17 f_30@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@17 f_30@@32))
))) (forall ((o2_13@@18 T@Ref) (f_30@@33 T@Field_5370_12721) ) (!  (=> (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@18 f_30@@33) (= (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@25) o2_13@@18 f_30@@33) (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@18 f_30@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@18 f_30@@33))
))) (forall ((o2_13@@19 T@Ref) (f_30@@34 T@Field_12687_5373) ) (!  (=> (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@19 f_30@@34) (= (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@25) o2_13@@19 f_30@@34) (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@19 f_30@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@19 f_30@@34))
))) (forall ((o2_13@@20 T@Ref) (f_30@@35 T@Field_12687_1219) ) (!  (=> (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@20 f_30@@35) (= (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@25) o2_13@@20 f_30@@35) (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@20 f_30@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@20 f_30@@35))
))) (forall ((o2_13@@21 T@Ref) (f_30@@36 T@Field_12687_53) ) (!  (=> (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@21 f_30@@36) (= (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@25) o2_13@@21 f_30@@36) (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@21 f_30@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@21 f_30@@36))
))) (forall ((o2_13@@22 T@Ref) (f_30@@37 T@Field_12702_12707) ) (!  (=> (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@22 f_30@@37) (= (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) o2_13@@22 f_30@@37) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@22 f_30@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@22 f_30@@37))
))) (forall ((o2_13@@23 T@Ref) (f_30@@38 T@Field_12720_12721) ) (!  (=> (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@23 f_30@@38) (= (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@25) o2_13@@23 f_30@@38) (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@23 f_30@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@23 f_30@@38))
))) (forall ((o2_13@@24 T@Ref) (f_30@@39 T@Field_13716_5373) ) (!  (=> (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@24 f_30@@39) (= (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@25) o2_13@@24 f_30@@39) (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@24 f_30@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@24 f_30@@39))
))) (forall ((o2_13@@25 T@Ref) (f_30@@40 T@Field_13716_1736) ) (!  (=> (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@25 f_30@@40) (= (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@25) o2_13@@25 f_30@@40) (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@25 f_30@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@25 f_30@@40))
))) (forall ((o2_13@@26 T@Ref) (f_30@@41 T@Field_13716_53) ) (!  (=> (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@26 f_30@@41) (= (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@25) o2_13@@26 f_30@@41) (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@26 f_30@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@26 f_30@@41))
))) (forall ((o2_13@@27 T@Ref) (f_30@@42 T@Field_13729_13734) ) (!  (=> (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@27 f_30@@42) (= (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@25) o2_13@@27 f_30@@42) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@27 f_30@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@27 f_30@@42))
))) (forall ((o2_13@@28 T@Ref) (f_30@@43 T@Field_13716_13717) ) (!  (=> (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@25) null (PredicateMaskField_12687 pm_f_13@@6))) o2_13@@28 f_30@@43) (= (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@25) o2_13@@28 f_30@@43) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@28 f_30@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@23) o2_13@@28 f_30@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (IsPredicateField_5319_5320 pm_f_13@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9297) (ExhaleHeap@@24 T@PolymorphicMapType_9297) (Mask@@55 T@PolymorphicMapType_9318) (pm_f_13@@7 T@Field_5370_12721) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_5370_12721 Mask@@55 null pm_f_13@@7) (IsPredicateField_5370_32304 pm_f_13@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@29 T@Ref) (f_30@@44 T@Field_9370_9371) ) (!  (=> (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@29 f_30@@44) (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@26) o2_13@@29 f_30@@44) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@29 f_30@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@29 f_30@@44))
)) (forall ((o2_13@@30 T@Ref) (f_30@@45 T@Field_13619_1736) ) (!  (=> (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@30 f_30@@45) (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@26) o2_13@@30 f_30@@45) (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@30 f_30@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@30 f_30@@45))
))) (forall ((o2_13@@31 T@Ref) (f_30@@46 T@Field_9357_53) ) (!  (=> (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@31 f_30@@46) (= (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@26) o2_13@@31 f_30@@46) (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@31 f_30@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@31 f_30@@46))
))) (forall ((o2_13@@32 T@Ref) (f_30@@47 T@Field_5370_12707) ) (!  (=> (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@32 f_30@@47) (= (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) o2_13@@32 f_30@@47) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@32 f_30@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@32 f_30@@47))
))) (forall ((o2_13@@33 T@Ref) (f_30@@48 T@Field_5370_12721) ) (!  (=> (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@33 f_30@@48) (= (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@26) o2_13@@33 f_30@@48) (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@33 f_30@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@33 f_30@@48))
))) (forall ((o2_13@@34 T@Ref) (f_30@@49 T@Field_12687_5373) ) (!  (=> (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@34 f_30@@49) (= (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@26) o2_13@@34 f_30@@49) (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@34 f_30@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@34 f_30@@49))
))) (forall ((o2_13@@35 T@Ref) (f_30@@50 T@Field_12687_1219) ) (!  (=> (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@35 f_30@@50) (= (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@26) o2_13@@35 f_30@@50) (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@35 f_30@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@35 f_30@@50))
))) (forall ((o2_13@@36 T@Ref) (f_30@@51 T@Field_12687_53) ) (!  (=> (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@36 f_30@@51) (= (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@26) o2_13@@36 f_30@@51) (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@36 f_30@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@36 f_30@@51))
))) (forall ((o2_13@@37 T@Ref) (f_30@@52 T@Field_12702_12707) ) (!  (=> (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@37 f_30@@52) (= (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@26) o2_13@@37 f_30@@52) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@37 f_30@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@37 f_30@@52))
))) (forall ((o2_13@@38 T@Ref) (f_30@@53 T@Field_12720_12721) ) (!  (=> (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@38 f_30@@53) (= (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@26) o2_13@@38 f_30@@53) (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@38 f_30@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@38 f_30@@53))
))) (forall ((o2_13@@39 T@Ref) (f_30@@54 T@Field_13716_5373) ) (!  (=> (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@39 f_30@@54) (= (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@26) o2_13@@39 f_30@@54) (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@39 f_30@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@39 f_30@@54))
))) (forall ((o2_13@@40 T@Ref) (f_30@@55 T@Field_13716_1736) ) (!  (=> (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@40 f_30@@55) (= (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@26) o2_13@@40 f_30@@55) (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@40 f_30@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@40 f_30@@55))
))) (forall ((o2_13@@41 T@Ref) (f_30@@56 T@Field_13716_53) ) (!  (=> (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@41 f_30@@56) (= (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@26) o2_13@@41 f_30@@56) (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@41 f_30@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@41 f_30@@56))
))) (forall ((o2_13@@42 T@Ref) (f_30@@57 T@Field_13729_13734) ) (!  (=> (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@42 f_30@@57) (= (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@26) o2_13@@42 f_30@@57) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@42 f_30@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@42 f_30@@57))
))) (forall ((o2_13@@43 T@Ref) (f_30@@58 T@Field_13716_13717) ) (!  (=> (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@26) null (PredicateMaskField_5370 pm_f_13@@7))) o2_13@@43 f_30@@58) (= (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@26) o2_13@@43 f_30@@58) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@43 f_30@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@24) o2_13@@43 f_30@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (IsPredicateField_5370_32304 pm_f_13@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9297) (ExhaleHeap@@25 T@PolymorphicMapType_9297) (Mask@@56 T@PolymorphicMapType_9318) (pm_f_13@@8 T@Field_13716_13717) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_13716_12721 Mask@@56 null pm_f_13@@8) (IsWandField_13716_37978 pm_f_13@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@44 T@Ref) (f_30@@59 T@Field_9370_9371) ) (!  (=> (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@44 f_30@@59) (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@27) o2_13@@44 f_30@@59) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@44 f_30@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@44 f_30@@59))
)) (forall ((o2_13@@45 T@Ref) (f_30@@60 T@Field_13619_1736) ) (!  (=> (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@45 f_30@@60) (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@27) o2_13@@45 f_30@@60) (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@45 f_30@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@45 f_30@@60))
))) (forall ((o2_13@@46 T@Ref) (f_30@@61 T@Field_9357_53) ) (!  (=> (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@46 f_30@@61) (= (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@27) o2_13@@46 f_30@@61) (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@46 f_30@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@46 f_30@@61))
))) (forall ((o2_13@@47 T@Ref) (f_30@@62 T@Field_5370_12707) ) (!  (=> (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@47 f_30@@62) (= (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@27) o2_13@@47 f_30@@62) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@47 f_30@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@47 f_30@@62))
))) (forall ((o2_13@@48 T@Ref) (f_30@@63 T@Field_5370_12721) ) (!  (=> (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@48 f_30@@63) (= (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@27) o2_13@@48 f_30@@63) (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@48 f_30@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@48 f_30@@63))
))) (forall ((o2_13@@49 T@Ref) (f_30@@64 T@Field_12687_5373) ) (!  (=> (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@49 f_30@@64) (= (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@27) o2_13@@49 f_30@@64) (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@49 f_30@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@49 f_30@@64))
))) (forall ((o2_13@@50 T@Ref) (f_30@@65 T@Field_12687_1219) ) (!  (=> (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@50 f_30@@65) (= (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@27) o2_13@@50 f_30@@65) (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@50 f_30@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@50 f_30@@65))
))) (forall ((o2_13@@51 T@Ref) (f_30@@66 T@Field_12687_53) ) (!  (=> (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@51 f_30@@66) (= (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@27) o2_13@@51 f_30@@66) (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@51 f_30@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@51 f_30@@66))
))) (forall ((o2_13@@52 T@Ref) (f_30@@67 T@Field_12702_12707) ) (!  (=> (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@52 f_30@@67) (= (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@27) o2_13@@52 f_30@@67) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@52 f_30@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@52 f_30@@67))
))) (forall ((o2_13@@53 T@Ref) (f_30@@68 T@Field_12720_12721) ) (!  (=> (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@53 f_30@@68) (= (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@27) o2_13@@53 f_30@@68) (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@53 f_30@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@53 f_30@@68))
))) (forall ((o2_13@@54 T@Ref) (f_30@@69 T@Field_13716_5373) ) (!  (=> (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@54 f_30@@69) (= (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@27) o2_13@@54 f_30@@69) (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@54 f_30@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@54 f_30@@69))
))) (forall ((o2_13@@55 T@Ref) (f_30@@70 T@Field_13716_1736) ) (!  (=> (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@55 f_30@@70) (= (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@27) o2_13@@55 f_30@@70) (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@55 f_30@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@55 f_30@@70))
))) (forall ((o2_13@@56 T@Ref) (f_30@@71 T@Field_13716_53) ) (!  (=> (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@56 f_30@@71) (= (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@27) o2_13@@56 f_30@@71) (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@56 f_30@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@56 f_30@@71))
))) (forall ((o2_13@@57 T@Ref) (f_30@@72 T@Field_13729_13734) ) (!  (=> (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@57 f_30@@72) (= (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) o2_13@@57 f_30@@72) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@57 f_30@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@57 f_30@@72))
))) (forall ((o2_13@@58 T@Ref) (f_30@@73 T@Field_13716_13717) ) (!  (=> (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@27) null (WandMaskField_13716 pm_f_13@@8))) o2_13@@58 f_30@@73) (= (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@27) o2_13@@58 f_30@@73) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@58 f_30@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@25) o2_13@@58 f_30@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (IsWandField_13716_37978 pm_f_13@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9297) (ExhaleHeap@@26 T@PolymorphicMapType_9297) (Mask@@57 T@PolymorphicMapType_9318) (pm_f_13@@9 T@Field_12720_12721) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_12687_12721 Mask@@57 null pm_f_13@@9) (IsWandField_5319_5320 pm_f_13@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@59 T@Ref) (f_30@@74 T@Field_9370_9371) ) (!  (=> (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@59 f_30@@74) (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@28) o2_13@@59 f_30@@74) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@59 f_30@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@59 f_30@@74))
)) (forall ((o2_13@@60 T@Ref) (f_30@@75 T@Field_13619_1736) ) (!  (=> (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@60 f_30@@75) (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@28) o2_13@@60 f_30@@75) (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@60 f_30@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@60 f_30@@75))
))) (forall ((o2_13@@61 T@Ref) (f_30@@76 T@Field_9357_53) ) (!  (=> (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@61 f_30@@76) (= (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@28) o2_13@@61 f_30@@76) (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@61 f_30@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@61 f_30@@76))
))) (forall ((o2_13@@62 T@Ref) (f_30@@77 T@Field_5370_12707) ) (!  (=> (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@62 f_30@@77) (= (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@28) o2_13@@62 f_30@@77) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@62 f_30@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@62 f_30@@77))
))) (forall ((o2_13@@63 T@Ref) (f_30@@78 T@Field_5370_12721) ) (!  (=> (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@63 f_30@@78) (= (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@28) o2_13@@63 f_30@@78) (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@63 f_30@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@63 f_30@@78))
))) (forall ((o2_13@@64 T@Ref) (f_30@@79 T@Field_12687_5373) ) (!  (=> (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@64 f_30@@79) (= (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@28) o2_13@@64 f_30@@79) (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@64 f_30@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@64 f_30@@79))
))) (forall ((o2_13@@65 T@Ref) (f_30@@80 T@Field_12687_1219) ) (!  (=> (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@65 f_30@@80) (= (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@28) o2_13@@65 f_30@@80) (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@65 f_30@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@65 f_30@@80))
))) (forall ((o2_13@@66 T@Ref) (f_30@@81 T@Field_12687_53) ) (!  (=> (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@66 f_30@@81) (= (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@28) o2_13@@66 f_30@@81) (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@66 f_30@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@66 f_30@@81))
))) (forall ((o2_13@@67 T@Ref) (f_30@@82 T@Field_12702_12707) ) (!  (=> (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@67 f_30@@82) (= (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) o2_13@@67 f_30@@82) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@67 f_30@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@67 f_30@@82))
))) (forall ((o2_13@@68 T@Ref) (f_30@@83 T@Field_12720_12721) ) (!  (=> (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@68 f_30@@83) (= (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@28) o2_13@@68 f_30@@83) (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@68 f_30@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@68 f_30@@83))
))) (forall ((o2_13@@69 T@Ref) (f_30@@84 T@Field_13716_5373) ) (!  (=> (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@69 f_30@@84) (= (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@28) o2_13@@69 f_30@@84) (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@69 f_30@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@69 f_30@@84))
))) (forall ((o2_13@@70 T@Ref) (f_30@@85 T@Field_13716_1736) ) (!  (=> (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@70 f_30@@85) (= (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@28) o2_13@@70 f_30@@85) (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@70 f_30@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@70 f_30@@85))
))) (forall ((o2_13@@71 T@Ref) (f_30@@86 T@Field_13716_53) ) (!  (=> (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@71 f_30@@86) (= (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@28) o2_13@@71 f_30@@86) (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@71 f_30@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@71 f_30@@86))
))) (forall ((o2_13@@72 T@Ref) (f_30@@87 T@Field_13729_13734) ) (!  (=> (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@72 f_30@@87) (= (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@28) o2_13@@72 f_30@@87) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@72 f_30@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@72 f_30@@87))
))) (forall ((o2_13@@73 T@Ref) (f_30@@88 T@Field_13716_13717) ) (!  (=> (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@28) null (WandMaskField_5319 pm_f_13@@9))) o2_13@@73 f_30@@88) (= (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@28) o2_13@@73 f_30@@88) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@73 f_30@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@26) o2_13@@73 f_30@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (IsWandField_5319_5320 pm_f_13@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9297) (ExhaleHeap@@27 T@PolymorphicMapType_9297) (Mask@@58 T@PolymorphicMapType_9318) (pm_f_13@@10 T@Field_5370_12721) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_5370_12721 Mask@@58 null pm_f_13@@10) (IsWandField_5370_37296 pm_f_13@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@74 T@Ref) (f_30@@89 T@Field_9370_9371) ) (!  (=> (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@74 f_30@@89) (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@29) o2_13@@74 f_30@@89) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@74 f_30@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@74 f_30@@89))
)) (forall ((o2_13@@75 T@Ref) (f_30@@90 T@Field_13619_1736) ) (!  (=> (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@75 f_30@@90) (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@29) o2_13@@75 f_30@@90) (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@75 f_30@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@75 f_30@@90))
))) (forall ((o2_13@@76 T@Ref) (f_30@@91 T@Field_9357_53) ) (!  (=> (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@76 f_30@@91) (= (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@29) o2_13@@76 f_30@@91) (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@76 f_30@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@76 f_30@@91))
))) (forall ((o2_13@@77 T@Ref) (f_30@@92 T@Field_5370_12707) ) (!  (=> (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@77 f_30@@92) (= (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) o2_13@@77 f_30@@92) (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@77 f_30@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@77 f_30@@92))
))) (forall ((o2_13@@78 T@Ref) (f_30@@93 T@Field_5370_12721) ) (!  (=> (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@78 f_30@@93) (= (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@29) o2_13@@78 f_30@@93) (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@78 f_30@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@78 f_30@@93))
))) (forall ((o2_13@@79 T@Ref) (f_30@@94 T@Field_12687_5373) ) (!  (=> (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@79 f_30@@94) (= (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@29) o2_13@@79 f_30@@94) (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@79 f_30@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@79 f_30@@94))
))) (forall ((o2_13@@80 T@Ref) (f_30@@95 T@Field_12687_1219) ) (!  (=> (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@80 f_30@@95) (= (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@29) o2_13@@80 f_30@@95) (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@80 f_30@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@80 f_30@@95))
))) (forall ((o2_13@@81 T@Ref) (f_30@@96 T@Field_12687_53) ) (!  (=> (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@81 f_30@@96) (= (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@29) o2_13@@81 f_30@@96) (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@81 f_30@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@81 f_30@@96))
))) (forall ((o2_13@@82 T@Ref) (f_30@@97 T@Field_12702_12707) ) (!  (=> (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@82 f_30@@97) (= (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@29) o2_13@@82 f_30@@97) (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@82 f_30@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@82 f_30@@97))
))) (forall ((o2_13@@83 T@Ref) (f_30@@98 T@Field_12720_12721) ) (!  (=> (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@83 f_30@@98) (= (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@29) o2_13@@83 f_30@@98) (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@83 f_30@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@83 f_30@@98))
))) (forall ((o2_13@@84 T@Ref) (f_30@@99 T@Field_13716_5373) ) (!  (=> (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@84 f_30@@99) (= (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@29) o2_13@@84 f_30@@99) (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@84 f_30@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@84 f_30@@99))
))) (forall ((o2_13@@85 T@Ref) (f_30@@100 T@Field_13716_1736) ) (!  (=> (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@85 f_30@@100) (= (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@29) o2_13@@85 f_30@@100) (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@85 f_30@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@85 f_30@@100))
))) (forall ((o2_13@@86 T@Ref) (f_30@@101 T@Field_13716_53) ) (!  (=> (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@86 f_30@@101) (= (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@29) o2_13@@86 f_30@@101) (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@86 f_30@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@86 f_30@@101))
))) (forall ((o2_13@@87 T@Ref) (f_30@@102 T@Field_13729_13734) ) (!  (=> (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@87 f_30@@102) (= (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@29) o2_13@@87 f_30@@102) (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@87 f_30@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@87 f_30@@102))
))) (forall ((o2_13@@88 T@Ref) (f_30@@103 T@Field_13716_13717) ) (!  (=> (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@29) null (WandMaskField_5370 pm_f_13@@10))) o2_13@@88 f_30@@103) (= (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@29) o2_13@@88 f_30@@103) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@88 f_30@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| ExhaleHeap@@27) o2_13@@88 f_30@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (IsWandField_5370_37296 pm_f_13@@10))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Int) (arg3@@4 T@Ref) (arg4@@4 Real) (arg5@@4 T@Ref) (arg6@@4 Real) (arg7@@4 T@Ref) (arg8@@4 Int) (arg1_2 T@Ref) (arg2_2 Int) (arg3_2 T@Ref) (arg4_2 Real) (arg5_2 T@Ref) (arg6_2 Real) (arg7_2 T@Ref) (arg8_2 Int) ) (!  (=> (= (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2)) (and (= arg1@@4 arg1_2) (and (= arg2@@4 arg2_2) (and (= arg3@@4 arg3_2) (and (= arg4@@4 arg4_2) (and (= arg5@@4 arg5_2) (and (= arg6@@4 arg6_2) (and (= arg7@@4 arg7_2) (= arg8@@4 arg8_2)))))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Int) (arg3@@5 T@Ref) (arg4@@5 Real) (arg5@@5 T@Ref) (arg6@@5 Real) (arg7@@5 T@Ref) (arg8@@5 Int) ) (! (= (getPredWandId_5302_1219 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5))
)))
(assert (forall ((x@@3 T@Ref) (i@@3 Int) ) (! (= (getPredWandId_5376_5377 (LLInf x@@3 i@@3)) 0)
 :qid |stdinbpl.239:15|
 :skolemid |31|
 :pattern ( (LLInf x@@3 i@@3))
)))
(assert (forall ((x@@4 T@Ref) (i@@4 Int) ) (! (= (PredicateMaskField_5376 (LLInf x@@4 i@@4)) (|LLInf#sm| x@@4 i@@4))
 :qid |stdinbpl.231:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_5376 (LLInf x@@4 i@@4)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9297) (o_35 T@Ref) (f_11 T@Field_12702_12707) (v T@PolymorphicMapType_9846) ) (! (succHeap Heap@@30 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@30) (store (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@30) o_35 f_11 v) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@30) (store (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@30) o_35 f_11 v) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@30) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9297) (o_35@@0 T@Ref) (f_11@@0 T@Field_12720_12721) (v@@0 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@31) (store (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@31) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@31) (store (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@31) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@31) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9297) (o_35@@1 T@Ref) (f_11@@1 T@Field_12687_1219) (v@@1 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@32) (store (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@32) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@32) (store (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@32) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@32) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9297) (o_35@@2 T@Ref) (f_11@@2 T@Field_12687_5373) (v@@2 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@33) (store (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@33) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@33) (store (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@33) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@33) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9297) (o_35@@3 T@Ref) (f_11@@3 T@Field_12687_53) (v@@3 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@34) (store (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@34) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@34) (store (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@34) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@34) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9297) (o_35@@4 T@Ref) (f_11@@4 T@Field_13729_13734) (v@@4 T@PolymorphicMapType_9846) ) (! (succHeap Heap@@35 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@35) (store (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@35) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@35) (store (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@35) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@35) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9297) (o_35@@5 T@Ref) (f_11@@5 T@Field_13716_13717) (v@@5 T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@36) (store (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@36) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@36) (store (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@36) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@36) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9297) (o_35@@6 T@Ref) (f_11@@6 T@Field_13716_1736) (v@@6 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@37) (store (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@37) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@37) (store (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@37) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@37) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9297) (o_35@@7 T@Ref) (f_11@@7 T@Field_13716_5373) (v@@7 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@38) (store (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@38) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@38) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@38) (store (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@38) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9297) (o_35@@8 T@Ref) (f_11@@8 T@Field_13716_53) (v@@8 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@39) (store (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@39) o_35@@8 f_11@@8 v@@8)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@39) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@39) (store (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@39) o_35@@8 f_11@@8 v@@8)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9297) (o_35@@9 T@Ref) (f_11@@9 T@Field_5370_12707) (v@@9 T@PolymorphicMapType_9846) ) (! (succHeap Heap@@40 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@40) (store (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@40) o_35@@9 f_11@@9 v@@9) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@40) (store (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@40) o_35@@9 f_11@@9 v@@9) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@40) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9297) (o_35@@10 T@Ref) (f_11@@10 T@Field_5370_12721) (v@@10 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@41) (store (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@41) o_35@@10 f_11@@10 v@@10) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@41) (store (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@41) o_35@@10 f_11@@10 v@@10) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@41) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9297) (o_35@@11 T@Ref) (f_11@@11 T@Field_13619_1736) (v@@11 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@42) (store (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@42) o_35@@11 f_11@@11 v@@11) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@42) (store (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@42) o_35@@11 f_11@@11 v@@11) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@42) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9297) (o_35@@12 T@Ref) (f_11@@12 T@Field_9370_9371) (v@@12 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@43) (store (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@43) o_35@@12 f_11@@12 v@@12) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@43) (store (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@43) o_35@@12 f_11@@12 v@@12) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@43) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9297) (o_35@@13 T@Ref) (f_11@@13 T@Field_9357_53) (v@@13 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_9297 (store (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@44) o_35@@13 f_11@@13 v@@13) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9297 (store (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@44) o_35@@13 f_11@@13 v@@13) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@44) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@44)))
)))
(assert (forall ((o_35@@14 T@Ref) (f_31 T@Field_9370_9371) (Heap@@45 T@PolymorphicMapType_9297) ) (!  (=> (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@45) o_35@@14 $allocated) (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@45) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@45) o_35@@14 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@45) o_35@@14 f_31))
)))
(assert (forall ((p@@3 T@Field_12720_12721) (v_1@@2 T@FrameType) (q T@Field_12720_12721) (w@@2 T@FrameType) (r T@Field_12720_12721) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12687_12687 p@@3 v_1@@2 q w@@2) (InsidePredicate_12687_12687 q w@@2 r u)) (InsidePredicate_12687_12687 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12687_12687 p@@3 v_1@@2 q w@@2) (InsidePredicate_12687_12687 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_12720_12721) (v_1@@3 T@FrameType) (q@@0 T@Field_12720_12721) (w@@3 T@FrameType) (r@@0 T@Field_5370_12721) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12687_12687 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_12687_9357 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_12687_9357 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12687_12687 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_12687_9357 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_12720_12721) (v_1@@4 T@FrameType) (q@@1 T@Field_12720_12721) (w@@4 T@FrameType) (r@@1 T@Field_13716_13717) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12687_12687 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_12687_5376 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_12687_5376 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12687_12687 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_12687_5376 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_12720_12721) (v_1@@5 T@FrameType) (q@@2 T@Field_5370_12721) (w@@5 T@FrameType) (r@@2 T@Field_12720_12721) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12687_9357 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9357_12687 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_12687_12687 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12687_9357 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9357_12687 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_12720_12721) (v_1@@6 T@FrameType) (q@@3 T@Field_5370_12721) (w@@6 T@FrameType) (r@@3 T@Field_5370_12721) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_12687_9357 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9357_9357 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_12687_9357 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12687_9357 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9357_9357 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_12720_12721) (v_1@@7 T@FrameType) (q@@4 T@Field_5370_12721) (w@@7 T@FrameType) (r@@4 T@Field_13716_13717) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_12687_9357 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9357_5376 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_12687_5376 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12687_9357 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9357_5376 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_12720_12721) (v_1@@8 T@FrameType) (q@@5 T@Field_13716_13717) (w@@8 T@FrameType) (r@@5 T@Field_12720_12721) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_12687_5376 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5376_12687 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_12687_12687 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12687_5376 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5376_12687 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_12720_12721) (v_1@@9 T@FrameType) (q@@6 T@Field_13716_13717) (w@@9 T@FrameType) (r@@6 T@Field_5370_12721) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_12687_5376 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5376_9357 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_12687_9357 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12687_5376 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5376_9357 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_12720_12721) (v_1@@10 T@FrameType) (q@@7 T@Field_13716_13717) (w@@10 T@FrameType) (r@@7 T@Field_13716_13717) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_12687_5376 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5376_5376 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_12687_5376 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12687_5376 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5376_5376 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_5370_12721) (v_1@@11 T@FrameType) (q@@8 T@Field_12720_12721) (w@@11 T@FrameType) (r@@8 T@Field_12720_12721) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_9357_12687 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_12687_12687 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_9357_12687 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9357_12687 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_12687_12687 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_5370_12721) (v_1@@12 T@FrameType) (q@@9 T@Field_12720_12721) (w@@12 T@FrameType) (r@@9 T@Field_5370_12721) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_9357_12687 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_12687_9357 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_9357_9357 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9357_12687 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_12687_9357 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_5370_12721) (v_1@@13 T@FrameType) (q@@10 T@Field_12720_12721) (w@@13 T@FrameType) (r@@10 T@Field_13716_13717) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_9357_12687 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_12687_5376 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_9357_5376 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9357_12687 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_12687_5376 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_5370_12721) (v_1@@14 T@FrameType) (q@@11 T@Field_5370_12721) (w@@14 T@FrameType) (r@@11 T@Field_12720_12721) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_9357_9357 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9357_12687 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_9357_12687 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9357_9357 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9357_12687 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_5370_12721) (v_1@@15 T@FrameType) (q@@12 T@Field_5370_12721) (w@@15 T@FrameType) (r@@12 T@Field_5370_12721) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_9357_9357 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9357_9357 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_9357_9357 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9357_9357 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9357_9357 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_5370_12721) (v_1@@16 T@FrameType) (q@@13 T@Field_5370_12721) (w@@16 T@FrameType) (r@@13 T@Field_13716_13717) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_9357_9357 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9357_5376 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_9357_5376 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9357_9357 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9357_5376 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_5370_12721) (v_1@@17 T@FrameType) (q@@14 T@Field_13716_13717) (w@@17 T@FrameType) (r@@14 T@Field_12720_12721) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_9357_5376 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5376_12687 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_9357_12687 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9357_5376 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5376_12687 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_5370_12721) (v_1@@18 T@FrameType) (q@@15 T@Field_13716_13717) (w@@18 T@FrameType) (r@@15 T@Field_5370_12721) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_9357_5376 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5376_9357 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_9357_9357 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9357_5376 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5376_9357 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_5370_12721) (v_1@@19 T@FrameType) (q@@16 T@Field_13716_13717) (w@@19 T@FrameType) (r@@16 T@Field_13716_13717) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_9357_5376 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5376_5376 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_9357_5376 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9357_5376 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5376_5376 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_13716_13717) (v_1@@20 T@FrameType) (q@@17 T@Field_12720_12721) (w@@20 T@FrameType) (r@@17 T@Field_12720_12721) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_5376_12687 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_12687_12687 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_5376_12687 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5376_12687 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_12687_12687 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_13716_13717) (v_1@@21 T@FrameType) (q@@18 T@Field_12720_12721) (w@@21 T@FrameType) (r@@18 T@Field_5370_12721) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_5376_12687 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_12687_9357 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_5376_9357 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5376_12687 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_12687_9357 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_13716_13717) (v_1@@22 T@FrameType) (q@@19 T@Field_12720_12721) (w@@22 T@FrameType) (r@@19 T@Field_13716_13717) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_5376_12687 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_12687_5376 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_5376_5376 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5376_12687 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_12687_5376 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_13716_13717) (v_1@@23 T@FrameType) (q@@20 T@Field_5370_12721) (w@@23 T@FrameType) (r@@20 T@Field_12720_12721) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_5376_9357 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9357_12687 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_5376_12687 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5376_9357 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9357_12687 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_13716_13717) (v_1@@24 T@FrameType) (q@@21 T@Field_5370_12721) (w@@24 T@FrameType) (r@@21 T@Field_5370_12721) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_5376_9357 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9357_9357 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_5376_9357 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5376_9357 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9357_9357 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_13716_13717) (v_1@@25 T@FrameType) (q@@22 T@Field_5370_12721) (w@@25 T@FrameType) (r@@22 T@Field_13716_13717) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_5376_9357 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9357_5376 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_5376_5376 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5376_9357 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9357_5376 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_13716_13717) (v_1@@26 T@FrameType) (q@@23 T@Field_13716_13717) (w@@26 T@FrameType) (r@@23 T@Field_12720_12721) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_5376_5376 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5376_12687 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_5376_12687 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5376_5376 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5376_12687 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_13716_13717) (v_1@@27 T@FrameType) (q@@24 T@Field_13716_13717) (w@@27 T@FrameType) (r@@24 T@Field_5370_12721) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_5376_5376 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5376_9357 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_5376_9357 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5376_5376 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5376_9357 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_13716_13717) (v_1@@28 T@FrameType) (q@@25 T@Field_13716_13717) (w@@28 T@FrameType) (r@@25 T@Field_13716_13717) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_5376_5376 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5376_5376 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_5376_5376 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5376_5376 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5376_5376 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@10 () T@PolymorphicMapType_9318)
(declare-fun x@@5 () T@Ref)
(declare-fun WandDefLHSMask@0 () T@PolymorphicMapType_9318)
(declare-fun WandDefLHSHeap@0 () T@PolymorphicMapType_9297)
(declare-fun WandDefRHSMask@0 () T@PolymorphicMapType_9318)
(declare-fun WandDefRHSHeap@0 () T@PolymorphicMapType_9297)
(declare-fun WandDefRHSMask@1 () T@PolymorphicMapType_9318)
(declare-fun b_1_1@32 () Bool)
(declare-fun b_6@12 () Bool)
(declare-fun Result_3Heap () T@PolymorphicMapType_9297)
(declare-fun Mask@9 () T@PolymorphicMapType_9318)
(declare-fun Heap@9 () T@PolymorphicMapType_9297)
(declare-fun Result_3Mask () T@PolymorphicMapType_9318)
(declare-fun b_1_1@31 () Bool)
(declare-fun neededTransfer@15 () Real)
(declare-fun Used_3Mask@7 () T@PolymorphicMapType_9318)
(declare-fun rcvLocal@0 () T@Ref)
(declare-fun initNeededTransfer@3 () Real)
(declare-fun b_8@0 () Bool)
(declare-fun b_8@1 () Bool)
(declare-fun b_8@2 () Bool)
(declare-fun Ops_1Mask@17 () T@PolymorphicMapType_9318)
(declare-fun b_8@3 () Bool)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_9297)
(declare-fun Used_3Heap@0 () T@PolymorphicMapType_9297)
(declare-fun b_8@4 () Bool)
(declare-fun takeTransfer@7 () Real)
(declare-fun neededTransfer@13 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_9318)
(declare-fun b_6@9 () Bool)
(declare-fun Heap@7 () T@PolymorphicMapType_9297)
(declare-fun Used_3Mask@5 () T@PolymorphicMapType_9318)
(declare-fun neededTransfer@14 () Real)
(declare-fun Used_3Mask@6 () T@PolymorphicMapType_9318)
(declare-fun b_6@10 () Bool)
(declare-fun b_6@11 () Bool)
(declare-fun Mask@8 () T@PolymorphicMapType_9318)
(declare-fun Heap@8 () T@PolymorphicMapType_9297)
(declare-fun maskTransfer@7 () Real)
(declare-fun takeTransfer@6 () Real)
(declare-fun Used_3Mask@3 () T@PolymorphicMapType_9318)
(declare-fun b_6@6 () Bool)
(declare-fun Ops_1Mask@15 () T@PolymorphicMapType_9318)
(declare-fun neededTransfer@12 () Real)
(declare-fun Used_3Mask@4 () T@PolymorphicMapType_9318)
(declare-fun b_6@7 () Bool)
(declare-fun b_6@8 () Bool)
(declare-fun Ops_1Mask@16 () T@PolymorphicMapType_9318)
(declare-fun maskTransfer@6 () Real)
(declare-fun Result_2Heap () T@PolymorphicMapType_9297)
(declare-fun Result_2Mask () T@PolymorphicMapType_9318)
(declare-fun b_1_1@30 () Bool)
(declare-fun neededTransfer@11 () Real)
(declare-fun initNeededTransfer@2 () Real)
(declare-fun b_7@0 () Bool)
(declare-fun b_7@1 () Bool)
(declare-fun b_7@2 () Bool)
(declare-fun b_7@3 () Bool)
(declare-fun b_7@4 () Bool)
(declare-fun takeTransfer@5 () Real)
(declare-fun Heap@5 () T@PolymorphicMapType_9297)
(declare-fun neededTransfer@9 () Real)
(declare-fun Mask@5 () T@PolymorphicMapType_9318)
(declare-fun b_6@3 () Bool)
(declare-fun Used_3Mask@1 () T@PolymorphicMapType_9318)
(declare-fun neededTransfer@10 () Real)
(declare-fun Used_3Mask@2 () T@PolymorphicMapType_9318)
(declare-fun b_6@4 () Bool)
(declare-fun b_6@5 () Bool)
(declare-fun Mask@6 () T@PolymorphicMapType_9318)
(declare-fun Heap@6 () T@PolymorphicMapType_9297)
(declare-fun maskTransfer@5 () Real)
(declare-fun takeTransfer@4 () Real)
(declare-fun Ops_1Mask@13 () T@PolymorphicMapType_9318)
(declare-fun b_6@0 () Bool)
(declare-fun neededTransfer@8 () Real)
(declare-fun Used_3Mask@0 () T@PolymorphicMapType_9318)
(declare-fun b_6@1 () Bool)
(declare-fun b_6@2 () Bool)
(declare-fun Ops_1Mask@14 () T@PolymorphicMapType_9318)
(declare-fun maskTransfer@4 () Real)
(declare-fun b_6 () Bool)
(declare-fun b_1_1@17 () Bool)
(declare-fun b_4@6 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun Used_2Mask@3 () T@PolymorphicMapType_9318)
(declare-fun arg_2@0 () T@Ref)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_5@0 () Bool)
(declare-fun b_5@1 () Bool)
(declare-fun Result_1Heap () T@PolymorphicMapType_9297)
(declare-fun Result_1Mask () T@PolymorphicMapType_9318)
(declare-fun b_5@2 () Bool)
(declare-fun Ops_1Mask@9 () T@PolymorphicMapType_9318)
(declare-fun b_5@3 () Bool)
(declare-fun Used_2Heap@0 () T@PolymorphicMapType_9297)
(declare-fun b_5@4 () Bool)
(declare-fun b_1_1@18 () Bool)
(declare-fun b_1_1@19 () Bool)
(declare-fun b_1_1@20 () Bool)
(declare-fun b_1_1@21 () Bool)
(declare-fun Ops_1Mask@10 () T@PolymorphicMapType_9318)
(declare-fun b_1_1@22 () Bool)
(declare-fun b_1_1@23 () Bool)
(declare-fun b_1_1@24 () Bool)
(declare-fun Ops_1Mask@11 () T@PolymorphicMapType_9318)
(declare-fun b_1_1@25 () Bool)
(declare-fun Ops_1Mask@12 () T@PolymorphicMapType_9318)
(declare-fun b_1_1@26 () Bool)
(declare-fun b_1_1@27 () Bool)
(declare-fun b_1_1@28 () Bool)
(declare-fun b_1_1@29 () Bool)
(declare-fun Heap@4 () T@PolymorphicMapType_9297)
(declare-fun Mask@4 () T@PolymorphicMapType_9318)
(declare-fun takeTransfer@3 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_9318)
(declare-fun neededTransfer@5 () Real)
(declare-fun Heap@2 () T@PolymorphicMapType_9297)
(declare-fun b_4@3 () Bool)
(declare-fun Used_2Mask@1 () T@PolymorphicMapType_9318)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_2Mask@2 () T@PolymorphicMapType_9318)
(declare-fun b_4@4 () Bool)
(declare-fun TempMask@3 () T@PolymorphicMapType_9318)
(declare-fun b_4@5 () Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_9318)
(declare-fun newPMask@1 () T@PolymorphicMapType_9846)
(declare-fun Heap@3 () T@PolymorphicMapType_9297)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Ops_1Mask@7 () T@PolymorphicMapType_9318)
(declare-fun b_4@0 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_2Mask@0 () T@PolymorphicMapType_9318)
(declare-fun b_4@1 () Bool)
(declare-fun TempMask@2 () T@PolymorphicMapType_9318)
(declare-fun b_4@2 () Bool)
(declare-fun Ops_1Mask@8 () T@PolymorphicMapType_9318)
(declare-fun maskTransfer@2 () Real)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1736 (Int) T@FrameType)
(declare-fun FrameFragment_5373 (T@Ref) T@FrameType)
(declare-fun b_4 () Bool)
(declare-fun b_1_1@4 () Bool)
(declare-fun b_2_1@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_1Mask@3 () T@PolymorphicMapType_9318)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_3@0 () Bool)
(declare-fun b_3@1 () Bool)
(declare-fun ResultHeap () T@PolymorphicMapType_9297)
(declare-fun ResultMask@@14 () T@PolymorphicMapType_9318)
(declare-fun b_3@2 () Bool)
(declare-fun Ops_1Mask@3 () T@PolymorphicMapType_9318)
(declare-fun b_3@3 () Bool)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_9297)
(declare-fun b_3@4 () Bool)
(declare-fun b_1_1@5 () Bool)
(declare-fun b_1_1@6 () Bool)
(declare-fun b_1_1@7 () Bool)
(declare-fun b_1_1@8 () Bool)
(declare-fun Ops_1Mask@4 () T@PolymorphicMapType_9318)
(declare-fun b_1_1@9 () Bool)
(declare-fun b_1_1@10 () Bool)
(declare-fun b_1_1@11 () Bool)
(declare-fun Ops_1Mask@5 () T@PolymorphicMapType_9318)
(declare-fun b_1_1@12 () Bool)
(declare-fun Ops_1Mask@6 () T@PolymorphicMapType_9318)
(declare-fun b_1_1@13 () Bool)
(declare-fun b_1_1@14 () Bool)
(declare-fun b_1_1@15 () Bool)
(declare-fun b_1_1@16 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_9318)
(declare-fun Heap@1 () T@PolymorphicMapType_9297)
(declare-fun takeTransfer@1 () Real)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_2_1@3 () Bool)
(declare-fun Used_1Mask@1 () T@PolymorphicMapType_9318)
(declare-fun Heap@@46 () T@PolymorphicMapType_9297)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_1Mask@2 () T@PolymorphicMapType_9318)
(declare-fun b_2_1@4 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_9318)
(declare-fun b_2_1@5 () Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_9318)
(declare-fun newPMask@0 () T@PolymorphicMapType_9846)
(declare-fun Heap@0 () T@PolymorphicMapType_9297)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_1Mask@1 () T@PolymorphicMapType_9318)
(declare-fun b_2_1@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_1Mask@0 () T@PolymorphicMapType_9318)
(declare-fun b_2_1@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_9318)
(declare-fun b_2_1@2 () Bool)
(declare-fun Ops_1Mask@2 () T@PolymorphicMapType_9318)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_2_1 () Bool)
(declare-fun b_1_1@3 () Bool)
(declare-fun b_1_1@2 () Bool)
(declare-fun b_1_1@0 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_9318)
(declare-fun b_1_1@1 () Bool)
(declare-fun b_1_1 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_9297)
(set-info :boogie-vc-id test04)
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
 (=> (= (ControlFlow 0 0) 100) (let ((anon102_Else_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (<= FullPerm (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Mask@10) null (wand x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))))))
(let ((anon102_Then_correct  (=> (= WandDefLHSMask@0 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0) (+ (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0)) FullPerm)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask))) (=> (and (state WandDefLHSHeap@0 WandDefLHSMask@0) (state WandDefLHSHeap@0 WandDefLHSMask@0)) (=> (and (and (state WandDefLHSHeap@0 WandDefLHSMask@0) (not (= x@@5 null))) (and (= WandDefRHSMask@0 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) (store (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) x@@5 next (+ (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) x@@5 next) FullPerm)) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask))) (state WandDefRHSHeap@0 WandDefRHSMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_5372_5373 WandDefRHSMask@0 x@@5 next)) (=> (HasDirectPerm_5372_5373 WandDefRHSMask@0 x@@5 next) (=> (not (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| WandDefRHSHeap@0) x@@5 next) null)) (=> (and (= WandDefRHSMask@1 (PolymorphicMapType_9318 (store (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| WandDefRHSMask@0) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| WandDefRHSHeap@0) x@@5 next) val (+ (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| WandDefRHSMask@0) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| WandDefRHSHeap@0) x@@5 next) val) FullPerm)) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| WandDefRHSMask@0) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| WandDefRHSMask@0))) (state WandDefRHSHeap@0 WandDefRHSMask@1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_5372_5373 WandDefRHSMask@1 x@@5 next)) (=> (HasDirectPerm_5372_5373 WandDefRHSMask@1 x@@5 next) (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_5370_1736 WandDefRHSMask@1 (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| WandDefRHSHeap@0) x@@5 next) val)))))))))))))
(let ((anon65_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (=> (and (and b_1_1@32 b_1_1@32) b_6@12) (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Result_3Heap) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Result_3Heap) x@@5 next) val) 1))) (=> (=> (and (and b_1_1@32 b_1_1@32) b_6@12) (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Result_3Heap) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Result_3Heap) x@@5 next) val) 1)) (=> (and (and (= Mask@10 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Mask@9) (store (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Mask@9) null (wand x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1) (+ (select (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Mask@9) null (wand x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1)) FullPerm)) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Mask@9) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Mask@9))) (state Heap@9 Mask@10)) (and (state Heap@9 Mask@10) (state Heap@9 Mask@10))) (and (=> (= (ControlFlow 0 7) 2) anon102_Then_correct) (=> (= (ControlFlow 0 7) 6) anon102_Else_correct)))))))
(let ((anon101_Else_correct  (=> (and (not b_1_1@32) (= (ControlFlow 0 13) 7)) anon65_correct)))
(let ((anon101_Then_correct  (=> b_1_1@32 (and (=> (= (ControlFlow 0 10) (- 0 12)) (HasDirectPerm_5372_5373 Result_3Mask x@@5 next)) (=> (HasDirectPerm_5372_5373 Result_3Mask x@@5 next) (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_5370_1736 Result_3Mask (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Result_3Heap) x@@5 next) val)) (=> (HasDirectPerm_5370_1736 Result_3Mask (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Result_3Heap) x@@5 next) val) (=> (= (ControlFlow 0 10) 7) anon65_correct))))))))
(let ((anon100_Then_correct  (=> (and (and b_1_1@32 b_1_1@32) b_6@12) (and (=> (= (ControlFlow 0 14) 10) anon101_Then_correct) (=> (= (ControlFlow 0 14) 13) anon101_Else_correct)))))
(let ((anon100_Else_correct  (=> (and (not (and (and b_1_1@32 b_1_1@32) b_6@12)) (= (ControlFlow 0 9) 7)) anon65_correct)))
(let ((anon62_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (=> (and (and b_1_1@31 b_1_1@31) b_6@12) (and (= neededTransfer@15 0.0) (= (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Used_3Mask@7) rcvLocal@0 val) initNeededTransfer@3)))) (=> (=> (and (and b_1_1@31 b_1_1@31) b_6@12) (and (= neededTransfer@15 0.0) (= (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Used_3Mask@7) rcvLocal@0 val) initNeededTransfer@3))) (=> (and (= b_8@0  (and b_1_1@31 b_6@12)) (= b_8@1  (and b_8@0 (state Result_3Heap Result_3Mask)))) (=> (and (and (= b_8@2  (and b_8@1 (sumMask Result_3Mask Ops_1Mask@17 Used_3Mask@7))) (= b_8@3  (and (and b_8@2 (IdenticalOnKnownLocations Ops_1Heap@0 Result_3Heap Ops_1Mask@17)) (IdenticalOnKnownLocations Used_3Heap@0 Result_3Heap Used_3Mask@7)))) (and (= b_8@4  (and b_8@3 (state Result_3Heap Result_3Mask))) (= b_1_1@32  (and b_1_1@31 b_8@4)))) (and (=> (= (ControlFlow 0 15) 14) anon100_Then_correct) (=> (= (ControlFlow 0 15) 9) anon100_Else_correct))))))))
(let ((anon99_Else_correct  (=> (>= 0.0 takeTransfer@7) (=> (and (= neededTransfer@15 neededTransfer@13) (= Mask@9 Mask@7)) (=> (and (and (= b_6@12 b_6@9) (= Heap@9 Heap@7)) (and (= Used_3Mask@7 Used_3Mask@5) (= (ControlFlow 0 19) 15))) anon62_correct)))))
(let ((anon99_Then_correct  (=> (> takeTransfer@7 0.0) (=> (and (and (= neededTransfer@14 (- neededTransfer@13 takeTransfer@7)) (= Used_3Mask@6 (PolymorphicMapType_9318 (store (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Used_3Mask@5) rcvLocal@0 val (+ (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Used_3Mask@5) rcvLocal@0 val) takeTransfer@7)) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Used_3Mask@5) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Used_3Mask@5)))) (and (= b_6@10  (and b_6@9 (state Used_3Heap@0 Used_3Mask@6))) (= b_6@11  (and b_6@10 (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@7) rcvLocal@0 val) (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Used_3Heap@0) rcvLocal@0 val)))))) (=> (and (and (and (= Mask@8 (PolymorphicMapType_9318 (store (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Mask@7) rcvLocal@0 val (- (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Mask@7) rcvLocal@0 val) takeTransfer@7)) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Mask@7) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Mask@7))) (= Heap@8 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@7) (store (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1) (PolymorphicMapType_9846 (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (store (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@7) x@@5 next) val true) (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@7) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))))) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@7) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@7)))) (and (= neededTransfer@15 neededTransfer@14) (= Mask@9 Mask@8))) (and (and (= b_6@12 b_6@11) (= Heap@9 Heap@8)) (and (= Used_3Mask@7 Used_3Mask@6) (= (ControlFlow 0 18) 15)))) anon62_correct)))))
(let ((anon98_Else_correct  (=> (and (< maskTransfer@7 neededTransfer@13) (= takeTransfer@7 maskTransfer@7)) (and (=> (= (ControlFlow 0 21) 18) anon99_Then_correct) (=> (= (ControlFlow 0 21) 19) anon99_Else_correct)))))
(let ((anon98_Then_correct  (=> (and (<= neededTransfer@13 maskTransfer@7) (= takeTransfer@7 neededTransfer@13)) (and (=> (= (ControlFlow 0 20) 18) anon99_Then_correct) (=> (= (ControlFlow 0 20) 19) anon99_Else_correct)))))
(let ((anon97_Then_correct  (=> (and (and (and (and (and b_1_1@31 b_1_1@31) b_6@9) true) (> neededTransfer@13 0.0)) (= maskTransfer@7 (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Mask@7) rcvLocal@0 val))) (and (=> (= (ControlFlow 0 22) 20) anon98_Then_correct) (=> (= (ControlFlow 0 22) 21) anon98_Else_correct)))))
(let ((anon97_Else_correct  (=> (not (and (and (and (and b_1_1@31 b_1_1@31) b_6@9) true) (> neededTransfer@13 0.0))) (=> (and (= neededTransfer@15 neededTransfer@13) (= Mask@9 Mask@7)) (=> (and (and (= b_6@12 b_6@9) (= Heap@9 Heap@7)) (and (= Used_3Mask@7 Used_3Mask@5) (= (ControlFlow 0 17) 15))) anon62_correct)))))
(let ((anon96_Else_correct  (=> (>= 0.0 takeTransfer@6) (=> (and (and (= Used_3Mask@5 Used_3Mask@3) (= b_6@9 b_6@6)) (and (= neededTransfer@13 FullPerm) (= Ops_1Mask@17 Ops_1Mask@15))) (and (=> (= (ControlFlow 0 25) 22) anon97_Then_correct) (=> (= (ControlFlow 0 25) 17) anon97_Else_correct))))))
(let ((anon96_Then_correct  (=> (and (> takeTransfer@6 0.0) (= neededTransfer@12 (- FullPerm takeTransfer@6))) (=> (and (and (and (= Used_3Mask@4 (PolymorphicMapType_9318 (store (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Used_3Mask@3) rcvLocal@0 val (+ (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Used_3Mask@3) rcvLocal@0 val) takeTransfer@6)) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Used_3Mask@3) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Used_3Mask@3))) (= b_6@7  (and b_6@6 (state Used_3Heap@0 Used_3Mask@4)))) (and (= b_6@8  (and b_6@7 (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Ops_1Heap@0) rcvLocal@0 val) (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Used_3Heap@0) rcvLocal@0 val)))) (= Ops_1Mask@16 (PolymorphicMapType_9318 (store (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@15) rcvLocal@0 val (- (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@15) rcvLocal@0 val) takeTransfer@6)) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Ops_1Mask@15) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Ops_1Mask@15))))) (and (and (= Used_3Mask@5 Used_3Mask@4) (= b_6@9 b_6@8)) (and (= neededTransfer@13 neededTransfer@12) (= Ops_1Mask@17 Ops_1Mask@16)))) (and (=> (= (ControlFlow 0 24) 22) anon97_Then_correct) (=> (= (ControlFlow 0 24) 17) anon97_Else_correct))))))
(let ((anon95_Else_correct  (=> (and (< maskTransfer@6 FullPerm) (= takeTransfer@6 maskTransfer@6)) (and (=> (= (ControlFlow 0 27) 24) anon96_Then_correct) (=> (= (ControlFlow 0 27) 25) anon96_Else_correct)))))
(let ((anon95_Then_correct  (=> (and (<= FullPerm maskTransfer@6) (= takeTransfer@6 FullPerm)) (and (=> (= (ControlFlow 0 26) 24) anon96_Then_correct) (=> (= (ControlFlow 0 26) 25) anon96_Else_correct)))))
(let ((anon94_Then_correct  (=> (and (and (and (and (and b_1_1@31 b_1_1@31) b_6@6) true) (> FullPerm 0.0)) (= maskTransfer@6 (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@15) rcvLocal@0 val))) (and (=> (= (ControlFlow 0 28) 26) anon95_Then_correct) (=> (= (ControlFlow 0 28) 27) anon95_Else_correct)))))
(let ((anon94_Else_correct  (=> (not (and (and (and (and b_1_1@31 b_1_1@31) b_6@6) true) (> FullPerm 0.0))) (=> (and (and (= Used_3Mask@5 Used_3Mask@3) (= b_6@9 b_6@6)) (and (= neededTransfer@13 FullPerm) (= Ops_1Mask@17 Ops_1Mask@15))) (and (=> (= (ControlFlow 0 23) 22) anon97_Then_correct) (=> (= (ControlFlow 0 23) 17) anon97_Else_correct))))))
(let ((anon50_correct  (=> (and (= rcvLocal@0 (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Result_2Heap) x@@5 next)) (= initNeededTransfer@3 (+ (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Used_3Mask@3) rcvLocal@0 val) FullPerm))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 29) 28) anon94_Then_correct) (=> (= (ControlFlow 0 29) 23) anon94_Else_correct)))))))
(let ((anon93_Else_correct  (=> (and (not b_1_1@31) (= (ControlFlow 0 34) 29)) anon50_correct)))
(let ((anon93_Then_correct  (=> b_1_1@31 (and (=> (= (ControlFlow 0 32) (- 0 33)) (HasDirectPerm_5372_5373 Result_2Mask x@@5 next)) (=> (HasDirectPerm_5372_5373 Result_2Mask x@@5 next) (=> (= (ControlFlow 0 32) 29) anon50_correct))))))
(let ((anon92_Then_correct  (=> (and (and b_1_1@31 b_1_1@31) b_6@6) (and (=> (= (ControlFlow 0 35) 32) anon93_Then_correct) (=> (= (ControlFlow 0 35) 34) anon93_Else_correct)))))
(let ((anon92_Else_correct  (=> (and (not (and (and b_1_1@31 b_1_1@31) b_6@6)) (= (ControlFlow 0 31) 29)) anon50_correct)))
(let ((anon47_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) (=> (and (and b_1_1@30 b_1_1@30) b_6@6) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Used_3Mask@3) x@@5 next) initNeededTransfer@2)))) (=> (=> (and (and b_1_1@30 b_1_1@30) b_6@6) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Used_3Mask@3) x@@5 next) initNeededTransfer@2))) (=> (and (= b_7@0  (and b_1_1@30 b_6@6)) (= b_7@1  (and b_7@0 (state Result_2Heap Result_2Mask)))) (=> (and (and (= b_7@2  (and b_7@1 (sumMask Result_2Mask Ops_1Mask@15 Used_3Mask@3))) (= b_7@3  (and (and b_7@2 (IdenticalOnKnownLocations Ops_1Heap@0 Result_2Heap Ops_1Mask@15)) (IdenticalOnKnownLocations Used_3Heap@0 Result_2Heap Used_3Mask@3)))) (and (= b_7@4  (and b_7@3 (state Result_2Heap Result_2Mask))) (= b_1_1@31  (and b_1_1@30 b_7@4)))) (and (=> (= (ControlFlow 0 36) 35) anon92_Then_correct) (=> (= (ControlFlow 0 36) 31) anon92_Else_correct))))))))
(let ((anon91_Else_correct  (=> (>= 0.0 takeTransfer@5) (=> (and (= Heap@7 Heap@5) (= neededTransfer@11 neededTransfer@9)) (=> (and (and (= Mask@7 Mask@5) (= b_6@6 b_6@3)) (and (= Used_3Mask@3 Used_3Mask@1) (= (ControlFlow 0 40) 36))) anon47_correct)))))
(let ((anon91_Then_correct  (=> (> takeTransfer@5 0.0) (=> (and (and (= neededTransfer@10 (- neededTransfer@9 takeTransfer@5)) (= Used_3Mask@2 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Used_3Mask@1) (store (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Used_3Mask@1) x@@5 next (+ (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Used_3Mask@1) x@@5 next) takeTransfer@5)) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Used_3Mask@1) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Used_3Mask@1)))) (and (= b_6@4  (and b_6@3 (state Used_3Heap@0 Used_3Mask@2))) (= b_6@5  (and b_6@4 (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@5) x@@5 next) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Used_3Heap@0) x@@5 next)))))) (=> (and (and (and (= Mask@6 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Mask@5) (store (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Mask@5) x@@5 next (- (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Mask@5) x@@5 next) takeTransfer@5)) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Mask@5) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Mask@5))) (= Heap@6 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@5) (store (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1) (PolymorphicMapType_9846 (store (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) x@@5 next true) (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@5) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))))) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@5) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@5)))) (and (= Heap@7 Heap@6) (= neededTransfer@11 neededTransfer@10))) (and (and (= Mask@7 Mask@6) (= b_6@6 b_6@5)) (and (= Used_3Mask@3 Used_3Mask@2) (= (ControlFlow 0 39) 36)))) anon47_correct)))))
(let ((anon90_Else_correct  (=> (and (< maskTransfer@5 neededTransfer@9) (= takeTransfer@5 maskTransfer@5)) (and (=> (= (ControlFlow 0 42) 39) anon91_Then_correct) (=> (= (ControlFlow 0 42) 40) anon91_Else_correct)))))
(let ((anon90_Then_correct  (=> (and (<= neededTransfer@9 maskTransfer@5) (= takeTransfer@5 neededTransfer@9)) (and (=> (= (ControlFlow 0 41) 39) anon91_Then_correct) (=> (= (ControlFlow 0 41) 40) anon91_Else_correct)))))
(let ((anon89_Then_correct  (=> (and (and (and (and (and b_1_1@30 b_1_1@30) b_6@3) true) (> neededTransfer@9 0.0)) (= maskTransfer@5 (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Mask@5) x@@5 next))) (and (=> (= (ControlFlow 0 43) 41) anon90_Then_correct) (=> (= (ControlFlow 0 43) 42) anon90_Else_correct)))))
(let ((anon89_Else_correct  (=> (not (and (and (and (and b_1_1@30 b_1_1@30) b_6@3) true) (> neededTransfer@9 0.0))) (=> (and (= Heap@7 Heap@5) (= neededTransfer@11 neededTransfer@9)) (=> (and (and (= Mask@7 Mask@5) (= b_6@6 b_6@3)) (and (= Used_3Mask@3 Used_3Mask@1) (= (ControlFlow 0 38) 36))) anon47_correct)))))
(let ((anon88_Else_correct  (=> (>= 0.0 takeTransfer@4) (=> (and (and (= Ops_1Mask@15 Ops_1Mask@13) (= Used_3Mask@1 ZeroMask)) (and (= b_6@3 b_6@0) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 46) 43) anon89_Then_correct) (=> (= (ControlFlow 0 46) 38) anon89_Else_correct))))))
(let ((anon88_Then_correct  (=> (and (> takeTransfer@4 0.0) (= neededTransfer@8 (- FullPerm takeTransfer@4))) (=> (and (and (and (= Used_3Mask@0 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) (store (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) x@@5 next (+ (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) x@@5 next) takeTransfer@4)) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask))) (= b_6@1  (and b_6@0 (state Used_3Heap@0 Used_3Mask@0)))) (and (= b_6@2  (and b_6@1 (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Used_3Heap@0) x@@5 next)))) (= Ops_1Mask@14 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@13) (store (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@13) x@@5 next (- (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@13) x@@5 next) takeTransfer@4)) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Ops_1Mask@13) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Ops_1Mask@13))))) (and (and (= Ops_1Mask@15 Ops_1Mask@14) (= Used_3Mask@1 Used_3Mask@0)) (and (= b_6@3 b_6@2) (= neededTransfer@9 neededTransfer@8)))) (and (=> (= (ControlFlow 0 45) 43) anon89_Then_correct) (=> (= (ControlFlow 0 45) 38) anon89_Else_correct))))))
(let ((anon87_Else_correct  (=> (and (< maskTransfer@4 FullPerm) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 48) 45) anon88_Then_correct) (=> (= (ControlFlow 0 48) 46) anon88_Else_correct)))))
(let ((anon87_Then_correct  (=> (and (<= FullPerm maskTransfer@4) (= takeTransfer@4 FullPerm)) (and (=> (= (ControlFlow 0 47) 45) anon88_Then_correct) (=> (= (ControlFlow 0 47) 46) anon88_Else_correct)))))
(let ((anon86_Then_correct  (=> (and (and (and (and (and b_1_1@30 b_1_1@30) b_6@0) true) (> FullPerm 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@13) x@@5 next))) (and (=> (= (ControlFlow 0 49) 47) anon87_Then_correct) (=> (= (ControlFlow 0 49) 48) anon87_Else_correct)))))
(let ((anon86_Else_correct  (=> (not (and (and (and (and b_1_1@30 b_1_1@30) b_6@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@15 Ops_1Mask@13) (= Used_3Mask@1 ZeroMask)) (and (= b_6@3 b_6@0) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 44) 43) anon89_Then_correct) (=> (= (ControlFlow 0 44) 38) anon89_Else_correct))))))
(let ((anon35_correct  (=> (and (= b_6@0  (and b_6 (state Used_3Heap@0 ZeroMask))) (= initNeededTransfer@2 (+ (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) x@@5 next) FullPerm))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 50) 49) anon86_Then_correct) (=> (= (ControlFlow 0 50) 44) anon86_Else_correct)))))))
(let ((anon34_correct  (and (=> (= (ControlFlow 0 53) (- 0 54)) (=> (and b_1_1@17 b_4@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Used_2Mask@3) null (LLInf arg_2@0 1)) initNeededTransfer@1)))) (=> (=> (and b_1_1@17 b_4@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Used_2Mask@3) null (LLInf arg_2@0 1)) initNeededTransfer@1))) (=> (= b_5@0  (and b_1_1@17 b_4@6)) (=> (and (and (and (= b_5@1  (and b_5@0 (state Result_1Heap Result_1Mask))) (= b_5@2  (and b_5@1 (sumMask Result_1Mask Ops_1Mask@9 Used_2Mask@3)))) (and (= b_5@3  (and (and b_5@2 (IdenticalOnKnownLocations Ops_1Heap@0 Result_1Heap Ops_1Mask@9)) (IdenticalOnKnownLocations Used_2Heap@0 Result_1Heap Used_2Mask@3))) (= b_5@4  (and b_5@3 (state Result_1Heap Result_1Mask))))) (and (and (= b_1_1@18  (and b_1_1@17 b_5@4)) (= b_1_1@19  (and b_1_1@18 b_4@6))) (and (= b_1_1@20  (and b_1_1@19 (= Used_2Heap@0 Ops_1Heap@0))) (= b_1_1@21  (and b_1_1@20 (not (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) null))))))) (=> (and (and (and (and (= Ops_1Mask@10 (PolymorphicMapType_9318 (store (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@9) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) val (+ (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@9) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) val) FullPerm)) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Ops_1Mask@9) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Ops_1Mask@9))) (= b_1_1@22  (and b_1_1@21 (state Ops_1Heap@0 Ops_1Mask@10)))) (and (= b_1_1@23  (and b_1_1@22 (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Ops_1Heap@0) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) val) 1))) (= b_1_1@24  (and b_1_1@23 (not (= (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) null)))))) (and (and (= Ops_1Mask@11 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@10) (store (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@10) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) next (+ (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@10) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) next) FullPerm)) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Ops_1Mask@10) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Ops_1Mask@10))) (= b_1_1@25  (and b_1_1@24 (state Ops_1Heap@0 Ops_1Mask@11)))) (and (= Ops_1Mask@12 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@11) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@11) null (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) next) 2) (+ (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@11) null (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) next) 2)) FullPerm)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Ops_1Mask@11) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Ops_1Mask@11))) (= b_1_1@26  (and b_1_1@25 (InsidePredicate_5376_5376 (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) 1) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Ops_1Heap@0) null (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) 1)) (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) next) 2) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Ops_1Heap@0) null (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) next) 2)))))))) (and (and (and (= b_1_1@27  (and b_1_1@26 (state Ops_1Heap@0 Ops_1Mask@12))) (= b_1_1@28  (and b_1_1@27 (state Ops_1Heap@0 Ops_1Mask@12)))) (and (= b_1_1@29  (and b_1_1@28 (state Ops_1Heap@0 Ops_1Mask@12))) (= b_1_1@30 b_1_1@29))) (and (and (= Heap@5 Heap@4) (= Mask@5 Mask@4)) (and (= Ops_1Mask@13 Ops_1Mask@12) (= (ControlFlow 0 53) 50))))) anon35_correct)))))))
(let ((anon85_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= Mask@4 Mask@2) (= neededTransfer@7 neededTransfer@5)) (=> (and (and (= Heap@4 Heap@2) (= b_4@6 b_4@3)) (and (= Used_2Mask@3 Used_2Mask@1) (= (ControlFlow 0 57) 53))) anon34_correct)))))
(let ((anon85_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (= neededTransfer@6 (- neededTransfer@5 takeTransfer@3)) (= Used_2Mask@2 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Used_2Mask@1) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Used_2Mask@1) null (LLInf arg_2@0 1) (+ (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Used_2Mask@1) null (LLInf arg_2@0 1)) takeTransfer@3)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Used_2Mask@1) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Used_2Mask@1)))) (=> (and (and (= b_4@4  (and b_4@3 (state Used_2Heap@0 Used_2Mask@2))) (= TempMask@3 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf arg_2@0 1) FullPerm) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask)))) (and (= b_4@5  (and b_4@4 (IdenticalOnKnownLocations Heap@2 Used_2Heap@0 TempMask@3))) (= Mask@3 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Mask@2) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Mask@2) null (LLInf arg_2@0 1) (- (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Mask@2) null (LLInf arg_2@0 1)) takeTransfer@3)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Mask@2) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Mask@2))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_9370_9371) ) (!  (=> (or (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16 f_21) (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16 f_21)) (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| newPMask@1) o_16 f_21))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| newPMask@1) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_13619_1736) ) (!  (=> (or (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| newPMask@1) o_16@@0 f_21@@0))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| newPMask@1) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_9357_53) ) (!  (=> (or (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| newPMask@1) o_16@@1 f_21@@1))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| newPMask@1) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_5370_12707) ) (!  (=> (or (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| newPMask@1) o_16@@2 f_21@@2))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| newPMask@1) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_5370_12721) ) (!  (=> (or (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| newPMask@1) o_16@@3 f_21@@3))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| newPMask@1) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_12687_5373) ) (!  (=> (or (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| newPMask@1) o_16@@4 f_21@@4))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| newPMask@1) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_12687_1219) ) (!  (=> (or (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| newPMask@1) o_16@@5 f_21@@5))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| newPMask@1) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_12687_53) ) (!  (=> (or (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| newPMask@1) o_16@@6 f_21@@6))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| newPMask@1) o_16@@6 f_21@@6))
))) (forall ((o_16@@7 T@Ref) (f_21@@7 T@Field_12702_12707) ) (!  (=> (or (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@7 f_21@@7) (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@7 f_21@@7)) (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| newPMask@1) o_16@@7 f_21@@7))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| newPMask@1) o_16@@7 f_21@@7))
))) (forall ((o_16@@8 T@Ref) (f_21@@8 T@Field_12720_12721) ) (!  (=> (or (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@8 f_21@@8) (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@8 f_21@@8)) (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| newPMask@1) o_16@@8 f_21@@8))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| newPMask@1) o_16@@8 f_21@@8))
))) (forall ((o_16@@9 T@Ref) (f_21@@9 T@Field_13716_5373) ) (!  (=> (or (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@9 f_21@@9) (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@9 f_21@@9)) (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| newPMask@1) o_16@@9 f_21@@9))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| newPMask@1) o_16@@9 f_21@@9))
))) (forall ((o_16@@10 T@Ref) (f_21@@10 T@Field_13716_1736) ) (!  (=> (or (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@10 f_21@@10) (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@10 f_21@@10)) (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| newPMask@1) o_16@@10 f_21@@10))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| newPMask@1) o_16@@10 f_21@@10))
))) (forall ((o_16@@11 T@Ref) (f_21@@11 T@Field_13716_53) ) (!  (=> (or (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@11 f_21@@11) (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@11 f_21@@11)) (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| newPMask@1) o_16@@11 f_21@@11))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| newPMask@1) o_16@@11 f_21@@11))
))) (forall ((o_16@@12 T@Ref) (f_21@@12 T@Field_13729_13734) ) (!  (=> (or (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@12 f_21@@12) (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@12 f_21@@12)) (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| newPMask@1) o_16@@12 f_21@@12))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| newPMask@1) o_16@@12 f_21@@12))
))) (forall ((o_16@@13 T@Ref) (f_21@@13 T@Field_13716_13717) ) (!  (=> (or (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_16@@13 f_21@@13) (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) null (|LLInf#sm| (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) x@@5 next) 1))) o_16@@13 f_21@@13)) (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| newPMask@1) o_16@@13 f_21@@13))
 :qid |stdinbpl.569:39|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| newPMask@1) o_16@@13 f_21@@13))
))) (= Heap@3 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@2) (store (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@2) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1) newPMask@1) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@2) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@2)))) (and (= Mask@4 Mask@3) (= neededTransfer@7 neededTransfer@6))) (and (and (= Heap@4 Heap@3) (= b_4@6 b_4@5)) (and (= Used_2Mask@3 Used_2Mask@2) (= (ControlFlow 0 56) 53)))) anon34_correct))))))
(let ((anon84_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@5) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 59) 56) anon85_Then_correct) (=> (= (ControlFlow 0 59) 57) anon85_Else_correct)))))
(let ((anon84_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@3) (= takeTransfer@3 neededTransfer@5)) (and (=> (= (ControlFlow 0 58) 56) anon85_Then_correct) (=> (= (ControlFlow 0 58) 57) anon85_Else_correct)))))
(let ((anon83_Then_correct  (=> (and (and (and (and b_1_1@17 b_4@3) true) (> neededTransfer@5 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Mask@2) null (LLInf arg_2@0 1)))) (and (=> (= (ControlFlow 0 60) 58) anon84_Then_correct) (=> (= (ControlFlow 0 60) 59) anon84_Else_correct)))))
(let ((anon83_Else_correct  (=> (not (and (and (and b_1_1@17 b_4@3) true) (> neededTransfer@5 0.0))) (=> (and (= Mask@4 Mask@2) (= neededTransfer@7 neededTransfer@5)) (=> (and (and (= Heap@4 Heap@2) (= b_4@6 b_4@3)) (and (= Used_2Mask@3 Used_2Mask@1) (= (ControlFlow 0 55) 53))) anon34_correct)))))
(let ((anon82_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (and (= Ops_1Mask@9 Ops_1Mask@7) (= Used_2Mask@1 ZeroMask)) (and (= b_4@3 b_4@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 63) 60) anon83_Then_correct) (=> (= (ControlFlow 0 63) 55) anon83_Else_correct))))))
(let ((anon82_Then_correct  (=> (> takeTransfer@2 0.0) (=> (and (= neededTransfer@4 (- FullPerm takeTransfer@2)) (= Used_2Mask@0 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf arg_2@0 1) (+ (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf arg_2@0 1)) takeTransfer@2)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask)))) (=> (and (and (and (= b_4@1  (and b_4@0 (state Used_2Heap@0 Used_2Mask@0))) (= TempMask@2 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf arg_2@0 1) FullPerm) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask)))) (and (= b_4@2  (and b_4@1 (IdenticalOnKnownLocations Ops_1Heap@0 Used_2Heap@0 TempMask@2))) (= Ops_1Mask@8 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@7) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@7) null (LLInf arg_2@0 1) (- (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@7) null (LLInf arg_2@0 1)) takeTransfer@2)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Ops_1Mask@7) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Ops_1Mask@7))))) (and (and (= Ops_1Mask@9 Ops_1Mask@8) (= Used_2Mask@1 Used_2Mask@0)) (and (= b_4@3 b_4@2) (= neededTransfer@5 neededTransfer@4)))) (and (=> (= (ControlFlow 0 62) 60) anon83_Then_correct) (=> (= (ControlFlow 0 62) 55) anon83_Else_correct)))))))
(let ((anon81_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 65) 62) anon82_Then_correct) (=> (= (ControlFlow 0 65) 63) anon82_Else_correct)))))
(let ((anon81_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 64) 62) anon82_Then_correct) (=> (= (ControlFlow 0 64) 63) anon82_Else_correct)))))
(let ((anon80_Then_correct  (=> (and (and (and (and b_1_1@17 b_4@0) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@7) null (LLInf arg_2@0 1)))) (and (=> (= (ControlFlow 0 66) 64) anon81_Then_correct) (=> (= (ControlFlow 0 66) 65) anon81_Else_correct)))))
(let ((anon80_Else_correct  (=> (not (and (and (and b_1_1@17 b_4@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@9 Ops_1Mask@7) (= Used_2Mask@1 ZeroMask)) (and (= b_4@3 b_4@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 61) 60) anon83_Then_correct) (=> (= (ControlFlow 0 61) 55) anon83_Else_correct))))))
(let ((anon22_correct  (=> (and (= arg_2@0 (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next)) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf arg_2@0 1)) FullPerm))) (and (=> (= (ControlFlow 0 67) (- 0 68)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 67) 66) anon80_Then_correct) (=> (= (ControlFlow 0 67) 61) anon80_Else_correct)))))))
(let ((anon79_Else_correct  (=> (and (not b_1_1@17) (= (ControlFlow 0 72) 67)) anon22_correct)))
(let ((anon79_Then_correct  (=> b_1_1@17 (and (=> (= (ControlFlow 0 70) (- 0 71)) (HasDirectPerm_5372_5373 Ops_1Mask@7 x@@5 next)) (=> (HasDirectPerm_5372_5373 Ops_1Mask@7 x@@5 next) (=> (= (ControlFlow 0 70) 67) anon22_correct))))))
(let ((anon78_Then_correct  (=> (and b_1_1@17 b_4@0) (and (=> (= (ControlFlow 0 73) 70) anon79_Then_correct) (=> (= (ControlFlow 0 73) 72) anon79_Else_correct)))))
(let ((anon78_Else_correct  (=> (and (not (and b_1_1@17 b_4@0)) (= (ControlFlow 0 69) 67)) anon22_correct)))
(let ((anon19_correct  (=> (|LLInf#trigger_5376| Ops_1Heap@0 (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) 1)) (=> (and (= (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Ops_1Heap@0) null (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) 1)) (CombineFrames (FrameFragment_1736 (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Ops_1Heap@0) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) val)) (CombineFrames (FrameFragment_5373 (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) next)) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Ops_1Heap@0) null (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) next) 2))))) (= b_4@0  (and b_4 (state Used_2Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 74) 73) anon78_Then_correct) (=> (= (ControlFlow 0 74) 69) anon78_Else_correct))))))
(let ((anon77_Else_correct  (=> (and (not b_1_1@17) (= (ControlFlow 0 77) 74)) anon19_correct)))
(let ((anon77_Then_correct  (=> b_1_1@17 (and (=> (= (ControlFlow 0 75) (- 0 76)) (HasDirectPerm_5372_5373 Ops_1Mask@7 x@@5 next)) (=> (HasDirectPerm_5372_5373 Ops_1Mask@7 x@@5 next) (=> (= (ControlFlow 0 75) 74) anon19_correct))))))
(let ((anon76_Then_correct  (=> b_1_1@17 (and (=> (= (ControlFlow 0 78) 75) anon77_Then_correct) (=> (= (ControlFlow 0 78) 77) anon77_Else_correct)))))
(let ((anon76_Else_correct  (=> (and (not b_1_1@17) (= b_1_1@30 b_1_1@17)) (=> (and (and (= Heap@5 Heap@2) (= Mask@5 Mask@2)) (and (= Ops_1Mask@13 Ops_1Mask@7) (= (ControlFlow 0 52) 50))) anon35_correct))))
(let ((anon15_correct  (and (=> (= (ControlFlow 0 80) (- 0 81)) (=> (and b_1_1@4 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Used_1Mask@3) null (LLInf x@@5 0)) initNeededTransfer@0)))) (=> (=> (and b_1_1@4 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Used_1Mask@3) null (LLInf x@@5 0)) initNeededTransfer@0))) (=> (and (and (and (= b_3@0  (and b_1_1@4 b_2_1@6)) (= b_3@1  (and b_3@0 (state ResultHeap ResultMask@@14)))) (and (= b_3@2  (and b_3@1 (sumMask ResultMask@@14 Ops_1Mask@3 Used_1Mask@3))) (= b_3@3  (and (and b_3@2 (IdenticalOnKnownLocations Ops_1Heap@0 ResultHeap Ops_1Mask@3)) (IdenticalOnKnownLocations Used_1Heap@0 ResultHeap Used_1Mask@3))))) (and (and (= b_3@4  (and b_3@3 (state ResultHeap ResultMask@@14))) (= b_1_1@5  (and b_1_1@4 b_3@4))) (and (= b_1_1@6  (and b_1_1@5 b_2_1@6)) (= b_1_1@7  (and b_1_1@6 (= Used_1Heap@0 Ops_1Heap@0)))))) (=> (and (and (and (and (= b_1_1@8  (and b_1_1@7 (not (= x@@5 null)))) (= Ops_1Mask@4 (PolymorphicMapType_9318 (store (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@3) x@@5 val (+ (select (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@3) x@@5 val) FullPerm)) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Ops_1Mask@3) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Ops_1Mask@3)))) (and (= b_1_1@9  (and b_1_1@8 (state Ops_1Heap@0 Ops_1Mask@4))) (= b_1_1@10  (and b_1_1@9 (= (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 val) 0))))) (and (and (= b_1_1@11  (and b_1_1@10 (not (= x@@5 null)))) (= Ops_1Mask@5 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@4) (store (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@4) x@@5 next (+ (select (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@4) x@@5 next) FullPerm)) (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Ops_1Mask@4) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Ops_1Mask@4)))) (and (= b_1_1@12  (and b_1_1@11 (state Ops_1Heap@0 Ops_1Mask@5))) (= Ops_1Mask@6 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@5) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@5) null (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) 1) (+ (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@5) null (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) 1)) FullPerm)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Ops_1Mask@5) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Ops_1Mask@5)))))) (and (and (and (= b_1_1@13  (and b_1_1@12 (InsidePredicate_5376_5376 (LLInf x@@5 0) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Ops_1Heap@0) null (LLInf x@@5 0)) (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) 1) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Ops_1Heap@0) null (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) 1))))) (= b_1_1@14  (and b_1_1@13 (state Ops_1Heap@0 Ops_1Mask@6)))) (and (= b_1_1@15  (and b_1_1@14 (state Ops_1Heap@0 Ops_1Mask@6))) (= b_1_1@16  (and b_1_1@15 (state Ops_1Heap@0 Ops_1Mask@6))))) (and (and (= b_1_1@17 b_1_1@16) (= Mask@2 Mask@1)) (and (= Ops_1Mask@7 Ops_1Mask@6) (= Heap@2 Heap@1))))) (and (=> (= (ControlFlow 0 80) 78) anon76_Then_correct) (=> (= (ControlFlow 0 80) 52) anon76_Else_correct))))))))
(let ((anon75_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@1 ZeroMask) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@46) (= (ControlFlow 0 84) 80))) anon15_correct)))))
(let ((anon75_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_1Mask@2 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Used_1Mask@1) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Used_1Mask@1) null (LLInf x@@5 0) (+ (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Used_1Mask@1) null (LLInf x@@5 0)) takeTransfer@1)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Used_1Mask@1) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Used_1Mask@1)))) (=> (and (and (= b_2_1@4  (and b_2_1@3 (state Used_1Heap@0 Used_1Mask@2))) (= TempMask@1 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0) FullPerm) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask)))) (and (= b_2_1@5  (and b_2_1@4 (IdenticalOnKnownLocations Heap@@46 Used_1Heap@0 TempMask@1))) (= Mask@0 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0) (- (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0)) takeTransfer@1)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_9370_9371) ) (!  (=> (or (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15 f_20) (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15 f_20)) (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| newPMask@0) o_15 f_20))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_5372_5373#PolymorphicMapType_9846| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_13619_1736) ) (!  (=> (or (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_5370_1736#PolymorphicMapType_9846| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_9357_53) ) (!  (=> (or (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_5372_53#PolymorphicMapType_9846| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_5370_12707) ) (!  (=> (or (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_5372_33907#PolymorphicMapType_9846| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_5370_12721) ) (!  (=> (or (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_5372_12721#PolymorphicMapType_9846| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_12687_5373) ) (!  (=> (or (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_12687_5373#PolymorphicMapType_9846| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_12687_1219) ) (!  (=> (or (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_12687_1736#PolymorphicMapType_9846| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_12687_53) ) (!  (=> (or (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_12687_53#PolymorphicMapType_9846| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_12702_12707) ) (!  (=> (or (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_12687_34955#PolymorphicMapType_9846| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_12720_12721) ) (!  (=> (or (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_12687_12721#PolymorphicMapType_9846| newPMask@0) o_15@@8 f_20@@8))
))) (forall ((o_15@@9 T@Ref) (f_20@@9 T@Field_13716_5373) ) (!  (=> (or (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@9 f_20@@9) (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@9 f_20@@9)) (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| newPMask@0) o_15@@9 f_20@@9))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_13716_5373#PolymorphicMapType_9846| newPMask@0) o_15@@9 f_20@@9))
))) (forall ((o_15@@10 T@Ref) (f_20@@10 T@Field_13716_1736) ) (!  (=> (or (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@10 f_20@@10) (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@10 f_20@@10)) (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| newPMask@0) o_15@@10 f_20@@10))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_13716_1736#PolymorphicMapType_9846| newPMask@0) o_15@@10 f_20@@10))
))) (forall ((o_15@@11 T@Ref) (f_20@@11 T@Field_13716_53) ) (!  (=> (or (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@11 f_20@@11) (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@11 f_20@@11)) (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| newPMask@0) o_15@@11 f_20@@11))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_13716_53#PolymorphicMapType_9846| newPMask@0) o_15@@11 f_20@@11))
))) (forall ((o_15@@12 T@Ref) (f_20@@12 T@Field_13729_13734) ) (!  (=> (or (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@12 f_20@@12) (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@12 f_20@@12)) (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| newPMask@0) o_15@@12 f_20@@12))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_13716_36003#PolymorphicMapType_9846| newPMask@0) o_15@@12 f_20@@12))
))) (forall ((o_15@@13 T@Ref) (f_20@@13 T@Field_13716_13717) ) (!  (=> (or (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1))) o_15@@13 f_20@@13) (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| (select (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) null (|LLInf#sm| x@@5 0))) o_15@@13 f_20@@13)) (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| newPMask@0) o_15@@13 f_20@@13))
 :qid |stdinbpl.456:39|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_9846_13716_12721#PolymorphicMapType_9846| newPMask@0) o_15@@13 f_20@@13))
))) (= Heap@0 (PolymorphicMapType_9297 (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Heap@@46) (store (|PolymorphicMapType_9297_5310_17809#PolymorphicMapType_9297| Heap@@46) null (|wand#sm| x@@5 0 x@@5 FullPerm x@@5 FullPerm x@@5 1) newPMask@0) (|PolymorphicMapType_9297_5380_17930#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_5370_29577#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_5370_12721#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_12687_1736#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_12687_5373#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_12687_53#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_12687_12721#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_13716_1736#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_13716_5373#PolymorphicMapType_9297| Heap@@46) (|PolymorphicMapType_9297_13716_53#PolymorphicMapType_9297| Heap@@46)))) (and (= Mask@1 Mask@0) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_2_1@6 b_2_1@5) (= Used_1Mask@3 Used_1Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 83) 80)))) anon15_correct))))))
(let ((anon74_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 86) 83) anon75_Then_correct) (=> (= (ControlFlow 0 86) 84) anon75_Else_correct)))))
(let ((anon74_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 85) 83) anon75_Then_correct) (=> (= (ControlFlow 0 85) 84) anon75_Else_correct)))))
(let ((anon73_Then_correct  (=> (and (and (and (and b_1_1@4 b_2_1@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0)))) (and (=> (= (ControlFlow 0 87) 85) anon74_Then_correct) (=> (= (ControlFlow 0 87) 86) anon74_Else_correct)))))
(let ((anon73_Else_correct  (=> (not (and (and (and b_1_1@4 b_2_1@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@1 ZeroMask) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@46) (= (ControlFlow 0 82) 80))) anon15_correct)))))
(let ((anon72_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_1Mask@3 Ops_1Mask@1) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 90) 87) anon73_Then_correct) (=> (= (ControlFlow 0 90) 82) anon73_Else_correct))))))
(let ((anon72_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_1Mask@0 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0) (+ (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0)) takeTransfer@0)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask)))) (=> (and (and (and (= b_2_1@1  (and b_2_1@0 (state Used_1Heap@0 Used_1Mask@0))) (= TempMask@0 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0) FullPerm) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask)))) (and (= b_2_1@2  (and b_2_1@1 (IdenticalOnKnownLocations Ops_1Heap@0 Used_1Heap@0 TempMask@0))) (= Ops_1Mask@2 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| Ops_1Mask@1) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@1) null (LLInf x@@5 0) (- (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@1) null (LLInf x@@5 0)) takeTransfer@0)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| Ops_1Mask@1) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| Ops_1Mask@1))))) (and (and (= Ops_1Mask@3 Ops_1Mask@2) (= Used_1Mask@1 Used_1Mask@0)) (and (= b_2_1@3 b_2_1@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 89) 87) anon73_Then_correct) (=> (= (ControlFlow 0 89) 82) anon73_Else_correct)))))))
(let ((anon71_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 92) 89) anon72_Then_correct) (=> (= (ControlFlow 0 92) 90) anon72_Else_correct)))))
(let ((anon71_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 91) 89) anon72_Then_correct) (=> (= (ControlFlow 0 91) 90) anon72_Else_correct)))))
(let ((anon70_Then_correct  (=> (and (and (and (and b_1_1@4 b_2_1@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| Ops_1Mask@1) null (LLInf x@@5 0)))) (and (=> (= (ControlFlow 0 93) 91) anon71_Then_correct) (=> (= (ControlFlow 0 93) 92) anon71_Else_correct)))))
(let ((anon70_Else_correct  (=> (not (and (and (and b_1_1@4 b_2_1@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@3 Ops_1Mask@1) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 88) 87) anon73_Then_correct) (=> (= (ControlFlow 0 88) 82) anon73_Else_correct))))))
(let ((anon69_Then_correct  (=> b_1_1@4 (=> (and (and (|LLInf#trigger_5376| Ops_1Heap@0 (LLInf x@@5 0)) (= (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Ops_1Heap@0) null (LLInf x@@5 0)) (CombineFrames (FrameFragment_1736 (select (|PolymorphicMapType_9297_5370_1736#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 val)) (CombineFrames (FrameFragment_5373 (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next)) (select (|PolymorphicMapType_9297_5376_5377#PolymorphicMapType_9297| Ops_1Heap@0) null (LLInf (select (|PolymorphicMapType_9297_5171_5172#PolymorphicMapType_9297| Ops_1Heap@0) x@@5 next) 1)))))) (and (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0)) FullPerm)))) (and (=> (= (ControlFlow 0 94) (- 0 95)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 94) 93) anon70_Then_correct) (=> (= (ControlFlow 0 94) 88) anon70_Else_correct))))))))
(let ((anon69_Else_correct  (=> (not b_1_1@4) (=> (and (and (= b_1_1@17 b_1_1@4) (= Mask@2 ZeroMask)) (and (= Ops_1Mask@7 Ops_1Mask@1) (= Heap@2 Heap@@46))) (and (=> (= (ControlFlow 0 79) 78) anon76_Then_correct) (=> (= (ControlFlow 0 79) 52) anon76_Else_correct))))))
(let ((anon2_correct  (=> (and (= b_1_1@3  (and b_1_1@2 (state Ops_1Heap@0 Ops_1Mask@1))) (= b_1_1@4  (and b_1_1@3 (state Ops_1Heap@0 Ops_1Mask@1)))) (and (=> (= (ControlFlow 0 96) 94) anon69_Then_correct) (=> (= (ControlFlow 0 96) 79) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (and (not b_1_1@0) (= Ops_1Mask@1 ZeroMask)) (and (= b_1_1@2 b_1_1@0) (= (ControlFlow 0 98) 96))) anon2_correct)))
(let ((anon68_Then_correct  (=> (and b_1_1@0 (= Ops_1Mask@0 (PolymorphicMapType_9318 (|PolymorphicMapType_9318_5370_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5372_5373#PolymorphicMapType_9318| ZeroMask) (store (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0) (+ (select (|PolymorphicMapType_9318_5376_5377#PolymorphicMapType_9318| ZeroMask) null (LLInf x@@5 0)) FullPerm)) (|PolymorphicMapType_9318_5302_1219#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5370_44004#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_1736#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5376_44415#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5373#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_5377#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_53#PolymorphicMapType_9318| ZeroMask) (|PolymorphicMapType_9318_5302_44829#PolymorphicMapType_9318| ZeroMask)))) (=> (and (and (= b_1_1@1  (and b_1_1@0 (state Ops_1Heap@0 Ops_1Mask@0))) (= Ops_1Mask@1 Ops_1Mask@0)) (and (= b_1_1@2 b_1_1@1) (= (ControlFlow 0 97) 96))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@46 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_9297_5168_53#PolymorphicMapType_9297| Heap@@46) x@@5 $allocated)) (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 99) 97) anon68_Then_correct) (=> (= (ControlFlow 0 99) 98) anon68_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 100) 99) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
