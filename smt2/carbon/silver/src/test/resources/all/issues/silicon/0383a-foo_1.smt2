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
(assert (forall ((Heap@@0 T@PolymorphicMapType_8355) (ExhaleHeap T@PolymorphicMapType_8355) (Mask@@0 T@PolymorphicMapType_8376) (pm_f_5 T@Field_5024_5030) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5024_5030 Mask@@0 null pm_f_5) (IsPredicateField_5024_24254 pm_f_5)) (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_8415_53) ) (!  (=> (select (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5 f_16) (= (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@0) o2_5 f_16) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_8428_8429) ) (!  (=> (select (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@0) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_5024_5030) ) (!  (=> (select (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@0) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_5024_14681) ) (!  (=> (select (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_5029_3211) ) (!  (=> (select (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@0) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_5029_8429) ) (!  (=> (select (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@0) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_14663_14664) ) (!  (=> (select (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@0) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_14676_14681) ) (!  (=> (select (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@0) null (PredicateMaskField_5024 pm_f_5))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@0) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap) o2_5@@6 f_16@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5024_24254 pm_f_5))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8355) (ExhaleHeap@@0 T@PolymorphicMapType_8355) (Mask@@1 T@PolymorphicMapType_8376) (pm_f_5@@0 T@Field_14663_14664) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5029_5030 Mask@@1 null pm_f_5@@0) (IsPredicateField_5029_5030 pm_f_5@@0)) (and (and (and (and (and (and (and (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_8415_53) ) (!  (=> (select (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@1) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@7 f_16@@7))
)) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_8428_8429) ) (!  (=> (select (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@1) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@8 f_16@@8))
))) (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_5024_5030) ) (!  (=> (select (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@1) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@9 f_16@@9))
))) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_5024_14681) ) (!  (=> (select (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@1) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_5029_3211) ) (!  (=> (select (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@1) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_5029_8429) ) (!  (=> (select (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@1) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_14663_14664) ) (!  (=> (select (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@1) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_14676_14681) ) (!  (=> (select (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) null (PredicateMaskField_5029 pm_f_5@@0))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@1) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@0) o2_5@@14 f_16@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5029_5030 pm_f_5@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8355) (ExhaleHeap@@1 T@PolymorphicMapType_8355) (Mask@@2 T@PolymorphicMapType_8376) (pm_f_5@@1 T@Field_5024_5030) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5024_5030 Mask@@2 null pm_f_5@@1) (IsWandField_5024_27218 pm_f_5@@1)) (and (and (and (and (and (and (and (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_8415_53) ) (!  (=> (select (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@2) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@15 f_16@@15))
)) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_8428_8429) ) (!  (=> (select (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@2) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_5024_5030) ) (!  (=> (select (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@2) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_5024_14681) ) (!  (=> (select (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@18 f_16@@18))
))) (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_5029_3211) ) (!  (=> (select (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@2) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@19 f_16@@19))
))) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_5029_8429) ) (!  (=> (select (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@2) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_14663_14664) ) (!  (=> (select (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@2) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_14676_14681) ) (!  (=> (select (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@2) null (WandMaskField_5024 pm_f_5@@1))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@2) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@1) o2_5@@22 f_16@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_5024_27218 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8355) (ExhaleHeap@@2 T@PolymorphicMapType_8355) (Mask@@3 T@PolymorphicMapType_8376) (pm_f_5@@2 T@Field_14663_14664) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5029_5030 Mask@@3 null pm_f_5@@2) (IsWandField_5029_26861 pm_f_5@@2)) (and (and (and (and (and (and (and (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_8415_53) ) (!  (=> (select (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@3) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@23 f_16@@23))
)) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_8428_8429) ) (!  (=> (select (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@3) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_5024_5030) ) (!  (=> (select (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@3) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_5024_14681) ) (!  (=> (select (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@3) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_5029_3211) ) (!  (=> (select (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@3) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_5029_8429) ) (!  (=> (select (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@3) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@28 f_16@@28))
))) (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_14663_14664) ) (!  (=> (select (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@3) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@29 f_16@@29))
))) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_14676_14681) ) (!  (=> (select (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) null (WandMaskField_5029 pm_f_5@@2))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@3) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@2) o2_5@@30 f_16@@30))
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
(assert (forall ((Heap@@9 T@PolymorphicMapType_8355) (ExhaleHeap@@7 T@PolymorphicMapType_8355) (Mask@@8 T@PolymorphicMapType_8376) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@9) o_12 $allocated) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@7) o_12 $allocated))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_8355) (ExhaleHeap@@9 T@PolymorphicMapType_8355) (Mask@@26 T@PolymorphicMapType_8376) (o_12@@0 T@Ref) (f_16@@31 T@Field_5024_14681) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_5024_23641 Mask@@26 o_12@@0 f_16@@31) (= (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@11) o_12@@0 f_16@@31) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@9) o_12@@0 f_16@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| ExhaleHeap@@9) o_12@@0 f_16@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8355) (ExhaleHeap@@10 T@PolymorphicMapType_8355) (Mask@@27 T@PolymorphicMapType_8376) (o_12@@1 T@Ref) (f_16@@32 T@Field_8428_8429) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_5024_8429 Mask@@27 o_12@@1 f_16@@32) (= (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@12) o_12@@1 f_16@@32) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@10) o_12@@1 f_16@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| ExhaleHeap@@10) o_12@@1 f_16@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8355) (ExhaleHeap@@11 T@PolymorphicMapType_8355) (Mask@@28 T@PolymorphicMapType_8376) (o_12@@2 T@Ref) (f_16@@33 T@Field_8415_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_5024_3211 Mask@@28 o_12@@2 f_16@@33) (= (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@13) o_12@@2 f_16@@33) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@11) o_12@@2 f_16@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| ExhaleHeap@@11) o_12@@2 f_16@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8355) (ExhaleHeap@@12 T@PolymorphicMapType_8355) (Mask@@29 T@PolymorphicMapType_8376) (o_12@@3 T@Ref) (f_16@@34 T@Field_5024_5030) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_5024_5030 Mask@@29 o_12@@3 f_16@@34) (= (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@14) o_12@@3 f_16@@34) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@12) o_12@@3 f_16@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| ExhaleHeap@@12) o_12@@3 f_16@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8355) (ExhaleHeap@@13 T@PolymorphicMapType_8355) (Mask@@30 T@PolymorphicMapType_8376) (o_12@@4 T@Ref) (f_16@@35 T@Field_14676_14681) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_5029_22776 Mask@@30 o_12@@4 f_16@@35) (= (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@15) o_12@@4 f_16@@35) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@13) o_12@@4 f_16@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| ExhaleHeap@@13) o_12@@4 f_16@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8355) (ExhaleHeap@@14 T@PolymorphicMapType_8355) (Mask@@31 T@PolymorphicMapType_8376) (o_12@@5 T@Ref) (f_16@@36 T@Field_5029_8429) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_5029_8429 Mask@@31 o_12@@5 f_16@@36) (= (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@16) o_12@@5 f_16@@36) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@14) o_12@@5 f_16@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| ExhaleHeap@@14) o_12@@5 f_16@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8355) (ExhaleHeap@@15 T@PolymorphicMapType_8355) (Mask@@32 T@PolymorphicMapType_8376) (o_12@@6 T@Ref) (f_16@@37 T@Field_5029_3211) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_5029_3211 Mask@@32 o_12@@6 f_16@@37) (= (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@17) o_12@@6 f_16@@37) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@15) o_12@@6 f_16@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| ExhaleHeap@@15) o_12@@6 f_16@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8355) (ExhaleHeap@@16 T@PolymorphicMapType_8355) (Mask@@33 T@PolymorphicMapType_8376) (o_12@@7 T@Ref) (f_16@@38 T@Field_14663_14664) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_5029_5030 Mask@@33 o_12@@7 f_16@@38) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@18) o_12@@7 f_16@@38) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@16) o_12@@7 f_16@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| ExhaleHeap@@16) o_12@@7 f_16@@38))
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
(assert (forall ((Heap@@19 T@PolymorphicMapType_8355) (o_11 T@Ref) (f_17 T@Field_14676_14681) (v T@PolymorphicMapType_8904) ) (! (succHeap Heap@@19 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@19) (store (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@19) o_11 f_17 v) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@19) (store (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@19) o_11 f_17 v) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@19) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8355) (o_11@@0 T@Ref) (f_17@@0 T@Field_14663_14664) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@20) (store (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@20) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@20) (store (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@20) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@20) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8355) (o_11@@1 T@Ref) (f_17@@1 T@Field_5029_8429) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@21) (store (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@21) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@21) (store (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@21) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@21) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8355) (o_11@@2 T@Ref) (f_17@@2 T@Field_5029_3211) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@22) (store (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@22) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@22) (store (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@22) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@22) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8355) (o_11@@3 T@Ref) (f_17@@3 T@Field_5024_14681) (v@@3 T@PolymorphicMapType_8904) ) (! (succHeap Heap@@23 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@23) (store (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@23) o_11@@3 f_17@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@23) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@23) (store (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@23) o_11@@3 f_17@@3 v@@3)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8355) (o_11@@4 T@Ref) (f_17@@4 T@Field_5024_5030) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@24) (store (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@24) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@24) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@24) (store (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@24) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8355) (o_11@@5 T@Ref) (f_17@@5 T@Field_8428_8429) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@25) (store (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@25) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@25) (store (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@25) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@25) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8355) (o_11@@6 T@Ref) (f_17@@6 T@Field_8415_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_8355 (store (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@26) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8355 (store (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@26) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@26) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@26)))
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
(assert (forall ((o_11@@7 T@Ref) (f_10 T@Field_8428_8429) (Heap@@27 T@PolymorphicMapType_8355) ) (!  (=> (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@27) o_11@@7 $allocated) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@27) (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@27) o_11@@7 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@27) o_11@@7 f_10))
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
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_8376)
(declare-fun Mask@5 () T@PolymorphicMapType_8376)
(declare-fun nn_1 () T@Ref)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_8376)
(declare-fun Heap@7 () T@PolymorphicMapType_8355)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_8376)
(declare-fun all_nodes () (Array T@Ref Bool))
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3211 (Bool) T@FrameType)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_8376)
(declare-fun nn_3 () T@Ref)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_8376)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_8376)
(declare-fun Heap@8 () T@PolymorphicMapType_8355)
(declare-fun Heap@9 () T@PolymorphicMapType_8355)
(declare-fun Heap@6 () T@PolymorphicMapType_8355)
(declare-fun Heap@5 () T@PolymorphicMapType_8355)
(declare-fun curr_node () T@Ref)
(declare-fun Heap@2 () T@PolymorphicMapType_8355)
(declare-fun Heap@3 () T@PolymorphicMapType_8355)
(declare-fun Heap@4 () T@PolymorphicMapType_8355)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@4 () T@PolymorphicMapType_8376)
(declare-fun Mask@3 () T@PolymorphicMapType_8376)
(declare-fun Mask@2 () T@PolymorphicMapType_8376)
(declare-fun Mask@1 () T@PolymorphicMapType_8376)
(declare-fun Mask@0 () T@PolymorphicMapType_8376)
(declare-fun Heap@1 () T@PolymorphicMapType_8355)
(declare-fun Heap@@28 () T@PolymorphicMapType_8355)
(declare-fun Heap@0 () T@PolymorphicMapType_8355)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun QPMask@0 () T@PolymorphicMapType_8376)
(declare-fun neverTriggered1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun getPredWandId_5024_3211 (T@Field_8415_53) Int)
(declare-fun getPredWandId_5024_5030 (T@Field_5024_5030) Int)
(declare-fun getPredWandId_5024_8429 (T@Field_8428_8429) Int)
(declare-fun getPredWandId_5024_37641 (T@Field_5024_14681) Int)
(declare-fun getPredWandId_5029_3211 (T@Field_5029_3211) Int)
(declare-fun getPredWandId_5029_8429 (T@Field_5029_8429) Int)
(declare-fun getPredWandId_5029_38288 (T@Field_14676_14681) Int)
(set-info :boogie-vc-id foo_1)
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
 (=> (= (ControlFlow 0 0) 41) (let ((anon23_correct true))
(let ((anon22_correct  (=> (and (and (and (= UnfoldingMask@0 (PolymorphicMapType_8376 (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@5) (store (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@5) null (Node nn_1) (- (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@5) null (Node nn_1)) FullPerm)) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| Mask@5) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| Mask@5) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| Mask@5) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| Mask@5) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| Mask@5) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| Mask@5))) (not (= nn_1 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_8376 (store (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| UnfoldingMask@0) nn_1 visited (+ (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| UnfoldingMask@0) nn_1 visited) FullPerm)) (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| UnfoldingMask@0) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| UnfoldingMask@0) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| UnfoldingMask@0) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| UnfoldingMask@0) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| UnfoldingMask@0) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| UnfoldingMask@0) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| UnfoldingMask@0))) (state Heap@7 UnfoldingMask@1))) (and (and (not (= nn_1 null)) (= UnfoldingMask@2 (PolymorphicMapType_8376 (store (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| UnfoldingMask@1) nn_1 bad_field (+ (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| UnfoldingMask@1) nn_1 bad_field) FullPerm)) (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| UnfoldingMask@1) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| UnfoldingMask@1) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| UnfoldingMask@1) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| UnfoldingMask@1) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| UnfoldingMask@1) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| UnfoldingMask@1) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| UnfoldingMask@1)))) (and (state Heap@7 UnfoldingMask@2) (state Heap@7 UnfoldingMask@2)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@7) nn_1 visited)) (=> (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@7) nn_1 visited) (=> (= (ControlFlow 0 13) 11) anon23_correct))))))
(let ((anon36_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 17) 13)) anon22_correct)))
(let ((anon36_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= FullPerm (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@5) null (Node nn_1)))) (=> (<= FullPerm (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@5) null (Node nn_1))) (=> (= (ControlFlow 0 15) 13) anon22_correct))))))
(let ((anon35_Then_correct  (=> (select all_nodes nn_1) (=> (and (|Node#trigger_5029| Heap@7 (Node nn_1)) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@7) null (Node nn_1)) (CombineFrames (FrameFragment_3211 (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@7) nn_1 visited)) (FrameFragment_3211 (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@7) nn_1 bad_field))))) (and (=> (= (ControlFlow 0 18) 15) anon36_Then_correct) (=> (= (ControlFlow 0 18) 17) anon36_Else_correct))))))
(let ((anon35_Else_correct  (=> (and (not (select all_nodes nn_1)) (= (ControlFlow 0 12) 11)) anon23_correct)))
(let ((anon17_correct true))
(let ((anon16_correct  (=> (and (and (and (= UnfoldingMask@3 (PolymorphicMapType_8376 (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@5) (store (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@5) null (Node nn_3) (- (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@5) null (Node nn_3)) FullPerm)) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| Mask@5) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| Mask@5) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| Mask@5) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| Mask@5) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| Mask@5) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| Mask@5))) (not (= nn_3 null))) (and (= UnfoldingMask@4 (PolymorphicMapType_8376 (store (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| UnfoldingMask@3) nn_3 visited (+ (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| UnfoldingMask@3) nn_3 visited) FullPerm)) (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| UnfoldingMask@3) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| UnfoldingMask@3) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| UnfoldingMask@3) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| UnfoldingMask@3) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| UnfoldingMask@3) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| UnfoldingMask@3) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| UnfoldingMask@3))) (state Heap@7 UnfoldingMask@4))) (and (and (not (= nn_3 null)) (= UnfoldingMask@5 (PolymorphicMapType_8376 (store (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| UnfoldingMask@4) nn_3 bad_field (+ (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| UnfoldingMask@4) nn_3 bad_field) FullPerm)) (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| UnfoldingMask@4) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| UnfoldingMask@4) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| UnfoldingMask@4) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| UnfoldingMask@4) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| UnfoldingMask@4) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| UnfoldingMask@4) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| UnfoldingMask@4)))) (and (state Heap@7 UnfoldingMask@5) (state Heap@7 UnfoldingMask@5)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_5024_3211 UnfoldingMask@5 nn_3 visited)) (=> (HasDirectPerm_5024_3211 UnfoldingMask@5 nn_3 visited) (=> (and (and (= Heap@8 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@7) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@7) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@7) (store (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@7) null (|Node#sm| nn_3) (PolymorphicMapType_8904 (store (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@7) null (|Node#sm| nn_3))) nn_3 visited true) (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@7) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@7) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@7) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@7) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@7) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@7) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@7) null (|Node#sm| nn_3))))) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@7) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@7) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@7) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@7))) (= Heap@9 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@8) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@8) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@8) (store (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@8) null (|Node#sm| nn_3) (PolymorphicMapType_8904 (store (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@8) null (|Node#sm| nn_3))) nn_3 bad_field true) (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@8) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@8) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@8) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@8) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@8) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@8) null (|Node#sm| nn_3))) (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@8) null (|Node#sm| nn_3))))) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@8) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@8) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@8) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@8)))) (and (state Heap@9 Mask@5) (= (ControlFlow 0 5) 3))) anon17_correct))))))
(let ((anon33_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 9) 5)) anon16_correct)))
(let ((anon33_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= FullPerm (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@5) null (Node nn_3)))) (=> (<= FullPerm (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@5) null (Node nn_3))) (=> (= (ControlFlow 0 7) 5) anon16_correct))))))
(let ((anon32_Then_correct  (=> (select all_nodes nn_3) (=> (and (|Node#trigger_5029| Heap@7 (Node nn_3)) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@7) null (Node nn_3)) (CombineFrames (FrameFragment_3211 (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@7) nn_3 visited)) (FrameFragment_3211 (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@7) nn_3 bad_field))))) (and (=> (= (ControlFlow 0 10) 7) anon33_Then_correct) (=> (= (ControlFlow 0 10) 9) anon33_Else_correct))))))
(let ((anon32_Else_correct  (=> (and (not (select all_nodes nn_3)) (= (ControlFlow 0 4) 3)) anon17_correct)))
(let ((anon34_Else_correct true))
(let ((anon12_correct  (=> (and (and (= Heap@6 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@5) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@5) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@5) (store (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@5) null (|Node#sm| curr_node) (PolymorphicMapType_8904 (store (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@5) null (|Node#sm| curr_node))) curr_node visited true) (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@5) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@5) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@5) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@5) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@5) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@5) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@5) null (|Node#sm| curr_node))))) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@5) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@5) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@5) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@5))) (= Heap@7 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@6) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@6) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@6) (store (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@6) null (|Node#sm| curr_node) (PolymorphicMapType_8904 (store (|PolymorphicMapType_8904_5024_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@6) null (|Node#sm| curr_node))) curr_node bad_field true) (|PolymorphicMapType_8904_5024_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@6) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_5024_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@6) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_5024_25203#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@6) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_14663_3211#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@6) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_14663_8429#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@6) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_14663_14664#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@6) null (|Node#sm| curr_node))) (|PolymorphicMapType_8904_14663_26053#PolymorphicMapType_8904| (select (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@6) null (|Node#sm| curr_node))))) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@6) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@6) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@6) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@6)))) (and (state Heap@7 Mask@5) (state Heap@7 Mask@5))) (and (and (and (and (=> (= (ControlFlow 0 19) 2) anon34_Else_correct) (=> (= (ControlFlow 0 19) 18) anon35_Then_correct)) (=> (= (ControlFlow 0 19) 12) anon35_Else_correct)) (=> (= (ControlFlow 0 19) 10) anon32_Then_correct)) (=> (= (ControlFlow 0 19) 4) anon32_Else_correct)))))
(let ((anon30_Else_correct  (=> (HasDirectPerm_5029_5030 Mask@5 null (Node curr_node)) (=> (and (= Heap@5 Heap@2) (= (ControlFlow 0 21) 19)) anon12_correct))))
(let ((anon30_Then_correct  (=> (not (HasDirectPerm_5029_5030 Mask@5 null (Node curr_node))) (=> (and (and (= Heap@3 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@2) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@2) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@2) (store (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@2) null (|Node#sm| curr_node) ZeroPMask) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@2) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@2) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@2) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@2))) (= Heap@4 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@3) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@3) (store (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@3) null (Node curr_node) freshVersion@0) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@3) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@3) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@3) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@3) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 20) 19))) anon12_correct))))
(let ((anon10_correct  (=> (and (= Mask@4 (PolymorphicMapType_8376 (store (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@3) curr_node bad_field (- (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@3) curr_node bad_field) FullPerm)) (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@3) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| Mask@3) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| Mask@3) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| Mask@3) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| Mask@3) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| Mask@3) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| Mask@3))) (= Mask@5 (PolymorphicMapType_8376 (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@4) (store (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@4) null (Node curr_node) (+ (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@4) null (Node curr_node)) FullPerm)) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| Mask@4) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| Mask@4) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| Mask@4) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| Mask@4) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| Mask@4) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| Mask@4)))) (=> (and (and (state Heap@2 Mask@5) (state Heap@2 Mask@5)) (and (|Node#trigger_5029| Heap@2 (Node curr_node)) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@2) null (Node curr_node)) (CombineFrames (FrameFragment_3211 (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@2) curr_node visited)) (FrameFragment_3211 (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@2) curr_node bad_field)))))) (and (=> (= (ControlFlow 0 22) 20) anon30_Then_correct) (=> (= (ControlFlow 0 22) 21) anon30_Else_correct))))))
(let ((anon29_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 25) 22)) anon10_correct)))
(let ((anon29_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (<= FullPerm (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@3) curr_node bad_field))) (=> (<= FullPerm (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@3) curr_node bad_field)) (=> (= (ControlFlow 0 23) 22) anon10_correct))))))
(let ((anon8_correct  (=> (= Mask@3 (PolymorphicMapType_8376 (store (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@2) curr_node visited (- (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@2) curr_node visited) FullPerm)) (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@2) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| Mask@2) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| Mask@2) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| Mask@2) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| Mask@2) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| Mask@2) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| Mask@2))) (and (=> (= (ControlFlow 0 26) 23) anon29_Then_correct) (=> (= (ControlFlow 0 26) 25) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 29) 26)) anon8_correct)))
(let ((anon28_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (<= FullPerm (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@2) curr_node visited))) (=> (<= FullPerm (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@2) curr_node visited)) (=> (= (ControlFlow 0 27) 26) anon8_correct))))))
(let ((anon6_correct  (=> (and (and (and (not (= curr_node null)) (= Mask@1 (PolymorphicMapType_8376 (store (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@0) curr_node visited (+ (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@0) curr_node visited) FullPerm)) (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@0) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| Mask@0) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| Mask@0) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| Mask@0) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| Mask@0) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| Mask@0) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| Mask@0)))) (and (state Heap@1 Mask@1) (not (= curr_node null)))) (and (and (= Mask@2 (PolymorphicMapType_8376 (store (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@1) curr_node bad_field (+ (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@1) curr_node bad_field) FullPerm)) (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| Mask@1) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| Mask@1) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| Mask@1) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| Mask@1) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| Mask@1) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| Mask@1) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| Mask@1))) (state Heap@1 Mask@2)) (and (state Heap@1 Mask@2) (state Heap@1 Mask@2)))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (= FullPerm (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@2) curr_node visited))) (=> (= FullPerm (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| Mask@2) curr_node visited)) (=> (and (= Heap@2 (PolymorphicMapType_8355 (store (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@1) curr_node visited true) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@1) (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@1) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@1) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@1) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@1) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@1) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@1))) (state Heap@2 Mask@2)) (and (=> (= (ControlFlow 0 30) 27) anon28_Then_correct) (=> (= (ControlFlow 0 30) 29) anon28_Else_correct))))))))
(let ((anon27_Else_correct  (=> (HasDirectPerm_5029_5030 Mask@0 null (Node curr_node)) (=> (and (= Heap@1 Heap@@28) (= (ControlFlow 0 33) 30)) anon6_correct))))
(let ((anon27_Then_correct  (=> (and (and (not (HasDirectPerm_5029_5030 Mask@0 null (Node curr_node))) (= Heap@0 (PolymorphicMapType_8355 (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@28) (|PolymorphicMapType_8355_4734_4735#PolymorphicMapType_8355| Heap@@28) (store (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@28) null (Node curr_node) newVersion@0) (|PolymorphicMapType_8355_5033_18979#PolymorphicMapType_8355| Heap@@28) (|PolymorphicMapType_8355_5029_3211#PolymorphicMapType_8355| Heap@@28) (|PolymorphicMapType_8355_5029_8429#PolymorphicMapType_8355| Heap@@28) (|PolymorphicMapType_8355_5024_5030#PolymorphicMapType_8355| Heap@@28) (|PolymorphicMapType_8355_5024_23683#PolymorphicMapType_8355| Heap@@28)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 32) 30))) anon6_correct)))
(let ((anon4_correct  (=> (= Mask@0 (PolymorphicMapType_8376 (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| QPMask@0) (store (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| QPMask@0) null (Node curr_node) (- (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| QPMask@0) null (Node curr_node)) FullPerm)) (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| QPMask@0) (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| QPMask@0) (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| QPMask@0) (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| QPMask@0) (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| QPMask@0) (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| QPMask@0))) (and (=> (= (ControlFlow 0 34) 32) anon27_Then_correct) (=> (= (ControlFlow 0 34) 33) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 37) 34)) anon4_correct)))
(let ((anon26_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (<= FullPerm (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| QPMask@0) null (Node curr_node)))) (=> (<= FullPerm (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| QPMask@0) null (Node curr_node))) (=> (= (ControlFlow 0 35) 34) anon4_correct))))))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select all_nodes n_1)) (select all_nodes n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.491:17|
 :skolemid |88|
 :pattern ( (neverTriggered1 n_1) (neverTriggered1 n_1_1))
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select all_nodes n_1@@0)) (select all_nodes n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.491:17|
 :skolemid |88|
 :pattern ( (neverTriggered1 n_1@@0) (neverTriggered1 n_1_1@@0))
)) (=> (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select all_nodes n_1@@1) (< NoPerm FullPerm)) (and (= (invRecv1 n_1@@1) n_1@@1) (qpRange1 n_1@@1)))
 :qid |stdinbpl.497:22|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@28) null (Node n_1@@1)))
 :pattern ( (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| ZeroMask) null (Node n_1@@1)))
 :pattern ( (select all_nodes n_1@@1))
)) (=> (and (forall ((node@@5 T@Ref) ) (!  (=> (and (and (select all_nodes (invRecv1 node@@5)) (< NoPerm FullPerm)) (qpRange1 node@@5)) (= (invRecv1 node@@5) node@@5))
 :qid |stdinbpl.501:22|
 :skolemid |90|
 :pattern ( (invRecv1 node@@5))
)) (forall ((node@@6 T@Ref) ) (!  (=> (and (and (select all_nodes (invRecv1 node@@6)) (< NoPerm FullPerm)) (qpRange1 node@@6)) (and (=> (< NoPerm FullPerm) (= (invRecv1 node@@6) node@@6)) (= (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| QPMask@0) null (Node node@@6)) (+ (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| ZeroMask) null (Node node@@6)) FullPerm))))
 :qid |stdinbpl.507:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| QPMask@0) null (Node node@@6)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_8415_53) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_5024_3211 f_5))) (not (= (getPredWandId_5024_3211 f_5) 0))) (= (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| ZeroMask) o_4 f_5) (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| QPMask@0) o_4 f_5)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| ZeroMask) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_8376_5024_3211#PolymorphicMapType_8376| QPMask@0) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_5024_5030) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_5024_24254 f_5@@0))) (not (= (getPredWandId_5024_5030 f_5@@0) 0))) (= (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| ZeroMask) o_4@@0 f_5@@0) (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| QPMask@0) o_4@@0 f_5@@0)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| ZeroMask) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8376_5024_5030#PolymorphicMapType_8376| QPMask@0) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_8428_8429) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_5024_8429 f_5@@1))) (not (= (getPredWandId_5024_8429 f_5@@1) 0))) (= (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| ZeroMask) o_4@@1 f_5@@1) (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| QPMask@0) o_4@@1 f_5@@1)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| ZeroMask) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8376_5024_8429#PolymorphicMapType_8376| QPMask@0) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_5024_14681) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_5024_32269 f_5@@2))) (not (= (getPredWandId_5024_37641 f_5@@2) 0))) (= (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| ZeroMask) o_4@@2 f_5@@2) (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| QPMask@0) o_4@@2 f_5@@2)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| ZeroMask) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8376_5024_30777#PolymorphicMapType_8376| QPMask@0) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_5029_3211) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_5029_3211 f_5@@3))) (not (= (getPredWandId_5029_3211 f_5@@3) 0))) (= (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| ZeroMask) o_4@@3 f_5@@3) (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| QPMask@0) o_4@@3 f_5@@3)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| ZeroMask) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8376_5029_3211#PolymorphicMapType_8376| QPMask@0) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_14663_14664) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_5029_5030 f_5@@4))) (not (= (getPredWandId_5029_5030 f_5@@4) 0))) (= (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| ZeroMask) o_4@@4 f_5@@4) (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| QPMask@0) o_4@@4 f_5@@4)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| ZeroMask) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| QPMask@0) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_5029_8429) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_5029_8429 f_5@@5))) (not (= (getPredWandId_5029_8429 f_5@@5) 0))) (= (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| ZeroMask) o_4@@5 f_5@@5) (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| QPMask@0) o_4@@5 f_5@@5)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| ZeroMask) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_8376_5029_8429#PolymorphicMapType_8376| QPMask@0) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_14676_14681) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_5029_32932 f_5@@6))) (not (= (getPredWandId_5029_38288 f_5@@6) 0))) (= (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| ZeroMask) o_4@@6 f_5@@6) (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| QPMask@0) o_4@@6 f_5@@6)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| ZeroMask) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_8376_5029_31108#PolymorphicMapType_8376| QPMask@0) o_4@@6 f_5@@6))
))) (forall ((node@@7 T@Ref) ) (!  (=> (not (and (and (select all_nodes (invRecv1 node@@7)) (< NoPerm FullPerm)) (qpRange1 node@@7))) (= (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| QPMask@0) null (Node node@@7)) (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| ZeroMask) null (Node node@@7))))
 :qid |stdinbpl.517:22|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_8376_5029_5030#PolymorphicMapType_8376| QPMask@0) null (Node node@@7)))
))) (and (state Heap@@28 QPMask@0) (state Heap@@28 QPMask@0))) (and (and (select all_nodes curr_node) (state Heap@@28 QPMask@0)) (and (|Node#trigger_5029| Heap@@28 (Node curr_node)) (= (select (|PolymorphicMapType_8355_5029_5030#PolymorphicMapType_8355| Heap@@28) null (Node curr_node)) (CombineFrames (FrameFragment_3211 (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@28) curr_node visited)) (FrameFragment_3211 (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@28) curr_node bad_field))))))) (and (=> (= (ControlFlow 0 38) 35) anon26_Then_correct) (=> (= (ControlFlow 0 38) 37) anon26_Else_correct)))))))))
(let ((anon25_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@28 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_8355_4731_53#PolymorphicMapType_8355| Heap@@28) curr_node $allocated)) (and (=> (= (ControlFlow 0 40) 1) anon25_Then_correct) (=> (= (ControlFlow 0 40) 38) anon25_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 41) 40) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 13) (- 14))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
