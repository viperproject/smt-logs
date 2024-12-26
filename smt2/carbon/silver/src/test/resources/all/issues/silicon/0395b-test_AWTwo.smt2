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
(declare-sort T@Field_3417_53 0)
(declare-sort T@Field_3430_3431 0)
(declare-sort T@Field_6744_6745 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3417_6745 0)
(declare-sort T@Field_3417_6761 0)
(declare-sort T@Field_6744_53 0)
(declare-sort T@Field_6744_3431 0)
(declare-sort T@Field_6756_6761 0)
(declare-datatypes ((T@PolymorphicMapType_3378 0)) (((PolymorphicMapType_3378 (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| (Array T@Ref T@Field_6744_6745 Real)) (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| (Array T@Ref T@Field_6744_53 Real)) (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| (Array T@Ref T@Field_6744_3431 Real)) (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| (Array T@Ref T@Field_6756_6761 Real)) (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| (Array T@Ref T@Field_3417_6745 Real)) (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| (Array T@Ref T@Field_3417_53 Real)) (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| (Array T@Ref T@Field_3430_3431 Real)) (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| (Array T@Ref T@Field_3417_6761 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3906 0)) (((PolymorphicMapType_3906 (|PolymorphicMapType_3906_3417_53#PolymorphicMapType_3906| (Array T@Ref T@Field_3417_53 Bool)) (|PolymorphicMapType_3906_3417_3431#PolymorphicMapType_3906| (Array T@Ref T@Field_3430_3431 Bool)) (|PolymorphicMapType_3906_3417_6745#PolymorphicMapType_3906| (Array T@Ref T@Field_3417_6745 Bool)) (|PolymorphicMapType_3906_3417_12006#PolymorphicMapType_3906| (Array T@Ref T@Field_3417_6761 Bool)) (|PolymorphicMapType_3906_6744_53#PolymorphicMapType_3906| (Array T@Ref T@Field_6744_53 Bool)) (|PolymorphicMapType_3906_6744_3431#PolymorphicMapType_3906| (Array T@Ref T@Field_6744_3431 Bool)) (|PolymorphicMapType_3906_6744_6745#PolymorphicMapType_3906| (Array T@Ref T@Field_6744_6745 Bool)) (|PolymorphicMapType_3906_6744_12856#PolymorphicMapType_3906| (Array T@Ref T@Field_6756_6761 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3357 0)) (((PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| (Array T@Ref T@Field_3417_53 Bool)) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| (Array T@Ref T@Field_3430_3431 T@Ref)) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| (Array T@Ref T@Field_6744_6745 T@FrameType)) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| (Array T@Ref T@Field_3417_6745 T@FrameType)) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| (Array T@Ref T@Field_3417_6761 T@PolymorphicMapType_3906)) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| (Array T@Ref T@Field_6744_53 Bool)) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| (Array T@Ref T@Field_6744_3431 T@Ref)) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| (Array T@Ref T@Field_6756_6761 T@PolymorphicMapType_3906)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3357 T@PolymorphicMapType_3357) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3357 T@PolymorphicMapType_3357) Bool)
(declare-fun state (T@PolymorphicMapType_3357 T@PolymorphicMapType_3378) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3378) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3357 T@PolymorphicMapType_3357 T@PolymorphicMapType_3378) Bool)
(declare-fun IsPredicateField_2022_2023 (T@Field_6744_6745) Bool)
(declare-fun HasDirectPerm_6744_6745 (T@PolymorphicMapType_3378 T@Ref T@Field_6744_6745) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2022 (T@Field_6744_6745) T@Field_6756_6761)
(declare-fun IsPredicateField_3417_10720 (T@Field_3417_6745) Bool)
(declare-fun HasDirectPerm_3417_6745 (T@PolymorphicMapType_3378 T@Ref T@Field_3417_6745) Bool)
(declare-fun PredicateMaskField_3417 (T@Field_3417_6745) T@Field_3417_6761)
(declare-fun IsWandField_6744_14021 (T@Field_6744_6745) Bool)
(declare-fun WandMaskField_6744 (T@Field_6744_6745) T@Field_6756_6761)
(declare-fun IsWandField_3417_13664 (T@Field_3417_6745) Bool)
(declare-fun WandMaskField_3417 (T@Field_3417_6745) T@Field_3417_6761)
(declare-fun ZeroPMask () T@PolymorphicMapType_3906)
(declare-fun AWTwo (Int Int) T@Field_6744_6745)
(declare-fun |AWTwo#trigger_2022| (T@PolymorphicMapType_3357 T@Field_6744_6745) Bool)
(declare-fun |AWTwo#everUsed_2022| (T@Field_6744_6745) Bool)
(declare-fun |AWTwo#sm| (Int Int) T@Field_6756_6761)
(declare-fun dummyHeap () T@PolymorphicMapType_3357)
(declare-fun ZeroMask () T@PolymorphicMapType_3378)
(declare-fun $allocated () T@Field_3417_53)
(declare-fun InsidePredicate_6744_6744 (T@Field_6744_6745 T@FrameType T@Field_6744_6745 T@FrameType) Bool)
(declare-fun InsidePredicate_3417_3417 (T@Field_3417_6745 T@FrameType T@Field_3417_6745 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3417_19761 (T@Field_3417_6761) Bool)
(declare-fun IsWandField_3417_19777 (T@Field_3417_6761) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3417_3431 (T@Field_3430_3431) Bool)
(declare-fun IsWandField_3417_3431 (T@Field_3430_3431) Bool)
(declare-fun IsPredicateField_3417_53 (T@Field_3417_53) Bool)
(declare-fun IsWandField_3417_53 (T@Field_3417_53) Bool)
(declare-fun IsPredicateField_2022_19098 (T@Field_6756_6761) Bool)
(declare-fun IsWandField_2022_19114 (T@Field_6756_6761) Bool)
(declare-fun IsPredicateField_2022_3431 (T@Field_6744_3431) Bool)
(declare-fun IsWandField_2022_3431 (T@Field_6744_3431) Bool)
(declare-fun IsPredicateField_2022_53 (T@Field_6744_53) Bool)
(declare-fun IsWandField_2022_53 (T@Field_6744_53) Bool)
(declare-fun HasDirectPerm_6744_10432 (T@PolymorphicMapType_3378 T@Ref T@Field_6756_6761) Bool)
(declare-fun HasDirectPerm_6744_3431 (T@PolymorphicMapType_3378 T@Ref T@Field_6744_3431) Bool)
(declare-fun HasDirectPerm_6744_53 (T@PolymorphicMapType_3378 T@Ref T@Field_6744_53) Bool)
(declare-fun HasDirectPerm_3417_9492 (T@PolymorphicMapType_3378 T@Ref T@Field_3417_6761) Bool)
(declare-fun HasDirectPerm_3417_3431 (T@PolymorphicMapType_3378 T@Ref T@Field_3430_3431) Bool)
(declare-fun HasDirectPerm_3417_53 (T@PolymorphicMapType_3378 T@Ref T@Field_3417_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3378 T@PolymorphicMapType_3378 T@PolymorphicMapType_3378) Bool)
(declare-fun getPredWandId_2022_2023 (T@Field_6744_6745) Int)
(declare-fun InsidePredicate_6744_3417 (T@Field_6744_6745 T@FrameType T@Field_3417_6745 T@FrameType) Bool)
(declare-fun InsidePredicate_3417_6744 (T@Field_3417_6745 T@FrameType T@Field_6744_6745 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3357) (Heap1 T@PolymorphicMapType_3357) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3357) (Mask T@PolymorphicMapType_3378) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3357) (ExhaleHeap T@PolymorphicMapType_3357) (Mask@@0 T@PolymorphicMapType_3378) (pm_f_2 T@Field_6744_6745) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6744_6745 Mask@@0 null pm_f_2) (IsPredicateField_2022_2023 pm_f_2)) (and (and (and (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_3417_53) ) (!  (=> (select (|PolymorphicMapType_3906_3417_53#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@0) null (PredicateMaskField_2022 pm_f_2))) o2_2 f_9) (= (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@0) o2_2 f_9) (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_3430_3431) ) (!  (=> (select (|PolymorphicMapType_3906_3417_3431#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@0) null (PredicateMaskField_2022 pm_f_2))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@0) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| ExhaleHeap) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| ExhaleHeap) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_3417_6745) ) (!  (=> (select (|PolymorphicMapType_3906_3417_6745#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@0) null (PredicateMaskField_2022 pm_f_2))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@0) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| ExhaleHeap) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| ExhaleHeap) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_3417_6761) ) (!  (=> (select (|PolymorphicMapType_3906_3417_12006#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@0) null (PredicateMaskField_2022 pm_f_2))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@0) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_6744_53) ) (!  (=> (select (|PolymorphicMapType_3906_6744_53#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@0) null (PredicateMaskField_2022 pm_f_2))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@0) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| ExhaleHeap) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| ExhaleHeap) o2_2@@3 f_9@@3))
))) (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_6744_3431) ) (!  (=> (select (|PolymorphicMapType_3906_6744_3431#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@0) null (PredicateMaskField_2022 pm_f_2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@0) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| ExhaleHeap) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| ExhaleHeap) o2_2@@4 f_9@@4))
))) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_6744_6745) ) (!  (=> (select (|PolymorphicMapType_3906_6744_6745#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@0) null (PredicateMaskField_2022 pm_f_2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@0) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| ExhaleHeap) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| ExhaleHeap) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_6756_6761) ) (!  (=> (select (|PolymorphicMapType_3906_6744_12856#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@0) null (PredicateMaskField_2022 pm_f_2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@0) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap) o2_2@@6 f_9@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2022_2023 pm_f_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3357) (ExhaleHeap@@0 T@PolymorphicMapType_3357) (Mask@@1 T@PolymorphicMapType_3378) (pm_f_2@@0 T@Field_3417_6745) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3417_6745 Mask@@1 null pm_f_2@@0) (IsPredicateField_3417_10720 pm_f_2@@0)) (and (and (and (and (and (and (and (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_3417_53) ) (!  (=> (select (|PolymorphicMapType_3906_3417_53#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@1) null (PredicateMaskField_3417 pm_f_2@@0))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@1) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@7 f_9@@7))
)) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_3430_3431) ) (!  (=> (select (|PolymorphicMapType_3906_3417_3431#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@1) null (PredicateMaskField_3417 pm_f_2@@0))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@1) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@8 f_9@@8))
))) (forall ((o2_2@@9 T@Ref) (f_9@@9 T@Field_3417_6745) ) (!  (=> (select (|PolymorphicMapType_3906_3417_6745#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@1) null (PredicateMaskField_3417 pm_f_2@@0))) o2_2@@9 f_9@@9) (= (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@1) o2_2@@9 f_9@@9) (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@9 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@9 f_9@@9))
))) (forall ((o2_2@@10 T@Ref) (f_9@@10 T@Field_3417_6761) ) (!  (=> (select (|PolymorphicMapType_3906_3417_12006#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@1) null (PredicateMaskField_3417 pm_f_2@@0))) o2_2@@10 f_9@@10) (= (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@1) o2_2@@10 f_9@@10) (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@10 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@10 f_9@@10))
))) (forall ((o2_2@@11 T@Ref) (f_9@@11 T@Field_6744_53) ) (!  (=> (select (|PolymorphicMapType_3906_6744_53#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@1) null (PredicateMaskField_3417 pm_f_2@@0))) o2_2@@11 f_9@@11) (= (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@1) o2_2@@11 f_9@@11) (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@11 f_9@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@11 f_9@@11))
))) (forall ((o2_2@@12 T@Ref) (f_9@@12 T@Field_6744_3431) ) (!  (=> (select (|PolymorphicMapType_3906_6744_3431#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@1) null (PredicateMaskField_3417 pm_f_2@@0))) o2_2@@12 f_9@@12) (= (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@1) o2_2@@12 f_9@@12) (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@12 f_9@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@12 f_9@@12))
))) (forall ((o2_2@@13 T@Ref) (f_9@@13 T@Field_6744_6745) ) (!  (=> (select (|PolymorphicMapType_3906_6744_6745#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@1) null (PredicateMaskField_3417 pm_f_2@@0))) o2_2@@13 f_9@@13) (= (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@1) o2_2@@13 f_9@@13) (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@13 f_9@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@13 f_9@@13))
))) (forall ((o2_2@@14 T@Ref) (f_9@@14 T@Field_6756_6761) ) (!  (=> (select (|PolymorphicMapType_3906_6744_12856#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@1) null (PredicateMaskField_3417 pm_f_2@@0))) o2_2@@14 f_9@@14) (= (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@1) o2_2@@14 f_9@@14) (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@14 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@0) o2_2@@14 f_9@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3417_10720 pm_f_2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3357) (ExhaleHeap@@1 T@PolymorphicMapType_3357) (Mask@@2 T@PolymorphicMapType_3378) (pm_f_2@@1 T@Field_6744_6745) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6744_6745 Mask@@2 null pm_f_2@@1) (IsWandField_6744_14021 pm_f_2@@1)) (and (and (and (and (and (and (and (forall ((o2_2@@15 T@Ref) (f_9@@15 T@Field_3417_53) ) (!  (=> (select (|PolymorphicMapType_3906_3417_53#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@2) null (WandMaskField_6744 pm_f_2@@1))) o2_2@@15 f_9@@15) (= (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@2) o2_2@@15 f_9@@15) (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@15 f_9@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@15 f_9@@15))
)) (forall ((o2_2@@16 T@Ref) (f_9@@16 T@Field_3430_3431) ) (!  (=> (select (|PolymorphicMapType_3906_3417_3431#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@2) null (WandMaskField_6744 pm_f_2@@1))) o2_2@@16 f_9@@16) (= (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@2) o2_2@@16 f_9@@16) (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@16 f_9@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@16 f_9@@16))
))) (forall ((o2_2@@17 T@Ref) (f_9@@17 T@Field_3417_6745) ) (!  (=> (select (|PolymorphicMapType_3906_3417_6745#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@2) null (WandMaskField_6744 pm_f_2@@1))) o2_2@@17 f_9@@17) (= (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@2) o2_2@@17 f_9@@17) (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@17 f_9@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@17 f_9@@17))
))) (forall ((o2_2@@18 T@Ref) (f_9@@18 T@Field_3417_6761) ) (!  (=> (select (|PolymorphicMapType_3906_3417_12006#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@2) null (WandMaskField_6744 pm_f_2@@1))) o2_2@@18 f_9@@18) (= (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@2) o2_2@@18 f_9@@18) (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@18 f_9@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@18 f_9@@18))
))) (forall ((o2_2@@19 T@Ref) (f_9@@19 T@Field_6744_53) ) (!  (=> (select (|PolymorphicMapType_3906_6744_53#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@2) null (WandMaskField_6744 pm_f_2@@1))) o2_2@@19 f_9@@19) (= (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@2) o2_2@@19 f_9@@19) (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@19 f_9@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@19 f_9@@19))
))) (forall ((o2_2@@20 T@Ref) (f_9@@20 T@Field_6744_3431) ) (!  (=> (select (|PolymorphicMapType_3906_6744_3431#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@2) null (WandMaskField_6744 pm_f_2@@1))) o2_2@@20 f_9@@20) (= (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@2) o2_2@@20 f_9@@20) (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@20 f_9@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@20 f_9@@20))
))) (forall ((o2_2@@21 T@Ref) (f_9@@21 T@Field_6744_6745) ) (!  (=> (select (|PolymorphicMapType_3906_6744_6745#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@2) null (WandMaskField_6744 pm_f_2@@1))) o2_2@@21 f_9@@21) (= (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@2) o2_2@@21 f_9@@21) (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@21 f_9@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@21 f_9@@21))
))) (forall ((o2_2@@22 T@Ref) (f_9@@22 T@Field_6756_6761) ) (!  (=> (select (|PolymorphicMapType_3906_6744_12856#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@2) null (WandMaskField_6744 pm_f_2@@1))) o2_2@@22 f_9@@22) (= (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@2) o2_2@@22 f_9@@22) (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@22 f_9@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@1) o2_2@@22 f_9@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_6744_14021 pm_f_2@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3357) (ExhaleHeap@@2 T@PolymorphicMapType_3357) (Mask@@3 T@PolymorphicMapType_3378) (pm_f_2@@2 T@Field_3417_6745) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3417_6745 Mask@@3 null pm_f_2@@2) (IsWandField_3417_13664 pm_f_2@@2)) (and (and (and (and (and (and (and (forall ((o2_2@@23 T@Ref) (f_9@@23 T@Field_3417_53) ) (!  (=> (select (|PolymorphicMapType_3906_3417_53#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@3) null (WandMaskField_3417 pm_f_2@@2))) o2_2@@23 f_9@@23) (= (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@3) o2_2@@23 f_9@@23) (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@23 f_9@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@23 f_9@@23))
)) (forall ((o2_2@@24 T@Ref) (f_9@@24 T@Field_3430_3431) ) (!  (=> (select (|PolymorphicMapType_3906_3417_3431#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@3) null (WandMaskField_3417 pm_f_2@@2))) o2_2@@24 f_9@@24) (= (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@3) o2_2@@24 f_9@@24) (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@24 f_9@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@24 f_9@@24))
))) (forall ((o2_2@@25 T@Ref) (f_9@@25 T@Field_3417_6745) ) (!  (=> (select (|PolymorphicMapType_3906_3417_6745#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@3) null (WandMaskField_3417 pm_f_2@@2))) o2_2@@25 f_9@@25) (= (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@3) o2_2@@25 f_9@@25) (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@25 f_9@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@25 f_9@@25))
))) (forall ((o2_2@@26 T@Ref) (f_9@@26 T@Field_3417_6761) ) (!  (=> (select (|PolymorphicMapType_3906_3417_12006#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@3) null (WandMaskField_3417 pm_f_2@@2))) o2_2@@26 f_9@@26) (= (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@3) o2_2@@26 f_9@@26) (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@26 f_9@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@26 f_9@@26))
))) (forall ((o2_2@@27 T@Ref) (f_9@@27 T@Field_6744_53) ) (!  (=> (select (|PolymorphicMapType_3906_6744_53#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@3) null (WandMaskField_3417 pm_f_2@@2))) o2_2@@27 f_9@@27) (= (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@3) o2_2@@27 f_9@@27) (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@27 f_9@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@27 f_9@@27))
))) (forall ((o2_2@@28 T@Ref) (f_9@@28 T@Field_6744_3431) ) (!  (=> (select (|PolymorphicMapType_3906_6744_3431#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@3) null (WandMaskField_3417 pm_f_2@@2))) o2_2@@28 f_9@@28) (= (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@3) o2_2@@28 f_9@@28) (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@28 f_9@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@28 f_9@@28))
))) (forall ((o2_2@@29 T@Ref) (f_9@@29 T@Field_6744_6745) ) (!  (=> (select (|PolymorphicMapType_3906_6744_6745#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@3) null (WandMaskField_3417 pm_f_2@@2))) o2_2@@29 f_9@@29) (= (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@3) o2_2@@29 f_9@@29) (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@29 f_9@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@29 f_9@@29))
))) (forall ((o2_2@@30 T@Ref) (f_9@@30 T@Field_6756_6761) ) (!  (=> (select (|PolymorphicMapType_3906_6744_12856#PolymorphicMapType_3906| (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@3) null (WandMaskField_3417 pm_f_2@@2))) o2_2@@30 f_9@@30) (= (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@3) o2_2@@30 f_9@@30) (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@30 f_9@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@2) o2_2@@30 f_9@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3417_13664 pm_f_2@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3357) (Heap1@@0 T@PolymorphicMapType_3357) (Heap2 T@PolymorphicMapType_3357) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6756_6761) ) (!  (not (select (|PolymorphicMapType_3906_6744_12856#PolymorphicMapType_3906| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3906_6744_12856#PolymorphicMapType_3906| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6744_6745) ) (!  (not (select (|PolymorphicMapType_3906_6744_6745#PolymorphicMapType_3906| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3906_6744_6745#PolymorphicMapType_3906| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6744_3431) ) (!  (not (select (|PolymorphicMapType_3906_6744_3431#PolymorphicMapType_3906| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3906_6744_3431#PolymorphicMapType_3906| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6744_53) ) (!  (not (select (|PolymorphicMapType_3906_6744_53#PolymorphicMapType_3906| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3906_6744_53#PolymorphicMapType_3906| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3417_6761) ) (!  (not (select (|PolymorphicMapType_3906_3417_12006#PolymorphicMapType_3906| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3906_3417_12006#PolymorphicMapType_3906| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3417_6745) ) (!  (not (select (|PolymorphicMapType_3906_3417_6745#PolymorphicMapType_3906| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3906_3417_6745#PolymorphicMapType_3906| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3430_3431) ) (!  (not (select (|PolymorphicMapType_3906_3417_3431#PolymorphicMapType_3906| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3906_3417_3431#PolymorphicMapType_3906| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_3417_53) ) (!  (not (select (|PolymorphicMapType_3906_3417_53#PolymorphicMapType_3906| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3906_3417_53#PolymorphicMapType_3906| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((sender Int) (amount Int) ) (! (IsPredicateField_2022_2023 (AWTwo sender amount))
 :qid |stdinbpl.203:15|
 :skolemid |23|
 :pattern ( (AWTwo sender amount))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3357) (sender@@0 Int) (amount@@0 Int) ) (! (|AWTwo#everUsed_2022| (AWTwo sender@@0 amount@@0))
 :qid |stdinbpl.222:15|
 :skolemid |27|
 :pattern ( (|AWTwo#trigger_2022| Heap@@4 (AWTwo sender@@0 amount@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3357) (ExhaleHeap@@3 T@PolymorphicMapType_3357) (Mask@@4 T@PolymorphicMapType_3378) (pm_f_2@@3 T@Field_6744_6745) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6744_6745 Mask@@4 null pm_f_2@@3) (IsPredicateField_2022_2023 pm_f_2@@3)) (= (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@5) null (PredicateMaskField_2022 pm_f_2@@3)) (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@3) null (PredicateMaskField_2022 pm_f_2@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_2022_2023 pm_f_2@@3) (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@3) null (PredicateMaskField_2022 pm_f_2@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3357) (ExhaleHeap@@4 T@PolymorphicMapType_3357) (Mask@@5 T@PolymorphicMapType_3378) (pm_f_2@@4 T@Field_3417_6745) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3417_6745 Mask@@5 null pm_f_2@@4) (IsPredicateField_3417_10720 pm_f_2@@4)) (= (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@6) null (PredicateMaskField_3417 pm_f_2@@4)) (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@4) null (PredicateMaskField_3417 pm_f_2@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3417_10720 pm_f_2@@4) (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@4) null (PredicateMaskField_3417 pm_f_2@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3357) (ExhaleHeap@@5 T@PolymorphicMapType_3357) (Mask@@6 T@PolymorphicMapType_3378) (pm_f_2@@5 T@Field_6744_6745) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6744_6745 Mask@@6 null pm_f_2@@5) (IsWandField_6744_14021 pm_f_2@@5)) (= (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@7) null (WandMaskField_6744 pm_f_2@@5)) (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@5) null (WandMaskField_6744 pm_f_2@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_6744_14021 pm_f_2@@5) (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@5) null (WandMaskField_6744 pm_f_2@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3357) (ExhaleHeap@@6 T@PolymorphicMapType_3357) (Mask@@7 T@PolymorphicMapType_3378) (pm_f_2@@6 T@Field_3417_6745) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3417_6745 Mask@@7 null pm_f_2@@6) (IsWandField_3417_13664 pm_f_2@@6)) (= (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@8) null (WandMaskField_3417 pm_f_2@@6)) (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@6) null (WandMaskField_3417 pm_f_2@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_3417_13664 pm_f_2@@6) (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@6) null (WandMaskField_3417 pm_f_2@@6)))
)))
(assert (forall ((sender@@1 Int) (amount@@1 Int) (sender2 Int) (amount2 Int) ) (!  (=> (= (AWTwo sender@@1 amount@@1) (AWTwo sender2 amount2)) (and (= sender@@1 sender2) (= amount@@1 amount2)))
 :qid |stdinbpl.213:15|
 :skolemid |25|
 :pattern ( (AWTwo sender@@1 amount@@1) (AWTwo sender2 amount2))
)))
(assert (forall ((sender@@2 Int) (amount@@2 Int) (sender2@@0 Int) (amount2@@0 Int) ) (!  (=> (= (|AWTwo#sm| sender@@2 amount@@2) (|AWTwo#sm| sender2@@0 amount2@@0)) (and (= sender@@2 sender2@@0) (= amount@@2 amount2@@0)))
 :qid |stdinbpl.217:15|
 :skolemid |26|
 :pattern ( (|AWTwo#sm| sender@@2 amount@@2) (|AWTwo#sm| sender2@@0 amount2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3357) (ExhaleHeap@@7 T@PolymorphicMapType_3357) (Mask@@8 T@PolymorphicMapType_3378) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@9) o_6 $allocated) (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap@@7) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap@@7) o_6 $allocated))
)))
(assert (forall ((p T@Field_6744_6745) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6744_6744 p v_1 p w))
 :qid |stdinbpl.187:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6744_6744 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3417_6745) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3417_3417 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.187:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3417_3417 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3357) (ExhaleHeap@@8 T@PolymorphicMapType_3357) (Mask@@9 T@PolymorphicMapType_3378) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3378) (o_2@@7 T@Ref) (f_4@@7 T@Field_3417_6761) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3417_19761 f_4@@7))) (not (IsWandField_3417_19777 f_4@@7))) (<= (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3378) (o_2@@8 T@Ref) (f_4@@8 T@Field_3430_3431) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3417_3431 f_4@@8))) (not (IsWandField_3417_3431 f_4@@8))) (<= (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3378) (o_2@@9 T@Ref) (f_4@@9 T@Field_3417_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3417_53 f_4@@9))) (not (IsWandField_3417_53 f_4@@9))) (<= (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3378) (o_2@@10 T@Ref) (f_4@@10 T@Field_3417_6745) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3417_10720 f_4@@10))) (not (IsWandField_3417_13664 f_4@@10))) (<= (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3378) (o_2@@11 T@Ref) (f_4@@11 T@Field_6756_6761) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2022_19098 f_4@@11))) (not (IsWandField_2022_19114 f_4@@11))) (<= (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3378) (o_2@@12 T@Ref) (f_4@@12 T@Field_6744_3431) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2022_3431 f_4@@12))) (not (IsWandField_2022_3431 f_4@@12))) (<= (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3378) (o_2@@13 T@Ref) (f_4@@13 T@Field_6744_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2022_53 f_4@@13))) (not (IsWandField_2022_53 f_4@@13))) (<= (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3378) (o_2@@14 T@Ref) (f_4@@14 T@Field_6744_6745) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2022_2023 f_4@@14))) (not (IsWandField_6744_14021 f_4@@14))) (<= (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_3378) (o_2@@15 T@Ref) (f_4@@15 T@Field_6756_6761) ) (! (= (HasDirectPerm_6744_10432 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6744_10432 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_3378) (o_2@@16 T@Ref) (f_4@@16 T@Field_6744_6745) ) (! (= (HasDirectPerm_6744_6745 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6744_6745 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_3378) (o_2@@17 T@Ref) (f_4@@17 T@Field_6744_3431) ) (! (= (HasDirectPerm_6744_3431 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6744_3431 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_3378) (o_2@@18 T@Ref) (f_4@@18 T@Field_6744_53) ) (! (= (HasDirectPerm_6744_53 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6744_53 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_3378) (o_2@@19 T@Ref) (f_4@@19 T@Field_3417_6761) ) (! (= (HasDirectPerm_3417_9492 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3417_9492 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_3378) (o_2@@20 T@Ref) (f_4@@20 T@Field_3417_6745) ) (! (= (HasDirectPerm_3417_6745 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3417_6745 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_3378) (o_2@@21 T@Ref) (f_4@@21 T@Field_3430_3431) ) (! (= (HasDirectPerm_3417_3431 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3417_3431 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_3378) (o_2@@22 T@Ref) (f_4@@22 T@Field_3417_53) ) (! (= (HasDirectPerm_3417_53 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3417_53 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.175:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3357) (ExhaleHeap@@9 T@PolymorphicMapType_3357) (Mask@@26 T@PolymorphicMapType_3378) (o_6@@0 T@Ref) (f_9@@31 T@Field_6756_6761) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_6744_10432 Mask@@26 o_6@@0 f_9@@31) (= (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@11) o_6@@0 f_9@@31) (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@9) o_6@@0 f_9@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| ExhaleHeap@@9) o_6@@0 f_9@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3357) (ExhaleHeap@@10 T@PolymorphicMapType_3357) (Mask@@27 T@PolymorphicMapType_3378) (o_6@@1 T@Ref) (f_9@@32 T@Field_6744_6745) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_6744_6745 Mask@@27 o_6@@1 f_9@@32) (= (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@12) o_6@@1 f_9@@32) (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| ExhaleHeap@@10) o_6@@1 f_9@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| ExhaleHeap@@10) o_6@@1 f_9@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3357) (ExhaleHeap@@11 T@PolymorphicMapType_3357) (Mask@@28 T@PolymorphicMapType_3378) (o_6@@2 T@Ref) (f_9@@33 T@Field_6744_3431) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_6744_3431 Mask@@28 o_6@@2 f_9@@33) (= (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@13) o_6@@2 f_9@@33) (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| ExhaleHeap@@11) o_6@@2 f_9@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| ExhaleHeap@@11) o_6@@2 f_9@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3357) (ExhaleHeap@@12 T@PolymorphicMapType_3357) (Mask@@29 T@PolymorphicMapType_3378) (o_6@@3 T@Ref) (f_9@@34 T@Field_6744_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_6744_53 Mask@@29 o_6@@3 f_9@@34) (= (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@14) o_6@@3 f_9@@34) (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| ExhaleHeap@@12) o_6@@3 f_9@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| ExhaleHeap@@12) o_6@@3 f_9@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3357) (ExhaleHeap@@13 T@PolymorphicMapType_3357) (Mask@@30 T@PolymorphicMapType_3378) (o_6@@4 T@Ref) (f_9@@35 T@Field_3417_6761) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_3417_9492 Mask@@30 o_6@@4 f_9@@35) (= (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@15) o_6@@4 f_9@@35) (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@13) o_6@@4 f_9@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| ExhaleHeap@@13) o_6@@4 f_9@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3357) (ExhaleHeap@@14 T@PolymorphicMapType_3357) (Mask@@31 T@PolymorphicMapType_3378) (o_6@@5 T@Ref) (f_9@@36 T@Field_3417_6745) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_3417_6745 Mask@@31 o_6@@5 f_9@@36) (= (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@16) o_6@@5 f_9@@36) (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| ExhaleHeap@@14) o_6@@5 f_9@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| ExhaleHeap@@14) o_6@@5 f_9@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3357) (ExhaleHeap@@15 T@PolymorphicMapType_3357) (Mask@@32 T@PolymorphicMapType_3378) (o_6@@6 T@Ref) (f_9@@37 T@Field_3430_3431) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_3417_3431 Mask@@32 o_6@@6 f_9@@37) (= (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@17) o_6@@6 f_9@@37) (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| ExhaleHeap@@15) o_6@@6 f_9@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| ExhaleHeap@@15) o_6@@6 f_9@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3357) (ExhaleHeap@@16 T@PolymorphicMapType_3357) (Mask@@33 T@PolymorphicMapType_3378) (o_6@@7 T@Ref) (f_9@@38 T@Field_3417_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_3417_53 Mask@@33 o_6@@7 f_9@@38) (= (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@18) o_6@@7 f_9@@38) (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap@@16) o_6@@7 f_9@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| ExhaleHeap@@16) o_6@@7 f_9@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_3417_6761) ) (! (= (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_3430_3431) ) (! (= (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_3417_53) ) (! (= (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_3417_6745) ) (! (= (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_6756_6761) ) (! (= (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_6744_3431) ) (! (= (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_6744_53) ) (! (= (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6744_6745) ) (! (= (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3378) (SummandMask1 T@PolymorphicMapType_3378) (SummandMask2 T@PolymorphicMapType_3378) (o_2@@31 T@Ref) (f_4@@31 T@Field_3417_6761) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3378) (SummandMask1@@0 T@PolymorphicMapType_3378) (SummandMask2@@0 T@PolymorphicMapType_3378) (o_2@@32 T@Ref) (f_4@@32 T@Field_3430_3431) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3378) (SummandMask1@@1 T@PolymorphicMapType_3378) (SummandMask2@@1 T@PolymorphicMapType_3378) (o_2@@33 T@Ref) (f_4@@33 T@Field_3417_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3378) (SummandMask1@@2 T@PolymorphicMapType_3378) (SummandMask2@@2 T@PolymorphicMapType_3378) (o_2@@34 T@Ref) (f_4@@34 T@Field_3417_6745) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3378) (SummandMask1@@3 T@PolymorphicMapType_3378) (SummandMask2@@3 T@PolymorphicMapType_3378) (o_2@@35 T@Ref) (f_4@@35 T@Field_6756_6761) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_3378) (SummandMask1@@4 T@PolymorphicMapType_3378) (SummandMask2@@4 T@PolymorphicMapType_3378) (o_2@@36 T@Ref) (f_4@@36 T@Field_6744_3431) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_3378) (SummandMask1@@5 T@PolymorphicMapType_3378) (SummandMask2@@5 T@PolymorphicMapType_3378) (o_2@@37 T@Ref) (f_4@@37 T@Field_6744_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_3378) (SummandMask1@@6 T@PolymorphicMapType_3378) (SummandMask2@@6 T@PolymorphicMapType_3378) (o_2@@38 T@Ref) (f_4@@38 T@Field_6744_6745) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((sender@@3 Int) (amount@@3 Int) ) (! (= (getPredWandId_2022_2023 (AWTwo sender@@3 amount@@3)) 0)
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (AWTwo sender@@3 amount@@3))
)))
(assert (forall ((sender@@4 Int) (amount@@4 Int) ) (! (= (PredicateMaskField_2022 (AWTwo sender@@4 amount@@4)) (|AWTwo#sm| sender@@4 amount@@4))
 :qid |stdinbpl.199:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_2022 (AWTwo sender@@4 amount@@4)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3357) (o_5 T@Ref) (f_10 T@Field_6756_6761) (v T@PolymorphicMapType_3906) ) (! (succHeap Heap@@19 (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@19) (store (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@19) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@19) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@19) (store (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@19) o_5 f_10 v)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3357) (o_5@@0 T@Ref) (f_10@@0 T@Field_6744_6745) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@20) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@20) (store (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@20) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@20) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@20) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@20) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@20) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@20) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@20) (store (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@20) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@20) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@20) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@20) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@20) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3357) (o_5@@1 T@Ref) (f_10@@1 T@Field_6744_3431) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@21) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@21) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@21) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@21) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@21) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@21) (store (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@21) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@21) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@21) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@21) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@21) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@21) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@21) (store (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@21) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3357) (o_5@@2 T@Ref) (f_10@@2 T@Field_6744_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@22) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@22) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@22) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@22) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@22) (store (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@22) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@22) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@22) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@22) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@22) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@22) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@22) (store (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@22) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@22) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3357) (o_5@@3 T@Ref) (f_10@@3 T@Field_3417_6761) (v@@3 T@PolymorphicMapType_3906) ) (! (succHeap Heap@@23 (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@23) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@23) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@23) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@23) (store (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@23) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@23) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@23) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@23) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@23) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@23) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@23) (store (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@23) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@23) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@23) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3357) (o_5@@4 T@Ref) (f_10@@4 T@Field_3417_6745) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@24) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@24) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@24) (store (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@24) o_5@@4 f_10@@4 v@@4) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@24) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@24) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@24) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@24) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@24) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@24) (store (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@24) o_5@@4 f_10@@4 v@@4) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@24) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@24) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@24) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3357) (o_5@@5 T@Ref) (f_10@@5 T@Field_3430_3431) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@25) (store (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@25) o_5@@5 f_10@@5 v@@5) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@25) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@25) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@25) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@25) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@25) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3357 (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@25) (store (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@25) o_5@@5 f_10@@5 v@@5) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@25) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@25) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@25) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@25) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@25) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3357) (o_5@@6 T@Ref) (f_10@@6 T@Field_3417_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_3357 (store (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@26) o_5@@6 f_10@@6 v@@6) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3357 (store (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@26) o_5@@6 f_10@@6 v@@6) (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_3417_6745#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_3417_9534#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_6744_53#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_6744_3431#PolymorphicMapType_3357| Heap@@26) (|PolymorphicMapType_3357_6744_10474#PolymorphicMapType_3357| Heap@@26)))
)))
(assert (forall ((o_5@@7 T@Ref) (f_3 T@Field_3430_3431) (Heap@@27 T@PolymorphicMapType_3357) ) (!  (=> (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@27) o_5@@7 $allocated) (select (|PolymorphicMapType_3357_1894_53#PolymorphicMapType_3357| Heap@@27) (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@27) o_5@@7 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3357_1897_1898#PolymorphicMapType_3357| Heap@@27) o_5@@7 f_3))
)))
(assert (forall ((p@@2 T@Field_6744_6745) (v_1@@1 T@FrameType) (q T@Field_6744_6745) (w@@1 T@FrameType) (r T@Field_6744_6745) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6744_6744 p@@2 v_1@@1 q w@@1) (InsidePredicate_6744_6744 q w@@1 r u)) (InsidePredicate_6744_6744 p@@2 v_1@@1 r u))
 :qid |stdinbpl.182:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6744_6744 p@@2 v_1@@1 q w@@1) (InsidePredicate_6744_6744 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_6744_6745) (v_1@@2 T@FrameType) (q@@0 T@Field_6744_6745) (w@@2 T@FrameType) (r@@0 T@Field_3417_6745) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_6744_6744 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6744_3417 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_6744_3417 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.182:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6744_6744 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6744_3417 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_6744_6745) (v_1@@3 T@FrameType) (q@@1 T@Field_3417_6745) (w@@3 T@FrameType) (r@@1 T@Field_6744_6745) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_6744_3417 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3417_6744 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_6744_6744 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.182:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6744_3417 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3417_6744 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_6744_6745) (v_1@@4 T@FrameType) (q@@2 T@Field_3417_6745) (w@@4 T@FrameType) (r@@2 T@Field_3417_6745) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_6744_3417 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3417_3417 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_6744_3417 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.182:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6744_3417 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3417_3417 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3417_6745) (v_1@@5 T@FrameType) (q@@3 T@Field_6744_6745) (w@@5 T@FrameType) (r@@3 T@Field_6744_6745) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3417_6744 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6744_6744 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3417_6744 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.182:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3417_6744 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6744_6744 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3417_6745) (v_1@@6 T@FrameType) (q@@4 T@Field_6744_6745) (w@@6 T@FrameType) (r@@4 T@Field_3417_6745) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3417_6744 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6744_3417 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3417_3417 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.182:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3417_6744 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6744_3417 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3417_6745) (v_1@@7 T@FrameType) (q@@5 T@Field_3417_6745) (w@@7 T@FrameType) (r@@5 T@Field_6744_6745) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3417_3417 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3417_6744 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3417_6744 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.182:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3417_3417 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3417_6744 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3417_6745) (v_1@@8 T@FrameType) (q@@6 T@Field_3417_6745) (w@@8 T@FrameType) (r@@6 T@Field_3417_6745) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3417_3417 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3417_3417 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3417_3417 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.182:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3417_3417 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3417_3417 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered2 (Int Int) Bool)
(declare-fun last () Int)
(declare-fun Heap@@28 () T@PolymorphicMapType_3357)
(declare-fun invRecv1 (Int Int) Int)
(declare-fun invRecv2 (Int Int) Int)
(declare-fun qpRange2 (Int Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_3378)
(declare-fun getPredWandId_2022_53 (T@Field_6744_53) Int)
(declare-fun getPredWandId_2022_3431 (T@Field_6744_3431) Int)
(declare-fun getPredWandId_2022_24463 (T@Field_6756_6761) Int)
(declare-fun getPredWandId_3417_2023 (T@Field_3417_6745) Int)
(declare-fun getPredWandId_3417_53 (T@Field_3417_53) Int)
(declare-fun getPredWandId_3417_3431 (T@Field_3430_3431) Int)
(declare-fun getPredWandId_3417_25117 (T@Field_3417_6761) Int)
(set-info :boogie-vc-id test_AWTwo)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((s_1 Int) (a_1_1 Int) (s_1_1 Int) (a_1_2 Int) ) (!  (=> (and (and (and (and (and (not (= s_1 s_1_1)) (not (= a_1_1 a_1_2))) (<= s_1 last)) (<= s_1_1 last)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= s_1 s_1_1)) (not (= a_1_1 a_1_2))))
 :qid |stdinbpl.263:17|
 :skolemid |28|
 :pattern ( (neverTriggered2 s_1 a_1_1) (neverTriggered2 s_1_1 a_1_2))
))) (=> (forall ((s_1@@0 Int) (a_1_1@@0 Int) (s_1_1@@0 Int) (a_1_2@@0 Int) ) (!  (=> (and (and (and (and (and (not (= s_1@@0 s_1_1@@0)) (not (= a_1_1@@0 a_1_2@@0))) (<= s_1@@0 last)) (<= s_1_1@@0 last)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= s_1@@0 s_1_1@@0)) (not (= a_1_1@@0 a_1_2@@0))))
 :qid |stdinbpl.263:17|
 :skolemid |28|
 :pattern ( (neverTriggered2 s_1@@0 a_1_1@@0) (neverTriggered2 s_1_1@@0 a_1_2@@0))
)) (=> (forall ((s_1@@1 Int) (a_1_1@@1 Int) ) (!  (=> (and (<= s_1@@1 last) (< NoPerm FullPerm)) (and (and (= (invRecv1 s_1@@1 a_1_1@@1) s_1@@1) (= (invRecv2 s_1@@1 a_1_1@@1) a_1_1@@1)) (qpRange2 s_1@@1 a_1_1@@1)))
 :qid |stdinbpl.269:22|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@28) null (AWTwo s_1@@1 a_1_1@@1)))
 :pattern ( (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| ZeroMask) null (AWTwo s_1@@1 a_1_1@@1)))
 :pattern ( (select (|PolymorphicMapType_3357_2022_2023#PolymorphicMapType_3357| Heap@@28) null (AWTwo s_1@@1 a_1_1@@1)))
)) (=> (and (forall ((sender@@5 Int) (amount@@5 Int) ) (!  (=> (and (and (<= (invRecv1 sender@@5 amount@@5) last) (< NoPerm FullPerm)) (qpRange2 sender@@5 amount@@5)) (and (= (invRecv1 sender@@5 amount@@5) sender@@5) (= (invRecv2 sender@@5 amount@@5) amount@@5)))
 :qid |stdinbpl.273:22|
 :skolemid |30|
 :pattern ( (invRecv1 sender@@5 amount@@5) (invRecv2 sender@@5 amount@@5))
)) (forall ((sender@@6 Int) (amount@@6 Int) ) (!  (=> (and (and (<= (invRecv1 sender@@6 amount@@6) last) (< NoPerm FullPerm)) (qpRange2 sender@@6 amount@@6)) (and (=> (< NoPerm FullPerm) (and (= (invRecv1 sender@@6 amount@@6) sender@@6) (= (invRecv2 sender@@6 amount@@6) amount@@6))) (= (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| QPMask@0) null (AWTwo sender@@6 amount@@6)) (+ (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| ZeroMask) null (AWTwo sender@@6 amount@@6)) FullPerm))))
 :qid |stdinbpl.279:22|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| QPMask@0) null (AWTwo sender@@6 amount@@6)))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_6744_6745) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_2022_2023 f_5))) (not (= (getPredWandId_2022_2023 f_5) 0))) (= (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| ZeroMask) o_4 f_5) (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| QPMask@0) o_4 f_5)))
 :qid |stdinbpl.285:29|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| ZeroMask) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| QPMask@0) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_6744_53) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_2022_53 f_5@@0))) (not (= (getPredWandId_2022_53 f_5@@0) 0))) (= (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| ZeroMask) o_4@@0 f_5@@0) (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| QPMask@0) o_4@@0 f_5@@0)))
 :qid |stdinbpl.285:29|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| ZeroMask) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_3378_2022_53#PolymorphicMapType_3378| QPMask@0) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_6744_3431) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_2022_3431 f_5@@1))) (not (= (getPredWandId_2022_3431 f_5@@1) 0))) (= (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| ZeroMask) o_4@@1 f_5@@1) (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| QPMask@0) o_4@@1 f_5@@1)))
 :qid |stdinbpl.285:29|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| ZeroMask) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_3378_2022_3431#PolymorphicMapType_3378| QPMask@0) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_6756_6761) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_2022_19098 f_5@@2))) (not (= (getPredWandId_2022_24463 f_5@@2) 0))) (= (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| ZeroMask) o_4@@2 f_5@@2) (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| QPMask@0) o_4@@2 f_5@@2)))
 :qid |stdinbpl.285:29|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| ZeroMask) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_3378_2022_17577#PolymorphicMapType_3378| QPMask@0) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_3417_6745) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_3417_10720 f_5@@3))) (not (= (getPredWandId_3417_2023 f_5@@3) 0))) (= (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| ZeroMask) o_4@@3 f_5@@3) (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| QPMask@0) o_4@@3 f_5@@3)))
 :qid |stdinbpl.285:29|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| ZeroMask) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_3378_3417_2023#PolymorphicMapType_3378| QPMask@0) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_3417_53) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_3417_53 f_5@@4))) (not (= (getPredWandId_3417_53 f_5@@4) 0))) (= (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| ZeroMask) o_4@@4 f_5@@4) (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| QPMask@0) o_4@@4 f_5@@4)))
 :qid |stdinbpl.285:29|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| ZeroMask) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_3378_3417_53#PolymorphicMapType_3378| QPMask@0) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_3430_3431) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_3417_3431 f_5@@5))) (not (= (getPredWandId_3417_3431 f_5@@5) 0))) (= (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| ZeroMask) o_4@@5 f_5@@5) (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| QPMask@0) o_4@@5 f_5@@5)))
 :qid |stdinbpl.285:29|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| ZeroMask) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_3378_3417_3431#PolymorphicMapType_3378| QPMask@0) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_3417_6761) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_3417_19761 f_5@@6))) (not (= (getPredWandId_3417_25117 f_5@@6) 0))) (= (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| ZeroMask) o_4@@6 f_5@@6) (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| QPMask@0) o_4@@6 f_5@@6)))
 :qid |stdinbpl.285:29|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| ZeroMask) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_3378_3417_17923#PolymorphicMapType_3378| QPMask@0) o_4@@6 f_5@@6))
))) (forall ((sender@@7 Int) (amount@@7 Int) ) (!  (=> (not (and (and (<= (invRecv1 sender@@7 amount@@7) last) (< NoPerm FullPerm)) (qpRange2 sender@@7 amount@@7))) (= (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| QPMask@0) null (AWTwo sender@@7 amount@@7)) (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| ZeroMask) null (AWTwo sender@@7 amount@@7))))
 :qid |stdinbpl.289:22|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| QPMask@0) null (AWTwo sender@@7 amount@@7)))
))) (and (and (state Heap@@28 QPMask@0) (state Heap@@28 QPMask@0)) (and (state Heap@@28 QPMask@0) (= (ControlFlow 0 3) (- 0 2))))) (= (select (|PolymorphicMapType_3378_2022_2023#PolymorphicMapType_3378| QPMask@0) null (AWTwo (+ last 1) 0)) NoPerm))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@28 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
