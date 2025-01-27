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
(declare-sort T@Field_6521_53 0)
(declare-sort T@Field_6534_6535 0)
(declare-sort T@Field_6521_18393 0)
(declare-sort T@Field_6521_18260 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6482 0)) (((PolymorphicMapType_6482 (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| (Array T@Ref T@Field_6521_53 Real)) (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| (Array T@Ref T@Field_6534_6535 Real)) (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| (Array T@Ref T@Field_6521_18260 Real)) (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| (Array T@Ref T@Field_6521_18393 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7026 0)) (((PolymorphicMapType_7026 (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| (Array T@Ref T@Field_6521_53 Bool)) (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| (Array T@Ref T@Field_6534_6535 Bool)) (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| (Array T@Ref T@Field_6521_18260 Bool)) (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| (Array T@Ref T@Field_6521_18393 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6461 0)) (((PolymorphicMapType_6461 (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| (Array T@Ref T@Field_6521_53 Bool)) (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| (Array T@Ref T@Field_6534_6535 T@Ref)) (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| (Array T@Ref T@Field_6521_18393 T@PolymorphicMapType_7026)) (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| (Array T@Ref T@Field_6521_18260 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6461 T@PolymorphicMapType_6461) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6461 T@PolymorphicMapType_6461) Bool)
(declare-fun state (T@PolymorphicMapType_6461 T@PolymorphicMapType_6482) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6482) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7026)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6461 T@PolymorphicMapType_6461 T@PolymorphicMapType_6482) Bool)
(declare-fun IsPredicateField_6521_18351 (T@Field_6521_18260) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6521 (T@Field_6521_18260) T@Field_6521_18393)
(declare-fun HasDirectPerm_6521_18324 (T@PolymorphicMapType_6482 T@Ref T@Field_6521_18260) Bool)
(declare-fun IsWandField_6521_19900 (T@Field_6521_18260) Bool)
(declare-fun WandMaskField_6521 (T@Field_6521_18260) T@Field_6521_18393)
(declare-fun IdenticalOnKnownLocationsLiberal (T@PolymorphicMapType_6461 T@PolymorphicMapType_6461 T@PolymorphicMapType_6482) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_6461)
(declare-fun ZeroMask () T@PolymorphicMapType_6482)
(declare-fun $allocated () T@Field_6521_53)
(declare-fun InsidePredicate_6521_6521 (T@Field_6521_18260 T@FrameType T@Field_6521_18260 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6521_28909 (T@Field_6521_18393) Bool)
(declare-fun IsWandField_6521_28925 (T@Field_6521_18393) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6521_6535 (T@Field_6534_6535) Bool)
(declare-fun IsWandField_6521_6535 (T@Field_6534_6535) Bool)
(declare-fun IsPredicateField_6521_53 (T@Field_6521_53) Bool)
(declare-fun IsWandField_6521_53 (T@Field_6521_53) Bool)
(declare-fun HasDirectPerm_6521_22335 (T@PolymorphicMapType_6482 T@Ref T@Field_6521_18393) Bool)
(declare-fun HasDirectPerm_6521_6535 (T@PolymorphicMapType_6482 T@Ref T@Field_6534_6535) Bool)
(declare-fun HasDirectPerm_6521_53 (T@PolymorphicMapType_6482 T@Ref T@Field_6521_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6482 T@PolymorphicMapType_6482 T@PolymorphicMapType_6482) Bool)
(declare-fun SumHeap (T@PolymorphicMapType_6461 T@PolymorphicMapType_6461 T@PolymorphicMapType_6482 T@PolymorphicMapType_6461 T@PolymorphicMapType_6482) Bool)
(declare-fun |pre'| (T@PolymorphicMapType_6461) Bool)
(declare-fun |pre#frame| (T@FrameType) Bool)
(declare-fun |needsPre'| (T@PolymorphicMapType_6461) Bool)
(declare-fun |needsPre#frame| (T@FrameType) Bool)
(declare-fun dummyFunction_1814 (Bool) Bool)
(declare-fun |pre#triggerStateless| () Bool)
(declare-fun |needsPre#triggerStateless| () Bool)
(declare-fun pre (T@PolymorphicMapType_6461) Bool)
(declare-fun needsPre (T@PolymorphicMapType_6461) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6461) (Heap1 T@PolymorphicMapType_6461) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.95:15|
 :skolemid |12|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6461) (Mask T@PolymorphicMapType_6482) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.182:15|
 :skolemid |27|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6461) (Heap1@@0 T@PolymorphicMapType_6461) (Heap2 T@PolymorphicMapType_6461) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.100:15|
 :skolemid |13|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6521_18393) ) (!  (not (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6521_18260) ) (!  (not (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6534_6535) ) (!  (not (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6521_53) ) (!  (not (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6461) (ExhaleHeap T@PolymorphicMapType_6461) (Mask@@0 T@PolymorphicMapType_6482) (pm_f_1 T@Field_6521_18260) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6521_18324 Mask@@0 null pm_f_1) (IsPredicateField_6521_18351 pm_f_1)) (= (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@0) null (PredicateMaskField_6521 pm_f_1)) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap) null (PredicateMaskField_6521 pm_f_1)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6521_18351 pm_f_1) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap) null (PredicateMaskField_6521 pm_f_1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6461) (ExhaleHeap@@0 T@PolymorphicMapType_6461) (Mask@@1 T@PolymorphicMapType_6482) (pm_f_1@@0 T@Field_6521_18260) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6521_18324 Mask@@1 null pm_f_1@@0) (IsWandField_6521_19900 pm_f_1@@0)) (= (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@1) null (WandMaskField_6521 pm_f_1@@0)) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@0) null (WandMaskField_6521 pm_f_1@@0)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6521_19900 pm_f_1@@0) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@0) null (WandMaskField_6521 pm_f_1@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6461) (ExhaleHeap@@1 T@PolymorphicMapType_6461) (Mask@@2 T@PolymorphicMapType_6482) (pm_f_1@@1 T@Field_6521_18260) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6521_18324 Mask@@2 null pm_f_1@@1) (IsPredicateField_6521_18351 pm_f_1@@1)) (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_6521_53) ) (!  (=> (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@2) null (PredicateMaskField_6521 pm_f_1@@1))) o2_1 f_9) (= (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@2) o2_1 f_9) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@1) o2_1 f_9)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@1) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_6534_6535) ) (!  (=> (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@2) null (PredicateMaskField_6521 pm_f_1@@1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@2) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@1) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@1) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_6521_18260) ) (!  (=> (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@2) null (PredicateMaskField_6521 pm_f_1@@1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@2) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@1) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@1) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_6521_18393) ) (!  (=> (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@2) null (PredicateMaskField_6521 pm_f_1@@1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@2) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@1) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@1) o2_1@@2 f_9@@2))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6521_18351 pm_f_1@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6461) (ExhaleHeap@@2 T@PolymorphicMapType_6461) (Mask@@3 T@PolymorphicMapType_6482) (pm_f_1@@2 T@Field_6521_18260) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6521_18324 Mask@@3 null pm_f_1@@2) (IsWandField_6521_19900 pm_f_1@@2)) (and (and (and (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_6521_53) ) (!  (=> (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@3) null (WandMaskField_6521 pm_f_1@@2))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@3) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@2) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@2) o2_1@@3 f_9@@3))
)) (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_6534_6535) ) (!  (=> (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@3) null (WandMaskField_6521 pm_f_1@@2))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@3) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@2) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@2) o2_1@@4 f_9@@4))
))) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_6521_18260) ) (!  (=> (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@3) null (WandMaskField_6521 pm_f_1@@2))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@3) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@2) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@2) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_6521_18393) ) (!  (=> (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@3) null (WandMaskField_6521 pm_f_1@@2))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@3) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@2) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@2) o2_1@@6 f_9@@6))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6521_19900 pm_f_1@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6461) (ExhaleHeap@@3 T@PolymorphicMapType_6461) (Mask@@4 T@PolymorphicMapType_6482) (pm_f_20 T@Field_6521_18260) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6521_18324 Mask@@4 null pm_f_20) (IsPredicateField_6521_18351 pm_f_20)) (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_6521_53) ) (!  (=> (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@4) null (PredicateMaskField_6521 pm_f_20))) o2_20 f_53) (= (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@4) o2_20 f_53) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@3) o2_20 f_53)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@3) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_6534_6535) ) (!  (=> (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@4) null (PredicateMaskField_6521 pm_f_20))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@4) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@3) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@3) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_6521_18260) ) (!  (=> (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@4) null (PredicateMaskField_6521 pm_f_20))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@4) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@3) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@3) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_6521_18393) ) (!  (=> (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@4) null (PredicateMaskField_6521 pm_f_20))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@4) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@3) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@3) o2_20@@2 f_53@@2))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6521_18351 pm_f_20))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6461) (ExhaleHeap@@4 T@PolymorphicMapType_6461) (Mask@@5 T@PolymorphicMapType_6482) (pm_f_20@@0 T@Field_6521_18260) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6521_18324 Mask@@5 null pm_f_20@@0) (IsWandField_6521_19900 pm_f_20@@0)) (and (and (and (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_6521_53) ) (!  (=> (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@5) null (WandMaskField_6521 pm_f_20@@0))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@5) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@4) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@4) o2_20@@3 f_53@@3))
)) (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_6534_6535) ) (!  (=> (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@5) null (WandMaskField_6521 pm_f_20@@0))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@5) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@4) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@4) o2_20@@4 f_53@@4))
))) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_6521_18260) ) (!  (=> (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@5) null (WandMaskField_6521 pm_f_20@@0))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@5) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@4) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@4) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_6521_18393) ) (!  (=> (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@5) null (WandMaskField_6521 pm_f_20@@0))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@5) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@4) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@4) o2_20@@6 f_53@@6))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_6521_19900 pm_f_20@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6461) (ExhaleHeap@@5 T@PolymorphicMapType_6461) (Mask@@6 T@PolymorphicMapType_6482) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@6) o_4 $allocated) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@5) o_4 $allocated)))
 :qid |stdinbpl.75:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@5) o_4 $allocated))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6461) (ExhaleHeap@@6 T@PolymorphicMapType_6461) (Mask@@7 T@PolymorphicMapType_6482) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@7) o_41 $allocated) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@6) o_41 $allocated)))
 :qid |stdinbpl.142:15|
 :skolemid |23|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@6) o_41 $allocated))
)))
(assert (forall ((p T@Field_6521_18260) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6521_6521 p v_1 p w))
 :qid |stdinbpl.232:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_6521_6521 p v_1 p w))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6461) (ExhaleHeap@@7 T@PolymorphicMapType_6461) (Mask@@8 T@PolymorphicMapType_6482) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (succHeap Heap@@8 ExhaleHeap@@7))
 :qid |stdinbpl.85:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6461) (ExhaleHeap@@8 T@PolymorphicMapType_6461) (Mask@@9 T@PolymorphicMapType_6482) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@9 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@9 ExhaleHeap@@8))
 :qid |stdinbpl.90:15|
 :skolemid |11|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@9 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6461) (ExhaleHeap@@9 T@PolymorphicMapType_6461) (Mask@@10 T@PolymorphicMapType_6482) (pm_f_20@@1 T@Field_6521_18260) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_6521_18324 Mask@@10 null pm_f_20@@1) (IsPredicateField_6521_18351 pm_f_20@@1)) (and (and (and (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_6521_53) ) (!  (=> (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@10) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@9) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@7 f_53@@7))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@9) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@7 f_53@@7))
)) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_6534_6535) ) (!  (=> (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@10) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@9) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@8 f_53@@8))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@9) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@8 f_53@@8))
))) (forall ((o2_20@@9 T@Ref) (f_53@@9 T@Field_6521_18260) ) (!  (=> (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@10) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@9 f_53@@9) (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@9) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@9 f_53@@9))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@9) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@9 f_53@@9))
))) (forall ((o2_20@@10 T@Ref) (f_53@@10 T@Field_6521_18393) ) (!  (=> (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@10) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@10 f_53@@10) (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@9) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@10 f_53@@10))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@9) null (PredicateMaskField_6521 pm_f_20@@1))) o2_20@@10 f_53@@10))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@10) (IsPredicateField_6521_18351 pm_f_20@@1) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@9) null (PredicateMaskField_6521 pm_f_20@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6461) (ExhaleHeap@@10 T@PolymorphicMapType_6461) (Mask@@11 T@PolymorphicMapType_6482) (pm_f_20@@2 T@Field_6521_18260) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_6521_18324 Mask@@11 null pm_f_20@@2) (IsWandField_6521_19900 pm_f_20@@2)) (and (and (and (forall ((o2_20@@11 T@Ref) (f_53@@11 T@Field_6521_53) ) (!  (=> (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@11) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@11 f_53@@11) (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@10) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@11 f_53@@11))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7026_6521_53#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@10) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@11 f_53@@11))
)) (forall ((o2_20@@12 T@Ref) (f_53@@12 T@Field_6534_6535) ) (!  (=> (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@11) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@12 f_53@@12) (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@10) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@12 f_53@@12))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7026_6521_6535#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@10) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@12 f_53@@12))
))) (forall ((o2_20@@13 T@Ref) (f_53@@13 T@Field_6521_18260) ) (!  (=> (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@11) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@13 f_53@@13) (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@10) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@13 f_53@@13))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7026_6521_18260#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@10) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@13 f_53@@13))
))) (forall ((o2_20@@14 T@Ref) (f_53@@14 T@Field_6521_18393) ) (!  (=> (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@11) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@14 f_53@@14) (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@10) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@14 f_53@@14))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7026_6521_19373#PolymorphicMapType_7026| (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@10) null (WandMaskField_6521 pm_f_20@@2))) o2_20@@14 f_53@@14))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@11) (IsWandField_6521_19900 pm_f_20@@2) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@10) null (WandMaskField_6521 pm_f_20@@2)))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6482) (o_2@@3 T@Ref) (f_4@@3 T@Field_6521_18393) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6521_28909 f_4@@3))) (not (IsWandField_6521_28925 f_4@@3))) (<= (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6482) (o_2@@4 T@Ref) (f_4@@4 T@Field_6521_18260) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6521_18351 f_4@@4))) (not (IsWandField_6521_19900 f_4@@4))) (<= (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6482) (o_2@@5 T@Ref) (f_4@@5 T@Field_6534_6535) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6521_6535 f_4@@5))) (not (IsWandField_6521_6535 f_4@@5))) (<= (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6482) (o_2@@6 T@Ref) (f_4@@6 T@Field_6521_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6521_53 f_4@@6))) (not (IsWandField_6521_53 f_4@@6))) (<= (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6482) (o_2@@7 T@Ref) (f_4@@7 T@Field_6521_18393) ) (! (= (HasDirectPerm_6521_22335 Mask@@16 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| Mask@@16) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_6521_22335 Mask@@16 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6482) (o_2@@8 T@Ref) (f_4@@8 T@Field_6521_18260) ) (! (= (HasDirectPerm_6521_18324 Mask@@17 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| Mask@@17) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_6521_18324 Mask@@17 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6482) (o_2@@9 T@Ref) (f_4@@9 T@Field_6534_6535) ) (! (= (HasDirectPerm_6521_6535 Mask@@18 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| Mask@@18) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_6521_6535 Mask@@18 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6482) (o_2@@10 T@Ref) (f_4@@10 T@Field_6521_53) ) (! (= (HasDirectPerm_6521_53 Mask@@19 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| Mask@@19) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_6521_53 Mask@@19 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.220:15|
 :skolemid |31|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6461) (ExhaleHeap@@11 T@PolymorphicMapType_6461) (Mask@@20 T@PolymorphicMapType_6482) (o_4@@0 T@Ref) (f_9@@7 T@Field_6521_18393) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@20) (=> (HasDirectPerm_6521_22335 Mask@@20 o_4@@0 f_9@@7) (= (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@12) o_4@@0 f_9@@7) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@11) o_4@@0 f_9@@7))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@20) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@11) o_4@@0 f_9@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6461) (ExhaleHeap@@12 T@PolymorphicMapType_6461) (Mask@@21 T@PolymorphicMapType_6482) (o_4@@1 T@Ref) (f_9@@8 T@Field_6521_18260) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@21) (=> (HasDirectPerm_6521_18324 Mask@@21 o_4@@1 f_9@@8) (= (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@13) o_4@@1 f_9@@8) (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@12) o_4@@1 f_9@@8))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@21) (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@12) o_4@@1 f_9@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6461) (ExhaleHeap@@13 T@PolymorphicMapType_6461) (Mask@@22 T@PolymorphicMapType_6482) (o_4@@2 T@Ref) (f_9@@9 T@Field_6534_6535) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@22) (=> (HasDirectPerm_6521_6535 Mask@@22 o_4@@2 f_9@@9) (= (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@14) o_4@@2 f_9@@9) (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@13) o_4@@2 f_9@@9))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@22) (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@13) o_4@@2 f_9@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6461) (ExhaleHeap@@14 T@PolymorphicMapType_6461) (Mask@@23 T@PolymorphicMapType_6482) (o_4@@3 T@Ref) (f_9@@10 T@Field_6521_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@23) (=> (HasDirectPerm_6521_53 Mask@@23 o_4@@3 f_9@@10) (= (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@15) o_4@@3 f_9@@10) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@14) o_4@@3 f_9@@10))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@23) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@14) o_4@@3 f_9@@10))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6461) (ExhaleHeap@@15 T@PolymorphicMapType_6461) (Mask@@24 T@PolymorphicMapType_6482) (o_41@@0 T@Ref) (f_53@@15 T@Field_6521_18393) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@15 Mask@@24) (=> (HasDirectPerm_6521_22335 Mask@@24 o_41@@0 f_53@@15) (= (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@16) o_41@@0 f_53@@15) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@15) o_41@@0 f_53@@15))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@15 Mask@@24) (select (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| ExhaleHeap@@15) o_41@@0 f_53@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6461) (ExhaleHeap@@16 T@PolymorphicMapType_6461) (Mask@@25 T@PolymorphicMapType_6482) (o_41@@1 T@Ref) (f_53@@16 T@Field_6521_18260) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@25) (=> (HasDirectPerm_6521_18324 Mask@@25 o_41@@1 f_53@@16) (= (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@17) o_41@@1 f_53@@16) (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@16) o_41@@1 f_53@@16))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@25) (select (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| ExhaleHeap@@16) o_41@@1 f_53@@16))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6461) (ExhaleHeap@@17 T@PolymorphicMapType_6461) (Mask@@26 T@PolymorphicMapType_6482) (o_41@@2 T@Ref) (f_53@@17 T@Field_6534_6535) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@26) (=> (HasDirectPerm_6521_6535 Mask@@26 o_41@@2 f_53@@17) (= (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@18) o_41@@2 f_53@@17) (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@17) o_41@@2 f_53@@17))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@26) (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| ExhaleHeap@@17) o_41@@2 f_53@@17))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6461) (ExhaleHeap@@18 T@PolymorphicMapType_6461) (Mask@@27 T@PolymorphicMapType_6482) (o_41@@3 T@Ref) (f_53@@18 T@Field_6521_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@27) (=> (HasDirectPerm_6521_53 Mask@@27 o_41@@3 f_53@@18) (= (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@19) o_41@@3 f_53@@18) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@18) o_41@@3 f_53@@18))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@27) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| ExhaleHeap@@18) o_41@@3 f_53@@18))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6521_18393) ) (! (= (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6521_18260) ) (! (= (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6534_6535) ) (! (= (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6521_53) ) (! (= (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6482) (SummandMask1 T@PolymorphicMapType_6482) (SummandMask2 T@PolymorphicMapType_6482) (o_2@@15 T@Ref) (f_4@@15 T@Field_6521_18393) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6482_6521_28000#PolymorphicMapType_6482| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6482) (SummandMask1@@0 T@PolymorphicMapType_6482) (SummandMask2@@0 T@PolymorphicMapType_6482) (o_2@@16 T@Ref) (f_4@@16 T@Field_6521_18260) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6482_6521_18260#PolymorphicMapType_6482| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6482) (SummandMask1@@1 T@PolymorphicMapType_6482) (SummandMask2@@1 T@PolymorphicMapType_6482) (o_2@@17 T@Ref) (f_4@@17 T@Field_6534_6535) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6482_6521_6535#PolymorphicMapType_6482| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6482) (SummandMask1@@2 T@PolymorphicMapType_6482) (SummandMask2@@2 T@PolymorphicMapType_6482) (o_2@@18 T@Ref) (f_4@@18 T@Field_6521_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6482_6521_53#PolymorphicMapType_6482| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6461) (Heap1@@1 T@PolymorphicMapType_6461) (Mask1 T@PolymorphicMapType_6482) (Heap2@@0 T@PolymorphicMapType_6461) (Mask2 T@PolymorphicMapType_6482) ) (! (= (SumHeap Heap@@20 Heap1@@1 Mask1 Heap2@@0 Mask2)  (and (IdenticalOnKnownLocationsLiberal Heap1@@1 Heap@@20 Mask1) (IdenticalOnKnownLocationsLiberal Heap2@@0 Heap@@20 Mask2)))
 :qid |stdinbpl.150:15|
 :skolemid |24|
 :pattern ( (SumHeap Heap@@20 Heap1@@1 Mask1 Heap2@@0 Mask2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6461) (Mask@@28 T@PolymorphicMapType_6482) ) (!  (=> (state Heap@@21 Mask@@28) (= (|pre'| Heap@@21) (|pre#frame| EmptyFrame)))
 :qid |stdinbpl.255:15|
 :skolemid |36|
 :pattern ( (state Heap@@21 Mask@@28) (|pre'| Heap@@21))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6461) (Mask@@29 T@PolymorphicMapType_6482) ) (!  (=> (state Heap@@22 Mask@@29) (= (|needsPre'| Heap@@22) (|needsPre#frame| EmptyFrame)))
 :qid |stdinbpl.296:15|
 :skolemid |39|
 :pattern ( (state Heap@@22 Mask@@29) (|needsPre'| Heap@@22))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6461) ) (! (dummyFunction_1814 |pre#triggerStateless|)
 :qid |stdinbpl.248:15|
 :skolemid |35|
 :pattern ( (|pre'| Heap@@23))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6461) ) (! (dummyFunction_1814 |needsPre#triggerStateless|)
 :qid |stdinbpl.289:15|
 :skolemid |38|
 :pattern ( (|needsPre'| Heap@@24))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6461) (o_3 T@Ref) (f_10 T@Field_6521_18260) (v T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_6461 (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@25) (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@25) (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@25) (store (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@25) o_3 f_10 v)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6461 (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@25) (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@25) (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@25) (store (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@25) o_3 f_10 v)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6461) (o_3@@0 T@Ref) (f_10@@0 T@Field_6521_18393) (v@@0 T@PolymorphicMapType_7026) ) (! (succHeap Heap@@26 (PolymorphicMapType_6461 (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@26) (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@26) (store (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@26) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@26)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6461 (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@26) (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@26) (store (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@26) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6461) (o_3@@1 T@Ref) (f_10@@1 T@Field_6534_6535) (v@@1 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_6461 (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@27) (store (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@27) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@27) (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@27)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6461 (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@27) (store (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@27) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@27) (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6461) (o_3@@2 T@Ref) (f_10@@2 T@Field_6521_53) (v@@2 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_6461 (store (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@28) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@28) (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@28) (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@28)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6461 (store (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@28) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@28) (|PolymorphicMapType_6461_6521_18437#PolymorphicMapType_6461| Heap@@28) (|PolymorphicMapType_6461_6521_18260#PolymorphicMapType_6461| Heap@@28)))
)))
(assert (forall ((o_3@@3 T@Ref) (f_8 T@Field_6534_6535) (Heap@@29 T@PolymorphicMapType_6461) ) (!  (=> (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@29) o_3@@3 $allocated) (select (|PolymorphicMapType_6461_2997_53#PolymorphicMapType_6461| Heap@@29) (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@29) o_3@@3 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6461_3000_3001#PolymorphicMapType_6461| Heap@@29) o_3@@3 f_8))
)))
(assert (forall ((p@@1 T@Field_6521_18260) (v_1@@0 T@FrameType) (q T@Field_6521_18260) (w@@0 T@FrameType) (r T@Field_6521_18260) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6521_6521 p@@1 v_1@@0 q w@@0) (InsidePredicate_6521_6521 q w@@0 r u)) (InsidePredicate_6521_6521 p@@1 v_1@@0 r u))
 :qid |stdinbpl.227:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_6521_6521 p@@1 v_1@@0 q w@@0) (InsidePredicate_6521_6521 q w@@0 r u))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6461) ) (!  (and (= (pre Heap@@30) (|pre'| Heap@@30)) (dummyFunction_1814 |pre#triggerStateless|))
 :qid |stdinbpl.244:15|
 :skolemid |34|
 :pattern ( (pre Heap@@30))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6461) ) (!  (and (= (needsPre Heap@@31) (|needsPre'| Heap@@31)) (dummyFunction_1814 |needsPre#triggerStateless|))
 :qid |stdinbpl.285:15|
 :skolemid |37|
 :pattern ( (needsPre Heap@@31))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_6461)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id test3fail)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon13_Else_correct true))
(let ((anon13_Then_correct true))
(let ((anon7_correct  (=> (state Heap@@32 ZeroMask) (and (=> (= (ControlFlow 0 6) 4) anon13_Then_correct) (=> (= (ControlFlow 0 6) 5) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not (needsPre Heap@@32)) (=> (and (state Heap@@32 ZeroMask) (= (ControlFlow 0 8) 6)) anon7_correct))))
(let ((anon12_Then_correct  (=> (needsPre Heap@@32) (=> (and (state Heap@@32 ZeroMask) (= (ControlFlow 0 7) 6)) anon7_correct))))
(let ((anon11_Then_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (pre Heap@@32))))
(let ((anon10_Else_correct  (=> (state Heap@@32 ZeroMask) (=> (and (state Heap@@32 ZeroMask) (state Heap@@32 ZeroMask)) (and (and (=> (= (ControlFlow 0 9) 3) anon11_Then_correct) (=> (= (ControlFlow 0 9) 7) anon12_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon12_Else_correct))))))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@32 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (state Heap@@32 ZeroMask))) (and (=> (= (ControlFlow 0 10) 1) anon10_Then_correct) (=> (= (ControlFlow 0 10) 9) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
