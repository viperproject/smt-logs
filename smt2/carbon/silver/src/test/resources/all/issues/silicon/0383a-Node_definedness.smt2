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
(declare-sort T@Field_8415_53 0)
(declare-sort T@Field_8428_8429 0)
(declare-sort T@Field_14663_14664 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14676_14681 0)
(declare-sort T@Field_5029_3211 0)
(declare-sort T@Field_5029_8429 0)
(declare-sort T@Field_5024_5030 0)
(declare-sort T@Field_5024_14681 0)
(declare-datatypes ((T@PolymorphicMapType_8376 0)) (((PolymorphicMapType_8376 (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| (Array T@Ref T@Field_8415_53 Real)) (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| (Array T@Ref T@Field_14663_14664 Real)) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| (Array T@Ref T@Field_5024_5030 Real)) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| (Array T@Ref T@Field_8428_8429 Real)) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| (Array T@Ref T@Field_5024_14681 Real)) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| (Array T@Ref T@Field_5029_3211 Real)) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| (Array T@Ref T@Field_5029_8429 Real)) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| (Array T@Ref T@Field_14676_14681 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8904 0)) (((PolymorphicMapType_8904 (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (Array T@Ref T@Field_8415_53 Bool)) (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (Array T@Ref T@Field_8428_8429 Bool)) (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (Array T@Ref T@Field_5024_5030 Bool)) (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (Array T@Ref T@Field_5024_14681 Bool)) (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (Array T@Ref T@Field_5029_3211 Bool)) (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (Array T@Ref T@Field_5029_8429 Bool)) (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (Array T@Ref T@Field_14663_14664 Bool)) (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (Array T@Ref T@Field_14676_14681 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8355 0)) (((PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| (Array T@Ref T@Field_8415_53 Bool)) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| (Array T@Ref T@Field_8428_8429 T@Ref)) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| (Array T@Ref T@Field_14663_14664 T@FrameType)) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| (Array T@Ref T@Field_14676_14681 T@PolymorphicMapType_8904)) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| (Array T@Ref T@Field_5029_3211 Bool)) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| (Array T@Ref T@Field_5029_8429 T@Ref)) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| (Array T@Ref T@Field_5024_5030 T@FrameType)) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| (Array T@Ref T@Field_5024_14681 T@PolymorphicMapType_8904)) ) ) ))
(declare-fun $allocated () T@Field_8415_53)
(declare-fun visited () T@Field_8415_53)
(declare-fun bad_field () T@Field_8415_53)
(declare-fun succHeap (T@PolymorphicMapType_8355 T@PolymorphicMapType_8355) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8355 T@PolymorphicMapType_8355) Bool)
(declare-fun state (T@PolymorphicMapType_8355 T@PolymorphicMapType_8376) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8376) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8355 T@PolymorphicMapType_8355 T@PolymorphicMapType_8376) Bool)
(declare-fun IsPredicateField_5024_24254 (T@Field_5024_5030) Bool)
(declare-fun HasDirectPerm_5024_5030 (T@PolymorphicMapType_8376 T@Ref T@Field_5024_5030) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5024 (T@Field_5024_5030) T@Field_5024_14681)
(declare-fun IsPredicateField_5029_5030 (T@Field_14663_14664) Bool)
(declare-fun HasDirectPerm_5029_5030 (T@PolymorphicMapType_8376 T@Ref T@Field_14663_14664) Bool)
(declare-fun PredicateMaskField_5029 (T@Field_14663_14664) T@Field_14676_14681)
(declare-fun IsWandField_5024_27218 (T@Field_5024_5030) Bool)
(declare-fun WandMaskField_5024 (T@Field_5024_5030) T@Field_5024_14681)
(declare-fun IsWandField_5029_26861 (T@Field_14663_14664) Bool)
(declare-fun WandMaskField_5029 (T@Field_14663_14664) T@Field_14676_14681)
(declare-fun ZeroPMask () T@PolymorphicMapType_8904)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun Node (T@Ref) T@Field_14663_14664)
(declare-fun |Node#trigger_5029| (T@PolymorphicMapType_8355 T@Field_14663_14664) Bool)
(declare-fun |Node#everUsed_5029| (T@Field_14663_14664) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |Node#sm| (T@Ref) T@Field_14676_14681)
(declare-fun dummyHeap () T@PolymorphicMapType_8355)
(declare-fun ZeroMask () T@PolymorphicMapType_8376)
(declare-fun InsidePredicate_14663_14663 (T@Field_14663_14664 T@FrameType T@Field_14663_14664 T@FrameType) Bool)
(declare-fun InsidePredicate_8415_8415 (T@Field_5024_5030 T@FrameType T@Field_5024_5030 T@FrameType) Bool)
(declare-fun IsPredicateField_5024_3211 (T@Field_8415_53) Bool)
(declare-fun IsWandField_5024_3211 (T@Field_8415_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5029_32932 (T@Field_14676_14681) Bool)
(declare-fun IsWandField_5029_32948 (T@Field_14676_14681) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5029_8429 (T@Field_5029_8429) Bool)
(declare-fun IsWandField_5029_8429 (T@Field_5029_8429) Bool)
(declare-fun IsPredicateField_5029_3211 (T@Field_5029_3211) Bool)
(declare-fun IsWandField_5029_3211 (T@Field_5029_3211) Bool)
(declare-fun IsPredicateField_5024_32269 (T@Field_5024_14681) Bool)
(declare-fun IsWandField_5024_32285 (T@Field_5024_14681) Bool)
(declare-fun IsPredicateField_5024_8429 (T@Field_8428_8429) Bool)
(declare-fun IsWandField_5024_8429 (T@Field_8428_8429) Bool)
(declare-fun HasDirectPerm_5024_23641 (T@PolymorphicMapType_8376 T@Ref T@Field_5024_14681) Bool)
(declare-fun HasDirectPerm_5024_8429 (T@PolymorphicMapType_8376 T@Ref T@Field_8428_8429) Bool)
(declare-fun HasDirectPerm_5024_3211 (T@PolymorphicMapType_8376 T@Ref T@Field_8415_53) Bool)
(declare-fun HasDirectPerm_5029_22776 (T@PolymorphicMapType_8376 T@Ref T@Field_14676_14681) Bool)
(declare-fun HasDirectPerm_5029_8429 (T@PolymorphicMapType_8376 T@Ref T@Field_5029_8429) Bool)
(declare-fun HasDirectPerm_5029_3211 (T@PolymorphicMapType_8376 T@Ref T@Field_5029_3211) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8376 T@PolymorphicMapType_8376 T@PolymorphicMapType_8376) Bool)
(declare-fun getPredWandId_5029_5030 (T@Field_14663_14664) Int)
(declare-fun InsidePredicate_14663_8415 (T@Field_14663_14664 T@FrameType T@Field_5024_5030 T@FrameType) Bool)
(declare-fun InsidePredicate_8415_14663 (T@Field_5024_5030 T@FrameType T@Field_14663_14664 T@FrameType) Bool)
(assert (distinct $allocated visited bad_field)
)
(assert (forall ((Heap0 T@PolymorphicMapType_8355) (Heap1 T@PolymorphicMapType_8355) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8355) (Mask T@PolymorphicMapType_8376) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8355) (ExhaleHeap T@PolymorphicMapType_8355) (Mask@@0 T@PolymorphicMapType_8376) (pm_f_5 T@Field_5024_5030) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5024_5030 Mask@@0 null pm_f_5) (IsPredicateField_5024_24254 pm_f_5)) (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_8415_53) ) (!  (=> (select (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5 f_23) (= (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@0) o2_5 f_23) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_8428_8429) ) (!  (=> (select (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@0) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_5024_5030) ) (!  (=> (select (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@0) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_5024_14681) ) (!  (=> (select (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_5029_3211) ) (!  (=> (select (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@0) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap) o2_5@@3 f_23@@3))
))) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_5029_8429) ) (!  (=> (select (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@0) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_14663_14664) ) (!  (=> (select (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@0) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_14676_14681) ) (!  (=> (select (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@0) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap) o2_5@@6 f_23@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5024_24254 pm_f_5))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8355) (ExhaleHeap@@0 T@PolymorphicMapType_8355) (Mask@@1 T@PolymorphicMapType_8376) (pm_f_5@@0 T@Field_14663_14664) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5029_5030 Mask@@1 null pm_f_5@@0) (IsPredicateField_5029_5030 pm_f_5@@0)) (and (and (and (and (and (and (and (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_8415_53) ) (!  (=> (select (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@1) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@7 f_23@@7))
)) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_8428_8429) ) (!  (=> (select (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@1) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@8 f_23@@8))
))) (forall ((o2_5@@9 T@Ref) (f_23@@9 T@Field_5024_5030) ) (!  (=> (select (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@9 f_23@@9) (= (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@1) o2_5@@9 f_23@@9) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@9 f_23@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@9 f_23@@9))
))) (forall ((o2_5@@10 T@Ref) (f_23@@10 T@Field_5024_14681) ) (!  (=> (select (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@10 f_23@@10) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@1) o2_5@@10 f_23@@10) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@10 f_23@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@10 f_23@@10))
))) (forall ((o2_5@@11 T@Ref) (f_23@@11 T@Field_5029_3211) ) (!  (=> (select (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@11 f_23@@11) (= (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@1) o2_5@@11 f_23@@11) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@11 f_23@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@11 f_23@@11))
))) (forall ((o2_5@@12 T@Ref) (f_23@@12 T@Field_5029_8429) ) (!  (=> (select (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@12 f_23@@12) (= (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@1) o2_5@@12 f_23@@12) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@12 f_23@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@12 f_23@@12))
))) (forall ((o2_5@@13 T@Ref) (f_23@@13 T@Field_14663_14664) ) (!  (=> (select (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@13 f_23@@13) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@1) o2_5@@13 f_23@@13) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@13 f_23@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@13 f_23@@13))
))) (forall ((o2_5@@14 T@Ref) (f_23@@14 T@Field_14676_14681) ) (!  (=> (select (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@14 f_23@@14) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) o2_5@@14 f_23@@14) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@14 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@14 f_23@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5029_5030 pm_f_5@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8355) (ExhaleHeap@@1 T@PolymorphicMapType_8355) (Mask@@2 T@PolymorphicMapType_8376) (pm_f_5@@1 T@Field_5024_5030) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5024_5030 Mask@@2 null pm_f_5@@1) (IsWandField_5024_27218 pm_f_5@@1)) (and (and (and (and (and (and (and (forall ((o2_5@@15 T@Ref) (f_23@@15 T@Field_8415_53) ) (!  (=> (select (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@15 f_23@@15) (= (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@2) o2_5@@15 f_23@@15) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@15 f_23@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@15 f_23@@15))
)) (forall ((o2_5@@16 T@Ref) (f_23@@16 T@Field_8428_8429) ) (!  (=> (select (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@16 f_23@@16) (= (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@2) o2_5@@16 f_23@@16) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@16 f_23@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@16 f_23@@16))
))) (forall ((o2_5@@17 T@Ref) (f_23@@17 T@Field_5024_5030) ) (!  (=> (select (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@17 f_23@@17) (= (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@2) o2_5@@17 f_23@@17) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@17 f_23@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@17 f_23@@17))
))) (forall ((o2_5@@18 T@Ref) (f_23@@18 T@Field_5024_14681) ) (!  (=> (select (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@18 f_23@@18) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) o2_5@@18 f_23@@18) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@18 f_23@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@18 f_23@@18))
))) (forall ((o2_5@@19 T@Ref) (f_23@@19 T@Field_5029_3211) ) (!  (=> (select (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@19 f_23@@19) (= (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@2) o2_5@@19 f_23@@19) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@19 f_23@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@19 f_23@@19))
))) (forall ((o2_5@@20 T@Ref) (f_23@@20 T@Field_5029_8429) ) (!  (=> (select (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@20 f_23@@20) (= (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@2) o2_5@@20 f_23@@20) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@20 f_23@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@20 f_23@@20))
))) (forall ((o2_5@@21 T@Ref) (f_23@@21 T@Field_14663_14664) ) (!  (=> (select (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@21 f_23@@21) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@2) o2_5@@21 f_23@@21) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@21 f_23@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@21 f_23@@21))
))) (forall ((o2_5@@22 T@Ref) (f_23@@22 T@Field_14676_14681) ) (!  (=> (select (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@22 f_23@@22) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@2) o2_5@@22 f_23@@22) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@22 f_23@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@22 f_23@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_5024_27218 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8355) (ExhaleHeap@@2 T@PolymorphicMapType_8355) (Mask@@3 T@PolymorphicMapType_8376) (pm_f_5@@2 T@Field_14663_14664) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5029_5030 Mask@@3 null pm_f_5@@2) (IsWandField_5029_26861 pm_f_5@@2)) (and (and (and (and (and (and (and (forall ((o2_5@@23 T@Ref) (f_23@@23 T@Field_8415_53) ) (!  (=> (select (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@23 f_23@@23) (= (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@3) o2_5@@23 f_23@@23) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@23 f_23@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@23 f_23@@23))
)) (forall ((o2_5@@24 T@Ref) (f_23@@24 T@Field_8428_8429) ) (!  (=> (select (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@24 f_23@@24) (= (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@3) o2_5@@24 f_23@@24) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@24 f_23@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@24 f_23@@24))
))) (forall ((o2_5@@25 T@Ref) (f_23@@25 T@Field_5024_5030) ) (!  (=> (select (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@25 f_23@@25) (= (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@3) o2_5@@25 f_23@@25) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@25 f_23@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@25 f_23@@25))
))) (forall ((o2_5@@26 T@Ref) (f_23@@26 T@Field_5024_14681) ) (!  (=> (select (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@26 f_23@@26) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@3) o2_5@@26 f_23@@26) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@26 f_23@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@26 f_23@@26))
))) (forall ((o2_5@@27 T@Ref) (f_23@@27 T@Field_5029_3211) ) (!  (=> (select (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@27 f_23@@27) (= (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@3) o2_5@@27 f_23@@27) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@27 f_23@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@27 f_23@@27))
))) (forall ((o2_5@@28 T@Ref) (f_23@@28 T@Field_5029_8429) ) (!  (=> (select (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@28 f_23@@28) (= (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@3) o2_5@@28 f_23@@28) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@28 f_23@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@28 f_23@@28))
))) (forall ((o2_5@@29 T@Ref) (f_23@@29 T@Field_14663_14664) ) (!  (=> (select (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@29 f_23@@29) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@3) o2_5@@29 f_23@@29) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@29 f_23@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@29 f_23@@29))
))) (forall ((o2_5@@30 T@Ref) (f_23@@30 T@Field_14676_14681) ) (!  (=> (select (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@30 f_23@@30) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) o2_5@@30 f_23@@30) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@30 f_23@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@30 f_23@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5029_26861 pm_f_5@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8355) (Heap1@@0 T@PolymorphicMapType_8355) (Heap2 T@PolymorphicMapType_8355) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14676_14681) ) (!  (not (select (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14663_14664) ) (!  (not (select (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5029_8429) ) (!  (not (select (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5029_3211) ) (!  (not (select (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5024_14681) ) (!  (not (select (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5024_5030) ) (!  (not (select (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8428_8429) ) (!  (not (select (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8415_53) ) (!  (not (select (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.288:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((node T@Ref) ) (! (IsPredicateField_5029_5030 (Node node))
 :qid |stdinbpl.404:15|
 :skolemid |83|
 :pattern ( (Node node))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8355) (node@@0 T@Ref) ) (! (|Node#everUsed_5029| (Node node@@0))
 :qid |stdinbpl.423:15|
 :skolemid |87|
 :pattern ( (|Node#trigger_5029| Heap@@4 (Node node@@0)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.291:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8355) (ExhaleHeap@@3 T@PolymorphicMapType_8355) (Mask@@4 T@PolymorphicMapType_8376) (pm_f_5@@3 T@Field_5024_5030) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5024_5030 Mask@@4 null pm_f_5@@3) (IsPredicateField_5024_24254 pm_f_5@@3)) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@5) null (PredicateMaskField_5024 pm_f_5@@3)) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@3) null (PredicateMaskField_5024 pm_f_5@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5024_24254 pm_f_5@@3) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@3) null (PredicateMaskField_5024 pm_f_5@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8355) (ExhaleHeap@@4 T@PolymorphicMapType_8355) (Mask@@5 T@PolymorphicMapType_8376) (pm_f_5@@4 T@Field_14663_14664) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5029_5030 Mask@@5 null pm_f_5@@4) (IsPredicateField_5029_5030 pm_f_5@@4)) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@6) null (PredicateMaskField_5029 pm_f_5@@4)) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@4) null (PredicateMaskField_5029 pm_f_5@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5029_5030 pm_f_5@@4) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@4) null (PredicateMaskField_5029 pm_f_5@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8355) (ExhaleHeap@@5 T@PolymorphicMapType_8355) (Mask@@6 T@PolymorphicMapType_8376) (pm_f_5@@5 T@Field_5024_5030) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5024_5030 Mask@@6 null pm_f_5@@5) (IsWandField_5024_27218 pm_f_5@@5)) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@7) null (WandMaskField_5024 pm_f_5@@5)) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@5) null (WandMaskField_5024 pm_f_5@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_5024_27218 pm_f_5@@5) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@5) null (WandMaskField_5024 pm_f_5@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8355) (ExhaleHeap@@6 T@PolymorphicMapType_8355) (Mask@@7 T@PolymorphicMapType_8376) (pm_f_5@@6 T@Field_14663_14664) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5029_5030 Mask@@7 null pm_f_5@@6) (IsWandField_5029_26861 pm_f_5@@6)) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@8) null (WandMaskField_5029 pm_f_5@@6)) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@6) null (WandMaskField_5029 pm_f_5@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_5029_26861 pm_f_5@@6) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@6) null (WandMaskField_5029 pm_f_5@@6)))
)))
(assert (forall ((node@@1 T@Ref) (node2 T@Ref) ) (!  (=> (= (Node node@@1) (Node node2)) (= node@@1 node2))
 :qid |stdinbpl.414:15|
 :skolemid |85|
 :pattern ( (Node node@@1) (Node node2))
)))
(assert (forall ((node@@2 T@Ref) (node2@@0 T@Ref) ) (!  (=> (= (|Node#sm| node@@2) (|Node#sm| node2@@0)) (= node@@2 node2@@0))
 :qid |stdinbpl.418:15|
 :skolemid |86|
 :pattern ( (|Node#sm| node@@2) (|Node#sm| node2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8355) (ExhaleHeap@@7 T@PolymorphicMapType_8355) (Mask@@8 T@PolymorphicMapType_8376) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@9) o_15 $allocated) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@7) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@7) o_15 $allocated))
)))
(assert (forall ((p T@Field_14663_14664) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14663_14663 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14663_14663 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5024_5030) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8415_8415 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8415_8415 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5024_3211 visited)))
(assert  (not (IsWandField_5024_3211 visited)))
(assert  (not (IsPredicateField_5024_3211 bad_field)))
(assert  (not (IsWandField_5024_3211 bad_field)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8355) (ExhaleHeap@@8 T@PolymorphicMapType_8355) (Mask@@9 T@PolymorphicMapType_8376) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8376) (o_2@@7 T@Ref) (f_4@@7 T@Field_14676_14681) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5029_32932 f_4@@7))) (not (IsWandField_5029_32948 f_4@@7))) (<= (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8376) (o_2@@8 T@Ref) (f_4@@8 T@Field_5029_8429) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5029_8429 f_4@@8))) (not (IsWandField_5029_8429 f_4@@8))) (<= (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8376) (o_2@@9 T@Ref) (f_4@@9 T@Field_14663_14664) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5029_5030 f_4@@9))) (not (IsWandField_5029_26861 f_4@@9))) (<= (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8376) (o_2@@10 T@Ref) (f_4@@10 T@Field_5029_3211) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5029_3211 f_4@@10))) (not (IsWandField_5029_3211 f_4@@10))) (<= (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8376) (o_2@@11 T@Ref) (f_4@@11 T@Field_5024_14681) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5024_32269 f_4@@11))) (not (IsWandField_5024_32285 f_4@@11))) (<= (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8376) (o_2@@12 T@Ref) (f_4@@12 T@Field_8428_8429) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5024_8429 f_4@@12))) (not (IsWandField_5024_8429 f_4@@12))) (<= (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8376) (o_2@@13 T@Ref) (f_4@@13 T@Field_5024_5030) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5024_24254 f_4@@13))) (not (IsWandField_5024_27218 f_4@@13))) (<= (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8376) (o_2@@14 T@Ref) (f_4@@14 T@Field_8415_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5024_3211 f_4@@14))) (not (IsWandField_5024_3211 f_4@@14))) (<= (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8376) (o_2@@15 T@Ref) (f_4@@15 T@Field_5024_14681) ) (! (= (HasDirectPerm_5024_23641 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5024_23641 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8376) (o_2@@16 T@Ref) (f_4@@16 T@Field_8428_8429) ) (! (= (HasDirectPerm_5024_8429 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5024_8429 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8376) (o_2@@17 T@Ref) (f_4@@17 T@Field_8415_53) ) (! (= (HasDirectPerm_5024_3211 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5024_3211 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8376) (o_2@@18 T@Ref) (f_4@@18 T@Field_5024_5030) ) (! (= (HasDirectPerm_5024_5030 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5024_5030 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8376) (o_2@@19 T@Ref) (f_4@@19 T@Field_14676_14681) ) (! (= (HasDirectPerm_5029_22776 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5029_22776 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8376) (o_2@@20 T@Ref) (f_4@@20 T@Field_5029_8429) ) (! (= (HasDirectPerm_5029_8429 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5029_8429 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8376) (o_2@@21 T@Ref) (f_4@@21 T@Field_5029_3211) ) (! (= (HasDirectPerm_5029_3211 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5029_3211 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8376) (o_2@@22 T@Ref) (f_4@@22 T@Field_14663_14664) ) (! (= (HasDirectPerm_5029_5030 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5029_5030 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8355) (ExhaleHeap@@9 T@PolymorphicMapType_8355) (Mask@@26 T@PolymorphicMapType_8376) (o_15@@0 T@Ref) (f_23@@31 T@Field_5024_14681) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_5024_23641 Mask@@26 o_15@@0 f_23@@31) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@11) o_15@@0 f_23@@31) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@9) o_15@@0 f_23@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@9) o_15@@0 f_23@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8355) (ExhaleHeap@@10 T@PolymorphicMapType_8355) (Mask@@27 T@PolymorphicMapType_8376) (o_15@@1 T@Ref) (f_23@@32 T@Field_8428_8429) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_5024_8429 Mask@@27 o_15@@1 f_23@@32) (= (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@12) o_15@@1 f_23@@32) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@10) o_15@@1 f_23@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@10) o_15@@1 f_23@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8355) (ExhaleHeap@@11 T@PolymorphicMapType_8355) (Mask@@28 T@PolymorphicMapType_8376) (o_15@@2 T@Ref) (f_23@@33 T@Field_8415_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_5024_3211 Mask@@28 o_15@@2 f_23@@33) (= (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@13) o_15@@2 f_23@@33) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@11) o_15@@2 f_23@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@11) o_15@@2 f_23@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8355) (ExhaleHeap@@12 T@PolymorphicMapType_8355) (Mask@@29 T@PolymorphicMapType_8376) (o_15@@3 T@Ref) (f_23@@34 T@Field_5024_5030) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_5024_5030 Mask@@29 o_15@@3 f_23@@34) (= (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@14) o_15@@3 f_23@@34) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@12) o_15@@3 f_23@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@12) o_15@@3 f_23@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8355) (ExhaleHeap@@13 T@PolymorphicMapType_8355) (Mask@@30 T@PolymorphicMapType_8376) (o_15@@4 T@Ref) (f_23@@35 T@Field_14676_14681) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_5029_22776 Mask@@30 o_15@@4 f_23@@35) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@15) o_15@@4 f_23@@35) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@13) o_15@@4 f_23@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@13) o_15@@4 f_23@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8355) (ExhaleHeap@@14 T@PolymorphicMapType_8355) (Mask@@31 T@PolymorphicMapType_8376) (o_15@@5 T@Ref) (f_23@@36 T@Field_5029_8429) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_5029_8429 Mask@@31 o_15@@5 f_23@@36) (= (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@16) o_15@@5 f_23@@36) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@14) o_15@@5 f_23@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@14) o_15@@5 f_23@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8355) (ExhaleHeap@@15 T@PolymorphicMapType_8355) (Mask@@32 T@PolymorphicMapType_8376) (o_15@@6 T@Ref) (f_23@@37 T@Field_5029_3211) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_5029_3211 Mask@@32 o_15@@6 f_23@@37) (= (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@17) o_15@@6 f_23@@37) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@15) o_15@@6 f_23@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@15) o_15@@6 f_23@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8355) (ExhaleHeap@@16 T@PolymorphicMapType_8355) (Mask@@33 T@PolymorphicMapType_8376) (o_15@@7 T@Ref) (f_23@@38 T@Field_14663_14664) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_5029_5030 Mask@@33 o_15@@7 f_23@@38) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@18) o_15@@7 f_23@@38) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@16) o_15@@7 f_23@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@16) o_15@@7 f_23@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_14676_14681) ) (! (= (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_5029_8429) ) (! (= (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_14663_14664) ) (! (= (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_5029_3211) ) (! (= (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_5024_14681) ) (! (= (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_8428_8429) ) (! (= (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_5024_5030) ) (! (= (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8415_53) ) (! (= (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8376) (SummandMask1 T@PolymorphicMapType_8376) (SummandMask2 T@PolymorphicMapType_8376) (o_2@@31 T@Ref) (f_4@@31 T@Field_14676_14681) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8376) (SummandMask1@@0 T@PolymorphicMapType_8376) (SummandMask2@@0 T@PolymorphicMapType_8376) (o_2@@32 T@Ref) (f_4@@32 T@Field_5029_8429) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8376) (SummandMask1@@1 T@PolymorphicMapType_8376) (SummandMask2@@1 T@PolymorphicMapType_8376) (o_2@@33 T@Ref) (f_4@@33 T@Field_14663_14664) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8376) (SummandMask1@@2 T@PolymorphicMapType_8376) (SummandMask2@@2 T@PolymorphicMapType_8376) (o_2@@34 T@Ref) (f_4@@34 T@Field_5029_3211) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8376) (SummandMask1@@3 T@PolymorphicMapType_8376) (SummandMask2@@3 T@PolymorphicMapType_8376) (o_2@@35 T@Ref) (f_4@@35 T@Field_5024_14681) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8376) (SummandMask1@@4 T@PolymorphicMapType_8376) (SummandMask2@@4 T@PolymorphicMapType_8376) (o_2@@36 T@Ref) (f_4@@36 T@Field_8428_8429) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8376) (SummandMask1@@5 T@PolymorphicMapType_8376) (SummandMask2@@5 T@PolymorphicMapType_8376) (o_2@@37 T@Ref) (f_4@@37 T@Field_5024_5030) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8376) (SummandMask1@@6 T@PolymorphicMapType_8376) (SummandMask2@@6 T@PolymorphicMapType_8376) (o_2@@38 T@Ref) (f_4@@38 T@Field_8415_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((node@@3 T@Ref) ) (! (= (getPredWandId_5029_5030 (Node node@@3)) 0)
 :qid |stdinbpl.408:15|
 :skolemid |84|
 :pattern ( (Node node@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8355) (o_14 T@Ref) (f_24 T@Field_14676_14681) (v T@PolymorphicMapType_8904) ) (! (succHeap Heap@@19 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@19) (store (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@19) o_14 f_24 v) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@19) (store (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@19) o_14 f_24 v) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8355) (o_14@@0 T@Ref) (f_24@@0 T@Field_14663_14664) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@20) (store (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@20) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@20) (store (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@20) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8355) (o_14@@1 T@Ref) (f_24@@1 T@Field_5029_8429) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@21) (store (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@21) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@21) (store (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@21) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8355) (o_14@@2 T@Ref) (f_24@@2 T@Field_5029_3211) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@22) (store (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@22) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@22) (store (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@22) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8355) (o_14@@3 T@Ref) (f_24@@3 T@Field_5024_14681) (v@@3 T@PolymorphicMapType_8904) ) (! (succHeap Heap@@23 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@23) (store (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@23) o_14@@3 f_24@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@23) (store (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@23) o_14@@3 f_24@@3 v@@3)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8355) (o_14@@4 T@Ref) (f_24@@4 T@Field_5024_5030) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@24) (store (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@24) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@24) (store (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@24) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8355) (o_14@@5 T@Ref) (f_24@@5 T@Field_8428_8429) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@25) (store (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@25) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@25) (store (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@25) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8355) (o_14@@6 T@Ref) (f_24@@6 T@Field_8415_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_8355 (store (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@26) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (store (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@26) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@26)))
)))
(assert (forall ((node@@4 T@Ref) ) (! (= (PredicateMaskField_5029 (Node node@@4)) (|Node#sm| node@@4))
 :qid |stdinbpl.400:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_5029 (Node node@@4)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.286:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.287:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_14@@7 T@Ref) (f_22 T@Field_8428_8429) (Heap@@27 T@PolymorphicMapType_8355) ) (!  (=> (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@27) o_14@@7 $allocated) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@27) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@27) o_14@@7 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@27) o_14@@7 f_22))
)))
(assert (forall ((p@@2 T@Field_14663_14664) (v_1@@1 T@FrameType) (q T@Field_14663_14664) (w@@1 T@FrameType) (r T@Field_14663_14664) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14663_14663 p@@2 v_1@@1 q w@@1) (InsidePredicate_14663_14663 q w@@1 r u)) (InsidePredicate_14663_14663 p@@2 v_1@@1 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14663_14663 p@@2 v_1@@1 q w@@1) (InsidePredicate_14663_14663 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14663_14664) (v_1@@2 T@FrameType) (q@@0 T@Field_14663_14664) (w@@2 T@FrameType) (r@@0 T@Field_5024_5030) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14663_14663 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14663_8415 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14663_8415 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14663_14663 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14663_8415 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14663_14664) (v_1@@3 T@FrameType) (q@@1 T@Field_5024_5030) (w@@3 T@FrameType) (r@@1 T@Field_14663_14664) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14663_8415 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8415_14663 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14663_14663 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14663_8415 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8415_14663 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14663_14664) (v_1@@4 T@FrameType) (q@@2 T@Field_5024_5030) (w@@4 T@FrameType) (r@@2 T@Field_5024_5030) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14663_8415 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8415_8415 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14663_8415 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14663_8415 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8415_8415 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5024_5030) (v_1@@5 T@FrameType) (q@@3 T@Field_14663_14664) (w@@5 T@FrameType) (r@@3 T@Field_14663_14664) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8415_14663 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14663_14663 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8415_14663 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8415_14663 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14663_14663 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5024_5030) (v_1@@6 T@FrameType) (q@@4 T@Field_14663_14664) (w@@6 T@FrameType) (r@@4 T@Field_5024_5030) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8415_14663 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14663_8415 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8415_8415 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8415_14663 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14663_8415 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5024_5030) (v_1@@7 T@FrameType) (q@@5 T@Field_5024_5030) (w@@7 T@FrameType) (r@@5 T@Field_14663_14664) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8415_8415 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8415_14663 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8415_14663 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8415_8415 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8415_14663 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5024_5030) (v_1@@8 T@FrameType) (q@@6 T@Field_5024_5030) (w@@8 T@FrameType) (r@@6 T@Field_5024_5030) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8415_8415 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8415_8415 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8415_8415 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8415_8415 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8415_8415 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.292:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |Node#definedness|)
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
