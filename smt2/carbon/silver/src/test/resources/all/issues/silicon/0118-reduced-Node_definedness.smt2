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
(declare-sort T@Field_5337_53 0)
(declare-sort T@Field_5350_5351 0)
(declare-sort T@Field_8974_8975 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12634_12639 0)
(declare-sort T@Field_2852_8975 0)
(declare-sort T@Field_2852_12639 0)
(declare-sort T@Field_8974_2853 0)
(declare-sort T@Field_8974_53 0)
(declare-datatypes ((T@PolymorphicMapType_5298 0)) (((PolymorphicMapType_5298 (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| (Array T@Ref T@Field_8974_8975 Real)) (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| (Array T@Ref T@Field_5350_5351 Real)) (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| (Array T@Ref T@Field_8974_2853 Real)) (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| (Array T@Ref T@Field_8974_53 Real)) (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| (Array T@Ref T@Field_12634_12639 Real)) (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| (Array T@Ref T@Field_2852_8975 Real)) (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| (Array T@Ref T@Field_5337_53 Real)) (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| (Array T@Ref T@Field_2852_12639 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5826 0)) (((PolymorphicMapType_5826 (|PolymorphicMapType_5826_2852_2853#PolymorphicMapType_5826| (Array T@Ref T@Field_5350_5351 Bool)) (|PolymorphicMapType_5826_2852_53#PolymorphicMapType_5826| (Array T@Ref T@Field_5337_53 Bool)) (|PolymorphicMapType_5826_2852_8975#PolymorphicMapType_5826| (Array T@Ref T@Field_2852_8975 Bool)) (|PolymorphicMapType_5826_2852_18159#PolymorphicMapType_5826| (Array T@Ref T@Field_2852_12639 Bool)) (|PolymorphicMapType_5826_8974_2853#PolymorphicMapType_5826| (Array T@Ref T@Field_8974_2853 Bool)) (|PolymorphicMapType_5826_8974_53#PolymorphicMapType_5826| (Array T@Ref T@Field_8974_53 Bool)) (|PolymorphicMapType_5826_8974_8975#PolymorphicMapType_5826| (Array T@Ref T@Field_8974_8975 Bool)) (|PolymorphicMapType_5826_8974_19009#PolymorphicMapType_5826| (Array T@Ref T@Field_12634_12639 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5277 0)) (((PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| (Array T@Ref T@Field_5337_53 Bool)) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| (Array T@Ref T@Field_5350_5351 T@Ref)) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| (Array T@Ref T@Field_8974_8975 T@FrameType)) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| (Array T@Ref T@Field_12634_12639 T@PolymorphicMapType_5826)) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| (Array T@Ref T@Field_2852_8975 T@FrameType)) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| (Array T@Ref T@Field_2852_12639 T@PolymorphicMapType_5826)) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| (Array T@Ref T@Field_8974_2853 T@Ref)) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| (Array T@Ref T@Field_8974_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_5337_53)
(declare-fun next () T@Field_5350_5351)
(declare-fun succHeap (T@PolymorphicMapType_5277 T@PolymorphicMapType_5277) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5277 T@PolymorphicMapType_5277) Bool)
(declare-fun state (T@PolymorphicMapType_5277 T@PolymorphicMapType_5298) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5298) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5277 T@PolymorphicMapType_5277 T@PolymorphicMapType_5298) Bool)
(declare-fun IsPredicateField_2918_2919 (T@Field_8974_8975) Bool)
(declare-fun HasDirectPerm_8974_8975 (T@PolymorphicMapType_5298 T@Ref T@Field_8974_8975) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2918 (T@Field_8974_8975) T@Field_12634_12639)
(declare-fun IsPredicateField_2852_16888 (T@Field_2852_8975) Bool)
(declare-fun HasDirectPerm_2852_8975 (T@PolymorphicMapType_5298 T@Ref T@Field_2852_8975) Bool)
(declare-fun PredicateMaskField_2852 (T@Field_2852_8975) T@Field_2852_12639)
(declare-fun IsWandField_8974_20174 (T@Field_8974_8975) Bool)
(declare-fun WandMaskField_8974 (T@Field_8974_8975) T@Field_12634_12639)
(declare-fun IsWandField_2852_19817 (T@Field_2852_8975) Bool)
(declare-fun WandMaskField_2852 (T@Field_2852_8975) T@Field_2852_12639)
(declare-fun ZeroPMask () T@PolymorphicMapType_5826)
(declare-fun |get'| (T@PolymorphicMapType_5277 T@Ref Int) Int)
(declare-fun dummyFunction_1389 (Int) Bool)
(declare-fun |get#triggerStateless| (T@Ref Int) Int)
(declare-fun Node (T@Ref) T@Field_8974_8975)
(declare-fun |length'| (T@PolymorphicMapType_5277 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |Node#trigger_2918| (T@PolymorphicMapType_5277 T@Field_8974_8975) Bool)
(declare-fun |Node#everUsed_2918| (T@Field_8974_8975) Bool)
(declare-fun get (T@PolymorphicMapType_5277 T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun length (T@PolymorphicMapType_5277 T@Ref) Int)
(declare-fun |Node#sm| (T@Ref) T@Field_12634_12639)
(declare-fun dummyHeap () T@PolymorphicMapType_5277)
(declare-fun ZeroMask () T@PolymorphicMapType_5298)
(declare-fun InsidePredicate_5337_5337 (T@Field_2852_8975 T@FrameType T@Field_2852_8975 T@FrameType) Bool)
(declare-fun InsidePredicate_2918_2918 (T@Field_8974_8975 T@FrameType T@Field_8974_8975 T@FrameType) Bool)
(declare-fun IsPredicateField_2852_2853 (T@Field_5350_5351) Bool)
(declare-fun IsWandField_2852_2853 (T@Field_5350_5351) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2852_25885 (T@Field_2852_12639) Bool)
(declare-fun IsWandField_2852_25901 (T@Field_2852_12639) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2852_53 (T@Field_5337_53) Bool)
(declare-fun IsWandField_2852_53 (T@Field_5337_53) Bool)
(declare-fun IsPredicateField_2918_25236 (T@Field_12634_12639) Bool)
(declare-fun IsWandField_2918_25252 (T@Field_12634_12639) Bool)
(declare-fun IsPredicateField_2918_53 (T@Field_8974_53) Bool)
(declare-fun IsWandField_2918_53 (T@Field_8974_53) Bool)
(declare-fun IsPredicateField_2918_2853 (T@Field_8974_2853) Bool)
(declare-fun IsWandField_2918_2853 (T@Field_8974_2853) Bool)
(declare-fun HasDirectPerm_8974_16643 (T@PolymorphicMapType_5298 T@Ref T@Field_12634_12639) Bool)
(declare-fun HasDirectPerm_8974_53 (T@PolymorphicMapType_5298 T@Ref T@Field_8974_53) Bool)
(declare-fun HasDirectPerm_8974_2853 (T@PolymorphicMapType_5298 T@Ref T@Field_8974_2853) Bool)
(declare-fun HasDirectPerm_2852_15703 (T@PolymorphicMapType_5298 T@Ref T@Field_2852_12639) Bool)
(declare-fun HasDirectPerm_2852_53 (T@PolymorphicMapType_5298 T@Ref T@Field_5337_53) Bool)
(declare-fun HasDirectPerm_2852_2853 (T@PolymorphicMapType_5298 T@Ref T@Field_5350_5351) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun list_len (T@PolymorphicMapType_5277) Int)
(declare-fun |list_len'| (T@PolymorphicMapType_5277) Int)
(declare-fun |list_len#triggerStateless| () Int)
(declare-fun sumMask (T@PolymorphicMapType_5298 T@PolymorphicMapType_5298 T@PolymorphicMapType_5298) Bool)
(declare-fun |get#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_2918_2919 (T@Field_8974_8975) Int)
(declare-fun |list_len#frame| (T@FrameType) Int)
(declare-fun InsidePredicate_5337_2918 (T@Field_2852_8975 T@FrameType T@Field_8974_8975 T@FrameType) Bool)
(declare-fun InsidePredicate_2918_5337 (T@Field_8974_8975 T@FrameType T@Field_2852_8975 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5277) (Heap1 T@PolymorphicMapType_5277) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5277) (Mask T@PolymorphicMapType_5298) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5277) (ExhaleHeap T@PolymorphicMapType_5277) (Mask@@0 T@PolymorphicMapType_5298) (pm_f_5 T@Field_8974_8975) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8974_8975 Mask@@0 null pm_f_5) (IsPredicateField_2918_2919 pm_f_5)) (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_5350_5351) ) (!  (=> (select (|PolymorphicMapType_5826_2852_2853#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@0) null (PredicateMaskField_2918 pm_f_5))) o2_5 f_16) (= (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@0) o2_5 f_16) (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| ExhaleHeap) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| ExhaleHeap) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_5337_53) ) (!  (=> (select (|PolymorphicMapType_5826_2852_53#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@0) null (PredicateMaskField_2918 pm_f_5))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@0) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_2852_8975) ) (!  (=> (select (|PolymorphicMapType_5826_2852_8975#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@0) null (PredicateMaskField_2918 pm_f_5))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@0) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| ExhaleHeap) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| ExhaleHeap) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_2852_12639) ) (!  (=> (select (|PolymorphicMapType_5826_2852_18159#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@0) null (PredicateMaskField_2918 pm_f_5))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@0) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_8974_2853) ) (!  (=> (select (|PolymorphicMapType_5826_8974_2853#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@0) null (PredicateMaskField_2918 pm_f_5))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@0) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| ExhaleHeap) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| ExhaleHeap) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_8974_53) ) (!  (=> (select (|PolymorphicMapType_5826_8974_53#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@0) null (PredicateMaskField_2918 pm_f_5))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@0) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| ExhaleHeap) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| ExhaleHeap) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_8974_8975) ) (!  (=> (select (|PolymorphicMapType_5826_8974_8975#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@0) null (PredicateMaskField_2918 pm_f_5))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@0) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| ExhaleHeap) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| ExhaleHeap) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_12634_12639) ) (!  (=> (select (|PolymorphicMapType_5826_8974_19009#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@0) null (PredicateMaskField_2918 pm_f_5))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@0) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap) o2_5@@6 f_16@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2918_2919 pm_f_5))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5277) (ExhaleHeap@@0 T@PolymorphicMapType_5277) (Mask@@1 T@PolymorphicMapType_5298) (pm_f_5@@0 T@Field_2852_8975) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2852_8975 Mask@@1 null pm_f_5@@0) (IsPredicateField_2852_16888 pm_f_5@@0)) (and (and (and (and (and (and (and (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_5350_5351) ) (!  (=> (select (|PolymorphicMapType_5826_2852_2853#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@1) null (PredicateMaskField_2852 pm_f_5@@0))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@1) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@7 f_16@@7))
)) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_5337_53) ) (!  (=> (select (|PolymorphicMapType_5826_2852_53#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@1) null (PredicateMaskField_2852 pm_f_5@@0))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@1) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@8 f_16@@8))
))) (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_2852_8975) ) (!  (=> (select (|PolymorphicMapType_5826_2852_8975#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@1) null (PredicateMaskField_2852 pm_f_5@@0))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@1) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@9 f_16@@9))
))) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_2852_12639) ) (!  (=> (select (|PolymorphicMapType_5826_2852_18159#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@1) null (PredicateMaskField_2852 pm_f_5@@0))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@1) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_8974_2853) ) (!  (=> (select (|PolymorphicMapType_5826_8974_2853#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@1) null (PredicateMaskField_2852 pm_f_5@@0))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@1) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_8974_53) ) (!  (=> (select (|PolymorphicMapType_5826_8974_53#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@1) null (PredicateMaskField_2852 pm_f_5@@0))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@1) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_8974_8975) ) (!  (=> (select (|PolymorphicMapType_5826_8974_8975#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@1) null (PredicateMaskField_2852 pm_f_5@@0))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@1) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_12634_12639) ) (!  (=> (select (|PolymorphicMapType_5826_8974_19009#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@1) null (PredicateMaskField_2852 pm_f_5@@0))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@1) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@0) o2_5@@14 f_16@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2852_16888 pm_f_5@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5277) (ExhaleHeap@@1 T@PolymorphicMapType_5277) (Mask@@2 T@PolymorphicMapType_5298) (pm_f_5@@1 T@Field_8974_8975) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8974_8975 Mask@@2 null pm_f_5@@1) (IsWandField_8974_20174 pm_f_5@@1)) (and (and (and (and (and (and (and (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_5350_5351) ) (!  (=> (select (|PolymorphicMapType_5826_2852_2853#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@2) null (WandMaskField_8974 pm_f_5@@1))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@2) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@15 f_16@@15))
)) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_5337_53) ) (!  (=> (select (|PolymorphicMapType_5826_2852_53#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@2) null (WandMaskField_8974 pm_f_5@@1))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@2) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_2852_8975) ) (!  (=> (select (|PolymorphicMapType_5826_2852_8975#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@2) null (WandMaskField_8974 pm_f_5@@1))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@2) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_2852_12639) ) (!  (=> (select (|PolymorphicMapType_5826_2852_18159#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@2) null (WandMaskField_8974 pm_f_5@@1))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@2) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@18 f_16@@18))
))) (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_8974_2853) ) (!  (=> (select (|PolymorphicMapType_5826_8974_2853#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@2) null (WandMaskField_8974 pm_f_5@@1))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@2) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@19 f_16@@19))
))) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_8974_53) ) (!  (=> (select (|PolymorphicMapType_5826_8974_53#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@2) null (WandMaskField_8974 pm_f_5@@1))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@2) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_8974_8975) ) (!  (=> (select (|PolymorphicMapType_5826_8974_8975#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@2) null (WandMaskField_8974 pm_f_5@@1))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@2) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_12634_12639) ) (!  (=> (select (|PolymorphicMapType_5826_8974_19009#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@2) null (WandMaskField_8974 pm_f_5@@1))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@2) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@1) o2_5@@22 f_16@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_8974_20174 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5277) (ExhaleHeap@@2 T@PolymorphicMapType_5277) (Mask@@3 T@PolymorphicMapType_5298) (pm_f_5@@2 T@Field_2852_8975) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2852_8975 Mask@@3 null pm_f_5@@2) (IsWandField_2852_19817 pm_f_5@@2)) (and (and (and (and (and (and (and (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_5350_5351) ) (!  (=> (select (|PolymorphicMapType_5826_2852_2853#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@3) null (WandMaskField_2852 pm_f_5@@2))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@3) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@23 f_16@@23))
)) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_5337_53) ) (!  (=> (select (|PolymorphicMapType_5826_2852_53#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@3) null (WandMaskField_2852 pm_f_5@@2))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@3) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_2852_8975) ) (!  (=> (select (|PolymorphicMapType_5826_2852_8975#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@3) null (WandMaskField_2852 pm_f_5@@2))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@3) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_2852_12639) ) (!  (=> (select (|PolymorphicMapType_5826_2852_18159#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@3) null (WandMaskField_2852 pm_f_5@@2))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@3) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_8974_2853) ) (!  (=> (select (|PolymorphicMapType_5826_8974_2853#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@3) null (WandMaskField_2852 pm_f_5@@2))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@3) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_8974_53) ) (!  (=> (select (|PolymorphicMapType_5826_8974_53#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@3) null (WandMaskField_2852 pm_f_5@@2))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@3) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@28 f_16@@28))
))) (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_8974_8975) ) (!  (=> (select (|PolymorphicMapType_5826_8974_8975#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@3) null (WandMaskField_2852 pm_f_5@@2))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@3) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@29 f_16@@29))
))) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_12634_12639) ) (!  (=> (select (|PolymorphicMapType_5826_8974_19009#PolymorphicMapType_5826| (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@3) null (WandMaskField_2852 pm_f_5@@2))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@3) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@2) o2_5@@30 f_16@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_2852_19817 pm_f_5@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5277) (Heap1@@0 T@PolymorphicMapType_5277) (Heap2 T@PolymorphicMapType_5277) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12634_12639) ) (!  (not (select (|PolymorphicMapType_5826_8974_19009#PolymorphicMapType_5826| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5826_8974_19009#PolymorphicMapType_5826| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8974_8975) ) (!  (not (select (|PolymorphicMapType_5826_8974_8975#PolymorphicMapType_5826| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5826_8974_8975#PolymorphicMapType_5826| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8974_53) ) (!  (not (select (|PolymorphicMapType_5826_8974_53#PolymorphicMapType_5826| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5826_8974_53#PolymorphicMapType_5826| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8974_2853) ) (!  (not (select (|PolymorphicMapType_5826_8974_2853#PolymorphicMapType_5826| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5826_8974_2853#PolymorphicMapType_5826| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_2852_12639) ) (!  (not (select (|PolymorphicMapType_5826_2852_18159#PolymorphicMapType_5826| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5826_2852_18159#PolymorphicMapType_5826| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_2852_8975) ) (!  (not (select (|PolymorphicMapType_5826_2852_8975#PolymorphicMapType_5826| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5826_2852_8975#PolymorphicMapType_5826| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5337_53) ) (!  (not (select (|PolymorphicMapType_5826_2852_53#PolymorphicMapType_5826| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5826_2852_53#PolymorphicMapType_5826| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5350_5351) ) (!  (not (select (|PolymorphicMapType_5826_2852_2853#PolymorphicMapType_5826| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5826_2852_2853#PolymorphicMapType_5826| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5277) (this T@Ref) (i Int) ) (! (dummyFunction_1389 (|get#triggerStateless| this i))
 :qid |stdinbpl.258:15|
 :skolemid |27|
 :pattern ( (|get'| Heap@@4 this i))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_2918_2919 (Node this@@0))
 :qid |stdinbpl.453:15|
 :skolemid |36|
 :pattern ( (Node this@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5277) (this@@1 T@Ref) ) (! (dummyFunction_1389 (|length#triggerStateless| this@@1))
 :qid |stdinbpl.200:15|
 :skolemid |23|
 :pattern ( (|length'| Heap@@5 this@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5277) (this@@2 T@Ref) ) (! (|Node#everUsed_2918| (Node this@@2))
 :qid |stdinbpl.472:15|
 :skolemid |40|
 :pattern ( (|Node#trigger_2918| Heap@@6 (Node this@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5277) (Mask@@4 T@PolymorphicMapType_5298) (this@@3 T@Ref) (i@@0 Int) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@0) (< i@@0 (length Heap@@7 this@@3))) (= (get Heap@@7 this@@3 i@@0) (ite (= i@@0 0) (- 0 1) (|get'| Heap@@7 (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@7) this@@3 next) (- i@@0 1))))))
 :qid |stdinbpl.264:15|
 :skolemid |28|
 :pattern ( (state Heap@@7 Mask@@4) (get Heap@@7 this@@3 i@@0))
 :pattern ( (state Heap@@7 Mask@@4) (|get#triggerStateless| this@@3 i@@0) (|Node#trigger_2918| Heap@@7 (Node this@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5277) (this@@4 T@Ref) ) (!  (and (= (length Heap@@8 this@@4) (|length'| Heap@@8 this@@4)) (dummyFunction_1389 (|length#triggerStateless| this@@4)))
 :qid |stdinbpl.196:15|
 :skolemid |22|
 :pattern ( (length Heap@@8 this@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5277) (ExhaleHeap@@3 T@PolymorphicMapType_5277) (Mask@@5 T@PolymorphicMapType_5298) (pm_f_5@@3 T@Field_8974_8975) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_8974_8975 Mask@@5 null pm_f_5@@3) (IsPredicateField_2918_2919 pm_f_5@@3)) (= (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@9) null (PredicateMaskField_2918 pm_f_5@@3)) (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@3) null (PredicateMaskField_2918 pm_f_5@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsPredicateField_2918_2919 pm_f_5@@3) (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@3) null (PredicateMaskField_2918 pm_f_5@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5277) (ExhaleHeap@@4 T@PolymorphicMapType_5277) (Mask@@6 T@PolymorphicMapType_5298) (pm_f_5@@4 T@Field_2852_8975) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_2852_8975 Mask@@6 null pm_f_5@@4) (IsPredicateField_2852_16888 pm_f_5@@4)) (= (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@10) null (PredicateMaskField_2852 pm_f_5@@4)) (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@4) null (PredicateMaskField_2852 pm_f_5@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsPredicateField_2852_16888 pm_f_5@@4) (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@4) null (PredicateMaskField_2852 pm_f_5@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5277) (ExhaleHeap@@5 T@PolymorphicMapType_5277) (Mask@@7 T@PolymorphicMapType_5298) (pm_f_5@@5 T@Field_8974_8975) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_8974_8975 Mask@@7 null pm_f_5@@5) (IsWandField_8974_20174 pm_f_5@@5)) (= (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@11) null (WandMaskField_8974 pm_f_5@@5)) (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@5) null (WandMaskField_8974 pm_f_5@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (IsWandField_8974_20174 pm_f_5@@5) (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@5) null (WandMaskField_8974 pm_f_5@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5277) (ExhaleHeap@@6 T@PolymorphicMapType_5277) (Mask@@8 T@PolymorphicMapType_5298) (pm_f_5@@6 T@Field_2852_8975) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_2852_8975 Mask@@8 null pm_f_5@@6) (IsWandField_2852_19817 pm_f_5@@6)) (= (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@12) null (WandMaskField_2852 pm_f_5@@6)) (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@6) null (WandMaskField_2852 pm_f_5@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (IsWandField_2852_19817 pm_f_5@@6) (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@6) null (WandMaskField_2852 pm_f_5@@6)))
)))
(assert (forall ((this@@5 T@Ref) (this2 T@Ref) ) (!  (=> (= (Node this@@5) (Node this2)) (= this@@5 this2))
 :qid |stdinbpl.463:15|
 :skolemid |38|
 :pattern ( (Node this@@5) (Node this2))
)))
(assert (forall ((this@@6 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|Node#sm| this@@6) (|Node#sm| this2@@0)) (= this@@6 this2@@0))
 :qid |stdinbpl.467:15|
 :skolemid |39|
 :pattern ( (|Node#sm| this@@6) (|Node#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5277) (ExhaleHeap@@7 T@PolymorphicMapType_5277) (Mask@@9 T@PolymorphicMapType_5298) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@13) o_12 $allocated) (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_2852_8975) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5337_5337 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5337_5337 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8974_8975) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_2918_2918 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2918_2918 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2852_2853 next)))
(assert  (not (IsWandField_2852_2853 next)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5277) (ExhaleHeap@@8 T@PolymorphicMapType_5277) (Mask@@10 T@PolymorphicMapType_5298) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5298) (o_2@@7 T@Ref) (f_4@@7 T@Field_2852_12639) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2852_25885 f_4@@7))) (not (IsWandField_2852_25901 f_4@@7))) (<= (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5298) (o_2@@8 T@Ref) (f_4@@8 T@Field_5337_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2852_53 f_4@@8))) (not (IsWandField_2852_53 f_4@@8))) (<= (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5298) (o_2@@9 T@Ref) (f_4@@9 T@Field_5350_5351) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| Mask@@13) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2852_2853 f_4@@9))) (not (IsWandField_2852_2853 f_4@@9))) (<= (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| Mask@@13) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| Mask@@13) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5298) (o_2@@10 T@Ref) (f_4@@10 T@Field_2852_8975) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| Mask@@14) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2852_16888 f_4@@10))) (not (IsWandField_2852_19817 f_4@@10))) (<= (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| Mask@@14) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| Mask@@14) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5298) (o_2@@11 T@Ref) (f_4@@11 T@Field_12634_12639) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| Mask@@15) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2918_25236 f_4@@11))) (not (IsWandField_2918_25252 f_4@@11))) (<= (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| Mask@@15) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| Mask@@15) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5298) (o_2@@12 T@Ref) (f_4@@12 T@Field_8974_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| Mask@@16) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2918_53 f_4@@12))) (not (IsWandField_2918_53 f_4@@12))) (<= (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| Mask@@16) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| Mask@@16) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5298) (o_2@@13 T@Ref) (f_4@@13 T@Field_8974_2853) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| Mask@@17) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2918_2853 f_4@@13))) (not (IsWandField_2918_2853 f_4@@13))) (<= (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| Mask@@17) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| Mask@@17) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5298) (o_2@@14 T@Ref) (f_4@@14 T@Field_8974_8975) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| Mask@@18) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2918_2919 f_4@@14))) (not (IsWandField_8974_20174 f_4@@14))) (<= (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| Mask@@18) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| Mask@@18) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5298) (o_2@@15 T@Ref) (f_4@@15 T@Field_12634_12639) ) (! (= (HasDirectPerm_8974_16643 Mask@@19 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| Mask@@19) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8974_16643 Mask@@19 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5298) (o_2@@16 T@Ref) (f_4@@16 T@Field_8974_8975) ) (! (= (HasDirectPerm_8974_8975 Mask@@20 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| Mask@@20) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8974_8975 Mask@@20 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5298) (o_2@@17 T@Ref) (f_4@@17 T@Field_8974_53) ) (! (= (HasDirectPerm_8974_53 Mask@@21 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| Mask@@21) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8974_53 Mask@@21 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5298) (o_2@@18 T@Ref) (f_4@@18 T@Field_8974_2853) ) (! (= (HasDirectPerm_8974_2853 Mask@@22 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| Mask@@22) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8974_2853 Mask@@22 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5298) (o_2@@19 T@Ref) (f_4@@19 T@Field_2852_12639) ) (! (= (HasDirectPerm_2852_15703 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2852_15703 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5298) (o_2@@20 T@Ref) (f_4@@20 T@Field_2852_8975) ) (! (= (HasDirectPerm_2852_8975 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2852_8975 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5298) (o_2@@21 T@Ref) (f_4@@21 T@Field_5337_53) ) (! (= (HasDirectPerm_2852_53 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2852_53 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5298) (o_2@@22 T@Ref) (f_4@@22 T@Field_5350_5351) ) (! (= (HasDirectPerm_2852_2853 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2852_2853 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5277) (ExhaleHeap@@9 T@PolymorphicMapType_5277) (Mask@@27 T@PolymorphicMapType_5298) (o_12@@0 T@Ref) (f_16@@31 T@Field_12634_12639) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_8974_16643 Mask@@27 o_12@@0 f_16@@31) (= (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@15) o_12@@0 f_16@@31) (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@9) o_12@@0 f_16@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| ExhaleHeap@@9) o_12@@0 f_16@@31))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5277) (ExhaleHeap@@10 T@PolymorphicMapType_5277) (Mask@@28 T@PolymorphicMapType_5298) (o_12@@1 T@Ref) (f_16@@32 T@Field_8974_8975) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@28) (=> (HasDirectPerm_8974_8975 Mask@@28 o_12@@1 f_16@@32) (= (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@16) o_12@@1 f_16@@32) (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| ExhaleHeap@@10) o_12@@1 f_16@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@28) (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| ExhaleHeap@@10) o_12@@1 f_16@@32))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5277) (ExhaleHeap@@11 T@PolymorphicMapType_5277) (Mask@@29 T@PolymorphicMapType_5298) (o_12@@2 T@Ref) (f_16@@33 T@Field_8974_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@29) (=> (HasDirectPerm_8974_53 Mask@@29 o_12@@2 f_16@@33) (= (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@17) o_12@@2 f_16@@33) (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| ExhaleHeap@@11) o_12@@2 f_16@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@29) (select (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| ExhaleHeap@@11) o_12@@2 f_16@@33))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5277) (ExhaleHeap@@12 T@PolymorphicMapType_5277) (Mask@@30 T@PolymorphicMapType_5298) (o_12@@3 T@Ref) (f_16@@34 T@Field_8974_2853) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@30) (=> (HasDirectPerm_8974_2853 Mask@@30 o_12@@3 f_16@@34) (= (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@18) o_12@@3 f_16@@34) (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| ExhaleHeap@@12) o_12@@3 f_16@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@30) (select (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| ExhaleHeap@@12) o_12@@3 f_16@@34))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5277) (ExhaleHeap@@13 T@PolymorphicMapType_5277) (Mask@@31 T@PolymorphicMapType_5298) (o_12@@4 T@Ref) (f_16@@35 T@Field_2852_12639) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@31) (=> (HasDirectPerm_2852_15703 Mask@@31 o_12@@4 f_16@@35) (= (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@19) o_12@@4 f_16@@35) (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@13) o_12@@4 f_16@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@31) (select (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| ExhaleHeap@@13) o_12@@4 f_16@@35))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5277) (ExhaleHeap@@14 T@PolymorphicMapType_5277) (Mask@@32 T@PolymorphicMapType_5298) (o_12@@5 T@Ref) (f_16@@36 T@Field_2852_8975) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@32) (=> (HasDirectPerm_2852_8975 Mask@@32 o_12@@5 f_16@@36) (= (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@20) o_12@@5 f_16@@36) (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| ExhaleHeap@@14) o_12@@5 f_16@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@32) (select (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| ExhaleHeap@@14) o_12@@5 f_16@@36))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5277) (ExhaleHeap@@15 T@PolymorphicMapType_5277) (Mask@@33 T@PolymorphicMapType_5298) (o_12@@6 T@Ref) (f_16@@37 T@Field_5337_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@33) (=> (HasDirectPerm_2852_53 Mask@@33 o_12@@6 f_16@@37) (= (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@21) o_12@@6 f_16@@37) (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap@@15) o_12@@6 f_16@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@33) (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| ExhaleHeap@@15) o_12@@6 f_16@@37))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5277) (ExhaleHeap@@16 T@PolymorphicMapType_5277) (Mask@@34 T@PolymorphicMapType_5298) (o_12@@7 T@Ref) (f_16@@38 T@Field_5350_5351) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@34) (=> (HasDirectPerm_2852_2853 Mask@@34 o_12@@7 f_16@@38) (= (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@22) o_12@@7 f_16@@38) (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| ExhaleHeap@@16) o_12@@7 f_16@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@34) (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| ExhaleHeap@@16) o_12@@7 f_16@@38))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5277) ) (!  (and (= (list_len Heap@@23) (|list_len'| Heap@@23)) (dummyFunction_1389 |list_len#triggerStateless|))
 :qid |stdinbpl.399:15|
 :skolemid |31|
 :pattern ( (list_len Heap@@23))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_2852_12639) ) (! (= (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_5337_53) ) (! (= (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_5350_5351) ) (! (= (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_2852_8975) ) (! (= (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_12634_12639) ) (! (= (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_8974_53) ) (! (= (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8974_2853) ) (! (= (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8974_8975) ) (! (= (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5277) (this@@7 T@Ref) (i@@1 Int) ) (!  (and (= (get Heap@@24 this@@7 i@@1) (|get'| Heap@@24 this@@7 i@@1)) (dummyFunction_1389 (|get#triggerStateless| this@@7 i@@1)))
 :qid |stdinbpl.254:15|
 :skolemid |26|
 :pattern ( (get Heap@@24 this@@7 i@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5298) (SummandMask1 T@PolymorphicMapType_5298) (SummandMask2 T@PolymorphicMapType_5298) (o_2@@31 T@Ref) (f_4@@31 T@Field_2852_12639) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5298) (SummandMask1@@0 T@PolymorphicMapType_5298) (SummandMask2@@0 T@PolymorphicMapType_5298) (o_2@@32 T@Ref) (f_4@@32 T@Field_5337_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5298) (SummandMask1@@1 T@PolymorphicMapType_5298) (SummandMask2@@1 T@PolymorphicMapType_5298) (o_2@@33 T@Ref) (f_4@@33 T@Field_5350_5351) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5298) (SummandMask1@@2 T@PolymorphicMapType_5298) (SummandMask2@@2 T@PolymorphicMapType_5298) (o_2@@34 T@Ref) (f_4@@34 T@Field_2852_8975) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5298) (SummandMask1@@3 T@PolymorphicMapType_5298) (SummandMask2@@3 T@PolymorphicMapType_5298) (o_2@@35 T@Ref) (f_4@@35 T@Field_12634_12639) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5298) (SummandMask1@@4 T@PolymorphicMapType_5298) (SummandMask2@@4 T@PolymorphicMapType_5298) (o_2@@36 T@Ref) (f_4@@36 T@Field_8974_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5298) (SummandMask1@@5 T@PolymorphicMapType_5298) (SummandMask2@@5 T@PolymorphicMapType_5298) (o_2@@37 T@Ref) (f_4@@37 T@Field_8974_2853) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5298) (SummandMask1@@6 T@PolymorphicMapType_5298) (SummandMask2@@6 T@PolymorphicMapType_5298) (o_2@@38 T@Ref) (f_4@@38 T@Field_8974_8975) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5277) (Mask@@35 T@PolymorphicMapType_5298) (this@@8 T@Ref) (i@@2 Int) ) (!  (=> (state Heap@@25 Mask@@35) (= (|get'| Heap@@25 this@@8 i@@2) (|get#frame| (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@25) null (Node this@@8)) this@@8 i@@2)))
 :qid |stdinbpl.271:15|
 :skolemid |29|
 :pattern ( (state Heap@@25 Mask@@35) (|get'| Heap@@25 this@@8 i@@2))
 :pattern ( (state Heap@@25 Mask@@35) (|get#triggerStateless| this@@8 i@@2) (|Node#trigger_2918| Heap@@25 (Node this@@8)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5277) (Mask@@36 T@PolymorphicMapType_5298) (this@@9 T@Ref) ) (!  (=> (state Heap@@26 Mask@@36) (= (|length'| Heap@@26 this@@9) (|length#frame| (select (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@26) null (Node this@@9)) this@@9)))
 :qid |stdinbpl.213:15|
 :skolemid |25|
 :pattern ( (state Heap@@26 Mask@@36) (|length'| Heap@@26 this@@9))
)))
(assert (forall ((this@@10 T@Ref) ) (! (= (getPredWandId_2918_2919 (Node this@@10)) 0)
 :qid |stdinbpl.457:15|
 :skolemid |37|
 :pattern ( (Node this@@10))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5277) ) (! (dummyFunction_1389 |list_len#triggerStateless|)
 :qid |stdinbpl.403:15|
 :skolemid |32|
 :pattern ( (|list_len'| Heap@@27))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5277) (Mask@@37 T@PolymorphicMapType_5298) ) (!  (=> (state Heap@@28 Mask@@37) (= (|list_len'| Heap@@28) (|list_len#frame| EmptyFrame)))
 :qid |stdinbpl.416:15|
 :skolemid |34|
 :pattern ( (state Heap@@28 Mask@@37) (|list_len'| Heap@@28))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5277) (o_11 T@Ref) (f_17 T@Field_12634_12639) (v T@PolymorphicMapType_5826) ) (! (succHeap Heap@@29 (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@29) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@29) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@29) (store (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@29) o_11 f_17 v) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@29) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@29) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@29) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@29) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@29) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@29) (store (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@29) o_11 f_17 v) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@29) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@29) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@29) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5277) (o_11@@0 T@Ref) (f_17@@0 T@Field_8974_8975) (v@@0 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@30) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@30) (store (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@30) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@30) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@30) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@30) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@30) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@30) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@30) (store (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@30) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@30) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@30) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@30) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@30) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5277) (o_11@@1 T@Ref) (f_17@@1 T@Field_8974_2853) (v@@1 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@31) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@31) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@31) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@31) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@31) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@31) (store (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@31) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@31) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@31) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@31) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@31) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@31) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@31) (store (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@31) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5277) (o_11@@2 T@Ref) (f_17@@2 T@Field_8974_53) (v@@2 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@32) (store (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@32) o_11@@2 f_17@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@32) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@32) (store (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@32) o_11@@2 f_17@@2 v@@2)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5277) (o_11@@3 T@Ref) (f_17@@3 T@Field_2852_12639) (v@@3 T@PolymorphicMapType_5826) ) (! (succHeap Heap@@33 (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@33) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@33) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@33) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@33) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@33) (store (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@33) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@33) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@33) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@33) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@33) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@33) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@33) (store (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@33) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@33) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5277) (o_11@@4 T@Ref) (f_17@@4 T@Field_2852_8975) (v@@4 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@34) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@34) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@34) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@34) (store (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@34) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@34) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@34) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@34) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@34) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@34) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@34) (store (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@34) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@34) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@34) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5277) (o_11@@5 T@Ref) (f_17@@5 T@Field_5350_5351) (v@@5 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@35) (store (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@35) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@35) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@35) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@35) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@35) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@35) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5277 (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@35) (store (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@35) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@35) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@35) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@35) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@35) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@35) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5277) (o_11@@6 T@Ref) (f_17@@6 T@Field_5337_53) (v@@6 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_5277 (store (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@36) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5277 (store (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@36) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_2918_2919#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_2922_12726#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_2852_8975#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_2852_15745#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_8974_2853#PolymorphicMapType_5277| Heap@@36) (|PolymorphicMapType_5277_8974_53#PolymorphicMapType_5277| Heap@@36)))
)))
(assert (forall ((this@@11 T@Ref) ) (! (= (PredicateMaskField_2918 (Node this@@11)) (|Node#sm| this@@11))
 :qid |stdinbpl.449:15|
 :skolemid |35|
 :pattern ( (PredicateMaskField_2918 (Node this@@11)))
)))
(assert (forall ((o_11@@7 T@Ref) (f_10 T@Field_5350_5351) (Heap@@37 T@PolymorphicMapType_5277) ) (!  (=> (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@37) o_11@@7 $allocated) (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@37) (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@37) o_11@@7 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5277_2727_2728#PolymorphicMapType_5277| Heap@@37) o_11@@7 f_10))
)))
(assert (forall ((p@@2 T@Field_2852_8975) (v_1@@1 T@FrameType) (q T@Field_2852_8975) (w@@1 T@FrameType) (r T@Field_2852_8975) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5337_5337 p@@2 v_1@@1 q w@@1) (InsidePredicate_5337_5337 q w@@1 r u)) (InsidePredicate_5337_5337 p@@2 v_1@@1 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5337_5337 p@@2 v_1@@1 q w@@1) (InsidePredicate_5337_5337 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_2852_8975) (v_1@@2 T@FrameType) (q@@0 T@Field_2852_8975) (w@@2 T@FrameType) (r@@0 T@Field_8974_8975) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_5337_5337 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_5337_2918 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_5337_2918 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5337_5337 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_5337_2918 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_2852_8975) (v_1@@3 T@FrameType) (q@@1 T@Field_8974_8975) (w@@3 T@FrameType) (r@@1 T@Field_2852_8975) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_5337_2918 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_2918_5337 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_5337_5337 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5337_2918 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_2918_5337 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_2852_8975) (v_1@@4 T@FrameType) (q@@2 T@Field_8974_8975) (w@@4 T@FrameType) (r@@2 T@Field_8974_8975) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_5337_2918 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_2918_2918 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_5337_2918 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5337_2918 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_2918_2918 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8974_8975) (v_1@@5 T@FrameType) (q@@3 T@Field_2852_8975) (w@@5 T@FrameType) (r@@3 T@Field_2852_8975) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_2918_5337 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_5337_5337 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_2918_5337 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2918_5337 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_5337_5337 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8974_8975) (v_1@@6 T@FrameType) (q@@4 T@Field_2852_8975) (w@@6 T@FrameType) (r@@4 T@Field_8974_8975) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_2918_5337 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_5337_2918 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_2918_2918 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2918_5337 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_5337_2918 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8974_8975) (v_1@@7 T@FrameType) (q@@5 T@Field_8974_8975) (w@@7 T@FrameType) (r@@5 T@Field_2852_8975) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_2918_2918 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_2918_5337 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_2918_5337 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2918_2918 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_2918_5337 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8974_8975) (v_1@@8 T@FrameType) (q@@6 T@Field_8974_8975) (w@@8 T@FrameType) (r@@6 T@Field_8974_8975) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_2918_2918 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_2918_2918 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_2918_2918 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2918_2918 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_2918_2918 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5277) (Mask@@38 T@PolymorphicMapType_5298) (this@@12 T@Ref) ) (!  (=> (and (state Heap@@38 Mask@@38) (< AssumeFunctionsAbove 2)) (= (length Heap@@38 this@@12) 10))
 :qid |stdinbpl.206:15|
 :skolemid |24|
 :pattern ( (state Heap@@38 Mask@@38) (length Heap@@38 this@@12))
 :pattern ( (state Heap@@38 Mask@@38) (|length#triggerStateless| this@@12) (|Node#trigger_2918| Heap@@38 (Node this@@12)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5277) (Mask@@39 T@PolymorphicMapType_5298) ) (!  (=> (and (state Heap@@39 Mask@@39) (< AssumeFunctionsAbove 1)) (= (list_len Heap@@39) 0))
 :qid |stdinbpl.409:15|
 :skolemid |33|
 :pattern ( (state Heap@@39 Mask@@39) (list_len Heap@@39))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@40 () T@PolymorphicMapType_5277)
(declare-fun this@@13 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_5298)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (and (state Heap@@40 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_5277_2724_53#PolymorphicMapType_5277| Heap@@40) this@@13 $allocated))) (and (and (not (= this@@13 null)) (= Mask@0 (PolymorphicMapType_5298 (|PolymorphicMapType_5298_2918_2919#PolymorphicMapType_5298| ZeroMask) (store (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| ZeroMask) this@@13 next (+ (select (|PolymorphicMapType_5298_2852_2853#PolymorphicMapType_5298| ZeroMask) this@@13 next) FullPerm)) (|PolymorphicMapType_5298_2918_2853#PolymorphicMapType_5298| ZeroMask) (|PolymorphicMapType_5298_2918_53#PolymorphicMapType_5298| ZeroMask) (|PolymorphicMapType_5298_2918_23730#PolymorphicMapType_5298| ZeroMask) (|PolymorphicMapType_5298_2852_2919#PolymorphicMapType_5298| ZeroMask) (|PolymorphicMapType_5298_2852_53#PolymorphicMapType_5298| ZeroMask) (|PolymorphicMapType_5298_2852_24061#PolymorphicMapType_5298| ZeroMask)))) (and (state Heap@@40 Mask@0) (= (ControlFlow 0 2) (- 0 1))))) (HasDirectPerm_2852_2853 Mask@0 this@@13 next))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
