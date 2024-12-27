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
(declare-sort T@Field_7629_53 0)
(declare-sort T@Field_7642_7643 0)
(declare-sort T@Field_10956_1189 0)
(declare-sort T@Field_11493_11494 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14310_14315 0)
(declare-sort T@Field_3937_3974 0)
(declare-sort T@Field_3937_14315 0)
(declare-sort T@Field_3973_3938 0)
(declare-sort T@Field_3973_1189 0)
(declare-sort T@Field_3973_53 0)
(declare-datatypes ((T@PolymorphicMapType_7590 0)) (((PolymorphicMapType_7590 (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| (Array T@Ref T@Field_11493_11494 Real)) (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| (Array T@Ref T@Field_7642_7643 Real)) (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| (Array T@Ref T@Field_10956_1189 Real)) (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| (Array T@Ref T@Field_3973_3938 Real)) (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| (Array T@Ref T@Field_3973_1189 Real)) (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| (Array T@Ref T@Field_3973_53 Real)) (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| (Array T@Ref T@Field_14310_14315 Real)) (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| (Array T@Ref T@Field_3937_3974 Real)) (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| (Array T@Ref T@Field_7629_53 Real)) (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| (Array T@Ref T@Field_3937_14315 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8118 0)) (((PolymorphicMapType_8118 (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| (Array T@Ref T@Field_7642_7643 Bool)) (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| (Array T@Ref T@Field_10956_1189 Bool)) (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| (Array T@Ref T@Field_7629_53 Bool)) (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| (Array T@Ref T@Field_3937_3974 Bool)) (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| (Array T@Ref T@Field_3937_14315 Bool)) (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| (Array T@Ref T@Field_3973_3938 Bool)) (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| (Array T@Ref T@Field_3973_1189 Bool)) (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| (Array T@Ref T@Field_3973_53 Bool)) (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| (Array T@Ref T@Field_11493_11494 Bool)) (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| (Array T@Ref T@Field_14310_14315 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7569 0)) (((PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| (Array T@Ref T@Field_7629_53 Bool)) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| (Array T@Ref T@Field_7642_7643 T@Ref)) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| (Array T@Ref T@Field_10956_1189 Int)) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| (Array T@Ref T@Field_11493_11494 T@FrameType)) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| (Array T@Ref T@Field_14310_14315 T@PolymorphicMapType_8118)) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| (Array T@Ref T@Field_3937_3974 T@FrameType)) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| (Array T@Ref T@Field_3937_14315 T@PolymorphicMapType_8118)) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| (Array T@Ref T@Field_3973_3938 T@Ref)) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| (Array T@Ref T@Field_3973_1189 Int)) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| (Array T@Ref T@Field_3973_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_7629_53)
(declare-fun value () T@Field_10956_1189)
(declare-fun next () T@Field_7642_7643)
(declare-fun f_7 () T@Field_10956_1189)
(declare-fun succHeap (T@PolymorphicMapType_7569 T@PolymorphicMapType_7569) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7569 T@PolymorphicMapType_7569) Bool)
(declare-fun state (T@PolymorphicMapType_7569 T@PolymorphicMapType_7590) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7590) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8118)
(declare-fun |itemat'| (T@PolymorphicMapType_7569 T@Ref Int) Int)
(declare-fun dummyFunction_1506 (Int) Bool)
(declare-fun |itemat#triggerStateless| (T@Ref Int) Int)
(declare-fun valid (T@Ref) T@Field_11493_11494)
(declare-fun IsPredicateField_3973_3974 (T@Field_11493_11494) Bool)
(declare-fun |valid#trigger_3973| (T@PolymorphicMapType_7569 T@Field_11493_11494) Bool)
(declare-fun |valid#everUsed_3973| (T@Field_11493_11494) Bool)
(declare-fun itemat (T@PolymorphicMapType_7569 T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun null () T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7569 T@PolymorphicMapType_7569 T@PolymorphicMapType_7590) Bool)
(declare-fun PredicateMaskField_3973 (T@Field_11493_11494) T@Field_14310_14315)
(declare-fun HasDirectPerm_3973_3974 (T@PolymorphicMapType_7590 T@Ref T@Field_11493_11494) Bool)
(declare-fun IsPredicateField_3937_26840 (T@Field_3937_3974) Bool)
(declare-fun PredicateMaskField_3937 (T@Field_3937_3974) T@Field_3937_14315)
(declare-fun HasDirectPerm_3937_3974 (T@PolymorphicMapType_7590 T@Ref T@Field_3937_3974) Bool)
(declare-fun IsWandField_3973_30510 (T@Field_11493_11494) Bool)
(declare-fun WandMaskField_3973 (T@Field_11493_11494) T@Field_14310_14315)
(declare-fun IsWandField_3937_30153 (T@Field_3937_3974) Bool)
(declare-fun WandMaskField_3937 (T@Field_3937_3974) T@Field_3937_14315)
(declare-fun |valid#sm| (T@Ref) T@Field_14310_14315)
(declare-fun dummyHeap () T@PolymorphicMapType_7569)
(declare-fun ZeroMask () T@PolymorphicMapType_7590)
(declare-fun InsidePredicate_7629_7629 (T@Field_3937_3974 T@FrameType T@Field_3937_3974 T@FrameType) Bool)
(declare-fun InsidePredicate_3973_3973 (T@Field_11493_11494 T@FrameType T@Field_11493_11494 T@FrameType) Bool)
(declare-fun IsPredicateField_3935_1189 (T@Field_10956_1189) Bool)
(declare-fun IsWandField_3935_1189 (T@Field_10956_1189) Bool)
(declare-fun IsPredicateField_3937_3938 (T@Field_7642_7643) Bool)
(declare-fun IsWandField_3937_3938 (T@Field_7642_7643) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3937_37413 (T@Field_3937_14315) Bool)
(declare-fun IsWandField_3937_37429 (T@Field_3937_14315) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3937_53 (T@Field_7629_53) Bool)
(declare-fun IsWandField_3937_53 (T@Field_7629_53) Bool)
(declare-fun IsPredicateField_3973_36610 (T@Field_14310_14315) Bool)
(declare-fun IsWandField_3973_36626 (T@Field_14310_14315) Bool)
(declare-fun IsPredicateField_3973_53 (T@Field_3973_53) Bool)
(declare-fun IsWandField_3973_53 (T@Field_3973_53) Bool)
(declare-fun IsPredicateField_3973_1189 (T@Field_3973_1189) Bool)
(declare-fun IsWandField_3973_1189 (T@Field_3973_1189) Bool)
(declare-fun IsPredicateField_3973_3938 (T@Field_3973_3938) Bool)
(declare-fun IsWandField_3973_3938 (T@Field_3973_3938) Bool)
(declare-fun HasDirectPerm_3973_26595 (T@PolymorphicMapType_7590 T@Ref T@Field_14310_14315) Bool)
(declare-fun HasDirectPerm_3973_53 (T@PolymorphicMapType_7590 T@Ref T@Field_3973_53) Bool)
(declare-fun HasDirectPerm_3973_1189 (T@PolymorphicMapType_7590 T@Ref T@Field_3973_1189) Bool)
(declare-fun HasDirectPerm_3973_3938 (T@PolymorphicMapType_7590 T@Ref T@Field_3973_3938) Bool)
(declare-fun HasDirectPerm_3937_25454 (T@PolymorphicMapType_7590 T@Ref T@Field_3937_14315) Bool)
(declare-fun HasDirectPerm_3937_53 (T@PolymorphicMapType_7590 T@Ref T@Field_7629_53) Bool)
(declare-fun HasDirectPerm_3935_1189 (T@PolymorphicMapType_7590 T@Ref T@Field_10956_1189) Bool)
(declare-fun HasDirectPerm_3937_3938 (T@PolymorphicMapType_7590 T@Ref T@Field_7642_7643) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7590 T@PolymorphicMapType_7590 T@PolymorphicMapType_7590) Bool)
(declare-fun |itemat#frame| (T@FrameType T@Ref Int) Int)
(declare-fun getPredWandId_3973_3974 (T@Field_11493_11494) Int)
(declare-fun InsidePredicate_7629_3973 (T@Field_3937_3974 T@FrameType T@Field_11493_11494 T@FrameType) Bool)
(declare-fun InsidePredicate_3973_7629 (T@Field_11493_11494 T@FrameType T@Field_3937_3974 T@FrameType) Bool)
(assert (distinct value f_7)
)
(assert (forall ((Heap0 T@PolymorphicMapType_7569) (Heap1 T@PolymorphicMapType_7569) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7569) (Mask T@PolymorphicMapType_7590) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7569) (Heap1@@0 T@PolymorphicMapType_7569) (Heap2 T@PolymorphicMapType_7569) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14310_14315) ) (!  (not (select (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11493_11494) ) (!  (not (select (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3973_53) ) (!  (not (select (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3973_1189) ) (!  (not (select (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3973_3938) ) (!  (not (select (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3937_14315) ) (!  (not (select (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3937_3974) ) (!  (not (select (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7629_53) ) (!  (not (select (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10956_1189) ) (!  (not (select (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7642_7643) ) (!  (not (select (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7569) (node T@Ref) (i Int) ) (! (dummyFunction_1506 (|itemat#triggerStateless| node i))
 :qid |stdinbpl.204:15|
 :skolemid |23|
 :pattern ( (|itemat'| Heap@@0 node i))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_3973_3974 (valid this))
 :qid |stdinbpl.347:15|
 :skolemid |28|
 :pattern ( (valid this))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7569) (this@@0 T@Ref) ) (! (|valid#everUsed_3973| (valid this@@0))
 :qid |stdinbpl.366:15|
 :skolemid |32|
 :pattern ( (|valid#trigger_3973| Heap@@1 (valid this@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7569) (Mask@@0 T@PolymorphicMapType_7590) (node@@0 T@Ref) (i@@0 Int) ) (!  (=> (and (state Heap@@2 Mask@@0) (< AssumeFunctionsAbove 0)) (=> (>= i@@0 0) (= (itemat Heap@@2 node@@0 i@@0) (ite  (or (= i@@0 0) (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@2) node@@0 next) null)) (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@2) node@@0 value) (|itemat'| Heap@@2 (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@2) node@@0 next) (- i@@0 1))))))
 :qid |stdinbpl.210:15|
 :skolemid |24|
 :pattern ( (state Heap@@2 Mask@@0) (itemat Heap@@2 node@@0 i@@0))
 :pattern ( (state Heap@@2 Mask@@0) (|itemat#triggerStateless| node@@0 i@@0) (|valid#trigger_3973| Heap@@2 (valid node@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7569) (ExhaleHeap T@PolymorphicMapType_7569) (Mask@@1 T@PolymorphicMapType_7590) (pm_f_13 T@Field_11493_11494) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_3973_3974 Mask@@1 null pm_f_13) (IsPredicateField_3973_3974 pm_f_13)) (= (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@3) null (PredicateMaskField_3973 pm_f_13)) (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap) null (PredicateMaskField_3973 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_3973_3974 pm_f_13) (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap) null (PredicateMaskField_3973 pm_f_13)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7569) (ExhaleHeap@@0 T@PolymorphicMapType_7569) (Mask@@2 T@PolymorphicMapType_7590) (pm_f_13@@0 T@Field_3937_3974) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3937_3974 Mask@@2 null pm_f_13@@0) (IsPredicateField_3937_26840 pm_f_13@@0)) (= (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@4) null (PredicateMaskField_3937 pm_f_13@@0)) (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@0) null (PredicateMaskField_3937 pm_f_13@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsPredicateField_3937_26840 pm_f_13@@0) (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@0) null (PredicateMaskField_3937 pm_f_13@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7569) (ExhaleHeap@@1 T@PolymorphicMapType_7569) (Mask@@3 T@PolymorphicMapType_7590) (pm_f_13@@1 T@Field_11493_11494) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_3973_3974 Mask@@3 null pm_f_13@@1) (IsWandField_3973_30510 pm_f_13@@1)) (= (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@5) null (WandMaskField_3973 pm_f_13@@1)) (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@1) null (WandMaskField_3973 pm_f_13@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsWandField_3973_30510 pm_f_13@@1) (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@1) null (WandMaskField_3973 pm_f_13@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7569) (ExhaleHeap@@2 T@PolymorphicMapType_7569) (Mask@@4 T@PolymorphicMapType_7590) (pm_f_13@@2 T@Field_3937_3974) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3937_3974 Mask@@4 null pm_f_13@@2) (IsWandField_3937_30153 pm_f_13@@2)) (= (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@6) null (WandMaskField_3937 pm_f_13@@2)) (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@2) null (WandMaskField_3937 pm_f_13@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_3937_30153 pm_f_13@@2) (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@2) null (WandMaskField_3937 pm_f_13@@2)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid this@@1) (valid this2)) (= this@@1 this2))
 :qid |stdinbpl.357:15|
 :skolemid |30|
 :pattern ( (valid this@@1) (valid this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid#sm| this@@2) (|valid#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.361:15|
 :skolemid |31|
 :pattern ( (|valid#sm| this@@2) (|valid#sm| this2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7569) (ExhaleHeap@@3 T@PolymorphicMapType_7569) (Mask@@5 T@PolymorphicMapType_7590) (pm_f_13@@3 T@Field_11493_11494) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_3973_3974 Mask@@5 null pm_f_13@@3) (IsPredicateField_3973_3974 pm_f_13@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_7642_7643) ) (!  (=> (select (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@7) null (PredicateMaskField_3973 pm_f_13@@3))) o2_13 f_30) (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@7) o2_13 f_30) (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_10956_1189) ) (!  (=> (select (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@7) null (PredicateMaskField_3973 pm_f_13@@3))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@7) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_7629_53) ) (!  (=> (select (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@7) null (PredicateMaskField_3973 pm_f_13@@3))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@7) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_3937_3974) ) (!  (=> (select (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@7) null (PredicateMaskField_3973 pm_f_13@@3))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@7) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_3937_14315) ) (!  (=> (select (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@7) null (PredicateMaskField_3973 pm_f_13@@3))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@7) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_3973_3938) ) (!  (=> (select (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@7) null (PredicateMaskField_3973 pm_f_13@@3))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@7) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_3973_1189) ) (!  (=> (select (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@7) null (PredicateMaskField_3973 pm_f_13@@3))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@7) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_3973_53) ) (!  (=> (select (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@7) null (PredicateMaskField_3973 pm_f_13@@3))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@7) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_11493_11494) ) (!  (=> (select (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@7) null (PredicateMaskField_3973 pm_f_13@@3))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@7) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_14310_14315) ) (!  (=> (select (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@7) null (PredicateMaskField_3973 pm_f_13@@3))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@7) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@3) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (IsPredicateField_3973_3974 pm_f_13@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7569) (ExhaleHeap@@4 T@PolymorphicMapType_7569) (Mask@@6 T@PolymorphicMapType_7590) (pm_f_13@@4 T@Field_3937_3974) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_3937_3974 Mask@@6 null pm_f_13@@4) (IsPredicateField_3937_26840 pm_f_13@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_7642_7643) ) (!  (=> (select (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@8) null (PredicateMaskField_3937 pm_f_13@@4))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@8) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@9 f_30@@9))
)) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_10956_1189) ) (!  (=> (select (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@8) null (PredicateMaskField_3937 pm_f_13@@4))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@8) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@10 f_30@@10))
))) (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_7629_53) ) (!  (=> (select (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@8) null (PredicateMaskField_3937 pm_f_13@@4))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@8) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@11 f_30@@11))
))) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_3937_3974) ) (!  (=> (select (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@8) null (PredicateMaskField_3937 pm_f_13@@4))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@8) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_3937_14315) ) (!  (=> (select (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@8) null (PredicateMaskField_3937 pm_f_13@@4))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@8) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_3973_3938) ) (!  (=> (select (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@8) null (PredicateMaskField_3937 pm_f_13@@4))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@8) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@14 f_30@@14))
))) (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_3973_1189) ) (!  (=> (select (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@8) null (PredicateMaskField_3937 pm_f_13@@4))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@8) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@15 f_30@@15))
))) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_3973_53) ) (!  (=> (select (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@8) null (PredicateMaskField_3937 pm_f_13@@4))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@8) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@16 f_30@@16))
))) (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_11493_11494) ) (!  (=> (select (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@8) null (PredicateMaskField_3937 pm_f_13@@4))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@8) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@17 f_30@@17))
))) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_14310_14315) ) (!  (=> (select (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@8) null (PredicateMaskField_3937 pm_f_13@@4))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@8) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@4) o2_13@@18 f_30@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (IsPredicateField_3937_26840 pm_f_13@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7569) (ExhaleHeap@@5 T@PolymorphicMapType_7569) (Mask@@7 T@PolymorphicMapType_7590) (pm_f_13@@5 T@Field_11493_11494) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_3973_3974 Mask@@7 null pm_f_13@@5) (IsWandField_3973_30510 pm_f_13@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_7642_7643) ) (!  (=> (select (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@9) null (WandMaskField_3973 pm_f_13@@5))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@9) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@19 f_30@@19))
)) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_10956_1189) ) (!  (=> (select (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@9) null (WandMaskField_3973 pm_f_13@@5))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@9) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_7629_53) ) (!  (=> (select (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@9) null (WandMaskField_3973 pm_f_13@@5))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@9) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_3937_3974) ) (!  (=> (select (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@9) null (WandMaskField_3973 pm_f_13@@5))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@9) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@22 f_30@@22))
))) (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_3937_14315) ) (!  (=> (select (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@9) null (WandMaskField_3973 pm_f_13@@5))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@9) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@23 f_30@@23))
))) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_3973_3938) ) (!  (=> (select (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@9) null (WandMaskField_3973 pm_f_13@@5))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@9) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_3973_1189) ) (!  (=> (select (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@9) null (WandMaskField_3973 pm_f_13@@5))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@9) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_3973_53) ) (!  (=> (select (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@9) null (WandMaskField_3973 pm_f_13@@5))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@9) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_11493_11494) ) (!  (=> (select (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@9) null (WandMaskField_3973 pm_f_13@@5))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@9) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_14310_14315) ) (!  (=> (select (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@9) null (WandMaskField_3973 pm_f_13@@5))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@9) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@5) o2_13@@28 f_30@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (IsWandField_3973_30510 pm_f_13@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7569) (ExhaleHeap@@6 T@PolymorphicMapType_7569) (Mask@@8 T@PolymorphicMapType_7590) (pm_f_13@@6 T@Field_3937_3974) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_3937_3974 Mask@@8 null pm_f_13@@6) (IsWandField_3937_30153 pm_f_13@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_7642_7643) ) (!  (=> (select (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@10) null (WandMaskField_3937 pm_f_13@@6))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@10) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@29 f_30@@29))
)) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_10956_1189) ) (!  (=> (select (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@10) null (WandMaskField_3937 pm_f_13@@6))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@10) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@30 f_30@@30))
))) (forall ((o2_13@@31 T@Ref) (f_30@@31 T@Field_7629_53) ) (!  (=> (select (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@10) null (WandMaskField_3937 pm_f_13@@6))) o2_13@@31 f_30@@31) (= (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@10) o2_13@@31 f_30@@31) (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@31 f_30@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@31 f_30@@31))
))) (forall ((o2_13@@32 T@Ref) (f_30@@32 T@Field_3937_3974) ) (!  (=> (select (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@10) null (WandMaskField_3937 pm_f_13@@6))) o2_13@@32 f_30@@32) (= (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@10) o2_13@@32 f_30@@32) (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@32 f_30@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@32 f_30@@32))
))) (forall ((o2_13@@33 T@Ref) (f_30@@33 T@Field_3937_14315) ) (!  (=> (select (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@10) null (WandMaskField_3937 pm_f_13@@6))) o2_13@@33 f_30@@33) (= (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@10) o2_13@@33 f_30@@33) (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@33 f_30@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@33 f_30@@33))
))) (forall ((o2_13@@34 T@Ref) (f_30@@34 T@Field_3973_3938) ) (!  (=> (select (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@10) null (WandMaskField_3937 pm_f_13@@6))) o2_13@@34 f_30@@34) (= (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@10) o2_13@@34 f_30@@34) (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@34 f_30@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@34 f_30@@34))
))) (forall ((o2_13@@35 T@Ref) (f_30@@35 T@Field_3973_1189) ) (!  (=> (select (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@10) null (WandMaskField_3937 pm_f_13@@6))) o2_13@@35 f_30@@35) (= (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@10) o2_13@@35 f_30@@35) (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@35 f_30@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@35 f_30@@35))
))) (forall ((o2_13@@36 T@Ref) (f_30@@36 T@Field_3973_53) ) (!  (=> (select (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@10) null (WandMaskField_3937 pm_f_13@@6))) o2_13@@36 f_30@@36) (= (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@10) o2_13@@36 f_30@@36) (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@36 f_30@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@36 f_30@@36))
))) (forall ((o2_13@@37 T@Ref) (f_30@@37 T@Field_11493_11494) ) (!  (=> (select (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@10) null (WandMaskField_3937 pm_f_13@@6))) o2_13@@37 f_30@@37) (= (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@10) o2_13@@37 f_30@@37) (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@37 f_30@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@37 f_30@@37))
))) (forall ((o2_13@@38 T@Ref) (f_30@@38 T@Field_14310_14315) ) (!  (=> (select (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@10) null (WandMaskField_3937 pm_f_13@@6))) o2_13@@38 f_30@@38) (= (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@10) o2_13@@38 f_30@@38) (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@38 f_30@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@6) o2_13@@38 f_30@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (IsWandField_3937_30153 pm_f_13@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7569) (ExhaleHeap@@7 T@PolymorphicMapType_7569) (Mask@@9 T@PolymorphicMapType_7590) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@11) o_22 $allocated) (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@7) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@7) o_22 $allocated))
)))
(assert (forall ((p T@Field_3937_3974) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7629_7629 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7629_7629 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_11493_11494) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3973_3973 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3973_3973 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3935_1189 value)))
(assert  (not (IsWandField_3935_1189 value)))
(assert  (not (IsPredicateField_3937_3938 next)))
(assert  (not (IsWandField_3937_3938 next)))
(assert  (not (IsPredicateField_3935_1189 f_7)))
(assert  (not (IsWandField_3935_1189 f_7)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7569) (ExhaleHeap@@8 T@PolymorphicMapType_7569) (Mask@@10 T@PolymorphicMapType_7590) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7590) (o_2@@9 T@Ref) (f_4@@9 T@Field_3937_14315) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3937_37413 f_4@@9))) (not (IsWandField_3937_37429 f_4@@9))) (<= (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7590) (o_2@@10 T@Ref) (f_4@@10 T@Field_7629_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3937_53 f_4@@10))) (not (IsWandField_3937_53 f_4@@10))) (<= (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7590) (o_2@@11 T@Ref) (f_4@@11 T@Field_10956_1189) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3935_1189 f_4@@11))) (not (IsWandField_3935_1189 f_4@@11))) (<= (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7590) (o_2@@12 T@Ref) (f_4@@12 T@Field_7642_7643) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3937_3938 f_4@@12))) (not (IsWandField_3937_3938 f_4@@12))) (<= (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7590) (o_2@@13 T@Ref) (f_4@@13 T@Field_3937_3974) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3937_26840 f_4@@13))) (not (IsWandField_3937_30153 f_4@@13))) (<= (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7590) (o_2@@14 T@Ref) (f_4@@14 T@Field_14310_14315) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3973_36610 f_4@@14))) (not (IsWandField_3973_36626 f_4@@14))) (<= (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7590) (o_2@@15 T@Ref) (f_4@@15 T@Field_3973_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3973_53 f_4@@15))) (not (IsWandField_3973_53 f_4@@15))) (<= (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7590) (o_2@@16 T@Ref) (f_4@@16 T@Field_3973_1189) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3973_1189 f_4@@16))) (not (IsWandField_3973_1189 f_4@@16))) (<= (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7590) (o_2@@17 T@Ref) (f_4@@17 T@Field_3973_3938) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3973_3938 f_4@@17))) (not (IsWandField_3973_3938 f_4@@17))) (<= (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7590) (o_2@@18 T@Ref) (f_4@@18 T@Field_11493_11494) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3973_3974 f_4@@18))) (not (IsWandField_3973_30510 f_4@@18))) (<= (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7590) (o_2@@19 T@Ref) (f_4@@19 T@Field_14310_14315) ) (! (= (HasDirectPerm_3973_26595 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3973_26595 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7590) (o_2@@20 T@Ref) (f_4@@20 T@Field_3973_53) ) (! (= (HasDirectPerm_3973_53 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3973_53 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7590) (o_2@@21 T@Ref) (f_4@@21 T@Field_11493_11494) ) (! (= (HasDirectPerm_3973_3974 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3973_3974 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7590) (o_2@@22 T@Ref) (f_4@@22 T@Field_3973_1189) ) (! (= (HasDirectPerm_3973_1189 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3973_1189 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7590) (o_2@@23 T@Ref) (f_4@@23 T@Field_3973_3938) ) (! (= (HasDirectPerm_3973_3938 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3973_3938 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7590) (o_2@@24 T@Ref) (f_4@@24 T@Field_3937_14315) ) (! (= (HasDirectPerm_3937_25454 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3937_25454 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7590) (o_2@@25 T@Ref) (f_4@@25 T@Field_7629_53) ) (! (= (HasDirectPerm_3937_53 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3937_53 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7590) (o_2@@26 T@Ref) (f_4@@26 T@Field_3937_3974) ) (! (= (HasDirectPerm_3937_3974 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3937_3974 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7590) (o_2@@27 T@Ref) (f_4@@27 T@Field_10956_1189) ) (! (= (HasDirectPerm_3935_1189 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3935_1189 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_7590) (o_2@@28 T@Ref) (f_4@@28 T@Field_7642_7643) ) (! (= (HasDirectPerm_3937_3938 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3937_3938 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7569) (ExhaleHeap@@9 T@PolymorphicMapType_7569) (Mask@@31 T@PolymorphicMapType_7590) (o_22@@0 T@Ref) (f_30@@39 T@Field_14310_14315) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_3973_26595 Mask@@31 o_22@@0 f_30@@39) (= (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@13) o_22@@0 f_30@@39) (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@9) o_22@@0 f_30@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| ExhaleHeap@@9) o_22@@0 f_30@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7569) (ExhaleHeap@@10 T@PolymorphicMapType_7569) (Mask@@32 T@PolymorphicMapType_7590) (o_22@@1 T@Ref) (f_30@@40 T@Field_3973_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_3973_53 Mask@@32 o_22@@1 f_30@@40) (= (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@14) o_22@@1 f_30@@40) (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| ExhaleHeap@@10) o_22@@1 f_30@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| ExhaleHeap@@10) o_22@@1 f_30@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7569) (ExhaleHeap@@11 T@PolymorphicMapType_7569) (Mask@@33 T@PolymorphicMapType_7590) (o_22@@2 T@Ref) (f_30@@41 T@Field_11493_11494) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_3973_3974 Mask@@33 o_22@@2 f_30@@41) (= (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@15) o_22@@2 f_30@@41) (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| ExhaleHeap@@11) o_22@@2 f_30@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| ExhaleHeap@@11) o_22@@2 f_30@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7569) (ExhaleHeap@@12 T@PolymorphicMapType_7569) (Mask@@34 T@PolymorphicMapType_7590) (o_22@@3 T@Ref) (f_30@@42 T@Field_3973_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_3973_1189 Mask@@34 o_22@@3 f_30@@42) (= (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@16) o_22@@3 f_30@@42) (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| ExhaleHeap@@12) o_22@@3 f_30@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| ExhaleHeap@@12) o_22@@3 f_30@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7569) (ExhaleHeap@@13 T@PolymorphicMapType_7569) (Mask@@35 T@PolymorphicMapType_7590) (o_22@@4 T@Ref) (f_30@@43 T@Field_3973_3938) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_3973_3938 Mask@@35 o_22@@4 f_30@@43) (= (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@17) o_22@@4 f_30@@43) (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| ExhaleHeap@@13) o_22@@4 f_30@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| ExhaleHeap@@13) o_22@@4 f_30@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7569) (ExhaleHeap@@14 T@PolymorphicMapType_7569) (Mask@@36 T@PolymorphicMapType_7590) (o_22@@5 T@Ref) (f_30@@44 T@Field_3937_14315) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_3937_25454 Mask@@36 o_22@@5 f_30@@44) (= (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@18) o_22@@5 f_30@@44) (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@14) o_22@@5 f_30@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| ExhaleHeap@@14) o_22@@5 f_30@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7569) (ExhaleHeap@@15 T@PolymorphicMapType_7569) (Mask@@37 T@PolymorphicMapType_7590) (o_22@@6 T@Ref) (f_30@@45 T@Field_7629_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_3937_53 Mask@@37 o_22@@6 f_30@@45) (= (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@19) o_22@@6 f_30@@45) (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@15) o_22@@6 f_30@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| ExhaleHeap@@15) o_22@@6 f_30@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7569) (ExhaleHeap@@16 T@PolymorphicMapType_7569) (Mask@@38 T@PolymorphicMapType_7590) (o_22@@7 T@Ref) (f_30@@46 T@Field_3937_3974) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_3937_3974 Mask@@38 o_22@@7 f_30@@46) (= (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@20) o_22@@7 f_30@@46) (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| ExhaleHeap@@16) o_22@@7 f_30@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| ExhaleHeap@@16) o_22@@7 f_30@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7569) (ExhaleHeap@@17 T@PolymorphicMapType_7569) (Mask@@39 T@PolymorphicMapType_7590) (o_22@@8 T@Ref) (f_30@@47 T@Field_10956_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_3935_1189 Mask@@39 o_22@@8 f_30@@47) (= (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@21) o_22@@8 f_30@@47) (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| ExhaleHeap@@17) o_22@@8 f_30@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| ExhaleHeap@@17) o_22@@8 f_30@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7569) (ExhaleHeap@@18 T@PolymorphicMapType_7569) (Mask@@40 T@PolymorphicMapType_7590) (o_22@@9 T@Ref) (f_30@@48 T@Field_7642_7643) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_3937_3938 Mask@@40 o_22@@9 f_30@@48) (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@22) o_22@@9 f_30@@48) (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| ExhaleHeap@@18) o_22@@9 f_30@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| ExhaleHeap@@18) o_22@@9 f_30@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3937_14315) ) (! (= (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_7629_53) ) (! (= (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_10956_1189) ) (! (= (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_7642_7643) ) (! (= (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_3937_3974) ) (! (= (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_14310_14315) ) (! (= (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_3973_53) ) (! (= (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_3973_1189) ) (! (= (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_3973_3938) ) (! (= (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_11493_11494) ) (! (= (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7569) (node@@1 T@Ref) (i@@1 Int) ) (!  (and (= (itemat Heap@@23 node@@1 i@@1) (|itemat'| Heap@@23 node@@1 i@@1)) (dummyFunction_1506 (|itemat#triggerStateless| node@@1 i@@1)))
 :qid |stdinbpl.200:15|
 :skolemid |22|
 :pattern ( (itemat Heap@@23 node@@1 i@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7590) (SummandMask1 T@PolymorphicMapType_7590) (SummandMask2 T@PolymorphicMapType_7590) (o_2@@39 T@Ref) (f_4@@39 T@Field_3937_14315) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7590) (SummandMask1@@0 T@PolymorphicMapType_7590) (SummandMask2@@0 T@PolymorphicMapType_7590) (o_2@@40 T@Ref) (f_4@@40 T@Field_7629_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7590) (SummandMask1@@1 T@PolymorphicMapType_7590) (SummandMask2@@1 T@PolymorphicMapType_7590) (o_2@@41 T@Ref) (f_4@@41 T@Field_10956_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7590) (SummandMask1@@2 T@PolymorphicMapType_7590) (SummandMask2@@2 T@PolymorphicMapType_7590) (o_2@@42 T@Ref) (f_4@@42 T@Field_7642_7643) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7590) (SummandMask1@@3 T@PolymorphicMapType_7590) (SummandMask2@@3 T@PolymorphicMapType_7590) (o_2@@43 T@Ref) (f_4@@43 T@Field_3937_3974) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7590) (SummandMask1@@4 T@PolymorphicMapType_7590) (SummandMask2@@4 T@PolymorphicMapType_7590) (o_2@@44 T@Ref) (f_4@@44 T@Field_14310_14315) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7590) (SummandMask1@@5 T@PolymorphicMapType_7590) (SummandMask2@@5 T@PolymorphicMapType_7590) (o_2@@45 T@Ref) (f_4@@45 T@Field_3973_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7590) (SummandMask1@@6 T@PolymorphicMapType_7590) (SummandMask2@@6 T@PolymorphicMapType_7590) (o_2@@46 T@Ref) (f_4@@46 T@Field_3973_1189) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_7590) (SummandMask1@@7 T@PolymorphicMapType_7590) (SummandMask2@@7 T@PolymorphicMapType_7590) (o_2@@47 T@Ref) (f_4@@47 T@Field_3973_3938) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_7590) (SummandMask1@@8 T@PolymorphicMapType_7590) (SummandMask2@@8 T@PolymorphicMapType_7590) (o_2@@48 T@Ref) (f_4@@48 T@Field_11493_11494) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7569) (Mask@@41 T@PolymorphicMapType_7590) (node@@2 T@Ref) (i@@2 Int) ) (!  (=> (state Heap@@24 Mask@@41) (= (|itemat'| Heap@@24 node@@2 i@@2) (|itemat#frame| (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@24) null (valid node@@2)) node@@2 i@@2)))
 :qid |stdinbpl.217:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@41) (|itemat'| Heap@@24 node@@2 i@@2))
 :pattern ( (state Heap@@24 Mask@@41) (|itemat#triggerStateless| node@@2 i@@2) (|valid#trigger_3973| Heap@@24 (valid node@@2)))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_3973_3974 (valid this@@3)) 0)
 :qid |stdinbpl.351:15|
 :skolemid |29|
 :pattern ( (valid this@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7569) (o_35 T@Ref) (f_11 T@Field_14310_14315) (v T@PolymorphicMapType_8118) ) (! (succHeap Heap@@25 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@25) (store (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@25) o_35 f_11 v) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@25) (store (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@25) o_35 f_11 v) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@25) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7569) (o_35@@0 T@Ref) (f_11@@0 T@Field_11493_11494) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@26) (store (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@26) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@26) (store (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@26) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@26) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7569) (o_35@@1 T@Ref) (f_11@@1 T@Field_3973_1189) (v@@1 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@27) (store (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@27) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@27) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@27) (store (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@27) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7569) (o_35@@2 T@Ref) (f_11@@2 T@Field_3973_3938) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@28) (store (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@28) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@28) (store (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@28) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@28) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7569) (o_35@@3 T@Ref) (f_11@@3 T@Field_3973_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@29) (store (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@29) o_35@@3 f_11@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@29) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@29) (store (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@29) o_35@@3 f_11@@3 v@@3)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7569) (o_35@@4 T@Ref) (f_11@@4 T@Field_3937_14315) (v@@4 T@PolymorphicMapType_8118) ) (! (succHeap Heap@@30 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@30) (store (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@30) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@30) (store (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@30) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@30) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7569) (o_35@@5 T@Ref) (f_11@@5 T@Field_3937_3974) (v@@5 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@31) (store (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@31) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@31) (store (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@31) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@31) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7569) (o_35@@6 T@Ref) (f_11@@6 T@Field_10956_1189) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@32) (store (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@32) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@32) (store (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@32) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@32) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7569) (o_35@@7 T@Ref) (f_11@@7 T@Field_7642_7643) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@33) (store (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@33) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@33) (store (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@33) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@33) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7569) (o_35@@8 T@Ref) (f_11@@8 T@Field_7629_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_7569 (store (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@34) o_35@@8 f_11@@8 v@@8) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7569 (store (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@34) o_35@@8 f_11@@8 v@@8) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@34) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@34)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_3973 (valid this@@4)) (|valid#sm| this@@4))
 :qid |stdinbpl.343:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_3973 (valid this@@4)))
)))
(assert (forall ((o_35@@9 T@Ref) (f_31 T@Field_7642_7643) (Heap@@35 T@PolymorphicMapType_7569) ) (!  (=> (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@35) o_35@@9 $allocated) (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@35) (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@35) o_35@@9 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@35) o_35@@9 f_31))
)))
(assert (forall ((p@@2 T@Field_3937_3974) (v_1@@1 T@FrameType) (q T@Field_3937_3974) (w@@1 T@FrameType) (r T@Field_3937_3974) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7629_7629 p@@2 v_1@@1 q w@@1) (InsidePredicate_7629_7629 q w@@1 r u)) (InsidePredicate_7629_7629 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7629_7629 p@@2 v_1@@1 q w@@1) (InsidePredicate_7629_7629 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_3937_3974) (v_1@@2 T@FrameType) (q@@0 T@Field_3937_3974) (w@@2 T@FrameType) (r@@0 T@Field_11493_11494) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_7629_7629 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7629_3973 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_7629_3973 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7629_7629 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7629_3973 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_3937_3974) (v_1@@3 T@FrameType) (q@@1 T@Field_11493_11494) (w@@3 T@FrameType) (r@@1 T@Field_3937_3974) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_7629_3973 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3973_7629 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_7629_7629 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7629_3973 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3973_7629 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_3937_3974) (v_1@@4 T@FrameType) (q@@2 T@Field_11493_11494) (w@@4 T@FrameType) (r@@2 T@Field_11493_11494) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_7629_3973 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3973_3973 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_7629_3973 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7629_3973 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3973_3973 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_11493_11494) (v_1@@5 T@FrameType) (q@@3 T@Field_3937_3974) (w@@5 T@FrameType) (r@@3 T@Field_3937_3974) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3973_7629 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7629_7629 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3973_7629 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3973_7629 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7629_7629 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_11493_11494) (v_1@@6 T@FrameType) (q@@4 T@Field_3937_3974) (w@@6 T@FrameType) (r@@4 T@Field_11493_11494) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3973_7629 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7629_3973 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3973_3973 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3973_7629 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7629_3973 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_11493_11494) (v_1@@7 T@FrameType) (q@@5 T@Field_11493_11494) (w@@7 T@FrameType) (r@@5 T@Field_3937_3974) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3973_3973 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3973_7629 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3973_7629 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3973_3973 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3973_7629 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_11493_11494) (v_1@@8 T@FrameType) (q@@6 T@Field_11493_11494) (w@@8 T@FrameType) (r@@6 T@Field_11493_11494) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3973_3973 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3973_3973 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3973_3973 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3973_3973 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3973_3973 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_7569)
(declare-fun node@@3 () T@Ref)
(declare-fun Heap@3 () T@PolymorphicMapType_7569)
(declare-fun newPMask@0 () T@PolymorphicMapType_8118)
(declare-fun Heap@2 () T@PolymorphicMapType_7569)
(declare-fun Heap@0 () T@PolymorphicMapType_7569)
(declare-fun Heap@@36 () T@PolymorphicMapType_7569)
(declare-fun |itemat#trigger| (T@FrameType T@Ref Int) Bool)
(declare-fun i@@3 () Int)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_7590)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_7590)
(declare-fun wildcard@3 () Real)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_7590)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_7590)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3938 (T@Ref) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun FrameFragment_3974 (T@FrameType) T@FrameType)
(declare-fun wildcard@1 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_7590)
(declare-fun wildcard@2 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |itemat#definedness|)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon11_correct true))
(let ((anon16_Else_correct  (=> (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 6) 4)) anon11_correct))))
(let ((anon16_Then_correct  (=> (not (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_7642_7643) ) (!  (=> (or (select (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| node@@3))) o_15 f_20) (select (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next)))) o_15 f_20)) (select (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| newPMask@0) o_15 f_20))
 :qid |stdinbpl.324:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_10956_1189) ) (!  (=> (or (select (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| node@@3))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.324:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_7629_53) ) (!  (=> (or (select (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| node@@3))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.324:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_3937_3974) ) (!  (=> (or (select (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| node@@3))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.324:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_3937_14315) ) (!  (=> (or (select (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| node@@3))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.324:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_3973_3938) ) (!  (=> (or (select (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| node@@3))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.324:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_3973_1189) ) (!  (=> (or (select (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| node@@3))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.324:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_3973_53) ) (!  (=> (or (select (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| node@@3))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.324:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_11493_11494) ) (!  (=> (or (select (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| node@@3))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.324:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_14310_14315) ) (!  (=> (or (select (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| node@@3))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) node@@3 next)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.324:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| newPMask@0) o_15@@8 f_20@@8))
))) (= Heap@2 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@1) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@1) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@1) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@1) (store (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@1) null (|valid#sm| node@@3) newPMask@0) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@1) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@1) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@1) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@1) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 5) 4))) anon11_correct))))
(let ((anon9_correct  (=> (and (= Heap@0 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@36) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@36) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@36) (store (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@36) null (|valid#sm| node@@3) (PolymorphicMapType_8118 (store (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@36) null (|valid#sm| node@@3))) node@@3 next true) (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@36) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@36) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@36) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@36) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@36) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@36) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@36) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@36) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@@36) null (|valid#sm| node@@3))))) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@@36) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@@36) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@@36) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@@36) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@@36))) (= Heap@1 (PolymorphicMapType_7569 (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@0) (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@0) (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@0) (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@0) (store (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@0) null (|valid#sm| node@@3) (PolymorphicMapType_8118 (|PolymorphicMapType_8118_3937_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@0) null (|valid#sm| node@@3))) (store (|PolymorphicMapType_8118_3935_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@0) null (|valid#sm| node@@3))) node@@3 value true) (|PolymorphicMapType_8118_3937_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@0) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_3937_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@0) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_3937_28297#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@0) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_11493_3938#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@0) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_11493_1189#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@0) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_11493_53#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@0) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_11493_11494#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@0) null (|valid#sm| node@@3))) (|PolymorphicMapType_8118_11493_29345#PolymorphicMapType_8118| (select (|PolymorphicMapType_7569_3977_14402#PolymorphicMapType_7569| Heap@0) null (|valid#sm| node@@3))))) (|PolymorphicMapType_7569_3937_3974#PolymorphicMapType_7569| Heap@0) (|PolymorphicMapType_7569_3937_25496#PolymorphicMapType_7569| Heap@0) (|PolymorphicMapType_7569_3973_3938#PolymorphicMapType_7569| Heap@0) (|PolymorphicMapType_7569_3973_1189#PolymorphicMapType_7569| Heap@0) (|PolymorphicMapType_7569_3973_53#PolymorphicMapType_7569| Heap@0)))) (and (=> (= (ControlFlow 0 7) 5) anon16_Then_correct) (=> (= (ControlFlow 0 7) 6) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (|itemat#trigger| (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@36) null (valid (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next))) (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next) (- i@@3 1)) (= (ControlFlow 0 10) 7)) anon9_correct)))
(let ((anon14_Then_correct  (=> (or (= i@@3 0) (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next) null)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_3935_1189 UnfoldingMask@3 node@@3 value)) (=> (HasDirectPerm_3935_1189 UnfoldingMask@3 node@@3 value) (=> (= (ControlFlow 0 8) 7) anon9_correct))))))
(let ((anon15_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| UnfoldingMask@3) null (valid (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next)))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| UnfoldingMask@3) null (valid (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next))))) (=> (= (ControlFlow 0 2) (- 0 1)) (>= (- i@@3 1) 0))))))
(let ((anon14_Else_correct  (=> (not (or (= i@@3 0) (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next) null))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_3937_3938 UnfoldingMask@3 node@@3 next)) (=> (HasDirectPerm_3937_3938 UnfoldingMask@3 node@@3 next) (and (=> (= (ControlFlow 0 11) 2) anon15_Then_correct) (=> (= (ControlFlow 0 11) 10) anon15_Else_correct)))))))
(let ((anon13_Else_correct  (=> (= i@@3 0) (and (=> (= (ControlFlow 0 15) 8) anon14_Then_correct) (=> (= (ControlFlow 0 15) 11) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (not (= i@@3 0)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_3937_3938 UnfoldingMask@3 node@@3 next)) (=> (HasDirectPerm_3937_3938 UnfoldingMask@3 node@@3 next) (and (=> (= (ControlFlow 0 13) 8) anon14_Then_correct) (=> (= (ControlFlow 0 13) 11) anon14_Else_correct)))))))
(let ((anon2_correct  (=> (state Heap@@36 UnfoldingMask@3) (and (=> (= (ControlFlow 0 16) 13) anon13_Then_correct) (=> (= (ControlFlow 0 16) 15) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 18) 16)) anon2_correct))))
(let ((anon12_Then_correct  (=> (not (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next) null)) (=> (and (> wildcard@3 NoPerm) (= UnfoldingMask@2 (PolymorphicMapType_7590 (store (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| UnfoldingMask@1) null (valid (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next)) (+ (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| UnfoldingMask@1) null (valid (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next))) wildcard@3)) (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| UnfoldingMask@1) (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| UnfoldingMask@1) (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| UnfoldingMask@1) (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| UnfoldingMask@1) (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| UnfoldingMask@1) (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| UnfoldingMask@1) (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| UnfoldingMask@1) (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| UnfoldingMask@1) (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_3973_3973 (valid node@@3) (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@36) null (valid node@@3)) (valid (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next)) (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@36) null (valid (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next)))) (state Heap@@36 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 17) 16))) anon2_correct)))))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (not AssumePermUpperBound) (select (|PolymorphicMapType_7569_3807_53#PolymorphicMapType_7569| Heap@@36) node@@3 $allocated)) (=> (and (and (and (= AssumeFunctionsAbove 0) (> wildcard@0 NoPerm)) (and (= Mask@0 (PolymorphicMapType_7590 (store (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| ZeroMask) null (valid node@@3) (+ (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| ZeroMask) null (valid node@@3)) wildcard@0)) (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| ZeroMask) (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| ZeroMask) (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| ZeroMask) (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| ZeroMask) (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| ZeroMask) (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| ZeroMask) (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| ZeroMask) (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| ZeroMask) (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| ZeroMask))) (state Heap@@36 Mask@0))) (and (and (>= i@@3 0) (state Heap@@36 Mask@0)) (and (|valid#trigger_3973| Heap@@36 (valid node@@3)) (= (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@36) null (valid node@@3)) (CombineFrames (FrameFragment_3938 (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_7569_3935_1189#PolymorphicMapType_7569| Heap@@36) node@@3 value)) (FrameFragment_3974 (ite (not (= (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next) null)) (select (|PolymorphicMapType_7569_3973_3974#PolymorphicMapType_7569| Heap@@36) null (valid (select (|PolymorphicMapType_7569_3810_3811#PolymorphicMapType_7569| Heap@@36) node@@3 next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| Mask@0) null (valid node@@3))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| Mask@0) null (valid node@@3)))) (=> (and (and (and (> wildcard@1 NoPerm) (not (= node@@3 null))) (and (= UnfoldingMask@0 (PolymorphicMapType_7590 (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| Mask@0) (store (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| Mask@0) node@@3 next (+ (select (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| Mask@0) node@@3 next) wildcard@1)) (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| Mask@0) (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| Mask@0) (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| Mask@0) (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| Mask@0) (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| Mask@0) (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| Mask@0) (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| Mask@0) (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| Mask@0))) (state Heap@@36 UnfoldingMask@0))) (and (and (> wildcard@2 NoPerm) (not (= node@@3 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_7590 (|PolymorphicMapType_7590_3973_3974#PolymorphicMapType_7590| UnfoldingMask@0) (|PolymorphicMapType_7590_3937_3938#PolymorphicMapType_7590| UnfoldingMask@0) (store (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| UnfoldingMask@0) node@@3 value (+ (select (|PolymorphicMapType_7590_3935_1189#PolymorphicMapType_7590| UnfoldingMask@0) node@@3 value) wildcard@2)) (|PolymorphicMapType_7590_3973_3938#PolymorphicMapType_7590| UnfoldingMask@0) (|PolymorphicMapType_7590_3973_1189#PolymorphicMapType_7590| UnfoldingMask@0) (|PolymorphicMapType_7590_3973_53#PolymorphicMapType_7590| UnfoldingMask@0) (|PolymorphicMapType_7590_3973_34736#PolymorphicMapType_7590| UnfoldingMask@0) (|PolymorphicMapType_7590_3937_3974#PolymorphicMapType_7590| UnfoldingMask@0) (|PolymorphicMapType_7590_3937_53#PolymorphicMapType_7590| UnfoldingMask@0) (|PolymorphicMapType_7590_3937_35135#PolymorphicMapType_7590| UnfoldingMask@0))) (state Heap@@36 UnfoldingMask@1)))) (and (=> (= (ControlFlow 0 19) 17) anon12_Then_correct) (=> (= (ControlFlow 0 19) 18) anon12_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 21) 19)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid