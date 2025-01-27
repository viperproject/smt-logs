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
(declare-sort T@Field_15613_53 0)
(declare-sort T@Field_15626_15627 0)
(declare-sort T@Field_19420_19421 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_19928_19933 0)
(declare-sort T@Field_7959_7989 0)
(declare-sort T@Field_7959_19933 0)
(declare-sort T@Field_7988_7960 0)
(declare-sort T@Field_7988_53 0)
(declare-datatypes ((T@PolymorphicMapType_15574 0)) (((PolymorphicMapType_15574 (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| (Array T@Ref T@Field_19420_19421 Real)) (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| (Array T@Ref T@Field_15626_15627 Real)) (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| (Array T@Ref T@Field_7988_7960 Real)) (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| (Array T@Ref T@Field_7988_53 Real)) (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| (Array T@Ref T@Field_19928_19933 Real)) (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| (Array T@Ref T@Field_7959_7989 Real)) (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| (Array T@Ref T@Field_15613_53 Real)) (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| (Array T@Ref T@Field_7959_19933 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16102 0)) (((PolymorphicMapType_16102 (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| (Array T@Ref T@Field_15626_15627 Bool)) (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| (Array T@Ref T@Field_15613_53 Bool)) (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| (Array T@Ref T@Field_7959_7989 Bool)) (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| (Array T@Ref T@Field_7959_19933 Bool)) (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| (Array T@Ref T@Field_7988_7960 Bool)) (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| (Array T@Ref T@Field_7988_53 Bool)) (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| (Array T@Ref T@Field_19420_19421 Bool)) (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| (Array T@Ref T@Field_19928_19933 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15553 0)) (((PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| (Array T@Ref T@Field_15613_53 Bool)) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| (Array T@Ref T@Field_15626_15627 T@Ref)) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| (Array T@Ref T@Field_19420_19421 T@FrameType)) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| (Array T@Ref T@Field_19928_19933 T@PolymorphicMapType_16102)) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| (Array T@Ref T@Field_7959_7989 T@FrameType)) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| (Array T@Ref T@Field_7959_19933 T@PolymorphicMapType_16102)) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| (Array T@Ref T@Field_7988_7960 T@Ref)) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| (Array T@Ref T@Field_7988_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_15613_53)
(declare-fun next () T@Field_15626_15627)
(declare-sort T@PredicateInstanceDomainType 0)
(declare-fun nestedPredicates (T@PredicateInstanceDomainType T@PredicateInstanceDomainType) Bool)
(declare-fun succHeap (T@PolymorphicMapType_15553 T@PolymorphicMapType_15553) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15553 T@PolymorphicMapType_15553) Bool)
(declare-fun bounded_7952 (T@PredicateInstanceDomainType) Bool)
(declare-fun state (T@PolymorphicMapType_15553 T@PolymorphicMapType_15574) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15574) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15553 T@PolymorphicMapType_15553 T@PolymorphicMapType_15574) Bool)
(declare-fun IsPredicateField_7988_7989 (T@Field_19420_19421) Bool)
(declare-fun HasDirectPerm_7988_7989 (T@PolymorphicMapType_15574 T@Ref T@Field_19420_19421) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7988 (T@Field_19420_19421) T@Field_19928_19933)
(declare-fun IsPredicateField_7959_55610 (T@Field_7959_7989) Bool)
(declare-fun HasDirectPerm_7959_7989 (T@PolymorphicMapType_15574 T@Ref T@Field_7959_7989) Bool)
(declare-fun PredicateMaskField_7959 (T@Field_7959_7989) T@Field_7959_19933)
(declare-fun IsWandField_7988_58896 (T@Field_19420_19421) Bool)
(declare-fun WandMaskField_7988 (T@Field_19420_19421) T@Field_19928_19933)
(declare-fun IsWandField_7959_58539 (T@Field_7959_7989) Bool)
(declare-fun WandMaskField_7959 (T@Field_7959_7989) T@Field_7959_19933)
(declare-fun ZeroPMask () T@PolymorphicMapType_16102)
(declare-fun list (T@Ref) T@Field_19420_19421)
(declare-fun |PI_list'| (T@PolymorphicMapType_15553 T@Ref) T@PredicateInstanceDomainType)
(declare-fun dummyFunction_7981 (T@PredicateInstanceDomainType) Bool)
(declare-fun |PI_list#triggerStateless| (T@Ref) T@PredicateInstanceDomainType)
(declare-fun |list#trigger_7988| (T@PolymorphicMapType_15553 T@Field_19420_19421) Bool)
(declare-fun |list#everUsed_7988| (T@Field_19420_19421) Bool)
(declare-fun PI_list (T@PolymorphicMapType_15553 T@Ref) T@PredicateInstanceDomainType)
(declare-fun |list#sm| (T@Ref) T@Field_19928_19933)
(declare-fun dummyHeap () T@PolymorphicMapType_15553)
(declare-fun ZeroMask () T@PolymorphicMapType_15574)
(declare-fun InsidePredicate_15613_15613 (T@Field_7959_7989 T@FrameType T@Field_7959_7989 T@FrameType) Bool)
(declare-fun InsidePredicate_7988_7988 (T@Field_19420_19421 T@FrameType T@Field_19420_19421 T@FrameType) Bool)
(declare-fun IsPredicateField_7959_7960 (T@Field_15626_15627) Bool)
(declare-fun IsWandField_7959_7960 (T@Field_15626_15627) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7959_64607 (T@Field_7959_19933) Bool)
(declare-fun IsWandField_7959_64623 (T@Field_7959_19933) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7959_53 (T@Field_15613_53) Bool)
(declare-fun IsWandField_7959_53 (T@Field_15613_53) Bool)
(declare-fun IsPredicateField_7988_63958 (T@Field_19928_19933) Bool)
(declare-fun IsWandField_7988_63974 (T@Field_19928_19933) Bool)
(declare-fun IsPredicateField_7988_53 (T@Field_7988_53) Bool)
(declare-fun IsWandField_7988_53 (T@Field_7988_53) Bool)
(declare-fun IsPredicateField_7988_7960 (T@Field_7988_7960) Bool)
(declare-fun IsWandField_7988_7960 (T@Field_7988_7960) Bool)
(declare-fun HasDirectPerm_7988_55365 (T@PolymorphicMapType_15574 T@Ref T@Field_19928_19933) Bool)
(declare-fun HasDirectPerm_7988_53 (T@PolymorphicMapType_15574 T@Ref T@Field_7988_53) Bool)
(declare-fun HasDirectPerm_7988_7960 (T@PolymorphicMapType_15574 T@Ref T@Field_7988_7960) Bool)
(declare-fun HasDirectPerm_7959_54445 (T@PolymorphicMapType_15574 T@Ref T@Field_7959_19933) Bool)
(declare-fun HasDirectPerm_7959_53 (T@PolymorphicMapType_15574 T@Ref T@Field_15613_53) Bool)
(declare-fun HasDirectPerm_7959_7960 (T@PolymorphicMapType_15574 T@Ref T@Field_15626_15627) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15574 T@PolymorphicMapType_15574 T@PolymorphicMapType_15574) Bool)
(declare-fun decreasing_7950 (T@PredicateInstanceDomainType T@PredicateInstanceDomainType) Bool)
(declare-fun |PI_list#frame| (T@FrameType T@Ref) T@PredicateInstanceDomainType)
(declare-fun getPredWandId_7988_7989 (T@Field_19420_19421) Int)
(declare-fun InsidePredicate_15613_7988 (T@Field_7959_7989 T@FrameType T@Field_19420_19421 T@FrameType) Bool)
(declare-fun InsidePredicate_7988_15613 (T@Field_19420_19421 T@FrameType T@Field_7959_7989 T@FrameType) Bool)
(assert (forall ((l1_1 T@PredicateInstanceDomainType) ) (!  (not (nestedPredicates l1_1 l1_1))
 :qid |stdinbpl.228:15|
 :skolemid |25|
 :pattern ( (nestedPredicates l1_1 l1_1))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15553) (Heap1 T@PolymorphicMapType_15553) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((l1_1@@0 T@PredicateInstanceDomainType) ) (! (bounded_7952 l1_1@@0)
 :qid |stdinbpl.193:15|
 :skolemid |23|
 :pattern ( (bounded_7952 l1_1@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_15553) (Mask T@PolymorphicMapType_15574) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15553) (ExhaleHeap T@PolymorphicMapType_15553) (Mask@@0 T@PolymorphicMapType_15574) (pm_f_20 T@Field_19420_19421) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7988_7989 Mask@@0 null pm_f_20) (IsPredicateField_7988_7989 pm_f_20)) (and (and (and (and (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_15626_15627) ) (!  (=> (select (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@0) null (PredicateMaskField_7988 pm_f_20))) o2_20 f_53) (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@0) o2_20 f_53) (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| ExhaleHeap) o2_20 f_53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| ExhaleHeap) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_15613_53) ) (!  (=> (select (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@0) null (PredicateMaskField_7988 pm_f_20))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@0) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_7959_7989) ) (!  (=> (select (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@0) null (PredicateMaskField_7988 pm_f_20))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@0) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| ExhaleHeap) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| ExhaleHeap) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_7959_19933) ) (!  (=> (select (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@0) null (PredicateMaskField_7988 pm_f_20))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@0) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap) o2_20@@2 f_53@@2))
))) (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_7988_7960) ) (!  (=> (select (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@0) null (PredicateMaskField_7988 pm_f_20))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@0) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| ExhaleHeap) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| ExhaleHeap) o2_20@@3 f_53@@3))
))) (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_7988_53) ) (!  (=> (select (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@0) null (PredicateMaskField_7988 pm_f_20))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@0) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| ExhaleHeap) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| ExhaleHeap) o2_20@@4 f_53@@4))
))) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_19420_19421) ) (!  (=> (select (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@0) null (PredicateMaskField_7988 pm_f_20))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@0) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| ExhaleHeap) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| ExhaleHeap) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_19928_19933) ) (!  (=> (select (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@0) null (PredicateMaskField_7988 pm_f_20))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@0) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap) o2_20@@6 f_53@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7988_7989 pm_f_20))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15553) (ExhaleHeap@@0 T@PolymorphicMapType_15553) (Mask@@1 T@PolymorphicMapType_15574) (pm_f_20@@0 T@Field_7959_7989) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7959_7989 Mask@@1 null pm_f_20@@0) (IsPredicateField_7959_55610 pm_f_20@@0)) (and (and (and (and (and (and (and (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_15626_15627) ) (!  (=> (select (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@1) null (PredicateMaskField_7959 pm_f_20@@0))) o2_20@@7 f_53@@7) (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@1) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@7 f_53@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@7 f_53@@7))
)) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_15613_53) ) (!  (=> (select (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@1) null (PredicateMaskField_7959 pm_f_20@@0))) o2_20@@8 f_53@@8) (= (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@1) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@8 f_53@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@8 f_53@@8))
))) (forall ((o2_20@@9 T@Ref) (f_53@@9 T@Field_7959_7989) ) (!  (=> (select (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@1) null (PredicateMaskField_7959 pm_f_20@@0))) o2_20@@9 f_53@@9) (= (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@1) o2_20@@9 f_53@@9) (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@9 f_53@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@9 f_53@@9))
))) (forall ((o2_20@@10 T@Ref) (f_53@@10 T@Field_7959_19933) ) (!  (=> (select (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@1) null (PredicateMaskField_7959 pm_f_20@@0))) o2_20@@10 f_53@@10) (= (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@1) o2_20@@10 f_53@@10) (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@10 f_53@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@10 f_53@@10))
))) (forall ((o2_20@@11 T@Ref) (f_53@@11 T@Field_7988_7960) ) (!  (=> (select (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@1) null (PredicateMaskField_7959 pm_f_20@@0))) o2_20@@11 f_53@@11) (= (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@1) o2_20@@11 f_53@@11) (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@11 f_53@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@11 f_53@@11))
))) (forall ((o2_20@@12 T@Ref) (f_53@@12 T@Field_7988_53) ) (!  (=> (select (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@1) null (PredicateMaskField_7959 pm_f_20@@0))) o2_20@@12 f_53@@12) (= (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@1) o2_20@@12 f_53@@12) (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@12 f_53@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@12 f_53@@12))
))) (forall ((o2_20@@13 T@Ref) (f_53@@13 T@Field_19420_19421) ) (!  (=> (select (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@1) null (PredicateMaskField_7959 pm_f_20@@0))) o2_20@@13 f_53@@13) (= (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@1) o2_20@@13 f_53@@13) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@13 f_53@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@13 f_53@@13))
))) (forall ((o2_20@@14 T@Ref) (f_53@@14 T@Field_19928_19933) ) (!  (=> (select (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@1) null (PredicateMaskField_7959 pm_f_20@@0))) o2_20@@14 f_53@@14) (= (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@1) o2_20@@14 f_53@@14) (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@14 f_53@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@0) o2_20@@14 f_53@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_7959_55610 pm_f_20@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15553) (ExhaleHeap@@1 T@PolymorphicMapType_15553) (Mask@@2 T@PolymorphicMapType_15574) (pm_f_20@@1 T@Field_19420_19421) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7988_7989 Mask@@2 null pm_f_20@@1) (IsWandField_7988_58896 pm_f_20@@1)) (and (and (and (and (and (and (and (forall ((o2_20@@15 T@Ref) (f_53@@15 T@Field_15626_15627) ) (!  (=> (select (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@2) null (WandMaskField_7988 pm_f_20@@1))) o2_20@@15 f_53@@15) (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@2) o2_20@@15 f_53@@15) (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@15 f_53@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@15 f_53@@15))
)) (forall ((o2_20@@16 T@Ref) (f_53@@16 T@Field_15613_53) ) (!  (=> (select (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@2) null (WandMaskField_7988 pm_f_20@@1))) o2_20@@16 f_53@@16) (= (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@2) o2_20@@16 f_53@@16) (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@16 f_53@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@16 f_53@@16))
))) (forall ((o2_20@@17 T@Ref) (f_53@@17 T@Field_7959_7989) ) (!  (=> (select (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@2) null (WandMaskField_7988 pm_f_20@@1))) o2_20@@17 f_53@@17) (= (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@2) o2_20@@17 f_53@@17) (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@17 f_53@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@17 f_53@@17))
))) (forall ((o2_20@@18 T@Ref) (f_53@@18 T@Field_7959_19933) ) (!  (=> (select (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@2) null (WandMaskField_7988 pm_f_20@@1))) o2_20@@18 f_53@@18) (= (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@2) o2_20@@18 f_53@@18) (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@18 f_53@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@18 f_53@@18))
))) (forall ((o2_20@@19 T@Ref) (f_53@@19 T@Field_7988_7960) ) (!  (=> (select (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@2) null (WandMaskField_7988 pm_f_20@@1))) o2_20@@19 f_53@@19) (= (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@2) o2_20@@19 f_53@@19) (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@19 f_53@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@19 f_53@@19))
))) (forall ((o2_20@@20 T@Ref) (f_53@@20 T@Field_7988_53) ) (!  (=> (select (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@2) null (WandMaskField_7988 pm_f_20@@1))) o2_20@@20 f_53@@20) (= (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@2) o2_20@@20 f_53@@20) (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@20 f_53@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@20 f_53@@20))
))) (forall ((o2_20@@21 T@Ref) (f_53@@21 T@Field_19420_19421) ) (!  (=> (select (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@2) null (WandMaskField_7988 pm_f_20@@1))) o2_20@@21 f_53@@21) (= (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@2) o2_20@@21 f_53@@21) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@21 f_53@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@21 f_53@@21))
))) (forall ((o2_20@@22 T@Ref) (f_53@@22 T@Field_19928_19933) ) (!  (=> (select (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@2) null (WandMaskField_7988 pm_f_20@@1))) o2_20@@22 f_53@@22) (= (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@2) o2_20@@22 f_53@@22) (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@22 f_53@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@1) o2_20@@22 f_53@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_7988_58896 pm_f_20@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15553) (ExhaleHeap@@2 T@PolymorphicMapType_15553) (Mask@@3 T@PolymorphicMapType_15574) (pm_f_20@@2 T@Field_7959_7989) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7959_7989 Mask@@3 null pm_f_20@@2) (IsWandField_7959_58539 pm_f_20@@2)) (and (and (and (and (and (and (and (forall ((o2_20@@23 T@Ref) (f_53@@23 T@Field_15626_15627) ) (!  (=> (select (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@3) null (WandMaskField_7959 pm_f_20@@2))) o2_20@@23 f_53@@23) (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@3) o2_20@@23 f_53@@23) (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@23 f_53@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@23 f_53@@23))
)) (forall ((o2_20@@24 T@Ref) (f_53@@24 T@Field_15613_53) ) (!  (=> (select (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@3) null (WandMaskField_7959 pm_f_20@@2))) o2_20@@24 f_53@@24) (= (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@3) o2_20@@24 f_53@@24) (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@24 f_53@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@24 f_53@@24))
))) (forall ((o2_20@@25 T@Ref) (f_53@@25 T@Field_7959_7989) ) (!  (=> (select (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@3) null (WandMaskField_7959 pm_f_20@@2))) o2_20@@25 f_53@@25) (= (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@3) o2_20@@25 f_53@@25) (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@25 f_53@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@25 f_53@@25))
))) (forall ((o2_20@@26 T@Ref) (f_53@@26 T@Field_7959_19933) ) (!  (=> (select (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@3) null (WandMaskField_7959 pm_f_20@@2))) o2_20@@26 f_53@@26) (= (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@3) o2_20@@26 f_53@@26) (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@26 f_53@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@26 f_53@@26))
))) (forall ((o2_20@@27 T@Ref) (f_53@@27 T@Field_7988_7960) ) (!  (=> (select (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@3) null (WandMaskField_7959 pm_f_20@@2))) o2_20@@27 f_53@@27) (= (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@3) o2_20@@27 f_53@@27) (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@27 f_53@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@27 f_53@@27))
))) (forall ((o2_20@@28 T@Ref) (f_53@@28 T@Field_7988_53) ) (!  (=> (select (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@3) null (WandMaskField_7959 pm_f_20@@2))) o2_20@@28 f_53@@28) (= (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@3) o2_20@@28 f_53@@28) (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@28 f_53@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@28 f_53@@28))
))) (forall ((o2_20@@29 T@Ref) (f_53@@29 T@Field_19420_19421) ) (!  (=> (select (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@3) null (WandMaskField_7959 pm_f_20@@2))) o2_20@@29 f_53@@29) (= (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@3) o2_20@@29 f_53@@29) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@29 f_53@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@29 f_53@@29))
))) (forall ((o2_20@@30 T@Ref) (f_53@@30 T@Field_19928_19933) ) (!  (=> (select (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@3) null (WandMaskField_7959 pm_f_20@@2))) o2_20@@30 f_53@@30) (= (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@3) o2_20@@30 f_53@@30) (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@30 f_53@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@2) o2_20@@30 f_53@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_7959_58539 pm_f_20@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15553) (Heap1@@0 T@PolymorphicMapType_15553) (Heap2 T@PolymorphicMapType_15553) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((l1_1@@1 T@PredicateInstanceDomainType) (l2 T@PredicateInstanceDomainType) (l3 T@PredicateInstanceDomainType) ) (!  (=> (and (nestedPredicates l1_1@@1 l2) (nestedPredicates l2 l3)) (nestedPredicates l1_1@@1 l3))
 :qid |stdinbpl.222:15|
 :skolemid |24|
 :pattern ( (nestedPredicates l1_1@@1 l2) (nestedPredicates l2 l3))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19928_19933) ) (!  (not (select (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_19420_19421) ) (!  (not (select (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7988_53) ) (!  (not (select (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7988_7960) ) (!  (not (select (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7959_19933) ) (!  (not (select (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7959_7989) ) (!  (not (select (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_15613_53) ) (!  (not (select (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_15626_15627) ) (!  (not (select (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((xs T@Ref) ) (! (IsPredicateField_7988_7989 (list xs))
 :qid |stdinbpl.310:15|
 :skolemid |30|
 :pattern ( (list xs))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15553) (xs@@0 T@Ref) ) (! (dummyFunction_7981 (|PI_list#triggerStateless| xs@@0))
 :qid |stdinbpl.259:15|
 :skolemid |27|
 :pattern ( (|PI_list'| Heap@@4 xs@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15553) (xs@@1 T@Ref) ) (! (|list#everUsed_7988| (list xs@@1))
 :qid |stdinbpl.329:15|
 :skolemid |34|
 :pattern ( (|list#trigger_7988| Heap@@5 (list xs@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15553) (xs@@2 T@Ref) ) (!  (and (= (PI_list Heap@@6 xs@@2) (|PI_list'| Heap@@6 xs@@2)) (dummyFunction_7981 (|PI_list#triggerStateless| xs@@2)))
 :qid |stdinbpl.255:15|
 :skolemid |26|
 :pattern ( (PI_list Heap@@6 xs@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15553) (ExhaleHeap@@3 T@PolymorphicMapType_15553) (Mask@@4 T@PolymorphicMapType_15574) (pm_f_20@@3 T@Field_19420_19421) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7988_7989 Mask@@4 null pm_f_20@@3) (IsPredicateField_7988_7989 pm_f_20@@3)) (= (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@7) null (PredicateMaskField_7988 pm_f_20@@3)) (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@3) null (PredicateMaskField_7988 pm_f_20@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_7988_7989 pm_f_20@@3) (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@3) null (PredicateMaskField_7988 pm_f_20@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15553) (ExhaleHeap@@4 T@PolymorphicMapType_15553) (Mask@@5 T@PolymorphicMapType_15574) (pm_f_20@@4 T@Field_7959_7989) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_7959_7989 Mask@@5 null pm_f_20@@4) (IsPredicateField_7959_55610 pm_f_20@@4)) (= (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@8) null (PredicateMaskField_7959 pm_f_20@@4)) (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@4) null (PredicateMaskField_7959 pm_f_20@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_7959_55610 pm_f_20@@4) (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@4) null (PredicateMaskField_7959 pm_f_20@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15553) (ExhaleHeap@@5 T@PolymorphicMapType_15553) (Mask@@6 T@PolymorphicMapType_15574) (pm_f_20@@5 T@Field_19420_19421) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7988_7989 Mask@@6 null pm_f_20@@5) (IsWandField_7988_58896 pm_f_20@@5)) (= (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@9) null (WandMaskField_7988 pm_f_20@@5)) (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@5) null (WandMaskField_7988 pm_f_20@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_7988_58896 pm_f_20@@5) (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@5) null (WandMaskField_7988 pm_f_20@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15553) (ExhaleHeap@@6 T@PolymorphicMapType_15553) (Mask@@7 T@PolymorphicMapType_15574) (pm_f_20@@6 T@Field_7959_7989) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_7959_7989 Mask@@7 null pm_f_20@@6) (IsWandField_7959_58539 pm_f_20@@6)) (= (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@10) null (WandMaskField_7959 pm_f_20@@6)) (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@6) null (WandMaskField_7959 pm_f_20@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_7959_58539 pm_f_20@@6) (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@6) null (WandMaskField_7959 pm_f_20@@6)))
)))
(assert (forall ((xs@@3 T@Ref) (xs2 T@Ref) ) (!  (=> (= (list xs@@3) (list xs2)) (= xs@@3 xs2))
 :qid |stdinbpl.320:15|
 :skolemid |32|
 :pattern ( (list xs@@3) (list xs2))
)))
(assert (forall ((xs@@4 T@Ref) (xs2@@0 T@Ref) ) (!  (=> (= (|list#sm| xs@@4) (|list#sm| xs2@@0)) (= xs@@4 xs2@@0))
 :qid |stdinbpl.324:15|
 :skolemid |33|
 :pattern ( (|list#sm| xs@@4) (|list#sm| xs2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15553) (ExhaleHeap@@7 T@PolymorphicMapType_15553) (Mask@@8 T@PolymorphicMapType_15574) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@11) o_41 $allocated) (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap@@7) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap@@7) o_41 $allocated))
)))
(assert (forall ((p T@Field_7959_7989) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15613_15613 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15613_15613 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_19420_19421) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7988_7988 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7988_7988 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_7959_7960 next)))
(assert  (not (IsWandField_7959_7960 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15553) (ExhaleHeap@@8 T@PolymorphicMapType_15553) (Mask@@9 T@PolymorphicMapType_15574) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_15574) (o_2@@7 T@Ref) (f_4@@7 T@Field_7959_19933) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_7959_64607 f_4@@7))) (not (IsWandField_7959_64623 f_4@@7))) (<= (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15574) (o_2@@8 T@Ref) (f_4@@8 T@Field_15613_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_7959_53 f_4@@8))) (not (IsWandField_7959_53 f_4@@8))) (<= (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15574) (o_2@@9 T@Ref) (f_4@@9 T@Field_15626_15627) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_7959_7960 f_4@@9))) (not (IsWandField_7959_7960 f_4@@9))) (<= (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15574) (o_2@@10 T@Ref) (f_4@@10 T@Field_7959_7989) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7959_55610 f_4@@10))) (not (IsWandField_7959_58539 f_4@@10))) (<= (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15574) (o_2@@11 T@Ref) (f_4@@11 T@Field_19928_19933) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_7988_63958 f_4@@11))) (not (IsWandField_7988_63974 f_4@@11))) (<= (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15574) (o_2@@12 T@Ref) (f_4@@12 T@Field_7988_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_7988_53 f_4@@12))) (not (IsWandField_7988_53 f_4@@12))) (<= (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15574) (o_2@@13 T@Ref) (f_4@@13 T@Field_7988_7960) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_7988_7960 f_4@@13))) (not (IsWandField_7988_7960 f_4@@13))) (<= (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15574) (o_2@@14 T@Ref) (f_4@@14 T@Field_19420_19421) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_7988_7989 f_4@@14))) (not (IsWandField_7988_58896 f_4@@14))) (<= (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15574) (o_2@@15 T@Ref) (f_4@@15 T@Field_19928_19933) ) (! (= (HasDirectPerm_7988_55365 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7988_55365 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15574) (o_2@@16 T@Ref) (f_4@@16 T@Field_7988_53) ) (! (= (HasDirectPerm_7988_53 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7988_53 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15574) (o_2@@17 T@Ref) (f_4@@17 T@Field_19420_19421) ) (! (= (HasDirectPerm_7988_7989 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7988_7989 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15574) (o_2@@18 T@Ref) (f_4@@18 T@Field_7988_7960) ) (! (= (HasDirectPerm_7988_7960 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7988_7960 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15574) (o_2@@19 T@Ref) (f_4@@19 T@Field_7959_19933) ) (! (= (HasDirectPerm_7959_54445 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7959_54445 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_15574) (o_2@@20 T@Ref) (f_4@@20 T@Field_15613_53) ) (! (= (HasDirectPerm_7959_53 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7959_53 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15574) (o_2@@21 T@Ref) (f_4@@21 T@Field_7959_7989) ) (! (= (HasDirectPerm_7959_7989 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7959_7989 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15574) (o_2@@22 T@Ref) (f_4@@22 T@Field_15626_15627) ) (! (= (HasDirectPerm_7959_7960 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7959_7960 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15553) (ExhaleHeap@@9 T@PolymorphicMapType_15553) (Mask@@26 T@PolymorphicMapType_15574) (o_41@@0 T@Ref) (f_53@@31 T@Field_19928_19933) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_7988_55365 Mask@@26 o_41@@0 f_53@@31) (= (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@13) o_41@@0 f_53@@31) (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@9) o_41@@0 f_53@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| ExhaleHeap@@9) o_41@@0 f_53@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15553) (ExhaleHeap@@10 T@PolymorphicMapType_15553) (Mask@@27 T@PolymorphicMapType_15574) (o_41@@1 T@Ref) (f_53@@32 T@Field_7988_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_7988_53 Mask@@27 o_41@@1 f_53@@32) (= (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@14) o_41@@1 f_53@@32) (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| ExhaleHeap@@10) o_41@@1 f_53@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| ExhaleHeap@@10) o_41@@1 f_53@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15553) (ExhaleHeap@@11 T@PolymorphicMapType_15553) (Mask@@28 T@PolymorphicMapType_15574) (o_41@@2 T@Ref) (f_53@@33 T@Field_19420_19421) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_7988_7989 Mask@@28 o_41@@2 f_53@@33) (= (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@15) o_41@@2 f_53@@33) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| ExhaleHeap@@11) o_41@@2 f_53@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| ExhaleHeap@@11) o_41@@2 f_53@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15553) (ExhaleHeap@@12 T@PolymorphicMapType_15553) (Mask@@29 T@PolymorphicMapType_15574) (o_41@@3 T@Ref) (f_53@@34 T@Field_7988_7960) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_7988_7960 Mask@@29 o_41@@3 f_53@@34) (= (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@16) o_41@@3 f_53@@34) (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| ExhaleHeap@@12) o_41@@3 f_53@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| ExhaleHeap@@12) o_41@@3 f_53@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15553) (ExhaleHeap@@13 T@PolymorphicMapType_15553) (Mask@@30 T@PolymorphicMapType_15574) (o_41@@4 T@Ref) (f_53@@35 T@Field_7959_19933) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_7959_54445 Mask@@30 o_41@@4 f_53@@35) (= (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@17) o_41@@4 f_53@@35) (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@13) o_41@@4 f_53@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| ExhaleHeap@@13) o_41@@4 f_53@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15553) (ExhaleHeap@@14 T@PolymorphicMapType_15553) (Mask@@31 T@PolymorphicMapType_15574) (o_41@@5 T@Ref) (f_53@@36 T@Field_15613_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_7959_53 Mask@@31 o_41@@5 f_53@@36) (= (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@18) o_41@@5 f_53@@36) (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap@@14) o_41@@5 f_53@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| ExhaleHeap@@14) o_41@@5 f_53@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15553) (ExhaleHeap@@15 T@PolymorphicMapType_15553) (Mask@@32 T@PolymorphicMapType_15574) (o_41@@6 T@Ref) (f_53@@37 T@Field_7959_7989) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_7959_7989 Mask@@32 o_41@@6 f_53@@37) (= (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@19) o_41@@6 f_53@@37) (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| ExhaleHeap@@15) o_41@@6 f_53@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| ExhaleHeap@@15) o_41@@6 f_53@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15553) (ExhaleHeap@@16 T@PolymorphicMapType_15553) (Mask@@33 T@PolymorphicMapType_15574) (o_41@@7 T@Ref) (f_53@@38 T@Field_15626_15627) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_7959_7960 Mask@@33 o_41@@7 f_53@@38) (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@20) o_41@@7 f_53@@38) (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| ExhaleHeap@@16) o_41@@7 f_53@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| ExhaleHeap@@16) o_41@@7 f_53@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_7959_19933) ) (! (= (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_15613_53) ) (! (= (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_15626_15627) ) (! (= (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_7959_7989) ) (! (= (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_19928_19933) ) (! (= (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_7988_53) ) (! (= (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_7988_7960) ) (! (= (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_19420_19421) ) (! (= (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15574) (SummandMask1 T@PolymorphicMapType_15574) (SummandMask2 T@PolymorphicMapType_15574) (o_2@@31 T@Ref) (f_4@@31 T@Field_7959_19933) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15574) (SummandMask1@@0 T@PolymorphicMapType_15574) (SummandMask2@@0 T@PolymorphicMapType_15574) (o_2@@32 T@Ref) (f_4@@32 T@Field_15613_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15574) (SummandMask1@@1 T@PolymorphicMapType_15574) (SummandMask2@@1 T@PolymorphicMapType_15574) (o_2@@33 T@Ref) (f_4@@33 T@Field_15626_15627) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15574) (SummandMask1@@2 T@PolymorphicMapType_15574) (SummandMask2@@2 T@PolymorphicMapType_15574) (o_2@@34 T@Ref) (f_4@@34 T@Field_7959_7989) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15574) (SummandMask1@@3 T@PolymorphicMapType_15574) (SummandMask2@@3 T@PolymorphicMapType_15574) (o_2@@35 T@Ref) (f_4@@35 T@Field_19928_19933) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15574) (SummandMask1@@4 T@PolymorphicMapType_15574) (SummandMask2@@4 T@PolymorphicMapType_15574) (o_2@@36 T@Ref) (f_4@@36 T@Field_7988_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15574) (SummandMask1@@5 T@PolymorphicMapType_15574) (SummandMask2@@5 T@PolymorphicMapType_15574) (o_2@@37 T@Ref) (f_4@@37 T@Field_7988_7960) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15574) (SummandMask1@@6 T@PolymorphicMapType_15574) (SummandMask2@@6 T@PolymorphicMapType_15574) (o_2@@38 T@Ref) (f_4@@38 T@Field_19420_19421) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((l1_1@@2 T@PredicateInstanceDomainType) (l2@@0 T@PredicateInstanceDomainType) ) (! (= (decreasing_7950 l1_1@@2 l2@@0) (nestedPredicates l1_1@@2 l2@@0))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (nestedPredicates l1_1@@2 l2@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15553) (Mask@@34 T@PolymorphicMapType_15574) (xs@@5 T@Ref) ) (!  (=> (state Heap@@21 Mask@@34) (= (|PI_list'| Heap@@21 xs@@5) (|PI_list#frame| (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@21) null (list xs@@5)) xs@@5)))
 :qid |stdinbpl.266:15|
 :skolemid |28|
 :pattern ( (state Heap@@21 Mask@@34) (|PI_list'| Heap@@21 xs@@5))
)))
(assert (forall ((xs@@6 T@Ref) ) (! (= (getPredWandId_7988_7989 (list xs@@6)) 0)
 :qid |stdinbpl.314:15|
 :skolemid |31|
 :pattern ( (list xs@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15553) (o_15 T@Ref) (f_54 T@Field_19928_19933) (v T@PolymorphicMapType_16102) ) (! (succHeap Heap@@22 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@22) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@22) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@22) (store (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@22) o_15 f_54 v) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@22) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@22) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@22) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@22) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@22) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@22) (store (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@22) o_15 f_54 v) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@22) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@22) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@22) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15553) (o_15@@0 T@Ref) (f_54@@0 T@Field_19420_19421) (v@@0 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@23) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@23) (store (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@23) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@23) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@23) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@23) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@23) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@23) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@23) (store (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@23) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@23) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@23) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@23) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@23) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15553) (o_15@@1 T@Ref) (f_54@@1 T@Field_7988_7960) (v@@1 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@24) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@24) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@24) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@24) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@24) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@24) (store (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@24) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@24) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@24) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@24) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@24) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@24) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@24) (store (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@24) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15553) (o_15@@2 T@Ref) (f_54@@2 T@Field_7988_53) (v@@2 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@25) (store (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@25) o_15@@2 f_54@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@25) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@25) (store (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@25) o_15@@2 f_54@@2 v@@2)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15553) (o_15@@3 T@Ref) (f_54@@3 T@Field_7959_19933) (v@@3 T@PolymorphicMapType_16102) ) (! (succHeap Heap@@26 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@26) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@26) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@26) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@26) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@26) (store (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@26) o_15@@3 f_54@@3 v@@3) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@26) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@26) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@26) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@26) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@26) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@26) (store (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@26) o_15@@3 f_54@@3 v@@3) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@26) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15553) (o_15@@4 T@Ref) (f_54@@4 T@Field_7959_7989) (v@@4 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@27) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@27) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@27) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@27) (store (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@27) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@27) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@27) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@27) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@27) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@27) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@27) (store (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@27) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@27) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@27) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15553) (o_15@@5 T@Ref) (f_54@@5 T@Field_15626_15627) (v@@5 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@28) (store (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@28) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@28) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@28) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@28) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@28) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@28) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@28) (store (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@28) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@28) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@28) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@28) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@28) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@28) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15553) (o_15@@6 T@Ref) (f_54@@6 T@Field_15613_53) (v@@6 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_15553 (store (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@29) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15553 (store (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@29) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@29) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@29)))
)))
(assert (forall ((xs@@7 T@Ref) ) (! (= (PredicateMaskField_7988 (list xs@@7)) (|list#sm| xs@@7))
 :qid |stdinbpl.306:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_7988 (list xs@@7)))
)))
(assert (forall ((o_15@@7 T@Ref) (f_23 T@Field_15626_15627) (Heap@@30 T@PolymorphicMapType_15553) ) (!  (=> (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@30) o_15@@7 $allocated) (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@30) (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@30) o_15@@7 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@30) o_15@@7 f_23))
)))
(assert (forall ((p@@2 T@Field_7959_7989) (v_1@@1 T@FrameType) (q T@Field_7959_7989) (w@@1 T@FrameType) (r T@Field_7959_7989) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15613_15613 p@@2 v_1@@1 q w@@1) (InsidePredicate_15613_15613 q w@@1 r u)) (InsidePredicate_15613_15613 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15613_15613 p@@2 v_1@@1 q w@@1) (InsidePredicate_15613_15613 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_7959_7989) (v_1@@2 T@FrameType) (q@@0 T@Field_7959_7989) (w@@2 T@FrameType) (r@@0 T@Field_19420_19421) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_15613_15613 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_15613_7988 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_15613_7988 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15613_15613 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_15613_7988 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_7959_7989) (v_1@@3 T@FrameType) (q@@1 T@Field_19420_19421) (w@@3 T@FrameType) (r@@1 T@Field_7959_7989) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_15613_7988 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7988_15613 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_15613_15613 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15613_7988 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7988_15613 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_7959_7989) (v_1@@4 T@FrameType) (q@@2 T@Field_19420_19421) (w@@4 T@FrameType) (r@@2 T@Field_19420_19421) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_15613_7988 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7988_7988 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_15613_7988 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15613_7988 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7988_7988 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_19420_19421) (v_1@@5 T@FrameType) (q@@3 T@Field_7959_7989) (w@@5 T@FrameType) (r@@3 T@Field_7959_7989) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7988_15613 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_15613_15613 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7988_15613 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7988_15613 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_15613_15613 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_19420_19421) (v_1@@6 T@FrameType) (q@@4 T@Field_7959_7989) (w@@6 T@FrameType) (r@@4 T@Field_19420_19421) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7988_15613 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_15613_7988 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7988_7988 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7988_15613 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_15613_7988 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_19420_19421) (v_1@@7 T@FrameType) (q@@5 T@Field_19420_19421) (w@@7 T@FrameType) (r@@5 T@Field_7959_7989) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7988_7988 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7988_15613 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7988_15613 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7988_7988 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7988_15613 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_19420_19421) (v_1@@8 T@FrameType) (q@@6 T@Field_19420_19421) (w@@8 T@FrameType) (r@@6 T@Field_19420_19421) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7988_7988 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7988_7988 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7988_7988 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7988_7988 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7988_7988 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@4 () T@PolymorphicMapType_15574)
(declare-fun Heap@1 () T@PolymorphicMapType_15553)
(declare-fun xs@@8 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_15574)
(declare-fun Mask@8 () T@PolymorphicMapType_15574)
(declare-fun Mask@10 () T@PolymorphicMapType_15574)
(declare-fun Mask@9 () T@PolymorphicMapType_15574)
(declare-fun Heap@7 () T@PolymorphicMapType_15553)
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_15553)
(declare-fun Heap@@31 () T@PolymorphicMapType_15553)
(declare-fun Heap@5 () T@PolymorphicMapType_15553)
(declare-fun newPMask@0 () T@PolymorphicMapType_16102)
(declare-fun Heap@6 () T@PolymorphicMapType_15553)
(declare-fun Heap@4 () T@PolymorphicMapType_15553)
(declare-fun Heap@2 () T@PolymorphicMapType_15553)
(declare-fun Heap@3 () T@PolymorphicMapType_15553)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@7 () T@PolymorphicMapType_15574)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_7960 (T@Ref) T@FrameType)
(declare-fun FrameFragment_7989 (T@FrameType) T@FrameType)
(declare-fun Mask@6 () T@PolymorphicMapType_15574)
(declare-fun Mask@5 () T@PolymorphicMapType_15574)
(declare-fun list_16816818320@0 () T@PredicateInstanceDomainType)
(declare-fun list__169813300@0 () T@PredicateInstanceDomainType)
(declare-fun Mask@2 () T@PolymorphicMapType_15574)
(declare-fun Mask@3 () T@PolymorphicMapType_15574)
(declare-fun Mask@1 () T@PolymorphicMapType_15574)
(declare-fun Heap@0 () T@PolymorphicMapType_15553)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id predicateTest2)
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
 (=> (= (ControlFlow 0 0) 66) (let ((anon47_Then_correct  (=> (= (ControlFlow 0 49) (- 0 48)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@4) null (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next))))))))
(let ((anon56_Then_correct  (=> (= (ControlFlow 0 26) (- 0 25)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@0) null (list xs@@8)))))))
(let ((anon59_Then_correct  (=> (= (ControlFlow 0 22) (- 0 21)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@0) null (list xs@@8)))))))
(let ((anon58_Then_correct  (=> (= (ControlFlow 0 20) (- 0 19)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@8) null (list xs@@8)))))))
(let ((anon40_correct true))
(let ((anon61_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 11) 8)) anon40_correct)))
(let ((anon61_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@10) null (list xs@@8)))) (=> (<= FullPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@10) null (list xs@@8))) (=> (= (ControlFlow 0 9) 8) anon40_correct))))))
(let ((anon38_correct  (=> (and (= Mask@9 (PolymorphicMapType_15574 (store (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@8) null (list xs@@8) (- (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@8) null (list xs@@8)) FullPerm)) (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@8) (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@8) (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@8) (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@8) (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@8) (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@8) (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@8))) (IdenticalOnKnownLocations Heap@7 ExhaleHeap@4 Mask@9)) (=> (and (and (= Mask@10 (PolymorphicMapType_15574 (store (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@9) null (list xs@@8) (+ (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@9) null (list xs@@8)) FullPerm)) (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@9) (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@9) (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@9) (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@9) (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@9) (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@9) (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@9))) (state ExhaleHeap@4 Mask@10)) (and (state ExhaleHeap@4 Mask@10) (state ExhaleHeap@4 Mask@10))) (and (=> (= (ControlFlow 0 12) 9) anon61_Then_correct) (=> (= (ControlFlow 0 12) 11) anon61_Else_correct))))))
(let ((anon60_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 15) 12)) anon38_correct)))
(let ((anon60_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= FullPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@8) null (list xs@@8)))) (=> (<= FullPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@8) null (list xs@@8))) (=> (= (ControlFlow 0 13) 12) anon38_correct))))))
(let ((anon36_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (and (decreasing_7950 (PI_list Heap@7 xs@@8) (PI_list Heap@@31 xs@@8)) (bounded_7952 (PI_list Heap@@31 xs@@8)))) (=> (and (decreasing_7950 (PI_list Heap@7 xs@@8) (PI_list Heap@@31 xs@@8)) (bounded_7952 (PI_list Heap@@31 xs@@8))) (=> (state Heap@7 Mask@8) (and (=> (= (ControlFlow 0 16) 13) anon60_Then_correct) (=> (= (ControlFlow 0 16) 15) anon60_Else_correct)))))))
(let ((anon57_Then_correct  (=> (not (and (decreasing_7950 (PI_list Heap@7 xs@@8) (PI_list Heap@@31 xs@@8)) (bounded_7952 (PI_list Heap@@31 xs@@8)))) (and (and (=> (= (ControlFlow 0 23) 20) anon58_Then_correct) (=> (= (ControlFlow 0 23) 22) anon59_Then_correct)) (=> (= (ControlFlow 0 23) 16) anon36_correct)))))
(let ((anon57_Else_correct  (=> (and (and (decreasing_7950 (PI_list Heap@7 xs@@8) (PI_list Heap@@31 xs@@8)) (bounded_7952 (PI_list Heap@@31 xs@@8))) (= (ControlFlow 0 18) 16)) anon36_correct)))
(let ((anon55_Then_correct  (=> (decreasing_7950 (PI_list Heap@7 xs@@8) (PI_list Heap@@31 xs@@8)) (and (and (=> (= (ControlFlow 0 27) 26) anon56_Then_correct) (=> (= (ControlFlow 0 27) 23) anon57_Then_correct)) (=> (= (ControlFlow 0 27) 18) anon57_Else_correct)))))
(let ((anon55_Else_correct  (=> (not (decreasing_7950 (PI_list Heap@7 xs@@8) (PI_list Heap@@31 xs@@8))) (and (=> (= (ControlFlow 0 24) 23) anon57_Then_correct) (=> (= (ControlFlow 0 24) 18) anon57_Else_correct)))))
(let ((anon54_Then_correct  (=> (= (ControlFlow 0 7) (- 0 6)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@0) null (list xs@@8)))))))
(let ((anon53_Then_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@8) null (list xs@@8)))))))
(let ((anon24_correct  (=> (and (state Heap@7 Mask@8) (state Heap@7 Mask@8)) (and (and (and (=> (= (ControlFlow 0 28) 5) anon53_Then_correct) (=> (= (ControlFlow 0 28) 7) anon54_Then_correct)) (=> (= (ControlFlow 0 28) 27) anon55_Then_correct)) (=> (= (ControlFlow 0 28) 24) anon55_Else_correct)))))
(let ((anon52_Else_correct  (=> (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@5) xs@@8 next) null) (=> (and (= Heap@7 Heap@5) (= (ControlFlow 0 30) 28)) anon24_correct))))
(let ((anon52_Then_correct  (=> (not (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@5) xs@@8 next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_6 T@Ref) (f_12 T@Field_15626_15627) ) (!  (=> (or (select (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| xs@@8))) o_6 f_12) (select (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@5) xs@@8 next)))) o_6 f_12)) (select (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| newPMask@0) o_6 f_12))
 :qid |stdinbpl.878:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| newPMask@0) o_6 f_12))
)) (forall ((o_6@@0 T@Ref) (f_12@@0 T@Field_15613_53) ) (!  (=> (or (select (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| xs@@8))) o_6@@0 f_12@@0) (select (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@5) xs@@8 next)))) o_6@@0 f_12@@0)) (select (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| newPMask@0) o_6@@0 f_12@@0))
 :qid |stdinbpl.878:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| newPMask@0) o_6@@0 f_12@@0))
))) (forall ((o_6@@1 T@Ref) (f_12@@1 T@Field_7959_7989) ) (!  (=> (or (select (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| xs@@8))) o_6@@1 f_12@@1) (select (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@5) xs@@8 next)))) o_6@@1 f_12@@1)) (select (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| newPMask@0) o_6@@1 f_12@@1))
 :qid |stdinbpl.878:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| newPMask@0) o_6@@1 f_12@@1))
))) (forall ((o_6@@2 T@Ref) (f_12@@2 T@Field_7959_19933) ) (!  (=> (or (select (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| xs@@8))) o_6@@2 f_12@@2) (select (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@5) xs@@8 next)))) o_6@@2 f_12@@2)) (select (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| newPMask@0) o_6@@2 f_12@@2))
 :qid |stdinbpl.878:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| newPMask@0) o_6@@2 f_12@@2))
))) (forall ((o_6@@3 T@Ref) (f_12@@3 T@Field_7988_7960) ) (!  (=> (or (select (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| xs@@8))) o_6@@3 f_12@@3) (select (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@5) xs@@8 next)))) o_6@@3 f_12@@3)) (select (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| newPMask@0) o_6@@3 f_12@@3))
 :qid |stdinbpl.878:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| newPMask@0) o_6@@3 f_12@@3))
))) (forall ((o_6@@4 T@Ref) (f_12@@4 T@Field_7988_53) ) (!  (=> (or (select (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| xs@@8))) o_6@@4 f_12@@4) (select (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@5) xs@@8 next)))) o_6@@4 f_12@@4)) (select (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| newPMask@0) o_6@@4 f_12@@4))
 :qid |stdinbpl.878:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| newPMask@0) o_6@@4 f_12@@4))
))) (forall ((o_6@@5 T@Ref) (f_12@@5 T@Field_19420_19421) ) (!  (=> (or (select (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| xs@@8))) o_6@@5 f_12@@5) (select (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@5) xs@@8 next)))) o_6@@5 f_12@@5)) (select (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| newPMask@0) o_6@@5 f_12@@5))
 :qid |stdinbpl.878:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| newPMask@0) o_6@@5 f_12@@5))
))) (forall ((o_6@@6 T@Ref) (f_12@@6 T@Field_19928_19933) ) (!  (=> (or (select (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| xs@@8))) o_6@@6 f_12@@6) (select (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@5) xs@@8 next)))) o_6@@6 f_12@@6)) (select (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| newPMask@0) o_6@@6 f_12@@6))
 :qid |stdinbpl.878:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| newPMask@0) o_6@@6 f_12@@6))
))) (= Heap@6 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@5) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@5) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@5) (store (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@5) null (|list#sm| xs@@8) newPMask@0) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@5) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@5) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@5) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@5)))) (and (= Heap@7 Heap@6) (= (ControlFlow 0 29) 28))) anon24_correct))))
(let ((anon22_correct  (=> (= Heap@5 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@4) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@4) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@4) (store (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@4) null (|list#sm| xs@@8) (PolymorphicMapType_16102 (store (|PolymorphicMapType_16102_7959_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@4) null (|list#sm| xs@@8))) xs@@8 next true) (|PolymorphicMapType_16102_7959_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@4) null (|list#sm| xs@@8))) (|PolymorphicMapType_16102_7959_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@4) null (|list#sm| xs@@8))) (|PolymorphicMapType_16102_7959_56881#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@4) null (|list#sm| xs@@8))) (|PolymorphicMapType_16102_19420_7960#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@4) null (|list#sm| xs@@8))) (|PolymorphicMapType_16102_19420_53#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@4) null (|list#sm| xs@@8))) (|PolymorphicMapType_16102_19420_19421#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@4) null (|list#sm| xs@@8))) (|PolymorphicMapType_16102_19420_57731#PolymorphicMapType_16102| (select (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@4) null (|list#sm| xs@@8))))) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@4) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@4) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@4) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@4))) (and (=> (= (ControlFlow 0 31) 29) anon52_Then_correct) (=> (= (ControlFlow 0 31) 30) anon52_Else_correct)))))
(let ((anon51_Else_correct  (=> (HasDirectPerm_7988_7989 Mask@8 null (list xs@@8)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 33) 31)) anon22_correct))))
(let ((anon51_Then_correct  (=> (not (HasDirectPerm_7988_7989 Mask@8 null (list xs@@8))) (=> (and (and (= Heap@2 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@1) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@1) (store (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@1) null (|list#sm| xs@@8) ZeroPMask) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@1) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@1) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@1) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@1))) (= Heap@3 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@2) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@2) (store (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@2) null (list xs@@8) freshVersion@0) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@2) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@2) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@2) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@2) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 32) 31))) anon22_correct))))
(let ((anon20_correct  (=> (= Mask@8 (PolymorphicMapType_15574 (store (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@7) null (list xs@@8) (+ (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@7) null (list xs@@8)) FullPerm)) (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@7) (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@7) (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@7) (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@7) (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@7) (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@7) (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@7))) (=> (and (and (state Heap@1 Mask@8) (state Heap@1 Mask@8)) (and (|list#trigger_7988| Heap@1 (list xs@@8)) (= (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@1) null (list xs@@8)) (CombineFrames (FrameFragment_7960 (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next)) (FrameFragment_7989 (ite (not (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next) null)) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@1) null (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 34) 32) anon51_Then_correct) (=> (= (ControlFlow 0 34) 33) anon51_Else_correct))))))
(let ((anon19_correct  (=> (and (and (= Mask@6 (PolymorphicMapType_15574 (store (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@5) null (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next)) (- (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@5) null (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next))) FullPerm)) (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@5) (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@5) (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@5) (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@5) (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@5) (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@5) (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@5))) (InsidePredicate_7988_7988 (list xs@@8) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@1) null (list xs@@8)) (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next)) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@1) null (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next))))) (and (= Mask@7 Mask@6) (= (ControlFlow 0 36) 34))) anon20_correct)))
(let ((anon50_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 39) 36)) anon19_correct)))
(let ((anon50_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (<= FullPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@5) null (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next))))) (=> (<= FullPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@5) null (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next)))) (=> (= (ControlFlow 0 37) 36) anon19_correct))))))
(let ((anon49_Then_correct  (=> (not (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next) null)) (and (=> (= (ControlFlow 0 40) 37) anon50_Then_correct) (=> (= (ControlFlow 0 40) 39) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next) null) (=> (and (= Mask@7 Mask@5) (= (ControlFlow 0 35) 34)) anon20_correct))))
(let ((anon16_correct  (=> (= Mask@5 (PolymorphicMapType_15574 (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@4) (store (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@4) xs@@8 next (- (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@4) xs@@8 next) FullPerm)) (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@4) (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@4) (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@4) (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@4) (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@4) (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@4))) (and (=> (= (ControlFlow 0 41) 40) anon49_Then_correct) (=> (= (ControlFlow 0 41) 35) anon49_Else_correct)))))
(let ((anon48_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 44) 41)) anon16_correct)))
(let ((anon48_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (<= FullPerm (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@4) xs@@8 next))) (=> (<= FullPerm (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@4) xs@@8 next)) (=> (= (ControlFlow 0 42) 41) anon16_correct))))))
(let ((anon14_correct  (=> (state Heap@1 Mask@4) (and (=> (= (ControlFlow 0 45) (- 0 46)) (HasDirectPerm_7959_7960 Mask@4 xs@@8 next)) (=> (HasDirectPerm_7959_7960 Mask@4 xs@@8 next) (=> (state Heap@1 Mask@4) (and (=> (= (ControlFlow 0 45) 42) anon48_Then_correct) (=> (= (ControlFlow 0 45) 44) anon48_Else_correct))))))))
(let ((anon47_Else_correct  (=> (and (= list_16816818320@0 (PI_list Heap@1 (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next))) (state Heap@1 Mask@4)) (=> (and (and (nestedPredicates list_16816818320@0 list__169813300@0) (state Heap@1 Mask@4)) (and (state Heap@1 Mask@4) (= (ControlFlow 0 50) 45))) anon14_correct))))
(let ((anon46_Then_correct  (=> (not (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next) null)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (HasDirectPerm_7959_7960 Mask@4 xs@@8 next)) (=> (HasDirectPerm_7959_7960 Mask@4 xs@@8 next) (and (=> (= (ControlFlow 0 51) 49) anon47_Then_correct) (=> (= (ControlFlow 0 51) 50) anon47_Else_correct)))))))
(let ((anon46_Else_correct  (=> (and (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next) null) (= (ControlFlow 0 47) 45)) anon14_correct)))
(let ((anon10_correct  (=> (and (state Heap@1 Mask@4) (state Heap@1 Mask@4)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (HasDirectPerm_7959_7960 Mask@4 xs@@8 next)) (=> (HasDirectPerm_7959_7960 Mask@4 xs@@8 next) (and (=> (= (ControlFlow 0 53) 51) anon46_Then_correct) (=> (= (ControlFlow 0 53) 47) anon46_Else_correct)))))))
(let ((anon45_Else_correct  (=> (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next) null) (=> (and (= Mask@4 Mask@2) (= (ControlFlow 0 56) 53)) anon10_correct))))
(let ((anon45_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next) null)) (= Mask@3 (PolymorphicMapType_15574 (store (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@2) null (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next)) (+ (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@2) null (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next))) FullPerm)) (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@2) (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@2) (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@2) (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@2) (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@2) (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@2) (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@2)))) (=> (and (and (InsidePredicate_7988_7988 (list xs@@8) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@1) null (list xs@@8)) (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next)) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@1) null (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@1) xs@@8 next)))) (state Heap@1 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 55) 53))) anon10_correct))))
(let ((anon8_correct  (=> (not (= xs@@8 null)) (=> (and (= Mask@2 (PolymorphicMapType_15574 (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@1) (store (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@1) xs@@8 next (+ (select (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@1) xs@@8 next) FullPerm)) (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@1) (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@1) (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@1) (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@1) (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@1) (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@1))) (state Heap@1 Mask@2)) (and (=> (= (ControlFlow 0 57) 55) anon45_Then_correct) (=> (= (ControlFlow 0 57) 56) anon45_Else_correct))))))
(let ((anon44_Else_correct  (=> (HasDirectPerm_7988_7989 Mask@1 null (list xs@@8)) (=> (and (= Heap@1 Heap@@31) (= (ControlFlow 0 59) 57)) anon8_correct))))
(let ((anon44_Then_correct  (=> (and (and (not (HasDirectPerm_7988_7989 Mask@1 null (list xs@@8))) (= Heap@0 (PolymorphicMapType_15553 (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@31) (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@31) (store (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@31) null (list xs@@8) newVersion@0) (|PolymorphicMapType_15553_7992_28305#PolymorphicMapType_15553| Heap@@31) (|PolymorphicMapType_15553_7959_7989#PolymorphicMapType_15553| Heap@@31) (|PolymorphicMapType_15553_7959_54487#PolymorphicMapType_15553| Heap@@31) (|PolymorphicMapType_15553_7988_7960#PolymorphicMapType_15553| Heap@@31) (|PolymorphicMapType_15553_7988_53#PolymorphicMapType_15553| Heap@@31)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 58) 57))) anon8_correct)))
(let ((anon6_correct  (=> (= Mask@1 (PolymorphicMapType_15574 (store (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@0) null (list xs@@8) (- (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@0) null (list xs@@8)) FullPerm)) (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| Mask@0) (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| Mask@0) (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| Mask@0) (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| Mask@0) (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| Mask@0) (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| Mask@0) (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| Mask@0))) (and (=> (= (ControlFlow 0 60) 58) anon44_Then_correct) (=> (= (ControlFlow 0 60) 59) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 63) 60)) anon6_correct)))
(let ((anon43_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 61) (- 0 62)) (<= FullPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@0) null (list xs@@8)))) (=> (<= FullPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@0) null (list xs@@8))) (=> (= (ControlFlow 0 61) 60) anon6_correct))))))
(let ((anon42_Else_correct  (=> (and (and (= list__169813300@0 (PI_list Heap@@31 xs@@8)) (state Heap@@31 Mask@0)) (and (|list#trigger_7988| Heap@@31 (list xs@@8)) (= (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@31) null (list xs@@8)) (CombineFrames (FrameFragment_7960 (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@31) xs@@8 next)) (FrameFragment_7989 (ite (not (= (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@31) xs@@8 next) null)) (select (|PolymorphicMapType_15553_7988_7989#PolymorphicMapType_15553| Heap@@31) null (list (select (|PolymorphicMapType_15553_7825_7826#PolymorphicMapType_15553| Heap@@31) xs@@8 next))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 64) 61) anon43_Then_correct) (=> (= (ControlFlow 0 64) 63) anon43_Else_correct)))))
(let ((anon42_Then_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| Mask@0) null (list xs@@8)))))))
(let ((anon41_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@31 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_15553_7822_53#PolymorphicMapType_15553| Heap@@31) xs@@8 $allocated) (= Mask@0 (PolymorphicMapType_15574 (store (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| ZeroMask) null (list xs@@8) (+ (select (|PolymorphicMapType_15574_7988_7989#PolymorphicMapType_15574| ZeroMask) null (list xs@@8)) FullPerm)) (|PolymorphicMapType_15574_7959_7960#PolymorphicMapType_15574| ZeroMask) (|PolymorphicMapType_15574_7988_7960#PolymorphicMapType_15574| ZeroMask) (|PolymorphicMapType_15574_7988_53#PolymorphicMapType_15574| ZeroMask) (|PolymorphicMapType_15574_7988_62452#PolymorphicMapType_15574| ZeroMask) (|PolymorphicMapType_15574_7959_7989#PolymorphicMapType_15574| ZeroMask) (|PolymorphicMapType_15574_7959_53#PolymorphicMapType_15574| ZeroMask) (|PolymorphicMapType_15574_7959_62783#PolymorphicMapType_15574| ZeroMask)))) (and (state Heap@@31 Mask@0) (state Heap@@31 Mask@0))) (and (and (=> (= (ControlFlow 0 65) 1) anon41_Then_correct) (=> (= (ControlFlow 0 65) 3) anon42_Then_correct)) (=> (= (ControlFlow 0 65) 64) anon42_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 66) 65) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 16) (- 17))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
