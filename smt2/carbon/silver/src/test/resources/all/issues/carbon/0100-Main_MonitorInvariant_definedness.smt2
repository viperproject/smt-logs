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
(declare-sort T@Field_4397_53 0)
(declare-sort T@Field_4410_4411 0)
(declare-sort T@Field_7856_7857 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_7809_1216 0)
(declare-sort T@Field_2272_2279 0)
(declare-sort T@Field_2272_7874 0)
(declare-sort T@Field_2278_2273 0)
(declare-sort T@Field_2278_53 0)
(declare-sort T@Field_2278_1216 0)
(declare-sort T@Field_7869_7874 0)
(declare-datatypes ((T@PolymorphicMapType_4358 0)) (((PolymorphicMapType_4358 (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| (Array T@Ref T@Field_7809_1216 Real)) (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| (Array T@Ref T@Field_4410_4411 Real)) (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| (Array T@Ref T@Field_7856_7857 Real)) (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| (Array T@Ref T@Field_2272_2279 Real)) (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| (Array T@Ref T@Field_4397_53 Real)) (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| (Array T@Ref T@Field_2272_7874 Real)) (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| (Array T@Ref T@Field_2278_1216 Real)) (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| (Array T@Ref T@Field_2278_2273 Real)) (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| (Array T@Ref T@Field_2278_53 Real)) (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| (Array T@Ref T@Field_7869_7874 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4886 0)) (((PolymorphicMapType_4886 (|PolymorphicMapType_4886_4397_53#PolymorphicMapType_4886| (Array T@Ref T@Field_4397_53 Bool)) (|PolymorphicMapType_4886_4397_4411#PolymorphicMapType_4886| (Array T@Ref T@Field_4410_4411 Bool)) (|PolymorphicMapType_4886_4397_1216#PolymorphicMapType_4886| (Array T@Ref T@Field_7809_1216 Bool)) (|PolymorphicMapType_4886_4397_7857#PolymorphicMapType_4886| (Array T@Ref T@Field_2272_2279 Bool)) (|PolymorphicMapType_4886_4397_16302#PolymorphicMapType_4886| (Array T@Ref T@Field_2272_7874 Bool)) (|PolymorphicMapType_4886_7856_53#PolymorphicMapType_4886| (Array T@Ref T@Field_2278_53 Bool)) (|PolymorphicMapType_4886_7856_4411#PolymorphicMapType_4886| (Array T@Ref T@Field_2278_2273 Bool)) (|PolymorphicMapType_4886_7856_1216#PolymorphicMapType_4886| (Array T@Ref T@Field_2278_1216 Bool)) (|PolymorphicMapType_4886_7856_7857#PolymorphicMapType_4886| (Array T@Ref T@Field_7856_7857 Bool)) (|PolymorphicMapType_4886_7856_17350#PolymorphicMapType_4886| (Array T@Ref T@Field_7869_7874 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4337 0)) (((PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| (Array T@Ref T@Field_4397_53 Bool)) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| (Array T@Ref T@Field_4410_4411 T@Ref)) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| (Array T@Ref T@Field_7856_7857 T@FrameType)) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| (Array T@Ref T@Field_7809_1216 Int)) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| (Array T@Ref T@Field_2272_2279 T@FrameType)) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| (Array T@Ref T@Field_2272_7874 T@PolymorphicMapType_4886)) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| (Array T@Ref T@Field_2278_2273 T@Ref)) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| (Array T@Ref T@Field_2278_53 Bool)) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| (Array T@Ref T@Field_2278_1216 Int)) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| (Array T@Ref T@Field_7869_7874 T@PolymorphicMapType_4886)) ) ) ))
(declare-fun $allocated () T@Field_4397_53)
(declare-fun mustReleaseBounded$ () T@Field_4410_4411)
(declare-fun mustReleaseUnbounded$ () T@Field_4410_4411)
(declare-fun Main$f () T@Field_7809_1216)
(declare-fun succHeap (T@PolymorphicMapType_4337 T@PolymorphicMapType_4337) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4337 T@PolymorphicMapType_4337) Bool)
(declare-fun state (T@PolymorphicMapType_4337 T@PolymorphicMapType_4358) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4358) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4886)
(declare-fun Main$MonitorInvariant (T@Ref) T@Field_7856_7857)
(declare-fun IsPredicateField_2278_2279 (T@Field_7856_7857) Bool)
(declare-fun |Main$MonitorInvariant#trigger_2278| (T@PolymorphicMapType_4337 T@Field_7856_7857) Bool)
(declare-fun |Main$MonitorInvariant#everUsed_2278| (T@Field_7856_7857) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4337 T@PolymorphicMapType_4337 T@PolymorphicMapType_4358) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2278 (T@Field_7856_7857) T@Field_7869_7874)
(declare-fun HasDirectPerm_2278_2279 (T@PolymorphicMapType_4358 T@Ref T@Field_7856_7857) Bool)
(declare-fun IsPredicateField_2272_14818 (T@Field_2272_2279) Bool)
(declare-fun PredicateMaskField_2272 (T@Field_2272_2279) T@Field_2272_7874)
(declare-fun HasDirectPerm_2272_2279 (T@PolymorphicMapType_4358 T@Ref T@Field_2272_2279) Bool)
(declare-fun IsWandField_2278_18515 (T@Field_7856_7857) Bool)
(declare-fun WandMaskField_2278 (T@Field_7856_7857) T@Field_7869_7874)
(declare-fun IsWandField_2272_18158 (T@Field_2272_2279) Bool)
(declare-fun WandMaskField_2272 (T@Field_2272_2279) T@Field_2272_7874)
(declare-fun |Main$MonitorInvariant#sm| (T@Ref) T@Field_7869_7874)
(declare-fun dummyHeap () T@PolymorphicMapType_4337)
(declare-fun ZeroMask () T@PolymorphicMapType_4358)
(declare-fun InsidePredicate_7856_7856 (T@Field_7856_7857 T@FrameType T@Field_7856_7857 T@FrameType) Bool)
(declare-fun InsidePredicate_4397_4397 (T@Field_2272_2279 T@FrameType T@Field_2272_2279 T@FrameType) Bool)
(declare-fun IsPredicateField_2269_2270 (T@Field_4410_4411) Bool)
(declare-fun IsWandField_2269_2270 (T@Field_4410_4411) Bool)
(declare-fun IsPredicateField_2275_1216 (T@Field_7809_1216) Bool)
(declare-fun IsWandField_2275_1216 (T@Field_7809_1216) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2278_25418 (T@Field_7869_7874) Bool)
(declare-fun IsWandField_2278_25434 (T@Field_7869_7874) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2278_53 (T@Field_2278_53) Bool)
(declare-fun IsWandField_2278_53 (T@Field_2278_53) Bool)
(declare-fun IsPredicateField_2278_2270 (T@Field_2278_2273) Bool)
(declare-fun IsWandField_2278_2270 (T@Field_2278_2273) Bool)
(declare-fun IsPredicateField_2278_1216 (T@Field_2278_1216) Bool)
(declare-fun IsWandField_2278_1216 (T@Field_2278_1216) Bool)
(declare-fun IsPredicateField_2275_24587 (T@Field_2272_7874) Bool)
(declare-fun IsWandField_2275_24603 (T@Field_2272_7874) Bool)
(declare-fun IsPredicateField_2275_53 (T@Field_4397_53) Bool)
(declare-fun IsWandField_2275_53 (T@Field_4397_53) Bool)
(declare-fun HasDirectPerm_2278_14530 (T@PolymorphicMapType_4358 T@Ref T@Field_7869_7874) Bool)
(declare-fun HasDirectPerm_2278_1216 (T@PolymorphicMapType_4358 T@Ref T@Field_2278_1216) Bool)
(declare-fun HasDirectPerm_2278_53 (T@PolymorphicMapType_4358 T@Ref T@Field_2278_53) Bool)
(declare-fun HasDirectPerm_2278_2273 (T@PolymorphicMapType_4358 T@Ref T@Field_2278_2273) Bool)
(declare-fun HasDirectPerm_2272_13389 (T@PolymorphicMapType_4358 T@Ref T@Field_2272_7874) Bool)
(declare-fun HasDirectPerm_2272_1216 (T@PolymorphicMapType_4358 T@Ref T@Field_7809_1216) Bool)
(declare-fun HasDirectPerm_2272_53 (T@PolymorphicMapType_4358 T@Ref T@Field_4397_53) Bool)
(declare-fun HasDirectPerm_2272_2273 (T@PolymorphicMapType_4358 T@Ref T@Field_4410_4411) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4358 T@PolymorphicMapType_4358 T@PolymorphicMapType_4358) Bool)
(declare-fun getPredWandId_2278_2279 (T@Field_7856_7857) Int)
(declare-fun InsidePredicate_7856_4397 (T@Field_7856_7857 T@FrameType T@Field_2272_2279 T@FrameType) Bool)
(declare-fun InsidePredicate_4397_7856 (T@Field_2272_2279 T@FrameType T@Field_7856_7857 T@FrameType) Bool)
(assert (distinct mustReleaseBounded$ mustReleaseUnbounded$)
)
(assert (forall ((Heap0 T@PolymorphicMapType_4337) (Heap1 T@PolymorphicMapType_4337) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4337) (Mask T@PolymorphicMapType_4358) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4337) (Heap1@@0 T@PolymorphicMapType_4337) (Heap2 T@PolymorphicMapType_4337) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7869_7874) ) (!  (not (select (|PolymorphicMapType_4886_7856_17350#PolymorphicMapType_4886| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4886_7856_17350#PolymorphicMapType_4886| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7856_7857) ) (!  (not (select (|PolymorphicMapType_4886_7856_7857#PolymorphicMapType_4886| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4886_7856_7857#PolymorphicMapType_4886| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_2278_1216) ) (!  (not (select (|PolymorphicMapType_4886_7856_1216#PolymorphicMapType_4886| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4886_7856_1216#PolymorphicMapType_4886| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_2278_2273) ) (!  (not (select (|PolymorphicMapType_4886_7856_4411#PolymorphicMapType_4886| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4886_7856_4411#PolymorphicMapType_4886| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_2278_53) ) (!  (not (select (|PolymorphicMapType_4886_7856_53#PolymorphicMapType_4886| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4886_7856_53#PolymorphicMapType_4886| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_2272_7874) ) (!  (not (select (|PolymorphicMapType_4886_4397_16302#PolymorphicMapType_4886| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4886_4397_16302#PolymorphicMapType_4886| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_2272_2279) ) (!  (not (select (|PolymorphicMapType_4886_4397_7857#PolymorphicMapType_4886| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4886_4397_7857#PolymorphicMapType_4886| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7809_1216) ) (!  (not (select (|PolymorphicMapType_4886_4397_1216#PolymorphicMapType_4886| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4886_4397_1216#PolymorphicMapType_4886| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_4410_4411) ) (!  (not (select (|PolymorphicMapType_4886_4397_4411#PolymorphicMapType_4886| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4886_4397_4411#PolymorphicMapType_4886| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_4397_53) ) (!  (not (select (|PolymorphicMapType_4886_4397_53#PolymorphicMapType_4886| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4886_4397_53#PolymorphicMapType_4886| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((this$_2 T@Ref) ) (! (IsPredicateField_2278_2279 (Main$MonitorInvariant this$_2))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (Main$MonitorInvariant this$_2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4337) (this$_2@@0 T@Ref) ) (! (|Main$MonitorInvariant#everUsed_2278| (Main$MonitorInvariant this$_2@@0))
 :qid |stdinbpl.220:15|
 :skolemid |27|
 :pattern ( (|Main$MonitorInvariant#trigger_2278| Heap@@0 (Main$MonitorInvariant this$_2@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4337) (ExhaleHeap T@PolymorphicMapType_4337) (Mask@@0 T@PolymorphicMapType_4358) (pm_f_26 T@Field_7856_7857) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2278_2279 Mask@@0 null pm_f_26) (IsPredicateField_2278_2279 pm_f_26)) (= (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@1) null (PredicateMaskField_2278 pm_f_26)) (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap) null (PredicateMaskField_2278 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_2278_2279 pm_f_26) (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap) null (PredicateMaskField_2278 pm_f_26)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4337) (ExhaleHeap@@0 T@PolymorphicMapType_4337) (Mask@@1 T@PolymorphicMapType_4358) (pm_f_26@@0 T@Field_2272_2279) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2272_2279 Mask@@1 null pm_f_26@@0) (IsPredicateField_2272_14818 pm_f_26@@0)) (= (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@2) null (PredicateMaskField_2272 pm_f_26@@0)) (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@0) null (PredicateMaskField_2272 pm_f_26@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2272_14818 pm_f_26@@0) (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@0) null (PredicateMaskField_2272 pm_f_26@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4337) (ExhaleHeap@@1 T@PolymorphicMapType_4337) (Mask@@2 T@PolymorphicMapType_4358) (pm_f_26@@1 T@Field_7856_7857) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_2278_2279 Mask@@2 null pm_f_26@@1) (IsWandField_2278_18515 pm_f_26@@1)) (= (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@3) null (WandMaskField_2278 pm_f_26@@1)) (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@1) null (WandMaskField_2278 pm_f_26@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_2278_18515 pm_f_26@@1) (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@1) null (WandMaskField_2278 pm_f_26@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4337) (ExhaleHeap@@2 T@PolymorphicMapType_4337) (Mask@@3 T@PolymorphicMapType_4358) (pm_f_26@@2 T@Field_2272_2279) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2272_2279 Mask@@3 null pm_f_26@@2) (IsWandField_2272_18158 pm_f_26@@2)) (= (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@4) null (WandMaskField_2272 pm_f_26@@2)) (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@2) null (WandMaskField_2272 pm_f_26@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_2272_18158 pm_f_26@@2) (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@2) null (WandMaskField_2272 pm_f_26@@2)))
)))
(assert (forall ((this$_2@@1 T@Ref) (this$_22 T@Ref) ) (!  (=> (= (Main$MonitorInvariant this$_2@@1) (Main$MonitorInvariant this$_22)) (= this$_2@@1 this$_22))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (Main$MonitorInvariant this$_2@@1) (Main$MonitorInvariant this$_22))
)))
(assert (forall ((this$_2@@2 T@Ref) (this$_22@@0 T@Ref) ) (!  (=> (= (|Main$MonitorInvariant#sm| this$_2@@2) (|Main$MonitorInvariant#sm| this$_22@@0)) (= this$_2@@2 this$_22@@0))
 :qid |stdinbpl.215:15|
 :skolemid |26|
 :pattern ( (|Main$MonitorInvariant#sm| this$_2@@2) (|Main$MonitorInvariant#sm| this$_22@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4337) (ExhaleHeap@@3 T@PolymorphicMapType_4337) (Mask@@4 T@PolymorphicMapType_4358) (pm_f_26@@3 T@Field_7856_7857) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_2278_2279 Mask@@4 null pm_f_26@@3) (IsPredicateField_2278_2279 pm_f_26@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_4397_53) ) (!  (=> (select (|PolymorphicMapType_4886_4397_53#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@5) null (PredicateMaskField_2278 pm_f_26@@3))) o2_26 f_51) (= (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@5) o2_26 f_51) (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_4410_4411) ) (!  (=> (select (|PolymorphicMapType_4886_4397_4411#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@5) null (PredicateMaskField_2278 pm_f_26@@3))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@5) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_7809_1216) ) (!  (=> (select (|PolymorphicMapType_4886_4397_1216#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@5) null (PredicateMaskField_2278 pm_f_26@@3))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@5) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_2272_2279) ) (!  (=> (select (|PolymorphicMapType_4886_4397_7857#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@5) null (PredicateMaskField_2278 pm_f_26@@3))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@5) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@2 f_51@@2))
))) (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_2272_7874) ) (!  (=> (select (|PolymorphicMapType_4886_4397_16302#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@5) null (PredicateMaskField_2278 pm_f_26@@3))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@5) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@3 f_51@@3))
))) (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_2278_53) ) (!  (=> (select (|PolymorphicMapType_4886_7856_53#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@5) null (PredicateMaskField_2278 pm_f_26@@3))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@5) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@4 f_51@@4))
))) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_2278_2273) ) (!  (=> (select (|PolymorphicMapType_4886_7856_4411#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@5) null (PredicateMaskField_2278 pm_f_26@@3))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@5) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_2278_1216) ) (!  (=> (select (|PolymorphicMapType_4886_7856_1216#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@5) null (PredicateMaskField_2278 pm_f_26@@3))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@5) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@6 f_51@@6))
))) (forall ((o2_26@@7 T@Ref) (f_51@@7 T@Field_7856_7857) ) (!  (=> (select (|PolymorphicMapType_4886_7856_7857#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@5) null (PredicateMaskField_2278 pm_f_26@@3))) o2_26@@7 f_51@@7) (= (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@5) o2_26@@7 f_51@@7) (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@7 f_51@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@7 f_51@@7))
))) (forall ((o2_26@@8 T@Ref) (f_51@@8 T@Field_7869_7874) ) (!  (=> (select (|PolymorphicMapType_4886_7856_17350#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@5) null (PredicateMaskField_2278 pm_f_26@@3))) o2_26@@8 f_51@@8) (= (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@5) o2_26@@8 f_51@@8) (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@8 f_51@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@3) o2_26@@8 f_51@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_2278_2279 pm_f_26@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4337) (ExhaleHeap@@4 T@PolymorphicMapType_4337) (Mask@@5 T@PolymorphicMapType_4358) (pm_f_26@@4 T@Field_2272_2279) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_2272_2279 Mask@@5 null pm_f_26@@4) (IsPredicateField_2272_14818 pm_f_26@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_26@@9 T@Ref) (f_51@@9 T@Field_4397_53) ) (!  (=> (select (|PolymorphicMapType_4886_4397_53#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@6) null (PredicateMaskField_2272 pm_f_26@@4))) o2_26@@9 f_51@@9) (= (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@6) o2_26@@9 f_51@@9) (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@9 f_51@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@9 f_51@@9))
)) (forall ((o2_26@@10 T@Ref) (f_51@@10 T@Field_4410_4411) ) (!  (=> (select (|PolymorphicMapType_4886_4397_4411#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@6) null (PredicateMaskField_2272 pm_f_26@@4))) o2_26@@10 f_51@@10) (= (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@6) o2_26@@10 f_51@@10) (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@10 f_51@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@10 f_51@@10))
))) (forall ((o2_26@@11 T@Ref) (f_51@@11 T@Field_7809_1216) ) (!  (=> (select (|PolymorphicMapType_4886_4397_1216#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@6) null (PredicateMaskField_2272 pm_f_26@@4))) o2_26@@11 f_51@@11) (= (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@6) o2_26@@11 f_51@@11) (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@11 f_51@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@11 f_51@@11))
))) (forall ((o2_26@@12 T@Ref) (f_51@@12 T@Field_2272_2279) ) (!  (=> (select (|PolymorphicMapType_4886_4397_7857#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@6) null (PredicateMaskField_2272 pm_f_26@@4))) o2_26@@12 f_51@@12) (= (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@6) o2_26@@12 f_51@@12) (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@12 f_51@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@12 f_51@@12))
))) (forall ((o2_26@@13 T@Ref) (f_51@@13 T@Field_2272_7874) ) (!  (=> (select (|PolymorphicMapType_4886_4397_16302#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@6) null (PredicateMaskField_2272 pm_f_26@@4))) o2_26@@13 f_51@@13) (= (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@6) o2_26@@13 f_51@@13) (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@13 f_51@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@13 f_51@@13))
))) (forall ((o2_26@@14 T@Ref) (f_51@@14 T@Field_2278_53) ) (!  (=> (select (|PolymorphicMapType_4886_7856_53#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@6) null (PredicateMaskField_2272 pm_f_26@@4))) o2_26@@14 f_51@@14) (= (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@6) o2_26@@14 f_51@@14) (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@14 f_51@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@14 f_51@@14))
))) (forall ((o2_26@@15 T@Ref) (f_51@@15 T@Field_2278_2273) ) (!  (=> (select (|PolymorphicMapType_4886_7856_4411#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@6) null (PredicateMaskField_2272 pm_f_26@@4))) o2_26@@15 f_51@@15) (= (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@6) o2_26@@15 f_51@@15) (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@15 f_51@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@15 f_51@@15))
))) (forall ((o2_26@@16 T@Ref) (f_51@@16 T@Field_2278_1216) ) (!  (=> (select (|PolymorphicMapType_4886_7856_1216#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@6) null (PredicateMaskField_2272 pm_f_26@@4))) o2_26@@16 f_51@@16) (= (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@6) o2_26@@16 f_51@@16) (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@16 f_51@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@16 f_51@@16))
))) (forall ((o2_26@@17 T@Ref) (f_51@@17 T@Field_7856_7857) ) (!  (=> (select (|PolymorphicMapType_4886_7856_7857#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@6) null (PredicateMaskField_2272 pm_f_26@@4))) o2_26@@17 f_51@@17) (= (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@6) o2_26@@17 f_51@@17) (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@17 f_51@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@17 f_51@@17))
))) (forall ((o2_26@@18 T@Ref) (f_51@@18 T@Field_7869_7874) ) (!  (=> (select (|PolymorphicMapType_4886_7856_17350#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@6) null (PredicateMaskField_2272 pm_f_26@@4))) o2_26@@18 f_51@@18) (= (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@6) o2_26@@18 f_51@@18) (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@18 f_51@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@4) o2_26@@18 f_51@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_2272_14818 pm_f_26@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4337) (ExhaleHeap@@5 T@PolymorphicMapType_4337) (Mask@@6 T@PolymorphicMapType_4358) (pm_f_26@@5 T@Field_7856_7857) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_2278_2279 Mask@@6 null pm_f_26@@5) (IsWandField_2278_18515 pm_f_26@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_26@@19 T@Ref) (f_51@@19 T@Field_4397_53) ) (!  (=> (select (|PolymorphicMapType_4886_4397_53#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@7) null (WandMaskField_2278 pm_f_26@@5))) o2_26@@19 f_51@@19) (= (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@7) o2_26@@19 f_51@@19) (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@19 f_51@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@19 f_51@@19))
)) (forall ((o2_26@@20 T@Ref) (f_51@@20 T@Field_4410_4411) ) (!  (=> (select (|PolymorphicMapType_4886_4397_4411#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@7) null (WandMaskField_2278 pm_f_26@@5))) o2_26@@20 f_51@@20) (= (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@7) o2_26@@20 f_51@@20) (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@20 f_51@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@20 f_51@@20))
))) (forall ((o2_26@@21 T@Ref) (f_51@@21 T@Field_7809_1216) ) (!  (=> (select (|PolymorphicMapType_4886_4397_1216#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@7) null (WandMaskField_2278 pm_f_26@@5))) o2_26@@21 f_51@@21) (= (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@7) o2_26@@21 f_51@@21) (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@21 f_51@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@21 f_51@@21))
))) (forall ((o2_26@@22 T@Ref) (f_51@@22 T@Field_2272_2279) ) (!  (=> (select (|PolymorphicMapType_4886_4397_7857#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@7) null (WandMaskField_2278 pm_f_26@@5))) o2_26@@22 f_51@@22) (= (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@7) o2_26@@22 f_51@@22) (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@22 f_51@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@22 f_51@@22))
))) (forall ((o2_26@@23 T@Ref) (f_51@@23 T@Field_2272_7874) ) (!  (=> (select (|PolymorphicMapType_4886_4397_16302#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@7) null (WandMaskField_2278 pm_f_26@@5))) o2_26@@23 f_51@@23) (= (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@7) o2_26@@23 f_51@@23) (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@23 f_51@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@23 f_51@@23))
))) (forall ((o2_26@@24 T@Ref) (f_51@@24 T@Field_2278_53) ) (!  (=> (select (|PolymorphicMapType_4886_7856_53#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@7) null (WandMaskField_2278 pm_f_26@@5))) o2_26@@24 f_51@@24) (= (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@7) o2_26@@24 f_51@@24) (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@24 f_51@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@24 f_51@@24))
))) (forall ((o2_26@@25 T@Ref) (f_51@@25 T@Field_2278_2273) ) (!  (=> (select (|PolymorphicMapType_4886_7856_4411#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@7) null (WandMaskField_2278 pm_f_26@@5))) o2_26@@25 f_51@@25) (= (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@7) o2_26@@25 f_51@@25) (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@25 f_51@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@25 f_51@@25))
))) (forall ((o2_26@@26 T@Ref) (f_51@@26 T@Field_2278_1216) ) (!  (=> (select (|PolymorphicMapType_4886_7856_1216#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@7) null (WandMaskField_2278 pm_f_26@@5))) o2_26@@26 f_51@@26) (= (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@7) o2_26@@26 f_51@@26) (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@26 f_51@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@26 f_51@@26))
))) (forall ((o2_26@@27 T@Ref) (f_51@@27 T@Field_7856_7857) ) (!  (=> (select (|PolymorphicMapType_4886_7856_7857#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@7) null (WandMaskField_2278 pm_f_26@@5))) o2_26@@27 f_51@@27) (= (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@7) o2_26@@27 f_51@@27) (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@27 f_51@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@27 f_51@@27))
))) (forall ((o2_26@@28 T@Ref) (f_51@@28 T@Field_7869_7874) ) (!  (=> (select (|PolymorphicMapType_4886_7856_17350#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@7) null (WandMaskField_2278 pm_f_26@@5))) o2_26@@28 f_51@@28) (= (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@7) o2_26@@28 f_51@@28) (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@28 f_51@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@5) o2_26@@28 f_51@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_2278_18515 pm_f_26@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4337) (ExhaleHeap@@6 T@PolymorphicMapType_4337) (Mask@@7 T@PolymorphicMapType_4358) (pm_f_26@@6 T@Field_2272_2279) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_2272_2279 Mask@@7 null pm_f_26@@6) (IsWandField_2272_18158 pm_f_26@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_26@@29 T@Ref) (f_51@@29 T@Field_4397_53) ) (!  (=> (select (|PolymorphicMapType_4886_4397_53#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@8) null (WandMaskField_2272 pm_f_26@@6))) o2_26@@29 f_51@@29) (= (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@8) o2_26@@29 f_51@@29) (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@29 f_51@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@29 f_51@@29))
)) (forall ((o2_26@@30 T@Ref) (f_51@@30 T@Field_4410_4411) ) (!  (=> (select (|PolymorphicMapType_4886_4397_4411#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@8) null (WandMaskField_2272 pm_f_26@@6))) o2_26@@30 f_51@@30) (= (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@8) o2_26@@30 f_51@@30) (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@30 f_51@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@30 f_51@@30))
))) (forall ((o2_26@@31 T@Ref) (f_51@@31 T@Field_7809_1216) ) (!  (=> (select (|PolymorphicMapType_4886_4397_1216#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@8) null (WandMaskField_2272 pm_f_26@@6))) o2_26@@31 f_51@@31) (= (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@8) o2_26@@31 f_51@@31) (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@31 f_51@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@31 f_51@@31))
))) (forall ((o2_26@@32 T@Ref) (f_51@@32 T@Field_2272_2279) ) (!  (=> (select (|PolymorphicMapType_4886_4397_7857#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@8) null (WandMaskField_2272 pm_f_26@@6))) o2_26@@32 f_51@@32) (= (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@8) o2_26@@32 f_51@@32) (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@32 f_51@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@32 f_51@@32))
))) (forall ((o2_26@@33 T@Ref) (f_51@@33 T@Field_2272_7874) ) (!  (=> (select (|PolymorphicMapType_4886_4397_16302#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@8) null (WandMaskField_2272 pm_f_26@@6))) o2_26@@33 f_51@@33) (= (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@8) o2_26@@33 f_51@@33) (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@33 f_51@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@33 f_51@@33))
))) (forall ((o2_26@@34 T@Ref) (f_51@@34 T@Field_2278_53) ) (!  (=> (select (|PolymorphicMapType_4886_7856_53#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@8) null (WandMaskField_2272 pm_f_26@@6))) o2_26@@34 f_51@@34) (= (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@8) o2_26@@34 f_51@@34) (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@34 f_51@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@34 f_51@@34))
))) (forall ((o2_26@@35 T@Ref) (f_51@@35 T@Field_2278_2273) ) (!  (=> (select (|PolymorphicMapType_4886_7856_4411#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@8) null (WandMaskField_2272 pm_f_26@@6))) o2_26@@35 f_51@@35) (= (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@8) o2_26@@35 f_51@@35) (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@35 f_51@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@35 f_51@@35))
))) (forall ((o2_26@@36 T@Ref) (f_51@@36 T@Field_2278_1216) ) (!  (=> (select (|PolymorphicMapType_4886_7856_1216#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@8) null (WandMaskField_2272 pm_f_26@@6))) o2_26@@36 f_51@@36) (= (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@8) o2_26@@36 f_51@@36) (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@36 f_51@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@36 f_51@@36))
))) (forall ((o2_26@@37 T@Ref) (f_51@@37 T@Field_7856_7857) ) (!  (=> (select (|PolymorphicMapType_4886_7856_7857#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@8) null (WandMaskField_2272 pm_f_26@@6))) o2_26@@37 f_51@@37) (= (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@8) o2_26@@37 f_51@@37) (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@37 f_51@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@37 f_51@@37))
))) (forall ((o2_26@@38 T@Ref) (f_51@@38 T@Field_7869_7874) ) (!  (=> (select (|PolymorphicMapType_4886_7856_17350#PolymorphicMapType_4886| (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@8) null (WandMaskField_2272 pm_f_26@@6))) o2_26@@38 f_51@@38) (= (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@8) o2_26@@38 f_51@@38) (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@38 f_51@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@6) o2_26@@38 f_51@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_2272_18158 pm_f_26@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4337) (ExhaleHeap@@7 T@PolymorphicMapType_4337) (Mask@@8 T@PolymorphicMapType_4358) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@9) o_38 $allocated) (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@7) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@7) o_38 $allocated))
)))
(assert (forall ((p T@Field_7856_7857) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7856_7856 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7856_7856 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_2272_2279) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4397_4397 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4397_4397 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2269_2270 mustReleaseBounded$)))
(assert  (not (IsWandField_2269_2270 mustReleaseBounded$)))
(assert  (not (IsPredicateField_2269_2270 mustReleaseUnbounded$)))
(assert  (not (IsWandField_2269_2270 mustReleaseUnbounded$)))
(assert  (not (IsPredicateField_2275_1216 Main$f)))
(assert  (not (IsWandField_2275_1216 Main$f)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4337) (ExhaleHeap@@8 T@PolymorphicMapType_4337) (Mask@@9 T@PolymorphicMapType_4358) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4358) (o_2@@9 T@Ref) (f_4@@9 T@Field_7869_7874) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2278_25418 f_4@@9))) (not (IsWandField_2278_25434 f_4@@9))) (<= (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4358) (o_2@@10 T@Ref) (f_4@@10 T@Field_2278_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2278_53 f_4@@10))) (not (IsWandField_2278_53 f_4@@10))) (<= (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4358) (o_2@@11 T@Ref) (f_4@@11 T@Field_7856_7857) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2278_2279 f_4@@11))) (not (IsWandField_2278_18515 f_4@@11))) (<= (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4358) (o_2@@12 T@Ref) (f_4@@12 T@Field_2278_2273) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2278_2270 f_4@@12))) (not (IsWandField_2278_2270 f_4@@12))) (<= (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4358) (o_2@@13 T@Ref) (f_4@@13 T@Field_2278_1216) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2278_1216 f_4@@13))) (not (IsWandField_2278_1216 f_4@@13))) (<= (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4358) (o_2@@14 T@Ref) (f_4@@14 T@Field_2272_7874) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2275_24587 f_4@@14))) (not (IsWandField_2275_24603 f_4@@14))) (<= (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4358) (o_2@@15 T@Ref) (f_4@@15 T@Field_4397_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2275_53 f_4@@15))) (not (IsWandField_2275_53 f_4@@15))) (<= (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4358) (o_2@@16 T@Ref) (f_4@@16 T@Field_2272_2279) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2272_14818 f_4@@16))) (not (IsWandField_2272_18158 f_4@@16))) (<= (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4358) (o_2@@17 T@Ref) (f_4@@17 T@Field_4410_4411) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2269_2270 f_4@@17))) (not (IsWandField_2269_2270 f_4@@17))) (<= (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4358) (o_2@@18 T@Ref) (f_4@@18 T@Field_7809_1216) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2275_1216 f_4@@18))) (not (IsWandField_2275_1216 f_4@@18))) (<= (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4358) (o_2@@19 T@Ref) (f_4@@19 T@Field_7869_7874) ) (! (= (HasDirectPerm_2278_14530 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2278_14530 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4358) (o_2@@20 T@Ref) (f_4@@20 T@Field_2278_1216) ) (! (= (HasDirectPerm_2278_1216 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2278_1216 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4358) (o_2@@21 T@Ref) (f_4@@21 T@Field_2278_53) ) (! (= (HasDirectPerm_2278_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2278_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4358) (o_2@@22 T@Ref) (f_4@@22 T@Field_7856_7857) ) (! (= (HasDirectPerm_2278_2279 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2278_2279 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4358) (o_2@@23 T@Ref) (f_4@@23 T@Field_2278_2273) ) (! (= (HasDirectPerm_2278_2273 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2278_2273 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4358) (o_2@@24 T@Ref) (f_4@@24 T@Field_2272_7874) ) (! (= (HasDirectPerm_2272_13389 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2272_13389 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4358) (o_2@@25 T@Ref) (f_4@@25 T@Field_7809_1216) ) (! (= (HasDirectPerm_2272_1216 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2272_1216 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4358) (o_2@@26 T@Ref) (f_4@@26 T@Field_4397_53) ) (! (= (HasDirectPerm_2272_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2272_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4358) (o_2@@27 T@Ref) (f_4@@27 T@Field_2272_2279) ) (! (= (HasDirectPerm_2272_2279 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2272_2279 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4358) (o_2@@28 T@Ref) (f_4@@28 T@Field_4410_4411) ) (! (= (HasDirectPerm_2272_2273 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2272_2273 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4337) (ExhaleHeap@@9 T@PolymorphicMapType_4337) (Mask@@30 T@PolymorphicMapType_4358) (o_38@@0 T@Ref) (f_51@@39 T@Field_7869_7874) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_2278_14530 Mask@@30 o_38@@0 f_51@@39) (= (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@11) o_38@@0 f_51@@39) (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@9) o_38@@0 f_51@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| ExhaleHeap@@9) o_38@@0 f_51@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4337) (ExhaleHeap@@10 T@PolymorphicMapType_4337) (Mask@@31 T@PolymorphicMapType_4358) (o_38@@1 T@Ref) (f_51@@40 T@Field_2278_1216) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_2278_1216 Mask@@31 o_38@@1 f_51@@40) (= (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@12) o_38@@1 f_51@@40) (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| ExhaleHeap@@10) o_38@@1 f_51@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| ExhaleHeap@@10) o_38@@1 f_51@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4337) (ExhaleHeap@@11 T@PolymorphicMapType_4337) (Mask@@32 T@PolymorphicMapType_4358) (o_38@@2 T@Ref) (f_51@@41 T@Field_2278_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_2278_53 Mask@@32 o_38@@2 f_51@@41) (= (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@13) o_38@@2 f_51@@41) (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| ExhaleHeap@@11) o_38@@2 f_51@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| ExhaleHeap@@11) o_38@@2 f_51@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4337) (ExhaleHeap@@12 T@PolymorphicMapType_4337) (Mask@@33 T@PolymorphicMapType_4358) (o_38@@3 T@Ref) (f_51@@42 T@Field_7856_7857) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_2278_2279 Mask@@33 o_38@@3 f_51@@42) (= (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@14) o_38@@3 f_51@@42) (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| ExhaleHeap@@12) o_38@@3 f_51@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| ExhaleHeap@@12) o_38@@3 f_51@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4337) (ExhaleHeap@@13 T@PolymorphicMapType_4337) (Mask@@34 T@PolymorphicMapType_4358) (o_38@@4 T@Ref) (f_51@@43 T@Field_2278_2273) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_2278_2273 Mask@@34 o_38@@4 f_51@@43) (= (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@15) o_38@@4 f_51@@43) (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| ExhaleHeap@@13) o_38@@4 f_51@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| ExhaleHeap@@13) o_38@@4 f_51@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4337) (ExhaleHeap@@14 T@PolymorphicMapType_4337) (Mask@@35 T@PolymorphicMapType_4358) (o_38@@5 T@Ref) (f_51@@44 T@Field_2272_7874) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_2272_13389 Mask@@35 o_38@@5 f_51@@44) (= (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@16) o_38@@5 f_51@@44) (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@14) o_38@@5 f_51@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| ExhaleHeap@@14) o_38@@5 f_51@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4337) (ExhaleHeap@@15 T@PolymorphicMapType_4337) (Mask@@36 T@PolymorphicMapType_4358) (o_38@@6 T@Ref) (f_51@@45 T@Field_7809_1216) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_2272_1216 Mask@@36 o_38@@6 f_51@@45) (= (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@17) o_38@@6 f_51@@45) (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| ExhaleHeap@@15) o_38@@6 f_51@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| ExhaleHeap@@15) o_38@@6 f_51@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4337) (ExhaleHeap@@16 T@PolymorphicMapType_4337) (Mask@@37 T@PolymorphicMapType_4358) (o_38@@7 T@Ref) (f_51@@46 T@Field_4397_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_2272_53 Mask@@37 o_38@@7 f_51@@46) (= (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@18) o_38@@7 f_51@@46) (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@16) o_38@@7 f_51@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| ExhaleHeap@@16) o_38@@7 f_51@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4337) (ExhaleHeap@@17 T@PolymorphicMapType_4337) (Mask@@38 T@PolymorphicMapType_4358) (o_38@@8 T@Ref) (f_51@@47 T@Field_2272_2279) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_2272_2279 Mask@@38 o_38@@8 f_51@@47) (= (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@19) o_38@@8 f_51@@47) (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| ExhaleHeap@@17) o_38@@8 f_51@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| ExhaleHeap@@17) o_38@@8 f_51@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4337) (ExhaleHeap@@18 T@PolymorphicMapType_4337) (Mask@@39 T@PolymorphicMapType_4358) (o_38@@9 T@Ref) (f_51@@48 T@Field_4410_4411) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_2272_2273 Mask@@39 o_38@@9 f_51@@48) (= (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@20) o_38@@9 f_51@@48) (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| ExhaleHeap@@18) o_38@@9 f_51@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| ExhaleHeap@@18) o_38@@9 f_51@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_7869_7874) ) (! (= (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_2278_53) ) (! (= (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_7856_7857) ) (! (= (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_2278_2273) ) (! (= (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_2278_1216) ) (! (= (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_2272_7874) ) (! (= (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4397_53) ) (! (= (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_2272_2279) ) (! (= (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4410_4411) ) (! (= (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_7809_1216) ) (! (= (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4358) (SummandMask1 T@PolymorphicMapType_4358) (SummandMask2 T@PolymorphicMapType_4358) (o_2@@39 T@Ref) (f_4@@39 T@Field_7869_7874) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4358_2278_23140#PolymorphicMapType_4358| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4358) (SummandMask1@@0 T@PolymorphicMapType_4358) (SummandMask2@@0 T@PolymorphicMapType_4358) (o_2@@40 T@Ref) (f_4@@40 T@Field_2278_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4358_2278_53#PolymorphicMapType_4358| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4358) (SummandMask1@@1 T@PolymorphicMapType_4358) (SummandMask2@@1 T@PolymorphicMapType_4358) (o_2@@41 T@Ref) (f_4@@41 T@Field_7856_7857) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4358_2278_2279#PolymorphicMapType_4358| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4358) (SummandMask1@@2 T@PolymorphicMapType_4358) (SummandMask2@@2 T@PolymorphicMapType_4358) (o_2@@42 T@Ref) (f_4@@42 T@Field_2278_2273) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4358_2278_2270#PolymorphicMapType_4358| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4358) (SummandMask1@@3 T@PolymorphicMapType_4358) (SummandMask2@@3 T@PolymorphicMapType_4358) (o_2@@43 T@Ref) (f_4@@43 T@Field_2278_1216) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4358_2278_1216#PolymorphicMapType_4358| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4358) (SummandMask1@@4 T@PolymorphicMapType_4358) (SummandMask2@@4 T@PolymorphicMapType_4358) (o_2@@44 T@Ref) (f_4@@44 T@Field_2272_7874) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4358_2275_22729#PolymorphicMapType_4358| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4358) (SummandMask1@@5 T@PolymorphicMapType_4358) (SummandMask2@@5 T@PolymorphicMapType_4358) (o_2@@45 T@Ref) (f_4@@45 T@Field_4397_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4358_2275_53#PolymorphicMapType_4358| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4358) (SummandMask1@@6 T@PolymorphicMapType_4358) (SummandMask2@@6 T@PolymorphicMapType_4358) (o_2@@46 T@Ref) (f_4@@46 T@Field_2272_2279) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4358_2275_2279#PolymorphicMapType_4358| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4358) (SummandMask1@@7 T@PolymorphicMapType_4358) (SummandMask2@@7 T@PolymorphicMapType_4358) (o_2@@47 T@Ref) (f_4@@47 T@Field_4410_4411) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4358_2269_2270#PolymorphicMapType_4358| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4358) (SummandMask1@@8 T@PolymorphicMapType_4358) (SummandMask2@@8 T@PolymorphicMapType_4358) (o_2@@48 T@Ref) (f_4@@48 T@Field_7809_1216) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4358_2275_1216#PolymorphicMapType_4358| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((this$_2@@3 T@Ref) ) (! (= (getPredWandId_2278_2279 (Main$MonitorInvariant this$_2@@3)) 0)
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (Main$MonitorInvariant this$_2@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4337) (o_56 T@Ref) (f_22 T@Field_7869_7874) (v T@PolymorphicMapType_4886) ) (! (succHeap Heap@@21 (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@21) (store (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@21) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@21) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@21) (store (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@21) o_56 f_22 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4337) (o_56@@0 T@Ref) (f_22@@0 T@Field_2278_1216) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@22) (store (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@22) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@22) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@22) (store (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@22) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4337) (o_56@@1 T@Ref) (f_22@@1 T@Field_7856_7857) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@23) (store (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@23) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@23) (store (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@23) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@23) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4337) (o_56@@2 T@Ref) (f_22@@2 T@Field_2278_2273) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@24) (store (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@24) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@24) (store (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@24) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@24) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4337) (o_56@@3 T@Ref) (f_22@@3 T@Field_2278_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@25) (store (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@25) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@25) (store (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@25) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@25) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4337) (o_56@@4 T@Ref) (f_22@@4 T@Field_2272_7874) (v@@4 T@PolymorphicMapType_4886) ) (! (succHeap Heap@@26 (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@26) (store (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@26) o_56@@4 f_22@@4 v@@4) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@26) (store (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@26) o_56@@4 f_22@@4 v@@4) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@26) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4337) (o_56@@5 T@Ref) (f_22@@5 T@Field_7809_1216) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@27) (store (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@27) o_56@@5 f_22@@5 v@@5) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@27) (store (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@27) o_56@@5 f_22@@5 v@@5) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@27) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4337) (o_56@@6 T@Ref) (f_22@@6 T@Field_2272_2279) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@28) (store (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@28) o_56@@6 f_22@@6 v@@6) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@28) (store (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@28) o_56@@6 f_22@@6 v@@6) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@28) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4337) (o_56@@7 T@Ref) (f_22@@7 T@Field_4410_4411) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@29) (store (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@29) o_56@@7 f_22@@7 v@@7) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4337 (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@29) (store (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@29) o_56@@7 f_22@@7 v@@7) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@29) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4337) (o_56@@8 T@Ref) (f_22@@8 T@Field_4397_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_4337 (store (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@30) o_56@@8 f_22@@8 v@@8) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4337 (store (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@30) o_56@@8 f_22@@8 v@@8) (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2278_2279#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2275_1216#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2272_2279#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2272_13431#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2278_2273#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2278_53#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2278_1216#PolymorphicMapType_4337| Heap@@30) (|PolymorphicMapType_4337_2278_14572#PolymorphicMapType_4337| Heap@@30)))
)))
(assert (forall ((this$_2@@4 T@Ref) ) (! (= (PredicateMaskField_2278 (Main$MonitorInvariant this$_2@@4)) (|Main$MonitorInvariant#sm| this$_2@@4))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_2278 (Main$MonitorInvariant this$_2@@4)))
)))
(assert (forall ((o_56@@9 T@Ref) (f_3 T@Field_4410_4411) (Heap@@31 T@PolymorphicMapType_4337) ) (!  (=> (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@31) o_56@@9 $allocated) (select (|PolymorphicMapType_4337_2141_53#PolymorphicMapType_4337| Heap@@31) (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@31) o_56@@9 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4337_2144_2145#PolymorphicMapType_4337| Heap@@31) o_56@@9 f_3))
)))
(assert (forall ((p@@2 T@Field_7856_7857) (v_1@@1 T@FrameType) (q T@Field_7856_7857) (w@@1 T@FrameType) (r T@Field_7856_7857) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7856_7856 p@@2 v_1@@1 q w@@1) (InsidePredicate_7856_7856 q w@@1 r u)) (InsidePredicate_7856_7856 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7856_7856 p@@2 v_1@@1 q w@@1) (InsidePredicate_7856_7856 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_7856_7857) (v_1@@2 T@FrameType) (q@@0 T@Field_7856_7857) (w@@2 T@FrameType) (r@@0 T@Field_2272_2279) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_7856_7856 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7856_4397 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_7856_4397 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7856_7856 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7856_4397 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_7856_7857) (v_1@@3 T@FrameType) (q@@1 T@Field_2272_2279) (w@@3 T@FrameType) (r@@1 T@Field_7856_7857) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_7856_4397 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4397_7856 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_7856_7856 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7856_4397 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4397_7856 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_7856_7857) (v_1@@4 T@FrameType) (q@@2 T@Field_2272_2279) (w@@4 T@FrameType) (r@@2 T@Field_2272_2279) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_7856_4397 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4397_4397 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_7856_4397 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7856_4397 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4397_4397 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_2272_2279) (v_1@@5 T@FrameType) (q@@3 T@Field_7856_7857) (w@@5 T@FrameType) (r@@3 T@Field_7856_7857) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4397_7856 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7856_7856 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4397_7856 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4397_7856 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7856_7856 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_2272_2279) (v_1@@6 T@FrameType) (q@@4 T@Field_7856_7857) (w@@6 T@FrameType) (r@@4 T@Field_2272_2279) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4397_7856 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7856_4397 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4397_4397 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4397_7856 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7856_4397 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_2272_2279) (v_1@@7 T@FrameType) (q@@5 T@Field_2272_2279) (w@@7 T@FrameType) (r@@5 T@Field_7856_7857) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4397_4397 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4397_7856 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4397_7856 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4397_4397 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4397_7856 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_2272_2279) (v_1@@8 T@FrameType) (q@@6 T@Field_2272_2279) (w@@8 T@FrameType) (r@@6 T@Field_2272_2279) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4397_4397 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4397_4397 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4397_4397 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4397_4397 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4397_4397 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |Main$MonitorInvariant#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
