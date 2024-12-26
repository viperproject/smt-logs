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
(declare-sort T@Field_3411_53 0)
(declare-sort T@Field_3424_3425 0)
(declare-sort T@Field_6743_6744 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3411_6744 0)
(declare-sort T@Field_3411_6761 0)
(declare-sort T@Field_6743_53 0)
(declare-sort T@Field_6743_3425 0)
(declare-sort T@Field_6756_6761 0)
(declare-datatypes ((T@PolymorphicMapType_3372 0)) (((PolymorphicMapType_3372 (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| (Array T@Ref T@Field_6743_6744 Real)) (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| (Array T@Ref T@Field_6743_53 Real)) (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| (Array T@Ref T@Field_6743_3425 Real)) (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| (Array T@Ref T@Field_6756_6761 Real)) (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| (Array T@Ref T@Field_3411_6744 Real)) (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| (Array T@Ref T@Field_3411_53 Real)) (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| (Array T@Ref T@Field_3424_3425 Real)) (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| (Array T@Ref T@Field_3411_6761 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3900 0)) (((PolymorphicMapType_3900 (|PolymorphicMapType_3900_3411_53#PolymorphicMapType_3900| (Array T@Ref T@Field_3411_53 Bool)) (|PolymorphicMapType_3900_3411_3425#PolymorphicMapType_3900| (Array T@Ref T@Field_3424_3425 Bool)) (|PolymorphicMapType_3900_3411_6744#PolymorphicMapType_3900| (Array T@Ref T@Field_3411_6744 Bool)) (|PolymorphicMapType_3900_3411_12348#PolymorphicMapType_3900| (Array T@Ref T@Field_3411_6761 Bool)) (|PolymorphicMapType_3900_6743_53#PolymorphicMapType_3900| (Array T@Ref T@Field_6743_53 Bool)) (|PolymorphicMapType_3900_6743_3425#PolymorphicMapType_3900| (Array T@Ref T@Field_6743_3425 Bool)) (|PolymorphicMapType_3900_6743_6744#PolymorphicMapType_3900| (Array T@Ref T@Field_6743_6744 Bool)) (|PolymorphicMapType_3900_6743_13198#PolymorphicMapType_3900| (Array T@Ref T@Field_6756_6761 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3351 0)) (((PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| (Array T@Ref T@Field_3411_53 Bool)) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| (Array T@Ref T@Field_3424_3425 T@Ref)) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| (Array T@Ref T@Field_6743_6744 T@FrameType)) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| (Array T@Ref T@Field_3411_6744 T@FrameType)) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| (Array T@Ref T@Field_3411_6761 T@PolymorphicMapType_3900)) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| (Array T@Ref T@Field_6743_53 Bool)) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| (Array T@Ref T@Field_6743_3425 T@Ref)) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| (Array T@Ref T@Field_6756_6761 T@PolymorphicMapType_3900)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3351 T@PolymorphicMapType_3351) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3351 T@PolymorphicMapType_3351) Bool)
(declare-fun state (T@PolymorphicMapType_3351 T@PolymorphicMapType_3372) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3372) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3351 T@PolymorphicMapType_3351 T@PolymorphicMapType_3372) Bool)
(declare-fun IsPredicateField_1954_1955 (T@Field_6743_6744) Bool)
(declare-fun HasDirectPerm_6743_6744 (T@PolymorphicMapType_3372 T@Ref T@Field_6743_6744) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_1954 (T@Field_6743_6744) T@Field_6756_6761)
(declare-fun IsPredicateField_3411_11062 (T@Field_3411_6744) Bool)
(declare-fun HasDirectPerm_3411_6744 (T@PolymorphicMapType_3372 T@Ref T@Field_3411_6744) Bool)
(declare-fun PredicateMaskField_3411 (T@Field_3411_6744) T@Field_3411_6761)
(declare-fun IsWandField_6743_14363 (T@Field_6743_6744) Bool)
(declare-fun WandMaskField_6743 (T@Field_6743_6744) T@Field_6756_6761)
(declare-fun IsWandField_3411_14006 (T@Field_3411_6744) Bool)
(declare-fun WandMaskField_3411 (T@Field_3411_6744) T@Field_3411_6761)
(declare-fun ZeroPMask () T@PolymorphicMapType_3900)
(declare-fun p_14 (T@Ref) T@Field_6743_6744)
(declare-fun |p#trigger_1954| (T@PolymorphicMapType_3351 T@Field_6743_6744) Bool)
(declare-fun |p#everUsed_1954| (T@Field_6743_6744) Bool)
(declare-fun |p#sm| (T@Ref) T@Field_6756_6761)
(declare-fun dummyHeap () T@PolymorphicMapType_3351)
(declare-fun ZeroMask () T@PolymorphicMapType_3372)
(declare-fun $allocated () T@Field_3411_53)
(declare-fun InsidePredicate_6743_6743 (T@Field_6743_6744 T@FrameType T@Field_6743_6744 T@FrameType) Bool)
(declare-fun InsidePredicate_3411_3411 (T@Field_3411_6744 T@FrameType T@Field_3411_6744 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3411_20103 (T@Field_3411_6761) Bool)
(declare-fun IsWandField_3411_20119 (T@Field_3411_6761) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3411_3425 (T@Field_3424_3425) Bool)
(declare-fun IsWandField_3411_3425 (T@Field_3424_3425) Bool)
(declare-fun IsPredicateField_3411_53 (T@Field_3411_53) Bool)
(declare-fun IsWandField_3411_53 (T@Field_3411_53) Bool)
(declare-fun IsPredicateField_1954_19440 (T@Field_6756_6761) Bool)
(declare-fun IsWandField_1954_19456 (T@Field_6756_6761) Bool)
(declare-fun IsPredicateField_1954_3425 (T@Field_6743_3425) Bool)
(declare-fun IsWandField_1954_3425 (T@Field_6743_3425) Bool)
(declare-fun IsPredicateField_1954_53 (T@Field_6743_53) Bool)
(declare-fun IsWandField_1954_53 (T@Field_6743_53) Bool)
(declare-fun HasDirectPerm_6743_10774 (T@PolymorphicMapType_3372 T@Ref T@Field_6756_6761) Bool)
(declare-fun HasDirectPerm_6743_3425 (T@PolymorphicMapType_3372 T@Ref T@Field_6743_3425) Bool)
(declare-fun HasDirectPerm_6743_53 (T@PolymorphicMapType_3372 T@Ref T@Field_6743_53) Bool)
(declare-fun HasDirectPerm_3411_9834 (T@PolymorphicMapType_3372 T@Ref T@Field_3411_6761) Bool)
(declare-fun HasDirectPerm_3411_3425 (T@PolymorphicMapType_3372 T@Ref T@Field_3424_3425) Bool)
(declare-fun HasDirectPerm_3411_53 (T@PolymorphicMapType_3372 T@Ref T@Field_3411_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3372 T@PolymorphicMapType_3372 T@PolymorphicMapType_3372) Bool)
(declare-fun getPredWandId_1954_1955 (T@Field_6743_6744) Int)
(declare-fun InsidePredicate_6743_3411 (T@Field_6743_6744 T@FrameType T@Field_3411_6744 T@FrameType) Bool)
(declare-fun InsidePredicate_3411_6743 (T@Field_3411_6744 T@FrameType T@Field_6743_6744 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3351) (Heap1 T@PolymorphicMapType_3351) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3351) (Mask T@PolymorphicMapType_3372) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3351) (ExhaleHeap T@PolymorphicMapType_3351) (Mask@@0 T@PolymorphicMapType_3372) (pm_f_2 T@Field_6743_6744) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6743_6744 Mask@@0 null pm_f_2) (IsPredicateField_1954_1955 pm_f_2)) (and (and (and (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_3411_53) ) (!  (=> (select (|PolymorphicMapType_3900_3411_53#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@0) null (PredicateMaskField_1954 pm_f_2))) o2_2 f_9) (= (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@0) o2_2 f_9) (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_3424_3425) ) (!  (=> (select (|PolymorphicMapType_3900_3411_3425#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@0) null (PredicateMaskField_1954 pm_f_2))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@0) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| ExhaleHeap) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| ExhaleHeap) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_3411_6744) ) (!  (=> (select (|PolymorphicMapType_3900_3411_6744#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@0) null (PredicateMaskField_1954 pm_f_2))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@0) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| ExhaleHeap) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| ExhaleHeap) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_3411_6761) ) (!  (=> (select (|PolymorphicMapType_3900_3411_12348#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@0) null (PredicateMaskField_1954 pm_f_2))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@0) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_6743_53) ) (!  (=> (select (|PolymorphicMapType_3900_6743_53#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@0) null (PredicateMaskField_1954 pm_f_2))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@0) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| ExhaleHeap) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| ExhaleHeap) o2_2@@3 f_9@@3))
))) (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_6743_3425) ) (!  (=> (select (|PolymorphicMapType_3900_6743_3425#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@0) null (PredicateMaskField_1954 pm_f_2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@0) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| ExhaleHeap) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| ExhaleHeap) o2_2@@4 f_9@@4))
))) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_6743_6744) ) (!  (=> (select (|PolymorphicMapType_3900_6743_6744#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@0) null (PredicateMaskField_1954 pm_f_2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@0) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| ExhaleHeap) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| ExhaleHeap) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_6756_6761) ) (!  (=> (select (|PolymorphicMapType_3900_6743_13198#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@0) null (PredicateMaskField_1954 pm_f_2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@0) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap) o2_2@@6 f_9@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_1954_1955 pm_f_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3351) (ExhaleHeap@@0 T@PolymorphicMapType_3351) (Mask@@1 T@PolymorphicMapType_3372) (pm_f_2@@0 T@Field_3411_6744) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3411_6744 Mask@@1 null pm_f_2@@0) (IsPredicateField_3411_11062 pm_f_2@@0)) (and (and (and (and (and (and (and (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_3411_53) ) (!  (=> (select (|PolymorphicMapType_3900_3411_53#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@1) null (PredicateMaskField_3411 pm_f_2@@0))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@1) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@7 f_9@@7))
)) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_3424_3425) ) (!  (=> (select (|PolymorphicMapType_3900_3411_3425#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@1) null (PredicateMaskField_3411 pm_f_2@@0))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@1) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@8 f_9@@8))
))) (forall ((o2_2@@9 T@Ref) (f_9@@9 T@Field_3411_6744) ) (!  (=> (select (|PolymorphicMapType_3900_3411_6744#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@1) null (PredicateMaskField_3411 pm_f_2@@0))) o2_2@@9 f_9@@9) (= (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@1) o2_2@@9 f_9@@9) (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@9 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@9 f_9@@9))
))) (forall ((o2_2@@10 T@Ref) (f_9@@10 T@Field_3411_6761) ) (!  (=> (select (|PolymorphicMapType_3900_3411_12348#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@1) null (PredicateMaskField_3411 pm_f_2@@0))) o2_2@@10 f_9@@10) (= (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@1) o2_2@@10 f_9@@10) (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@10 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@10 f_9@@10))
))) (forall ((o2_2@@11 T@Ref) (f_9@@11 T@Field_6743_53) ) (!  (=> (select (|PolymorphicMapType_3900_6743_53#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@1) null (PredicateMaskField_3411 pm_f_2@@0))) o2_2@@11 f_9@@11) (= (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@1) o2_2@@11 f_9@@11) (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@11 f_9@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@11 f_9@@11))
))) (forall ((o2_2@@12 T@Ref) (f_9@@12 T@Field_6743_3425) ) (!  (=> (select (|PolymorphicMapType_3900_6743_3425#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@1) null (PredicateMaskField_3411 pm_f_2@@0))) o2_2@@12 f_9@@12) (= (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@1) o2_2@@12 f_9@@12) (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@12 f_9@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@12 f_9@@12))
))) (forall ((o2_2@@13 T@Ref) (f_9@@13 T@Field_6743_6744) ) (!  (=> (select (|PolymorphicMapType_3900_6743_6744#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@1) null (PredicateMaskField_3411 pm_f_2@@0))) o2_2@@13 f_9@@13) (= (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@1) o2_2@@13 f_9@@13) (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@13 f_9@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@13 f_9@@13))
))) (forall ((o2_2@@14 T@Ref) (f_9@@14 T@Field_6756_6761) ) (!  (=> (select (|PolymorphicMapType_3900_6743_13198#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@1) null (PredicateMaskField_3411 pm_f_2@@0))) o2_2@@14 f_9@@14) (= (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@1) o2_2@@14 f_9@@14) (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@14 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@0) o2_2@@14 f_9@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3411_11062 pm_f_2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3351) (ExhaleHeap@@1 T@PolymorphicMapType_3351) (Mask@@2 T@PolymorphicMapType_3372) (pm_f_2@@1 T@Field_6743_6744) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6743_6744 Mask@@2 null pm_f_2@@1) (IsWandField_6743_14363 pm_f_2@@1)) (and (and (and (and (and (and (and (forall ((o2_2@@15 T@Ref) (f_9@@15 T@Field_3411_53) ) (!  (=> (select (|PolymorphicMapType_3900_3411_53#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@2) null (WandMaskField_6743 pm_f_2@@1))) o2_2@@15 f_9@@15) (= (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@2) o2_2@@15 f_9@@15) (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@15 f_9@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@15 f_9@@15))
)) (forall ((o2_2@@16 T@Ref) (f_9@@16 T@Field_3424_3425) ) (!  (=> (select (|PolymorphicMapType_3900_3411_3425#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@2) null (WandMaskField_6743 pm_f_2@@1))) o2_2@@16 f_9@@16) (= (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@2) o2_2@@16 f_9@@16) (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@16 f_9@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@16 f_9@@16))
))) (forall ((o2_2@@17 T@Ref) (f_9@@17 T@Field_3411_6744) ) (!  (=> (select (|PolymorphicMapType_3900_3411_6744#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@2) null (WandMaskField_6743 pm_f_2@@1))) o2_2@@17 f_9@@17) (= (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@2) o2_2@@17 f_9@@17) (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@17 f_9@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@17 f_9@@17))
))) (forall ((o2_2@@18 T@Ref) (f_9@@18 T@Field_3411_6761) ) (!  (=> (select (|PolymorphicMapType_3900_3411_12348#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@2) null (WandMaskField_6743 pm_f_2@@1))) o2_2@@18 f_9@@18) (= (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@2) o2_2@@18 f_9@@18) (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@18 f_9@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@18 f_9@@18))
))) (forall ((o2_2@@19 T@Ref) (f_9@@19 T@Field_6743_53) ) (!  (=> (select (|PolymorphicMapType_3900_6743_53#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@2) null (WandMaskField_6743 pm_f_2@@1))) o2_2@@19 f_9@@19) (= (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@2) o2_2@@19 f_9@@19) (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@19 f_9@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@19 f_9@@19))
))) (forall ((o2_2@@20 T@Ref) (f_9@@20 T@Field_6743_3425) ) (!  (=> (select (|PolymorphicMapType_3900_6743_3425#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@2) null (WandMaskField_6743 pm_f_2@@1))) o2_2@@20 f_9@@20) (= (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@2) o2_2@@20 f_9@@20) (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@20 f_9@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@20 f_9@@20))
))) (forall ((o2_2@@21 T@Ref) (f_9@@21 T@Field_6743_6744) ) (!  (=> (select (|PolymorphicMapType_3900_6743_6744#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@2) null (WandMaskField_6743 pm_f_2@@1))) o2_2@@21 f_9@@21) (= (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@2) o2_2@@21 f_9@@21) (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@21 f_9@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@21 f_9@@21))
))) (forall ((o2_2@@22 T@Ref) (f_9@@22 T@Field_6756_6761) ) (!  (=> (select (|PolymorphicMapType_3900_6743_13198#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@2) null (WandMaskField_6743 pm_f_2@@1))) o2_2@@22 f_9@@22) (= (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@2) o2_2@@22 f_9@@22) (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@22 f_9@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@1) o2_2@@22 f_9@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_6743_14363 pm_f_2@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3351) (ExhaleHeap@@2 T@PolymorphicMapType_3351) (Mask@@3 T@PolymorphicMapType_3372) (pm_f_2@@2 T@Field_3411_6744) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3411_6744 Mask@@3 null pm_f_2@@2) (IsWandField_3411_14006 pm_f_2@@2)) (and (and (and (and (and (and (and (forall ((o2_2@@23 T@Ref) (f_9@@23 T@Field_3411_53) ) (!  (=> (select (|PolymorphicMapType_3900_3411_53#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@3) null (WandMaskField_3411 pm_f_2@@2))) o2_2@@23 f_9@@23) (= (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@3) o2_2@@23 f_9@@23) (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@23 f_9@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@23 f_9@@23))
)) (forall ((o2_2@@24 T@Ref) (f_9@@24 T@Field_3424_3425) ) (!  (=> (select (|PolymorphicMapType_3900_3411_3425#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@3) null (WandMaskField_3411 pm_f_2@@2))) o2_2@@24 f_9@@24) (= (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@3) o2_2@@24 f_9@@24) (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@24 f_9@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@24 f_9@@24))
))) (forall ((o2_2@@25 T@Ref) (f_9@@25 T@Field_3411_6744) ) (!  (=> (select (|PolymorphicMapType_3900_3411_6744#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@3) null (WandMaskField_3411 pm_f_2@@2))) o2_2@@25 f_9@@25) (= (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@3) o2_2@@25 f_9@@25) (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@25 f_9@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@25 f_9@@25))
))) (forall ((o2_2@@26 T@Ref) (f_9@@26 T@Field_3411_6761) ) (!  (=> (select (|PolymorphicMapType_3900_3411_12348#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@3) null (WandMaskField_3411 pm_f_2@@2))) o2_2@@26 f_9@@26) (= (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@3) o2_2@@26 f_9@@26) (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@26 f_9@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@26 f_9@@26))
))) (forall ((o2_2@@27 T@Ref) (f_9@@27 T@Field_6743_53) ) (!  (=> (select (|PolymorphicMapType_3900_6743_53#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@3) null (WandMaskField_3411 pm_f_2@@2))) o2_2@@27 f_9@@27) (= (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@3) o2_2@@27 f_9@@27) (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@27 f_9@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@27 f_9@@27))
))) (forall ((o2_2@@28 T@Ref) (f_9@@28 T@Field_6743_3425) ) (!  (=> (select (|PolymorphicMapType_3900_6743_3425#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@3) null (WandMaskField_3411 pm_f_2@@2))) o2_2@@28 f_9@@28) (= (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@3) o2_2@@28 f_9@@28) (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@28 f_9@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@28 f_9@@28))
))) (forall ((o2_2@@29 T@Ref) (f_9@@29 T@Field_6743_6744) ) (!  (=> (select (|PolymorphicMapType_3900_6743_6744#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@3) null (WandMaskField_3411 pm_f_2@@2))) o2_2@@29 f_9@@29) (= (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@3) o2_2@@29 f_9@@29) (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@29 f_9@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@29 f_9@@29))
))) (forall ((o2_2@@30 T@Ref) (f_9@@30 T@Field_6756_6761) ) (!  (=> (select (|PolymorphicMapType_3900_6743_13198#PolymorphicMapType_3900| (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@3) null (WandMaskField_3411 pm_f_2@@2))) o2_2@@30 f_9@@30) (= (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@3) o2_2@@30 f_9@@30) (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@30 f_9@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@2) o2_2@@30 f_9@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3411_14006 pm_f_2@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3351) (Heap1@@0 T@PolymorphicMapType_3351) (Heap2 T@PolymorphicMapType_3351) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6756_6761) ) (!  (not (select (|PolymorphicMapType_3900_6743_13198#PolymorphicMapType_3900| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3900_6743_13198#PolymorphicMapType_3900| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6743_6744) ) (!  (not (select (|PolymorphicMapType_3900_6743_6744#PolymorphicMapType_3900| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3900_6743_6744#PolymorphicMapType_3900| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6743_3425) ) (!  (not (select (|PolymorphicMapType_3900_6743_3425#PolymorphicMapType_3900| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3900_6743_3425#PolymorphicMapType_3900| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6743_53) ) (!  (not (select (|PolymorphicMapType_3900_6743_53#PolymorphicMapType_3900| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3900_6743_53#PolymorphicMapType_3900| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3411_6761) ) (!  (not (select (|PolymorphicMapType_3900_3411_12348#PolymorphicMapType_3900| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3900_3411_12348#PolymorphicMapType_3900| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3411_6744) ) (!  (not (select (|PolymorphicMapType_3900_3411_6744#PolymorphicMapType_3900| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3900_3411_6744#PolymorphicMapType_3900| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3424_3425) ) (!  (not (select (|PolymorphicMapType_3900_3411_3425#PolymorphicMapType_3900| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3900_3411_3425#PolymorphicMapType_3900| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_3411_53) ) (!  (not (select (|PolymorphicMapType_3900_3411_53#PolymorphicMapType_3900| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3900_3411_53#PolymorphicMapType_3900| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((r_1 T@Ref) ) (! (IsPredicateField_1954_1955 (p_14 r_1))
 :qid |stdinbpl.202:15|
 :skolemid |23|
 :pattern ( (p_14 r_1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3351) (r_1@@0 T@Ref) ) (! (|p#everUsed_1954| (p_14 r_1@@0))
 :qid |stdinbpl.221:15|
 :skolemid |27|
 :pattern ( (|p#trigger_1954| Heap@@4 (p_14 r_1@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3351) (ExhaleHeap@@3 T@PolymorphicMapType_3351) (Mask@@4 T@PolymorphicMapType_3372) (pm_f_2@@3 T@Field_6743_6744) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6743_6744 Mask@@4 null pm_f_2@@3) (IsPredicateField_1954_1955 pm_f_2@@3)) (= (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@5) null (PredicateMaskField_1954 pm_f_2@@3)) (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@3) null (PredicateMaskField_1954 pm_f_2@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_1954_1955 pm_f_2@@3) (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@3) null (PredicateMaskField_1954 pm_f_2@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3351) (ExhaleHeap@@4 T@PolymorphicMapType_3351) (Mask@@5 T@PolymorphicMapType_3372) (pm_f_2@@4 T@Field_3411_6744) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3411_6744 Mask@@5 null pm_f_2@@4) (IsPredicateField_3411_11062 pm_f_2@@4)) (= (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@6) null (PredicateMaskField_3411 pm_f_2@@4)) (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@4) null (PredicateMaskField_3411 pm_f_2@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3411_11062 pm_f_2@@4) (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@4) null (PredicateMaskField_3411 pm_f_2@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3351) (ExhaleHeap@@5 T@PolymorphicMapType_3351) (Mask@@6 T@PolymorphicMapType_3372) (pm_f_2@@5 T@Field_6743_6744) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6743_6744 Mask@@6 null pm_f_2@@5) (IsWandField_6743_14363 pm_f_2@@5)) (= (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@7) null (WandMaskField_6743 pm_f_2@@5)) (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@5) null (WandMaskField_6743 pm_f_2@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_6743_14363 pm_f_2@@5) (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@5) null (WandMaskField_6743 pm_f_2@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3351) (ExhaleHeap@@6 T@PolymorphicMapType_3351) (Mask@@7 T@PolymorphicMapType_3372) (pm_f_2@@6 T@Field_3411_6744) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3411_6744 Mask@@7 null pm_f_2@@6) (IsWandField_3411_14006 pm_f_2@@6)) (= (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@8) null (WandMaskField_3411 pm_f_2@@6)) (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@6) null (WandMaskField_3411 pm_f_2@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_3411_14006 pm_f_2@@6) (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@6) null (WandMaskField_3411 pm_f_2@@6)))
)))
(assert (forall ((r_1@@1 T@Ref) (r2 T@Ref) ) (!  (=> (= (p_14 r_1@@1) (p_14 r2)) (= r_1@@1 r2))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (p_14 r_1@@1) (p_14 r2))
)))
(assert (forall ((r_1@@2 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|p#sm| r_1@@2) (|p#sm| r2@@0)) (= r_1@@2 r2@@0))
 :qid |stdinbpl.216:15|
 :skolemid |26|
 :pattern ( (|p#sm| r_1@@2) (|p#sm| r2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3351) (ExhaleHeap@@7 T@PolymorphicMapType_3351) (Mask@@8 T@PolymorphicMapType_3372) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@9) o_6 $allocated) (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap@@7) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap@@7) o_6 $allocated))
)))
(assert (forall ((p T@Field_6743_6744) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6743_6743 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6743_6743 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3411_6744) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3411_3411 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3411_3411 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3351) (ExhaleHeap@@8 T@PolymorphicMapType_3351) (Mask@@9 T@PolymorphicMapType_3372) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3372) (o_2@@7 T@Ref) (f_4@@7 T@Field_3411_6761) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3411_20103 f_4@@7))) (not (IsWandField_3411_20119 f_4@@7))) (<= (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3372) (o_2@@8 T@Ref) (f_4@@8 T@Field_3424_3425) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3411_3425 f_4@@8))) (not (IsWandField_3411_3425 f_4@@8))) (<= (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3372) (o_2@@9 T@Ref) (f_4@@9 T@Field_3411_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3411_53 f_4@@9))) (not (IsWandField_3411_53 f_4@@9))) (<= (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3372) (o_2@@10 T@Ref) (f_4@@10 T@Field_3411_6744) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3411_11062 f_4@@10))) (not (IsWandField_3411_14006 f_4@@10))) (<= (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3372) (o_2@@11 T@Ref) (f_4@@11 T@Field_6756_6761) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_1954_19440 f_4@@11))) (not (IsWandField_1954_19456 f_4@@11))) (<= (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3372) (o_2@@12 T@Ref) (f_4@@12 T@Field_6743_3425) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_1954_3425 f_4@@12))) (not (IsWandField_1954_3425 f_4@@12))) (<= (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3372) (o_2@@13 T@Ref) (f_4@@13 T@Field_6743_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_1954_53 f_4@@13))) (not (IsWandField_1954_53 f_4@@13))) (<= (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3372) (o_2@@14 T@Ref) (f_4@@14 T@Field_6743_6744) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_1954_1955 f_4@@14))) (not (IsWandField_6743_14363 f_4@@14))) (<= (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_3372) (o_2@@15 T@Ref) (f_4@@15 T@Field_6756_6761) ) (! (= (HasDirectPerm_6743_10774 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6743_10774 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_3372) (o_2@@16 T@Ref) (f_4@@16 T@Field_6743_6744) ) (! (= (HasDirectPerm_6743_6744 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6743_6744 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_3372) (o_2@@17 T@Ref) (f_4@@17 T@Field_6743_3425) ) (! (= (HasDirectPerm_6743_3425 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6743_3425 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_3372) (o_2@@18 T@Ref) (f_4@@18 T@Field_6743_53) ) (! (= (HasDirectPerm_6743_53 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6743_53 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_3372) (o_2@@19 T@Ref) (f_4@@19 T@Field_3411_6761) ) (! (= (HasDirectPerm_3411_9834 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3411_9834 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_3372) (o_2@@20 T@Ref) (f_4@@20 T@Field_3411_6744) ) (! (= (HasDirectPerm_3411_6744 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3411_6744 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_3372) (o_2@@21 T@Ref) (f_4@@21 T@Field_3424_3425) ) (! (= (HasDirectPerm_3411_3425 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3411_3425 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_3372) (o_2@@22 T@Ref) (f_4@@22 T@Field_3411_53) ) (! (= (HasDirectPerm_3411_53 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3411_53 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3351) (ExhaleHeap@@9 T@PolymorphicMapType_3351) (Mask@@26 T@PolymorphicMapType_3372) (o_6@@0 T@Ref) (f_9@@31 T@Field_6756_6761) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_6743_10774 Mask@@26 o_6@@0 f_9@@31) (= (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@11) o_6@@0 f_9@@31) (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@9) o_6@@0 f_9@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| ExhaleHeap@@9) o_6@@0 f_9@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3351) (ExhaleHeap@@10 T@PolymorphicMapType_3351) (Mask@@27 T@PolymorphicMapType_3372) (o_6@@1 T@Ref) (f_9@@32 T@Field_6743_6744) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_6743_6744 Mask@@27 o_6@@1 f_9@@32) (= (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@12) o_6@@1 f_9@@32) (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| ExhaleHeap@@10) o_6@@1 f_9@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| ExhaleHeap@@10) o_6@@1 f_9@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3351) (ExhaleHeap@@11 T@PolymorphicMapType_3351) (Mask@@28 T@PolymorphicMapType_3372) (o_6@@2 T@Ref) (f_9@@33 T@Field_6743_3425) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_6743_3425 Mask@@28 o_6@@2 f_9@@33) (= (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@13) o_6@@2 f_9@@33) (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| ExhaleHeap@@11) o_6@@2 f_9@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| ExhaleHeap@@11) o_6@@2 f_9@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3351) (ExhaleHeap@@12 T@PolymorphicMapType_3351) (Mask@@29 T@PolymorphicMapType_3372) (o_6@@3 T@Ref) (f_9@@34 T@Field_6743_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_6743_53 Mask@@29 o_6@@3 f_9@@34) (= (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@14) o_6@@3 f_9@@34) (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| ExhaleHeap@@12) o_6@@3 f_9@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| ExhaleHeap@@12) o_6@@3 f_9@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3351) (ExhaleHeap@@13 T@PolymorphicMapType_3351) (Mask@@30 T@PolymorphicMapType_3372) (o_6@@4 T@Ref) (f_9@@35 T@Field_3411_6761) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_3411_9834 Mask@@30 o_6@@4 f_9@@35) (= (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@15) o_6@@4 f_9@@35) (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@13) o_6@@4 f_9@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| ExhaleHeap@@13) o_6@@4 f_9@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3351) (ExhaleHeap@@14 T@PolymorphicMapType_3351) (Mask@@31 T@PolymorphicMapType_3372) (o_6@@5 T@Ref) (f_9@@36 T@Field_3411_6744) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_3411_6744 Mask@@31 o_6@@5 f_9@@36) (= (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@16) o_6@@5 f_9@@36) (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| ExhaleHeap@@14) o_6@@5 f_9@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| ExhaleHeap@@14) o_6@@5 f_9@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3351) (ExhaleHeap@@15 T@PolymorphicMapType_3351) (Mask@@32 T@PolymorphicMapType_3372) (o_6@@6 T@Ref) (f_9@@37 T@Field_3424_3425) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_3411_3425 Mask@@32 o_6@@6 f_9@@37) (= (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@17) o_6@@6 f_9@@37) (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| ExhaleHeap@@15) o_6@@6 f_9@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| ExhaleHeap@@15) o_6@@6 f_9@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3351) (ExhaleHeap@@16 T@PolymorphicMapType_3351) (Mask@@33 T@PolymorphicMapType_3372) (o_6@@7 T@Ref) (f_9@@38 T@Field_3411_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_3411_53 Mask@@33 o_6@@7 f_9@@38) (= (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@18) o_6@@7 f_9@@38) (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap@@16) o_6@@7 f_9@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| ExhaleHeap@@16) o_6@@7 f_9@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_3411_6761) ) (! (= (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_3424_3425) ) (! (= (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_3411_53) ) (! (= (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_3411_6744) ) (! (= (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_6756_6761) ) (! (= (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_6743_3425) ) (! (= (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_6743_53) ) (! (= (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6743_6744) ) (! (= (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3372) (SummandMask1 T@PolymorphicMapType_3372) (SummandMask2 T@PolymorphicMapType_3372) (o_2@@31 T@Ref) (f_4@@31 T@Field_3411_6761) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3372_3411_18265#PolymorphicMapType_3372| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3372) (SummandMask1@@0 T@PolymorphicMapType_3372) (SummandMask2@@0 T@PolymorphicMapType_3372) (o_2@@32 T@Ref) (f_4@@32 T@Field_3424_3425) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3372_3411_3425#PolymorphicMapType_3372| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3372) (SummandMask1@@1 T@PolymorphicMapType_3372) (SummandMask2@@1 T@PolymorphicMapType_3372) (o_2@@33 T@Ref) (f_4@@33 T@Field_3411_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3372_3411_53#PolymorphicMapType_3372| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3372) (SummandMask1@@2 T@PolymorphicMapType_3372) (SummandMask2@@2 T@PolymorphicMapType_3372) (o_2@@34 T@Ref) (f_4@@34 T@Field_3411_6744) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3372_3411_1955#PolymorphicMapType_3372| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3372) (SummandMask1@@3 T@PolymorphicMapType_3372) (SummandMask2@@3 T@PolymorphicMapType_3372) (o_2@@35 T@Ref) (f_4@@35 T@Field_6756_6761) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3372_1954_17919#PolymorphicMapType_3372| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_3372) (SummandMask1@@4 T@PolymorphicMapType_3372) (SummandMask2@@4 T@PolymorphicMapType_3372) (o_2@@36 T@Ref) (f_4@@36 T@Field_6743_3425) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3372_1954_3425#PolymorphicMapType_3372| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_3372) (SummandMask1@@5 T@PolymorphicMapType_3372) (SummandMask2@@5 T@PolymorphicMapType_3372) (o_2@@37 T@Ref) (f_4@@37 T@Field_6743_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3372_1954_53#PolymorphicMapType_3372| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_3372) (SummandMask1@@6 T@PolymorphicMapType_3372) (SummandMask2@@6 T@PolymorphicMapType_3372) (o_2@@38 T@Ref) (f_4@@38 T@Field_6743_6744) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((r_1@@3 T@Ref) ) (! (= (getPredWandId_1954_1955 (p_14 r_1@@3)) 0)
 :qid |stdinbpl.206:15|
 :skolemid |24|
 :pattern ( (p_14 r_1@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3351) (o_5 T@Ref) (f_10 T@Field_6756_6761) (v T@PolymorphicMapType_3900) ) (! (succHeap Heap@@19 (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@19) (store (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@19) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@19) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@19) (store (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@19) o_5 f_10 v)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3351) (o_5@@0 T@Ref) (f_10@@0 T@Field_6743_6744) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@20) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@20) (store (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@20) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@20) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@20) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@20) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@20) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@20) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@20) (store (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@20) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@20) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@20) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@20) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@20) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3351) (o_5@@1 T@Ref) (f_10@@1 T@Field_6743_3425) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@21) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@21) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@21) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@21) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@21) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@21) (store (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@21) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@21) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@21) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@21) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@21) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@21) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@21) (store (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@21) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3351) (o_5@@2 T@Ref) (f_10@@2 T@Field_6743_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@22) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@22) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@22) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@22) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@22) (store (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@22) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@22) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@22) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@22) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@22) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@22) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@22) (store (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@22) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@22) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3351) (o_5@@3 T@Ref) (f_10@@3 T@Field_3411_6761) (v@@3 T@PolymorphicMapType_3900) ) (! (succHeap Heap@@23 (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@23) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@23) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@23) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@23) (store (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@23) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@23) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@23) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@23) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@23) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@23) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@23) (store (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@23) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@23) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@23) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3351) (o_5@@4 T@Ref) (f_10@@4 T@Field_3411_6744) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@24) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@24) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@24) (store (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@24) o_5@@4 f_10@@4 v@@4) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@24) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@24) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@24) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@24) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@24) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@24) (store (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@24) o_5@@4 f_10@@4 v@@4) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@24) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@24) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@24) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3351) (o_5@@5 T@Ref) (f_10@@5 T@Field_3424_3425) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@25) (store (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@25) o_5@@5 f_10@@5 v@@5) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@25) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@25) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@25) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@25) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@25) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3351 (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@25) (store (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@25) o_5@@5 f_10@@5 v@@5) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@25) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@25) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@25) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@25) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@25) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3351) (o_5@@6 T@Ref) (f_10@@6 T@Field_3411_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_3351 (store (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@26) o_5@@6 f_10@@6 v@@6) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3351 (store (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@26) o_5@@6 f_10@@6 v@@6) (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_3411_6744#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_3411_9876#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_6743_53#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_6743_3425#PolymorphicMapType_3351| Heap@@26) (|PolymorphicMapType_3351_6743_10816#PolymorphicMapType_3351| Heap@@26)))
)))
(assert (forall ((r_1@@4 T@Ref) ) (! (= (PredicateMaskField_1954 (p_14 r_1@@4)) (|p#sm| r_1@@4))
 :qid |stdinbpl.198:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_1954 (p_14 r_1@@4)))
)))
(assert (forall ((o_5@@7 T@Ref) (f_3 T@Field_3424_3425) (Heap@@27 T@PolymorphicMapType_3351) ) (!  (=> (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@27) o_5@@7 $allocated) (select (|PolymorphicMapType_3351_1821_53#PolymorphicMapType_3351| Heap@@27) (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@27) o_5@@7 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3351_1824_1825#PolymorphicMapType_3351| Heap@@27) o_5@@7 f_3))
)))
(assert (forall ((p@@2 T@Field_6743_6744) (v_1@@1 T@FrameType) (q T@Field_6743_6744) (w@@1 T@FrameType) (r T@Field_6743_6744) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6743_6743 p@@2 v_1@@1 q w@@1) (InsidePredicate_6743_6743 q w@@1 r u)) (InsidePredicate_6743_6743 p@@2 v_1@@1 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6743_6743 p@@2 v_1@@1 q w@@1) (InsidePredicate_6743_6743 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_6743_6744) (v_1@@2 T@FrameType) (q@@0 T@Field_6743_6744) (w@@2 T@FrameType) (r@@0 T@Field_3411_6744) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_6743_6743 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6743_3411 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_6743_3411 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6743_6743 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6743_3411 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_6743_6744) (v_1@@3 T@FrameType) (q@@1 T@Field_3411_6744) (w@@3 T@FrameType) (r@@1 T@Field_6743_6744) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_6743_3411 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3411_6743 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_6743_6743 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6743_3411 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3411_6743 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_6743_6744) (v_1@@4 T@FrameType) (q@@2 T@Field_3411_6744) (w@@4 T@FrameType) (r@@2 T@Field_3411_6744) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_6743_3411 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3411_3411 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_6743_3411 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6743_3411 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3411_3411 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3411_6744) (v_1@@5 T@FrameType) (q@@3 T@Field_6743_6744) (w@@5 T@FrameType) (r@@3 T@Field_6743_6744) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3411_6743 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6743_6743 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3411_6743 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3411_6743 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6743_6743 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3411_6744) (v_1@@6 T@FrameType) (q@@4 T@Field_6743_6744) (w@@6 T@FrameType) (r@@4 T@Field_3411_6744) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3411_6743 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6743_3411 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3411_3411 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3411_6743 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6743_3411 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3411_6744) (v_1@@7 T@FrameType) (q@@5 T@Field_3411_6744) (w@@7 T@FrameType) (r@@5 T@Field_6743_6744) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3411_3411 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3411_6743 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3411_6743 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3411_3411 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3411_6743 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3411_6744) (v_1@@8 T@FrameType) (q@@6 T@Field_3411_6744) (w@@8 T@FrameType) (r@@6 T@Field_3411_6744) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3411_3411 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3411_3411 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3411_3411 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3411_3411 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3411_3411 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun neverTriggered1 (T@Ref) Bool)
(declare-fun Heap@@28 () T@PolymorphicMapType_3351)
(set-info :boogie-vc-id m)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((r_2_1_1 T@Ref) ) (!  (=> (and (not (= (invRecv1 r_2_1_1) null)) (qpRange1 r_2_1_1)) (>= (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ZeroMask) null (p_14 (invRecv1 r_2_1_1))) NoPerm))
 :qid |stdinbpl.263:17|
 :skolemid |28|
 :pattern ( (invRecv1 r_2_1_1))
))) (=> (forall ((r_2_1_1@@0 T@Ref) ) (!  (=> (and (not (= (invRecv1 r_2_1_1@@0) null)) (qpRange1 r_2_1_1@@0)) (>= (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ZeroMask) null (p_14 (invRecv1 r_2_1_1@@0))) NoPerm))
 :qid |stdinbpl.263:17|
 :skolemid |28|
 :pattern ( (invRecv1 r_2_1_1@@0))
)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((r_1_1 T@Ref) (r_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1 r_1_2)) (not (= r_1_1 null))) (not (= r_1_2 null))) (< NoPerm (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ZeroMask) null (p_14 r_1_1)))) (< NoPerm (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ZeroMask) null (p_14 r_1_2)))) (not (= r_1_1 r_1_2)))
 :qid |stdinbpl.270:17|
 :skolemid |29|
 :pattern ( (neverTriggered1 r_1_1) (neverTriggered1 r_1_2))
))) (=> (forall ((r_1_1@@0 T@Ref) (r_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1@@0 r_1_2@@0)) (not (= r_1_1@@0 null))) (not (= r_1_2@@0 null))) (< NoPerm (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ZeroMask) null (p_14 r_1_1@@0)))) (< NoPerm (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ZeroMask) null (p_14 r_1_2@@0)))) (not (= r_1_1@@0 r_1_2@@0)))
 :qid |stdinbpl.270:17|
 :skolemid |29|
 :pattern ( (neverTriggered1 r_1_1@@0) (neverTriggered1 r_1_2@@0))
)) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((r_1_1@@1 T@Ref) ) (!  (=> (not (= r_1_1@@1 null)) (>= (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ZeroMask) null (p_14 r_1_1@@1)) (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ZeroMask) null (p_14 r_1_1@@1))))
 :qid |stdinbpl.277:17|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_3351_1954_1955#PolymorphicMapType_3351| Heap@@28) null (p_14 r_1_1@@1)))
 :pattern ( (select (|PolymorphicMapType_3372_1954_1955#PolymorphicMapType_3372| ZeroMask) null (p_14 r_1_1@@1)))
)))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@28 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 6) 1) anon3_Then_correct) (=> (= (ControlFlow 0 6) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
