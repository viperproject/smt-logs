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
(declare-sort T@Field_6548_53 0)
(declare-sort T@Field_6561_6562 0)
(declare-sort T@Field_10270_10271 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9966_1216 0)
(declare-sort T@Field_10283_10288 0)
(declare-sort T@Field_3231_1216 0)
(declare-sort T@Field_3231_3210 0)
(declare-sort T@Field_3231_1201 0)
(declare-sort T@Field_3231_645 0)
(declare-sort T@Field_3207_3232 0)
(declare-sort T@Field_9875_645 0)
(declare-sort T@Field_3207_10288 0)
(declare-datatypes ((T@PolymorphicMapType_6509 0)) (((PolymorphicMapType_6509 (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| (Array T@Ref T@Field_9966_1216 Real)) (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| (Array T@Ref T@Field_10270_10271 Real)) (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| (Array T@Ref T@Field_6561_6562 Real)) (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| (Array T@Ref T@Field_6548_53 Real)) (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| (Array T@Ref T@Field_3207_3232 Real)) (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| (Array T@Ref T@Field_9875_645 Real)) (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| (Array T@Ref T@Field_3207_10288 Real)) (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| (Array T@Ref T@Field_3231_1216 Real)) (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| (Array T@Ref T@Field_3231_3210 Real)) (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| (Array T@Ref T@Field_3231_1201 Real)) (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| (Array T@Ref T@Field_3231_645 Real)) (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| (Array T@Ref T@Field_10283_10288 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7037 0)) (((PolymorphicMapType_7037 (|PolymorphicMapType_7037_3207_1216#PolymorphicMapType_7037| (Array T@Ref T@Field_9966_1216 Bool)) (|PolymorphicMapType_7037_3207_53#PolymorphicMapType_7037| (Array T@Ref T@Field_6548_53 Bool)) (|PolymorphicMapType_7037_3207_6562#PolymorphicMapType_7037| (Array T@Ref T@Field_6561_6562 Bool)) (|PolymorphicMapType_7037_3207_645#PolymorphicMapType_7037| (Array T@Ref T@Field_9875_645 Bool)) (|PolymorphicMapType_7037_3207_10271#PolymorphicMapType_7037| (Array T@Ref T@Field_3207_3232 Bool)) (|PolymorphicMapType_7037_3207_24436#PolymorphicMapType_7037| (Array T@Ref T@Field_3207_10288 Bool)) (|PolymorphicMapType_7037_10270_1216#PolymorphicMapType_7037| (Array T@Ref T@Field_3231_1216 Bool)) (|PolymorphicMapType_7037_10270_53#PolymorphicMapType_7037| (Array T@Ref T@Field_3231_1201 Bool)) (|PolymorphicMapType_7037_10270_6562#PolymorphicMapType_7037| (Array T@Ref T@Field_3231_3210 Bool)) (|PolymorphicMapType_7037_10270_645#PolymorphicMapType_7037| (Array T@Ref T@Field_3231_645 Bool)) (|PolymorphicMapType_7037_10270_10271#PolymorphicMapType_7037| (Array T@Ref T@Field_10270_10271 Bool)) (|PolymorphicMapType_7037_10270_25682#PolymorphicMapType_7037| (Array T@Ref T@Field_10283_10288 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6488 0)) (((PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| (Array T@Ref T@Field_6548_53 Bool)) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| (Array T@Ref T@Field_6561_6562 T@Ref)) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| (Array T@Ref T@Field_10270_10271 T@FrameType)) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| (Array T@Ref T@Field_9966_1216 Int)) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| (Array T@Ref T@Field_10283_10288 T@PolymorphicMapType_7037)) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| (Array T@Ref T@Field_3231_1216 Int)) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| (Array T@Ref T@Field_3231_3210 T@Ref)) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| (Array T@Ref T@Field_3231_1201 Bool)) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| (Array T@Ref T@Field_3231_645 Real)) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| (Array T@Ref T@Field_3207_3232 T@FrameType)) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| (Array T@Ref T@Field_9875_645 Real)) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| (Array T@Ref T@Field_3207_10288 T@PolymorphicMapType_7037)) ) ) ))
(declare-fun $allocated () T@Field_6548_53)
(declare-fun old$methodPermission () T@Field_9875_645)
(declare-fun joinable$ () T@Field_6548_53)
(declare-fun Testx$ () T@Field_9966_1216)
(declare-fun Testtk$ () T@Field_6561_6562)
(declare-fun par$Testfoo$this$_2 () T@Field_6561_6562)
(declare-fun par$Testfoo$k$ () T@Field_9875_645)
(declare-fun par$TestjoinTk$this$_3 () T@Field_6561_6562)
(declare-fun par$TestjoinTk$k$_1 () T@Field_9875_645)
(declare-fun par$Testtest$this$_4 () T@Field_6561_6562)
(declare-fun par$Testtest$k$_2 () T@Field_9875_645)
(declare-fun succHeap (T@PolymorphicMapType_6488 T@PolymorphicMapType_6488) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6488 T@PolymorphicMapType_6488) Bool)
(declare-fun state (T@PolymorphicMapType_6488 T@PolymorphicMapType_6509) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6509) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7037)
(declare-fun TestV$ (T@Ref) T@Field_10270_10271)
(declare-fun IsPredicateField_3231_3232 (T@Field_10270_10271) Bool)
(declare-fun |TestV$#trigger_3231| (T@PolymorphicMapType_6488 T@Field_10270_10271) Bool)
(declare-fun |TestV$#everUsed_3231| (T@Field_10270_10271) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6488 T@PolymorphicMapType_6488 T@PolymorphicMapType_6509) Bool)
(declare-fun IsPredicateField_3207_23091 (T@Field_3207_3232) Bool)
(declare-fun HasDirectPerm_3207_3232 (T@PolymorphicMapType_6509 T@Ref T@Field_3207_3232) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3207 (T@Field_3207_3232) T@Field_3207_10288)
(declare-fun HasDirectPerm_3231_3232 (T@PolymorphicMapType_6509 T@Ref T@Field_10270_10271) Bool)
(declare-fun PredicateMaskField_3231 (T@Field_10270_10271) T@Field_10283_10288)
(declare-fun IsWandField_3207_26847 (T@Field_3207_3232) Bool)
(declare-fun WandMaskField_3207 (T@Field_3207_3232) T@Field_3207_10288)
(declare-fun IsWandField_3231_26490 (T@Field_10270_10271) Bool)
(declare-fun WandMaskField_3231 (T@Field_10270_10271) T@Field_10283_10288)
(declare-fun |TestV$#sm| (T@Ref) T@Field_10283_10288)
(declare-fun dummyHeap () T@PolymorphicMapType_6488)
(declare-fun ZeroMask () T@PolymorphicMapType_6509)
(declare-fun InsidePredicate_10270_10270 (T@Field_10270_10271 T@FrameType T@Field_10270_10271 T@FrameType) Bool)
(declare-fun InsidePredicate_6548_6548 (T@Field_3207_3232 T@FrameType T@Field_3207_3232 T@FrameType) Bool)
(declare-fun IsPredicateField_3202_645 (T@Field_9875_645) Bool)
(declare-fun IsWandField_3202_645 (T@Field_9875_645) Bool)
(declare-fun IsPredicateField_3205_1201 (T@Field_6548_53) Bool)
(declare-fun IsWandField_3205_1201 (T@Field_6548_53) Bool)
(declare-fun IsPredicateField_3207_1216 (T@Field_9966_1216) Bool)
(declare-fun IsWandField_3207_1216 (T@Field_9966_1216) Bool)
(declare-fun IsPredicateField_3209_3210 (T@Field_6561_6562) Bool)
(declare-fun IsWandField_3209_3210 (T@Field_6561_6562) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3231_34928 (T@Field_10283_10288) Bool)
(declare-fun IsWandField_3231_34944 (T@Field_10283_10288) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3231_645 (T@Field_3231_645) Bool)
(declare-fun IsWandField_3231_645 (T@Field_3231_645) Bool)
(declare-fun IsPredicateField_3231_1201 (T@Field_3231_1201) Bool)
(declare-fun IsWandField_3231_1201 (T@Field_3231_1201) Bool)
(declare-fun IsPredicateField_3231_3210 (T@Field_3231_3210) Bool)
(declare-fun IsWandField_3231_3210 (T@Field_3231_3210) Bool)
(declare-fun IsPredicateField_3231_1216 (T@Field_3231_1216) Bool)
(declare-fun IsWandField_3231_1216 (T@Field_3231_1216) Bool)
(declare-fun IsPredicateField_3207_33929 (T@Field_3207_10288) Bool)
(declare-fun IsWandField_3207_33945 (T@Field_3207_10288) Bool)
(declare-fun HasDirectPerm_3207_22478 (T@PolymorphicMapType_6509 T@Ref T@Field_3207_10288) Bool)
(declare-fun HasDirectPerm_3207_645 (T@PolymorphicMapType_6509 T@Ref T@Field_9875_645) Bool)
(declare-fun HasDirectPerm_3205_1201 (T@PolymorphicMapType_6509 T@Ref T@Field_6548_53) Bool)
(declare-fun HasDirectPerm_3209_3210 (T@PolymorphicMapType_6509 T@Ref T@Field_6561_6562) Bool)
(declare-fun HasDirectPerm_3207_1216 (T@PolymorphicMapType_6509 T@Ref T@Field_9966_1216) Bool)
(declare-fun HasDirectPerm_3231_21225 (T@PolymorphicMapType_6509 T@Ref T@Field_10283_10288) Bool)
(declare-fun HasDirectPerm_3231_645 (T@PolymorphicMapType_6509 T@Ref T@Field_3231_645) Bool)
(declare-fun HasDirectPerm_3231_1201 (T@PolymorphicMapType_6509 T@Ref T@Field_3231_1201) Bool)
(declare-fun HasDirectPerm_3231_3210 (T@PolymorphicMapType_6509 T@Ref T@Field_3231_3210) Bool)
(declare-fun HasDirectPerm_3231_1216 (T@PolymorphicMapType_6509 T@Ref T@Field_3231_1216) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6509 T@PolymorphicMapType_6509 T@PolymorphicMapType_6509) Bool)
(declare-fun getPredWandId_3231_3232 (T@Field_10270_10271) Int)
(declare-fun InsidePredicate_10270_6548 (T@Field_10270_10271 T@FrameType T@Field_3207_3232 T@FrameType) Bool)
(declare-fun InsidePredicate_6548_10270 (T@Field_3207_3232 T@FrameType T@Field_10270_10271 T@FrameType) Bool)
(assert (and (distinct $allocated joinable$)(distinct old$methodPermission par$Testfoo$k$ par$TestjoinTk$k$_1 par$Testtest$k$_2)(distinct Testtk$ par$Testfoo$this$_2 par$TestjoinTk$this$_3 par$Testtest$this$_4))
)
(assert (forall ((Heap0 T@PolymorphicMapType_6488) (Heap1 T@PolymorphicMapType_6488) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6488) (Mask T@PolymorphicMapType_6509) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6488) (Heap1@@0 T@PolymorphicMapType_6488) (Heap2 T@PolymorphicMapType_6488) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10283_10288) ) (!  (not (select (|PolymorphicMapType_7037_10270_25682#PolymorphicMapType_7037| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_10270_25682#PolymorphicMapType_7037| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10270_10271) ) (!  (not (select (|PolymorphicMapType_7037_10270_10271#PolymorphicMapType_7037| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_10270_10271#PolymorphicMapType_7037| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3231_645) ) (!  (not (select (|PolymorphicMapType_7037_10270_645#PolymorphicMapType_7037| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_10270_645#PolymorphicMapType_7037| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3231_3210) ) (!  (not (select (|PolymorphicMapType_7037_10270_6562#PolymorphicMapType_7037| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_10270_6562#PolymorphicMapType_7037| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3231_1201) ) (!  (not (select (|PolymorphicMapType_7037_10270_53#PolymorphicMapType_7037| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_10270_53#PolymorphicMapType_7037| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3231_1216) ) (!  (not (select (|PolymorphicMapType_7037_10270_1216#PolymorphicMapType_7037| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_10270_1216#PolymorphicMapType_7037| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3207_10288) ) (!  (not (select (|PolymorphicMapType_7037_3207_24436#PolymorphicMapType_7037| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_3207_24436#PolymorphicMapType_7037| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_3207_3232) ) (!  (not (select (|PolymorphicMapType_7037_3207_10271#PolymorphicMapType_7037| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_3207_10271#PolymorphicMapType_7037| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9875_645) ) (!  (not (select (|PolymorphicMapType_7037_3207_645#PolymorphicMapType_7037| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_3207_645#PolymorphicMapType_7037| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_6561_6562) ) (!  (not (select (|PolymorphicMapType_7037_3207_6562#PolymorphicMapType_7037| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_3207_6562#PolymorphicMapType_7037| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_6548_53) ) (!  (not (select (|PolymorphicMapType_7037_3207_53#PolymorphicMapType_7037| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_3207_53#PolymorphicMapType_7037| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_9966_1216) ) (!  (not (select (|PolymorphicMapType_7037_3207_1216#PolymorphicMapType_7037| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7037_3207_1216#PolymorphicMapType_7037| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((this$_1 T@Ref) ) (! (IsPredicateField_3231_3232 (TestV$ this$_1))
 :qid |stdinbpl.222:15|
 :skolemid |23|
 :pattern ( (TestV$ this$_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6488) (this$_1@@0 T@Ref) ) (! (|TestV$#everUsed_3231| (TestV$ this$_1@@0))
 :qid |stdinbpl.241:15|
 :skolemid |27|
 :pattern ( (|TestV$#trigger_3231| Heap@@0 (TestV$ this$_1@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6488) (ExhaleHeap T@PolymorphicMapType_6488) (Mask@@0 T@PolymorphicMapType_6509) (pm_f T@Field_3207_3232) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3207_3232 Mask@@0 null pm_f) (IsPredicateField_3207_23091 pm_f)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_9966_1216) ) (!  (=> (select (|PolymorphicMapType_7037_3207_1216#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@1) o2 f_2) (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6548_53) ) (!  (=> (select (|PolymorphicMapType_7037_3207_53#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@1) o2@@0 f_2@@0) (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6561_6562) ) (!  (=> (select (|PolymorphicMapType_7037_3207_6562#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@1) o2@@1 f_2@@1) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_9875_645) ) (!  (=> (select (|PolymorphicMapType_7037_3207_645#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@1) o2@@2 f_2@@2) (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3207_3232) ) (!  (=> (select (|PolymorphicMapType_7037_3207_10271#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@1) o2@@3 f_2@@3) (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3207_10288) ) (!  (=> (select (|PolymorphicMapType_7037_3207_24436#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) o2@@4 f_2@@4) (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3231_1216) ) (!  (=> (select (|PolymorphicMapType_7037_10270_1216#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@1) o2@@5 f_2@@5) (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3231_1201) ) (!  (=> (select (|PolymorphicMapType_7037_10270_53#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@1) o2@@6 f_2@@6) (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| ExhaleHeap) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3231_3210) ) (!  (=> (select (|PolymorphicMapType_7037_10270_6562#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@1) o2@@7 f_2@@7) (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| ExhaleHeap) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| ExhaleHeap) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3231_645) ) (!  (=> (select (|PolymorphicMapType_7037_10270_645#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@1) o2@@8 f_2@@8) (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| ExhaleHeap) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| ExhaleHeap) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_10270_10271) ) (!  (=> (select (|PolymorphicMapType_7037_10270_10271#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@1) o2@@9 f_2@@9) (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| ExhaleHeap) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| ExhaleHeap) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_10283_10288) ) (!  (=> (select (|PolymorphicMapType_7037_10270_25682#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@1) null (PredicateMaskField_3207 pm_f))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@1) o2@@10 f_2@@10) (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap) o2@@10 f_2@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_3207_23091 pm_f))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6488) (ExhaleHeap@@0 T@PolymorphicMapType_6488) (Mask@@1 T@PolymorphicMapType_6509) (pm_f@@0 T@Field_10270_10271) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3231_3232 Mask@@1 null pm_f@@0) (IsPredicateField_3231_3232 pm_f@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_9966_1216) ) (!  (=> (select (|PolymorphicMapType_7037_3207_1216#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@2) o2@@11 f_2@@11) (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@11 f_2@@11))
)) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_6548_53) ) (!  (=> (select (|PolymorphicMapType_7037_3207_53#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@2) o2@@12 f_2@@12) (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_6561_6562) ) (!  (=> (select (|PolymorphicMapType_7037_3207_6562#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@2) o2@@13 f_2@@13) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_9875_645) ) (!  (=> (select (|PolymorphicMapType_7037_3207_645#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@2) o2@@14 f_2@@14) (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_3207_3232) ) (!  (=> (select (|PolymorphicMapType_7037_3207_10271#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@2) o2@@15 f_2@@15) (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_3207_10288) ) (!  (=> (select (|PolymorphicMapType_7037_3207_24436#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@2) o2@@16 f_2@@16) (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_3231_1216) ) (!  (=> (select (|PolymorphicMapType_7037_10270_1216#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@2) o2@@17 f_2@@17) (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_3231_1201) ) (!  (=> (select (|PolymorphicMapType_7037_10270_53#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@2) o2@@18 f_2@@18) (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_3231_3210) ) (!  (=> (select (|PolymorphicMapType_7037_10270_6562#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@2) o2@@19 f_2@@19) (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@19 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_3231_645) ) (!  (=> (select (|PolymorphicMapType_7037_10270_645#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@2) o2@@20 f_2@@20) (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@20 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_10270_10271) ) (!  (=> (select (|PolymorphicMapType_7037_10270_10271#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@2) o2@@21 f_2@@21) (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@21 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_10283_10288) ) (!  (=> (select (|PolymorphicMapType_7037_10270_25682#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) null (PredicateMaskField_3231 pm_f@@0))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@2) o2@@22 f_2@@22) (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@22 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@0) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3231_3232 pm_f@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6488) (ExhaleHeap@@1 T@PolymorphicMapType_6488) (Mask@@2 T@PolymorphicMapType_6509) (pm_f@@1 T@Field_3207_3232) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3207_3232 Mask@@2 null pm_f@@1) (IsWandField_3207_26847 pm_f@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_9966_1216) ) (!  (=> (select (|PolymorphicMapType_7037_3207_1216#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@3) o2@@23 f_2@@23) (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_6548_53) ) (!  (=> (select (|PolymorphicMapType_7037_3207_53#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@3) o2@@24 f_2@@24) (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_6561_6562) ) (!  (=> (select (|PolymorphicMapType_7037_3207_6562#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@3) o2@@25 f_2@@25) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_9875_645) ) (!  (=> (select (|PolymorphicMapType_7037_3207_645#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@3) o2@@26 f_2@@26) (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_3207_3232) ) (!  (=> (select (|PolymorphicMapType_7037_3207_10271#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@3) o2@@27 f_2@@27) (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_3207_10288) ) (!  (=> (select (|PolymorphicMapType_7037_3207_24436#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) o2@@28 f_2@@28) (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_3231_1216) ) (!  (=> (select (|PolymorphicMapType_7037_10270_1216#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@3) o2@@29 f_2@@29) (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_3231_1201) ) (!  (=> (select (|PolymorphicMapType_7037_10270_53#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@3) o2@@30 f_2@@30) (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_3231_3210) ) (!  (=> (select (|PolymorphicMapType_7037_10270_6562#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@3) o2@@31 f_2@@31) (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_3231_645) ) (!  (=> (select (|PolymorphicMapType_7037_10270_645#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@3) o2@@32 f_2@@32) (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_10270_10271) ) (!  (=> (select (|PolymorphicMapType_7037_10270_10271#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@3) o2@@33 f_2@@33) (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_10283_10288) ) (!  (=> (select (|PolymorphicMapType_7037_10270_25682#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@3) null (WandMaskField_3207 pm_f@@1))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@3) o2@@34 f_2@@34) (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@1) o2@@34 f_2@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_3207_26847 pm_f@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6488) (ExhaleHeap@@2 T@PolymorphicMapType_6488) (Mask@@3 T@PolymorphicMapType_6509) (pm_f@@2 T@Field_10270_10271) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3231_3232 Mask@@3 null pm_f@@2) (IsWandField_3231_26490 pm_f@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_9966_1216) ) (!  (=> (select (|PolymorphicMapType_7037_3207_1216#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@4) o2@@35 f_2@@35) (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@35 f_2@@35))
)) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_6548_53) ) (!  (=> (select (|PolymorphicMapType_7037_3207_53#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@4) o2@@36 f_2@@36) (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_6561_6562) ) (!  (=> (select (|PolymorphicMapType_7037_3207_6562#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@4) o2@@37 f_2@@37) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_9875_645) ) (!  (=> (select (|PolymorphicMapType_7037_3207_645#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@4) o2@@38 f_2@@38) (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@38 f_2@@38))
))) (forall ((o2@@39 T@Ref) (f_2@@39 T@Field_3207_3232) ) (!  (=> (select (|PolymorphicMapType_7037_3207_10271#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@39 f_2@@39) (= (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@4) o2@@39 f_2@@39) (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@39 f_2@@39)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@39 f_2@@39))
))) (forall ((o2@@40 T@Ref) (f_2@@40 T@Field_3207_10288) ) (!  (=> (select (|PolymorphicMapType_7037_3207_24436#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@40 f_2@@40) (= (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@4) o2@@40 f_2@@40) (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@40 f_2@@40)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@40 f_2@@40))
))) (forall ((o2@@41 T@Ref) (f_2@@41 T@Field_3231_1216) ) (!  (=> (select (|PolymorphicMapType_7037_10270_1216#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@41 f_2@@41) (= (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@4) o2@@41 f_2@@41) (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@41 f_2@@41)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@41 f_2@@41))
))) (forall ((o2@@42 T@Ref) (f_2@@42 T@Field_3231_1201) ) (!  (=> (select (|PolymorphicMapType_7037_10270_53#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@42 f_2@@42) (= (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@4) o2@@42 f_2@@42) (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@42 f_2@@42)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@42 f_2@@42))
))) (forall ((o2@@43 T@Ref) (f_2@@43 T@Field_3231_3210) ) (!  (=> (select (|PolymorphicMapType_7037_10270_6562#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@43 f_2@@43) (= (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@4) o2@@43 f_2@@43) (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@43 f_2@@43)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@43 f_2@@43))
))) (forall ((o2@@44 T@Ref) (f_2@@44 T@Field_3231_645) ) (!  (=> (select (|PolymorphicMapType_7037_10270_645#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@44 f_2@@44) (= (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@4) o2@@44 f_2@@44) (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@44 f_2@@44)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@44 f_2@@44))
))) (forall ((o2@@45 T@Ref) (f_2@@45 T@Field_10270_10271) ) (!  (=> (select (|PolymorphicMapType_7037_10270_10271#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@45 f_2@@45) (= (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@4) o2@@45 f_2@@45) (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@45 f_2@@45)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@45 f_2@@45))
))) (forall ((o2@@46 T@Ref) (f_2@@46 T@Field_10283_10288) ) (!  (=> (select (|PolymorphicMapType_7037_10270_25682#PolymorphicMapType_7037| (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) null (WandMaskField_3231 pm_f@@2))) o2@@46 f_2@@46) (= (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@4) o2@@46 f_2@@46) (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@46 f_2@@46)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@2) o2@@46 f_2@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_3231_26490 pm_f@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6488) (ExhaleHeap@@3 T@PolymorphicMapType_6488) (Mask@@4 T@PolymorphicMapType_6509) (pm_f@@3 T@Field_3207_3232) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_3207_3232 Mask@@4 null pm_f@@3) (IsPredicateField_3207_23091 pm_f@@3)) (= (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@5) null (PredicateMaskField_3207 pm_f@@3)) (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@3) null (PredicateMaskField_3207 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3207_23091 pm_f@@3) (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@3) null (PredicateMaskField_3207 pm_f@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6488) (ExhaleHeap@@4 T@PolymorphicMapType_6488) (Mask@@5 T@PolymorphicMapType_6509) (pm_f@@4 T@Field_10270_10271) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3231_3232 Mask@@5 null pm_f@@4) (IsPredicateField_3231_3232 pm_f@@4)) (= (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@6) null (PredicateMaskField_3231 pm_f@@4)) (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@4) null (PredicateMaskField_3231 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3231_3232 pm_f@@4) (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@4) null (PredicateMaskField_3231 pm_f@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6488) (ExhaleHeap@@5 T@PolymorphicMapType_6488) (Mask@@6 T@PolymorphicMapType_6509) (pm_f@@5 T@Field_3207_3232) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_3207_3232 Mask@@6 null pm_f@@5) (IsWandField_3207_26847 pm_f@@5)) (= (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@7) null (WandMaskField_3207 pm_f@@5)) (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@5) null (WandMaskField_3207 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_3207_26847 pm_f@@5) (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@5) null (WandMaskField_3207 pm_f@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6488) (ExhaleHeap@@6 T@PolymorphicMapType_6488) (Mask@@7 T@PolymorphicMapType_6509) (pm_f@@6 T@Field_10270_10271) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3231_3232 Mask@@7 null pm_f@@6) (IsWandField_3231_26490 pm_f@@6)) (= (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@8) null (WandMaskField_3231 pm_f@@6)) (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@6) null (WandMaskField_3231 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_3231_26490 pm_f@@6) (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@6) null (WandMaskField_3231 pm_f@@6)))
)))
(assert (forall ((this$_1@@1 T@Ref) (this$_12 T@Ref) ) (!  (=> (= (TestV$ this$_1@@1) (TestV$ this$_12)) (= this$_1@@1 this$_12))
 :qid |stdinbpl.232:15|
 :skolemid |25|
 :pattern ( (TestV$ this$_1@@1) (TestV$ this$_12))
)))
(assert (forall ((this$_1@@2 T@Ref) (this$_12@@0 T@Ref) ) (!  (=> (= (|TestV$#sm| this$_1@@2) (|TestV$#sm| this$_12@@0)) (= this$_1@@2 this$_12@@0))
 :qid |stdinbpl.236:15|
 :skolemid |26|
 :pattern ( (|TestV$#sm| this$_1@@2) (|TestV$#sm| this$_12@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6488) (ExhaleHeap@@7 T@PolymorphicMapType_6488) (Mask@@8 T@PolymorphicMapType_6509) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@9) o_1 $allocated) (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_10270_10271) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10270_10270 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10270_10270 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3207_3232) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6548_6548 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6548_6548 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3202_645 old$methodPermission)))
(assert  (not (IsWandField_3202_645 old$methodPermission)))
(assert  (not (IsPredicateField_3205_1201 joinable$)))
(assert  (not (IsWandField_3205_1201 joinable$)))
(assert  (not (IsPredicateField_3207_1216 Testx$)))
(assert  (not (IsWandField_3207_1216 Testx$)))
(assert  (not (IsPredicateField_3209_3210 Testtk$)))
(assert  (not (IsWandField_3209_3210 Testtk$)))
(assert  (not (IsPredicateField_3209_3210 par$Testfoo$this$_2)))
(assert  (not (IsWandField_3209_3210 par$Testfoo$this$_2)))
(assert  (not (IsPredicateField_3202_645 par$Testfoo$k$)))
(assert  (not (IsWandField_3202_645 par$Testfoo$k$)))
(assert  (not (IsPredicateField_3209_3210 par$TestjoinTk$this$_3)))
(assert  (not (IsWandField_3209_3210 par$TestjoinTk$this$_3)))
(assert  (not (IsPredicateField_3202_645 par$TestjoinTk$k$_1)))
(assert  (not (IsWandField_3202_645 par$TestjoinTk$k$_1)))
(assert  (not (IsPredicateField_3209_3210 par$Testtest$this$_4)))
(assert  (not (IsWandField_3209_3210 par$Testtest$this$_4)))
(assert  (not (IsPredicateField_3202_645 par$Testtest$k$_2)))
(assert  (not (IsWandField_3202_645 par$Testtest$k$_2)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6488) (ExhaleHeap@@8 T@PolymorphicMapType_6488) (Mask@@9 T@PolymorphicMapType_6509) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6509) (o_2@@11 T@Ref) (f_4@@11 T@Field_10283_10288) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| Mask@@10) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3231_34928 f_4@@11))) (not (IsWandField_3231_34944 f_4@@11))) (<= (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| Mask@@10) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| Mask@@10) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6509) (o_2@@12 T@Ref) (f_4@@12 T@Field_3231_645) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| Mask@@11) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3231_645 f_4@@12))) (not (IsWandField_3231_645 f_4@@12))) (<= (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| Mask@@11) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| Mask@@11) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6509) (o_2@@13 T@Ref) (f_4@@13 T@Field_3231_1201) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| Mask@@12) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3231_1201 f_4@@13))) (not (IsWandField_3231_1201 f_4@@13))) (<= (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| Mask@@12) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| Mask@@12) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6509) (o_2@@14 T@Ref) (f_4@@14 T@Field_3231_3210) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| Mask@@13) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3231_3210 f_4@@14))) (not (IsWandField_3231_3210 f_4@@14))) (<= (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| Mask@@13) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| Mask@@13) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6509) (o_2@@15 T@Ref) (f_4@@15 T@Field_10270_10271) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@@14) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3231_3232 f_4@@15))) (not (IsWandField_3231_26490 f_4@@15))) (<= (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@@14) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@@14) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6509) (o_2@@16 T@Ref) (f_4@@16 T@Field_3231_1216) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| Mask@@15) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3231_1216 f_4@@16))) (not (IsWandField_3231_1216 f_4@@16))) (<= (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| Mask@@15) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| Mask@@15) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6509) (o_2@@17 T@Ref) (f_4@@17 T@Field_3207_10288) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| Mask@@16) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3207_33929 f_4@@17))) (not (IsWandField_3207_33945 f_4@@17))) (<= (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| Mask@@16) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| Mask@@16) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6509) (o_2@@18 T@Ref) (f_4@@18 T@Field_9875_645) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| Mask@@17) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3202_645 f_4@@18))) (not (IsWandField_3202_645 f_4@@18))) (<= (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| Mask@@17) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| Mask@@17) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6509) (o_2@@19 T@Ref) (f_4@@19 T@Field_6548_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3205_1201 f_4@@19))) (not (IsWandField_3205_1201 f_4@@19))) (<= (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6509) (o_2@@20 T@Ref) (f_4@@20 T@Field_6561_6562) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3209_3210 f_4@@20))) (not (IsWandField_3209_3210 f_4@@20))) (<= (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6509) (o_2@@21 T@Ref) (f_4@@21 T@Field_3207_3232) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3207_23091 f_4@@21))) (not (IsWandField_3207_26847 f_4@@21))) (<= (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6509) (o_2@@22 T@Ref) (f_4@@22 T@Field_9966_1216) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3207_1216 f_4@@22))) (not (IsWandField_3207_1216 f_4@@22))) (<= (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6509) (o_2@@23 T@Ref) (f_4@@23 T@Field_3207_10288) ) (! (= (HasDirectPerm_3207_22478 Mask@@22 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| Mask@@22) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3207_22478 Mask@@22 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6509) (o_2@@24 T@Ref) (f_4@@24 T@Field_9875_645) ) (! (= (HasDirectPerm_3207_645 Mask@@23 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| Mask@@23) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3207_645 Mask@@23 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6509) (o_2@@25 T@Ref) (f_4@@25 T@Field_6548_53) ) (! (= (HasDirectPerm_3205_1201 Mask@@24 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| Mask@@24) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3205_1201 Mask@@24 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6509) (o_2@@26 T@Ref) (f_4@@26 T@Field_6561_6562) ) (! (= (HasDirectPerm_3209_3210 Mask@@25 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| Mask@@25) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3209_3210 Mask@@25 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6509) (o_2@@27 T@Ref) (f_4@@27 T@Field_9966_1216) ) (! (= (HasDirectPerm_3207_1216 Mask@@26 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| Mask@@26) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3207_1216 Mask@@26 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6509) (o_2@@28 T@Ref) (f_4@@28 T@Field_3207_3232) ) (! (= (HasDirectPerm_3207_3232 Mask@@27 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| Mask@@27) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3207_3232 Mask@@27 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6509) (o_2@@29 T@Ref) (f_4@@29 T@Field_10283_10288) ) (! (= (HasDirectPerm_3231_21225 Mask@@28 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| Mask@@28) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3231_21225 Mask@@28 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6509) (o_2@@30 T@Ref) (f_4@@30 T@Field_3231_645) ) (! (= (HasDirectPerm_3231_645 Mask@@29 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| Mask@@29) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3231_645 Mask@@29 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_6509) (o_2@@31 T@Ref) (f_4@@31 T@Field_3231_1201) ) (! (= (HasDirectPerm_3231_1201 Mask@@30 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| Mask@@30) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3231_1201 Mask@@30 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_6509) (o_2@@32 T@Ref) (f_4@@32 T@Field_3231_3210) ) (! (= (HasDirectPerm_3231_3210 Mask@@31 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| Mask@@31) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3231_3210 Mask@@31 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_6509) (o_2@@33 T@Ref) (f_4@@33 T@Field_3231_1216) ) (! (= (HasDirectPerm_3231_1216 Mask@@32 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| Mask@@32) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3231_1216 Mask@@32 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_6509) (o_2@@34 T@Ref) (f_4@@34 T@Field_10270_10271) ) (! (= (HasDirectPerm_3231_3232 Mask@@33 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@@33) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3231_3232 Mask@@33 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6488) (ExhaleHeap@@9 T@PolymorphicMapType_6488) (Mask@@34 T@PolymorphicMapType_6509) (o_1@@0 T@Ref) (f_2@@47 T@Field_3207_10288) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@34) (=> (HasDirectPerm_3207_22478 Mask@@34 o_1@@0 f_2@@47) (= (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@11) o_1@@0 f_2@@47) (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@9) o_1@@0 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@34) (select (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| ExhaleHeap@@9) o_1@@0 f_2@@47))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6488) (ExhaleHeap@@10 T@PolymorphicMapType_6488) (Mask@@35 T@PolymorphicMapType_6509) (o_1@@1 T@Ref) (f_2@@48 T@Field_9875_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@35) (=> (HasDirectPerm_3207_645 Mask@@35 o_1@@1 f_2@@48) (= (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@12) o_1@@1 f_2@@48) (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| ExhaleHeap@@10) o_1@@1 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@35) (select (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| ExhaleHeap@@10) o_1@@1 f_2@@48))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6488) (ExhaleHeap@@11 T@PolymorphicMapType_6488) (Mask@@36 T@PolymorphicMapType_6509) (o_1@@2 T@Ref) (f_2@@49 T@Field_6548_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@36) (=> (HasDirectPerm_3205_1201 Mask@@36 o_1@@2 f_2@@49) (= (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@13) o_1@@2 f_2@@49) (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap@@11) o_1@@2 f_2@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@36) (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| ExhaleHeap@@11) o_1@@2 f_2@@49))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6488) (ExhaleHeap@@12 T@PolymorphicMapType_6488) (Mask@@37 T@PolymorphicMapType_6509) (o_1@@3 T@Ref) (f_2@@50 T@Field_6561_6562) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@37) (=> (HasDirectPerm_3209_3210 Mask@@37 o_1@@3 f_2@@50) (= (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@14) o_1@@3 f_2@@50) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| ExhaleHeap@@12) o_1@@3 f_2@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@37) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| ExhaleHeap@@12) o_1@@3 f_2@@50))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6488) (ExhaleHeap@@13 T@PolymorphicMapType_6488) (Mask@@38 T@PolymorphicMapType_6509) (o_1@@4 T@Ref) (f_2@@51 T@Field_9966_1216) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_3207_1216 Mask@@38 o_1@@4 f_2@@51) (= (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@15) o_1@@4 f_2@@51) (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| ExhaleHeap@@13) o_1@@4 f_2@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| ExhaleHeap@@13) o_1@@4 f_2@@51))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6488) (ExhaleHeap@@14 T@PolymorphicMapType_6488) (Mask@@39 T@PolymorphicMapType_6509) (o_1@@5 T@Ref) (f_2@@52 T@Field_3207_3232) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_3207_3232 Mask@@39 o_1@@5 f_2@@52) (= (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@16) o_1@@5 f_2@@52) (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| ExhaleHeap@@14) o_1@@5 f_2@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| ExhaleHeap@@14) o_1@@5 f_2@@52))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6488) (ExhaleHeap@@15 T@PolymorphicMapType_6488) (Mask@@40 T@PolymorphicMapType_6509) (o_1@@6 T@Ref) (f_2@@53 T@Field_10283_10288) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_3231_21225 Mask@@40 o_1@@6 f_2@@53) (= (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@17) o_1@@6 f_2@@53) (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@15) o_1@@6 f_2@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| ExhaleHeap@@15) o_1@@6 f_2@@53))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6488) (ExhaleHeap@@16 T@PolymorphicMapType_6488) (Mask@@41 T@PolymorphicMapType_6509) (o_1@@7 T@Ref) (f_2@@54 T@Field_3231_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_3231_645 Mask@@41 o_1@@7 f_2@@54) (= (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@18) o_1@@7 f_2@@54) (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| ExhaleHeap@@16) o_1@@7 f_2@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| ExhaleHeap@@16) o_1@@7 f_2@@54))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6488) (ExhaleHeap@@17 T@PolymorphicMapType_6488) (Mask@@42 T@PolymorphicMapType_6509) (o_1@@8 T@Ref) (f_2@@55 T@Field_3231_1201) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_3231_1201 Mask@@42 o_1@@8 f_2@@55) (= (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@19) o_1@@8 f_2@@55) (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| ExhaleHeap@@17) o_1@@8 f_2@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| ExhaleHeap@@17) o_1@@8 f_2@@55))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6488) (ExhaleHeap@@18 T@PolymorphicMapType_6488) (Mask@@43 T@PolymorphicMapType_6509) (o_1@@9 T@Ref) (f_2@@56 T@Field_3231_3210) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_3231_3210 Mask@@43 o_1@@9 f_2@@56) (= (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@20) o_1@@9 f_2@@56) (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| ExhaleHeap@@18) o_1@@9 f_2@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| ExhaleHeap@@18) o_1@@9 f_2@@56))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6488) (ExhaleHeap@@19 T@PolymorphicMapType_6488) (Mask@@44 T@PolymorphicMapType_6509) (o_1@@10 T@Ref) (f_2@@57 T@Field_3231_1216) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@44) (=> (HasDirectPerm_3231_1216 Mask@@44 o_1@@10 f_2@@57) (= (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@21) o_1@@10 f_2@@57) (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| ExhaleHeap@@19) o_1@@10 f_2@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@44) (select (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| ExhaleHeap@@19) o_1@@10 f_2@@57))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6488) (ExhaleHeap@@20 T@PolymorphicMapType_6488) (Mask@@45 T@PolymorphicMapType_6509) (o_1@@11 T@Ref) (f_2@@58 T@Field_10270_10271) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@45) (=> (HasDirectPerm_3231_3232 Mask@@45 o_1@@11 f_2@@58) (= (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@22) o_1@@11 f_2@@58) (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| ExhaleHeap@@20) o_1@@11 f_2@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@45) (select (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| ExhaleHeap@@20) o_1@@11 f_2@@58))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_10283_10288) ) (! (= (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_3231_645) ) (! (= (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_3231_1201) ) (! (= (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_3231_3210) ) (! (= (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_10270_10271) ) (! (= (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_3231_1216) ) (! (= (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_3207_10288) ) (! (= (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_9875_645) ) (! (= (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_6548_53) ) (! (= (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_6561_6562) ) (! (= (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_3207_3232) ) (! (= (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_9966_1216) ) (! (= (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6509) (SummandMask1 T@PolymorphicMapType_6509) (SummandMask2 T@PolymorphicMapType_6509) (o_2@@47 T@Ref) (f_4@@47 T@Field_10283_10288) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6509) (SummandMask1@@0 T@PolymorphicMapType_6509) (SummandMask2@@0 T@PolymorphicMapType_6509) (o_2@@48 T@Ref) (f_4@@48 T@Field_3231_645) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6509) (SummandMask1@@1 T@PolymorphicMapType_6509) (SummandMask2@@1 T@PolymorphicMapType_6509) (o_2@@49 T@Ref) (f_4@@49 T@Field_3231_1201) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6509) (SummandMask1@@2 T@PolymorphicMapType_6509) (SummandMask2@@2 T@PolymorphicMapType_6509) (o_2@@50 T@Ref) (f_4@@50 T@Field_3231_3210) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6509) (SummandMask1@@3 T@PolymorphicMapType_6509) (SummandMask2@@3 T@PolymorphicMapType_6509) (o_2@@51 T@Ref) (f_4@@51 T@Field_10270_10271) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6509) (SummandMask1@@4 T@PolymorphicMapType_6509) (SummandMask2@@4 T@PolymorphicMapType_6509) (o_2@@52 T@Ref) (f_4@@52 T@Field_3231_1216) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6509) (SummandMask1@@5 T@PolymorphicMapType_6509) (SummandMask2@@5 T@PolymorphicMapType_6509) (o_2@@53 T@Ref) (f_4@@53 T@Field_3207_10288) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6509) (SummandMask1@@6 T@PolymorphicMapType_6509) (SummandMask2@@6 T@PolymorphicMapType_6509) (o_2@@54 T@Ref) (f_4@@54 T@Field_9875_645) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6509) (SummandMask1@@7 T@PolymorphicMapType_6509) (SummandMask2@@7 T@PolymorphicMapType_6509) (o_2@@55 T@Ref) (f_4@@55 T@Field_6548_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6509) (SummandMask1@@8 T@PolymorphicMapType_6509) (SummandMask2@@8 T@PolymorphicMapType_6509) (o_2@@56 T@Ref) (f_4@@56 T@Field_6561_6562) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_6509) (SummandMask1@@9 T@PolymorphicMapType_6509) (SummandMask2@@9 T@PolymorphicMapType_6509) (o_2@@57 T@Ref) (f_4@@57 T@Field_3207_3232) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_6509) (SummandMask1@@10 T@PolymorphicMapType_6509) (SummandMask2@@10 T@PolymorphicMapType_6509) (o_2@@58 T@Ref) (f_4@@58 T@Field_9966_1216) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((this$_1@@3 T@Ref) ) (! (= (getPredWandId_3231_3232 (TestV$ this$_1@@3)) 0)
 :qid |stdinbpl.226:15|
 :skolemid |24|
 :pattern ( (TestV$ this$_1@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6488) (o T@Ref) (f_3 T@Field_3231_645) (v Real) ) (! (succHeap Heap@@23 (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@23) (store (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@23) o f_3 v) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@23) (store (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@23) o f_3 v) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@23) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6488) (o@@0 T@Ref) (f_3@@0 T@Field_10283_10288) (v@@0 T@PolymorphicMapType_7037) ) (! (succHeap Heap@@24 (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@24) (store (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@24) (store (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@24) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6488) (o@@1 T@Ref) (f_3@@1 T@Field_3231_1216) (v@@1 Int) ) (! (succHeap Heap@@25 (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@25) (store (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@25) (store (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@25) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6488) (o@@2 T@Ref) (f_3@@2 T@Field_10270_10271) (v@@2 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@26) (store (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@26) (store (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@26) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6488) (o@@3 T@Ref) (f_3@@3 T@Field_3231_3210) (v@@3 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@27) (store (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@27) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@27) (store (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@27) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@27) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6488) (o@@4 T@Ref) (f_3@@4 T@Field_3231_1201) (v@@4 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@28) (store (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@28) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@28) (store (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@28) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@28) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6488) (o@@5 T@Ref) (f_3@@5 T@Field_9875_645) (v@@5 Real) ) (! (succHeap Heap@@29 (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@29) (store (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@29) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@29) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@29) (store (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@29) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6488) (o@@6 T@Ref) (f_3@@6 T@Field_3207_10288) (v@@6 T@PolymorphicMapType_7037) ) (! (succHeap Heap@@30 (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@30) (store (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@30) o@@6 f_3@@6 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@30) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@30) (store (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@30) o@@6 f_3@@6 v@@6)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6488) (o@@7 T@Ref) (f_3@@7 T@Field_9966_1216) (v@@7 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@31) (store (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@31) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@31) (store (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@31) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@31) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6488) (o@@8 T@Ref) (f_3@@8 T@Field_3207_3232) (v@@8 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@32) (store (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@32) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@32) (store (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@32) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@32) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6488) (o@@9 T@Ref) (f_3@@9 T@Field_6561_6562) (v@@9 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@33) (store (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@33) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@33) (store (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@33) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@33) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6488) (o@@10 T@Ref) (f_3@@10 T@Field_6548_53) (v@@10 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_6488 (store (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@34) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6488 (store (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@34) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@34) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@34)))
)))
(assert (forall ((this$_1@@4 T@Ref) ) (! (= (PredicateMaskField_3231 (TestV$ this$_1@@4)) (|TestV$#sm| this$_1@@4))
 :qid |stdinbpl.218:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_3231 (TestV$ this$_1@@4)))
)))
(assert (forall ((o@@11 T@Ref) (f T@Field_6561_6562) (Heap@@35 T@PolymorphicMapType_6488) ) (!  (=> (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@35) o@@11 $allocated) (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@35) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@35) o@@11 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@35) o@@11 f))
)))
(assert (forall ((p@@2 T@Field_10270_10271) (v_1@@1 T@FrameType) (q T@Field_10270_10271) (w@@1 T@FrameType) (r T@Field_10270_10271) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10270_10270 p@@2 v_1@@1 q w@@1) (InsidePredicate_10270_10270 q w@@1 r u)) (InsidePredicate_10270_10270 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10270_10270 p@@2 v_1@@1 q w@@1) (InsidePredicate_10270_10270 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_10270_10271) (v_1@@2 T@FrameType) (q@@0 T@Field_10270_10271) (w@@2 T@FrameType) (r@@0 T@Field_3207_3232) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10270_10270 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10270_6548 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_10270_6548 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10270_10270 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10270_6548 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_10270_10271) (v_1@@3 T@FrameType) (q@@1 T@Field_3207_3232) (w@@3 T@FrameType) (r@@1 T@Field_10270_10271) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10270_6548 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6548_10270 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_10270_10270 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10270_6548 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6548_10270 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_10270_10271) (v_1@@4 T@FrameType) (q@@2 T@Field_3207_3232) (w@@4 T@FrameType) (r@@2 T@Field_3207_3232) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10270_6548 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6548_6548 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_10270_6548 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10270_6548 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6548_6548 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3207_3232) (v_1@@5 T@FrameType) (q@@3 T@Field_10270_10271) (w@@5 T@FrameType) (r@@3 T@Field_10270_10271) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6548_10270 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10270_10270 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_6548_10270 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6548_10270 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10270_10270 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3207_3232) (v_1@@6 T@FrameType) (q@@4 T@Field_10270_10271) (w@@6 T@FrameType) (r@@4 T@Field_3207_3232) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6548_10270 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10270_6548 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_6548_6548 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6548_10270 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10270_6548 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3207_3232) (v_1@@7 T@FrameType) (q@@5 T@Field_3207_3232) (w@@7 T@FrameType) (r@@5 T@Field_10270_10271) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6548_6548 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6548_10270 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_6548_10270 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6548_6548 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6548_10270 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3207_3232) (v_1@@8 T@FrameType) (q@@6 T@Field_3207_3232) (w@@8 T@FrameType) (r@@6 T@Field_3207_3232) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6548_6548 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6548_6548 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_6548_6548 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6548_6548 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6548_6548 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@2 () T@PolymorphicMapType_6509)
(declare-fun this () T@Ref)
(declare-fun AssertMask@0 () T@PolymorphicMapType_6509)
(declare-fun Heap@0 () T@PolymorphicMapType_6488)
(declare-fun Mask@1 () T@PolymorphicMapType_6509)
(declare-fun Heap@@36 () T@PolymorphicMapType_6488)
(declare-fun k$_1 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_6509)
(set-info :boogie-vc-id TestjoinTk$)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon6_correct true))
(let ((anon9_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 5) 2)) anon6_correct)))
(let ((anon9_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= FullPerm (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@2) null (TestV$ this)))) (=> (<= FullPerm (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@2) null (TestV$ this))) (=> (= (ControlFlow 0 3) 2) anon6_correct))))))
(let ((anon4_correct  (=> (and (= AssertMask@0 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| Mask@2) (store (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@2) null (TestV$ this) (- (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@2) null (TestV$ this)) FullPerm)) (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| Mask@2) (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| Mask@2) (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| Mask@2) (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| Mask@2) (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| Mask@2) (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| Mask@2) (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| Mask@2) (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| Mask@2) (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| Mask@2) (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| Mask@2))) (state Heap@0 Mask@2)) (and (=> (= (ControlFlow 0 6) 3) anon9_Then_correct) (=> (= (ControlFlow 0 6) 5) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 9) 6)) anon4_correct)))
(let ((anon8_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= FullPerm (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@2) null (TestV$ this)))) (=> (<= FullPerm (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@2) null (TestV$ this))) (=> (= (ControlFlow 0 7) 6) anon4_correct))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 10) (- 0 17)) (HasDirectPerm_3209_3210 Mask@1 this Testtk$)) (=> (HasDirectPerm_3209_3210 Mask@1 this Testtk$) (and (=> (= (ControlFlow 0 10) (- 0 16)) (HasDirectPerm_3205_1201 Mask@1 (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$)) (=> (HasDirectPerm_3205_1201 Mask@1 (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$) (and (=> (= (ControlFlow 0 10) (- 0 15)) (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@36) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$)) (=> (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@36) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$) (=> (state Heap@@36 Mask@1) (and (=> (= (ControlFlow 0 10) (- 0 14)) (HasDirectPerm_3209_3210 Mask@1 this Testtk$)) (=> (HasDirectPerm_3209_3210 Mask@1 this Testtk$) (and (=> (= (ControlFlow 0 10) (- 0 13)) (HasDirectPerm_3209_3210 Mask@1 (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) par$Testfoo$this$_2)) (=> (HasDirectPerm_3209_3210 Mask@1 (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) par$Testfoo$this$_2) (=> (and (and (= Mask@2 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| Mask@1) (store (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@1) null (TestV$ (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) par$Testfoo$this$_2)) (+ (select (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@1) null (TestV$ (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) par$Testfoo$this$_2))) FullPerm)) (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| Mask@1) (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| Mask@1) (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| Mask@1) (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| Mask@1) (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| Mask@1) (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| Mask@1) (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| Mask@1) (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| Mask@1) (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| Mask@1) (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| Mask@1))) (state Heap@@36 Mask@2)) (and (state Heap@@36 Mask@2) (state Heap@@36 Mask@2))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (HasDirectPerm_3209_3210 Mask@2 this Testtk$)) (=> (HasDirectPerm_3209_3210 Mask@2 this Testtk$) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= FullPerm (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| Mask@2) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$))) (=> (= FullPerm (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| Mask@2) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$)) (=> (and (= Heap@0 (PolymorphicMapType_6488 (store (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@36) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$ false) (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) (|PolymorphicMapType_6488_3231_3232#PolymorphicMapType_6488| Heap@@36) (|PolymorphicMapType_6488_3207_1216#PolymorphicMapType_6488| Heap@@36) (|PolymorphicMapType_6488_3235_13779#PolymorphicMapType_6488| Heap@@36) (|PolymorphicMapType_6488_3231_1216#PolymorphicMapType_6488| Heap@@36) (|PolymorphicMapType_6488_3231_3210#PolymorphicMapType_6488| Heap@@36) (|PolymorphicMapType_6488_3231_1201#PolymorphicMapType_6488| Heap@@36) (|PolymorphicMapType_6488_3231_645#PolymorphicMapType_6488| Heap@@36) (|PolymorphicMapType_6488_3207_3232#PolymorphicMapType_6488| Heap@@36) (|PolymorphicMapType_6488_3207_645#PolymorphicMapType_6488| Heap@@36) (|PolymorphicMapType_6488_3207_22520#PolymorphicMapType_6488| Heap@@36))) (state Heap@0 Mask@2)) (and (=> (= (ControlFlow 0 10) 7) anon8_Then_correct) (=> (= (ControlFlow 0 10) 9) anon8_Else_correct)))))))))))))))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@36 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@36) this $allocated) (not (= this null)))) (=> (and (and (and (state Heap@@36 ZeroMask) (< NoPerm k$_1)) (and (state Heap@@36 ZeroMask) (< k$_1 FullPerm))) (and (and (state Heap@@36 ZeroMask) (not (= this null))) (and (= Mask@0 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| ZeroMask) (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| ZeroMask) (store (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| ZeroMask) this Testtk$ (+ (select (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| ZeroMask) this Testtk$) FullPerm)) (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| ZeroMask) (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| ZeroMask) (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| ZeroMask) (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| ZeroMask) (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| ZeroMask) (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| ZeroMask) (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| ZeroMask) (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| ZeroMask) (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| ZeroMask))) (state Heap@@36 Mask@0)))) (and (=> (= (ControlFlow 0 18) (- 0 22)) (HasDirectPerm_3209_3210 Mask@0 this Testtk$)) (=> (HasDirectPerm_3209_3210 Mask@0 this Testtk$) (=> (not (= (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) null)) (and (=> (= (ControlFlow 0 18) (- 0 21)) (HasDirectPerm_3209_3210 Mask@0 this Testtk$)) (=> (HasDirectPerm_3209_3210 Mask@0 this Testtk$) (=> (not (= (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) null)) (=> (and (= Mask@1 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3207_1216#PolymorphicMapType_6509| Mask@0) (|PolymorphicMapType_6509_3231_3232#PolymorphicMapType_6509| Mask@0) (|PolymorphicMapType_6509_3209_3210#PolymorphicMapType_6509| Mask@0) (store (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| Mask@0) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$ (+ (select (|PolymorphicMapType_6509_3205_1201#PolymorphicMapType_6509| Mask@0) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$) FullPerm)) (|PolymorphicMapType_6509_3207_3232#PolymorphicMapType_6509| Mask@0) (|PolymorphicMapType_6509_3207_645#PolymorphicMapType_6509| Mask@0) (|PolymorphicMapType_6509_3207_31719#PolymorphicMapType_6509| Mask@0) (|PolymorphicMapType_6509_3231_1216#PolymorphicMapType_6509| Mask@0) (|PolymorphicMapType_6509_3231_3210#PolymorphicMapType_6509| Mask@0) (|PolymorphicMapType_6509_3231_1201#PolymorphicMapType_6509| Mask@0) (|PolymorphicMapType_6509_3231_645#PolymorphicMapType_6509| Mask@0) (|PolymorphicMapType_6509_3231_32210#PolymorphicMapType_6509| Mask@0))) (state Heap@@36 Mask@1)) (and (=> (= (ControlFlow 0 18) (- 0 20)) (HasDirectPerm_3209_3210 Mask@1 this Testtk$)) (=> (HasDirectPerm_3209_3210 Mask@1 this Testtk$) (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_3205_1201 Mask@1 (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$)) (=> (HasDirectPerm_3205_1201 Mask@1 (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$) (=> (and (select (|PolymorphicMapType_6488_3074_53#PolymorphicMapType_6488| Heap@@36) (select (|PolymorphicMapType_6488_3077_3078#PolymorphicMapType_6488| Heap@@36) this Testtk$) joinable$) (state Heap@@36 Mask@1)) (and (=> (= (ControlFlow 0 18) 1) anon7_Then_correct) (=> (= (ControlFlow 0 18) 10) anon7_Else_correct))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23) 18) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 10) (- 13))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
