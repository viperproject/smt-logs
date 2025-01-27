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
(declare-sort T@Field_4320_53 0)
(declare-sort T@Field_4333_4334 0)
(declare-sort T@Field_7693_7694 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_7646_1186 0)
(declare-sort T@Field_7706_7711 0)
(declare-sort T@Field_2230_7694 0)
(declare-sort T@Field_2230_7711 0)
(declare-sort T@Field_7693_1186 0)
(declare-sort T@Field_7693_53 0)
(declare-sort T@Field_7693_4334 0)
(declare-datatypes ((T@PolymorphicMapType_4281 0)) (((PolymorphicMapType_4281 (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| (Array T@Ref T@Field_7646_1186 Real)) (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| (Array T@Ref T@Field_7693_7694 Real)) (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| (Array T@Ref T@Field_2230_7694 Real)) (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| (Array T@Ref T@Field_4320_53 Real)) (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| (Array T@Ref T@Field_4333_4334 Real)) (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| (Array T@Ref T@Field_2230_7711 Real)) (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| (Array T@Ref T@Field_7693_1186 Real)) (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| (Array T@Ref T@Field_7693_53 Real)) (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| (Array T@Ref T@Field_7693_4334 Real)) (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| (Array T@Ref T@Field_7706_7711 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4809 0)) (((PolymorphicMapType_4809 (|PolymorphicMapType_4809_2230_1186#PolymorphicMapType_4809| (Array T@Ref T@Field_7646_1186 Bool)) (|PolymorphicMapType_4809_2230_53#PolymorphicMapType_4809| (Array T@Ref T@Field_4320_53 Bool)) (|PolymorphicMapType_4809_2230_4334#PolymorphicMapType_4809| (Array T@Ref T@Field_4333_4334 Bool)) (|PolymorphicMapType_4809_2230_7694#PolymorphicMapType_4809| (Array T@Ref T@Field_2230_7694 Bool)) (|PolymorphicMapType_4809_2230_16323#PolymorphicMapType_4809| (Array T@Ref T@Field_2230_7711 Bool)) (|PolymorphicMapType_4809_7693_1186#PolymorphicMapType_4809| (Array T@Ref T@Field_7693_1186 Bool)) (|PolymorphicMapType_4809_7693_53#PolymorphicMapType_4809| (Array T@Ref T@Field_7693_53 Bool)) (|PolymorphicMapType_4809_7693_4334#PolymorphicMapType_4809| (Array T@Ref T@Field_7693_4334 Bool)) (|PolymorphicMapType_4809_7693_7694#PolymorphicMapType_4809| (Array T@Ref T@Field_7693_7694 Bool)) (|PolymorphicMapType_4809_7693_17371#PolymorphicMapType_4809| (Array T@Ref T@Field_7706_7711 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4260 0)) (((PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| (Array T@Ref T@Field_4320_53 Bool)) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| (Array T@Ref T@Field_4333_4334 T@Ref)) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| (Array T@Ref T@Field_7693_7694 T@FrameType)) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| (Array T@Ref T@Field_7646_1186 Int)) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| (Array T@Ref T@Field_7706_7711 T@PolymorphicMapType_4809)) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| (Array T@Ref T@Field_2230_7694 T@FrameType)) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| (Array T@Ref T@Field_2230_7711 T@PolymorphicMapType_4809)) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| (Array T@Ref T@Field_7693_1186 Int)) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| (Array T@Ref T@Field_7693_53 Bool)) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| (Array T@Ref T@Field_7693_4334 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_4320_53)
(declare-fun Testx$ () T@Field_7646_1186)
(declare-fun succHeap (T@PolymorphicMapType_4260 T@PolymorphicMapType_4260) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4260 T@PolymorphicMapType_4260) Bool)
(declare-fun state (T@PolymorphicMapType_4260 T@PolymorphicMapType_4281) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4281) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4809)
(declare-fun TestP$ (T@Ref) T@Field_7693_7694)
(declare-fun IsPredicateField_2233_2234 (T@Field_7693_7694) Bool)
(declare-fun |TestP$#trigger_2233| (T@PolymorphicMapType_4260 T@Field_7693_7694) Bool)
(declare-fun |TestP$#everUsed_2233| (T@Field_7693_7694) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4260 T@PolymorphicMapType_4260 T@PolymorphicMapType_4281) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2233 (T@Field_7693_7694) T@Field_7706_7711)
(declare-fun HasDirectPerm_7693_7694 (T@PolymorphicMapType_4281 T@Ref T@Field_7693_7694) Bool)
(declare-fun IsPredicateField_2230_14851 (T@Field_2230_7694) Bool)
(declare-fun PredicateMaskField_2230 (T@Field_2230_7694) T@Field_2230_7711)
(declare-fun HasDirectPerm_2230_7694 (T@PolymorphicMapType_4281 T@Ref T@Field_2230_7694) Bool)
(declare-fun IsWandField_7693_18536 (T@Field_7693_7694) Bool)
(declare-fun WandMaskField_7693 (T@Field_7693_7694) T@Field_7706_7711)
(declare-fun IsWandField_2230_18179 (T@Field_2230_7694) Bool)
(declare-fun WandMaskField_2230 (T@Field_2230_7694) T@Field_2230_7711)
(declare-fun |TestP$#sm| (T@Ref) T@Field_7706_7711)
(declare-fun dummyHeap () T@PolymorphicMapType_4260)
(declare-fun ZeroMask () T@PolymorphicMapType_4281)
(declare-fun InsidePredicate_7693_7693 (T@Field_7693_7694 T@FrameType T@Field_7693_7694 T@FrameType) Bool)
(declare-fun InsidePredicate_4320_4320 (T@Field_2230_7694 T@FrameType T@Field_2230_7694 T@FrameType) Bool)
(declare-fun IsPredicateField_2230_1186 (T@Field_7646_1186) Bool)
(declare-fun IsWandField_2230_1186 (T@Field_7646_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2233_25468 (T@Field_7706_7711) Bool)
(declare-fun IsWandField_2233_25484 (T@Field_7706_7711) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2233_4334 (T@Field_7693_4334) Bool)
(declare-fun IsWandField_2233_4334 (T@Field_7693_4334) Bool)
(declare-fun IsPredicateField_2233_53 (T@Field_7693_53) Bool)
(declare-fun IsWandField_2233_53 (T@Field_7693_53) Bool)
(declare-fun IsPredicateField_2233_1186 (T@Field_7693_1186) Bool)
(declare-fun IsWandField_2233_1186 (T@Field_7693_1186) Bool)
(declare-fun IsPredicateField_2230_24637 (T@Field_2230_7711) Bool)
(declare-fun IsWandField_2230_24653 (T@Field_2230_7711) Bool)
(declare-fun IsPredicateField_2230_4334 (T@Field_4333_4334) Bool)
(declare-fun IsWandField_2230_4334 (T@Field_4333_4334) Bool)
(declare-fun IsPredicateField_2230_53 (T@Field_4320_53) Bool)
(declare-fun IsWandField_2230_53 (T@Field_4320_53) Bool)
(declare-fun HasDirectPerm_7693_14606 (T@PolymorphicMapType_4281 T@Ref T@Field_7706_7711) Bool)
(declare-fun HasDirectPerm_7693_4334 (T@PolymorphicMapType_4281 T@Ref T@Field_7693_4334) Bool)
(declare-fun HasDirectPerm_7693_53 (T@PolymorphicMapType_4281 T@Ref T@Field_7693_53) Bool)
(declare-fun HasDirectPerm_7693_1186 (T@PolymorphicMapType_4281 T@Ref T@Field_7693_1186) Bool)
(declare-fun HasDirectPerm_2230_13445 (T@PolymorphicMapType_4281 T@Ref T@Field_2230_7711) Bool)
(declare-fun HasDirectPerm_2230_4334 (T@PolymorphicMapType_4281 T@Ref T@Field_4333_4334) Bool)
(declare-fun HasDirectPerm_2230_53 (T@PolymorphicMapType_4281 T@Ref T@Field_4320_53) Bool)
(declare-fun HasDirectPerm_2230_1186 (T@PolymorphicMapType_4281 T@Ref T@Field_7646_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4281 T@PolymorphicMapType_4281 T@PolymorphicMapType_4281) Bool)
(declare-fun getPredWandId_2233_2234 (T@Field_7693_7694) Int)
(declare-fun InsidePredicate_7693_4320 (T@Field_7693_7694 T@FrameType T@Field_2230_7694 T@FrameType) Bool)
(declare-fun InsidePredicate_4320_7693 (T@Field_2230_7694 T@FrameType T@Field_7693_7694 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4260) (Heap1 T@PolymorphicMapType_4260) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4260) (Mask T@PolymorphicMapType_4281) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4260) (Heap1@@0 T@PolymorphicMapType_4260) (Heap2 T@PolymorphicMapType_4260) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7706_7711) ) (!  (not (select (|PolymorphicMapType_4809_7693_17371#PolymorphicMapType_4809| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4809_7693_17371#PolymorphicMapType_4809| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7693_7694) ) (!  (not (select (|PolymorphicMapType_4809_7693_7694#PolymorphicMapType_4809| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4809_7693_7694#PolymorphicMapType_4809| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7693_4334) ) (!  (not (select (|PolymorphicMapType_4809_7693_4334#PolymorphicMapType_4809| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4809_7693_4334#PolymorphicMapType_4809| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7693_53) ) (!  (not (select (|PolymorphicMapType_4809_7693_53#PolymorphicMapType_4809| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4809_7693_53#PolymorphicMapType_4809| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7693_1186) ) (!  (not (select (|PolymorphicMapType_4809_7693_1186#PolymorphicMapType_4809| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4809_7693_1186#PolymorphicMapType_4809| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_2230_7711) ) (!  (not (select (|PolymorphicMapType_4809_2230_16323#PolymorphicMapType_4809| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4809_2230_16323#PolymorphicMapType_4809| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_2230_7694) ) (!  (not (select (|PolymorphicMapType_4809_2230_7694#PolymorphicMapType_4809| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4809_2230_7694#PolymorphicMapType_4809| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_4333_4334) ) (!  (not (select (|PolymorphicMapType_4809_2230_4334#PolymorphicMapType_4809| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4809_2230_4334#PolymorphicMapType_4809| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_4320_53) ) (!  (not (select (|PolymorphicMapType_4809_2230_53#PolymorphicMapType_4809| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4809_2230_53#PolymorphicMapType_4809| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7646_1186) ) (!  (not (select (|PolymorphicMapType_4809_2230_1186#PolymorphicMapType_4809| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4809_2230_1186#PolymorphicMapType_4809| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_2233_2234 (TestP$ this))
 :qid |stdinbpl.195:15|
 :skolemid |23|
 :pattern ( (TestP$ this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4260) (this@@0 T@Ref) ) (! (|TestP$#everUsed_2233| (TestP$ this@@0))
 :qid |stdinbpl.214:15|
 :skolemid |27|
 :pattern ( (|TestP$#trigger_2233| Heap@@0 (TestP$ this@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4260) (ExhaleHeap T@PolymorphicMapType_4260) (Mask@@0 T@PolymorphicMapType_4281) (pm_f T@Field_7693_7694) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7693_7694 Mask@@0 null pm_f) (IsPredicateField_2233_2234 pm_f)) (= (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@1) null (PredicateMaskField_2233 pm_f)) (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap) null (PredicateMaskField_2233 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_2233_2234 pm_f) (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap) null (PredicateMaskField_2233 pm_f)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4260) (ExhaleHeap@@0 T@PolymorphicMapType_4260) (Mask@@1 T@PolymorphicMapType_4281) (pm_f@@0 T@Field_2230_7694) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2230_7694 Mask@@1 null pm_f@@0) (IsPredicateField_2230_14851 pm_f@@0)) (= (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@2) null (PredicateMaskField_2230 pm_f@@0)) (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@0) null (PredicateMaskField_2230 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2230_14851 pm_f@@0) (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@0) null (PredicateMaskField_2230 pm_f@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4260) (ExhaleHeap@@1 T@PolymorphicMapType_4260) (Mask@@2 T@PolymorphicMapType_4281) (pm_f@@1 T@Field_7693_7694) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7693_7694 Mask@@2 null pm_f@@1) (IsWandField_7693_18536 pm_f@@1)) (= (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@3) null (WandMaskField_7693 pm_f@@1)) (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@1) null (WandMaskField_7693 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_7693_18536 pm_f@@1) (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@1) null (WandMaskField_7693 pm_f@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4260) (ExhaleHeap@@2 T@PolymorphicMapType_4260) (Mask@@3 T@PolymorphicMapType_4281) (pm_f@@2 T@Field_2230_7694) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2230_7694 Mask@@3 null pm_f@@2) (IsWandField_2230_18179 pm_f@@2)) (= (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@4) null (WandMaskField_2230 pm_f@@2)) (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@2) null (WandMaskField_2230 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_2230_18179 pm_f@@2) (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@2) null (WandMaskField_2230 pm_f@@2)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (TestP$ this@@1) (TestP$ this2)) (= this@@1 this2))
 :qid |stdinbpl.205:15|
 :skolemid |25|
 :pattern ( (TestP$ this@@1) (TestP$ this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|TestP$#sm| this@@2) (|TestP$#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.209:15|
 :skolemid |26|
 :pattern ( (|TestP$#sm| this@@2) (|TestP$#sm| this2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4260) (ExhaleHeap@@3 T@PolymorphicMapType_4260) (Mask@@4 T@PolymorphicMapType_4281) (pm_f@@3 T@Field_7693_7694) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7693_7694 Mask@@4 null pm_f@@3) (IsPredicateField_2233_2234 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_7646_1186) ) (!  (=> (select (|PolymorphicMapType_4809_2230_1186#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@5) null (PredicateMaskField_2233 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@5) o2 f_2) (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4320_53) ) (!  (=> (select (|PolymorphicMapType_4809_2230_53#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@5) null (PredicateMaskField_2233 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@5) o2@@0 f_2@@0) (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4333_4334) ) (!  (=> (select (|PolymorphicMapType_4809_2230_4334#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@5) null (PredicateMaskField_2233 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@5) o2@@1 f_2@@1) (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_2230_7694) ) (!  (=> (select (|PolymorphicMapType_4809_2230_7694#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@5) null (PredicateMaskField_2233 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@5) o2@@2 f_2@@2) (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_2230_7711) ) (!  (=> (select (|PolymorphicMapType_4809_2230_16323#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@5) null (PredicateMaskField_2233 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_7693_1186) ) (!  (=> (select (|PolymorphicMapType_4809_7693_1186#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@5) null (PredicateMaskField_2233 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_7693_53) ) (!  (=> (select (|PolymorphicMapType_4809_7693_53#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@5) null (PredicateMaskField_2233 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_7693_4334) ) (!  (=> (select (|PolymorphicMapType_4809_7693_4334#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@5) null (PredicateMaskField_2233 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_7693_7694) ) (!  (=> (select (|PolymorphicMapType_4809_7693_7694#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@5) null (PredicateMaskField_2233 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_7706_7711) ) (!  (=> (select (|PolymorphicMapType_4809_7693_17371#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@5) null (PredicateMaskField_2233 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_2233_2234 pm_f@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4260) (ExhaleHeap@@4 T@PolymorphicMapType_4260) (Mask@@5 T@PolymorphicMapType_4281) (pm_f@@4 T@Field_2230_7694) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_2230_7694 Mask@@5 null pm_f@@4) (IsPredicateField_2230_14851 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_7646_1186) ) (!  (=> (select (|PolymorphicMapType_4809_2230_1186#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@6) null (PredicateMaskField_2230 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@6) o2@@9 f_2@@9) (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_4320_53) ) (!  (=> (select (|PolymorphicMapType_4809_2230_53#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@6) null (PredicateMaskField_2230 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@6) o2@@10 f_2@@10) (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_4333_4334) ) (!  (=> (select (|PolymorphicMapType_4809_2230_4334#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@6) null (PredicateMaskField_2230 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@6) o2@@11 f_2@@11) (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_2230_7694) ) (!  (=> (select (|PolymorphicMapType_4809_2230_7694#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@6) null (PredicateMaskField_2230 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@6) o2@@12 f_2@@12) (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_2230_7711) ) (!  (=> (select (|PolymorphicMapType_4809_2230_16323#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@6) null (PredicateMaskField_2230 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@6) o2@@13 f_2@@13) (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_7693_1186) ) (!  (=> (select (|PolymorphicMapType_4809_7693_1186#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@6) null (PredicateMaskField_2230 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@6) o2@@14 f_2@@14) (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_7693_53) ) (!  (=> (select (|PolymorphicMapType_4809_7693_53#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@6) null (PredicateMaskField_2230 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@6) o2@@15 f_2@@15) (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_7693_4334) ) (!  (=> (select (|PolymorphicMapType_4809_7693_4334#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@6) null (PredicateMaskField_2230 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@6) o2@@16 f_2@@16) (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_7693_7694) ) (!  (=> (select (|PolymorphicMapType_4809_7693_7694#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@6) null (PredicateMaskField_2230 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@6) o2@@17 f_2@@17) (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_7706_7711) ) (!  (=> (select (|PolymorphicMapType_4809_7693_17371#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@6) null (PredicateMaskField_2230 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@6) o2@@18 f_2@@18) (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_2230_14851 pm_f@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4260) (ExhaleHeap@@5 T@PolymorphicMapType_4260) (Mask@@6 T@PolymorphicMapType_4281) (pm_f@@5 T@Field_7693_7694) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7693_7694 Mask@@6 null pm_f@@5) (IsWandField_7693_18536 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_7646_1186) ) (!  (=> (select (|PolymorphicMapType_4809_2230_1186#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@7) null (WandMaskField_7693 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@7) o2@@19 f_2@@19) (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_4320_53) ) (!  (=> (select (|PolymorphicMapType_4809_2230_53#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@7) null (WandMaskField_7693 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@7) o2@@20 f_2@@20) (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_4333_4334) ) (!  (=> (select (|PolymorphicMapType_4809_2230_4334#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@7) null (WandMaskField_7693 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@7) o2@@21 f_2@@21) (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_2230_7694) ) (!  (=> (select (|PolymorphicMapType_4809_2230_7694#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@7) null (WandMaskField_7693 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@7) o2@@22 f_2@@22) (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_2230_7711) ) (!  (=> (select (|PolymorphicMapType_4809_2230_16323#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@7) null (WandMaskField_7693 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@7) o2@@23 f_2@@23) (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_7693_1186) ) (!  (=> (select (|PolymorphicMapType_4809_7693_1186#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@7) null (WandMaskField_7693 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@7) o2@@24 f_2@@24) (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_7693_53) ) (!  (=> (select (|PolymorphicMapType_4809_7693_53#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@7) null (WandMaskField_7693 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@7) o2@@25 f_2@@25) (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_7693_4334) ) (!  (=> (select (|PolymorphicMapType_4809_7693_4334#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@7) null (WandMaskField_7693 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@7) o2@@26 f_2@@26) (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_7693_7694) ) (!  (=> (select (|PolymorphicMapType_4809_7693_7694#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@7) null (WandMaskField_7693 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@7) o2@@27 f_2@@27) (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_7706_7711) ) (!  (=> (select (|PolymorphicMapType_4809_7693_17371#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@7) null (WandMaskField_7693 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@7) o2@@28 f_2@@28) (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_7693_18536 pm_f@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4260) (ExhaleHeap@@6 T@PolymorphicMapType_4260) (Mask@@7 T@PolymorphicMapType_4281) (pm_f@@6 T@Field_2230_7694) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_2230_7694 Mask@@7 null pm_f@@6) (IsWandField_2230_18179 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_7646_1186) ) (!  (=> (select (|PolymorphicMapType_4809_2230_1186#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@8) null (WandMaskField_2230 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@8) o2@@29 f_2@@29) (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_4320_53) ) (!  (=> (select (|PolymorphicMapType_4809_2230_53#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@8) null (WandMaskField_2230 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@8) o2@@30 f_2@@30) (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_4333_4334) ) (!  (=> (select (|PolymorphicMapType_4809_2230_4334#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@8) null (WandMaskField_2230 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@8) o2@@31 f_2@@31) (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_2230_7694) ) (!  (=> (select (|PolymorphicMapType_4809_2230_7694#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@8) null (WandMaskField_2230 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@8) o2@@32 f_2@@32) (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_2230_7711) ) (!  (=> (select (|PolymorphicMapType_4809_2230_16323#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@8) null (WandMaskField_2230 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@8) o2@@33 f_2@@33) (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_7693_1186) ) (!  (=> (select (|PolymorphicMapType_4809_7693_1186#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@8) null (WandMaskField_2230 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@8) o2@@34 f_2@@34) (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_7693_53) ) (!  (=> (select (|PolymorphicMapType_4809_7693_53#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@8) null (WandMaskField_2230 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@8) o2@@35 f_2@@35) (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_7693_4334) ) (!  (=> (select (|PolymorphicMapType_4809_7693_4334#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@8) null (WandMaskField_2230 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@8) o2@@36 f_2@@36) (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_7693_7694) ) (!  (=> (select (|PolymorphicMapType_4809_7693_7694#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@8) null (WandMaskField_2230 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@8) o2@@37 f_2@@37) (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_7706_7711) ) (!  (=> (select (|PolymorphicMapType_4809_7693_17371#PolymorphicMapType_4809| (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@8) null (WandMaskField_2230 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@8) o2@@38 f_2@@38) (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_2230_18179 pm_f@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4260) (ExhaleHeap@@7 T@PolymorphicMapType_4260) (Mask@@8 T@PolymorphicMapType_4281) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@9) o_1 $allocated) (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_7693_7694) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7693_7693 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7693_7693 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_2230_7694) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4320_4320 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4320_4320 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2230_1186 Testx$)))
(assert  (not (IsWandField_2230_1186 Testx$)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4260) (ExhaleHeap@@8 T@PolymorphicMapType_4260) (Mask@@9 T@PolymorphicMapType_4281) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4281) (o_2@@9 T@Ref) (f_4@@9 T@Field_7706_7711) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2233_25468 f_4@@9))) (not (IsWandField_2233_25484 f_4@@9))) (<= (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4281) (o_2@@10 T@Ref) (f_4@@10 T@Field_7693_4334) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2233_4334 f_4@@10))) (not (IsWandField_2233_4334 f_4@@10))) (<= (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4281) (o_2@@11 T@Ref) (f_4@@11 T@Field_7693_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2233_53 f_4@@11))) (not (IsWandField_2233_53 f_4@@11))) (<= (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4281) (o_2@@12 T@Ref) (f_4@@12 T@Field_7693_7694) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2233_2234 f_4@@12))) (not (IsWandField_7693_18536 f_4@@12))) (<= (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4281) (o_2@@13 T@Ref) (f_4@@13 T@Field_7693_1186) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2233_1186 f_4@@13))) (not (IsWandField_2233_1186 f_4@@13))) (<= (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4281) (o_2@@14 T@Ref) (f_4@@14 T@Field_2230_7711) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2230_24637 f_4@@14))) (not (IsWandField_2230_24653 f_4@@14))) (<= (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4281) (o_2@@15 T@Ref) (f_4@@15 T@Field_4333_4334) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2230_4334 f_4@@15))) (not (IsWandField_2230_4334 f_4@@15))) (<= (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4281) (o_2@@16 T@Ref) (f_4@@16 T@Field_4320_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2230_53 f_4@@16))) (not (IsWandField_2230_53 f_4@@16))) (<= (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4281) (o_2@@17 T@Ref) (f_4@@17 T@Field_2230_7694) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2230_14851 f_4@@17))) (not (IsWandField_2230_18179 f_4@@17))) (<= (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4281) (o_2@@18 T@Ref) (f_4@@18 T@Field_7646_1186) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2230_1186 f_4@@18))) (not (IsWandField_2230_1186 f_4@@18))) (<= (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4281) (o_2@@19 T@Ref) (f_4@@19 T@Field_7706_7711) ) (! (= (HasDirectPerm_7693_14606 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7693_14606 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4281) (o_2@@20 T@Ref) (f_4@@20 T@Field_7693_7694) ) (! (= (HasDirectPerm_7693_7694 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7693_7694 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4281) (o_2@@21 T@Ref) (f_4@@21 T@Field_7693_4334) ) (! (= (HasDirectPerm_7693_4334 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7693_4334 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4281) (o_2@@22 T@Ref) (f_4@@22 T@Field_7693_53) ) (! (= (HasDirectPerm_7693_53 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7693_53 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4281) (o_2@@23 T@Ref) (f_4@@23 T@Field_7693_1186) ) (! (= (HasDirectPerm_7693_1186 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7693_1186 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4281) (o_2@@24 T@Ref) (f_4@@24 T@Field_2230_7711) ) (! (= (HasDirectPerm_2230_13445 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2230_13445 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4281) (o_2@@25 T@Ref) (f_4@@25 T@Field_2230_7694) ) (! (= (HasDirectPerm_2230_7694 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2230_7694 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4281) (o_2@@26 T@Ref) (f_4@@26 T@Field_4333_4334) ) (! (= (HasDirectPerm_2230_4334 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2230_4334 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4281) (o_2@@27 T@Ref) (f_4@@27 T@Field_4320_53) ) (! (= (HasDirectPerm_2230_53 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2230_53 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4281) (o_2@@28 T@Ref) (f_4@@28 T@Field_7646_1186) ) (! (= (HasDirectPerm_2230_1186 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2230_1186 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4260) (ExhaleHeap@@9 T@PolymorphicMapType_4260) (Mask@@30 T@PolymorphicMapType_4281) (o_1@@0 T@Ref) (f_2@@39 T@Field_7706_7711) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_7693_14606 Mask@@30 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@11) o_1@@0 f_2@@39) (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4260) (ExhaleHeap@@10 T@PolymorphicMapType_4260) (Mask@@31 T@PolymorphicMapType_4281) (o_1@@1 T@Ref) (f_2@@40 T@Field_7693_7694) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_7693_7694 Mask@@31 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@12) o_1@@1 f_2@@40) (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4260) (ExhaleHeap@@11 T@PolymorphicMapType_4260) (Mask@@32 T@PolymorphicMapType_4281) (o_1@@2 T@Ref) (f_2@@41 T@Field_7693_4334) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_7693_4334 Mask@@32 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@13) o_1@@2 f_2@@41) (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4260) (ExhaleHeap@@12 T@PolymorphicMapType_4260) (Mask@@33 T@PolymorphicMapType_4281) (o_1@@3 T@Ref) (f_2@@42 T@Field_7693_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_7693_53 Mask@@33 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@14) o_1@@3 f_2@@42) (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4260) (ExhaleHeap@@13 T@PolymorphicMapType_4260) (Mask@@34 T@PolymorphicMapType_4281) (o_1@@4 T@Ref) (f_2@@43 T@Field_7693_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_7693_1186 Mask@@34 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@15) o_1@@4 f_2@@43) (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4260) (ExhaleHeap@@14 T@PolymorphicMapType_4260) (Mask@@35 T@PolymorphicMapType_4281) (o_1@@5 T@Ref) (f_2@@44 T@Field_2230_7711) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_2230_13445 Mask@@35 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@16) o_1@@5 f_2@@44) (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4260) (ExhaleHeap@@15 T@PolymorphicMapType_4260) (Mask@@36 T@PolymorphicMapType_4281) (o_1@@6 T@Ref) (f_2@@45 T@Field_2230_7694) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_2230_7694 Mask@@36 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@17) o_1@@6 f_2@@45) (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4260) (ExhaleHeap@@16 T@PolymorphicMapType_4260) (Mask@@37 T@PolymorphicMapType_4281) (o_1@@7 T@Ref) (f_2@@46 T@Field_4333_4334) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_2230_4334 Mask@@37 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@18) o_1@@7 f_2@@46) (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4260) (ExhaleHeap@@17 T@PolymorphicMapType_4260) (Mask@@38 T@PolymorphicMapType_4281) (o_1@@8 T@Ref) (f_2@@47 T@Field_4320_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_2230_53 Mask@@38 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@19) o_1@@8 f_2@@47) (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4260) (ExhaleHeap@@18 T@PolymorphicMapType_4260) (Mask@@39 T@PolymorphicMapType_4281) (o_1@@9 T@Ref) (f_2@@48 T@Field_7646_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_2230_1186 Mask@@39 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@20) o_1@@9 f_2@@48) (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_7706_7711) ) (! (= (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_7693_4334) ) (! (= (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_7693_53) ) (! (= (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_7693_7694) ) (! (= (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_7693_1186) ) (! (= (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_2230_7711) ) (! (= (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4333_4334) ) (! (= (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_4320_53) ) (! (= (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_2230_7694) ) (! (= (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_7646_1186) ) (! (= (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4281) (SummandMask1 T@PolymorphicMapType_4281) (SummandMask2 T@PolymorphicMapType_4281) (o_2@@39 T@Ref) (f_4@@39 T@Field_7706_7711) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4281_2233_23176#PolymorphicMapType_4281| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4281) (SummandMask1@@0 T@PolymorphicMapType_4281) (SummandMask2@@0 T@PolymorphicMapType_4281) (o_2@@40 T@Ref) (f_4@@40 T@Field_7693_4334) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4281_2233_4334#PolymorphicMapType_4281| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4281) (SummandMask1@@1 T@PolymorphicMapType_4281) (SummandMask2@@1 T@PolymorphicMapType_4281) (o_2@@41 T@Ref) (f_4@@41 T@Field_7693_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4281_2233_53#PolymorphicMapType_4281| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4281) (SummandMask1@@2 T@PolymorphicMapType_4281) (SummandMask2@@2 T@PolymorphicMapType_4281) (o_2@@42 T@Ref) (f_4@@42 T@Field_7693_7694) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4281_2233_2234#PolymorphicMapType_4281| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4281) (SummandMask1@@3 T@PolymorphicMapType_4281) (SummandMask2@@3 T@PolymorphicMapType_4281) (o_2@@43 T@Ref) (f_4@@43 T@Field_7693_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4281_2233_1186#PolymorphicMapType_4281| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4281) (SummandMask1@@4 T@PolymorphicMapType_4281) (SummandMask2@@4 T@PolymorphicMapType_4281) (o_2@@44 T@Ref) (f_4@@44 T@Field_2230_7711) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4281_2230_22765#PolymorphicMapType_4281| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4281) (SummandMask1@@5 T@PolymorphicMapType_4281) (SummandMask2@@5 T@PolymorphicMapType_4281) (o_2@@45 T@Ref) (f_4@@45 T@Field_4333_4334) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4281_2230_4334#PolymorphicMapType_4281| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4281) (SummandMask1@@6 T@PolymorphicMapType_4281) (SummandMask2@@6 T@PolymorphicMapType_4281) (o_2@@46 T@Ref) (f_4@@46 T@Field_4320_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4281_2230_53#PolymorphicMapType_4281| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4281) (SummandMask1@@7 T@PolymorphicMapType_4281) (SummandMask2@@7 T@PolymorphicMapType_4281) (o_2@@47 T@Ref) (f_4@@47 T@Field_2230_7694) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4281_2230_2234#PolymorphicMapType_4281| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4281) (SummandMask1@@8 T@PolymorphicMapType_4281) (SummandMask2@@8 T@PolymorphicMapType_4281) (o_2@@48 T@Ref) (f_4@@48 T@Field_7646_1186) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4281_2230_1186#PolymorphicMapType_4281| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_2233_2234 (TestP$ this@@3)) 0)
 :qid |stdinbpl.199:15|
 :skolemid |24|
 :pattern ( (TestP$ this@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4260) (o T@Ref) (f_3 T@Field_7706_7711) (v T@PolymorphicMapType_4809) ) (! (succHeap Heap@@21 (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@21) (store (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@21) o f_3 v) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@21) (store (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@21) o f_3 v) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@21) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4260) (o@@0 T@Ref) (f_3@@0 T@Field_7693_1186) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@22) (store (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@22) (store (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@22) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4260) (o@@1 T@Ref) (f_3@@1 T@Field_7693_7694) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@23) (store (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@23) (store (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@23) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4260) (o@@2 T@Ref) (f_3@@2 T@Field_7693_4334) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@24) (store (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@24) o@@2 f_3@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@24) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@24) (store (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@24) o@@2 f_3@@2 v@@2)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4260) (o@@3 T@Ref) (f_3@@3 T@Field_7693_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@25) (store (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@25) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@25) (store (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4260) (o@@4 T@Ref) (f_3@@4 T@Field_2230_7711) (v@@4 T@PolymorphicMapType_4809) ) (! (succHeap Heap@@26 (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@26) (store (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@26) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@26) (store (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@26) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@26) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4260) (o@@5 T@Ref) (f_3@@5 T@Field_7646_1186) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@27) (store (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@27) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@27) (store (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@27) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@27) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4260) (o@@6 T@Ref) (f_3@@6 T@Field_2230_7694) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@28) (store (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@28) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@28) (store (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@28) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@28) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4260) (o@@7 T@Ref) (f_3@@7 T@Field_4333_4334) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@29) (store (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@29) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4260 (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@29) (store (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@29) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@29) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4260) (o@@8 T@Ref) (f_3@@8 T@Field_4320_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_4260 (store (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@30) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4260 (store (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@30) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_2233_2234#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_2230_1186#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_2237_10367#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_2230_7694#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_2230_13487#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_7693_1186#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_7693_53#PolymorphicMapType_4260| Heap@@30) (|PolymorphicMapType_4260_7693_4334#PolymorphicMapType_4260| Heap@@30)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_2233 (TestP$ this@@4)) (|TestP$#sm| this@@4))
 :qid |stdinbpl.191:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_2233 (TestP$ this@@4)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_4333_4334) (Heap@@31 T@PolymorphicMapType_4260) ) (!  (=> (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@31) o@@9 $allocated) (select (|PolymorphicMapType_4260_2102_53#PolymorphicMapType_4260| Heap@@31) (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@31) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4260_2105_2106#PolymorphicMapType_4260| Heap@@31) o@@9 f))
)))
(assert (forall ((p@@2 T@Field_7693_7694) (v_1@@1 T@FrameType) (q T@Field_7693_7694) (w@@1 T@FrameType) (r T@Field_7693_7694) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7693_7693 p@@2 v_1@@1 q w@@1) (InsidePredicate_7693_7693 q w@@1 r u)) (InsidePredicate_7693_7693 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7693_7693 p@@2 v_1@@1 q w@@1) (InsidePredicate_7693_7693 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_7693_7694) (v_1@@2 T@FrameType) (q@@0 T@Field_7693_7694) (w@@2 T@FrameType) (r@@0 T@Field_2230_7694) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_7693_7693 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7693_4320 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_7693_4320 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7693_7693 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7693_4320 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_7693_7694) (v_1@@3 T@FrameType) (q@@1 T@Field_2230_7694) (w@@3 T@FrameType) (r@@1 T@Field_7693_7694) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_7693_4320 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4320_7693 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_7693_7693 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7693_4320 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4320_7693 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_7693_7694) (v_1@@4 T@FrameType) (q@@2 T@Field_2230_7694) (w@@4 T@FrameType) (r@@2 T@Field_2230_7694) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_7693_4320 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4320_4320 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_7693_4320 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7693_4320 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4320_4320 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_2230_7694) (v_1@@5 T@FrameType) (q@@3 T@Field_7693_7694) (w@@5 T@FrameType) (r@@3 T@Field_7693_7694) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4320_7693 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7693_7693 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4320_7693 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4320_7693 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7693_7693 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_2230_7694) (v_1@@6 T@FrameType) (q@@4 T@Field_7693_7694) (w@@6 T@FrameType) (r@@4 T@Field_2230_7694) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4320_7693 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7693_4320 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4320_4320 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4320_7693 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7693_4320 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_2230_7694) (v_1@@7 T@FrameType) (q@@5 T@Field_2230_7694) (w@@7 T@FrameType) (r@@5 T@Field_7693_7694) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4320_4320 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4320_7693 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4320_7693 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4320_4320 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4320_7693 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_2230_7694) (v_1@@8 T@FrameType) (q@@6 T@Field_2230_7694) (w@@8 T@FrameType) (r@@6 T@Field_2230_7694) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4320_4320 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4320_4320 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4320_4320 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4320_4320 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4320_4320 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |TestP$#definedness|)
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
