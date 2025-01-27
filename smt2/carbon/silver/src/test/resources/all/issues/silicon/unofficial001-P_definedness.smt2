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
(declare-sort T@Field_4995_53 0)
(declare-sort T@Field_5008_5009 0)
(declare-sort T@Field_8833_8834 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12157_12162 0)
(declare-sort T@Field_2756_8834 0)
(declare-sort T@Field_2756_12162 0)
(declare-sort T@Field_8833_2757 0)
(declare-sort T@Field_8833_53 0)
(declare-datatypes ((T@PolymorphicMapType_4956 0)) (((PolymorphicMapType_4956 (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| (Array T@Ref T@Field_8833_8834 Real)) (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| (Array T@Ref T@Field_5008_5009 Real)) (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| (Array T@Ref T@Field_8833_2757 Real)) (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| (Array T@Ref T@Field_8833_53 Real)) (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| (Array T@Ref T@Field_12157_12162 Real)) (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| (Array T@Ref T@Field_2756_8834 Real)) (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| (Array T@Ref T@Field_4995_53 Real)) (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| (Array T@Ref T@Field_2756_12162 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5484 0)) (((PolymorphicMapType_5484 (|PolymorphicMapType_5484_2756_2757#PolymorphicMapType_5484| (Array T@Ref T@Field_5008_5009 Bool)) (|PolymorphicMapType_5484_2756_53#PolymorphicMapType_5484| (Array T@Ref T@Field_4995_53 Bool)) (|PolymorphicMapType_5484_2756_8834#PolymorphicMapType_5484| (Array T@Ref T@Field_2756_8834 Bool)) (|PolymorphicMapType_5484_2756_17649#PolymorphicMapType_5484| (Array T@Ref T@Field_2756_12162 Bool)) (|PolymorphicMapType_5484_8833_2757#PolymorphicMapType_5484| (Array T@Ref T@Field_8833_2757 Bool)) (|PolymorphicMapType_5484_8833_53#PolymorphicMapType_5484| (Array T@Ref T@Field_8833_53 Bool)) (|PolymorphicMapType_5484_8833_8834#PolymorphicMapType_5484| (Array T@Ref T@Field_8833_8834 Bool)) (|PolymorphicMapType_5484_8833_18499#PolymorphicMapType_5484| (Array T@Ref T@Field_12157_12162 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4935 0)) (((PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| (Array T@Ref T@Field_4995_53 Bool)) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| (Array T@Ref T@Field_5008_5009 T@Ref)) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| (Array T@Ref T@Field_8833_8834 T@FrameType)) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| (Array T@Ref T@Field_12157_12162 T@PolymorphicMapType_5484)) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| (Array T@Ref T@Field_2756_8834 T@FrameType)) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| (Array T@Ref T@Field_2756_12162 T@PolymorphicMapType_5484)) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| (Array T@Ref T@Field_8833_2757 T@Ref)) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| (Array T@Ref T@Field_8833_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_4995_53)
(declare-fun next () T@Field_5008_5009)
(declare-fun succHeap (T@PolymorphicMapType_4935 T@PolymorphicMapType_4935) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4935 T@PolymorphicMapType_4935) Bool)
(declare-fun state (T@PolymorphicMapType_4935 T@PolymorphicMapType_4956) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4956) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4935 T@PolymorphicMapType_4935 T@PolymorphicMapType_4956) Bool)
(declare-fun IsPredicateField_2819_2820 (T@Field_8833_8834) Bool)
(declare-fun HasDirectPerm_8833_8834 (T@PolymorphicMapType_4956 T@Ref T@Field_8833_8834) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2819 (T@Field_8833_8834) T@Field_12157_12162)
(declare-fun IsPredicateField_2756_16378 (T@Field_2756_8834) Bool)
(declare-fun HasDirectPerm_2756_8834 (T@PolymorphicMapType_4956 T@Ref T@Field_2756_8834) Bool)
(declare-fun PredicateMaskField_2756 (T@Field_2756_8834) T@Field_2756_12162)
(declare-fun IsWandField_8833_19664 (T@Field_8833_8834) Bool)
(declare-fun WandMaskField_8833 (T@Field_8833_8834) T@Field_12157_12162)
(declare-fun IsWandField_2756_19307 (T@Field_2756_8834) Bool)
(declare-fun WandMaskField_2756 (T@Field_2756_8834) T@Field_2756_12162)
(declare-fun |last'| (T@PolymorphicMapType_4935 T@Ref T@Ref T@Ref) T@Ref)
(declare-fun dummyFunction_2799 (T@Ref) Bool)
(declare-fun |last#triggerStateless| (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun ZeroPMask () T@PolymorphicMapType_5484)
(declare-fun P (T@Ref T@Ref) T@Field_8833_8834)
(declare-fun |P#trigger_2819| (T@PolymorphicMapType_4935 T@Field_8833_8834) Bool)
(declare-fun |P#everUsed_2819| (T@Field_8833_8834) Bool)
(declare-fun |P#sm| (T@Ref T@Ref) T@Field_12157_12162)
(declare-fun last_1 (T@PolymorphicMapType_4935 T@Ref T@Ref T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_4935)
(declare-fun ZeroMask () T@PolymorphicMapType_4956)
(declare-fun InsidePredicate_4995_4995 (T@Field_2756_8834 T@FrameType T@Field_2756_8834 T@FrameType) Bool)
(declare-fun InsidePredicate_2819_2819 (T@Field_8833_8834 T@FrameType T@Field_8833_8834 T@FrameType) Bool)
(declare-fun IsPredicateField_2756_2757 (T@Field_5008_5009) Bool)
(declare-fun IsWandField_2756_2757 (T@Field_5008_5009) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2756_25375 (T@Field_2756_12162) Bool)
(declare-fun IsWandField_2756_25391 (T@Field_2756_12162) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2756_53 (T@Field_4995_53) Bool)
(declare-fun IsWandField_2756_53 (T@Field_4995_53) Bool)
(declare-fun IsPredicateField_2819_24726 (T@Field_12157_12162) Bool)
(declare-fun IsWandField_2819_24742 (T@Field_12157_12162) Bool)
(declare-fun IsPredicateField_2819_53 (T@Field_8833_53) Bool)
(declare-fun IsWandField_2819_53 (T@Field_8833_53) Bool)
(declare-fun IsPredicateField_2819_2757 (T@Field_8833_2757) Bool)
(declare-fun IsWandField_2819_2757 (T@Field_8833_2757) Bool)
(declare-fun HasDirectPerm_8833_16133 (T@PolymorphicMapType_4956 T@Ref T@Field_12157_12162) Bool)
(declare-fun HasDirectPerm_8833_53 (T@PolymorphicMapType_4956 T@Ref T@Field_8833_53) Bool)
(declare-fun HasDirectPerm_8833_2757 (T@PolymorphicMapType_4956 T@Ref T@Field_8833_2757) Bool)
(declare-fun HasDirectPerm_2756_15193 (T@PolymorphicMapType_4956 T@Ref T@Field_2756_12162) Bool)
(declare-fun HasDirectPerm_2756_53 (T@PolymorphicMapType_4956 T@Ref T@Field_4995_53) Bool)
(declare-fun HasDirectPerm_2756_2757 (T@PolymorphicMapType_4956 T@Ref T@Field_5008_5009) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4956 T@PolymorphicMapType_4956 T@PolymorphicMapType_4956) Bool)
(declare-fun getPredWandId_2819_2820 (T@Field_8833_8834) Int)
(declare-fun |last#frame| (T@FrameType T@Ref T@Ref T@Ref) T@Ref)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4108 (T@FrameType) T@FrameType)
(declare-fun FrameFragment_2757 (T@Ref) T@FrameType)
(declare-fun InsidePredicate_4995_2819 (T@Field_2756_8834 T@FrameType T@Field_8833_8834 T@FrameType) Bool)
(declare-fun InsidePredicate_2819_4995 (T@Field_8833_8834 T@FrameType T@Field_2756_8834 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4935) (Heap1 T@PolymorphicMapType_4935) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4935) (Mask T@PolymorphicMapType_4956) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4935) (ExhaleHeap T@PolymorphicMapType_4935) (Mask@@0 T@PolymorphicMapType_4956) (pm_f_5 T@Field_8833_8834) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8833_8834 Mask@@0 null pm_f_5) (IsPredicateField_2819_2820 pm_f_5)) (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_5008_5009) ) (!  (=> (select (|PolymorphicMapType_5484_2756_2757#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@0) null (PredicateMaskField_2819 pm_f_5))) o2_5 f_23) (= (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@0) o2_5 f_23) (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| ExhaleHeap) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| ExhaleHeap) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_4995_53) ) (!  (=> (select (|PolymorphicMapType_5484_2756_53#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@0) null (PredicateMaskField_2819 pm_f_5))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@0) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_2756_8834) ) (!  (=> (select (|PolymorphicMapType_5484_2756_8834#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@0) null (PredicateMaskField_2819 pm_f_5))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@0) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| ExhaleHeap) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| ExhaleHeap) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_2756_12162) ) (!  (=> (select (|PolymorphicMapType_5484_2756_17649#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@0) null (PredicateMaskField_2819 pm_f_5))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@0) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_8833_2757) ) (!  (=> (select (|PolymorphicMapType_5484_8833_2757#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@0) null (PredicateMaskField_2819 pm_f_5))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@0) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| ExhaleHeap) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| ExhaleHeap) o2_5@@3 f_23@@3))
))) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_8833_53) ) (!  (=> (select (|PolymorphicMapType_5484_8833_53#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@0) null (PredicateMaskField_2819 pm_f_5))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@0) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| ExhaleHeap) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| ExhaleHeap) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_8833_8834) ) (!  (=> (select (|PolymorphicMapType_5484_8833_8834#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@0) null (PredicateMaskField_2819 pm_f_5))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@0) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| ExhaleHeap) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| ExhaleHeap) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_12157_12162) ) (!  (=> (select (|PolymorphicMapType_5484_8833_18499#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@0) null (PredicateMaskField_2819 pm_f_5))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@0) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap) o2_5@@6 f_23@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2819_2820 pm_f_5))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4935) (ExhaleHeap@@0 T@PolymorphicMapType_4935) (Mask@@1 T@PolymorphicMapType_4956) (pm_f_5@@0 T@Field_2756_8834) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2756_8834 Mask@@1 null pm_f_5@@0) (IsPredicateField_2756_16378 pm_f_5@@0)) (and (and (and (and (and (and (and (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_5008_5009) ) (!  (=> (select (|PolymorphicMapType_5484_2756_2757#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@1) null (PredicateMaskField_2756 pm_f_5@@0))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@1) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@7 f_23@@7))
)) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_4995_53) ) (!  (=> (select (|PolymorphicMapType_5484_2756_53#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@1) null (PredicateMaskField_2756 pm_f_5@@0))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@1) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@8 f_23@@8))
))) (forall ((o2_5@@9 T@Ref) (f_23@@9 T@Field_2756_8834) ) (!  (=> (select (|PolymorphicMapType_5484_2756_8834#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@1) null (PredicateMaskField_2756 pm_f_5@@0))) o2_5@@9 f_23@@9) (= (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@1) o2_5@@9 f_23@@9) (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@9 f_23@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@9 f_23@@9))
))) (forall ((o2_5@@10 T@Ref) (f_23@@10 T@Field_2756_12162) ) (!  (=> (select (|PolymorphicMapType_5484_2756_17649#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@1) null (PredicateMaskField_2756 pm_f_5@@0))) o2_5@@10 f_23@@10) (= (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@1) o2_5@@10 f_23@@10) (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@10 f_23@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@10 f_23@@10))
))) (forall ((o2_5@@11 T@Ref) (f_23@@11 T@Field_8833_2757) ) (!  (=> (select (|PolymorphicMapType_5484_8833_2757#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@1) null (PredicateMaskField_2756 pm_f_5@@0))) o2_5@@11 f_23@@11) (= (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@1) o2_5@@11 f_23@@11) (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@11 f_23@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@11 f_23@@11))
))) (forall ((o2_5@@12 T@Ref) (f_23@@12 T@Field_8833_53) ) (!  (=> (select (|PolymorphicMapType_5484_8833_53#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@1) null (PredicateMaskField_2756 pm_f_5@@0))) o2_5@@12 f_23@@12) (= (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@1) o2_5@@12 f_23@@12) (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@12 f_23@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@12 f_23@@12))
))) (forall ((o2_5@@13 T@Ref) (f_23@@13 T@Field_8833_8834) ) (!  (=> (select (|PolymorphicMapType_5484_8833_8834#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@1) null (PredicateMaskField_2756 pm_f_5@@0))) o2_5@@13 f_23@@13) (= (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@1) o2_5@@13 f_23@@13) (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@13 f_23@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@13 f_23@@13))
))) (forall ((o2_5@@14 T@Ref) (f_23@@14 T@Field_12157_12162) ) (!  (=> (select (|PolymorphicMapType_5484_8833_18499#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@1) null (PredicateMaskField_2756 pm_f_5@@0))) o2_5@@14 f_23@@14) (= (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@1) o2_5@@14 f_23@@14) (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@14 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@0) o2_5@@14 f_23@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2756_16378 pm_f_5@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4935) (ExhaleHeap@@1 T@PolymorphicMapType_4935) (Mask@@2 T@PolymorphicMapType_4956) (pm_f_5@@1 T@Field_8833_8834) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8833_8834 Mask@@2 null pm_f_5@@1) (IsWandField_8833_19664 pm_f_5@@1)) (and (and (and (and (and (and (and (forall ((o2_5@@15 T@Ref) (f_23@@15 T@Field_5008_5009) ) (!  (=> (select (|PolymorphicMapType_5484_2756_2757#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@2) null (WandMaskField_8833 pm_f_5@@1))) o2_5@@15 f_23@@15) (= (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@2) o2_5@@15 f_23@@15) (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@15 f_23@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@15 f_23@@15))
)) (forall ((o2_5@@16 T@Ref) (f_23@@16 T@Field_4995_53) ) (!  (=> (select (|PolymorphicMapType_5484_2756_53#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@2) null (WandMaskField_8833 pm_f_5@@1))) o2_5@@16 f_23@@16) (= (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@2) o2_5@@16 f_23@@16) (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@16 f_23@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@16 f_23@@16))
))) (forall ((o2_5@@17 T@Ref) (f_23@@17 T@Field_2756_8834) ) (!  (=> (select (|PolymorphicMapType_5484_2756_8834#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@2) null (WandMaskField_8833 pm_f_5@@1))) o2_5@@17 f_23@@17) (= (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@2) o2_5@@17 f_23@@17) (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@17 f_23@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@17 f_23@@17))
))) (forall ((o2_5@@18 T@Ref) (f_23@@18 T@Field_2756_12162) ) (!  (=> (select (|PolymorphicMapType_5484_2756_17649#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@2) null (WandMaskField_8833 pm_f_5@@1))) o2_5@@18 f_23@@18) (= (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@2) o2_5@@18 f_23@@18) (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@18 f_23@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@18 f_23@@18))
))) (forall ((o2_5@@19 T@Ref) (f_23@@19 T@Field_8833_2757) ) (!  (=> (select (|PolymorphicMapType_5484_8833_2757#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@2) null (WandMaskField_8833 pm_f_5@@1))) o2_5@@19 f_23@@19) (= (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@2) o2_5@@19 f_23@@19) (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@19 f_23@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@19 f_23@@19))
))) (forall ((o2_5@@20 T@Ref) (f_23@@20 T@Field_8833_53) ) (!  (=> (select (|PolymorphicMapType_5484_8833_53#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@2) null (WandMaskField_8833 pm_f_5@@1))) o2_5@@20 f_23@@20) (= (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@2) o2_5@@20 f_23@@20) (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@20 f_23@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@20 f_23@@20))
))) (forall ((o2_5@@21 T@Ref) (f_23@@21 T@Field_8833_8834) ) (!  (=> (select (|PolymorphicMapType_5484_8833_8834#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@2) null (WandMaskField_8833 pm_f_5@@1))) o2_5@@21 f_23@@21) (= (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@2) o2_5@@21 f_23@@21) (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@21 f_23@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@21 f_23@@21))
))) (forall ((o2_5@@22 T@Ref) (f_23@@22 T@Field_12157_12162) ) (!  (=> (select (|PolymorphicMapType_5484_8833_18499#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@2) null (WandMaskField_8833 pm_f_5@@1))) o2_5@@22 f_23@@22) (= (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@2) o2_5@@22 f_23@@22) (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@22 f_23@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@1) o2_5@@22 f_23@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_8833_19664 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4935) (ExhaleHeap@@2 T@PolymorphicMapType_4935) (Mask@@3 T@PolymorphicMapType_4956) (pm_f_5@@2 T@Field_2756_8834) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2756_8834 Mask@@3 null pm_f_5@@2) (IsWandField_2756_19307 pm_f_5@@2)) (and (and (and (and (and (and (and (forall ((o2_5@@23 T@Ref) (f_23@@23 T@Field_5008_5009) ) (!  (=> (select (|PolymorphicMapType_5484_2756_2757#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@3) null (WandMaskField_2756 pm_f_5@@2))) o2_5@@23 f_23@@23) (= (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@3) o2_5@@23 f_23@@23) (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@23 f_23@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@23 f_23@@23))
)) (forall ((o2_5@@24 T@Ref) (f_23@@24 T@Field_4995_53) ) (!  (=> (select (|PolymorphicMapType_5484_2756_53#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@3) null (WandMaskField_2756 pm_f_5@@2))) o2_5@@24 f_23@@24) (= (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@3) o2_5@@24 f_23@@24) (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@24 f_23@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@24 f_23@@24))
))) (forall ((o2_5@@25 T@Ref) (f_23@@25 T@Field_2756_8834) ) (!  (=> (select (|PolymorphicMapType_5484_2756_8834#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@3) null (WandMaskField_2756 pm_f_5@@2))) o2_5@@25 f_23@@25) (= (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@3) o2_5@@25 f_23@@25) (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@25 f_23@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@25 f_23@@25))
))) (forall ((o2_5@@26 T@Ref) (f_23@@26 T@Field_2756_12162) ) (!  (=> (select (|PolymorphicMapType_5484_2756_17649#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@3) null (WandMaskField_2756 pm_f_5@@2))) o2_5@@26 f_23@@26) (= (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@3) o2_5@@26 f_23@@26) (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@26 f_23@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@26 f_23@@26))
))) (forall ((o2_5@@27 T@Ref) (f_23@@27 T@Field_8833_2757) ) (!  (=> (select (|PolymorphicMapType_5484_8833_2757#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@3) null (WandMaskField_2756 pm_f_5@@2))) o2_5@@27 f_23@@27) (= (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@3) o2_5@@27 f_23@@27) (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@27 f_23@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@27 f_23@@27))
))) (forall ((o2_5@@28 T@Ref) (f_23@@28 T@Field_8833_53) ) (!  (=> (select (|PolymorphicMapType_5484_8833_53#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@3) null (WandMaskField_2756 pm_f_5@@2))) o2_5@@28 f_23@@28) (= (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@3) o2_5@@28 f_23@@28) (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@28 f_23@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@28 f_23@@28))
))) (forall ((o2_5@@29 T@Ref) (f_23@@29 T@Field_8833_8834) ) (!  (=> (select (|PolymorphicMapType_5484_8833_8834#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@3) null (WandMaskField_2756 pm_f_5@@2))) o2_5@@29 f_23@@29) (= (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@3) o2_5@@29 f_23@@29) (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@29 f_23@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@29 f_23@@29))
))) (forall ((o2_5@@30 T@Ref) (f_23@@30 T@Field_12157_12162) ) (!  (=> (select (|PolymorphicMapType_5484_8833_18499#PolymorphicMapType_5484| (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@3) null (WandMaskField_2756 pm_f_5@@2))) o2_5@@30 f_23@@30) (= (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@3) o2_5@@30 f_23@@30) (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@30 f_23@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@2) o2_5@@30 f_23@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_2756_19307 pm_f_5@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4935) (Heap1@@0 T@PolymorphicMapType_4935) (Heap2 T@PolymorphicMapType_4935) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4935) (start_1 T@Ref) (end_1 T@Ref) (x T@Ref) ) (! (dummyFunction_2799 (|last#triggerStateless| start_1 end_1 x))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|last'| Heap@@4 start_1 end_1 x))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12157_12162) ) (!  (not (select (|PolymorphicMapType_5484_8833_18499#PolymorphicMapType_5484| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5484_8833_18499#PolymorphicMapType_5484| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8833_8834) ) (!  (not (select (|PolymorphicMapType_5484_8833_8834#PolymorphicMapType_5484| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5484_8833_8834#PolymorphicMapType_5484| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8833_53) ) (!  (not (select (|PolymorphicMapType_5484_8833_53#PolymorphicMapType_5484| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5484_8833_53#PolymorphicMapType_5484| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8833_2757) ) (!  (not (select (|PolymorphicMapType_5484_8833_2757#PolymorphicMapType_5484| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5484_8833_2757#PolymorphicMapType_5484| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_2756_12162) ) (!  (not (select (|PolymorphicMapType_5484_2756_17649#PolymorphicMapType_5484| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5484_2756_17649#PolymorphicMapType_5484| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_2756_8834) ) (!  (not (select (|PolymorphicMapType_5484_2756_8834#PolymorphicMapType_5484| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5484_2756_8834#PolymorphicMapType_5484| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4995_53) ) (!  (not (select (|PolymorphicMapType_5484_2756_53#PolymorphicMapType_5484| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5484_2756_53#PolymorphicMapType_5484| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5008_5009) ) (!  (not (select (|PolymorphicMapType_5484_2756_2757#PolymorphicMapType_5484| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5484_2756_2757#PolymorphicMapType_5484| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((start_1@@0 T@Ref) (end_1@@0 T@Ref) ) (! (IsPredicateField_2819_2820 (P start_1@@0 end_1@@0))
 :qid |stdinbpl.352:15|
 :skolemid |28|
 :pattern ( (P start_1@@0 end_1@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4935) (start_1@@1 T@Ref) (end_1@@1 T@Ref) ) (! (|P#everUsed_2819| (P start_1@@1 end_1@@1))
 :qid |stdinbpl.371:15|
 :skolemid |32|
 :pattern ( (|P#trigger_2819| Heap@@5 (P start_1@@1 end_1@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4935) (ExhaleHeap@@3 T@PolymorphicMapType_4935) (Mask@@4 T@PolymorphicMapType_4956) (pm_f_5@@3 T@Field_8833_8834) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8833_8834 Mask@@4 null pm_f_5@@3) (IsPredicateField_2819_2820 pm_f_5@@3)) (= (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@6) null (PredicateMaskField_2819 pm_f_5@@3)) (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@3) null (PredicateMaskField_2819 pm_f_5@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_2819_2820 pm_f_5@@3) (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@3) null (PredicateMaskField_2819 pm_f_5@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4935) (ExhaleHeap@@4 T@PolymorphicMapType_4935) (Mask@@5 T@PolymorphicMapType_4956) (pm_f_5@@4 T@Field_2756_8834) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_2756_8834 Mask@@5 null pm_f_5@@4) (IsPredicateField_2756_16378 pm_f_5@@4)) (= (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@7) null (PredicateMaskField_2756 pm_f_5@@4)) (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@4) null (PredicateMaskField_2756 pm_f_5@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsPredicateField_2756_16378 pm_f_5@@4) (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@4) null (PredicateMaskField_2756 pm_f_5@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4935) (ExhaleHeap@@5 T@PolymorphicMapType_4935) (Mask@@6 T@PolymorphicMapType_4956) (pm_f_5@@5 T@Field_8833_8834) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8833_8834 Mask@@6 null pm_f_5@@5) (IsWandField_8833_19664 pm_f_5@@5)) (= (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@8) null (WandMaskField_8833 pm_f_5@@5)) (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@5) null (WandMaskField_8833 pm_f_5@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_8833_19664 pm_f_5@@5) (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@5) null (WandMaskField_8833 pm_f_5@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4935) (ExhaleHeap@@6 T@PolymorphicMapType_4935) (Mask@@7 T@PolymorphicMapType_4956) (pm_f_5@@6 T@Field_2756_8834) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_2756_8834 Mask@@7 null pm_f_5@@6) (IsWandField_2756_19307 pm_f_5@@6)) (= (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@9) null (WandMaskField_2756 pm_f_5@@6)) (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@6) null (WandMaskField_2756 pm_f_5@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_2756_19307 pm_f_5@@6) (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@6) null (WandMaskField_2756 pm_f_5@@6)))
)))
(assert (forall ((start_1@@2 T@Ref) (end_1@@2 T@Ref) (start2 T@Ref) (end2 T@Ref) ) (!  (=> (= (P start_1@@2 end_1@@2) (P start2 end2)) (and (= start_1@@2 start2) (= end_1@@2 end2)))
 :qid |stdinbpl.362:15|
 :skolemid |30|
 :pattern ( (P start_1@@2 end_1@@2) (P start2 end2))
)))
(assert (forall ((start_1@@3 T@Ref) (end_1@@3 T@Ref) (start2@@0 T@Ref) (end2@@0 T@Ref) ) (!  (=> (= (|P#sm| start_1@@3 end_1@@3) (|P#sm| start2@@0 end2@@0)) (and (= start_1@@3 start2@@0) (= end_1@@3 end2@@0)))
 :qid |stdinbpl.366:15|
 :skolemid |31|
 :pattern ( (|P#sm| start_1@@3 end_1@@3) (|P#sm| start2@@0 end2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4935) (Mask@@8 T@PolymorphicMapType_4956) (start_1@@4 T@Ref) (end_1@@4 T@Ref) (x@@0 T@Ref) ) (!  (=> (and (state Heap@@10 Mask@@8) (< AssumeFunctionsAbove 0)) (=> (and (not (= start_1@@4 null)) (not (= start_1@@4 end_1@@4))) (= (last_1 Heap@@10 start_1@@4 end_1@@4 x@@0) (ite (not (= (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@10) start_1@@4 next) end_1@@4)) (|last'| Heap@@10 (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@10) start_1@@4 next) end_1@@4 x@@0) null))))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap@@10 Mask@@8) (last_1 Heap@@10 start_1@@4 end_1@@4 x@@0))
 :pattern ( (state Heap@@10 Mask@@8) (|last#triggerStateless| start_1@@4 end_1@@4 x@@0) (|P#trigger_2819| Heap@@10 (P start_1@@4 end_1@@4)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4935) (ExhaleHeap@@7 T@PolymorphicMapType_4935) (Mask@@9 T@PolymorphicMapType_4956) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@11) o_15 $allocated) (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap@@7) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap@@7) o_15 $allocated))
)))
(assert (forall ((p T@Field_2756_8834) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4995_4995 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4995_4995 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8833_8834) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_2819_2819 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2819_2819 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2756_2757 next)))
(assert  (not (IsWandField_2756_2757 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4935) (ExhaleHeap@@8 T@PolymorphicMapType_4935) (Mask@@10 T@PolymorphicMapType_4956) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4956) (o_2@@7 T@Ref) (f_4@@7 T@Field_2756_12162) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2756_25375 f_4@@7))) (not (IsWandField_2756_25391 f_4@@7))) (<= (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4956) (o_2@@8 T@Ref) (f_4@@8 T@Field_4995_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2756_53 f_4@@8))) (not (IsWandField_2756_53 f_4@@8))) (<= (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4956) (o_2@@9 T@Ref) (f_4@@9 T@Field_5008_5009) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| Mask@@13) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2756_2757 f_4@@9))) (not (IsWandField_2756_2757 f_4@@9))) (<= (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| Mask@@13) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| Mask@@13) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4956) (o_2@@10 T@Ref) (f_4@@10 T@Field_2756_8834) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| Mask@@14) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2756_16378 f_4@@10))) (not (IsWandField_2756_19307 f_4@@10))) (<= (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| Mask@@14) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| Mask@@14) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4956) (o_2@@11 T@Ref) (f_4@@11 T@Field_12157_12162) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| Mask@@15) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2819_24726 f_4@@11))) (not (IsWandField_2819_24742 f_4@@11))) (<= (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| Mask@@15) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| Mask@@15) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4956) (o_2@@12 T@Ref) (f_4@@12 T@Field_8833_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| Mask@@16) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2819_53 f_4@@12))) (not (IsWandField_2819_53 f_4@@12))) (<= (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| Mask@@16) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| Mask@@16) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4956) (o_2@@13 T@Ref) (f_4@@13 T@Field_8833_2757) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| Mask@@17) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2819_2757 f_4@@13))) (not (IsWandField_2819_2757 f_4@@13))) (<= (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| Mask@@17) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| Mask@@17) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4956) (o_2@@14 T@Ref) (f_4@@14 T@Field_8833_8834) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| Mask@@18) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2819_2820 f_4@@14))) (not (IsWandField_8833_19664 f_4@@14))) (<= (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| Mask@@18) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| Mask@@18) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4956) (o_2@@15 T@Ref) (f_4@@15 T@Field_12157_12162) ) (! (= (HasDirectPerm_8833_16133 Mask@@19 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| Mask@@19) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8833_16133 Mask@@19 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4956) (o_2@@16 T@Ref) (f_4@@16 T@Field_8833_8834) ) (! (= (HasDirectPerm_8833_8834 Mask@@20 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| Mask@@20) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8833_8834 Mask@@20 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4956) (o_2@@17 T@Ref) (f_4@@17 T@Field_8833_53) ) (! (= (HasDirectPerm_8833_53 Mask@@21 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| Mask@@21) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8833_53 Mask@@21 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4956) (o_2@@18 T@Ref) (f_4@@18 T@Field_8833_2757) ) (! (= (HasDirectPerm_8833_2757 Mask@@22 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| Mask@@22) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8833_2757 Mask@@22 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4956) (o_2@@19 T@Ref) (f_4@@19 T@Field_2756_12162) ) (! (= (HasDirectPerm_2756_15193 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2756_15193 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4956) (o_2@@20 T@Ref) (f_4@@20 T@Field_2756_8834) ) (! (= (HasDirectPerm_2756_8834 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2756_8834 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4956) (o_2@@21 T@Ref) (f_4@@21 T@Field_4995_53) ) (! (= (HasDirectPerm_2756_53 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2756_53 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4956) (o_2@@22 T@Ref) (f_4@@22 T@Field_5008_5009) ) (! (= (HasDirectPerm_2756_2757 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2756_2757 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4935) (ExhaleHeap@@9 T@PolymorphicMapType_4935) (Mask@@27 T@PolymorphicMapType_4956) (o_15@@0 T@Ref) (f_23@@31 T@Field_12157_12162) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_8833_16133 Mask@@27 o_15@@0 f_23@@31) (= (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@13) o_15@@0 f_23@@31) (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@9) o_15@@0 f_23@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| ExhaleHeap@@9) o_15@@0 f_23@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4935) (ExhaleHeap@@10 T@PolymorphicMapType_4935) (Mask@@28 T@PolymorphicMapType_4956) (o_15@@1 T@Ref) (f_23@@32 T@Field_8833_8834) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@28) (=> (HasDirectPerm_8833_8834 Mask@@28 o_15@@1 f_23@@32) (= (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@14) o_15@@1 f_23@@32) (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| ExhaleHeap@@10) o_15@@1 f_23@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@28) (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| ExhaleHeap@@10) o_15@@1 f_23@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4935) (ExhaleHeap@@11 T@PolymorphicMapType_4935) (Mask@@29 T@PolymorphicMapType_4956) (o_15@@2 T@Ref) (f_23@@33 T@Field_8833_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@29) (=> (HasDirectPerm_8833_53 Mask@@29 o_15@@2 f_23@@33) (= (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@15) o_15@@2 f_23@@33) (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| ExhaleHeap@@11) o_15@@2 f_23@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@29) (select (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| ExhaleHeap@@11) o_15@@2 f_23@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4935) (ExhaleHeap@@12 T@PolymorphicMapType_4935) (Mask@@30 T@PolymorphicMapType_4956) (o_15@@3 T@Ref) (f_23@@34 T@Field_8833_2757) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@30) (=> (HasDirectPerm_8833_2757 Mask@@30 o_15@@3 f_23@@34) (= (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@16) o_15@@3 f_23@@34) (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| ExhaleHeap@@12) o_15@@3 f_23@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@30) (select (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| ExhaleHeap@@12) o_15@@3 f_23@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4935) (ExhaleHeap@@13 T@PolymorphicMapType_4935) (Mask@@31 T@PolymorphicMapType_4956) (o_15@@4 T@Ref) (f_23@@35 T@Field_2756_12162) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@31) (=> (HasDirectPerm_2756_15193 Mask@@31 o_15@@4 f_23@@35) (= (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@17) o_15@@4 f_23@@35) (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@13) o_15@@4 f_23@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@31) (select (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| ExhaleHeap@@13) o_15@@4 f_23@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4935) (ExhaleHeap@@14 T@PolymorphicMapType_4935) (Mask@@32 T@PolymorphicMapType_4956) (o_15@@5 T@Ref) (f_23@@36 T@Field_2756_8834) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@32) (=> (HasDirectPerm_2756_8834 Mask@@32 o_15@@5 f_23@@36) (= (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@18) o_15@@5 f_23@@36) (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| ExhaleHeap@@14) o_15@@5 f_23@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@32) (select (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| ExhaleHeap@@14) o_15@@5 f_23@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4935) (ExhaleHeap@@15 T@PolymorphicMapType_4935) (Mask@@33 T@PolymorphicMapType_4956) (o_15@@6 T@Ref) (f_23@@37 T@Field_4995_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@33) (=> (HasDirectPerm_2756_53 Mask@@33 o_15@@6 f_23@@37) (= (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@19) o_15@@6 f_23@@37) (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap@@15) o_15@@6 f_23@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@33) (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| ExhaleHeap@@15) o_15@@6 f_23@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4935) (ExhaleHeap@@16 T@PolymorphicMapType_4935) (Mask@@34 T@PolymorphicMapType_4956) (o_15@@7 T@Ref) (f_23@@38 T@Field_5008_5009) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@34) (=> (HasDirectPerm_2756_2757 Mask@@34 o_15@@7 f_23@@38) (= (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@20) o_15@@7 f_23@@38) (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| ExhaleHeap@@16) o_15@@7 f_23@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@34) (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| ExhaleHeap@@16) o_15@@7 f_23@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_2756_12162) ) (! (= (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_4995_53) ) (! (= (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_5008_5009) ) (! (= (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_2756_8834) ) (! (= (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_12157_12162) ) (! (= (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_8833_53) ) (! (= (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8833_2757) ) (! (= (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8833_8834) ) (! (= (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4956) (SummandMask1 T@PolymorphicMapType_4956) (SummandMask2 T@PolymorphicMapType_4956) (o_2@@31 T@Ref) (f_4@@31 T@Field_2756_12162) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4956) (SummandMask1@@0 T@PolymorphicMapType_4956) (SummandMask2@@0 T@PolymorphicMapType_4956) (o_2@@32 T@Ref) (f_4@@32 T@Field_4995_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4956) (SummandMask1@@1 T@PolymorphicMapType_4956) (SummandMask2@@1 T@PolymorphicMapType_4956) (o_2@@33 T@Ref) (f_4@@33 T@Field_5008_5009) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4956) (SummandMask1@@2 T@PolymorphicMapType_4956) (SummandMask2@@2 T@PolymorphicMapType_4956) (o_2@@34 T@Ref) (f_4@@34 T@Field_2756_8834) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4956) (SummandMask1@@3 T@PolymorphicMapType_4956) (SummandMask2@@3 T@PolymorphicMapType_4956) (o_2@@35 T@Ref) (f_4@@35 T@Field_12157_12162) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4956) (SummandMask1@@4 T@PolymorphicMapType_4956) (SummandMask2@@4 T@PolymorphicMapType_4956) (o_2@@36 T@Ref) (f_4@@36 T@Field_8833_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4956) (SummandMask1@@5 T@PolymorphicMapType_4956) (SummandMask2@@5 T@PolymorphicMapType_4956) (o_2@@37 T@Ref) (f_4@@37 T@Field_8833_2757) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4956) (SummandMask1@@6 T@PolymorphicMapType_4956) (SummandMask2@@6 T@PolymorphicMapType_4956) (o_2@@38 T@Ref) (f_4@@38 T@Field_8833_8834) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4935) (start_1@@5 T@Ref) (end_1@@5 T@Ref) (x@@1 T@Ref) ) (!  (and (= (last_1 Heap@@21 start_1@@5 end_1@@5 x@@1) (|last'| Heap@@21 start_1@@5 end_1@@5 x@@1)) (dummyFunction_2799 (|last#triggerStateless| start_1@@5 end_1@@5 x@@1)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (last_1 Heap@@21 start_1@@5 end_1@@5 x@@1))
)))
(assert (forall ((start_1@@6 T@Ref) (end_1@@6 T@Ref) ) (! (= (getPredWandId_2819_2820 (P start_1@@6 end_1@@6)) 0)
 :qid |stdinbpl.356:15|
 :skolemid |29|
 :pattern ( (P start_1@@6 end_1@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4935) (Mask@@35 T@PolymorphicMapType_4956) (start_1@@7 T@Ref) (end_1@@7 T@Ref) (x@@2 T@Ref) ) (!  (=> (state Heap@@22 Mask@@35) (= (|last'| Heap@@22 start_1@@7 end_1@@7 x@@2) (|last#frame| (CombineFrames (select (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@22) null (P start_1@@7 end_1@@7)) (FrameFragment_4108 (ite (not (= x@@2 null)) (FrameFragment_2757 (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@22) x@@2 next)) EmptyFrame))) start_1@@7 end_1@@7 x@@2)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@22 Mask@@35) (|last'| Heap@@22 start_1@@7 end_1@@7 x@@2))
 :pattern ( (state Heap@@22 Mask@@35) (|last#triggerStateless| start_1@@7 end_1@@7 x@@2) (|P#trigger_2819| Heap@@22 (P start_1@@7 end_1@@7)))
)))
(assert (forall ((start_1@@8 T@Ref) (end_1@@8 T@Ref) ) (! (= (PredicateMaskField_2819 (P start_1@@8 end_1@@8)) (|P#sm| start_1@@8 end_1@@8))
 :qid |stdinbpl.348:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_2819 (P start_1@@8 end_1@@8)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4935) (o_14 T@Ref) (f_24 T@Field_12157_12162) (v T@PolymorphicMapType_5484) ) (! (succHeap Heap@@23 (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@23) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@23) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@23) (store (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@23) o_14 f_24 v) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@23) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@23) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@23) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@23) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@23) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@23) (store (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@23) o_14 f_24 v) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@23) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@23) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@23) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4935) (o_14@@0 T@Ref) (f_24@@0 T@Field_8833_8834) (v@@0 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@24) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@24) (store (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@24) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@24) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@24) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@24) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@24) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@24) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@24) (store (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@24) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@24) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@24) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@24) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@24) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4935) (o_14@@1 T@Ref) (f_24@@1 T@Field_8833_2757) (v@@1 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@25) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@25) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@25) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@25) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@25) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@25) (store (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@25) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@25) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@25) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@25) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@25) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@25) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@25) (store (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@25) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4935) (o_14@@2 T@Ref) (f_24@@2 T@Field_8833_53) (v@@2 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@26) (store (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@26) o_14@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@26) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@26) (store (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@26) o_14@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4935) (o_14@@3 T@Ref) (f_24@@3 T@Field_2756_12162) (v@@3 T@PolymorphicMapType_5484) ) (! (succHeap Heap@@27 (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@27) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@27) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@27) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@27) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@27) (store (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@27) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@27) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@27) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@27) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@27) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@27) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@27) (store (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@27) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@27) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4935) (o_14@@4 T@Ref) (f_24@@4 T@Field_2756_8834) (v@@4 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@28) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@28) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@28) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@28) (store (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@28) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@28) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@28) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@28) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@28) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@28) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@28) (store (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@28) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@28) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@28) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4935) (o_14@@5 T@Ref) (f_24@@5 T@Field_5008_5009) (v@@5 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@29) (store (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@29) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@29) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@29) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@29) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@29) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@29) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4935 (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@29) (store (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@29) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@29) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@29) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@29) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@29) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@29) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4935) (o_14@@6 T@Ref) (f_24@@6 T@Field_4995_53) (v@@6 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_4935 (store (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@30) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4935 (store (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@30) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_2819_2820#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_2824_12254#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_2756_8834#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_2756_15235#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_8833_2757#PolymorphicMapType_4935| Heap@@30) (|PolymorphicMapType_4935_8833_53#PolymorphicMapType_4935| Heap@@30)))
)))
(assert (forall ((o_14@@7 T@Ref) (f_22 T@Field_5008_5009) (Heap@@31 T@PolymorphicMapType_4935) ) (!  (=> (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@31) o_14@@7 $allocated) (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@31) (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@31) o_14@@7 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@31) o_14@@7 f_22))
)))
(assert (forall ((p@@2 T@Field_2756_8834) (v_1@@1 T@FrameType) (q T@Field_2756_8834) (w@@1 T@FrameType) (r T@Field_2756_8834) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4995_4995 p@@2 v_1@@1 q w@@1) (InsidePredicate_4995_4995 q w@@1 r u)) (InsidePredicate_4995_4995 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4995_4995 p@@2 v_1@@1 q w@@1) (InsidePredicate_4995_4995 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_2756_8834) (v_1@@2 T@FrameType) (q@@0 T@Field_2756_8834) (w@@2 T@FrameType) (r@@0 T@Field_8833_8834) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_4995_4995 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_4995_2819 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_4995_2819 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4995_4995 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_4995_2819 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_2756_8834) (v_1@@3 T@FrameType) (q@@1 T@Field_8833_8834) (w@@3 T@FrameType) (r@@1 T@Field_2756_8834) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_4995_2819 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_2819_4995 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_4995_4995 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4995_2819 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_2819_4995 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_2756_8834) (v_1@@4 T@FrameType) (q@@2 T@Field_8833_8834) (w@@4 T@FrameType) (r@@2 T@Field_8833_8834) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_4995_2819 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_2819_2819 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_4995_2819 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4995_2819 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_2819_2819 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8833_8834) (v_1@@5 T@FrameType) (q@@3 T@Field_2756_8834) (w@@5 T@FrameType) (r@@3 T@Field_2756_8834) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_2819_4995 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_4995_4995 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_2819_4995 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2819_4995 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_4995_4995 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8833_8834) (v_1@@6 T@FrameType) (q@@4 T@Field_2756_8834) (w@@6 T@FrameType) (r@@4 T@Field_8833_8834) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_2819_4995 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_4995_2819 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_2819_2819 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2819_4995 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_4995_2819 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8833_8834) (v_1@@7 T@FrameType) (q@@5 T@Field_8833_8834) (w@@7 T@FrameType) (r@@5 T@Field_2756_8834) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_2819_2819 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_2819_4995 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_2819_4995 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2819_2819 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_2819_4995 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8833_8834) (v_1@@8 T@FrameType) (q@@6 T@Field_8833_8834) (w@@8 T@FrameType) (r@@6 T@Field_8833_8834) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_2819_2819 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_2819_2819 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_2819_2819 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2819_2819 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_2819_2819 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_4935)
(declare-fun start_1@@9 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_4956)
(declare-fun Mask@1 () T@PolymorphicMapType_4956)
(declare-fun end_1@@9 () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_4956)
(set-info :boogie-vc-id |P#definedness|)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon4_correct true))
(let ((anon6_Else_correct  (=> (not (= (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@32) start_1@@9 next) null)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_2756_2757 Mask@0 start_1@@9 next)) (=> (HasDirectPerm_2756_2757 Mask@0 start_1@@9 next) (=> (and (and (= Mask@1 (PolymorphicMapType_4956 (store (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| Mask@0) null (P (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@32) start_1@@9 next) end_1@@9) (+ (select (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| Mask@0) null (P (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@32) start_1@@9 next) end_1@@9)) FullPerm)) (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| Mask@0) (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| Mask@0) (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| Mask@0) (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| Mask@0) (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| Mask@0) (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| Mask@0) (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| Mask@0))) (state Heap@@32 Mask@1)) (and (= Mask@2 Mask@1) (= (ControlFlow 0 4) 1))) anon4_correct))))))
(let ((anon6_Then_correct  (=> (and (and (= (select (|PolymorphicMapType_4935_2631_2632#PolymorphicMapType_4935| Heap@@32) start_1@@9 next) null) (= end_1@@9 null)) (and (= Mask@2 Mask@0) (= (ControlFlow 0 3) 1))) anon4_correct)))
(let ((anon5_Then_correct  (=> (and (and (not (= start_1@@9 end_1@@9)) (not (= start_1@@9 null))) (and (= Mask@0 (PolymorphicMapType_4956 (|PolymorphicMapType_4956_2819_2820#PolymorphicMapType_4956| ZeroMask) (store (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| ZeroMask) start_1@@9 next (+ (select (|PolymorphicMapType_4956_2756_2757#PolymorphicMapType_4956| ZeroMask) start_1@@9 next) FullPerm)) (|PolymorphicMapType_4956_2819_2757#PolymorphicMapType_4956| ZeroMask) (|PolymorphicMapType_4956_2819_53#PolymorphicMapType_4956| ZeroMask) (|PolymorphicMapType_4956_2819_23220#PolymorphicMapType_4956| ZeroMask) (|PolymorphicMapType_4956_2756_2820#PolymorphicMapType_4956| ZeroMask) (|PolymorphicMapType_4956_2756_53#PolymorphicMapType_4956| ZeroMask) (|PolymorphicMapType_4956_2756_23551#PolymorphicMapType_4956| ZeroMask))) (state Heap@@32 Mask@0))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_2756_2757 Mask@0 start_1@@9 next)) (=> (HasDirectPerm_2756_2757 Mask@0 start_1@@9 next) (and (=> (= (ControlFlow 0 6) 3) anon6_Then_correct) (=> (= (ControlFlow 0 6) 4) anon6_Else_correct)))))))
(let ((anon5_Else_correct  (=> (= start_1@@9 end_1@@9) (=> (and (= Mask@2 ZeroMask) (= (ControlFlow 0 2) 1)) anon4_correct))))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@32) start_1@@9 $allocated) (select (|PolymorphicMapType_4935_2628_53#PolymorphicMapType_4935| Heap@@32) end_1@@9 $allocated))) (and (=> (= (ControlFlow 0 8) 6) anon5_Then_correct) (=> (= (ControlFlow 0 8) 2) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
