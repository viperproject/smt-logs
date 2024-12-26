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
(declare-sort T@Field_7729_53 0)
(declare-sort T@Field_7742_7743 0)
(declare-sort T@Field_11056_1189 0)
(declare-sort T@Field_11394_11395 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12682_12687 0)
(declare-sort T@Field_3905_3935 0)
(declare-sort T@Field_3905_12687 0)
(declare-sort T@Field_3934_1189 0)
(declare-sort T@Field_3934_53 0)
(declare-sort T@Field_3934_7743 0)
(declare-datatypes ((T@PolymorphicMapType_7690 0)) (((PolymorphicMapType_7690 (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| (Array T@Ref T@Field_11394_11395 Real)) (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| (Array T@Ref T@Field_11056_1189 Real)) (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| (Array T@Ref T@Field_3934_1189 Real)) (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| (Array T@Ref T@Field_3934_53 Real)) (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| (Array T@Ref T@Field_3934_7743 Real)) (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| (Array T@Ref T@Field_12682_12687 Real)) (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| (Array T@Ref T@Field_3905_3935 Real)) (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| (Array T@Ref T@Field_7729_53 Real)) (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| (Array T@Ref T@Field_7742_7743 Real)) (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| (Array T@Ref T@Field_3905_12687 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8218 0)) (((PolymorphicMapType_8218 (|PolymorphicMapType_8218_3905_1189#PolymorphicMapType_8218| (Array T@Ref T@Field_11056_1189 Bool)) (|PolymorphicMapType_8218_3905_53#PolymorphicMapType_8218| (Array T@Ref T@Field_7729_53 Bool)) (|PolymorphicMapType_8218_3905_7743#PolymorphicMapType_8218| (Array T@Ref T@Field_7742_7743 Bool)) (|PolymorphicMapType_8218_3905_11395#PolymorphicMapType_8218| (Array T@Ref T@Field_3905_3935 Bool)) (|PolymorphicMapType_8218_3905_27926#PolymorphicMapType_8218| (Array T@Ref T@Field_3905_12687 Bool)) (|PolymorphicMapType_8218_11394_1189#PolymorphicMapType_8218| (Array T@Ref T@Field_3934_1189 Bool)) (|PolymorphicMapType_8218_11394_53#PolymorphicMapType_8218| (Array T@Ref T@Field_3934_53 Bool)) (|PolymorphicMapType_8218_11394_7743#PolymorphicMapType_8218| (Array T@Ref T@Field_3934_7743 Bool)) (|PolymorphicMapType_8218_11394_11395#PolymorphicMapType_8218| (Array T@Ref T@Field_11394_11395 Bool)) (|PolymorphicMapType_8218_11394_28974#PolymorphicMapType_8218| (Array T@Ref T@Field_12682_12687 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7669 0)) (((PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| (Array T@Ref T@Field_7729_53 Bool)) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| (Array T@Ref T@Field_7742_7743 T@Ref)) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| (Array T@Ref T@Field_11056_1189 Int)) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| (Array T@Ref T@Field_11394_11395 T@FrameType)) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| (Array T@Ref T@Field_12682_12687 T@PolymorphicMapType_8218)) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| (Array T@Ref T@Field_3905_3935 T@FrameType)) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| (Array T@Ref T@Field_3905_12687 T@PolymorphicMapType_8218)) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| (Array T@Ref T@Field_3934_1189 Int)) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| (Array T@Ref T@Field_3934_53 Bool)) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| (Array T@Ref T@Field_3934_7743 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_7729_53)
(declare-fun f_7 () T@Field_11056_1189)
(declare-fun succHeap (T@PolymorphicMapType_7669 T@PolymorphicMapType_7669) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7669 T@PolymorphicMapType_7669) Bool)
(declare-fun state (T@PolymorphicMapType_7669 T@PolymorphicMapType_7690) Bool)
(declare-fun readValid (T@PolymorphicMapType_7669 T@Ref) Int)
(declare-fun |readValid#triggerStateless| (T@Ref) Int)
(declare-fun |valid#trigger_3934| (T@PolymorphicMapType_7669 T@Field_11394_11395) Bool)
(declare-fun valid (T@Ref) T@Field_11394_11395)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_7690) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8218)
(declare-fun IsPredicateField_3934_3935 (T@Field_11394_11395) Bool)
(declare-fun |readValid'| (T@PolymorphicMapType_7669 T@Ref) Int)
(declare-fun dummyFunction_1392 (Int) Bool)
(declare-fun |valid#everUsed_3934| (T@Field_11394_11395) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7669 T@PolymorphicMapType_7669 T@PolymorphicMapType_7690) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3934 (T@Field_11394_11395) T@Field_12682_12687)
(declare-fun HasDirectPerm_3934_3935 (T@PolymorphicMapType_7690 T@Ref T@Field_11394_11395) Bool)
(declare-fun IsPredicateField_3905_26454 (T@Field_3905_3935) Bool)
(declare-fun PredicateMaskField_3905 (T@Field_3905_3935) T@Field_3905_12687)
(declare-fun HasDirectPerm_3905_3935 (T@PolymorphicMapType_7690 T@Ref T@Field_3905_3935) Bool)
(declare-fun IsWandField_3934_30139 (T@Field_11394_11395) Bool)
(declare-fun WandMaskField_3934 (T@Field_11394_11395) T@Field_12682_12687)
(declare-fun IsWandField_3905_29782 (T@Field_3905_3935) Bool)
(declare-fun WandMaskField_3905 (T@Field_3905_3935) T@Field_3905_12687)
(declare-fun |valid#sm| (T@Ref) T@Field_12682_12687)
(declare-fun dummyHeap () T@PolymorphicMapType_7669)
(declare-fun ZeroMask () T@PolymorphicMapType_7690)
(declare-fun InsidePredicate_11394_11394 (T@Field_11394_11395 T@FrameType T@Field_11394_11395 T@FrameType) Bool)
(declare-fun InsidePredicate_7729_7729 (T@Field_3905_3935 T@FrameType T@Field_3905_3935 T@FrameType) Bool)
(declare-fun IsPredicateField_3905_1189 (T@Field_11056_1189) Bool)
(declare-fun IsWandField_3905_1189 (T@Field_11056_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3905_37071 (T@Field_3905_12687) Bool)
(declare-fun IsWandField_3905_37087 (T@Field_3905_12687) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3905_7743 (T@Field_7742_7743) Bool)
(declare-fun IsWandField_3905_7743 (T@Field_7742_7743) Bool)
(declare-fun IsPredicateField_3905_53 (T@Field_7729_53) Bool)
(declare-fun IsWandField_3905_53 (T@Field_7729_53) Bool)
(declare-fun IsPredicateField_3934_36254 (T@Field_12682_12687) Bool)
(declare-fun IsWandField_3934_36270 (T@Field_12682_12687) Bool)
(declare-fun IsPredicateField_3934_7743 (T@Field_3934_7743) Bool)
(declare-fun IsWandField_3934_7743 (T@Field_3934_7743) Bool)
(declare-fun IsPredicateField_3934_53 (T@Field_3934_53) Bool)
(declare-fun IsWandField_3934_53 (T@Field_3934_53) Bool)
(declare-fun IsPredicateField_3934_1189 (T@Field_3934_1189) Bool)
(declare-fun IsWandField_3934_1189 (T@Field_3934_1189) Bool)
(declare-fun HasDirectPerm_3934_26209 (T@PolymorphicMapType_7690 T@Ref T@Field_12682_12687) Bool)
(declare-fun HasDirectPerm_3934_7743 (T@PolymorphicMapType_7690 T@Ref T@Field_3934_7743) Bool)
(declare-fun HasDirectPerm_3934_53 (T@PolymorphicMapType_7690 T@Ref T@Field_3934_53) Bool)
(declare-fun HasDirectPerm_3934_1189 (T@PolymorphicMapType_7690 T@Ref T@Field_3934_1189) Bool)
(declare-fun HasDirectPerm_3905_25068 (T@PolymorphicMapType_7690 T@Ref T@Field_3905_12687) Bool)
(declare-fun HasDirectPerm_3905_7743 (T@PolymorphicMapType_7690 T@Ref T@Field_7742_7743) Bool)
(declare-fun HasDirectPerm_3905_53 (T@PolymorphicMapType_7690 T@Ref T@Field_7729_53) Bool)
(declare-fun HasDirectPerm_3905_1189 (T@PolymorphicMapType_7690 T@Ref T@Field_11056_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7690 T@PolymorphicMapType_7690 T@PolymorphicMapType_7690) Bool)
(declare-fun |readValid#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_3934_3935 (T@Field_11394_11395) Int)
(declare-fun InsidePredicate_11394_7729 (T@Field_11394_11395 T@FrameType T@Field_3905_3935 T@FrameType) Bool)
(declare-fun InsidePredicate_7729_11394 (T@Field_3905_3935 T@FrameType T@Field_11394_11395 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7669) (Heap1 T@PolymorphicMapType_7669) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7669) (Mask T@PolymorphicMapType_7690) (self T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (readValid Heap self) (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap) self f_7)))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (readValid Heap self))
 :pattern ( (state Heap Mask) (|readValid#triggerStateless| self) (|valid#trigger_3934| Heap (valid self)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7669) (Mask@@0 T@PolymorphicMapType_7690) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7669) (Heap1@@0 T@PolymorphicMapType_7669) (Heap2 T@PolymorphicMapType_7669) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12682_12687) ) (!  (not (select (|PolymorphicMapType_8218_11394_28974#PolymorphicMapType_8218| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8218_11394_28974#PolymorphicMapType_8218| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11394_11395) ) (!  (not (select (|PolymorphicMapType_8218_11394_11395#PolymorphicMapType_8218| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8218_11394_11395#PolymorphicMapType_8218| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3934_7743) ) (!  (not (select (|PolymorphicMapType_8218_11394_7743#PolymorphicMapType_8218| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8218_11394_7743#PolymorphicMapType_8218| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3934_53) ) (!  (not (select (|PolymorphicMapType_8218_11394_53#PolymorphicMapType_8218| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8218_11394_53#PolymorphicMapType_8218| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3934_1189) ) (!  (not (select (|PolymorphicMapType_8218_11394_1189#PolymorphicMapType_8218| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8218_11394_1189#PolymorphicMapType_8218| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3905_12687) ) (!  (not (select (|PolymorphicMapType_8218_3905_27926#PolymorphicMapType_8218| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8218_3905_27926#PolymorphicMapType_8218| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3905_3935) ) (!  (not (select (|PolymorphicMapType_8218_3905_11395#PolymorphicMapType_8218| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8218_3905_11395#PolymorphicMapType_8218| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7742_7743) ) (!  (not (select (|PolymorphicMapType_8218_3905_7743#PolymorphicMapType_8218| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8218_3905_7743#PolymorphicMapType_8218| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7729_53) ) (!  (not (select (|PolymorphicMapType_8218_3905_53#PolymorphicMapType_8218| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8218_3905_53#PolymorphicMapType_8218| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11056_1189) ) (!  (not (select (|PolymorphicMapType_8218_3905_1189#PolymorphicMapType_8218| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8218_3905_1189#PolymorphicMapType_8218| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((self@@0 T@Ref) ) (! (IsPredicateField_3934_3935 (valid self@@0))
 :qid |stdinbpl.290:15|
 :skolemid |27|
 :pattern ( (valid self@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7669) (self@@1 T@Ref) ) (! (dummyFunction_1392 (|readValid#triggerStateless| self@@1))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|readValid'| Heap@@1 self@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7669) (self@@2 T@Ref) ) (! (|valid#everUsed_3934| (valid self@@2))
 :qid |stdinbpl.309:15|
 :skolemid |31|
 :pattern ( (|valid#trigger_3934| Heap@@2 (valid self@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7669) (self@@3 T@Ref) ) (!  (and (= (readValid Heap@@3 self@@3) (|readValid'| Heap@@3 self@@3)) (dummyFunction_1392 (|readValid#triggerStateless| self@@3)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (readValid Heap@@3 self@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7669) (ExhaleHeap T@PolymorphicMapType_7669) (Mask@@1 T@PolymorphicMapType_7690) (pm_f T@Field_11394_11395) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_3934_3935 Mask@@1 null pm_f) (IsPredicateField_3934_3935 pm_f)) (= (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@4) null (PredicateMaskField_3934 pm_f)) (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap) null (PredicateMaskField_3934 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_3934_3935 pm_f) (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap) null (PredicateMaskField_3934 pm_f)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7669) (ExhaleHeap@@0 T@PolymorphicMapType_7669) (Mask@@2 T@PolymorphicMapType_7690) (pm_f@@0 T@Field_3905_3935) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3905_3935 Mask@@2 null pm_f@@0) (IsPredicateField_3905_26454 pm_f@@0)) (= (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@5) null (PredicateMaskField_3905 pm_f@@0)) (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@0) null (PredicateMaskField_3905 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_3905_26454 pm_f@@0) (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@0) null (PredicateMaskField_3905 pm_f@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7669) (ExhaleHeap@@1 T@PolymorphicMapType_7669) (Mask@@3 T@PolymorphicMapType_7690) (pm_f@@1 T@Field_11394_11395) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_3934_3935 Mask@@3 null pm_f@@1) (IsWandField_3934_30139 pm_f@@1)) (= (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@6) null (WandMaskField_3934 pm_f@@1)) (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@1) null (WandMaskField_3934 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsWandField_3934_30139 pm_f@@1) (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@1) null (WandMaskField_3934 pm_f@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7669) (ExhaleHeap@@2 T@PolymorphicMapType_7669) (Mask@@4 T@PolymorphicMapType_7690) (pm_f@@2 T@Field_3905_3935) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3905_3935 Mask@@4 null pm_f@@2) (IsWandField_3905_29782 pm_f@@2)) (= (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@7) null (WandMaskField_3905 pm_f@@2)) (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@2) null (WandMaskField_3905 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_3905_29782 pm_f@@2) (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@2) null (WandMaskField_3905 pm_f@@2)))
)))
(assert (forall ((self@@4 T@Ref) (self2 T@Ref) ) (!  (=> (= (valid self@@4) (valid self2)) (= self@@4 self2))
 :qid |stdinbpl.300:15|
 :skolemid |29|
 :pattern ( (valid self@@4) (valid self2))
)))
(assert (forall ((self@@5 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|valid#sm| self@@5) (|valid#sm| self2@@0)) (= self@@5 self2@@0))
 :qid |stdinbpl.304:15|
 :skolemid |30|
 :pattern ( (|valid#sm| self@@5) (|valid#sm| self2@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7669) (ExhaleHeap@@3 T@PolymorphicMapType_7669) (Mask@@5 T@PolymorphicMapType_7690) (pm_f@@3 T@Field_11394_11395) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_3934_3935 Mask@@5 null pm_f@@3) (IsPredicateField_3934_3935 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_11056_1189) ) (!  (=> (select (|PolymorphicMapType_8218_3905_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@8) null (PredicateMaskField_3934 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@8) o2 f_2) (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_7729_53) ) (!  (=> (select (|PolymorphicMapType_8218_3905_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@8) null (PredicateMaskField_3934 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@8) o2@@0 f_2@@0) (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_7742_7743) ) (!  (=> (select (|PolymorphicMapType_8218_3905_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@8) null (PredicateMaskField_3934 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@8) o2@@1 f_2@@1) (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3905_3935) ) (!  (=> (select (|PolymorphicMapType_8218_3905_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@8) null (PredicateMaskField_3934 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@8) o2@@2 f_2@@2) (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3905_12687) ) (!  (=> (select (|PolymorphicMapType_8218_3905_27926#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@8) null (PredicateMaskField_3934 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@8) o2@@3 f_2@@3) (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3934_1189) ) (!  (=> (select (|PolymorphicMapType_8218_11394_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@8) null (PredicateMaskField_3934 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@8) o2@@4 f_2@@4) (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3934_53) ) (!  (=> (select (|PolymorphicMapType_8218_11394_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@8) null (PredicateMaskField_3934 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@8) o2@@5 f_2@@5) (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3934_7743) ) (!  (=> (select (|PolymorphicMapType_8218_11394_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@8) null (PredicateMaskField_3934 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@8) o2@@6 f_2@@6) (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_11394_11395) ) (!  (=> (select (|PolymorphicMapType_8218_11394_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@8) null (PredicateMaskField_3934 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@8) o2@@7 f_2@@7) (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_12682_12687) ) (!  (=> (select (|PolymorphicMapType_8218_11394_28974#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@8) null (PredicateMaskField_3934 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@8) o2@@8 f_2@@8) (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsPredicateField_3934_3935 pm_f@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7669) (ExhaleHeap@@4 T@PolymorphicMapType_7669) (Mask@@6 T@PolymorphicMapType_7690) (pm_f@@4 T@Field_3905_3935) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_3905_3935 Mask@@6 null pm_f@@4) (IsPredicateField_3905_26454 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_11056_1189) ) (!  (=> (select (|PolymorphicMapType_8218_3905_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@9) null (PredicateMaskField_3905 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@9) o2@@9 f_2@@9) (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_7729_53) ) (!  (=> (select (|PolymorphicMapType_8218_3905_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@9) null (PredicateMaskField_3905 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@9) o2@@10 f_2@@10) (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_7742_7743) ) (!  (=> (select (|PolymorphicMapType_8218_3905_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@9) null (PredicateMaskField_3905 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@9) o2@@11 f_2@@11) (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_3905_3935) ) (!  (=> (select (|PolymorphicMapType_8218_3905_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@9) null (PredicateMaskField_3905 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@9) o2@@12 f_2@@12) (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_3905_12687) ) (!  (=> (select (|PolymorphicMapType_8218_3905_27926#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@9) null (PredicateMaskField_3905 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@9) o2@@13 f_2@@13) (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_3934_1189) ) (!  (=> (select (|PolymorphicMapType_8218_11394_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@9) null (PredicateMaskField_3905 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@9) o2@@14 f_2@@14) (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_3934_53) ) (!  (=> (select (|PolymorphicMapType_8218_11394_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@9) null (PredicateMaskField_3905 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@9) o2@@15 f_2@@15) (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_3934_7743) ) (!  (=> (select (|PolymorphicMapType_8218_11394_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@9) null (PredicateMaskField_3905 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@9) o2@@16 f_2@@16) (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_11394_11395) ) (!  (=> (select (|PolymorphicMapType_8218_11394_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@9) null (PredicateMaskField_3905 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@9) o2@@17 f_2@@17) (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_12682_12687) ) (!  (=> (select (|PolymorphicMapType_8218_11394_28974#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@9) null (PredicateMaskField_3905 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@9) o2@@18 f_2@@18) (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsPredicateField_3905_26454 pm_f@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7669) (ExhaleHeap@@5 T@PolymorphicMapType_7669) (Mask@@7 T@PolymorphicMapType_7690) (pm_f@@5 T@Field_11394_11395) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_3934_3935 Mask@@7 null pm_f@@5) (IsWandField_3934_30139 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_11056_1189) ) (!  (=> (select (|PolymorphicMapType_8218_3905_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@10) null (WandMaskField_3934 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@10) o2@@19 f_2@@19) (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_7729_53) ) (!  (=> (select (|PolymorphicMapType_8218_3905_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@10) null (WandMaskField_3934 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@10) o2@@20 f_2@@20) (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_7742_7743) ) (!  (=> (select (|PolymorphicMapType_8218_3905_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@10) null (WandMaskField_3934 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@10) o2@@21 f_2@@21) (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_3905_3935) ) (!  (=> (select (|PolymorphicMapType_8218_3905_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@10) null (WandMaskField_3934 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@10) o2@@22 f_2@@22) (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_3905_12687) ) (!  (=> (select (|PolymorphicMapType_8218_3905_27926#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@10) null (WandMaskField_3934 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@10) o2@@23 f_2@@23) (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_3934_1189) ) (!  (=> (select (|PolymorphicMapType_8218_11394_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@10) null (WandMaskField_3934 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@10) o2@@24 f_2@@24) (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_3934_53) ) (!  (=> (select (|PolymorphicMapType_8218_11394_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@10) null (WandMaskField_3934 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@10) o2@@25 f_2@@25) (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_3934_7743) ) (!  (=> (select (|PolymorphicMapType_8218_11394_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@10) null (WandMaskField_3934 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@10) o2@@26 f_2@@26) (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_11394_11395) ) (!  (=> (select (|PolymorphicMapType_8218_11394_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@10) null (WandMaskField_3934 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@10) o2@@27 f_2@@27) (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_12682_12687) ) (!  (=> (select (|PolymorphicMapType_8218_11394_28974#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@10) null (WandMaskField_3934 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@10) o2@@28 f_2@@28) (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsWandField_3934_30139 pm_f@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7669) (ExhaleHeap@@6 T@PolymorphicMapType_7669) (Mask@@8 T@PolymorphicMapType_7690) (pm_f@@6 T@Field_3905_3935) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_3905_3935 Mask@@8 null pm_f@@6) (IsWandField_3905_29782 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_11056_1189) ) (!  (=> (select (|PolymorphicMapType_8218_3905_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@11) null (WandMaskField_3905 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@11) o2@@29 f_2@@29) (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_7729_53) ) (!  (=> (select (|PolymorphicMapType_8218_3905_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@11) null (WandMaskField_3905 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@11) o2@@30 f_2@@30) (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_7742_7743) ) (!  (=> (select (|PolymorphicMapType_8218_3905_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@11) null (WandMaskField_3905 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@11) o2@@31 f_2@@31) (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_3905_3935) ) (!  (=> (select (|PolymorphicMapType_8218_3905_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@11) null (WandMaskField_3905 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@11) o2@@32 f_2@@32) (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_3905_12687) ) (!  (=> (select (|PolymorphicMapType_8218_3905_27926#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@11) null (WandMaskField_3905 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@11) o2@@33 f_2@@33) (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_3934_1189) ) (!  (=> (select (|PolymorphicMapType_8218_11394_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@11) null (WandMaskField_3905 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@11) o2@@34 f_2@@34) (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_3934_53) ) (!  (=> (select (|PolymorphicMapType_8218_11394_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@11) null (WandMaskField_3905 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@11) o2@@35 f_2@@35) (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_3934_7743) ) (!  (=> (select (|PolymorphicMapType_8218_11394_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@11) null (WandMaskField_3905 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@11) o2@@36 f_2@@36) (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_11394_11395) ) (!  (=> (select (|PolymorphicMapType_8218_11394_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@11) null (WandMaskField_3905 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@11) o2@@37 f_2@@37) (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_12682_12687) ) (!  (=> (select (|PolymorphicMapType_8218_11394_28974#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@11) null (WandMaskField_3905 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@11) o2@@38 f_2@@38) (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsWandField_3905_29782 pm_f@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7669) (ExhaleHeap@@7 T@PolymorphicMapType_7669) (Mask@@9 T@PolymorphicMapType_7690) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@12) o_1 $allocated) (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_11394_11395) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11394_11394 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11394_11394 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3905_3935) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7729_7729 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7729_7729 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3905_1189 f_7)))
(assert  (not (IsWandField_3905_1189 f_7)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7669) (ExhaleHeap@@8 T@PolymorphicMapType_7669) (Mask@@10 T@PolymorphicMapType_7690) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@13 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7690) (o_2@@9 T@Ref) (f_4@@9 T@Field_3905_12687) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3905_37071 f_4@@9))) (not (IsWandField_3905_37087 f_4@@9))) (<= (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7690) (o_2@@10 T@Ref) (f_4@@10 T@Field_7742_7743) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3905_7743 f_4@@10))) (not (IsWandField_3905_7743 f_4@@10))) (<= (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7690) (o_2@@11 T@Ref) (f_4@@11 T@Field_7729_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3905_53 f_4@@11))) (not (IsWandField_3905_53 f_4@@11))) (<= (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7690) (o_2@@12 T@Ref) (f_4@@12 T@Field_11056_1189) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3905_1189 f_4@@12))) (not (IsWandField_3905_1189 f_4@@12))) (<= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7690) (o_2@@13 T@Ref) (f_4@@13 T@Field_3905_3935) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3905_26454 f_4@@13))) (not (IsWandField_3905_29782 f_4@@13))) (<= (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7690) (o_2@@14 T@Ref) (f_4@@14 T@Field_12682_12687) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3934_36254 f_4@@14))) (not (IsWandField_3934_36270 f_4@@14))) (<= (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7690) (o_2@@15 T@Ref) (f_4@@15 T@Field_3934_7743) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3934_7743 f_4@@15))) (not (IsWandField_3934_7743 f_4@@15))) (<= (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7690) (o_2@@16 T@Ref) (f_4@@16 T@Field_3934_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3934_53 f_4@@16))) (not (IsWandField_3934_53 f_4@@16))) (<= (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7690) (o_2@@17 T@Ref) (f_4@@17 T@Field_3934_1189) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3934_1189 f_4@@17))) (not (IsWandField_3934_1189 f_4@@17))) (<= (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7690) (o_2@@18 T@Ref) (f_4@@18 T@Field_11394_11395) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3934_3935 f_4@@18))) (not (IsWandField_3934_30139 f_4@@18))) (<= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7690) (o_2@@19 T@Ref) (f_4@@19 T@Field_12682_12687) ) (! (= (HasDirectPerm_3934_26209 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3934_26209 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7690) (o_2@@20 T@Ref) (f_4@@20 T@Field_3934_7743) ) (! (= (HasDirectPerm_3934_7743 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3934_7743 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7690) (o_2@@21 T@Ref) (f_4@@21 T@Field_3934_53) ) (! (= (HasDirectPerm_3934_53 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3934_53 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7690) (o_2@@22 T@Ref) (f_4@@22 T@Field_11394_11395) ) (! (= (HasDirectPerm_3934_3935 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3934_3935 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7690) (o_2@@23 T@Ref) (f_4@@23 T@Field_3934_1189) ) (! (= (HasDirectPerm_3934_1189 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3934_1189 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7690) (o_2@@24 T@Ref) (f_4@@24 T@Field_3905_12687) ) (! (= (HasDirectPerm_3905_25068 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3905_25068 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7690) (o_2@@25 T@Ref) (f_4@@25 T@Field_7742_7743) ) (! (= (HasDirectPerm_3905_7743 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3905_7743 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7690) (o_2@@26 T@Ref) (f_4@@26 T@Field_7729_53) ) (! (= (HasDirectPerm_3905_53 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3905_53 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7690) (o_2@@27 T@Ref) (f_4@@27 T@Field_3905_3935) ) (! (= (HasDirectPerm_3905_3935 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3905_3935 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_7690) (o_2@@28 T@Ref) (f_4@@28 T@Field_11056_1189) ) (! (= (HasDirectPerm_3905_1189 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3905_1189 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7669) (ExhaleHeap@@9 T@PolymorphicMapType_7669) (Mask@@31 T@PolymorphicMapType_7690) (o_1@@0 T@Ref) (f_2@@39 T@Field_12682_12687) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_3934_26209 Mask@@31 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@14) o_1@@0 f_2@@39) (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7669) (ExhaleHeap@@10 T@PolymorphicMapType_7669) (Mask@@32 T@PolymorphicMapType_7690) (o_1@@1 T@Ref) (f_2@@40 T@Field_3934_7743) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_3934_7743 Mask@@32 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@15) o_1@@1 f_2@@40) (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7669) (ExhaleHeap@@11 T@PolymorphicMapType_7669) (Mask@@33 T@PolymorphicMapType_7690) (o_1@@2 T@Ref) (f_2@@41 T@Field_3934_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_3934_53 Mask@@33 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@16) o_1@@2 f_2@@41) (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7669) (ExhaleHeap@@12 T@PolymorphicMapType_7669) (Mask@@34 T@PolymorphicMapType_7690) (o_1@@3 T@Ref) (f_2@@42 T@Field_11394_11395) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_3934_3935 Mask@@34 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@17) o_1@@3 f_2@@42) (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7669) (ExhaleHeap@@13 T@PolymorphicMapType_7669) (Mask@@35 T@PolymorphicMapType_7690) (o_1@@4 T@Ref) (f_2@@43 T@Field_3934_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_3934_1189 Mask@@35 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@18) o_1@@4 f_2@@43) (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7669) (ExhaleHeap@@14 T@PolymorphicMapType_7669) (Mask@@36 T@PolymorphicMapType_7690) (o_1@@5 T@Ref) (f_2@@44 T@Field_3905_12687) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_3905_25068 Mask@@36 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@19) o_1@@5 f_2@@44) (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7669) (ExhaleHeap@@15 T@PolymorphicMapType_7669) (Mask@@37 T@PolymorphicMapType_7690) (o_1@@6 T@Ref) (f_2@@45 T@Field_7742_7743) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_3905_7743 Mask@@37 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@20) o_1@@6 f_2@@45) (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7669) (ExhaleHeap@@16 T@PolymorphicMapType_7669) (Mask@@38 T@PolymorphicMapType_7690) (o_1@@7 T@Ref) (f_2@@46 T@Field_7729_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_3905_53 Mask@@38 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@21) o_1@@7 f_2@@46) (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7669) (ExhaleHeap@@17 T@PolymorphicMapType_7669) (Mask@@39 T@PolymorphicMapType_7690) (o_1@@8 T@Ref) (f_2@@47 T@Field_3905_3935) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_3905_3935 Mask@@39 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@22) o_1@@8 f_2@@47) (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7669) (ExhaleHeap@@18 T@PolymorphicMapType_7669) (Mask@@40 T@PolymorphicMapType_7690) (o_1@@9 T@Ref) (f_2@@48 T@Field_11056_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_3905_1189 Mask@@40 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@23) o_1@@9 f_2@@48) (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3905_12687) ) (! (= (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_7742_7743) ) (! (= (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_7729_53) ) (! (= (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_11056_1189) ) (! (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_3905_3935) ) (! (= (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_12682_12687) ) (! (= (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_3934_7743) ) (! (= (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_3934_53) ) (! (= (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_3934_1189) ) (! (= (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_11394_11395) ) (! (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7690) (SummandMask1 T@PolymorphicMapType_7690) (SummandMask2 T@PolymorphicMapType_7690) (o_2@@39 T@Ref) (f_4@@39 T@Field_3905_12687) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7690) (SummandMask1@@0 T@PolymorphicMapType_7690) (SummandMask2@@0 T@PolymorphicMapType_7690) (o_2@@40 T@Ref) (f_4@@40 T@Field_7742_7743) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7690) (SummandMask1@@1 T@PolymorphicMapType_7690) (SummandMask2@@1 T@PolymorphicMapType_7690) (o_2@@41 T@Ref) (f_4@@41 T@Field_7729_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7690) (SummandMask1@@2 T@PolymorphicMapType_7690) (SummandMask2@@2 T@PolymorphicMapType_7690) (o_2@@42 T@Ref) (f_4@@42 T@Field_11056_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7690) (SummandMask1@@3 T@PolymorphicMapType_7690) (SummandMask2@@3 T@PolymorphicMapType_7690) (o_2@@43 T@Ref) (f_4@@43 T@Field_3905_3935) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7690) (SummandMask1@@4 T@PolymorphicMapType_7690) (SummandMask2@@4 T@PolymorphicMapType_7690) (o_2@@44 T@Ref) (f_4@@44 T@Field_12682_12687) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7690) (SummandMask1@@5 T@PolymorphicMapType_7690) (SummandMask2@@5 T@PolymorphicMapType_7690) (o_2@@45 T@Ref) (f_4@@45 T@Field_3934_7743) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7690) (SummandMask1@@6 T@PolymorphicMapType_7690) (SummandMask2@@6 T@PolymorphicMapType_7690) (o_2@@46 T@Ref) (f_4@@46 T@Field_3934_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_7690) (SummandMask1@@7 T@PolymorphicMapType_7690) (SummandMask2@@7 T@PolymorphicMapType_7690) (o_2@@47 T@Ref) (f_4@@47 T@Field_3934_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_7690) (SummandMask1@@8 T@PolymorphicMapType_7690) (SummandMask2@@8 T@PolymorphicMapType_7690) (o_2@@48 T@Ref) (f_4@@48 T@Field_11394_11395) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7669) (Mask@@41 T@PolymorphicMapType_7690) (self@@6 T@Ref) ) (!  (=> (state Heap@@24 Mask@@41) (= (|readValid'| Heap@@24 self@@6) (|readValid#frame| (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@24) null (valid self@@6)) self@@6)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@41) (|readValid'| Heap@@24 self@@6))
)))
(assert (forall ((self@@7 T@Ref) ) (! (= (getPredWandId_3934_3935 (valid self@@7)) 0)
 :qid |stdinbpl.294:15|
 :skolemid |28|
 :pattern ( (valid self@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7669) (o T@Ref) (f_3 T@Field_12682_12687) (v T@PolymorphicMapType_8218) ) (! (succHeap Heap@@25 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@25) (store (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@25) o f_3 v) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@25) (store (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@25) o f_3 v) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@25) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7669) (o@@0 T@Ref) (f_3@@0 T@Field_11394_11395) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@26) (store (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@26) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@26) (store (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@26) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@26) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7669) (o@@1 T@Ref) (f_3@@1 T@Field_3934_1189) (v@@1 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@27) (store (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@27) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@27) (store (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@27) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@27) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7669) (o@@2 T@Ref) (f_3@@2 T@Field_3934_7743) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@28) (store (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@28) o@@2 f_3@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@28) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@28) (store (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@28) o@@2 f_3@@2 v@@2)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7669) (o@@3 T@Ref) (f_3@@3 T@Field_3934_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@29) (store (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@29) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@29) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@29) (store (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@29) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7669) (o@@4 T@Ref) (f_3@@4 T@Field_3905_12687) (v@@4 T@PolymorphicMapType_8218) ) (! (succHeap Heap@@30 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@30) (store (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@30) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@30) (store (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@30) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@30) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7669) (o@@5 T@Ref) (f_3@@5 T@Field_3905_3935) (v@@5 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@31) (store (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@31) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@31) (store (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@31) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@31) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7669) (o@@6 T@Ref) (f_3@@6 T@Field_11056_1189) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@32) (store (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@32) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@32) (store (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@32) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@32) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7669) (o@@7 T@Ref) (f_3@@7 T@Field_7742_7743) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@33) (store (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@33) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@33) (store (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@33) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@33) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7669) (o@@8 T@Ref) (f_3@@8 T@Field_7729_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_7669 (store (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@34) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7669 (store (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@34) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@34) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@34)))
)))
(assert (forall ((self@@8 T@Ref) ) (! (= (PredicateMaskField_3934 (valid self@@8)) (|valid#sm| self@@8))
 :qid |stdinbpl.286:15|
 :skolemid |26|
 :pattern ( (PredicateMaskField_3934 (valid self@@8)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_7742_7743) (Heap@@35 T@PolymorphicMapType_7669) ) (!  (=> (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@35) o@@9 $allocated) (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@35) (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@35) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@35) o@@9 f))
)))
(assert (forall ((p@@2 T@Field_11394_11395) (v_1@@1 T@FrameType) (q T@Field_11394_11395) (w@@1 T@FrameType) (r T@Field_11394_11395) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11394_11394 p@@2 v_1@@1 q w@@1) (InsidePredicate_11394_11394 q w@@1 r u)) (InsidePredicate_11394_11394 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11394_11394 p@@2 v_1@@1 q w@@1) (InsidePredicate_11394_11394 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_11394_11395) (v_1@@2 T@FrameType) (q@@0 T@Field_11394_11395) (w@@2 T@FrameType) (r@@0 T@Field_3905_3935) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11394_11394 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11394_7729 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_11394_7729 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11394_11394 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11394_7729 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_11394_11395) (v_1@@3 T@FrameType) (q@@1 T@Field_3905_3935) (w@@3 T@FrameType) (r@@1 T@Field_11394_11395) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11394_7729 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7729_11394 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_11394_11394 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11394_7729 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7729_11394 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_11394_11395) (v_1@@4 T@FrameType) (q@@2 T@Field_3905_3935) (w@@4 T@FrameType) (r@@2 T@Field_3905_3935) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11394_7729 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7729_7729 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_11394_7729 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11394_7729 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7729_7729 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3905_3935) (v_1@@5 T@FrameType) (q@@3 T@Field_11394_11395) (w@@5 T@FrameType) (r@@3 T@Field_11394_11395) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7729_11394 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11394_11394 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7729_11394 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7729_11394 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11394_11394 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3905_3935) (v_1@@6 T@FrameType) (q@@4 T@Field_11394_11395) (w@@6 T@FrameType) (r@@4 T@Field_3905_3935) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7729_11394 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11394_7729 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7729_7729 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7729_11394 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11394_7729 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3905_3935) (v_1@@7 T@FrameType) (q@@5 T@Field_3905_3935) (w@@7 T@FrameType) (r@@5 T@Field_11394_11395) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7729_7729 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7729_11394 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7729_11394 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7729_7729 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7729_11394 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3905_3935) (v_1@@8 T@FrameType) (q@@6 T@Field_3905_3935) (w@@8 T@FrameType) (r@@6 T@Field_3905_3935) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7729_7729 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7729_7729 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7729_7729 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7729_7729 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7729_7729 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@8 () T@PolymorphicMapType_7690)
(declare-fun a_2 () T@Ref)
(declare-fun Heap@12 () T@PolymorphicMapType_7669)
(declare-fun perm@17 () Real)
(declare-fun Heap@@36 () T@PolymorphicMapType_7669)
(declare-fun Mask@0 () T@PolymorphicMapType_7690)
(declare-fun perm@16 () Real)
(declare-fun perm@15 () Real)
(declare-fun Heap@11 () T@PolymorphicMapType_7669)
(declare-fun Heap@8 () T@PolymorphicMapType_7669)
(declare-fun Heap@9 () T@PolymorphicMapType_7669)
(declare-fun Heap@10 () T@PolymorphicMapType_7669)
(declare-fun freshVersion@1 () T@FrameType)
(declare-fun Mask@7 () T@PolymorphicMapType_7690)
(declare-fun Mask@6 () T@PolymorphicMapType_7690)
(declare-fun perm@13 () Real)
(declare-fun perm@14 () Real)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun perm@12 () Real)
(declare-fun perm@11 () Real)
(declare-fun perm@10 () Real)
(declare-fun Heap@7 () T@PolymorphicMapType_7669)
(declare-fun Heap@4 () T@PolymorphicMapType_7669)
(declare-fun Heap@5 () T@PolymorphicMapType_7669)
(declare-fun Heap@6 () T@PolymorphicMapType_7669)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@5 () T@PolymorphicMapType_7690)
(declare-fun Mask@4 () T@PolymorphicMapType_7690)
(declare-fun perm@8 () Real)
(declare-fun perm@9 () Real)
(declare-fun perm@7 () Real)
(declare-fun perm@6 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_7690)
(declare-fun Heap@3 () T@PolymorphicMapType_7669)
(declare-fun Heap@1 () T@PolymorphicMapType_7669)
(declare-fun Heap@2 () T@PolymorphicMapType_7669)
(declare-fun newVersion@1 () T@FrameType)
(declare-fun Mask@2 () T@PolymorphicMapType_7690)
(declare-fun perm@5 () Real)
(declare-fun perm@4 () Real)
(declare-fun perm@3 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_7690)
(declare-fun Heap@0 () T@PolymorphicMapType_7669)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun perm@2 () Real)
(declare-fun perm@1 () Real)
(declare-fun perm@0 () Real)
(set-info :boogie-vc-id read)
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
 (=> (= (ControlFlow 0 0) 107) (let ((anon42_correct true))
(let ((anon63_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 35) 32)) anon42_correct)))
(let ((anon63_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 33) (- 0 34)) (<= FullPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@8) null (valid a_2)))) (=> (<= FullPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@8) null (valid a_2))) (=> (= (ControlFlow 0 33) 32) anon42_correct))))))
(let ((anon62_Else_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@12) a_2 f_7) (readValid Heap@12 a_2))) (=> (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@12) a_2 f_7) (readValid Heap@12 a_2)) (=> (state Heap@12 Mask@8) (and (=> (= (ControlFlow 0 36) 33) anon63_Then_correct) (=> (= (ControlFlow 0 36) 35) anon63_Else_correct)))))))
(let ((anon62_Then_correct  (=> (= perm@17 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (>= perm@17 NoPerm)) (=> (>= perm@17 NoPerm) (=> (= (ControlFlow 0 30) (- 0 29)) (=> (< NoPerm perm@17) (< NoPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@8) null (valid a_2))))))))))
(let ((anon61_Else_correct  (and (=> (= (ControlFlow 0 38) (- 0 41)) (= (readValid Heap@12 a_2) (+ (readValid Heap@@36 a_2) 1))) (=> (= (readValid Heap@12 a_2) (+ (readValid Heap@@36 a_2) 1)) (=> (state Heap@12 Mask@8) (and (=> (= (ControlFlow 0 38) (- 0 40)) (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@0) a_2 f_7) NoPerm)) (=> (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@0) a_2 f_7) NoPerm) (=> (state Heap@12 Mask@8) (and (=> (= (ControlFlow 0 38) (- 0 39)) (HasDirectPerm_3905_1189 Mask@8 a_2 f_7)) (=> (HasDirectPerm_3905_1189 Mask@8 a_2 f_7) (and (=> (= (ControlFlow 0 38) 30) anon62_Then_correct) (=> (= (ControlFlow 0 38) 36) anon62_Else_correct))))))))))))
(let ((anon61_Then_correct  (=> (= perm@16 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (>= perm@16 NoPerm)) (=> (>= perm@16 NoPerm) (=> (= (ControlFlow 0 27) (- 0 26)) (=> (< NoPerm perm@16) (< NoPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@0) null (valid a_2))))))))))
(let ((anon60_Then_correct  (=> (= perm@15 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (>= perm@15 NoPerm)) (=> (>= perm@15 NoPerm) (=> (= (ControlFlow 0 24) (- 0 23)) (=> (< NoPerm perm@15) (< NoPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@8) null (valid a_2))))))))))
(let ((anon34_correct  (=> (= Heap@12 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@11) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@11) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@11) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@11) (store (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@11) null (|valid#sm| a_2) (PolymorphicMapType_8218 (store (|PolymorphicMapType_8218_3905_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@11) null (|valid#sm| a_2))) a_2 f_7 true) (|PolymorphicMapType_8218_3905_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@11) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_3905_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@11) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_3905_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@11) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_3905_27926#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@11) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_11394_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@11) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_11394_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@11) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_11394_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@11) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_11394_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@11) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_11394_28974#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@11) null (|valid#sm| a_2))))) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@11) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@11) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@11) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@11) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@11))) (=> (and (state Heap@12 Mask@8) (state Heap@12 Mask@8)) (and (=> (= (ControlFlow 0 42) (- 0 44)) (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@8) null (valid a_2)) FullPerm)) (=> (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@8) null (valid a_2)) FullPerm) (=> (state Heap@12 Mask@8) (and (=> (= (ControlFlow 0 42) (- 0 43)) (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@8) a_2 f_7) NoPerm)) (=> (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@8) a_2 f_7) NoPerm) (=> (state Heap@12 Mask@8) (and (and (=> (= (ControlFlow 0 42) 24) anon60_Then_correct) (=> (= (ControlFlow 0 42) 27) anon61_Then_correct)) (=> (= (ControlFlow 0 42) 38) anon61_Else_correct))))))))))))
(let ((anon59_Else_correct  (=> (HasDirectPerm_3934_3935 Mask@8 null (valid a_2)) (=> (and (= Heap@11 Heap@8) (= (ControlFlow 0 46) 42)) anon34_correct))))
(let ((anon59_Then_correct  (=> (not (HasDirectPerm_3934_3935 Mask@8 null (valid a_2))) (=> (and (and (= Heap@9 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@8) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@8) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@8) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@8) (store (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@8) null (|valid#sm| a_2) ZeroPMask) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@8) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@8) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@8) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@8) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@8))) (= Heap@10 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@9) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@9) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@9) (store (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@9) null (valid a_2) freshVersion@1) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@9) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@9) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@9) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@9) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@9) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@9)))) (and (= Heap@11 Heap@10) (= (ControlFlow 0 45) 42))) anon34_correct))))
(let ((anon32_correct  (=> (and (= Mask@7 (PolymorphicMapType_7690 (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@6) (store (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@6) a_2 f_7 (- (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@6) a_2 f_7) perm@13)) (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@6) (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@6) (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@6) (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@6) (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@6) (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@6) (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@6) (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@6))) (= perm@14 (/ (to_real 2) (to_real 3)))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (>= perm@14 NoPerm)) (=> (>= perm@14 NoPerm) (=> (= Mask@8 (PolymorphicMapType_7690 (store (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@7) null (valid a_2) (+ (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@7) null (valid a_2)) perm@14)) (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@7) (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@7) (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@7) (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@7) (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@7) (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@7) (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@7) (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@7) (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@7))) (=> (and (and (state Heap@8 Mask@8) (state Heap@8 Mask@8)) (and (|valid#trigger_3934| Heap@8 (valid a_2)) (= (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@8) null (valid a_2)) (FrameFragment_1189 (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@8) a_2 f_7))))) (and (=> (= (ControlFlow 0 47) 45) anon59_Then_correct) (=> (= (ControlFlow 0 47) 46) anon59_Else_correct)))))))))
(let ((anon58_Else_correct  (=> (and (= perm@13 NoPerm) (= (ControlFlow 0 51) 47)) anon32_correct)))
(let ((anon58_Then_correct  (=> (not (= perm@13 NoPerm)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (<= perm@13 (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@6) a_2 f_7))) (=> (<= perm@13 (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@6) a_2 f_7)) (=> (= (ControlFlow 0 49) 47) anon32_correct))))))
(let ((anon57_Else_correct  (and (=> (= (ControlFlow 0 52) (- 0 54)) (= (readValid Heap@8 a_2) (+ (readValid Heap@@36 a_2) 1))) (=> (= (readValid Heap@8 a_2) (+ (readValid Heap@@36 a_2) 1)) (=> (and (state Heap@8 Mask@6) (= perm@13 (/ (to_real 2) (to_real 3)))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (>= perm@13 NoPerm)) (=> (>= perm@13 NoPerm) (and (=> (= (ControlFlow 0 52) 49) anon58_Then_correct) (=> (= (ControlFlow 0 52) 51) anon58_Else_correct)))))))))
(let ((anon57_Then_correct  (=> (= perm@12 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (>= perm@12 NoPerm)) (=> (>= perm@12 NoPerm) (=> (= (ControlFlow 0 21) (- 0 20)) (=> (< NoPerm perm@12) (< NoPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@0) null (valid a_2))))))))))
(let ((anon56_Then_correct  (=> (= perm@11 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (>= perm@11 NoPerm)) (=> (>= perm@11 NoPerm) (=> (= (ControlFlow 0 18) (- 0 17)) (=> (< NoPerm perm@11) (< NoPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@6) null (valid a_2))))))))))
(let ((anon55_Else_correct  (and (=> (= (ControlFlow 0 55) (- 0 56)) (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@8) a_2 f_7) (readValid Heap@8 a_2))) (=> (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@8) a_2 f_7) (readValid Heap@8 a_2)) (=> (state Heap@8 Mask@6) (and (and (=> (= (ControlFlow 0 55) 18) anon56_Then_correct) (=> (= (ControlFlow 0 55) 21) anon57_Then_correct)) (=> (= (ControlFlow 0 55) 52) anon57_Else_correct)))))))
(let ((anon55_Then_correct  (=> (= perm@10 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (>= perm@10 NoPerm)) (=> (>= perm@10 NoPerm) (=> (= (ControlFlow 0 15) (- 0 14)) (=> (< NoPerm perm@10) (< NoPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@6) null (valid a_2))))))))))
(let ((anon24_correct  (=> (= Heap@8 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@7) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@7) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@7) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@7) (store (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@7) null (|valid#sm| a_2) (PolymorphicMapType_8218 (store (|PolymorphicMapType_8218_3905_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@7) null (|valid#sm| a_2))) a_2 f_7 true) (|PolymorphicMapType_8218_3905_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@7) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_3905_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@7) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_3905_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@7) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_3905_27926#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@7) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_11394_1189#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@7) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_11394_53#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@7) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_11394_7743#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@7) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_11394_11395#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@7) null (|valid#sm| a_2))) (|PolymorphicMapType_8218_11394_28974#PolymorphicMapType_8218| (select (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@7) null (|valid#sm| a_2))))) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@7) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@7) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@7) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@7) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@7))) (=> (and (state Heap@8 Mask@6) (state Heap@8 Mask@6)) (and (=> (= (ControlFlow 0 57) (- 0 60)) (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@6) null (valid a_2)) (/ (to_real 1) (to_real 3)))) (=> (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@6) null (valid a_2)) (/ (to_real 1) (to_real 3))) (=> (state Heap@8 Mask@6) (and (=> (= (ControlFlow 0 57) (- 0 59)) (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@6) a_2 f_7) (/ (to_real 2) (to_real 3)))) (=> (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@6) a_2 f_7) (/ (to_real 2) (to_real 3))) (=> (state Heap@8 Mask@6) (and (=> (= (ControlFlow 0 57) (- 0 58)) (HasDirectPerm_3905_1189 Mask@6 a_2 f_7)) (=> (HasDirectPerm_3905_1189 Mask@6 a_2 f_7) (and (=> (= (ControlFlow 0 57) 15) anon55_Then_correct) (=> (= (ControlFlow 0 57) 55) anon55_Else_correct))))))))))))))
(let ((anon54_Else_correct  (=> (HasDirectPerm_3934_3935 Mask@6 null (valid a_2)) (=> (and (= Heap@7 Heap@4) (= (ControlFlow 0 62) 57)) anon24_correct))))
(let ((anon54_Then_correct  (=> (not (HasDirectPerm_3934_3935 Mask@6 null (valid a_2))) (=> (and (and (= Heap@5 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@4) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@4) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@4) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@4) (store (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@4) null (|valid#sm| a_2) ZeroPMask) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@4) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@4) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@4) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@4) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@4))) (= Heap@6 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@5) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@5) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@5) (store (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@5) null (valid a_2) freshVersion@0) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@5) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@5) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@5) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@5) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@5) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@5)))) (and (= Heap@7 Heap@6) (= (ControlFlow 0 61) 57))) anon24_correct))))
(let ((anon22_correct  (=> (and (= Mask@5 (PolymorphicMapType_7690 (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@4) (store (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@4) a_2 f_7 (- (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@4) a_2 f_7) perm@8)) (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@4) (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@4) (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@4) (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@4) (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@4) (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@4) (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@4) (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@4))) (= perm@9 (/ (to_real 1) (to_real 3)))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (>= perm@9 NoPerm)) (=> (>= perm@9 NoPerm) (=> (= Mask@6 (PolymorphicMapType_7690 (store (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@5) null (valid a_2) (+ (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@5) null (valid a_2)) perm@9)) (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@5) (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@5) (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@5) (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@5) (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@5) (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@5) (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@5) (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@5) (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@5))) (=> (and (and (state Heap@4 Mask@6) (state Heap@4 Mask@6)) (and (|valid#trigger_3934| Heap@4 (valid a_2)) (= (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@4) null (valid a_2)) (FrameFragment_1189 (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@4) a_2 f_7))))) (and (=> (= (ControlFlow 0 63) 61) anon54_Then_correct) (=> (= (ControlFlow 0 63) 62) anon54_Else_correct)))))))))
(let ((anon53_Else_correct  (=> (and (= perm@8 NoPerm) (= (ControlFlow 0 67) 63)) anon22_correct)))
(let ((anon53_Then_correct  (=> (not (= perm@8 NoPerm)) (and (=> (= (ControlFlow 0 65) (- 0 66)) (<= perm@8 (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@4) a_2 f_7))) (=> (<= perm@8 (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@4) a_2 f_7)) (=> (= (ControlFlow 0 65) 63) anon22_correct))))))
(let ((anon52_Else_correct  (and (=> (= (ControlFlow 0 68) (- 0 70)) (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@4) a_2 f_7) (+ (readValid Heap@@36 a_2) 1))) (=> (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@4) a_2 f_7) (+ (readValid Heap@@36 a_2) 1)) (=> (and (state Heap@4 Mask@4) (= perm@8 (/ (to_real 1) (to_real 3)))) (and (=> (= (ControlFlow 0 68) (- 0 69)) (>= perm@8 NoPerm)) (=> (>= perm@8 NoPerm) (and (=> (= (ControlFlow 0 68) 65) anon53_Then_correct) (=> (= (ControlFlow 0 68) 67) anon53_Else_correct)))))))))
(let ((anon52_Then_correct  (=> (= perm@7 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (>= perm@7 NoPerm)) (=> (>= perm@7 NoPerm) (=> (= (ControlFlow 0 12) (- 0 11)) (=> (< NoPerm perm@7) (< NoPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@0) null (valid a_2))))))))))
(let ((anon18_correct  (=> (= perm@6 (/ (to_real 2) (to_real 3))) (and (=> (= (ControlFlow 0 71) (- 0 77)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (=> (=> (> perm@6 NoPerm) (not (= a_2 null))) (=> (and (and (= Mask@4 (PolymorphicMapType_7690 (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@3) (store (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@3) a_2 f_7 (+ (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@3) a_2 f_7) perm@6)) (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@3) (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@3) (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@3) (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@3) (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@3) (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@3) (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@3) (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@3))) (state Heap@3 Mask@4)) (and (state Heap@3 Mask@4) (state Heap@3 Mask@4))) (and (=> (= (ControlFlow 0 71) (- 0 76)) (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@4) null (valid a_2)) NoPerm)) (=> (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@4) null (valid a_2)) NoPerm) (=> (state Heap@3 Mask@4) (and (=> (= (ControlFlow 0 71) (- 0 75)) (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@4) a_2 f_7) FullPerm)) (=> (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@4) a_2 f_7) FullPerm) (=> (state Heap@3 Mask@4) (and (=> (= (ControlFlow 0 71) (- 0 74)) (HasDirectPerm_3905_1189 Mask@4 a_2 f_7)) (=> (HasDirectPerm_3905_1189 Mask@4 a_2 f_7) (and (=> (= (ControlFlow 0 71) (- 0 73)) (= FullPerm (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@4) a_2 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@4) a_2 f_7)) (=> (and (= Heap@4 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@3) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@3) (store (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@3) a_2 f_7 (+ (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@3) a_2 f_7) 1)) (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@3) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@3) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@3) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@3) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@3) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@3) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@3))) (state Heap@4 Mask@4)) (and (=> (= (ControlFlow 0 71) (- 0 72)) (HasDirectPerm_3905_1189 Mask@4 a_2 f_7)) (=> (HasDirectPerm_3905_1189 Mask@4 a_2 f_7) (and (=> (= (ControlFlow 0 71) 12) anon52_Then_correct) (=> (= (ControlFlow 0 71) 68) anon52_Else_correct))))))))))))))))))))))
(let ((anon51_Else_correct  (=> (HasDirectPerm_3934_3935 Mask@3 null (valid a_2)) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 79) 71)) anon18_correct))))
(let ((anon51_Then_correct  (=> (and (and (not (HasDirectPerm_3934_3935 Mask@3 null (valid a_2))) (= Heap@2 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@1) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@1) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@1) (store (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@1) null (valid a_2) newVersion@1) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@1) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@1) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@1) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@1) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@1) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 78) 71))) anon18_correct)))
(let ((anon16_correct  (=> (= Mask@3 (PolymorphicMapType_7690 (store (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@2) null (valid a_2) (- (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@2) null (valid a_2)) perm@5)) (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@2) (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@2) (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@2) (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@2) (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@2) (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@2) (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@2) (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@2) (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@2))) (and (=> (= (ControlFlow 0 80) 78) anon51_Then_correct) (=> (= (ControlFlow 0 80) 79) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (= perm@5 NoPerm) (= (ControlFlow 0 83) 80)) anon16_correct)))
(let ((anon50_Then_correct  (=> (not (= perm@5 NoPerm)) (and (=> (= (ControlFlow 0 81) (- 0 82)) (<= perm@5 (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@2) null (valid a_2)))) (=> (<= perm@5 (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@2) null (valid a_2))) (=> (= (ControlFlow 0 81) 80) anon16_correct))))))
(let ((anon49_Else_correct  (and (=> (= (ControlFlow 0 84) (- 0 86)) (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@1) a_2 f_7) (readValid Heap@1 a_2))) (=> (= (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@1) a_2 f_7) (readValid Heap@1 a_2)) (=> (and (and (state Heap@1 Mask@2) (|valid#trigger_3934| Heap@1 (valid a_2))) (and (= (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@1) null (valid a_2)) (FrameFragment_1189 (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@1) a_2 f_7))) (= perm@5 (/ (to_real 2) (to_real 3))))) (and (=> (= (ControlFlow 0 84) (- 0 85)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (and (=> (= (ControlFlow 0 84) 81) anon50_Then_correct) (=> (= (ControlFlow 0 84) 83) anon50_Else_correct)))))))))
(let ((anon49_Then_correct  (=> (= perm@4 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (=> (= (ControlFlow 0 9) (- 0 8)) (=> (< NoPerm perm@4) (< NoPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@2) null (valid a_2))))))))))
(let ((anon12_correct  (=> (= perm@3 (/ (to_real 1) (to_real 3))) (and (=> (= (ControlFlow 0 87) (- 0 91)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (=> (> perm@3 NoPerm) (not (= a_2 null))) (=> (and (and (= Mask@2 (PolymorphicMapType_7690 (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@1) (store (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@1) a_2 f_7 (+ (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@1) a_2 f_7) perm@3)) (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@1) (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@1) (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@1) (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@1) (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@1) (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@1) (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@1) (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@1))) (state Heap@1 Mask@2)) (and (state Heap@1 Mask@2) (state Heap@1 Mask@2))) (and (=> (= (ControlFlow 0 87) (- 0 90)) (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@2) null (valid a_2)) (/ (to_real 2) (to_real 3)))) (=> (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@2) null (valid a_2)) (/ (to_real 2) (to_real 3))) (=> (state Heap@1 Mask@2) (and (=> (= (ControlFlow 0 87) (- 0 89)) (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@2) a_2 f_7) (/ (to_real 1) (to_real 3)))) (=> (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@2) a_2 f_7) (/ (to_real 1) (to_real 3))) (=> (state Heap@1 Mask@2) (and (=> (= (ControlFlow 0 87) (- 0 88)) (HasDirectPerm_3905_1189 Mask@2 a_2 f_7)) (=> (HasDirectPerm_3905_1189 Mask@2 a_2 f_7) (and (=> (= (ControlFlow 0 87) 9) anon49_Then_correct) (=> (= (ControlFlow 0 87) 84) anon49_Else_correct)))))))))))))))))
(let ((anon48_Else_correct  (=> (HasDirectPerm_3934_3935 Mask@1 null (valid a_2)) (=> (and (= Heap@1 Heap@@36) (= (ControlFlow 0 93) 87)) anon12_correct))))
(let ((anon48_Then_correct  (=> (and (and (not (HasDirectPerm_3934_3935 Mask@1 null (valid a_2))) (= Heap@0 (PolymorphicMapType_7669 (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@36) (|PolymorphicMapType_7669_3780_3781#PolymorphicMapType_7669| Heap@@36) (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@36) (store (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@36) null (valid a_2) newVersion@0) (|PolymorphicMapType_7669_3938_12774#PolymorphicMapType_7669| Heap@@36) (|PolymorphicMapType_7669_3905_3935#PolymorphicMapType_7669| Heap@@36) (|PolymorphicMapType_7669_3905_25110#PolymorphicMapType_7669| Heap@@36) (|PolymorphicMapType_7669_3934_1189#PolymorphicMapType_7669| Heap@@36) (|PolymorphicMapType_7669_3934_53#PolymorphicMapType_7669| Heap@@36) (|PolymorphicMapType_7669_3934_7743#PolymorphicMapType_7669| Heap@@36)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 92) 87))) anon12_correct)))
(let ((anon10_correct  (=> (= Mask@1 (PolymorphicMapType_7690 (store (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@0) null (valid a_2) (- (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@0) null (valid a_2)) perm@2)) (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@0) (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| Mask@0) (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| Mask@0) (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| Mask@0) (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| Mask@0) (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| Mask@0) (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| Mask@0) (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| Mask@0) (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| Mask@0))) (and (=> (= (ControlFlow 0 94) 92) anon48_Then_correct) (=> (= (ControlFlow 0 94) 93) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (= perm@2 NoPerm) (= (ControlFlow 0 97) 94)) anon10_correct)))
(let ((anon47_Then_correct  (=> (not (= perm@2 NoPerm)) (and (=> (= (ControlFlow 0 95) (- 0 96)) (<= perm@2 (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@0) null (valid a_2)))) (=> (<= perm@2 (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@0) null (valid a_2))) (=> (= (ControlFlow 0 95) 94) anon10_correct))))))
(let ((anon8_correct  (=> (and (and (state Heap@@36 Mask@0) (|valid#trigger_3934| Heap@@36 (valid a_2))) (and (= (select (|PolymorphicMapType_7669_3934_3935#PolymorphicMapType_7669| Heap@@36) null (valid a_2)) (FrameFragment_1189 (select (|PolymorphicMapType_7669_3905_1189#PolymorphicMapType_7669| Heap@@36) a_2 f_7))) (= perm@2 (/ (to_real 1) (to_real 3))))) (and (=> (= (ControlFlow 0 98) (- 0 99)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (and (=> (= (ControlFlow 0 98) 95) anon47_Then_correct) (=> (= (ControlFlow 0 98) 97) anon47_Else_correct)))))))
(let ((anon46_Else_correct  (=> (and (= a_2 null) (= (ControlFlow 0 102) 98)) anon8_correct)))
(let ((anon46_Then_correct  (=> (not (= a_2 null)) (and (=> (= (ControlFlow 0 100) (- 0 101)) (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@0) a_2 f_7) NoPerm)) (=> (= (select (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| Mask@0) a_2 f_7) NoPerm) (=> (= (ControlFlow 0 100) 98) anon8_correct))))))
(let ((anon45_Else_correct  (and (=> (= (ControlFlow 0 103) (- 0 105)) (>= (readValid Heap@@36 a_2) (readValid Heap@@36 a_2))) (=> (>= (readValid Heap@@36 a_2) (readValid Heap@@36 a_2)) (=> (state Heap@@36 Mask@0) (and (=> (= (ControlFlow 0 103) (- 0 104)) (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@0) null (valid a_2)) FullPerm)) (=> (= (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@0) null (valid a_2)) FullPerm) (=> (state Heap@@36 Mask@0) (and (=> (= (ControlFlow 0 103) 100) anon46_Then_correct) (=> (= (ControlFlow 0 103) 102) anon46_Else_correct))))))))))
(let ((anon45_Then_correct  (=> (= perm@1 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (= (ControlFlow 0 6) (- 0 5)) (=> (< NoPerm perm@1) (< NoPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@0) null (valid a_2))))))))))
(let ((anon44_Then_correct  (=> (= perm@0 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (= (ControlFlow 0 3) (- 0 2)) (=> (< NoPerm perm@0) (< NoPerm (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| Mask@0) null (valid a_2))))))))))
(let ((anon43_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_7669_3777_53#PolymorphicMapType_7669| Heap@@36) a_2 $allocated) (= Mask@0 (PolymorphicMapType_7690 (store (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| ZeroMask) null (valid a_2) (+ (select (|PolymorphicMapType_7690_3934_3935#PolymorphicMapType_7690| ZeroMask) null (valid a_2)) FullPerm)) (|PolymorphicMapType_7690_3905_1189#PolymorphicMapType_7690| ZeroMask) (|PolymorphicMapType_7690_3934_1189#PolymorphicMapType_7690| ZeroMask) (|PolymorphicMapType_7690_3934_53#PolymorphicMapType_7690| ZeroMask) (|PolymorphicMapType_7690_3934_7743#PolymorphicMapType_7690| ZeroMask) (|PolymorphicMapType_7690_3934_34365#PolymorphicMapType_7690| ZeroMask) (|PolymorphicMapType_7690_3905_3935#PolymorphicMapType_7690| ZeroMask) (|PolymorphicMapType_7690_3905_53#PolymorphicMapType_7690| ZeroMask) (|PolymorphicMapType_7690_3905_7743#PolymorphicMapType_7690| ZeroMask) (|PolymorphicMapType_7690_3905_34779#PolymorphicMapType_7690| ZeroMask)))) (and (state Heap@@36 Mask@0) (state Heap@@36 Mask@0))) (and (and (and (=> (= (ControlFlow 0 106) 1) anon43_Then_correct) (=> (= (ControlFlow 0 106) 3) anon44_Then_correct)) (=> (= (ControlFlow 0 106) 6) anon45_Then_correct)) (=> (= (ControlFlow 0 106) 103) anon45_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 107) 106) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 38) (- 39))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
