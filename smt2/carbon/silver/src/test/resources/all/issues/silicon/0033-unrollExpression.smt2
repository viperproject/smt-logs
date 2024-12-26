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
(declare-sort T@Field_15292_53 0)
(declare-sort T@Field_15305_15306 0)
(declare-sort T@Field_19019_19020 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_21750_21755 0)
(declare-sort T@Field_7403_7480 0)
(declare-sort T@Field_7403_21755 0)
(declare-sort T@Field_7479_7404 0)
(declare-sort T@Field_7479_53 0)
(declare-datatypes ((T@PolymorphicMapType_15253 0)) (((PolymorphicMapType_15253 (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| (Array T@Ref T@Field_19019_19020 Real)) (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| (Array T@Ref T@Field_15305_15306 Real)) (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| (Array T@Ref T@Field_7479_7404 Real)) (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| (Array T@Ref T@Field_7479_53 Real)) (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| (Array T@Ref T@Field_21750_21755 Real)) (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| (Array T@Ref T@Field_7403_7480 Real)) (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| (Array T@Ref T@Field_15292_53 Real)) (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| (Array T@Ref T@Field_7403_21755 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15781 0)) (((PolymorphicMapType_15781 (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (Array T@Ref T@Field_15305_15306 Bool)) (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (Array T@Ref T@Field_15292_53 Bool)) (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (Array T@Ref T@Field_7403_7480 Bool)) (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (Array T@Ref T@Field_7403_21755 Bool)) (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (Array T@Ref T@Field_7479_7404 Bool)) (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (Array T@Ref T@Field_7479_53 Bool)) (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (Array T@Ref T@Field_19019_19020 Bool)) (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (Array T@Ref T@Field_21750_21755 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15232 0)) (((PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| (Array T@Ref T@Field_15292_53 Bool)) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| (Array T@Ref T@Field_15305_15306 T@Ref)) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| (Array T@Ref T@Field_19019_19020 T@FrameType)) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| (Array T@Ref T@Field_21750_21755 T@PolymorphicMapType_15781)) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| (Array T@Ref T@Field_7403_7480 T@FrameType)) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| (Array T@Ref T@Field_7403_21755 T@PolymorphicMapType_15781)) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| (Array T@Ref T@Field_7479_7404 T@Ref)) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| (Array T@Ref T@Field_7479_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_15292_53)
(declare-fun next () T@Field_15305_15306)
(declare-fun succHeap (T@PolymorphicMapType_15232 T@PolymorphicMapType_15232) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15232 T@PolymorphicMapType_15232) Bool)
(declare-fun state (T@PolymorphicMapType_15232 T@PolymorphicMapType_15253) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15253) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15232 T@PolymorphicMapType_15232 T@PolymorphicMapType_15253) Bool)
(declare-fun IsPredicateField_7479_7480 (T@Field_19019_19020) Bool)
(declare-fun HasDirectPerm_7479_7480 (T@PolymorphicMapType_15253 T@Ref T@Field_19019_19020) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7479 (T@Field_19019_19020) T@Field_21750_21755)
(declare-fun IsPredicateField_7403_57358 (T@Field_7403_7480) Bool)
(declare-fun HasDirectPerm_7403_7480 (T@PolymorphicMapType_15253 T@Ref T@Field_7403_7480) Bool)
(declare-fun PredicateMaskField_7403 (T@Field_7403_7480) T@Field_7403_21755)
(declare-fun IsWandField_7479_60644 (T@Field_19019_19020) Bool)
(declare-fun WandMaskField_7479 (T@Field_19019_19020) T@Field_21750_21755)
(declare-fun IsWandField_7403_60287 (T@Field_7403_7480) Bool)
(declare-fun WandMaskField_7403 (T@Field_7403_7480) T@Field_7403_21755)
(declare-fun ZeroPMask () T@PolymorphicMapType_15781)
(declare-fun valid (T@Ref) T@Field_19019_19020)
(declare-fun |size'| (T@PolymorphicMapType_15232 T@Ref) Int)
(declare-fun dummyFunction_1472 (Int) Bool)
(declare-fun |size#triggerStateless| (T@Ref) Int)
(declare-fun |size_0'| (T@PolymorphicMapType_15232 T@Ref) Int)
(declare-fun |size_0#triggerStateless| (T@Ref) Int)
(declare-fun |valid#trigger_7479| (T@PolymorphicMapType_15232 T@Field_19019_19020) Bool)
(declare-fun |valid#everUsed_7479| (T@Field_19019_19020) Bool)
(declare-fun size_2 (T@PolymorphicMapType_15232 T@Ref) Int)
(declare-fun size_0 (T@PolymorphicMapType_15232 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |valid#sm| (T@Ref) T@Field_21750_21755)
(declare-fun dummyHeap () T@PolymorphicMapType_15232)
(declare-fun ZeroMask () T@PolymorphicMapType_15253)
(declare-fun InsidePredicate_15292_15292 (T@Field_7403_7480 T@FrameType T@Field_7403_7480 T@FrameType) Bool)
(declare-fun InsidePredicate_7479_7479 (T@Field_19019_19020 T@FrameType T@Field_19019_19020 T@FrameType) Bool)
(declare-fun |size#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |size_0#trigger| (T@FrameType T@Ref) Bool)
(declare-fun IsPredicateField_7403_7404 (T@Field_15305_15306) Bool)
(declare-fun IsWandField_7403_7404 (T@Field_15305_15306) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7403_66355 (T@Field_7403_21755) Bool)
(declare-fun IsWandField_7403_66371 (T@Field_7403_21755) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7403_53 (T@Field_15292_53) Bool)
(declare-fun IsWandField_7403_53 (T@Field_15292_53) Bool)
(declare-fun IsPredicateField_7479_65706 (T@Field_21750_21755) Bool)
(declare-fun IsWandField_7479_65722 (T@Field_21750_21755) Bool)
(declare-fun IsPredicateField_7479_53 (T@Field_7479_53) Bool)
(declare-fun IsWandField_7479_53 (T@Field_7479_53) Bool)
(declare-fun IsPredicateField_7479_7404 (T@Field_7479_7404) Bool)
(declare-fun IsWandField_7479_7404 (T@Field_7479_7404) Bool)
(declare-fun HasDirectPerm_7479_57113 (T@PolymorphicMapType_15253 T@Ref T@Field_21750_21755) Bool)
(declare-fun HasDirectPerm_7479_53 (T@PolymorphicMapType_15253 T@Ref T@Field_7479_53) Bool)
(declare-fun HasDirectPerm_7479_7404 (T@PolymorphicMapType_15253 T@Ref T@Field_7479_7404) Bool)
(declare-fun HasDirectPerm_7403_56193 (T@PolymorphicMapType_15253 T@Ref T@Field_7403_21755) Bool)
(declare-fun HasDirectPerm_7403_53 (T@PolymorphicMapType_15253 T@Ref T@Field_15292_53) Bool)
(declare-fun HasDirectPerm_7403_7404 (T@PolymorphicMapType_15253 T@Ref T@Field_15305_15306) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15253 T@PolymorphicMapType_15253 T@PolymorphicMapType_15253) Bool)
(declare-fun |size#frame| (T@FrameType T@Ref) Int)
(declare-fun |size_0#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_7479_7480 (T@Field_19019_19020) Int)
(declare-fun InsidePredicate_15292_7479 (T@Field_7403_7480 T@FrameType T@Field_19019_19020 T@FrameType) Bool)
(declare-fun InsidePredicate_7479_15292 (T@Field_19019_19020 T@FrameType T@Field_7403_7480 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_15232) (Heap1 T@PolymorphicMapType_15232) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15232) (Mask T@PolymorphicMapType_15253) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15232) (ExhaleHeap T@PolymorphicMapType_15232) (Mask@@0 T@PolymorphicMapType_15253) (pm_f_12 T@Field_19019_19020) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7479_7480 Mask@@0 null pm_f_12) (IsPredicateField_7479_7480 pm_f_12)) (and (and (and (and (and (and (and (forall ((o2_12 T@Ref) (f_18 T@Field_15305_15306) ) (!  (=> (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@0) null (PredicateMaskField_7479 pm_f_12))) o2_12 f_18) (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@0) o2_12 f_18) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| ExhaleHeap) o2_12 f_18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| ExhaleHeap) o2_12 f_18))
)) (forall ((o2_12@@0 T@Ref) (f_18@@0 T@Field_15292_53) ) (!  (=> (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@0) null (PredicateMaskField_7479 pm_f_12))) o2_12@@0 f_18@@0) (= (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@0) o2_12@@0 f_18@@0) (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap) o2_12@@0 f_18@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap) o2_12@@0 f_18@@0))
))) (forall ((o2_12@@1 T@Ref) (f_18@@1 T@Field_7403_7480) ) (!  (=> (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@0) null (PredicateMaskField_7479 pm_f_12))) o2_12@@1 f_18@@1) (= (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@0) o2_12@@1 f_18@@1) (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| ExhaleHeap) o2_12@@1 f_18@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| ExhaleHeap) o2_12@@1 f_18@@1))
))) (forall ((o2_12@@2 T@Ref) (f_18@@2 T@Field_7403_21755) ) (!  (=> (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@0) null (PredicateMaskField_7479 pm_f_12))) o2_12@@2 f_18@@2) (= (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@0) o2_12@@2 f_18@@2) (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap) o2_12@@2 f_18@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap) o2_12@@2 f_18@@2))
))) (forall ((o2_12@@3 T@Ref) (f_18@@3 T@Field_7479_7404) ) (!  (=> (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@0) null (PredicateMaskField_7479 pm_f_12))) o2_12@@3 f_18@@3) (= (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@0) o2_12@@3 f_18@@3) (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| ExhaleHeap) o2_12@@3 f_18@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| ExhaleHeap) o2_12@@3 f_18@@3))
))) (forall ((o2_12@@4 T@Ref) (f_18@@4 T@Field_7479_53) ) (!  (=> (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@0) null (PredicateMaskField_7479 pm_f_12))) o2_12@@4 f_18@@4) (= (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@0) o2_12@@4 f_18@@4) (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| ExhaleHeap) o2_12@@4 f_18@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| ExhaleHeap) o2_12@@4 f_18@@4))
))) (forall ((o2_12@@5 T@Ref) (f_18@@5 T@Field_19019_19020) ) (!  (=> (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@0) null (PredicateMaskField_7479 pm_f_12))) o2_12@@5 f_18@@5) (= (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@0) o2_12@@5 f_18@@5) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| ExhaleHeap) o2_12@@5 f_18@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| ExhaleHeap) o2_12@@5 f_18@@5))
))) (forall ((o2_12@@6 T@Ref) (f_18@@6 T@Field_21750_21755) ) (!  (=> (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@0) null (PredicateMaskField_7479 pm_f_12))) o2_12@@6 f_18@@6) (= (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@0) o2_12@@6 f_18@@6) (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap) o2_12@@6 f_18@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap) o2_12@@6 f_18@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7479_7480 pm_f_12))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15232) (ExhaleHeap@@0 T@PolymorphicMapType_15232) (Mask@@1 T@PolymorphicMapType_15253) (pm_f_12@@0 T@Field_7403_7480) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7403_7480 Mask@@1 null pm_f_12@@0) (IsPredicateField_7403_57358 pm_f_12@@0)) (and (and (and (and (and (and (and (forall ((o2_12@@7 T@Ref) (f_18@@7 T@Field_15305_15306) ) (!  (=> (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@1) null (PredicateMaskField_7403 pm_f_12@@0))) o2_12@@7 f_18@@7) (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@1) o2_12@@7 f_18@@7) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@7 f_18@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@7 f_18@@7))
)) (forall ((o2_12@@8 T@Ref) (f_18@@8 T@Field_15292_53) ) (!  (=> (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@1) null (PredicateMaskField_7403 pm_f_12@@0))) o2_12@@8 f_18@@8) (= (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@1) o2_12@@8 f_18@@8) (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@8 f_18@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@8 f_18@@8))
))) (forall ((o2_12@@9 T@Ref) (f_18@@9 T@Field_7403_7480) ) (!  (=> (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@1) null (PredicateMaskField_7403 pm_f_12@@0))) o2_12@@9 f_18@@9) (= (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@1) o2_12@@9 f_18@@9) (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@9 f_18@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@9 f_18@@9))
))) (forall ((o2_12@@10 T@Ref) (f_18@@10 T@Field_7403_21755) ) (!  (=> (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@1) null (PredicateMaskField_7403 pm_f_12@@0))) o2_12@@10 f_18@@10) (= (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@1) o2_12@@10 f_18@@10) (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@10 f_18@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@10 f_18@@10))
))) (forall ((o2_12@@11 T@Ref) (f_18@@11 T@Field_7479_7404) ) (!  (=> (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@1) null (PredicateMaskField_7403 pm_f_12@@0))) o2_12@@11 f_18@@11) (= (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@1) o2_12@@11 f_18@@11) (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@11 f_18@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@11 f_18@@11))
))) (forall ((o2_12@@12 T@Ref) (f_18@@12 T@Field_7479_53) ) (!  (=> (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@1) null (PredicateMaskField_7403 pm_f_12@@0))) o2_12@@12 f_18@@12) (= (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@1) o2_12@@12 f_18@@12) (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@12 f_18@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@12 f_18@@12))
))) (forall ((o2_12@@13 T@Ref) (f_18@@13 T@Field_19019_19020) ) (!  (=> (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@1) null (PredicateMaskField_7403 pm_f_12@@0))) o2_12@@13 f_18@@13) (= (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@1) o2_12@@13 f_18@@13) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@13 f_18@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@13 f_18@@13))
))) (forall ((o2_12@@14 T@Ref) (f_18@@14 T@Field_21750_21755) ) (!  (=> (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@1) null (PredicateMaskField_7403 pm_f_12@@0))) o2_12@@14 f_18@@14) (= (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@1) o2_12@@14 f_18@@14) (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@14 f_18@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@0) o2_12@@14 f_18@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_7403_57358 pm_f_12@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15232) (ExhaleHeap@@1 T@PolymorphicMapType_15232) (Mask@@2 T@PolymorphicMapType_15253) (pm_f_12@@1 T@Field_19019_19020) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7479_7480 Mask@@2 null pm_f_12@@1) (IsWandField_7479_60644 pm_f_12@@1)) (and (and (and (and (and (and (and (forall ((o2_12@@15 T@Ref) (f_18@@15 T@Field_15305_15306) ) (!  (=> (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@2) null (WandMaskField_7479 pm_f_12@@1))) o2_12@@15 f_18@@15) (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@2) o2_12@@15 f_18@@15) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@15 f_18@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@15 f_18@@15))
)) (forall ((o2_12@@16 T@Ref) (f_18@@16 T@Field_15292_53) ) (!  (=> (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@2) null (WandMaskField_7479 pm_f_12@@1))) o2_12@@16 f_18@@16) (= (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@2) o2_12@@16 f_18@@16) (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@16 f_18@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@16 f_18@@16))
))) (forall ((o2_12@@17 T@Ref) (f_18@@17 T@Field_7403_7480) ) (!  (=> (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@2) null (WandMaskField_7479 pm_f_12@@1))) o2_12@@17 f_18@@17) (= (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@2) o2_12@@17 f_18@@17) (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@17 f_18@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@17 f_18@@17))
))) (forall ((o2_12@@18 T@Ref) (f_18@@18 T@Field_7403_21755) ) (!  (=> (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@2) null (WandMaskField_7479 pm_f_12@@1))) o2_12@@18 f_18@@18) (= (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@2) o2_12@@18 f_18@@18) (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@18 f_18@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@18 f_18@@18))
))) (forall ((o2_12@@19 T@Ref) (f_18@@19 T@Field_7479_7404) ) (!  (=> (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@2) null (WandMaskField_7479 pm_f_12@@1))) o2_12@@19 f_18@@19) (= (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@2) o2_12@@19 f_18@@19) (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@19 f_18@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@19 f_18@@19))
))) (forall ((o2_12@@20 T@Ref) (f_18@@20 T@Field_7479_53) ) (!  (=> (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@2) null (WandMaskField_7479 pm_f_12@@1))) o2_12@@20 f_18@@20) (= (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@2) o2_12@@20 f_18@@20) (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@20 f_18@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@20 f_18@@20))
))) (forall ((o2_12@@21 T@Ref) (f_18@@21 T@Field_19019_19020) ) (!  (=> (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@2) null (WandMaskField_7479 pm_f_12@@1))) o2_12@@21 f_18@@21) (= (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@2) o2_12@@21 f_18@@21) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@21 f_18@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@21 f_18@@21))
))) (forall ((o2_12@@22 T@Ref) (f_18@@22 T@Field_21750_21755) ) (!  (=> (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@2) null (WandMaskField_7479 pm_f_12@@1))) o2_12@@22 f_18@@22) (= (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@2) o2_12@@22 f_18@@22) (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@22 f_18@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@1) o2_12@@22 f_18@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_7479_60644 pm_f_12@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15232) (ExhaleHeap@@2 T@PolymorphicMapType_15232) (Mask@@3 T@PolymorphicMapType_15253) (pm_f_12@@2 T@Field_7403_7480) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7403_7480 Mask@@3 null pm_f_12@@2) (IsWandField_7403_60287 pm_f_12@@2)) (and (and (and (and (and (and (and (forall ((o2_12@@23 T@Ref) (f_18@@23 T@Field_15305_15306) ) (!  (=> (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@3) null (WandMaskField_7403 pm_f_12@@2))) o2_12@@23 f_18@@23) (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@3) o2_12@@23 f_18@@23) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@23 f_18@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@23 f_18@@23))
)) (forall ((o2_12@@24 T@Ref) (f_18@@24 T@Field_15292_53) ) (!  (=> (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@3) null (WandMaskField_7403 pm_f_12@@2))) o2_12@@24 f_18@@24) (= (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@3) o2_12@@24 f_18@@24) (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@24 f_18@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@24 f_18@@24))
))) (forall ((o2_12@@25 T@Ref) (f_18@@25 T@Field_7403_7480) ) (!  (=> (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@3) null (WandMaskField_7403 pm_f_12@@2))) o2_12@@25 f_18@@25) (= (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@3) o2_12@@25 f_18@@25) (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@25 f_18@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@25 f_18@@25))
))) (forall ((o2_12@@26 T@Ref) (f_18@@26 T@Field_7403_21755) ) (!  (=> (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@3) null (WandMaskField_7403 pm_f_12@@2))) o2_12@@26 f_18@@26) (= (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@3) o2_12@@26 f_18@@26) (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@26 f_18@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@26 f_18@@26))
))) (forall ((o2_12@@27 T@Ref) (f_18@@27 T@Field_7479_7404) ) (!  (=> (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@3) null (WandMaskField_7403 pm_f_12@@2))) o2_12@@27 f_18@@27) (= (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@3) o2_12@@27 f_18@@27) (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@27 f_18@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@27 f_18@@27))
))) (forall ((o2_12@@28 T@Ref) (f_18@@28 T@Field_7479_53) ) (!  (=> (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@3) null (WandMaskField_7403 pm_f_12@@2))) o2_12@@28 f_18@@28) (= (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@3) o2_12@@28 f_18@@28) (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@28 f_18@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@28 f_18@@28))
))) (forall ((o2_12@@29 T@Ref) (f_18@@29 T@Field_19019_19020) ) (!  (=> (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@3) null (WandMaskField_7403 pm_f_12@@2))) o2_12@@29 f_18@@29) (= (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@3) o2_12@@29 f_18@@29) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@29 f_18@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@29 f_18@@29))
))) (forall ((o2_12@@30 T@Ref) (f_18@@30 T@Field_21750_21755) ) (!  (=> (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@3) null (WandMaskField_7403 pm_f_12@@2))) o2_12@@30 f_18@@30) (= (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@3) o2_12@@30 f_18@@30) (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@30 f_18@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@2) o2_12@@30 f_18@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_7403_60287 pm_f_12@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15232) (Heap1@@0 T@PolymorphicMapType_15232) (Heap2 T@PolymorphicMapType_15232) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_21750_21755) ) (!  (not (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_19019_19020) ) (!  (not (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7479_53) ) (!  (not (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7479_7404) ) (!  (not (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7403_21755) ) (!  (not (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7403_7480) ) (!  (not (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_15292_53) ) (!  (not (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_15305_15306) ) (!  (not (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_7479_7480 (valid this))
 :qid |stdinbpl.540:15|
 :skolemid |37|
 :pattern ( (valid this))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15232) (this@@0 T@Ref) ) (! (dummyFunction_1472 (|size#triggerStateless| this@@0))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|size'| Heap@@4 this@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15232) (this@@1 T@Ref) ) (! (dummyFunction_1472 (|size_0#triggerStateless| this@@1))
 :qid |stdinbpl.341:15|
 :skolemid |29|
 :pattern ( (|size_0'| Heap@@5 this@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15232) (this@@2 T@Ref) ) (! (|valid#everUsed_7479| (valid this@@2))
 :qid |stdinbpl.559:15|
 :skolemid |41|
 :pattern ( (|valid#trigger_7479| Heap@@6 (valid this@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15232) (this@@3 T@Ref) ) (!  (and (= (size_2 Heap@@7 this@@3) (|size'| Heap@@7 this@@3)) (dummyFunction_1472 (|size#triggerStateless| this@@3)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (size_2 Heap@@7 this@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15232) (this@@4 T@Ref) ) (!  (and (= (size_0 Heap@@8 this@@4) (|size_0'| Heap@@8 this@@4)) (dummyFunction_1472 (|size_0#triggerStateless| this@@4)))
 :qid |stdinbpl.337:15|
 :skolemid |28|
 :pattern ( (size_0 Heap@@8 this@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15232) (ExhaleHeap@@3 T@PolymorphicMapType_15232) (Mask@@4 T@PolymorphicMapType_15253) (pm_f_12@@3 T@Field_19019_19020) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7479_7480 Mask@@4 null pm_f_12@@3) (IsPredicateField_7479_7480 pm_f_12@@3)) (= (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@9) null (PredicateMaskField_7479 pm_f_12@@3)) (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@3) null (PredicateMaskField_7479 pm_f_12@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (IsPredicateField_7479_7480 pm_f_12@@3) (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@3) null (PredicateMaskField_7479 pm_f_12@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15232) (ExhaleHeap@@4 T@PolymorphicMapType_15232) (Mask@@5 T@PolymorphicMapType_15253) (pm_f_12@@4 T@Field_7403_7480) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_7403_7480 Mask@@5 null pm_f_12@@4) (IsPredicateField_7403_57358 pm_f_12@@4)) (= (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@10) null (PredicateMaskField_7403 pm_f_12@@4)) (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@4) null (PredicateMaskField_7403 pm_f_12@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (IsPredicateField_7403_57358 pm_f_12@@4) (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@4) null (PredicateMaskField_7403 pm_f_12@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15232) (ExhaleHeap@@5 T@PolymorphicMapType_15232) (Mask@@6 T@PolymorphicMapType_15253) (pm_f_12@@5 T@Field_19019_19020) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7479_7480 Mask@@6 null pm_f_12@@5) (IsWandField_7479_60644 pm_f_12@@5)) (= (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@11) null (WandMaskField_7479 pm_f_12@@5)) (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@5) null (WandMaskField_7479 pm_f_12@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (IsWandField_7479_60644 pm_f_12@@5) (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@5) null (WandMaskField_7479 pm_f_12@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15232) (ExhaleHeap@@6 T@PolymorphicMapType_15232) (Mask@@7 T@PolymorphicMapType_15253) (pm_f_12@@6 T@Field_7403_7480) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_7403_7480 Mask@@7 null pm_f_12@@6) (IsWandField_7403_60287 pm_f_12@@6)) (= (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@12) null (WandMaskField_7403 pm_f_12@@6)) (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@6) null (WandMaskField_7403 pm_f_12@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (IsWandField_7403_60287 pm_f_12@@6) (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@6) null (WandMaskField_7403 pm_f_12@@6)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15232) (Mask@@8 T@PolymorphicMapType_15253) (this@@5 T@Ref) ) (!  (=> (and (state Heap@@13 Mask@@8) (< AssumeFunctionsAbove 0)) (=> (not (= this@@5 null)) (= (size_2 Heap@@13 this@@5) (ite (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@13) this@@5 next) null) 1 (+ 1 (|size'| Heap@@13 (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@13) this@@5 next)))))))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@13 Mask@@8) (size_2 Heap@@13 this@@5))
 :pattern ( (state Heap@@13 Mask@@8) (|size#triggerStateless| this@@5) (|valid#trigger_7479| Heap@@13 (valid this@@5)))
)))
(assert (forall ((this@@6 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid this@@6) (valid this2)) (= this@@6 this2))
 :qid |stdinbpl.550:15|
 :skolemid |39|
 :pattern ( (valid this@@6) (valid this2))
)))
(assert (forall ((this@@7 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid#sm| this@@7) (|valid#sm| this2@@0)) (= this@@7 this2@@0))
 :qid |stdinbpl.554:15|
 :skolemid |40|
 :pattern ( (|valid#sm| this@@7) (|valid#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15232) (ExhaleHeap@@7 T@PolymorphicMapType_15232) (Mask@@9 T@PolymorphicMapType_15253) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@14) o_13 $allocated) (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap@@7) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap@@7) o_13 $allocated))
)))
(assert (forall ((p T@Field_7403_7480) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15292_15292 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15292_15292 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_19019_19020) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7479_7479 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7479_7479 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15232) (Mask@@10 T@PolymorphicMapType_15253) (this@@8 T@Ref) ) (!  (=> (and (state Heap@@15 Mask@@10) (or (< AssumeFunctionsAbove 0) (|size#trigger| (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@15) null (valid this@@8)) this@@8))) (=> (not (= this@@8 null)) (>= (|size'| Heap@@15 this@@8) 1)))
 :qid |stdinbpl.218:15|
 :skolemid |26|
 :pattern ( (state Heap@@15 Mask@@10) (|size'| Heap@@15 this@@8))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15232) (Mask@@11 T@PolymorphicMapType_15253) (this@@9 T@Ref) ) (!  (=> (and (state Heap@@16 Mask@@11) (or (< AssumeFunctionsAbove 1) (|size_0#trigger| (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@16) null (valid this@@9)) this@@9))) (=> (not (= this@@9 null)) (>= (|size_0'| Heap@@16 this@@9) 1)))
 :qid |stdinbpl.360:15|
 :skolemid |32|
 :pattern ( (state Heap@@16 Mask@@11) (|size_0'| Heap@@16 this@@9))
)))
(assert  (not (IsPredicateField_7403_7404 next)))
(assert  (not (IsWandField_7403_7404 next)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15232) (ExhaleHeap@@8 T@PolymorphicMapType_15232) (Mask@@12 T@PolymorphicMapType_15253) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@12) (succHeap Heap@@17 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15253) (o_2@@7 T@Ref) (f_4@@7 T@Field_7403_21755) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| Mask@@13) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7403_66355 f_4@@7))) (not (IsWandField_7403_66371 f_4@@7))) (<= (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| Mask@@13) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| Mask@@13) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15253) (o_2@@8 T@Ref) (f_4@@8 T@Field_15292_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| Mask@@14) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_7403_53 f_4@@8))) (not (IsWandField_7403_53 f_4@@8))) (<= (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| Mask@@14) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| Mask@@14) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15253) (o_2@@9 T@Ref) (f_4@@9 T@Field_15305_15306) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| Mask@@15) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_7403_7404 f_4@@9))) (not (IsWandField_7403_7404 f_4@@9))) (<= (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| Mask@@15) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| Mask@@15) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15253) (o_2@@10 T@Ref) (f_4@@10 T@Field_7403_7480) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| Mask@@16) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_7403_57358 f_4@@10))) (not (IsWandField_7403_60287 f_4@@10))) (<= (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| Mask@@16) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| Mask@@16) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15253) (o_2@@11 T@Ref) (f_4@@11 T@Field_21750_21755) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| Mask@@17) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_7479_65706 f_4@@11))) (not (IsWandField_7479_65722 f_4@@11))) (<= (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| Mask@@17) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| Mask@@17) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15253) (o_2@@12 T@Ref) (f_4@@12 T@Field_7479_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| Mask@@18) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_7479_53 f_4@@12))) (not (IsWandField_7479_53 f_4@@12))) (<= (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| Mask@@18) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| Mask@@18) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15253) (o_2@@13 T@Ref) (f_4@@13 T@Field_7479_7404) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| Mask@@19) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7479_7404 f_4@@13))) (not (IsWandField_7479_7404 f_4@@13))) (<= (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| Mask@@19) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| Mask@@19) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15253) (o_2@@14 T@Ref) (f_4@@14 T@Field_19019_19020) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Mask@@20) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_7479_7480 f_4@@14))) (not (IsWandField_7479_60644 f_4@@14))) (<= (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Mask@@20) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Mask@@20) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15253) (o_2@@15 T@Ref) (f_4@@15 T@Field_21750_21755) ) (! (= (HasDirectPerm_7479_57113 Mask@@21 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| Mask@@21) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7479_57113 Mask@@21 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15253) (o_2@@16 T@Ref) (f_4@@16 T@Field_7479_53) ) (! (= (HasDirectPerm_7479_53 Mask@@22 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| Mask@@22) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7479_53 Mask@@22 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_15253) (o_2@@17 T@Ref) (f_4@@17 T@Field_19019_19020) ) (! (= (HasDirectPerm_7479_7480 Mask@@23 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Mask@@23) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7479_7480 Mask@@23 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15253) (o_2@@18 T@Ref) (f_4@@18 T@Field_7479_7404) ) (! (= (HasDirectPerm_7479_7404 Mask@@24 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| Mask@@24) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7479_7404 Mask@@24 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15253) (o_2@@19 T@Ref) (f_4@@19 T@Field_7403_21755) ) (! (= (HasDirectPerm_7403_56193 Mask@@25 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| Mask@@25) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7403_56193 Mask@@25 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_15253) (o_2@@20 T@Ref) (f_4@@20 T@Field_15292_53) ) (! (= (HasDirectPerm_7403_53 Mask@@26 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| Mask@@26) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7403_53 Mask@@26 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_15253) (o_2@@21 T@Ref) (f_4@@21 T@Field_7403_7480) ) (! (= (HasDirectPerm_7403_7480 Mask@@27 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| Mask@@27) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7403_7480 Mask@@27 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_15253) (o_2@@22 T@Ref) (f_4@@22 T@Field_15305_15306) ) (! (= (HasDirectPerm_7403_7404 Mask@@28 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| Mask@@28) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7403_7404 Mask@@28 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15232) (ExhaleHeap@@9 T@PolymorphicMapType_15232) (Mask@@29 T@PolymorphicMapType_15253) (o_13@@0 T@Ref) (f_18@@31 T@Field_21750_21755) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@29) (=> (HasDirectPerm_7479_57113 Mask@@29 o_13@@0 f_18@@31) (= (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@18) o_13@@0 f_18@@31) (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@9) o_13@@0 f_18@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@29) (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| ExhaleHeap@@9) o_13@@0 f_18@@31))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15232) (ExhaleHeap@@10 T@PolymorphicMapType_15232) (Mask@@30 T@PolymorphicMapType_15253) (o_13@@1 T@Ref) (f_18@@32 T@Field_7479_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@30) (=> (HasDirectPerm_7479_53 Mask@@30 o_13@@1 f_18@@32) (= (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@19) o_13@@1 f_18@@32) (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| ExhaleHeap@@10) o_13@@1 f_18@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@10 Mask@@30) (select (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| ExhaleHeap@@10) o_13@@1 f_18@@32))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15232) (ExhaleHeap@@11 T@PolymorphicMapType_15232) (Mask@@31 T@PolymorphicMapType_15253) (o_13@@2 T@Ref) (f_18@@33 T@Field_19019_19020) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@31) (=> (HasDirectPerm_7479_7480 Mask@@31 o_13@@2 f_18@@33) (= (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@20) o_13@@2 f_18@@33) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| ExhaleHeap@@11) o_13@@2 f_18@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@11 Mask@@31) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| ExhaleHeap@@11) o_13@@2 f_18@@33))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15232) (ExhaleHeap@@12 T@PolymorphicMapType_15232) (Mask@@32 T@PolymorphicMapType_15253) (o_13@@3 T@Ref) (f_18@@34 T@Field_7479_7404) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@32) (=> (HasDirectPerm_7479_7404 Mask@@32 o_13@@3 f_18@@34) (= (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@21) o_13@@3 f_18@@34) (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| ExhaleHeap@@12) o_13@@3 f_18@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@12 Mask@@32) (select (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| ExhaleHeap@@12) o_13@@3 f_18@@34))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15232) (ExhaleHeap@@13 T@PolymorphicMapType_15232) (Mask@@33 T@PolymorphicMapType_15253) (o_13@@4 T@Ref) (f_18@@35 T@Field_7403_21755) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@33) (=> (HasDirectPerm_7403_56193 Mask@@33 o_13@@4 f_18@@35) (= (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@22) o_13@@4 f_18@@35) (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@13) o_13@@4 f_18@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@13 Mask@@33) (select (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| ExhaleHeap@@13) o_13@@4 f_18@@35))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15232) (ExhaleHeap@@14 T@PolymorphicMapType_15232) (Mask@@34 T@PolymorphicMapType_15253) (o_13@@5 T@Ref) (f_18@@36 T@Field_15292_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@34) (=> (HasDirectPerm_7403_53 Mask@@34 o_13@@5 f_18@@36) (= (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@23) o_13@@5 f_18@@36) (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap@@14) o_13@@5 f_18@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@14 Mask@@34) (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| ExhaleHeap@@14) o_13@@5 f_18@@36))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15232) (ExhaleHeap@@15 T@PolymorphicMapType_15232) (Mask@@35 T@PolymorphicMapType_15253) (o_13@@6 T@Ref) (f_18@@37 T@Field_7403_7480) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@35) (=> (HasDirectPerm_7403_7480 Mask@@35 o_13@@6 f_18@@37) (= (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@24) o_13@@6 f_18@@37) (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| ExhaleHeap@@15) o_13@@6 f_18@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@15 Mask@@35) (select (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| ExhaleHeap@@15) o_13@@6 f_18@@37))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15232) (ExhaleHeap@@16 T@PolymorphicMapType_15232) (Mask@@36 T@PolymorphicMapType_15253) (o_13@@7 T@Ref) (f_18@@38 T@Field_15305_15306) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@36) (=> (HasDirectPerm_7403_7404 Mask@@36 o_13@@7 f_18@@38) (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@25) o_13@@7 f_18@@38) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| ExhaleHeap@@16) o_13@@7 f_18@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@16 Mask@@36) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| ExhaleHeap@@16) o_13@@7 f_18@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_7403_21755) ) (! (= (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_15292_53) ) (! (= (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_15305_15306) ) (! (= (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_7403_7480) ) (! (= (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_21750_21755) ) (! (= (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_7479_53) ) (! (= (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_7479_7404) ) (! (= (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_19019_19020) ) (! (= (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15232) (Mask@@37 T@PolymorphicMapType_15253) (this@@10 T@Ref) ) (!  (=> (and (state Heap@@26 Mask@@37) (< AssumeFunctionsAbove 1)) (=> (not (= this@@10 null)) (= (size_0 Heap@@26 this@@10) (ite (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@26) this@@10 next) null) 1 (ite (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@26) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@26) this@@10 next) next) null) 2 (+ 2 (|size_0'| Heap@@26 (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@26) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@26) this@@10 next) next))))))))
 :qid |stdinbpl.347:15|
 :skolemid |30|
 :pattern ( (state Heap@@26 Mask@@37) (size_0 Heap@@26 this@@10))
 :pattern ( (state Heap@@26 Mask@@37) (|size_0#triggerStateless| this@@10) (|valid#trigger_7479| Heap@@26 (valid this@@10)))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15253) (SummandMask1 T@PolymorphicMapType_15253) (SummandMask2 T@PolymorphicMapType_15253) (o_2@@31 T@Ref) (f_4@@31 T@Field_7403_21755) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15253) (SummandMask1@@0 T@PolymorphicMapType_15253) (SummandMask2@@0 T@PolymorphicMapType_15253) (o_2@@32 T@Ref) (f_4@@32 T@Field_15292_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15253) (SummandMask1@@1 T@PolymorphicMapType_15253) (SummandMask2@@1 T@PolymorphicMapType_15253) (o_2@@33 T@Ref) (f_4@@33 T@Field_15305_15306) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15253) (SummandMask1@@2 T@PolymorphicMapType_15253) (SummandMask2@@2 T@PolymorphicMapType_15253) (o_2@@34 T@Ref) (f_4@@34 T@Field_7403_7480) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15253) (SummandMask1@@3 T@PolymorphicMapType_15253) (SummandMask2@@3 T@PolymorphicMapType_15253) (o_2@@35 T@Ref) (f_4@@35 T@Field_21750_21755) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15253) (SummandMask1@@4 T@PolymorphicMapType_15253) (SummandMask2@@4 T@PolymorphicMapType_15253) (o_2@@36 T@Ref) (f_4@@36 T@Field_7479_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15253) (SummandMask1@@5 T@PolymorphicMapType_15253) (SummandMask2@@5 T@PolymorphicMapType_15253) (o_2@@37 T@Ref) (f_4@@37 T@Field_7479_7404) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15253) (SummandMask1@@6 T@PolymorphicMapType_15253) (SummandMask2@@6 T@PolymorphicMapType_15253) (o_2@@38 T@Ref) (f_4@@38 T@Field_19019_19020) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15232) (Mask@@38 T@PolymorphicMapType_15253) (this@@11 T@Ref) ) (!  (=> (state Heap@@27 Mask@@38) (= (|size'| Heap@@27 this@@11) (|size#frame| (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@27) null (valid this@@11)) this@@11)))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (state Heap@@27 Mask@@38) (|size'| Heap@@27 this@@11))
 :pattern ( (state Heap@@27 Mask@@38) (|size#triggerStateless| this@@11) (|valid#trigger_7479| Heap@@27 (valid this@@11)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15232) (Mask@@39 T@PolymorphicMapType_15253) (this@@12 T@Ref) ) (!  (=> (state Heap@@28 Mask@@39) (= (|size_0'| Heap@@28 this@@12) (|size_0#frame| (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@28) null (valid this@@12)) this@@12)))
 :qid |stdinbpl.354:15|
 :skolemid |31|
 :pattern ( (state Heap@@28 Mask@@39) (|size_0'| Heap@@28 this@@12))
 :pattern ( (state Heap@@28 Mask@@39) (|size_0#triggerStateless| this@@12) (|valid#trigger_7479| Heap@@28 (valid this@@12)))
)))
(assert (forall ((this@@13 T@Ref) ) (! (= (getPredWandId_7479_7480 (valid this@@13)) 0)
 :qid |stdinbpl.544:15|
 :skolemid |38|
 :pattern ( (valid this@@13))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15232) (o_34 T@Ref) (f_36 T@Field_21750_21755) (v T@PolymorphicMapType_15781) ) (! (succHeap Heap@@29 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@29) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@29) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@29) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@29) o_34 f_36 v) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@29) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@29) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@29) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@29) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@29) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@29) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@29) o_34 f_36 v) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@29) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@29) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@29) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15232) (o_34@@0 T@Ref) (f_36@@0 T@Field_19019_19020) (v@@0 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@30) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@30) (store (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@30) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@30) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@30) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@30) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@30) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@30) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@30) (store (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@30) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@30) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@30) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@30) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@30) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_15232) (o_34@@1 T@Ref) (f_36@@1 T@Field_7479_7404) (v@@1 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@31) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@31) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@31) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@31) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@31) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@31) (store (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@31) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@31) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@31) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@31) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@31) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@31) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@31) (store (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@31) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_15232) (o_34@@2 T@Ref) (f_36@@2 T@Field_7479_53) (v@@2 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@32) (store (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@32) o_34@@2 f_36@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@32) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@32) (store (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@32) o_34@@2 f_36@@2 v@@2)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_15232) (o_34@@3 T@Ref) (f_36@@3 T@Field_7403_21755) (v@@3 T@PolymorphicMapType_15781) ) (! (succHeap Heap@@33 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@33) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@33) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@33) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@33) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@33) (store (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@33) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@33) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@33) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@33) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@33) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@33) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@33) (store (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@33) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@33) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_15232) (o_34@@4 T@Ref) (f_36@@4 T@Field_7403_7480) (v@@4 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@34) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@34) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@34) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@34) (store (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@34) o_34@@4 f_36@@4 v@@4) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@34) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@34) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@34) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@34) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@34) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@34) (store (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@34) o_34@@4 f_36@@4 v@@4) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@34) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@34) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_15232) (o_34@@5 T@Ref) (f_36@@5 T@Field_15305_15306) (v@@5 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@35) (store (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@35) o_34@@5 f_36@@5 v@@5) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@35) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@35) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@35) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@35) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@35) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@35) (store (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@35) o_34@@5 f_36@@5 v@@5) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@35) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@35) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@35) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@35) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@35) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_15232) (o_34@@6 T@Ref) (f_36@@6 T@Field_15292_53) (v@@6 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_15232 (store (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@36) o_34@@6 f_36@@6 v@@6) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15232 (store (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@36) o_34@@6 f_36@@6 v@@6) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@36) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@36)))
)))
(assert (forall ((this@@14 T@Ref) ) (! (= (PredicateMaskField_7479 (valid this@@14)) (|valid#sm| this@@14))
 :qid |stdinbpl.536:15|
 :skolemid |36|
 :pattern ( (PredicateMaskField_7479 (valid this@@14)))
)))
(assert (forall ((o_34@@7 T@Ref) (f_40 T@Field_15305_15306) (Heap@@37 T@PolymorphicMapType_15232) ) (!  (=> (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@37) o_34@@7 $allocated) (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@37) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@37) o_34@@7 f_40) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@37) o_34@@7 f_40))
)))
(assert (forall ((p@@2 T@Field_7403_7480) (v_1@@1 T@FrameType) (q T@Field_7403_7480) (w@@1 T@FrameType) (r T@Field_7403_7480) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15292_15292 p@@2 v_1@@1 q w@@1) (InsidePredicate_15292_15292 q w@@1 r u)) (InsidePredicate_15292_15292 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15292_15292 p@@2 v_1@@1 q w@@1) (InsidePredicate_15292_15292 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_7403_7480) (v_1@@2 T@FrameType) (q@@0 T@Field_7403_7480) (w@@2 T@FrameType) (r@@0 T@Field_19019_19020) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_15292_15292 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_15292_7479 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_15292_7479 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15292_15292 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_15292_7479 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_7403_7480) (v_1@@3 T@FrameType) (q@@1 T@Field_19019_19020) (w@@3 T@FrameType) (r@@1 T@Field_7403_7480) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_15292_7479 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7479_15292 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_15292_15292 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15292_7479 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7479_15292 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_7403_7480) (v_1@@4 T@FrameType) (q@@2 T@Field_19019_19020) (w@@4 T@FrameType) (r@@2 T@Field_19019_19020) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_15292_7479 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7479_7479 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_15292_7479 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15292_7479 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7479_7479 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_19019_19020) (v_1@@5 T@FrameType) (q@@3 T@Field_7403_7480) (w@@5 T@FrameType) (r@@3 T@Field_7403_7480) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7479_15292 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_15292_15292 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7479_15292 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7479_15292 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_15292_15292 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_19019_19020) (v_1@@6 T@FrameType) (q@@4 T@Field_7403_7480) (w@@6 T@FrameType) (r@@4 T@Field_19019_19020) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7479_15292 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_15292_7479 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7479_7479 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7479_15292 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_15292_7479 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_19019_19020) (v_1@@7 T@FrameType) (q@@5 T@Field_19019_19020) (w@@7 T@FrameType) (r@@5 T@Field_7403_7480) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7479_7479 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7479_15292 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7479_15292 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7479_7479 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7479_15292 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_19019_19020) (v_1@@8 T@FrameType) (q@@6 T@Field_19019_19020) (w@@8 T@FrameType) (r@@6 T@Field_19019_19020) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7479_7479 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7479_7479 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7479_7479 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7479_7479 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7479_7479 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@12 () T@PolymorphicMapType_15232)
(declare-fun this@@15 () T@Ref)
(declare-fun Heap@14 () T@PolymorphicMapType_15232)
(declare-fun newPMask@4 () T@PolymorphicMapType_15781)
(declare-fun Heap@13 () T@PolymorphicMapType_15232)
(declare-fun Heap@11 () T@PolymorphicMapType_15232)
(declare-fun Mask@0 () T@PolymorphicMapType_15253)
(declare-fun Heap@9 () T@PolymorphicMapType_15232)
(declare-fun newPMask@3 () T@PolymorphicMapType_15781)
(declare-fun Heap@10 () T@PolymorphicMapType_15232)
(declare-fun Heap@8 () T@PolymorphicMapType_15232)
(declare-fun Heap@6 () T@PolymorphicMapType_15232)
(declare-fun newPMask@2 () T@PolymorphicMapType_15781)
(declare-fun Heap@7 () T@PolymorphicMapType_15232)
(declare-fun Heap@5 () T@PolymorphicMapType_15232)
(declare-fun Heap@3 () T@PolymorphicMapType_15232)
(declare-fun newPMask@1 () T@PolymorphicMapType_15781)
(declare-fun Heap@4 () T@PolymorphicMapType_15232)
(declare-fun Heap@2 () T@PolymorphicMapType_15232)
(declare-fun Heap@0 () T@PolymorphicMapType_15232)
(declare-fun newPMask@0 () T@PolymorphicMapType_15781)
(declare-fun Heap@1 () T@PolymorphicMapType_15232)
(declare-fun Heap@@38 () T@PolymorphicMapType_15232)
(declare-fun Unfolding1Mask@3 () T@PolymorphicMapType_15253)
(declare-fun Unfolding1Mask@1 () T@PolymorphicMapType_15253)
(declare-fun Unfolding1Mask@2 () T@PolymorphicMapType_15253)
(declare-fun Unfolding1Mask@0 () T@PolymorphicMapType_15253)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_15253)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_7404 (T@Ref) T@FrameType)
(declare-fun FrameFragment_7480 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_15253)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_15253)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_15253)
(set-info :boogie-vc-id unrollExpression)
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
 (=> (= (ControlFlow 0 0) 39) (let ((anon20_correct true))
(let ((anon30_Else_correct  (=> (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next) next) null) (=> (and (= Heap@14 Heap@12) (= (ControlFlow 0 6) 4)) anon20_correct))))
(let ((anon30_Then_correct  (=> (not (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next) next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_1 T@Ref) (f_11 T@Field_15305_15306) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next)))) o_1 f_11) (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next) next)))) o_1 f_11)) (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| newPMask@4) o_1 f_11))
 :qid |stdinbpl.1211:31|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| newPMask@4) o_1 f_11))
)) (forall ((o_1@@0 T@Ref) (f_11@@0 T@Field_15292_53) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next)))) o_1@@0 f_11@@0) (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next) next)))) o_1@@0 f_11@@0)) (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| newPMask@4) o_1@@0 f_11@@0))
 :qid |stdinbpl.1211:31|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| newPMask@4) o_1@@0 f_11@@0))
))) (forall ((o_1@@1 T@Ref) (f_11@@1 T@Field_7403_7480) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next)))) o_1@@1 f_11@@1) (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next) next)))) o_1@@1 f_11@@1)) (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| newPMask@4) o_1@@1 f_11@@1))
 :qid |stdinbpl.1211:31|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| newPMask@4) o_1@@1 f_11@@1))
))) (forall ((o_1@@2 T@Ref) (f_11@@2 T@Field_7403_21755) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next)))) o_1@@2 f_11@@2) (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next) next)))) o_1@@2 f_11@@2)) (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| newPMask@4) o_1@@2 f_11@@2))
 :qid |stdinbpl.1211:31|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| newPMask@4) o_1@@2 f_11@@2))
))) (forall ((o_1@@3 T@Ref) (f_11@@3 T@Field_7479_7404) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next)))) o_1@@3 f_11@@3) (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next) next)))) o_1@@3 f_11@@3)) (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| newPMask@4) o_1@@3 f_11@@3))
 :qid |stdinbpl.1211:31|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| newPMask@4) o_1@@3 f_11@@3))
))) (forall ((o_1@@4 T@Ref) (f_11@@4 T@Field_7479_53) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next)))) o_1@@4 f_11@@4) (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next) next)))) o_1@@4 f_11@@4)) (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| newPMask@4) o_1@@4 f_11@@4))
 :qid |stdinbpl.1211:31|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| newPMask@4) o_1@@4 f_11@@4))
))) (forall ((o_1@@5 T@Ref) (f_11@@5 T@Field_19019_19020) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next)))) o_1@@5 f_11@@5) (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next) next)))) o_1@@5 f_11@@5)) (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| newPMask@4) o_1@@5 f_11@@5))
 :qid |stdinbpl.1211:31|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| newPMask@4) o_1@@5 f_11@@5))
))) (forall ((o_1@@6 T@Ref) (f_11@@6 T@Field_21750_21755) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next)))) o_1@@6 f_11@@6) (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next) next)))) o_1@@6 f_11@@6)) (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| newPMask@4) o_1@@6 f_11@@6))
 :qid |stdinbpl.1211:31|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| newPMask@4) o_1@@6 f_11@@6))
))) (= Heap@13 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@12) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@12) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@12) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@12) this@@15 next)) newPMask@4) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@12) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@12) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@12) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@12)))) (and (= Heap@14 Heap@13) (= (ControlFlow 0 5) 4))) anon20_correct))))
(let ((anon18_correct  (=> (and (state Heap@11 Mask@0) (= Heap@12 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@11) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@11) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@11) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@11) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@11) this@@15 next)) (PolymorphicMapType_15781 (store (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@11) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@11) this@@15 next)))) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@11) this@@15 next) next true) (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@11) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@11) this@@15 next)))) (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@11) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@11) this@@15 next)))) (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@11) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@11) this@@15 next)))) (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@11) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@11) this@@15 next)))) (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@11) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@11) this@@15 next)))) (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@11) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@11) this@@15 next)))) (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@11) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@11) this@@15 next)))))) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@11) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@11) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@11) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@11)))) (and (=> (= (ControlFlow 0 7) 5) anon30_Then_correct) (=> (= (ControlFlow 0 7) 6) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@9) this@@15 next) null) (=> (and (= Heap@11 Heap@9) (= (ControlFlow 0 9) 7)) anon18_correct))))
(let ((anon29_Then_correct  (=> (not (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@9) this@@15 next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_35 T@Ref) (f_17 T@Field_15305_15306) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| this@@15))) o_35 f_17) (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@9) this@@15 next)))) o_35 f_17)) (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| newPMask@3) o_35 f_17))
 :qid |stdinbpl.1201:31|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| newPMask@3) o_35 f_17))
)) (forall ((o_35@@0 T@Ref) (f_17@@0 T@Field_15292_53) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| this@@15))) o_35@@0 f_17@@0) (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@9) this@@15 next)))) o_35@@0 f_17@@0)) (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| newPMask@3) o_35@@0 f_17@@0))
 :qid |stdinbpl.1201:31|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| newPMask@3) o_35@@0 f_17@@0))
))) (forall ((o_35@@1 T@Ref) (f_17@@1 T@Field_7403_7480) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| this@@15))) o_35@@1 f_17@@1) (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@9) this@@15 next)))) o_35@@1 f_17@@1)) (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| newPMask@3) o_35@@1 f_17@@1))
 :qid |stdinbpl.1201:31|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| newPMask@3) o_35@@1 f_17@@1))
))) (forall ((o_35@@2 T@Ref) (f_17@@2 T@Field_7403_21755) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| this@@15))) o_35@@2 f_17@@2) (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@9) this@@15 next)))) o_35@@2 f_17@@2)) (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| newPMask@3) o_35@@2 f_17@@2))
 :qid |stdinbpl.1201:31|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| newPMask@3) o_35@@2 f_17@@2))
))) (forall ((o_35@@3 T@Ref) (f_17@@3 T@Field_7479_7404) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| this@@15))) o_35@@3 f_17@@3) (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@9) this@@15 next)))) o_35@@3 f_17@@3)) (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| newPMask@3) o_35@@3 f_17@@3))
 :qid |stdinbpl.1201:31|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| newPMask@3) o_35@@3 f_17@@3))
))) (forall ((o_35@@4 T@Ref) (f_17@@4 T@Field_7479_53) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| this@@15))) o_35@@4 f_17@@4) (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@9) this@@15 next)))) o_35@@4 f_17@@4)) (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| newPMask@3) o_35@@4 f_17@@4))
 :qid |stdinbpl.1201:31|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| newPMask@3) o_35@@4 f_17@@4))
))) (forall ((o_35@@5 T@Ref) (f_17@@5 T@Field_19019_19020) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| this@@15))) o_35@@5 f_17@@5) (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@9) this@@15 next)))) o_35@@5 f_17@@5)) (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| newPMask@3) o_35@@5 f_17@@5))
 :qid |stdinbpl.1201:31|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| newPMask@3) o_35@@5 f_17@@5))
))) (forall ((o_35@@6 T@Ref) (f_17@@6 T@Field_21750_21755) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| this@@15))) o_35@@6 f_17@@6) (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@9) this@@15 next)))) o_35@@6 f_17@@6)) (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| newPMask@3) o_35@@6 f_17@@6))
 :qid |stdinbpl.1201:31|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| newPMask@3) o_35@@6 f_17@@6))
))) (= Heap@10 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@9) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@9) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@9) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@9) null (|valid#sm| this@@15) newPMask@3) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@9) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@9) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@9) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@9)))) (and (= Heap@11 Heap@10) (= (ControlFlow 0 8) 7))) anon18_correct))))
(let ((anon16_correct  (=> (state Heap@8 Mask@0) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@8) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@8) this@@15 next) next) null)) (=> (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@8) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@8) this@@15 next) next) null) (=> (= Heap@9 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@8) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@8) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@8) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@8) null (|valid#sm| this@@15) (PolymorphicMapType_15781 (store (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@8) null (|valid#sm| this@@15))) this@@15 next true) (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@8) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@8) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@8) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@8) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@8) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@8) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@8) null (|valid#sm| this@@15))))) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@8) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@8) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@8) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@8))) (and (=> (= (ControlFlow 0 10) 8) anon29_Then_correct) (=> (= (ControlFlow 0 10) 9) anon29_Else_correct))))))))
(let ((anon28_Else_correct  (=> (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next) next) null) (=> (and (= Heap@8 Heap@6) (= (ControlFlow 0 13) 10)) anon16_correct))))
(let ((anon28_Then_correct  (=> (not (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next) next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_11 T@Ref) (f_3 T@Field_15305_15306) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next)))) o_11 f_3) (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next) next)))) o_11 f_3)) (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| newPMask@2) o_11 f_3))
 :qid |stdinbpl.1187:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| newPMask@2) o_11 f_3))
)) (forall ((o_11@@0 T@Ref) (f_3@@0 T@Field_15292_53) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next)))) o_11@@0 f_3@@0) (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next) next)))) o_11@@0 f_3@@0)) (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| newPMask@2) o_11@@0 f_3@@0))
 :qid |stdinbpl.1187:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| newPMask@2) o_11@@0 f_3@@0))
))) (forall ((o_11@@1 T@Ref) (f_3@@1 T@Field_7403_7480) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next)))) o_11@@1 f_3@@1) (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next) next)))) o_11@@1 f_3@@1)) (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| newPMask@2) o_11@@1 f_3@@1))
 :qid |stdinbpl.1187:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| newPMask@2) o_11@@1 f_3@@1))
))) (forall ((o_11@@2 T@Ref) (f_3@@2 T@Field_7403_21755) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next)))) o_11@@2 f_3@@2) (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next) next)))) o_11@@2 f_3@@2)) (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| newPMask@2) o_11@@2 f_3@@2))
 :qid |stdinbpl.1187:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| newPMask@2) o_11@@2 f_3@@2))
))) (forall ((o_11@@3 T@Ref) (f_3@@3 T@Field_7479_7404) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next)))) o_11@@3 f_3@@3) (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next) next)))) o_11@@3 f_3@@3)) (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| newPMask@2) o_11@@3 f_3@@3))
 :qid |stdinbpl.1187:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| newPMask@2) o_11@@3 f_3@@3))
))) (forall ((o_11@@4 T@Ref) (f_3@@4 T@Field_7479_53) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next)))) o_11@@4 f_3@@4) (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next) next)))) o_11@@4 f_3@@4)) (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| newPMask@2) o_11@@4 f_3@@4))
 :qid |stdinbpl.1187:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| newPMask@2) o_11@@4 f_3@@4))
))) (forall ((o_11@@5 T@Ref) (f_3@@5 T@Field_19019_19020) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next)))) o_11@@5 f_3@@5) (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next) next)))) o_11@@5 f_3@@5)) (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| newPMask@2) o_11@@5 f_3@@5))
 :qid |stdinbpl.1187:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| newPMask@2) o_11@@5 f_3@@5))
))) (forall ((o_11@@6 T@Ref) (f_3@@6 T@Field_21750_21755) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next)))) o_11@@6 f_3@@6) (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next) next)))) o_11@@6 f_3@@6)) (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| newPMask@2) o_11@@6 f_3@@6))
 :qid |stdinbpl.1187:33|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| newPMask@2) o_11@@6 f_3@@6))
))) (= Heap@7 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@6) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@6) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@6) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@6) this@@15 next)) newPMask@2) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@6) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@6) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@6) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@6)))) (and (= Heap@8 Heap@7) (= (ControlFlow 0 12) 10))) anon16_correct))))
(let ((anon14_correct  (=> (and (state Heap@5 Mask@0) (= Heap@6 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@5) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@5) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@5) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@5) this@@15 next)) (PolymorphicMapType_15781 (store (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@5) this@@15 next)))) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@5) this@@15 next) next true) (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@5) this@@15 next)))) (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@5) this@@15 next)))) (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@5) this@@15 next)))) (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@5) this@@15 next)))) (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@5) this@@15 next)))) (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@5) this@@15 next)))) (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@5) this@@15 next)))))) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@5) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@5) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@5) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@5)))) (and (=> (= (ControlFlow 0 14) 12) anon28_Then_correct) (=> (= (ControlFlow 0 14) 13) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@3) this@@15 next) null) (=> (and (= Heap@5 Heap@3) (= (ControlFlow 0 16) 14)) anon14_correct))))
(let ((anon27_Then_correct  (=> (not (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@3) this@@15 next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o T@Ref) (f_85 T@Field_15305_15306) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| this@@15))) o f_85) (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@3) this@@15 next)))) o f_85)) (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| newPMask@1) o f_85))
 :qid |stdinbpl.1177:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| newPMask@1) o f_85))
)) (forall ((o@@0 T@Ref) (f_85@@0 T@Field_15292_53) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| this@@15))) o@@0 f_85@@0) (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@3) this@@15 next)))) o@@0 f_85@@0)) (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| newPMask@1) o@@0 f_85@@0))
 :qid |stdinbpl.1177:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| newPMask@1) o@@0 f_85@@0))
))) (forall ((o@@1 T@Ref) (f_85@@1 T@Field_7403_7480) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| this@@15))) o@@1 f_85@@1) (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@3) this@@15 next)))) o@@1 f_85@@1)) (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| newPMask@1) o@@1 f_85@@1))
 :qid |stdinbpl.1177:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| newPMask@1) o@@1 f_85@@1))
))) (forall ((o@@2 T@Ref) (f_85@@2 T@Field_7403_21755) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| this@@15))) o@@2 f_85@@2) (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@3) this@@15 next)))) o@@2 f_85@@2)) (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| newPMask@1) o@@2 f_85@@2))
 :qid |stdinbpl.1177:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| newPMask@1) o@@2 f_85@@2))
))) (forall ((o@@3 T@Ref) (f_85@@3 T@Field_7479_7404) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| this@@15))) o@@3 f_85@@3) (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@3) this@@15 next)))) o@@3 f_85@@3)) (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| newPMask@1) o@@3 f_85@@3))
 :qid |stdinbpl.1177:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| newPMask@1) o@@3 f_85@@3))
))) (forall ((o@@4 T@Ref) (f_85@@4 T@Field_7479_53) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| this@@15))) o@@4 f_85@@4) (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@3) this@@15 next)))) o@@4 f_85@@4)) (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| newPMask@1) o@@4 f_85@@4))
 :qid |stdinbpl.1177:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| newPMask@1) o@@4 f_85@@4))
))) (forall ((o@@5 T@Ref) (f_85@@5 T@Field_19019_19020) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| this@@15))) o@@5 f_85@@5) (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@3) this@@15 next)))) o@@5 f_85@@5)) (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| newPMask@1) o@@5 f_85@@5))
 :qid |stdinbpl.1177:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| newPMask@1) o@@5 f_85@@5))
))) (forall ((o@@6 T@Ref) (f_85@@6 T@Field_21750_21755) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| this@@15))) o@@6 f_85@@6) (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@3) this@@15 next)))) o@@6 f_85@@6)) (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| newPMask@1) o@@6 f_85@@6))
 :qid |stdinbpl.1177:33|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| newPMask@1) o@@6 f_85@@6))
))) (= Heap@4 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@3) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@3) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@3) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@3) null (|valid#sm| this@@15) newPMask@1) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@3) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@3) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@3) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 15) 14))) anon14_correct))))
(let ((anon12_correct  (=> (and (state Heap@2 Mask@0) (= Heap@3 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@2) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@2) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@2) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@2) null (|valid#sm| this@@15) (PolymorphicMapType_15781 (store (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@2) null (|valid#sm| this@@15))) this@@15 next true) (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@2) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@2) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@2) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@2) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@2) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@2) null (|valid#sm| this@@15))) (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@2) null (|valid#sm| this@@15))))) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@2) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@2) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@2) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@2)))) (and (=> (= (ControlFlow 0 17) 15) anon27_Then_correct) (=> (= (ControlFlow 0 17) 16) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next) next) null) (=> (and (= Heap@2 Heap@0) (= (ControlFlow 0 19) 17)) anon12_correct))))
(let ((anon26_Then_correct  (=> (not (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next) next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_26 T@Ref) (f_29 T@Field_15305_15306) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next)))) o_26 f_29) (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next) next)))) o_26 f_29)) (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| newPMask@0) o_26 f_29))
 :qid |stdinbpl.1165:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| newPMask@0) o_26 f_29))
)) (forall ((o_26@@0 T@Ref) (f_29@@0 T@Field_15292_53) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next)))) o_26@@0 f_29@@0) (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next) next)))) o_26@@0 f_29@@0)) (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| newPMask@0) o_26@@0 f_29@@0))
 :qid |stdinbpl.1165:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| newPMask@0) o_26@@0 f_29@@0))
))) (forall ((o_26@@1 T@Ref) (f_29@@1 T@Field_7403_7480) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next)))) o_26@@1 f_29@@1) (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next) next)))) o_26@@1 f_29@@1)) (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| newPMask@0) o_26@@1 f_29@@1))
 :qid |stdinbpl.1165:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| newPMask@0) o_26@@1 f_29@@1))
))) (forall ((o_26@@2 T@Ref) (f_29@@2 T@Field_7403_21755) ) (!  (=> (or (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next)))) o_26@@2 f_29@@2) (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next) next)))) o_26@@2 f_29@@2)) (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| newPMask@0) o_26@@2 f_29@@2))
 :qid |stdinbpl.1165:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| newPMask@0) o_26@@2 f_29@@2))
))) (forall ((o_26@@3 T@Ref) (f_29@@3 T@Field_7479_7404) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next)))) o_26@@3 f_29@@3) (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next) next)))) o_26@@3 f_29@@3)) (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| newPMask@0) o_26@@3 f_29@@3))
 :qid |stdinbpl.1165:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| newPMask@0) o_26@@3 f_29@@3))
))) (forall ((o_26@@4 T@Ref) (f_29@@4 T@Field_7479_53) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next)))) o_26@@4 f_29@@4) (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next) next)))) o_26@@4 f_29@@4)) (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| newPMask@0) o_26@@4 f_29@@4))
 :qid |stdinbpl.1165:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| newPMask@0) o_26@@4 f_29@@4))
))) (forall ((o_26@@5 T@Ref) (f_29@@5 T@Field_19019_19020) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next)))) o_26@@5 f_29@@5) (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next) next)))) o_26@@5 f_29@@5)) (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| newPMask@0) o_26@@5 f_29@@5))
 :qid |stdinbpl.1165:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| newPMask@0) o_26@@5 f_29@@5))
))) (forall ((o_26@@6 T@Ref) (f_29@@6 T@Field_21750_21755) ) (!  (=> (or (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next)))) o_26@@6 f_29@@6) (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next) next)))) o_26@@6 f_29@@6)) (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| newPMask@0) o_26@@6 f_29@@6))
 :qid |stdinbpl.1165:33|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| newPMask@0) o_26@@6 f_29@@6))
))) (= Heap@1 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@0) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@0) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@0) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@0) this@@15 next)) newPMask@0) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@0) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@0) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@0) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@0)))) (and (= Heap@2 Heap@1) (= (ControlFlow 0 18) 17))) anon12_correct))))
(let ((anon10_correct  (=> (state Heap@@38 Unfolding1Mask@3) (and (=> (= (ControlFlow 0 20) (- 0 23)) (HasDirectPerm_7403_7404 Unfolding1Mask@3 this@@15 next)) (=> (HasDirectPerm_7403_7404 Unfolding1Mask@3 this@@15 next) (and (=> (= (ControlFlow 0 20) (- 0 22)) (HasDirectPerm_7403_7404 Unfolding1Mask@3 this@@15 next)) (=> (HasDirectPerm_7403_7404 Unfolding1Mask@3 this@@15 next) (and (=> (= (ControlFlow 0 20) (- 0 21)) (HasDirectPerm_7403_7404 Unfolding1Mask@3 (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next)) (=> (HasDirectPerm_7403_7404 Unfolding1Mask@3 (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next) (=> (= Heap@0 (PolymorphicMapType_15232 (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@38) (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@38) (store (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@38) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)) (PolymorphicMapType_15781 (store (|PolymorphicMapType_15781_7403_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@38) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)))) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next true) (|PolymorphicMapType_15781_7403_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@38) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)))) (|PolymorphicMapType_15781_7403_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@38) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)))) (|PolymorphicMapType_15781_7403_58629#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@38) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)))) (|PolymorphicMapType_15781_19019_7404#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@38) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)))) (|PolymorphicMapType_15781_19019_53#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@38) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)))) (|PolymorphicMapType_15781_19019_19020#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@38) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)))) (|PolymorphicMapType_15781_19019_59479#PolymorphicMapType_15781| (select (|PolymorphicMapType_15232_7483_21842#PolymorphicMapType_15232| Heap@@38) null (|valid#sm| (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)))))) (|PolymorphicMapType_15232_7403_7480#PolymorphicMapType_15232| Heap@@38) (|PolymorphicMapType_15232_7403_56235#PolymorphicMapType_15232| Heap@@38) (|PolymorphicMapType_15232_7479_7404#PolymorphicMapType_15232| Heap@@38) (|PolymorphicMapType_15232_7479_53#PolymorphicMapType_15232| Heap@@38))) (and (=> (= (ControlFlow 0 20) 18) anon26_Then_correct) (=> (= (ControlFlow 0 20) 19) anon26_Else_correct))))))))))))
(let ((anon25_Else_correct  (=> (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next) null) (=> (and (= Unfolding1Mask@3 Unfolding1Mask@1) (= (ControlFlow 0 25) 20)) anon10_correct))))
(let ((anon25_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next) null)) (= Unfolding1Mask@2 (PolymorphicMapType_15253 (store (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Unfolding1Mask@1) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next)) (+ (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Unfolding1Mask@1) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next))) FullPerm)) (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| Unfolding1Mask@1) (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| Unfolding1Mask@1) (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| Unfolding1Mask@1) (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| Unfolding1Mask@1) (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| Unfolding1Mask@1) (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| Unfolding1Mask@1) (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| Unfolding1Mask@1)))) (=> (and (and (InsidePredicate_7479_7479 (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@38) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next))) (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next)) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@38) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next)))) (state Heap@@38 Unfolding1Mask@2)) (and (= Unfolding1Mask@3 Unfolding1Mask@2) (= (ControlFlow 0 24) 20))) anon10_correct))))
(let ((anon8_correct  (=> (and (and (= Unfolding1Mask@0 (PolymorphicMapType_15253 (store (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| UnfoldingMask@3) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)) (- (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| UnfoldingMask@3) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next))) FullPerm)) (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| UnfoldingMask@3) (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| UnfoldingMask@3) (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| UnfoldingMask@3) (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| UnfoldingMask@3) (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| UnfoldingMask@3) (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| UnfoldingMask@3) (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| UnfoldingMask@3))) (not (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) null))) (and (= Unfolding1Mask@1 (PolymorphicMapType_15253 (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Unfolding1Mask@0) (store (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| Unfolding1Mask@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next (+ (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| Unfolding1Mask@0) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next) FullPerm)) (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| Unfolding1Mask@0) (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| Unfolding1Mask@0) (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| Unfolding1Mask@0) (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| Unfolding1Mask@0) (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| Unfolding1Mask@0) (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| Unfolding1Mask@0))) (state Heap@@38 Unfolding1Mask@1))) (and (=> (= (ControlFlow 0 26) 24) anon25_Then_correct) (=> (= (ControlFlow 0 26) 25) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 29) 26)) anon8_correct)))
(let ((anon24_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (<= FullPerm (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| UnfoldingMask@3) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next))))) (=> (<= FullPerm (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| UnfoldingMask@3) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)))) (=> (= (ControlFlow 0 27) 26) anon8_correct))))))
(let ((anon6_correct  (=> (state Heap@@38 UnfoldingMask@3) (=> (and (|valid#trigger_7479| Heap@@38 (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next))) (= (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@38) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next))) (CombineFrames (FrameFragment_7404 (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next)) (FrameFragment_7480 (ite (not (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next) null)) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@38) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) next))) EmptyFrame))))) (and (=> (= (ControlFlow 0 30) 27) anon24_Then_correct) (=> (= (ControlFlow 0 30) 29) anon24_Else_correct))))))
(let ((anon23_Else_correct  (=> (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 32) 30)) anon6_correct))))
(let ((anon23_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) null)) (= UnfoldingMask@2 (PolymorphicMapType_15253 (store (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| UnfoldingMask@1) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)) (+ (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| UnfoldingMask@1) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next))) FullPerm)) (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| UnfoldingMask@1) (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| UnfoldingMask@1) (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| UnfoldingMask@1) (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| UnfoldingMask@1) (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| UnfoldingMask@1) (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| UnfoldingMask@1) (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_7479_7479 (valid this@@15) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@38) null (valid this@@15)) (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@38) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)))) (state Heap@@38 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 31) 30))) anon6_correct))))
(let ((anon4_correct  (=> (and (and (= UnfoldingMask@0 (PolymorphicMapType_15253 (store (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Mask@0) null (valid this@@15) (- (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Mask@0) null (valid this@@15)) FullPerm)) (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| Mask@0) (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| Mask@0) (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| Mask@0) (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| Mask@0) (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| Mask@0) (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| Mask@0) (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| Mask@0))) (not (= this@@15 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_15253 (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| UnfoldingMask@0) (store (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| UnfoldingMask@0) this@@15 next (+ (select (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| UnfoldingMask@0) this@@15 next) FullPerm)) (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| UnfoldingMask@0) (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| UnfoldingMask@0) (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| UnfoldingMask@0) (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| UnfoldingMask@0) (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| UnfoldingMask@0) (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| UnfoldingMask@0))) (state Heap@@38 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 33) 31) anon23_Then_correct) (=> (= (ControlFlow 0 33) 32) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 36) 33)) anon4_correct)))
(let ((anon22_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 34) (- 0 35)) (<= FullPerm (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Mask@0) null (valid this@@15)))) (=> (<= FullPerm (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Mask@0) null (valid this@@15))) (=> (= (ControlFlow 0 34) 33) anon4_correct))))))
(let ((anon21_Else_correct  (=> (and (and (= (size_0 Heap@@38 this@@15) 2) (state Heap@@38 Mask@0)) (and (|valid#trigger_7479| Heap@@38 (valid this@@15)) (= (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@38) null (valid this@@15)) (CombineFrames (FrameFragment_7404 (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next)) (FrameFragment_7480 (ite (not (= (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next) null)) (select (|PolymorphicMapType_15232_7479_7480#PolymorphicMapType_15232| Heap@@38) null (valid (select (|PolymorphicMapType_15232_7278_7279#PolymorphicMapType_15232| Heap@@38) this@@15 next))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 37) 34) anon22_Then_correct) (=> (= (ControlFlow 0 37) 36) anon22_Else_correct)))))
(let ((anon21_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= this@@15 null))) (=> (not (= this@@15 null)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| Mask@0) null (valid this@@15)))))))))
(let ((anon0_correct  (=> (and (state Heap@@38 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_15232_7275_53#PolymorphicMapType_15232| Heap@@38) this@@15 $allocated)) (and (not (= this@@15 null)) (state Heap@@38 ZeroMask))) (and (and (= Mask@0 (PolymorphicMapType_15253 (store (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| ZeroMask) null (valid this@@15) (+ (select (|PolymorphicMapType_15253_7479_7480#PolymorphicMapType_15253| ZeroMask) null (valid this@@15)) FullPerm)) (|PolymorphicMapType_15253_7403_7404#PolymorphicMapType_15253| ZeroMask) (|PolymorphicMapType_15253_7479_7404#PolymorphicMapType_15253| ZeroMask) (|PolymorphicMapType_15253_7479_53#PolymorphicMapType_15253| ZeroMask) (|PolymorphicMapType_15253_7479_64200#PolymorphicMapType_15253| ZeroMask) (|PolymorphicMapType_15253_7403_7480#PolymorphicMapType_15253| ZeroMask) (|PolymorphicMapType_15253_7403_53#PolymorphicMapType_15253| ZeroMask) (|PolymorphicMapType_15253_7403_64531#PolymorphicMapType_15253| ZeroMask))) (state Heap@@38 Mask@0)) (and (state Heap@@38 Mask@0) (state Heap@@38 Mask@0)))) (and (=> (= (ControlFlow 0 38) 2) anon21_Then_correct) (=> (= (ControlFlow 0 38) 37) anon21_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 39) 38) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
