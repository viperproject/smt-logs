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
(declare-sort T@Field_8713_53 0)
(declare-sort T@Field_8726_8727 0)
(declare-sort T@Field_12521_12522 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12040_1189 0)
(declare-sort T@Field_15493_15498 0)
(declare-sort T@Field_21323_21324 0)
(declare-sort T@Field_23907_23912 0)
(declare-sort T@Field_4579_12522 0)
(declare-sort T@Field_4579_15498 0)
(declare-sort T@Field_12521_4580 0)
(declare-sort T@Field_12521_1189 0)
(declare-sort T@Field_12521_53 0)
(declare-sort T@Field_21323_4580 0)
(declare-sort T@Field_21323_1189 0)
(declare-sort T@Field_21323_53 0)
(declare-datatypes ((T@PolymorphicMapType_8674 0)) (((PolymorphicMapType_8674 (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| (Array T@Ref T@Field_12521_12522 Real)) (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| (Array T@Ref T@Field_12040_1189 Real)) (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| (Array T@Ref T@Field_8726_8727 Real)) (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| (Array T@Ref T@Field_21323_21324 Real)) (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| (Array T@Ref T@Field_12521_1189 Real)) (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| (Array T@Ref T@Field_12521_4580 Real)) (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| (Array T@Ref T@Field_12521_53 Real)) (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| (Array T@Ref T@Field_15493_15498 Real)) (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| (Array T@Ref T@Field_4579_12522 Real)) (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| (Array T@Ref T@Field_8713_53 Real)) (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| (Array T@Ref T@Field_4579_15498 Real)) (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| (Array T@Ref T@Field_21323_1189 Real)) (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| (Array T@Ref T@Field_21323_4580 Real)) (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| (Array T@Ref T@Field_21323_53 Real)) (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| (Array T@Ref T@Field_23907_23912 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9202 0)) (((PolymorphicMapType_9202 (|PolymorphicMapType_9202_4577_1189#PolymorphicMapType_9202| (Array T@Ref T@Field_12040_1189 Bool)) (|PolymorphicMapType_9202_4579_4580#PolymorphicMapType_9202| (Array T@Ref T@Field_8726_8727 Bool)) (|PolymorphicMapType_9202_4577_53#PolymorphicMapType_9202| (Array T@Ref T@Field_8713_53 Bool)) (|PolymorphicMapType_9202_4577_12522#PolymorphicMapType_9202| (Array T@Ref T@Field_4579_12522 Bool)) (|PolymorphicMapType_9202_4577_32686#PolymorphicMapType_9202| (Array T@Ref T@Field_4579_15498 Bool)) (|PolymorphicMapType_9202_12521_1189#PolymorphicMapType_9202| (Array T@Ref T@Field_12521_1189 Bool)) (|PolymorphicMapType_9202_12521_4580#PolymorphicMapType_9202| (Array T@Ref T@Field_12521_4580 Bool)) (|PolymorphicMapType_9202_12521_53#PolymorphicMapType_9202| (Array T@Ref T@Field_12521_53 Bool)) (|PolymorphicMapType_9202_12521_12522#PolymorphicMapType_9202| (Array T@Ref T@Field_12521_12522 Bool)) (|PolymorphicMapType_9202_12521_33734#PolymorphicMapType_9202| (Array T@Ref T@Field_15493_15498 Bool)) (|PolymorphicMapType_9202_21323_1189#PolymorphicMapType_9202| (Array T@Ref T@Field_21323_1189 Bool)) (|PolymorphicMapType_9202_21323_4580#PolymorphicMapType_9202| (Array T@Ref T@Field_21323_4580 Bool)) (|PolymorphicMapType_9202_21323_53#PolymorphicMapType_9202| (Array T@Ref T@Field_21323_53 Bool)) (|PolymorphicMapType_9202_21323_12522#PolymorphicMapType_9202| (Array T@Ref T@Field_21323_21324 Bool)) (|PolymorphicMapType_9202_21323_34782#PolymorphicMapType_9202| (Array T@Ref T@Field_23907_23912 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8653 0)) (((PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| (Array T@Ref T@Field_8713_53 Bool)) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| (Array T@Ref T@Field_8726_8727 T@Ref)) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| (Array T@Ref T@Field_12521_12522 T@FrameType)) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| (Array T@Ref T@Field_12040_1189 Int)) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| (Array T@Ref T@Field_15493_15498 T@PolymorphicMapType_9202)) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| (Array T@Ref T@Field_21323_21324 T@FrameType)) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| (Array T@Ref T@Field_23907_23912 T@PolymorphicMapType_9202)) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| (Array T@Ref T@Field_4579_12522 T@FrameType)) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| (Array T@Ref T@Field_4579_15498 T@PolymorphicMapType_9202)) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| (Array T@Ref T@Field_12521_4580 T@Ref)) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| (Array T@Ref T@Field_12521_1189 Int)) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| (Array T@Ref T@Field_12521_53 Bool)) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| (Array T@Ref T@Field_21323_4580 T@Ref)) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| (Array T@Ref T@Field_21323_1189 Int)) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| (Array T@Ref T@Field_21323_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_8713_53)
(declare-fun Nodev () T@Field_12040_1189)
(declare-fun Noden () T@Field_8726_8727)
(declare-fun Listc () T@Field_8726_8727)
(declare-fun succHeap (T@PolymorphicMapType_8653 T@PolymorphicMapType_8653) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8653 T@PolymorphicMapType_8653) Bool)
(declare-fun state (T@PolymorphicMapType_8653 T@PolymorphicMapType_8674) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8674) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9202)
(declare-fun |Nodeget'| (T@PolymorphicMapType_8653 T@Ref Int) Int)
(declare-fun dummyFunction_1502 (Int) Bool)
(declare-fun |Nodeget#triggerStateless| (T@Ref Int) Int)
(declare-fun Nodeinv (T@Ref) T@Field_12521_12522)
(declare-fun IsPredicateField_4682_4683 (T@Field_12521_12522) Bool)
(declare-fun Listinv (T@Ref) T@Field_21323_21324)
(declare-fun IsPredicateField_4707_4708 (T@Field_21323_21324) Bool)
(declare-fun |Nodelen'| (T@PolymorphicMapType_8653 T@Ref) Int)
(declare-fun |Nodelen#triggerStateless| (T@Ref) Int)
(declare-fun |Listlen'| (T@PolymorphicMapType_8653 T@Ref) Int)
(declare-fun |Listlen#triggerStateless| (T@Ref) Int)
(declare-fun |Nodeinv#trigger_4682| (T@PolymorphicMapType_8653 T@Field_12521_12522) Bool)
(declare-fun |Nodeinv#everUsed_4682| (T@Field_12521_12522) Bool)
(declare-fun |Listinv#trigger_4707| (T@PolymorphicMapType_8653 T@Field_21323_21324) Bool)
(declare-fun |Listinv#everUsed_4707| (T@Field_21323_21324) Bool)
(declare-fun Nodelen (T@PolymorphicMapType_8653 T@Ref) Int)
(declare-fun Listlen (T@PolymorphicMapType_8653 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8653 T@PolymorphicMapType_8653 T@PolymorphicMapType_8674) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4707 (T@Field_21323_21324) T@Field_23907_23912)
(declare-fun HasDirectPerm_21323_12522 (T@PolymorphicMapType_8674 T@Ref T@Field_21323_21324) Bool)
(declare-fun PredicateMaskField_4682 (T@Field_12521_12522) T@Field_15493_15498)
(declare-fun HasDirectPerm_12521_12522 (T@PolymorphicMapType_8674 T@Ref T@Field_12521_12522) Bool)
(declare-fun IsPredicateField_4579_30904 (T@Field_4579_12522) Bool)
(declare-fun PredicateMaskField_4579 (T@Field_4579_12522) T@Field_4579_15498)
(declare-fun HasDirectPerm_4579_12522 (T@PolymorphicMapType_8674 T@Ref T@Field_4579_12522) Bool)
(declare-fun IsWandField_21323_36585 (T@Field_21323_21324) Bool)
(declare-fun WandMaskField_21323 (T@Field_21323_21324) T@Field_23907_23912)
(declare-fun IsWandField_12521_36228 (T@Field_12521_12522) Bool)
(declare-fun WandMaskField_12521 (T@Field_12521_12522) T@Field_15493_15498)
(declare-fun IsWandField_4579_35871 (T@Field_4579_12522) Bool)
(declare-fun WandMaskField_4579 (T@Field_4579_12522) T@Field_4579_15498)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Nodeinv#sm| (T@Ref) T@Field_15493_15498)
(declare-fun |Listinv#sm| (T@Ref) T@Field_23907_23912)
(declare-fun |Nodelen#trigger| (T@FrameType T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_8653)
(declare-fun ZeroMask () T@PolymorphicMapType_8674)
(declare-fun InsidePredicate_8713_8713 (T@Field_4579_12522 T@FrameType T@Field_4579_12522 T@FrameType) Bool)
(declare-fun InsidePredicate_4707_21323 (T@Field_21323_21324 T@FrameType T@Field_21323_21324 T@FrameType) Bool)
(declare-fun InsidePredicate_4682_4682 (T@Field_12521_12522 T@FrameType T@Field_12521_12522 T@FrameType) Bool)
(declare-fun |Listlen#trigger| (T@FrameType T@Ref) Bool)
(declare-fun IsPredicateField_4577_1189 (T@Field_12040_1189) Bool)
(declare-fun IsWandField_4577_1189 (T@Field_12040_1189) Bool)
(declare-fun IsPredicateField_4579_4580 (T@Field_8726_8727) Bool)
(declare-fun IsWandField_4579_4580 (T@Field_8726_8727) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4707_46874 (T@Field_23907_23912) Bool)
(declare-fun IsWandField_4707_46890 (T@Field_23907_23912) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4707_53 (T@Field_21323_53) Bool)
(declare-fun IsWandField_4707_53 (T@Field_21323_53) Bool)
(declare-fun IsPredicateField_4707_4580 (T@Field_21323_4580) Bool)
(declare-fun IsWandField_4707_4580 (T@Field_21323_4580) Bool)
(declare-fun IsPredicateField_4707_1189 (T@Field_21323_1189) Bool)
(declare-fun IsWandField_4707_1189 (T@Field_21323_1189) Bool)
(declare-fun IsPredicateField_4577_46043 (T@Field_4579_15498) Bool)
(declare-fun IsWandField_4577_46059 (T@Field_4579_15498) Bool)
(declare-fun IsPredicateField_4577_53 (T@Field_8713_53) Bool)
(declare-fun IsWandField_4577_53 (T@Field_8713_53) Bool)
(declare-fun IsPredicateField_4682_45240 (T@Field_15493_15498) Bool)
(declare-fun IsWandField_4682_45256 (T@Field_15493_15498) Bool)
(declare-fun IsPredicateField_4682_53 (T@Field_12521_53) Bool)
(declare-fun IsWandField_4682_53 (T@Field_12521_53) Bool)
(declare-fun IsPredicateField_4682_4580 (T@Field_12521_4580) Bool)
(declare-fun IsWandField_4682_4580 (T@Field_12521_4580) Bool)
(declare-fun IsPredicateField_4682_1189 (T@Field_12521_1189) Bool)
(declare-fun IsWandField_4682_1189 (T@Field_12521_1189) Bool)
(declare-fun HasDirectPerm_21323_30659 (T@PolymorphicMapType_8674 T@Ref T@Field_23907_23912) Bool)
(declare-fun HasDirectPerm_21323_53 (T@PolymorphicMapType_8674 T@Ref T@Field_21323_53) Bool)
(declare-fun HasDirectPerm_21323_1189 (T@PolymorphicMapType_8674 T@Ref T@Field_21323_1189) Bool)
(declare-fun HasDirectPerm_21323_4580 (T@PolymorphicMapType_8674 T@Ref T@Field_21323_4580) Bool)
(declare-fun HasDirectPerm_12521_29541 (T@PolymorphicMapType_8674 T@Ref T@Field_15493_15498) Bool)
(declare-fun HasDirectPerm_12521_53 (T@PolymorphicMapType_8674 T@Ref T@Field_12521_53) Bool)
(declare-fun HasDirectPerm_12521_1189 (T@PolymorphicMapType_8674 T@Ref T@Field_12521_1189) Bool)
(declare-fun HasDirectPerm_12521_4580 (T@PolymorphicMapType_8674 T@Ref T@Field_12521_4580) Bool)
(declare-fun HasDirectPerm_4579_28380 (T@PolymorphicMapType_8674 T@Ref T@Field_4579_15498) Bool)
(declare-fun HasDirectPerm_4579_53 (T@PolymorphicMapType_8674 T@Ref T@Field_8713_53) Bool)
(declare-fun HasDirectPerm_4577_1189 (T@PolymorphicMapType_8674 T@Ref T@Field_12040_1189) Bool)
(declare-fun HasDirectPerm_4579_4580 (T@PolymorphicMapType_8674 T@Ref T@Field_8726_8727) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun Nodeget (T@PolymorphicMapType_8653 T@Ref Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_8674 T@PolymorphicMapType_8674 T@PolymorphicMapType_8674) Bool)
(declare-fun |Nodeget#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |Nodelen#frame| (T@FrameType T@Ref) Int)
(declare-fun |Listlen#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_4682_4683 (T@Field_12521_12522) Int)
(declare-fun getPredWandId_4707_4708 (T@Field_21323_21324) Int)
(declare-fun InsidePredicate_8713_21323 (T@Field_4579_12522 T@FrameType T@Field_21323_21324 T@FrameType) Bool)
(declare-fun InsidePredicate_8713_4682 (T@Field_4579_12522 T@FrameType T@Field_12521_12522 T@FrameType) Bool)
(declare-fun InsidePredicate_4707_8713 (T@Field_21323_21324 T@FrameType T@Field_4579_12522 T@FrameType) Bool)
(declare-fun InsidePredicate_4707_4682 (T@Field_21323_21324 T@FrameType T@Field_12521_12522 T@FrameType) Bool)
(declare-fun InsidePredicate_4682_21323 (T@Field_12521_12522 T@FrameType T@Field_21323_21324 T@FrameType) Bool)
(declare-fun InsidePredicate_4682_8713 (T@Field_12521_12522 T@FrameType T@Field_4579_12522 T@FrameType) Bool)
(assert (distinct Noden Listc)
)
(assert (forall ((Heap0 T@PolymorphicMapType_8653) (Heap1 T@PolymorphicMapType_8653) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8653) (Mask T@PolymorphicMapType_8674) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8653) (Heap1@@0 T@PolymorphicMapType_8653) (Heap2 T@PolymorphicMapType_8653) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_23907_23912) ) (!  (not (select (|PolymorphicMapType_9202_21323_34782#PolymorphicMapType_9202| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_21323_34782#PolymorphicMapType_9202| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_21323_21324) ) (!  (not (select (|PolymorphicMapType_9202_21323_12522#PolymorphicMapType_9202| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_21323_12522#PolymorphicMapType_9202| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_21323_53) ) (!  (not (select (|PolymorphicMapType_9202_21323_53#PolymorphicMapType_9202| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_21323_53#PolymorphicMapType_9202| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_21323_4580) ) (!  (not (select (|PolymorphicMapType_9202_21323_4580#PolymorphicMapType_9202| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_21323_4580#PolymorphicMapType_9202| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_21323_1189) ) (!  (not (select (|PolymorphicMapType_9202_21323_1189#PolymorphicMapType_9202| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_21323_1189#PolymorphicMapType_9202| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_15493_15498) ) (!  (not (select (|PolymorphicMapType_9202_12521_33734#PolymorphicMapType_9202| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_12521_33734#PolymorphicMapType_9202| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12521_12522) ) (!  (not (select (|PolymorphicMapType_9202_12521_12522#PolymorphicMapType_9202| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_12521_12522#PolymorphicMapType_9202| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_12521_53) ) (!  (not (select (|PolymorphicMapType_9202_12521_53#PolymorphicMapType_9202| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_12521_53#PolymorphicMapType_9202| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_12521_4580) ) (!  (not (select (|PolymorphicMapType_9202_12521_4580#PolymorphicMapType_9202| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_12521_4580#PolymorphicMapType_9202| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12521_1189) ) (!  (not (select (|PolymorphicMapType_9202_12521_1189#PolymorphicMapType_9202| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_12521_1189#PolymorphicMapType_9202| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_4579_15498) ) (!  (not (select (|PolymorphicMapType_9202_4577_32686#PolymorphicMapType_9202| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_4577_32686#PolymorphicMapType_9202| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_4579_12522) ) (!  (not (select (|PolymorphicMapType_9202_4577_12522#PolymorphicMapType_9202| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_4577_12522#PolymorphicMapType_9202| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_8713_53) ) (!  (not (select (|PolymorphicMapType_9202_4577_53#PolymorphicMapType_9202| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_4577_53#PolymorphicMapType_9202| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_8726_8727) ) (!  (not (select (|PolymorphicMapType_9202_4579_4580#PolymorphicMapType_9202| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_4579_4580#PolymorphicMapType_9202| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_12040_1189) ) (!  (not (select (|PolymorphicMapType_9202_4577_1189#PolymorphicMapType_9202| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9202_4577_1189#PolymorphicMapType_9202| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8653) (this T@Ref) (i Int) ) (! (dummyFunction_1502 (|Nodeget#triggerStateless| this i))
 :qid |stdinbpl.358:15|
 :skolemid |29|
 :pattern ( (|Nodeget'| Heap@@0 this i))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_4682_4683 (Nodeinv this@@0))
 :qid |stdinbpl.666:15|
 :skolemid |40|
 :pattern ( (Nodeinv this@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_4707_4708 (Listinv this@@1))
 :qid |stdinbpl.738:15|
 :skolemid |46|
 :pattern ( (Listinv this@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8653) (this@@2 T@Ref) ) (! (dummyFunction_1502 (|Nodelen#triggerStateless| this@@2))
 :qid |stdinbpl.206:15|
 :skolemid |23|
 :pattern ( (|Nodelen'| Heap@@1 this@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8653) (this@@3 T@Ref) ) (! (dummyFunction_1502 (|Listlen#triggerStateless| this@@3))
 :qid |stdinbpl.523:15|
 :skolemid |34|
 :pattern ( (|Listlen'| Heap@@2 this@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8653) (this@@4 T@Ref) ) (! (|Nodeinv#everUsed_4682| (Nodeinv this@@4))
 :qid |stdinbpl.685:15|
 :skolemid |44|
 :pattern ( (|Nodeinv#trigger_4682| Heap@@3 (Nodeinv this@@4)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8653) (this@@5 T@Ref) ) (! (|Listinv#everUsed_4707| (Listinv this@@5))
 :qid |stdinbpl.757:15|
 :skolemid |50|
 :pattern ( (|Listinv#trigger_4707| Heap@@4 (Listinv this@@5)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8653) (this@@6 T@Ref) ) (!  (and (= (Nodelen Heap@@5 this@@6) (|Nodelen'| Heap@@5 this@@6)) (dummyFunction_1502 (|Nodelen#triggerStateless| this@@6)))
 :qid |stdinbpl.202:15|
 :skolemid |22|
 :pattern ( (Nodelen Heap@@5 this@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8653) (this@@7 T@Ref) ) (!  (and (= (Listlen Heap@@6 this@@7) (|Listlen'| Heap@@6 this@@7)) (dummyFunction_1502 (|Listlen#triggerStateless| this@@7)))
 :qid |stdinbpl.519:15|
 :skolemid |33|
 :pattern ( (Listlen Heap@@6 this@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8653) (ExhaleHeap T@PolymorphicMapType_8653) (Mask@@0 T@PolymorphicMapType_8674) (pm_f_1 T@Field_21323_21324) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_21323_12522 Mask@@0 null pm_f_1) (IsPredicateField_4707_4708 pm_f_1)) (= (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@7) null (PredicateMaskField_4707 pm_f_1)) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap) null (PredicateMaskField_4707 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@0) (IsPredicateField_4707_4708 pm_f_1) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap) null (PredicateMaskField_4707 pm_f_1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8653) (ExhaleHeap@@0 T@PolymorphicMapType_8653) (Mask@@1 T@PolymorphicMapType_8674) (pm_f_1@@0 T@Field_12521_12522) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12521_12522 Mask@@1 null pm_f_1@@0) (IsPredicateField_4682_4683 pm_f_1@@0)) (= (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@8) null (PredicateMaskField_4682 pm_f_1@@0)) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@0) null (PredicateMaskField_4682 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4682_4683 pm_f_1@@0) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@0) null (PredicateMaskField_4682 pm_f_1@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8653) (ExhaleHeap@@1 T@PolymorphicMapType_8653) (Mask@@2 T@PolymorphicMapType_8674) (pm_f_1@@1 T@Field_4579_12522) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4579_12522 Mask@@2 null pm_f_1@@1) (IsPredicateField_4579_30904 pm_f_1@@1)) (= (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@9) null (PredicateMaskField_4579 pm_f_1@@1)) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@1) null (PredicateMaskField_4579 pm_f_1@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4579_30904 pm_f_1@@1) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@1) null (PredicateMaskField_4579 pm_f_1@@1)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8653) (ExhaleHeap@@2 T@PolymorphicMapType_8653) (Mask@@3 T@PolymorphicMapType_8674) (pm_f_1@@2 T@Field_21323_21324) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_21323_12522 Mask@@3 null pm_f_1@@2) (IsWandField_21323_36585 pm_f_1@@2)) (= (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@10) null (WandMaskField_21323 pm_f_1@@2)) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@2) null (WandMaskField_21323 pm_f_1@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@3) (IsWandField_21323_36585 pm_f_1@@2) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@2) null (WandMaskField_21323 pm_f_1@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8653) (ExhaleHeap@@3 T@PolymorphicMapType_8653) (Mask@@4 T@PolymorphicMapType_8674) (pm_f_1@@3 T@Field_12521_12522) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12521_12522 Mask@@4 null pm_f_1@@3) (IsWandField_12521_36228 pm_f_1@@3)) (= (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@11) null (WandMaskField_12521 pm_f_1@@3)) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@3) null (WandMaskField_12521 pm_f_1@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@4) (IsWandField_12521_36228 pm_f_1@@3) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@3) null (WandMaskField_12521 pm_f_1@@3)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8653) (ExhaleHeap@@4 T@PolymorphicMapType_8653) (Mask@@5 T@PolymorphicMapType_8674) (pm_f_1@@4 T@Field_4579_12522) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4579_12522 Mask@@5 null pm_f_1@@4) (IsWandField_4579_35871 pm_f_1@@4)) (= (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@12) null (WandMaskField_4579 pm_f_1@@4)) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@4) null (WandMaskField_4579 pm_f_1@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@5) (IsWandField_4579_35871 pm_f_1@@4) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@4) null (WandMaskField_4579 pm_f_1@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8653) (Mask@@6 T@PolymorphicMapType_8674) (this@@8 T@Ref) ) (!  (=> (and (state Heap@@13 Mask@@6) (< AssumeFunctionsAbove 2)) (=> (not (= this@@8 null)) (= (Nodelen Heap@@13 this@@8) (ite (= (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@13) this@@8 Noden) null) 1 (+ 1 (|Nodelen'| Heap@@13 (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@13) this@@8 Noden)))))))
 :qid |stdinbpl.212:15|
 :skolemid |24|
 :pattern ( (state Heap@@13 Mask@@6) (Nodelen Heap@@13 this@@8))
 :pattern ( (state Heap@@13 Mask@@6) (|Nodelen#triggerStateless| this@@8) (|Nodeinv#trigger_4682| Heap@@13 (Nodeinv this@@8)))
)))
(assert (forall ((this@@9 T@Ref) (this2 T@Ref) ) (!  (=> (= (Nodeinv this@@9) (Nodeinv this2)) (= this@@9 this2))
 :qid |stdinbpl.676:15|
 :skolemid |42|
 :pattern ( (Nodeinv this@@9) (Nodeinv this2))
)))
(assert (forall ((this@@10 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|Nodeinv#sm| this@@10) (|Nodeinv#sm| this2@@0)) (= this@@10 this2@@0))
 :qid |stdinbpl.680:15|
 :skolemid |43|
 :pattern ( (|Nodeinv#sm| this@@10) (|Nodeinv#sm| this2@@0))
)))
(assert (forall ((this@@11 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (Listinv this@@11) (Listinv this2@@1)) (= this@@11 this2@@1))
 :qid |stdinbpl.748:15|
 :skolemid |48|
 :pattern ( (Listinv this@@11) (Listinv this2@@1))
)))
(assert (forall ((this@@12 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|Listinv#sm| this@@12) (|Listinv#sm| this2@@2)) (= this@@12 this2@@2))
 :qid |stdinbpl.752:15|
 :skolemid |49|
 :pattern ( (|Listinv#sm| this@@12) (|Listinv#sm| this2@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8653) (Mask@@7 T@PolymorphicMapType_8674) (this@@13 T@Ref) ) (!  (=> (and (state Heap@@14 Mask@@7) (or (< AssumeFunctionsAbove 2) (|Nodelen#trigger| (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@14) null (Nodeinv this@@13)) this@@13))) (=> (not (= this@@13 null)) (> (|Nodelen'| Heap@@14 this@@13) 0)))
 :qid |stdinbpl.225:15|
 :skolemid |26|
 :pattern ( (state Heap@@14 Mask@@7) (|Nodelen'| Heap@@14 this@@13))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8653) (ExhaleHeap@@5 T@PolymorphicMapType_8653) (Mask@@8 T@PolymorphicMapType_8674) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@8) (=> (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@15) o_3 $allocated) (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@5) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@8) (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@5) o_3 $allocated))
)))
(assert (forall ((p T@Field_4579_12522) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8713_8713 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8713_8713 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_21323_21324) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4707_21323 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4707_21323 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_12521_12522) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_4682_4682 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4682_4682 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8653) (Mask@@9 T@PolymorphicMapType_8674) (this@@14 T@Ref) ) (!  (=> (and (state Heap@@16 Mask@@9) (or (< AssumeFunctionsAbove 0) (|Listlen#trigger| (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@16) null (Listinv this@@14)) this@@14))) (=> (not (= this@@14 null)) (>= (|Listlen'| Heap@@16 this@@14) 0)))
 :qid |stdinbpl.542:15|
 :skolemid |37|
 :pattern ( (state Heap@@16 Mask@@9) (|Listlen'| Heap@@16 this@@14))
)))
(assert  (not (IsPredicateField_4577_1189 Nodev)))
(assert  (not (IsWandField_4577_1189 Nodev)))
(assert  (not (IsPredicateField_4579_4580 Noden)))
(assert  (not (IsWandField_4579_4580 Noden)))
(assert  (not (IsPredicateField_4579_4580 Listc)))
(assert  (not (IsWandField_4579_4580 Listc)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8653) (ExhaleHeap@@6 T@PolymorphicMapType_8653) (Mask@@10 T@PolymorphicMapType_8674) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@10) (succHeap Heap@@17 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8674) (o_2@@14 T@Ref) (f_4@@14 T@Field_23907_23912) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| Mask@@11) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4707_46874 f_4@@14))) (not (IsWandField_4707_46890 f_4@@14))) (<= (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| Mask@@11) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| Mask@@11) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8674) (o_2@@15 T@Ref) (f_4@@15 T@Field_21323_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| Mask@@12) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4707_53 f_4@@15))) (not (IsWandField_4707_53 f_4@@15))) (<= (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| Mask@@12) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| Mask@@12) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8674) (o_2@@16 T@Ref) (f_4@@16 T@Field_21323_4580) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| Mask@@13) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4707_4580 f_4@@16))) (not (IsWandField_4707_4580 f_4@@16))) (<= (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| Mask@@13) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| Mask@@13) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8674) (o_2@@17 T@Ref) (f_4@@17 T@Field_21323_1189) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| Mask@@14) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4707_1189 f_4@@17))) (not (IsWandField_4707_1189 f_4@@17))) (<= (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| Mask@@14) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| Mask@@14) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8674) (o_2@@18 T@Ref) (f_4@@18 T@Field_21323_21324) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| Mask@@15) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4707_4708 f_4@@18))) (not (IsWandField_21323_36585 f_4@@18))) (<= (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| Mask@@15) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| Mask@@15) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8674) (o_2@@19 T@Ref) (f_4@@19 T@Field_4579_15498) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| Mask@@16) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4577_46043 f_4@@19))) (not (IsWandField_4577_46059 f_4@@19))) (<= (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| Mask@@16) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| Mask@@16) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8674) (o_2@@20 T@Ref) (f_4@@20 T@Field_8713_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| Mask@@17) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4577_53 f_4@@20))) (not (IsWandField_4577_53 f_4@@20))) (<= (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| Mask@@17) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| Mask@@17) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8674) (o_2@@21 T@Ref) (f_4@@21 T@Field_8726_8727) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| Mask@@18) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4579_4580 f_4@@21))) (not (IsWandField_4579_4580 f_4@@21))) (<= (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| Mask@@18) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| Mask@@18) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8674) (o_2@@22 T@Ref) (f_4@@22 T@Field_12040_1189) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| Mask@@19) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4577_1189 f_4@@22))) (not (IsWandField_4577_1189 f_4@@22))) (<= (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| Mask@@19) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| Mask@@19) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8674) (o_2@@23 T@Ref) (f_4@@23 T@Field_4579_12522) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| Mask@@20) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4579_30904 f_4@@23))) (not (IsWandField_4579_35871 f_4@@23))) (<= (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| Mask@@20) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| Mask@@20) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8674) (o_2@@24 T@Ref) (f_4@@24 T@Field_15493_15498) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| Mask@@21) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4682_45240 f_4@@24))) (not (IsWandField_4682_45256 f_4@@24))) (<= (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| Mask@@21) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| Mask@@21) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8674) (o_2@@25 T@Ref) (f_4@@25 T@Field_12521_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| Mask@@22) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_4682_53 f_4@@25))) (not (IsWandField_4682_53 f_4@@25))) (<= (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| Mask@@22) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| Mask@@22) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8674) (o_2@@26 T@Ref) (f_4@@26 T@Field_12521_4580) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| Mask@@23) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_4682_4580 f_4@@26))) (not (IsWandField_4682_4580 f_4@@26))) (<= (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| Mask@@23) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| Mask@@23) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8674) (o_2@@27 T@Ref) (f_4@@27 T@Field_12521_1189) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| Mask@@24) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_4682_1189 f_4@@27))) (not (IsWandField_4682_1189 f_4@@27))) (<= (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| Mask@@24) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| Mask@@24) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8674) (o_2@@28 T@Ref) (f_4@@28 T@Field_12521_12522) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| Mask@@25) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_4682_4683 f_4@@28))) (not (IsWandField_12521_36228 f_4@@28))) (<= (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| Mask@@25) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| Mask@@25) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8674) (o_2@@29 T@Ref) (f_4@@29 T@Field_23907_23912) ) (! (= (HasDirectPerm_21323_30659 Mask@@26 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| Mask@@26) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21323_30659 Mask@@26 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8674) (o_2@@30 T@Ref) (f_4@@30 T@Field_21323_21324) ) (! (= (HasDirectPerm_21323_12522 Mask@@27 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| Mask@@27) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21323_12522 Mask@@27 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8674) (o_2@@31 T@Ref) (f_4@@31 T@Field_21323_53) ) (! (= (HasDirectPerm_21323_53 Mask@@28 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| Mask@@28) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21323_53 Mask@@28 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8674) (o_2@@32 T@Ref) (f_4@@32 T@Field_21323_1189) ) (! (= (HasDirectPerm_21323_1189 Mask@@29 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| Mask@@29) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21323_1189 Mask@@29 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8674) (o_2@@33 T@Ref) (f_4@@33 T@Field_21323_4580) ) (! (= (HasDirectPerm_21323_4580 Mask@@30 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| Mask@@30) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21323_4580 Mask@@30 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_8674) (o_2@@34 T@Ref) (f_4@@34 T@Field_15493_15498) ) (! (= (HasDirectPerm_12521_29541 Mask@@31 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| Mask@@31) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12521_29541 Mask@@31 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_8674) (o_2@@35 T@Ref) (f_4@@35 T@Field_12521_12522) ) (! (= (HasDirectPerm_12521_12522 Mask@@32 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| Mask@@32) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12521_12522 Mask@@32 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_8674) (o_2@@36 T@Ref) (f_4@@36 T@Field_12521_53) ) (! (= (HasDirectPerm_12521_53 Mask@@33 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| Mask@@33) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12521_53 Mask@@33 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_8674) (o_2@@37 T@Ref) (f_4@@37 T@Field_12521_1189) ) (! (= (HasDirectPerm_12521_1189 Mask@@34 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| Mask@@34) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12521_1189 Mask@@34 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_8674) (o_2@@38 T@Ref) (f_4@@38 T@Field_12521_4580) ) (! (= (HasDirectPerm_12521_4580 Mask@@35 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| Mask@@35) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12521_4580 Mask@@35 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_8674) (o_2@@39 T@Ref) (f_4@@39 T@Field_4579_15498) ) (! (= (HasDirectPerm_4579_28380 Mask@@36 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| Mask@@36) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4579_28380 Mask@@36 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_8674) (o_2@@40 T@Ref) (f_4@@40 T@Field_4579_12522) ) (! (= (HasDirectPerm_4579_12522 Mask@@37 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| Mask@@37) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4579_12522 Mask@@37 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_8674) (o_2@@41 T@Ref) (f_4@@41 T@Field_8713_53) ) (! (= (HasDirectPerm_4579_53 Mask@@38 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| Mask@@38) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4579_53 Mask@@38 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_8674) (o_2@@42 T@Ref) (f_4@@42 T@Field_12040_1189) ) (! (= (HasDirectPerm_4577_1189 Mask@@39 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| Mask@@39) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4577_1189 Mask@@39 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_8674) (o_2@@43 T@Ref) (f_4@@43 T@Field_8726_8727) ) (! (= (HasDirectPerm_4579_4580 Mask@@40 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| Mask@@40) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4579_4580 Mask@@40 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8653) (ExhaleHeap@@7 T@PolymorphicMapType_8653) (Mask@@41 T@PolymorphicMapType_8674) (o_3@@0 T@Ref) (f_8 T@Field_23907_23912) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@41) (=> (HasDirectPerm_21323_30659 Mask@@41 o_3@@0 f_8) (= (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@18) o_3@@0 f_8) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@7) o_3@@0 f_8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@41) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@7) o_3@@0 f_8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8653) (ExhaleHeap@@8 T@PolymorphicMapType_8653) (Mask@@42 T@PolymorphicMapType_8674) (o_3@@1 T@Ref) (f_8@@0 T@Field_21323_21324) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@42) (=> (HasDirectPerm_21323_12522 Mask@@42 o_3@@1 f_8@@0) (= (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@19) o_3@@1 f_8@@0) (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@8) o_3@@1 f_8@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@42) (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@8) o_3@@1 f_8@@0))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8653) (ExhaleHeap@@9 T@PolymorphicMapType_8653) (Mask@@43 T@PolymorphicMapType_8674) (o_3@@2 T@Ref) (f_8@@1 T@Field_21323_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@43) (=> (HasDirectPerm_21323_53 Mask@@43 o_3@@2 f_8@@1) (= (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@20) o_3@@2 f_8@@1) (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@9) o_3@@2 f_8@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@43) (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@9) o_3@@2 f_8@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8653) (ExhaleHeap@@10 T@PolymorphicMapType_8653) (Mask@@44 T@PolymorphicMapType_8674) (o_3@@3 T@Ref) (f_8@@2 T@Field_21323_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@44) (=> (HasDirectPerm_21323_1189 Mask@@44 o_3@@3 f_8@@2) (= (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@21) o_3@@3 f_8@@2) (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@10) o_3@@3 f_8@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@44) (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@10) o_3@@3 f_8@@2))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8653) (ExhaleHeap@@11 T@PolymorphicMapType_8653) (Mask@@45 T@PolymorphicMapType_8674) (o_3@@4 T@Ref) (f_8@@3 T@Field_21323_4580) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@45) (=> (HasDirectPerm_21323_4580 Mask@@45 o_3@@4 f_8@@3) (= (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@22) o_3@@4 f_8@@3) (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@11) o_3@@4 f_8@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@45) (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@11) o_3@@4 f_8@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8653) (ExhaleHeap@@12 T@PolymorphicMapType_8653) (Mask@@46 T@PolymorphicMapType_8674) (o_3@@5 T@Ref) (f_8@@4 T@Field_15493_15498) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@46) (=> (HasDirectPerm_12521_29541 Mask@@46 o_3@@5 f_8@@4) (= (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@23) o_3@@5 f_8@@4) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@12) o_3@@5 f_8@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@46) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@12) o_3@@5 f_8@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8653) (ExhaleHeap@@13 T@PolymorphicMapType_8653) (Mask@@47 T@PolymorphicMapType_8674) (o_3@@6 T@Ref) (f_8@@5 T@Field_12521_12522) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@47) (=> (HasDirectPerm_12521_12522 Mask@@47 o_3@@6 f_8@@5) (= (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@24) o_3@@6 f_8@@5) (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@13) o_3@@6 f_8@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@47) (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@13) o_3@@6 f_8@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8653) (ExhaleHeap@@14 T@PolymorphicMapType_8653) (Mask@@48 T@PolymorphicMapType_8674) (o_3@@7 T@Ref) (f_8@@6 T@Field_12521_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@48) (=> (HasDirectPerm_12521_53 Mask@@48 o_3@@7 f_8@@6) (= (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@25) o_3@@7 f_8@@6) (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@14) o_3@@7 f_8@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@48) (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@14) o_3@@7 f_8@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8653) (ExhaleHeap@@15 T@PolymorphicMapType_8653) (Mask@@49 T@PolymorphicMapType_8674) (o_3@@8 T@Ref) (f_8@@7 T@Field_12521_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@49) (=> (HasDirectPerm_12521_1189 Mask@@49 o_3@@8 f_8@@7) (= (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@26) o_3@@8 f_8@@7) (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@15) o_3@@8 f_8@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@49) (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@15) o_3@@8 f_8@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8653) (ExhaleHeap@@16 T@PolymorphicMapType_8653) (Mask@@50 T@PolymorphicMapType_8674) (o_3@@9 T@Ref) (f_8@@8 T@Field_12521_4580) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@50) (=> (HasDirectPerm_12521_4580 Mask@@50 o_3@@9 f_8@@8) (= (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@27) o_3@@9 f_8@@8) (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@16) o_3@@9 f_8@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@50) (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@16) o_3@@9 f_8@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8653) (ExhaleHeap@@17 T@PolymorphicMapType_8653) (Mask@@51 T@PolymorphicMapType_8674) (o_3@@10 T@Ref) (f_8@@9 T@Field_4579_15498) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@51) (=> (HasDirectPerm_4579_28380 Mask@@51 o_3@@10 f_8@@9) (= (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@28) o_3@@10 f_8@@9) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@17) o_3@@10 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@51) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@17) o_3@@10 f_8@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8653) (ExhaleHeap@@18 T@PolymorphicMapType_8653) (Mask@@52 T@PolymorphicMapType_8674) (o_3@@11 T@Ref) (f_8@@10 T@Field_4579_12522) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@52) (=> (HasDirectPerm_4579_12522 Mask@@52 o_3@@11 f_8@@10) (= (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@29) o_3@@11 f_8@@10) (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@18) o_3@@11 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@52) (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@18) o_3@@11 f_8@@10))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8653) (ExhaleHeap@@19 T@PolymorphicMapType_8653) (Mask@@53 T@PolymorphicMapType_8674) (o_3@@12 T@Ref) (f_8@@11 T@Field_8713_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@19 Mask@@53) (=> (HasDirectPerm_4579_53 Mask@@53 o_3@@12 f_8@@11) (= (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@30) o_3@@12 f_8@@11) (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@19) o_3@@12 f_8@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@19 Mask@@53) (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@19) o_3@@12 f_8@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8653) (ExhaleHeap@@20 T@PolymorphicMapType_8653) (Mask@@54 T@PolymorphicMapType_8674) (o_3@@13 T@Ref) (f_8@@12 T@Field_12040_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@20 Mask@@54) (=> (HasDirectPerm_4577_1189 Mask@@54 o_3@@13 f_8@@12) (= (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@31) o_3@@13 f_8@@12) (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@20) o_3@@13 f_8@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@20 Mask@@54) (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@20) o_3@@13 f_8@@12))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8653) (ExhaleHeap@@21 T@PolymorphicMapType_8653) (Mask@@55 T@PolymorphicMapType_8674) (o_3@@14 T@Ref) (f_8@@13 T@Field_8726_8727) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@21 Mask@@55) (=> (HasDirectPerm_4579_4580 Mask@@55 o_3@@14 f_8@@13) (= (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@32) o_3@@14 f_8@@13) (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@21) o_3@@14 f_8@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@21 Mask@@55) (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@21) o_3@@14 f_8@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_23907_23912) ) (! (= (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_21323_53) ) (! (= (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_21323_4580) ) (! (= (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_21323_1189) ) (! (= (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_21323_21324) ) (! (= (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_4579_15498) ) (! (= (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_8713_53) ) (! (= (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_8726_8727) ) (! (= (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_12040_1189) ) (! (= (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_4579_12522) ) (! (= (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_15493_15498) ) (! (= (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_12521_53) ) (! (= (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_12521_4580) ) (! (= (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_12521_1189) ) (! (= (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_12521_12522) ) (! (= (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8653) (this@@15 T@Ref) (i@@0 Int) ) (!  (and (= (Nodeget Heap@@33 this@@15 i@@0) (|Nodeget'| Heap@@33 this@@15 i@@0)) (dummyFunction_1502 (|Nodeget#triggerStateless| this@@15 i@@0)))
 :qid |stdinbpl.354:15|
 :skolemid |28|
 :pattern ( (Nodeget Heap@@33 this@@15 i@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8674) (SummandMask1 T@PolymorphicMapType_8674) (SummandMask2 T@PolymorphicMapType_8674) (o_2@@59 T@Ref) (f_4@@59 T@Field_23907_23912) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8674) (SummandMask1@@0 T@PolymorphicMapType_8674) (SummandMask2@@0 T@PolymorphicMapType_8674) (o_2@@60 T@Ref) (f_4@@60 T@Field_21323_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8674) (SummandMask1@@1 T@PolymorphicMapType_8674) (SummandMask2@@1 T@PolymorphicMapType_8674) (o_2@@61 T@Ref) (f_4@@61 T@Field_21323_4580) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8674) (SummandMask1@@2 T@PolymorphicMapType_8674) (SummandMask2@@2 T@PolymorphicMapType_8674) (o_2@@62 T@Ref) (f_4@@62 T@Field_21323_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8674) (SummandMask1@@3 T@PolymorphicMapType_8674) (SummandMask2@@3 T@PolymorphicMapType_8674) (o_2@@63 T@Ref) (f_4@@63 T@Field_21323_21324) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8674) (SummandMask1@@4 T@PolymorphicMapType_8674) (SummandMask2@@4 T@PolymorphicMapType_8674) (o_2@@64 T@Ref) (f_4@@64 T@Field_4579_15498) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8674) (SummandMask1@@5 T@PolymorphicMapType_8674) (SummandMask2@@5 T@PolymorphicMapType_8674) (o_2@@65 T@Ref) (f_4@@65 T@Field_8713_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8674) (SummandMask1@@6 T@PolymorphicMapType_8674) (SummandMask2@@6 T@PolymorphicMapType_8674) (o_2@@66 T@Ref) (f_4@@66 T@Field_8726_8727) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8674) (SummandMask1@@7 T@PolymorphicMapType_8674) (SummandMask2@@7 T@PolymorphicMapType_8674) (o_2@@67 T@Ref) (f_4@@67 T@Field_12040_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8674) (SummandMask1@@8 T@PolymorphicMapType_8674) (SummandMask2@@8 T@PolymorphicMapType_8674) (o_2@@68 T@Ref) (f_4@@68 T@Field_4579_12522) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_8674) (SummandMask1@@9 T@PolymorphicMapType_8674) (SummandMask2@@9 T@PolymorphicMapType_8674) (o_2@@69 T@Ref) (f_4@@69 T@Field_15493_15498) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_8674) (SummandMask1@@10 T@PolymorphicMapType_8674) (SummandMask2@@10 T@PolymorphicMapType_8674) (o_2@@70 T@Ref) (f_4@@70 T@Field_12521_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_8674) (SummandMask1@@11 T@PolymorphicMapType_8674) (SummandMask2@@11 T@PolymorphicMapType_8674) (o_2@@71 T@Ref) (f_4@@71 T@Field_12521_4580) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_8674) (SummandMask1@@12 T@PolymorphicMapType_8674) (SummandMask2@@12 T@PolymorphicMapType_8674) (o_2@@72 T@Ref) (f_4@@72 T@Field_12521_1189) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_8674) (SummandMask1@@13 T@PolymorphicMapType_8674) (SummandMask2@@13 T@PolymorphicMapType_8674) (o_2@@73 T@Ref) (f_4@@73 T@Field_12521_12522) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8653) (ExhaleHeap@@22 T@PolymorphicMapType_8653) (Mask@@56 T@PolymorphicMapType_8674) (pm_f_1@@5 T@Field_21323_21324) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@56) (=> (and (HasDirectPerm_21323_12522 Mask@@56 null pm_f_1@@5) (IsPredicateField_4707_4708 pm_f_1@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_8@@14 T@Field_12040_1189) ) (!  (=> (select (|PolymorphicMapType_9202_4577_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1 f_8@@14) (= (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@34) o2_1 f_8@@14) (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1 f_8@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1 f_8@@14))
)) (forall ((o2_1@@0 T@Ref) (f_8@@15 T@Field_8726_8727) ) (!  (=> (select (|PolymorphicMapType_9202_4579_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@0 f_8@@15) (= (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@34) o2_1@@0 f_8@@15) (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@0 f_8@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@0 f_8@@15))
))) (forall ((o2_1@@1 T@Ref) (f_8@@16 T@Field_8713_53) ) (!  (=> (select (|PolymorphicMapType_9202_4577_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@1 f_8@@16) (= (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@34) o2_1@@1 f_8@@16) (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@1 f_8@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@1 f_8@@16))
))) (forall ((o2_1@@2 T@Ref) (f_8@@17 T@Field_4579_12522) ) (!  (=> (select (|PolymorphicMapType_9202_4577_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@2 f_8@@17) (= (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@34) o2_1@@2 f_8@@17) (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@2 f_8@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@2 f_8@@17))
))) (forall ((o2_1@@3 T@Ref) (f_8@@18 T@Field_4579_15498) ) (!  (=> (select (|PolymorphicMapType_9202_4577_32686#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@3 f_8@@18) (= (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@34) o2_1@@3 f_8@@18) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@3 f_8@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@3 f_8@@18))
))) (forall ((o2_1@@4 T@Ref) (f_8@@19 T@Field_12521_1189) ) (!  (=> (select (|PolymorphicMapType_9202_12521_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@4 f_8@@19) (= (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@34) o2_1@@4 f_8@@19) (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@4 f_8@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@4 f_8@@19))
))) (forall ((o2_1@@5 T@Ref) (f_8@@20 T@Field_12521_4580) ) (!  (=> (select (|PolymorphicMapType_9202_12521_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@5 f_8@@20) (= (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@34) o2_1@@5 f_8@@20) (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@5 f_8@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@5 f_8@@20))
))) (forall ((o2_1@@6 T@Ref) (f_8@@21 T@Field_12521_53) ) (!  (=> (select (|PolymorphicMapType_9202_12521_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@6 f_8@@21) (= (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@34) o2_1@@6 f_8@@21) (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@6 f_8@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@6 f_8@@21))
))) (forall ((o2_1@@7 T@Ref) (f_8@@22 T@Field_12521_12522) ) (!  (=> (select (|PolymorphicMapType_9202_12521_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@7 f_8@@22) (= (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@34) o2_1@@7 f_8@@22) (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@7 f_8@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@7 f_8@@22))
))) (forall ((o2_1@@8 T@Ref) (f_8@@23 T@Field_15493_15498) ) (!  (=> (select (|PolymorphicMapType_9202_12521_33734#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@8 f_8@@23) (= (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@34) o2_1@@8 f_8@@23) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@8 f_8@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@8 f_8@@23))
))) (forall ((o2_1@@9 T@Ref) (f_8@@24 T@Field_21323_1189) ) (!  (=> (select (|PolymorphicMapType_9202_21323_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@9 f_8@@24) (= (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@34) o2_1@@9 f_8@@24) (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@9 f_8@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@9 f_8@@24))
))) (forall ((o2_1@@10 T@Ref) (f_8@@25 T@Field_21323_4580) ) (!  (=> (select (|PolymorphicMapType_9202_21323_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@10 f_8@@25) (= (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@34) o2_1@@10 f_8@@25) (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@10 f_8@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@10 f_8@@25))
))) (forall ((o2_1@@11 T@Ref) (f_8@@26 T@Field_21323_53) ) (!  (=> (select (|PolymorphicMapType_9202_21323_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@11 f_8@@26) (= (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@34) o2_1@@11 f_8@@26) (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@11 f_8@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@11 f_8@@26))
))) (forall ((o2_1@@12 T@Ref) (f_8@@27 T@Field_21323_21324) ) (!  (=> (select (|PolymorphicMapType_9202_21323_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@12 f_8@@27) (= (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@34) o2_1@@12 f_8@@27) (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@12 f_8@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@12 f_8@@27))
))) (forall ((o2_1@@13 T@Ref) (f_8@@28 T@Field_23907_23912) ) (!  (=> (select (|PolymorphicMapType_9202_21323_34782#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) null (PredicateMaskField_4707 pm_f_1@@5))) o2_1@@13 f_8@@28) (= (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@34) o2_1@@13 f_8@@28) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@13 f_8@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@22) o2_1@@13 f_8@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@56) (IsPredicateField_4707_4708 pm_f_1@@5))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8653) (ExhaleHeap@@23 T@PolymorphicMapType_8653) (Mask@@57 T@PolymorphicMapType_8674) (pm_f_1@@6 T@Field_12521_12522) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@57) (=> (and (HasDirectPerm_12521_12522 Mask@@57 null pm_f_1@@6) (IsPredicateField_4682_4683 pm_f_1@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@14 T@Ref) (f_8@@29 T@Field_12040_1189) ) (!  (=> (select (|PolymorphicMapType_9202_4577_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@14 f_8@@29) (= (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@35) o2_1@@14 f_8@@29) (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@14 f_8@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@14 f_8@@29))
)) (forall ((o2_1@@15 T@Ref) (f_8@@30 T@Field_8726_8727) ) (!  (=> (select (|PolymorphicMapType_9202_4579_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@15 f_8@@30) (= (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@35) o2_1@@15 f_8@@30) (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@15 f_8@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@15 f_8@@30))
))) (forall ((o2_1@@16 T@Ref) (f_8@@31 T@Field_8713_53) ) (!  (=> (select (|PolymorphicMapType_9202_4577_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@16 f_8@@31) (= (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@35) o2_1@@16 f_8@@31) (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@16 f_8@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@16 f_8@@31))
))) (forall ((o2_1@@17 T@Ref) (f_8@@32 T@Field_4579_12522) ) (!  (=> (select (|PolymorphicMapType_9202_4577_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@17 f_8@@32) (= (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@35) o2_1@@17 f_8@@32) (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@17 f_8@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@17 f_8@@32))
))) (forall ((o2_1@@18 T@Ref) (f_8@@33 T@Field_4579_15498) ) (!  (=> (select (|PolymorphicMapType_9202_4577_32686#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@18 f_8@@33) (= (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@35) o2_1@@18 f_8@@33) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@18 f_8@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@18 f_8@@33))
))) (forall ((o2_1@@19 T@Ref) (f_8@@34 T@Field_12521_1189) ) (!  (=> (select (|PolymorphicMapType_9202_12521_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@19 f_8@@34) (= (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@35) o2_1@@19 f_8@@34) (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@19 f_8@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@19 f_8@@34))
))) (forall ((o2_1@@20 T@Ref) (f_8@@35 T@Field_12521_4580) ) (!  (=> (select (|PolymorphicMapType_9202_12521_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@20 f_8@@35) (= (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@35) o2_1@@20 f_8@@35) (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@20 f_8@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@20 f_8@@35))
))) (forall ((o2_1@@21 T@Ref) (f_8@@36 T@Field_12521_53) ) (!  (=> (select (|PolymorphicMapType_9202_12521_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@21 f_8@@36) (= (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@35) o2_1@@21 f_8@@36) (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@21 f_8@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@21 f_8@@36))
))) (forall ((o2_1@@22 T@Ref) (f_8@@37 T@Field_12521_12522) ) (!  (=> (select (|PolymorphicMapType_9202_12521_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@22 f_8@@37) (= (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@35) o2_1@@22 f_8@@37) (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@22 f_8@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@22 f_8@@37))
))) (forall ((o2_1@@23 T@Ref) (f_8@@38 T@Field_15493_15498) ) (!  (=> (select (|PolymorphicMapType_9202_12521_33734#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@23 f_8@@38) (= (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) o2_1@@23 f_8@@38) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@23 f_8@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@23 f_8@@38))
))) (forall ((o2_1@@24 T@Ref) (f_8@@39 T@Field_21323_1189) ) (!  (=> (select (|PolymorphicMapType_9202_21323_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@24 f_8@@39) (= (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@35) o2_1@@24 f_8@@39) (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@24 f_8@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@24 f_8@@39))
))) (forall ((o2_1@@25 T@Ref) (f_8@@40 T@Field_21323_4580) ) (!  (=> (select (|PolymorphicMapType_9202_21323_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@25 f_8@@40) (= (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@35) o2_1@@25 f_8@@40) (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@25 f_8@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@25 f_8@@40))
))) (forall ((o2_1@@26 T@Ref) (f_8@@41 T@Field_21323_53) ) (!  (=> (select (|PolymorphicMapType_9202_21323_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@26 f_8@@41) (= (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@35) o2_1@@26 f_8@@41) (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@26 f_8@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@26 f_8@@41))
))) (forall ((o2_1@@27 T@Ref) (f_8@@42 T@Field_21323_21324) ) (!  (=> (select (|PolymorphicMapType_9202_21323_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@27 f_8@@42) (= (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@35) o2_1@@27 f_8@@42) (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@27 f_8@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@27 f_8@@42))
))) (forall ((o2_1@@28 T@Ref) (f_8@@43 T@Field_23907_23912) ) (!  (=> (select (|PolymorphicMapType_9202_21323_34782#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@35) null (PredicateMaskField_4682 pm_f_1@@6))) o2_1@@28 f_8@@43) (= (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@35) o2_1@@28 f_8@@43) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@28 f_8@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@23) o2_1@@28 f_8@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@57) (IsPredicateField_4682_4683 pm_f_1@@6))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8653) (ExhaleHeap@@24 T@PolymorphicMapType_8653) (Mask@@58 T@PolymorphicMapType_8674) (pm_f_1@@7 T@Field_4579_12522) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@58) (=> (and (HasDirectPerm_4579_12522 Mask@@58 null pm_f_1@@7) (IsPredicateField_4579_30904 pm_f_1@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@29 T@Ref) (f_8@@44 T@Field_12040_1189) ) (!  (=> (select (|PolymorphicMapType_9202_4577_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@29 f_8@@44) (= (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@36) o2_1@@29 f_8@@44) (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@29 f_8@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@29 f_8@@44))
)) (forall ((o2_1@@30 T@Ref) (f_8@@45 T@Field_8726_8727) ) (!  (=> (select (|PolymorphicMapType_9202_4579_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@30 f_8@@45) (= (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@36) o2_1@@30 f_8@@45) (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@30 f_8@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@30 f_8@@45))
))) (forall ((o2_1@@31 T@Ref) (f_8@@46 T@Field_8713_53) ) (!  (=> (select (|PolymorphicMapType_9202_4577_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@31 f_8@@46) (= (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@36) o2_1@@31 f_8@@46) (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@31 f_8@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@31 f_8@@46))
))) (forall ((o2_1@@32 T@Ref) (f_8@@47 T@Field_4579_12522) ) (!  (=> (select (|PolymorphicMapType_9202_4577_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@32 f_8@@47) (= (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@36) o2_1@@32 f_8@@47) (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@32 f_8@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@32 f_8@@47))
))) (forall ((o2_1@@33 T@Ref) (f_8@@48 T@Field_4579_15498) ) (!  (=> (select (|PolymorphicMapType_9202_4577_32686#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@33 f_8@@48) (= (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) o2_1@@33 f_8@@48) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@33 f_8@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@33 f_8@@48))
))) (forall ((o2_1@@34 T@Ref) (f_8@@49 T@Field_12521_1189) ) (!  (=> (select (|PolymorphicMapType_9202_12521_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@34 f_8@@49) (= (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@36) o2_1@@34 f_8@@49) (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@34 f_8@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@34 f_8@@49))
))) (forall ((o2_1@@35 T@Ref) (f_8@@50 T@Field_12521_4580) ) (!  (=> (select (|PolymorphicMapType_9202_12521_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@35 f_8@@50) (= (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@36) o2_1@@35 f_8@@50) (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@35 f_8@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@35 f_8@@50))
))) (forall ((o2_1@@36 T@Ref) (f_8@@51 T@Field_12521_53) ) (!  (=> (select (|PolymorphicMapType_9202_12521_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@36 f_8@@51) (= (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@36) o2_1@@36 f_8@@51) (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@36 f_8@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@36 f_8@@51))
))) (forall ((o2_1@@37 T@Ref) (f_8@@52 T@Field_12521_12522) ) (!  (=> (select (|PolymorphicMapType_9202_12521_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@37 f_8@@52) (= (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@36) o2_1@@37 f_8@@52) (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@37 f_8@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@37 f_8@@52))
))) (forall ((o2_1@@38 T@Ref) (f_8@@53 T@Field_15493_15498) ) (!  (=> (select (|PolymorphicMapType_9202_12521_33734#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@38 f_8@@53) (= (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@36) o2_1@@38 f_8@@53) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@38 f_8@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@38 f_8@@53))
))) (forall ((o2_1@@39 T@Ref) (f_8@@54 T@Field_21323_1189) ) (!  (=> (select (|PolymorphicMapType_9202_21323_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@39 f_8@@54) (= (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@36) o2_1@@39 f_8@@54) (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@39 f_8@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@39 f_8@@54))
))) (forall ((o2_1@@40 T@Ref) (f_8@@55 T@Field_21323_4580) ) (!  (=> (select (|PolymorphicMapType_9202_21323_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@40 f_8@@55) (= (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@36) o2_1@@40 f_8@@55) (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@40 f_8@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@40 f_8@@55))
))) (forall ((o2_1@@41 T@Ref) (f_8@@56 T@Field_21323_53) ) (!  (=> (select (|PolymorphicMapType_9202_21323_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@41 f_8@@56) (= (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@36) o2_1@@41 f_8@@56) (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@41 f_8@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@41 f_8@@56))
))) (forall ((o2_1@@42 T@Ref) (f_8@@57 T@Field_21323_21324) ) (!  (=> (select (|PolymorphicMapType_9202_21323_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@42 f_8@@57) (= (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@36) o2_1@@42 f_8@@57) (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@42 f_8@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@42 f_8@@57))
))) (forall ((o2_1@@43 T@Ref) (f_8@@58 T@Field_23907_23912) ) (!  (=> (select (|PolymorphicMapType_9202_21323_34782#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@36) null (PredicateMaskField_4579 pm_f_1@@7))) o2_1@@43 f_8@@58) (= (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@36) o2_1@@43 f_8@@58) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@43 f_8@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@24) o2_1@@43 f_8@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@58) (IsPredicateField_4579_30904 pm_f_1@@7))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_8653) (ExhaleHeap@@25 T@PolymorphicMapType_8653) (Mask@@59 T@PolymorphicMapType_8674) (pm_f_1@@8 T@Field_21323_21324) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@59) (=> (and (HasDirectPerm_21323_12522 Mask@@59 null pm_f_1@@8) (IsWandField_21323_36585 pm_f_1@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@44 T@Ref) (f_8@@59 T@Field_12040_1189) ) (!  (=> (select (|PolymorphicMapType_9202_4577_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@44 f_8@@59) (= (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@37) o2_1@@44 f_8@@59) (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@44 f_8@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@44 f_8@@59))
)) (forall ((o2_1@@45 T@Ref) (f_8@@60 T@Field_8726_8727) ) (!  (=> (select (|PolymorphicMapType_9202_4579_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@45 f_8@@60) (= (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@37) o2_1@@45 f_8@@60) (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@45 f_8@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@45 f_8@@60))
))) (forall ((o2_1@@46 T@Ref) (f_8@@61 T@Field_8713_53) ) (!  (=> (select (|PolymorphicMapType_9202_4577_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@46 f_8@@61) (= (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@37) o2_1@@46 f_8@@61) (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@46 f_8@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@46 f_8@@61))
))) (forall ((o2_1@@47 T@Ref) (f_8@@62 T@Field_4579_12522) ) (!  (=> (select (|PolymorphicMapType_9202_4577_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@47 f_8@@62) (= (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@37) o2_1@@47 f_8@@62) (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@47 f_8@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@47 f_8@@62))
))) (forall ((o2_1@@48 T@Ref) (f_8@@63 T@Field_4579_15498) ) (!  (=> (select (|PolymorphicMapType_9202_4577_32686#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@48 f_8@@63) (= (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@37) o2_1@@48 f_8@@63) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@48 f_8@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@48 f_8@@63))
))) (forall ((o2_1@@49 T@Ref) (f_8@@64 T@Field_12521_1189) ) (!  (=> (select (|PolymorphicMapType_9202_12521_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@49 f_8@@64) (= (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@37) o2_1@@49 f_8@@64) (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@49 f_8@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@49 f_8@@64))
))) (forall ((o2_1@@50 T@Ref) (f_8@@65 T@Field_12521_4580) ) (!  (=> (select (|PolymorphicMapType_9202_12521_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@50 f_8@@65) (= (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@37) o2_1@@50 f_8@@65) (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@50 f_8@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@50 f_8@@65))
))) (forall ((o2_1@@51 T@Ref) (f_8@@66 T@Field_12521_53) ) (!  (=> (select (|PolymorphicMapType_9202_12521_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@51 f_8@@66) (= (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@37) o2_1@@51 f_8@@66) (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@51 f_8@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@51 f_8@@66))
))) (forall ((o2_1@@52 T@Ref) (f_8@@67 T@Field_12521_12522) ) (!  (=> (select (|PolymorphicMapType_9202_12521_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@52 f_8@@67) (= (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@37) o2_1@@52 f_8@@67) (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@52 f_8@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@52 f_8@@67))
))) (forall ((o2_1@@53 T@Ref) (f_8@@68 T@Field_15493_15498) ) (!  (=> (select (|PolymorphicMapType_9202_12521_33734#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@53 f_8@@68) (= (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@37) o2_1@@53 f_8@@68) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@53 f_8@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@53 f_8@@68))
))) (forall ((o2_1@@54 T@Ref) (f_8@@69 T@Field_21323_1189) ) (!  (=> (select (|PolymorphicMapType_9202_21323_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@54 f_8@@69) (= (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@37) o2_1@@54 f_8@@69) (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@54 f_8@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@54 f_8@@69))
))) (forall ((o2_1@@55 T@Ref) (f_8@@70 T@Field_21323_4580) ) (!  (=> (select (|PolymorphicMapType_9202_21323_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@55 f_8@@70) (= (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@37) o2_1@@55 f_8@@70) (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@55 f_8@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@55 f_8@@70))
))) (forall ((o2_1@@56 T@Ref) (f_8@@71 T@Field_21323_53) ) (!  (=> (select (|PolymorphicMapType_9202_21323_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@56 f_8@@71) (= (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@37) o2_1@@56 f_8@@71) (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@56 f_8@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@56 f_8@@71))
))) (forall ((o2_1@@57 T@Ref) (f_8@@72 T@Field_21323_21324) ) (!  (=> (select (|PolymorphicMapType_9202_21323_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@57 f_8@@72) (= (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@37) o2_1@@57 f_8@@72) (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@57 f_8@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@57 f_8@@72))
))) (forall ((o2_1@@58 T@Ref) (f_8@@73 T@Field_23907_23912) ) (!  (=> (select (|PolymorphicMapType_9202_21323_34782#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) null (WandMaskField_21323 pm_f_1@@8))) o2_1@@58 f_8@@73) (= (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@37) o2_1@@58 f_8@@73) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@58 f_8@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@25) o2_1@@58 f_8@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@59) (IsWandField_21323_36585 pm_f_1@@8))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8653) (ExhaleHeap@@26 T@PolymorphicMapType_8653) (Mask@@60 T@PolymorphicMapType_8674) (pm_f_1@@9 T@Field_12521_12522) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@60) (=> (and (HasDirectPerm_12521_12522 Mask@@60 null pm_f_1@@9) (IsWandField_12521_36228 pm_f_1@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@59 T@Ref) (f_8@@74 T@Field_12040_1189) ) (!  (=> (select (|PolymorphicMapType_9202_4577_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@59 f_8@@74) (= (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@38) o2_1@@59 f_8@@74) (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@59 f_8@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@59 f_8@@74))
)) (forall ((o2_1@@60 T@Ref) (f_8@@75 T@Field_8726_8727) ) (!  (=> (select (|PolymorphicMapType_9202_4579_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@60 f_8@@75) (= (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@38) o2_1@@60 f_8@@75) (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@60 f_8@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@60 f_8@@75))
))) (forall ((o2_1@@61 T@Ref) (f_8@@76 T@Field_8713_53) ) (!  (=> (select (|PolymorphicMapType_9202_4577_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@61 f_8@@76) (= (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@38) o2_1@@61 f_8@@76) (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@61 f_8@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@61 f_8@@76))
))) (forall ((o2_1@@62 T@Ref) (f_8@@77 T@Field_4579_12522) ) (!  (=> (select (|PolymorphicMapType_9202_4577_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@62 f_8@@77) (= (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@38) o2_1@@62 f_8@@77) (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@62 f_8@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@62 f_8@@77))
))) (forall ((o2_1@@63 T@Ref) (f_8@@78 T@Field_4579_15498) ) (!  (=> (select (|PolymorphicMapType_9202_4577_32686#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@63 f_8@@78) (= (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@38) o2_1@@63 f_8@@78) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@63 f_8@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@63 f_8@@78))
))) (forall ((o2_1@@64 T@Ref) (f_8@@79 T@Field_12521_1189) ) (!  (=> (select (|PolymorphicMapType_9202_12521_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@64 f_8@@79) (= (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@38) o2_1@@64 f_8@@79) (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@64 f_8@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@64 f_8@@79))
))) (forall ((o2_1@@65 T@Ref) (f_8@@80 T@Field_12521_4580) ) (!  (=> (select (|PolymorphicMapType_9202_12521_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@65 f_8@@80) (= (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@38) o2_1@@65 f_8@@80) (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@65 f_8@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@65 f_8@@80))
))) (forall ((o2_1@@66 T@Ref) (f_8@@81 T@Field_12521_53) ) (!  (=> (select (|PolymorphicMapType_9202_12521_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@66 f_8@@81) (= (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@38) o2_1@@66 f_8@@81) (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@66 f_8@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@66 f_8@@81))
))) (forall ((o2_1@@67 T@Ref) (f_8@@82 T@Field_12521_12522) ) (!  (=> (select (|PolymorphicMapType_9202_12521_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@67 f_8@@82) (= (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@38) o2_1@@67 f_8@@82) (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@67 f_8@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@67 f_8@@82))
))) (forall ((o2_1@@68 T@Ref) (f_8@@83 T@Field_15493_15498) ) (!  (=> (select (|PolymorphicMapType_9202_12521_33734#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@68 f_8@@83) (= (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) o2_1@@68 f_8@@83) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@68 f_8@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@68 f_8@@83))
))) (forall ((o2_1@@69 T@Ref) (f_8@@84 T@Field_21323_1189) ) (!  (=> (select (|PolymorphicMapType_9202_21323_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@69 f_8@@84) (= (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@38) o2_1@@69 f_8@@84) (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@69 f_8@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@69 f_8@@84))
))) (forall ((o2_1@@70 T@Ref) (f_8@@85 T@Field_21323_4580) ) (!  (=> (select (|PolymorphicMapType_9202_21323_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@70 f_8@@85) (= (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@38) o2_1@@70 f_8@@85) (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@70 f_8@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@70 f_8@@85))
))) (forall ((o2_1@@71 T@Ref) (f_8@@86 T@Field_21323_53) ) (!  (=> (select (|PolymorphicMapType_9202_21323_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@71 f_8@@86) (= (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@38) o2_1@@71 f_8@@86) (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@71 f_8@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@71 f_8@@86))
))) (forall ((o2_1@@72 T@Ref) (f_8@@87 T@Field_21323_21324) ) (!  (=> (select (|PolymorphicMapType_9202_21323_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@72 f_8@@87) (= (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@38) o2_1@@72 f_8@@87) (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@72 f_8@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@72 f_8@@87))
))) (forall ((o2_1@@73 T@Ref) (f_8@@88 T@Field_23907_23912) ) (!  (=> (select (|PolymorphicMapType_9202_21323_34782#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@38) null (WandMaskField_12521 pm_f_1@@9))) o2_1@@73 f_8@@88) (= (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@38) o2_1@@73 f_8@@88) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@73 f_8@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@26) o2_1@@73 f_8@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@60) (IsWandField_12521_36228 pm_f_1@@9))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_8653) (ExhaleHeap@@27 T@PolymorphicMapType_8653) (Mask@@61 T@PolymorphicMapType_8674) (pm_f_1@@10 T@Field_4579_12522) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@61) (=> (and (HasDirectPerm_4579_12522 Mask@@61 null pm_f_1@@10) (IsWandField_4579_35871 pm_f_1@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@74 T@Ref) (f_8@@89 T@Field_12040_1189) ) (!  (=> (select (|PolymorphicMapType_9202_4577_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@74 f_8@@89) (= (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@39) o2_1@@74 f_8@@89) (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@74 f_8@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@74 f_8@@89))
)) (forall ((o2_1@@75 T@Ref) (f_8@@90 T@Field_8726_8727) ) (!  (=> (select (|PolymorphicMapType_9202_4579_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@75 f_8@@90) (= (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@39) o2_1@@75 f_8@@90) (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@75 f_8@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@75 f_8@@90))
))) (forall ((o2_1@@76 T@Ref) (f_8@@91 T@Field_8713_53) ) (!  (=> (select (|PolymorphicMapType_9202_4577_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@76 f_8@@91) (= (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@39) o2_1@@76 f_8@@91) (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@76 f_8@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@76 f_8@@91))
))) (forall ((o2_1@@77 T@Ref) (f_8@@92 T@Field_4579_12522) ) (!  (=> (select (|PolymorphicMapType_9202_4577_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@77 f_8@@92) (= (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@39) o2_1@@77 f_8@@92) (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@77 f_8@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@77 f_8@@92))
))) (forall ((o2_1@@78 T@Ref) (f_8@@93 T@Field_4579_15498) ) (!  (=> (select (|PolymorphicMapType_9202_4577_32686#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@78 f_8@@93) (= (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) o2_1@@78 f_8@@93) (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@78 f_8@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@78 f_8@@93))
))) (forall ((o2_1@@79 T@Ref) (f_8@@94 T@Field_12521_1189) ) (!  (=> (select (|PolymorphicMapType_9202_12521_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@79 f_8@@94) (= (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@39) o2_1@@79 f_8@@94) (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@79 f_8@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@79 f_8@@94))
))) (forall ((o2_1@@80 T@Ref) (f_8@@95 T@Field_12521_4580) ) (!  (=> (select (|PolymorphicMapType_9202_12521_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@80 f_8@@95) (= (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@39) o2_1@@80 f_8@@95) (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@80 f_8@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@80 f_8@@95))
))) (forall ((o2_1@@81 T@Ref) (f_8@@96 T@Field_12521_53) ) (!  (=> (select (|PolymorphicMapType_9202_12521_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@81 f_8@@96) (= (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@39) o2_1@@81 f_8@@96) (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@81 f_8@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@81 f_8@@96))
))) (forall ((o2_1@@82 T@Ref) (f_8@@97 T@Field_12521_12522) ) (!  (=> (select (|PolymorphicMapType_9202_12521_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@82 f_8@@97) (= (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@39) o2_1@@82 f_8@@97) (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@82 f_8@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@82 f_8@@97))
))) (forall ((o2_1@@83 T@Ref) (f_8@@98 T@Field_15493_15498) ) (!  (=> (select (|PolymorphicMapType_9202_12521_33734#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@83 f_8@@98) (= (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@39) o2_1@@83 f_8@@98) (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@83 f_8@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@83 f_8@@98))
))) (forall ((o2_1@@84 T@Ref) (f_8@@99 T@Field_21323_1189) ) (!  (=> (select (|PolymorphicMapType_9202_21323_1189#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@84 f_8@@99) (= (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@39) o2_1@@84 f_8@@99) (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@84 f_8@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@84 f_8@@99))
))) (forall ((o2_1@@85 T@Ref) (f_8@@100 T@Field_21323_4580) ) (!  (=> (select (|PolymorphicMapType_9202_21323_4580#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@85 f_8@@100) (= (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@39) o2_1@@85 f_8@@100) (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@85 f_8@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@85 f_8@@100))
))) (forall ((o2_1@@86 T@Ref) (f_8@@101 T@Field_21323_53) ) (!  (=> (select (|PolymorphicMapType_9202_21323_53#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@86 f_8@@101) (= (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@39) o2_1@@86 f_8@@101) (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@86 f_8@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@86 f_8@@101))
))) (forall ((o2_1@@87 T@Ref) (f_8@@102 T@Field_21323_21324) ) (!  (=> (select (|PolymorphicMapType_9202_21323_12522#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@87 f_8@@102) (= (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@39) o2_1@@87 f_8@@102) (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@87 f_8@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@87 f_8@@102))
))) (forall ((o2_1@@88 T@Ref) (f_8@@103 T@Field_23907_23912) ) (!  (=> (select (|PolymorphicMapType_9202_21323_34782#PolymorphicMapType_9202| (select (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@39) null (WandMaskField_4579 pm_f_1@@10))) o2_1@@88 f_8@@103) (= (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@39) o2_1@@88 f_8@@103) (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@88 f_8@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| ExhaleHeap@@27) o2_1@@88 f_8@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@61) (IsWandField_4579_35871 pm_f_1@@10))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_8653) (Mask@@62 T@PolymorphicMapType_8674) (this@@16 T@Ref) ) (!  (=> (and (state Heap@@40 Mask@@62) (< AssumeFunctionsAbove 0)) (=> (not (= this@@16 null)) (= (Listlen Heap@@40 this@@16) (ite (= (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@40) this@@16 Listc) null) 0 (Nodelen Heap@@40 (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@40) this@@16 Listc))))))
 :qid |stdinbpl.529:15|
 :skolemid |35|
 :pattern ( (state Heap@@40 Mask@@62) (Listlen Heap@@40 this@@16))
 :pattern ( (state Heap@@40 Mask@@62) (|Listlen#triggerStateless| this@@16) (|Listinv#trigger_4707| Heap@@40 (Listinv this@@16)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_8653) (Mask@@63 T@PolymorphicMapType_8674) (this@@17 T@Ref) (i@@1 Int) ) (!  (=> (state Heap@@41 Mask@@63) (= (|Nodeget'| Heap@@41 this@@17 i@@1) (|Nodeget#frame| (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@41) null (Nodeinv this@@17)) this@@17 i@@1)))
 :qid |stdinbpl.371:15|
 :skolemid |31|
 :pattern ( (state Heap@@41 Mask@@63) (|Nodeget'| Heap@@41 this@@17 i@@1))
 :pattern ( (state Heap@@41 Mask@@63) (|Nodeget#triggerStateless| this@@17 i@@1) (|Nodeinv#trigger_4682| Heap@@41 (Nodeinv this@@17)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_8653) (Mask@@64 T@PolymorphicMapType_8674) (this@@18 T@Ref) ) (!  (=> (state Heap@@42 Mask@@64) (= (|Nodelen'| Heap@@42 this@@18) (|Nodelen#frame| (select (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@42) null (Nodeinv this@@18)) this@@18)))
 :qid |stdinbpl.219:15|
 :skolemid |25|
 :pattern ( (state Heap@@42 Mask@@64) (|Nodelen'| Heap@@42 this@@18))
 :pattern ( (state Heap@@42 Mask@@64) (|Nodelen#triggerStateless| this@@18) (|Nodeinv#trigger_4682| Heap@@42 (Nodeinv this@@18)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_8653) (Mask@@65 T@PolymorphicMapType_8674) (this@@19 T@Ref) ) (!  (=> (state Heap@@43 Mask@@65) (= (|Listlen'| Heap@@43 this@@19) (|Listlen#frame| (select (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@43) null (Listinv this@@19)) this@@19)))
 :qid |stdinbpl.536:15|
 :skolemid |36|
 :pattern ( (state Heap@@43 Mask@@65) (|Listlen'| Heap@@43 this@@19))
 :pattern ( (state Heap@@43 Mask@@65) (|Listlen#triggerStateless| this@@19) (|Listinv#trigger_4707| Heap@@43 (Listinv this@@19)))
)))
(assert (forall ((this@@20 T@Ref) ) (! (= (getPredWandId_4682_4683 (Nodeinv this@@20)) 0)
 :qid |stdinbpl.670:15|
 :skolemid |41|
 :pattern ( (Nodeinv this@@20))
)))
(assert (forall ((this@@21 T@Ref) ) (! (= (getPredWandId_4707_4708 (Listinv this@@21)) 1)
 :qid |stdinbpl.742:15|
 :skolemid |47|
 :pattern ( (Listinv this@@21))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_8653) (Mask@@66 T@PolymorphicMapType_8674) (this@@22 T@Ref) (i@@2 Int) ) (!  (=> (and (state Heap@@44 Mask@@66) (< AssumeFunctionsAbove 1)) (=> (and (not (= this@@22 null)) (and (<= 0 i@@2) (< i@@2 (Nodelen Heap@@44 this@@22)))) (= (Nodeget Heap@@44 this@@22 i@@2) (ite (= i@@2 0) (select (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@44) this@@22 Nodev) (|Nodeget'| Heap@@44 (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@44) this@@22 Noden) (- i@@2 1))))))
 :qid |stdinbpl.364:15|
 :skolemid |30|
 :pattern ( (state Heap@@44 Mask@@66) (Nodeget Heap@@44 this@@22 i@@2))
 :pattern ( (state Heap@@44 Mask@@66) (|Nodeget#triggerStateless| this@@22 i@@2) (|Nodeinv#trigger_4682| Heap@@44 (Nodeinv this@@22)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_8653) (o_1 T@Ref) (f_9 T@Field_23907_23912) (v T@PolymorphicMapType_9202) ) (! (succHeap Heap@@45 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@45) (store (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@45) o_1 f_9 v) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@45) (store (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@45) o_1 f_9 v) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@45) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_8653) (o_1@@0 T@Ref) (f_9@@0 T@Field_21323_1189) (v@@0 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@46) (store (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@46) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@46) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@46) (store (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@46) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_8653) (o_1@@1 T@Ref) (f_9@@1 T@Field_21323_21324) (v@@1 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@47) (store (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@47) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@47) (store (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@47) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@47) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_8653) (o_1@@2 T@Ref) (f_9@@2 T@Field_21323_4580) (v@@2 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@48) (store (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@48) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@48) (store (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@48) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@48) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_8653) (o_1@@3 T@Ref) (f_9@@3 T@Field_21323_53) (v@@3 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@49) (store (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@49) o_1@@3 f_9@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@49) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@49) (store (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@49) o_1@@3 f_9@@3 v@@3)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_8653) (o_1@@4 T@Ref) (f_9@@4 T@Field_15493_15498) (v@@4 T@PolymorphicMapType_9202) ) (! (succHeap Heap@@50 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@50) (store (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@50) o_1@@4 f_9@@4 v@@4) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@50) (store (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@50) o_1@@4 f_9@@4 v@@4) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@50) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_8653) (o_1@@5 T@Ref) (f_9@@5 T@Field_12521_1189) (v@@5 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@51) (store (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@51) o_1@@5 f_9@@5 v@@5) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@51) (store (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@51) o_1@@5 f_9@@5 v@@5) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@51) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_8653) (o_1@@6 T@Ref) (f_9@@6 T@Field_12521_12522) (v@@6 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@52) (store (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@52) o_1@@6 f_9@@6 v@@6) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@52) (store (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@52) o_1@@6 f_9@@6 v@@6) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@52) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_8653) (o_1@@7 T@Ref) (f_9@@7 T@Field_12521_4580) (v@@7 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@53) (store (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@53) o_1@@7 f_9@@7 v@@7) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@53) (store (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@53) o_1@@7 f_9@@7 v@@7) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@53) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_8653) (o_1@@8 T@Ref) (f_9@@8 T@Field_12521_53) (v@@8 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@54) (store (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@54) o_1@@8 f_9@@8 v@@8) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@54) (store (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@54) o_1@@8 f_9@@8 v@@8) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@54) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_8653) (o_1@@9 T@Ref) (f_9@@9 T@Field_4579_15498) (v@@9 T@PolymorphicMapType_9202) ) (! (succHeap Heap@@55 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@55) (store (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@55) o_1@@9 f_9@@9 v@@9) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@55) (store (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@55) o_1@@9 f_9@@9 v@@9) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@55) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_8653) (o_1@@10 T@Ref) (f_9@@10 T@Field_12040_1189) (v@@10 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@56) (store (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@56) o_1@@10 f_9@@10 v@@10) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@56) (store (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@56) o_1@@10 f_9@@10 v@@10) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@56) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_8653) (o_1@@11 T@Ref) (f_9@@11 T@Field_4579_12522) (v@@11 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@57) (store (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@57) o_1@@11 f_9@@11 v@@11) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@57) (store (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@57) o_1@@11 f_9@@11 v@@11) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@57) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_8653) (o_1@@12 T@Ref) (f_9@@12 T@Field_8726_8727) (v@@12 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@58) (store (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@58) o_1@@12 f_9@@12 v@@12) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@58) (store (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@58) o_1@@12 f_9@@12 v@@12) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@58) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_8653) (o_1@@13 T@Ref) (f_9@@13 T@Field_8713_53) (v@@13 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_8653 (store (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@59) o_1@@13 f_9@@13 v@@13) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8653 (store (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@59) o_1@@13 f_9@@13 v@@13) (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4682_4683#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4577_1189#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4686_15585#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4707_4708#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4711_23999#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4579_12522#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_4579_28422#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_12521_4580#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_12521_1189#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_12521_53#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_21323_4580#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_21323_1189#PolymorphicMapType_8653| Heap@@59) (|PolymorphicMapType_8653_21323_53#PolymorphicMapType_8653| Heap@@59)))
)))
(assert (forall ((this@@23 T@Ref) ) (! (= (PredicateMaskField_4682 (Nodeinv this@@23)) (|Nodeinv#sm| this@@23))
 :qid |stdinbpl.662:15|
 :skolemid |39|
 :pattern ( (PredicateMaskField_4682 (Nodeinv this@@23)))
)))
(assert (forall ((this@@24 T@Ref) ) (! (= (PredicateMaskField_4707 (Listinv this@@24)) (|Listinv#sm| this@@24))
 :qid |stdinbpl.734:15|
 :skolemid |45|
 :pattern ( (PredicateMaskField_4707 (Listinv this@@24)))
)))
(assert (forall ((o_1@@14 T@Ref) (f_2 T@Field_8726_8727) (Heap@@60 T@PolymorphicMapType_8653) ) (!  (=> (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@60) o_1@@14 $allocated) (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@60) (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@60) o_1@@14 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@60) o_1@@14 f_2))
)))
(assert (forall ((p@@3 T@Field_4579_12522) (v_1@@2 T@FrameType) (q T@Field_4579_12522) (w@@2 T@FrameType) (r T@Field_21323_21324) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8713_8713 p@@3 v_1@@2 q w@@2) (InsidePredicate_8713_21323 q w@@2 r u)) (InsidePredicate_8713_21323 p@@3 v_1@@2 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8713_8713 p@@3 v_1@@2 q w@@2) (InsidePredicate_8713_21323 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_4579_12522) (v_1@@3 T@FrameType) (q@@0 T@Field_4579_12522) (w@@3 T@FrameType) (r@@0 T@Field_4579_12522) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8713_8713 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_8713_8713 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_8713_8713 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8713_8713 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_8713_8713 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_4579_12522) (v_1@@4 T@FrameType) (q@@1 T@Field_4579_12522) (w@@4 T@FrameType) (r@@1 T@Field_12521_12522) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8713_8713 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_8713_4682 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_8713_4682 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8713_8713 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_8713_4682 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_4579_12522) (v_1@@5 T@FrameType) (q@@2 T@Field_21323_21324) (w@@5 T@FrameType) (r@@2 T@Field_21323_21324) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8713_21323 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_4707_21323 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_8713_21323 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8713_21323 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_4707_21323 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_4579_12522) (v_1@@6 T@FrameType) (q@@3 T@Field_21323_21324) (w@@6 T@FrameType) (r@@3 T@Field_4579_12522) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8713_21323 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_4707_8713 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_8713_8713 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8713_21323 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_4707_8713 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_4579_12522) (v_1@@7 T@FrameType) (q@@4 T@Field_21323_21324) (w@@7 T@FrameType) (r@@4 T@Field_12521_12522) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8713_21323 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_4707_4682 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_8713_4682 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8713_21323 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_4707_4682 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_4579_12522) (v_1@@8 T@FrameType) (q@@5 T@Field_12521_12522) (w@@8 T@FrameType) (r@@5 T@Field_21323_21324) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8713_4682 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4682_21323 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_8713_21323 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8713_4682 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4682_21323 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_4579_12522) (v_1@@9 T@FrameType) (q@@6 T@Field_12521_12522) (w@@9 T@FrameType) (r@@6 T@Field_4579_12522) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8713_4682 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4682_8713 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_8713_8713 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8713_4682 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4682_8713 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_4579_12522) (v_1@@10 T@FrameType) (q@@7 T@Field_12521_12522) (w@@10 T@FrameType) (r@@7 T@Field_12521_12522) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_8713_4682 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4682_4682 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_8713_4682 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8713_4682 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4682_4682 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_21323_21324) (v_1@@11 T@FrameType) (q@@8 T@Field_4579_12522) (w@@11 T@FrameType) (r@@8 T@Field_21323_21324) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_4707_8713 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_8713_21323 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_4707_21323 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4707_8713 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_8713_21323 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_21323_21324) (v_1@@12 T@FrameType) (q@@9 T@Field_4579_12522) (w@@12 T@FrameType) (r@@9 T@Field_4579_12522) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_4707_8713 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_8713_8713 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_4707_8713 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4707_8713 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_8713_8713 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_21323_21324) (v_1@@13 T@FrameType) (q@@10 T@Field_4579_12522) (w@@13 T@FrameType) (r@@10 T@Field_12521_12522) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_4707_8713 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_8713_4682 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_4707_4682 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4707_8713 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_8713_4682 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_21323_21324) (v_1@@14 T@FrameType) (q@@11 T@Field_21323_21324) (w@@14 T@FrameType) (r@@11 T@Field_21323_21324) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_4707_21323 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_4707_21323 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_4707_21323 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4707_21323 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_4707_21323 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_21323_21324) (v_1@@15 T@FrameType) (q@@12 T@Field_21323_21324) (w@@15 T@FrameType) (r@@12 T@Field_4579_12522) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_4707_21323 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_4707_8713 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_4707_8713 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4707_21323 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_4707_8713 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_21323_21324) (v_1@@16 T@FrameType) (q@@13 T@Field_21323_21324) (w@@16 T@FrameType) (r@@13 T@Field_12521_12522) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_4707_21323 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_4707_4682 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_4707_4682 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4707_21323 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_4707_4682 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_21323_21324) (v_1@@17 T@FrameType) (q@@14 T@Field_12521_12522) (w@@17 T@FrameType) (r@@14 T@Field_21323_21324) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_4707_4682 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4682_21323 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_4707_21323 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4707_4682 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4682_21323 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_21323_21324) (v_1@@18 T@FrameType) (q@@15 T@Field_12521_12522) (w@@18 T@FrameType) (r@@15 T@Field_4579_12522) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_4707_4682 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4682_8713 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_4707_8713 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4707_4682 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4682_8713 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_21323_21324) (v_1@@19 T@FrameType) (q@@16 T@Field_12521_12522) (w@@19 T@FrameType) (r@@16 T@Field_12521_12522) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_4707_4682 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4682_4682 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_4707_4682 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4707_4682 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4682_4682 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_12521_12522) (v_1@@20 T@FrameType) (q@@17 T@Field_4579_12522) (w@@20 T@FrameType) (r@@17 T@Field_21323_21324) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_4682_8713 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_8713_21323 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_4682_21323 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4682_8713 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_8713_21323 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_12521_12522) (v_1@@21 T@FrameType) (q@@18 T@Field_4579_12522) (w@@21 T@FrameType) (r@@18 T@Field_4579_12522) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_4682_8713 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_8713_8713 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_4682_8713 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4682_8713 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_8713_8713 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_12521_12522) (v_1@@22 T@FrameType) (q@@19 T@Field_4579_12522) (w@@22 T@FrameType) (r@@19 T@Field_12521_12522) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_4682_8713 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_8713_4682 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_4682_4682 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4682_8713 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_8713_4682 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_12521_12522) (v_1@@23 T@FrameType) (q@@20 T@Field_21323_21324) (w@@23 T@FrameType) (r@@20 T@Field_21323_21324) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_4682_21323 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_4707_21323 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_4682_21323 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4682_21323 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_4707_21323 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_12521_12522) (v_1@@24 T@FrameType) (q@@21 T@Field_21323_21324) (w@@24 T@FrameType) (r@@21 T@Field_4579_12522) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_4682_21323 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_4707_8713 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_4682_8713 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4682_21323 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_4707_8713 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_12521_12522) (v_1@@25 T@FrameType) (q@@22 T@Field_21323_21324) (w@@25 T@FrameType) (r@@22 T@Field_12521_12522) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_4682_21323 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_4707_4682 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_4682_4682 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4682_21323 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_4707_4682 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_12521_12522) (v_1@@26 T@FrameType) (q@@23 T@Field_12521_12522) (w@@26 T@FrameType) (r@@23 T@Field_21323_21324) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_4682_4682 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4682_21323 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_4682_21323 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4682_4682 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4682_21323 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_12521_12522) (v_1@@27 T@FrameType) (q@@24 T@Field_12521_12522) (w@@27 T@FrameType) (r@@24 T@Field_4579_12522) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_4682_4682 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4682_8713 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_4682_8713 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4682_4682 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4682_8713 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_12521_12522) (v_1@@28 T@FrameType) (q@@25 T@Field_12521_12522) (w@@28 T@FrameType) (r@@25 T@Field_12521_12522) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_4682_4682 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4682_4682 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_4682_4682 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4682_4682 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4682_4682 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@61 () T@PolymorphicMapType_8653)
(declare-fun this@@25 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_8674)
(declare-fun Mask@1 () T@PolymorphicMapType_8674)
(declare-fun Mask@2 () T@PolymorphicMapType_8674)
(declare-fun Mask@0 () T@PolymorphicMapType_8674)
(set-info :boogie-vc-id |Nodeinv#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (= (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@61) this@@25 Noden) null) (=> (and (= Mask@3 Mask@1) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (not (= (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@61) this@@25 Noden) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_4579_4580 Mask@1 this@@25 Noden)) (=> (HasDirectPerm_4579_4580 Mask@1 this@@25 Noden) (=> (and (and (= Mask@2 (PolymorphicMapType_8674 (store (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| Mask@1) null (Nodeinv (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@61) this@@25 Noden)) (+ (select (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| Mask@1) null (Nodeinv (select (|PolymorphicMapType_8653_4452_4453#PolymorphicMapType_8653| Heap@@61) this@@25 Noden))) FullPerm)) (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| Mask@1) (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| Mask@1))) (state Heap@@61 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 2) 1))) anon2_correct))))))
(let ((anon0_correct  (=> (and (state Heap@@61 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_8653_4449_53#PolymorphicMapType_8653| Heap@@61) this@@25 $allocated)) (and (not (= this@@25 null)) (= Mask@0 (PolymorphicMapType_8674 (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| ZeroMask) (store (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| ZeroMask) this@@25 Nodev (+ (select (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| ZeroMask) this@@25 Nodev) FullPerm)) (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| ZeroMask) (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| ZeroMask))))) (and (and (state Heap@@61 Mask@0) (not (= this@@25 null))) (and (= Mask@1 (PolymorphicMapType_8674 (|PolymorphicMapType_8674_4682_4683#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4577_1189#PolymorphicMapType_8674| Mask@0) (store (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| Mask@0) this@@25 Noden (+ (select (|PolymorphicMapType_8674_4579_4580#PolymorphicMapType_8674| Mask@0) this@@25 Noden) FullPerm)) (|PolymorphicMapType_8674_4707_4708#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4682_1189#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4682_4580#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4682_53#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4682_42623#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4577_4683#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4577_53#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4577_43022#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4707_1189#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4707_4580#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4707_53#PolymorphicMapType_8674| Mask@0) (|PolymorphicMapType_8674_4707_43433#PolymorphicMapType_8674| Mask@0))) (state Heap@@61 Mask@1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_4579_4580 Mask@1 this@@25 Noden)) (=> (HasDirectPerm_4579_4580 Mask@1 this@@25 Noden) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
