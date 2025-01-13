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
(declare-sort T@Field_7403_53 0)
(declare-sort T@Field_7416_7417 0)
(declare-sort T@Field_14059_14060 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_4153_14060 0)
(declare-sort T@Field_4153_15580 0)
(declare-sort T@Field_14059_4154 0)
(declare-sort T@Field_14059_53 0)
(declare-sort T@Field_15575_15580 0)
(declare-datatypes ((T@PolymorphicMapType_7364 0)) (((PolymorphicMapType_7364 (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| (Array T@Ref T@Field_14059_14060 Real)) (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| (Array T@Ref T@Field_7416_7417 Real)) (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| (Array T@Ref T@Field_14059_4154 Real)) (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| (Array T@Ref T@Field_14059_53 Real)) (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| (Array T@Ref T@Field_15575_15580 Real)) (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| (Array T@Ref T@Field_4153_14060 Real)) (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| (Array T@Ref T@Field_7403_53 Real)) (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| (Array T@Ref T@Field_4153_15580 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7892 0)) (((PolymorphicMapType_7892 (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| (Array T@Ref T@Field_7403_53 Bool)) (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| (Array T@Ref T@Field_7416_7417 Bool)) (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| (Array T@Ref T@Field_4153_14060 Bool)) (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| (Array T@Ref T@Field_4153_15580 Bool)) (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| (Array T@Ref T@Field_14059_53 Bool)) (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| (Array T@Ref T@Field_14059_4154 Bool)) (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| (Array T@Ref T@Field_14059_14060 Bool)) (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| (Array T@Ref T@Field_15575_15580 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7343 0)) (((PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| (Array T@Ref T@Field_7403_53 Bool)) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| (Array T@Ref T@Field_7416_7417 T@Ref)) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| (Array T@Ref T@Field_14059_14060 T@FrameType)) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| (Array T@Ref T@Field_4153_14060 T@FrameType)) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| (Array T@Ref T@Field_4153_15580 T@PolymorphicMapType_7892)) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| (Array T@Ref T@Field_14059_4154 T@Ref)) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| (Array T@Ref T@Field_14059_53 Bool)) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| (Array T@Ref T@Field_15575_15580 T@PolymorphicMapType_7892)) ) ) ))
(declare-fun $allocated () T@Field_7403_53)
(declare-fun next () T@Field_7416_7417)
(declare-fun succHeap (T@PolymorphicMapType_7343 T@PolymorphicMapType_7343) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7343 T@PolymorphicMapType_7343) Bool)
(declare-fun state (T@PolymorphicMapType_7343 T@PolymorphicMapType_7364) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7364) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7343 T@PolymorphicMapType_7343 T@PolymorphicMapType_7364) Bool)
(declare-fun IsPredicateField_4234_4235 (T@Field_14059_14060) Bool)
(declare-fun HasDirectPerm_14059_14060 (T@PolymorphicMapType_7364 T@Ref T@Field_14059_14060) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4234 (T@Field_14059_14060) T@Field_15575_15580)
(declare-fun IsPredicateField_4153_22229 (T@Field_4153_14060) Bool)
(declare-fun HasDirectPerm_4153_14060 (T@PolymorphicMapType_7364 T@Ref T@Field_4153_14060) Bool)
(declare-fun PredicateMaskField_4153 (T@Field_4153_14060) T@Field_4153_15580)
(declare-fun IsWandField_14059_25530 (T@Field_14059_14060) Bool)
(declare-fun WandMaskField_14059 (T@Field_14059_14060) T@Field_15575_15580)
(declare-fun IsWandField_4153_25173 (T@Field_4153_14060) Bool)
(declare-fun WandMaskField_4153 (T@Field_4153_14060) T@Field_4153_15580)
(declare-fun ZeroPMask () T@PolymorphicMapType_7892)
(declare-fun |f6'| (T@PolymorphicMapType_7343 T@Ref Int) Int)
(declare-fun dummyFunction_1472 (Int) Bool)
(declare-fun |f6#triggerStateless| (T@Ref Int) Int)
(declare-fun list (T@Ref) T@Field_14059_14060)
(declare-fun |f1'| (T@PolymorphicMapType_7343 Int) Int)
(declare-fun |f1#triggerStateless| (Int) Int)
(declare-fun |f3'| (T@PolymorphicMapType_7343 Int) Int)
(declare-fun |f3#triggerStateless| (Int) Int)
(declare-fun |f4'| (T@PolymorphicMapType_7343 Int) Int)
(declare-fun |f4#triggerStateless| (Int) Int)
(declare-fun |f5'| (T@PolymorphicMapType_7343 Int) Int)
(declare-fun |f5#triggerStateless| (Int) Int)
(declare-fun |f7'| (T@PolymorphicMapType_7343 Int) Bool)
(declare-fun dummyFunction_2942 (Bool) Bool)
(declare-fun |f7#triggerStateless| (Int) Bool)
(declare-fun |list#trigger_4234| (T@PolymorphicMapType_7343 T@Field_14059_14060) Bool)
(declare-fun |list#everUsed_4234| (T@Field_14059_14060) Bool)
(declare-fun f1_3 (T@PolymorphicMapType_7343 Int) Int)
(declare-fun f3_2 (T@PolymorphicMapType_7343 Int) Int)
(declare-fun f4_1 (T@PolymorphicMapType_7343 Int) Int)
(declare-fun f5_1 (T@PolymorphicMapType_7343 Int) Int)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun |list#sm| (T@Ref) T@Field_15575_15580)
(declare-fun dummyHeap () T@PolymorphicMapType_7343)
(declare-fun ZeroMask () T@PolymorphicMapType_7364)
(declare-fun InsidePredicate_14059_14059 (T@Field_14059_14060 T@FrameType T@Field_14059_14060 T@FrameType) Bool)
(declare-fun InsidePredicate_7403_7403 (T@Field_4153_14060 T@FrameType T@Field_4153_14060 T@FrameType) Bool)
(declare-fun IsPredicateField_4153_4154 (T@Field_7416_7417) Bool)
(declare-fun IsWandField_4153_4154 (T@Field_7416_7417) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4153_31241 (T@Field_4153_15580) Bool)
(declare-fun IsWandField_4153_31257 (T@Field_4153_15580) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4153_53 (T@Field_7403_53) Bool)
(declare-fun IsWandField_4153_53 (T@Field_7403_53) Bool)
(declare-fun IsPredicateField_4234_30592 (T@Field_15575_15580) Bool)
(declare-fun IsWandField_4234_30608 (T@Field_15575_15580) Bool)
(declare-fun IsPredicateField_4234_53 (T@Field_14059_53) Bool)
(declare-fun IsWandField_4234_53 (T@Field_14059_53) Bool)
(declare-fun IsPredicateField_4234_4154 (T@Field_14059_4154) Bool)
(declare-fun IsWandField_4234_4154 (T@Field_14059_4154) Bool)
(declare-fun HasDirectPerm_14059_21941 (T@PolymorphicMapType_7364 T@Ref T@Field_15575_15580) Bool)
(declare-fun HasDirectPerm_14059_53 (T@PolymorphicMapType_7364 T@Ref T@Field_14059_53) Bool)
(declare-fun HasDirectPerm_14059_4154 (T@PolymorphicMapType_7364 T@Ref T@Field_14059_4154) Bool)
(declare-fun HasDirectPerm_4153_21001 (T@PolymorphicMapType_7364 T@Ref T@Field_4153_15580) Bool)
(declare-fun HasDirectPerm_4153_53 (T@PolymorphicMapType_7364 T@Ref T@Field_7403_53) Bool)
(declare-fun HasDirectPerm_4153_4154 (T@PolymorphicMapType_7364 T@Ref T@Field_7416_7417) Bool)
(declare-fun f6_1 (T@PolymorphicMapType_7343 T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun f7 (T@PolymorphicMapType_7343 Int) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |f7#trigger| (T@FrameType Int) Bool)
(declare-fun sumMask (T@PolymorphicMapType_7364 T@PolymorphicMapType_7364 T@PolymorphicMapType_7364) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun |f7#frame| (T@FrameType Int) Bool)
(declare-fun |f6#frame| (T@FrameType T@Ref Int) Int)
(declare-fun getPredWandId_4234_4235 (T@Field_14059_14060) Int)
(declare-fun |f1#frame| (T@FrameType Int) Int)
(declare-fun |f3#frame| (T@FrameType Int) Int)
(declare-fun |f4#frame| (T@FrameType Int) Int)
(declare-fun |f5#frame| (T@FrameType Int) Int)
(declare-fun InsidePredicate_14059_7403 (T@Field_14059_14060 T@FrameType T@Field_4153_14060 T@FrameType) Bool)
(declare-fun InsidePredicate_7403_14059 (T@Field_4153_14060 T@FrameType T@Field_14059_14060 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7343) (Heap1 T@PolymorphicMapType_7343) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7343) (Mask T@PolymorphicMapType_7364) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7343) (ExhaleHeap T@PolymorphicMapType_7343) (Mask@@0 T@PolymorphicMapType_7364) (pm_f T@Field_14059_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_14059_14060 Mask@@0 null pm_f) (IsPredicateField_4234_4235 pm_f)) (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_7403_53) ) (!  (=> (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@0) o2 f_2) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_7416_7417) ) (!  (=> (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@0) o2@@0 f_2@@0) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4153_14060) ) (!  (=> (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@0) o2@@1 f_2@@1) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4153_15580) ) (!  (=> (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@0) o2@@2 f_2@@2) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_14059_53) ) (!  (=> (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@0) o2@@3 f_2@@3) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_14059_4154) ) (!  (=> (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@0) o2@@4 f_2@@4) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_14059_14060) ) (!  (=> (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@0) o2@@5 f_2@@5) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_15575_15580) ) (!  (=> (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) o2@@6 f_2@@6) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4234_4235 pm_f))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7343) (ExhaleHeap@@0 T@PolymorphicMapType_7343) (Mask@@1 T@PolymorphicMapType_7364) (pm_f@@0 T@Field_4153_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4153_14060 Mask@@1 null pm_f@@0) (IsPredicateField_4153_22229 pm_f@@0)) (and (and (and (and (and (and (and (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_7403_53) ) (!  (=> (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@1) o2@@7 f_2@@7) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@7 f_2@@7))
)) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_7416_7417) ) (!  (=> (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@1) o2@@8 f_2@@8) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_4153_14060) ) (!  (=> (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@1) o2@@9 f_2@@9) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_4153_15580) ) (!  (=> (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) o2@@10 f_2@@10) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_14059_53) ) (!  (=> (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@1) o2@@11 f_2@@11) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_14059_4154) ) (!  (=> (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@1) o2@@12 f_2@@12) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_14059_14060) ) (!  (=> (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@1) o2@@13 f_2@@13) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_15575_15580) ) (!  (=> (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@1) o2@@14 f_2@@14) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@14 f_2@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4153_22229 pm_f@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7343) (ExhaleHeap@@1 T@PolymorphicMapType_7343) (Mask@@2 T@PolymorphicMapType_7364) (pm_f@@1 T@Field_14059_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_14059_14060 Mask@@2 null pm_f@@1) (IsWandField_14059_25530 pm_f@@1)) (and (and (and (and (and (and (and (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_7403_53) ) (!  (=> (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@2) o2@@15 f_2@@15) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@15 f_2@@15)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@15 f_2@@15))
)) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_7416_7417) ) (!  (=> (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@2) o2@@16 f_2@@16) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@16 f_2@@16)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_4153_14060) ) (!  (=> (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@2) o2@@17 f_2@@17) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@17 f_2@@17)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_4153_15580) ) (!  (=> (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@2) o2@@18 f_2@@18) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@18 f_2@@18)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_14059_53) ) (!  (=> (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@2) o2@@19 f_2@@19) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_14059_4154) ) (!  (=> (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@2) o2@@20 f_2@@20) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_14059_14060) ) (!  (=> (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@2) o2@@21 f_2@@21) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_15575_15580) ) (!  (=> (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) o2@@22 f_2@@22) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_14059_25530 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7343) (ExhaleHeap@@2 T@PolymorphicMapType_7343) (Mask@@3 T@PolymorphicMapType_7364) (pm_f@@2 T@Field_4153_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4153_14060 Mask@@3 null pm_f@@2) (IsWandField_4153_25173 pm_f@@2)) (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_7403_53) ) (!  (=> (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@3) o2@@23 f_2@@23) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_7416_7417) ) (!  (=> (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@3) o2@@24 f_2@@24) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_4153_14060) ) (!  (=> (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@3) o2@@25 f_2@@25) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_4153_15580) ) (!  (=> (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) o2@@26 f_2@@26) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_14059_53) ) (!  (=> (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@3) o2@@27 f_2@@27) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_14059_4154) ) (!  (=> (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@3) o2@@28 f_2@@28) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_14059_14060) ) (!  (=> (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@3) o2@@29 f_2@@29) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_15575_15580) ) (!  (=> (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@3) o2@@30 f_2@@30) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@30 f_2@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4153_25173 pm_f@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7343) (Heap1@@0 T@PolymorphicMapType_7343) (Heap2 T@PolymorphicMapType_7343) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15575_15580) ) (!  (not (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14059_14060) ) (!  (not (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14059_4154) ) (!  (not (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14059_53) ) (!  (not (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4153_15580) ) (!  (not (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4153_14060) ) (!  (not (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7416_7417) ) (!  (not (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7403_53) ) (!  (not (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7343) (xs T@Ref) (x Int) ) (! (dummyFunction_1472 (|f6#triggerStateless| xs x))
 :qid |stdinbpl.489:15|
 :skolemid |41|
 :pattern ( (|f6'| Heap@@4 xs x))
)))
(assert (forall ((xs@@0 T@Ref) ) (! (IsPredicateField_4234_4235 (list xs@@0))
 :qid |stdinbpl.637:15|
 :skolemid |49|
 :pattern ( (list xs@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7343) (i Int) ) (! (dummyFunction_1472 (|f1#triggerStateless| i))
 :qid |stdinbpl.235:15|
 :skolemid |25|
 :pattern ( (|f1'| Heap@@5 i))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7343) (i@@0 Int) ) (! (dummyFunction_1472 (|f3#triggerStateless| i@@0))
 :qid |stdinbpl.339:15|
 :skolemid |29|
 :pattern ( (|f3'| Heap@@6 i@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7343) (i@@1 Int) ) (! (dummyFunction_1472 (|f4#triggerStateless| i@@1))
 :qid |stdinbpl.389:15|
 :skolemid |33|
 :pattern ( (|f4'| Heap@@7 i@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7343) (i@@2 Int) ) (! (dummyFunction_1472 (|f5#triggerStateless| i@@2))
 :qid |stdinbpl.439:15|
 :skolemid |37|
 :pattern ( (|f5'| Heap@@8 i@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7343) (y Int) ) (! (dummyFunction_2942 (|f7#triggerStateless| y))
 :qid |stdinbpl.586:15|
 :skolemid |45|
 :pattern ( (|f7'| Heap@@9 y))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7343) (xs@@1 T@Ref) ) (! (|list#everUsed_4234| (list xs@@1))
 :qid |stdinbpl.656:15|
 :skolemid |53|
 :pattern ( (|list#trigger_4234| Heap@@10 (list xs@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7343) (i@@3 Int) ) (!  (and (= (f1_3 Heap@@11 i@@3) (|f1'| Heap@@11 i@@3)) (dummyFunction_1472 (|f1#triggerStateless| i@@3)))
 :qid |stdinbpl.231:15|
 :skolemid |24|
 :pattern ( (f1_3 Heap@@11 i@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7343) (i@@4 Int) ) (!  (and (= (f3_2 Heap@@12 i@@4) (|f3'| Heap@@12 i@@4)) (dummyFunction_1472 (|f3#triggerStateless| i@@4)))
 :qid |stdinbpl.335:15|
 :skolemid |28|
 :pattern ( (f3_2 Heap@@12 i@@4))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7343) (i@@5 Int) ) (!  (and (= (f4_1 Heap@@13 i@@5) (|f4'| Heap@@13 i@@5)) (dummyFunction_1472 (|f4#triggerStateless| i@@5)))
 :qid |stdinbpl.385:15|
 :skolemid |32|
 :pattern ( (f4_1 Heap@@13 i@@5))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7343) (i@@6 Int) ) (!  (and (= (f5_1 Heap@@14 i@@6) (|f5'| Heap@@14 i@@6)) (dummyFunction_1472 (|f5#triggerStateless| i@@6)))
 :qid |stdinbpl.435:15|
 :skolemid |36|
 :pattern ( (f5_1 Heap@@14 i@@6))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.192:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7343) (ExhaleHeap@@3 T@PolymorphicMapType_7343) (Mask@@4 T@PolymorphicMapType_7364) (pm_f@@3 T@Field_14059_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_14059_14060 Mask@@4 null pm_f@@3) (IsPredicateField_4234_4235 pm_f@@3)) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@15) null (PredicateMaskField_4234 pm_f@@3)) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@3) null (PredicateMaskField_4234 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4234_4235 pm_f@@3) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@3) null (PredicateMaskField_4234 pm_f@@3)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7343) (ExhaleHeap@@4 T@PolymorphicMapType_7343) (Mask@@5 T@PolymorphicMapType_7364) (pm_f@@4 T@Field_4153_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4153_14060 Mask@@5 null pm_f@@4) (IsPredicateField_4153_22229 pm_f@@4)) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@16) null (PredicateMaskField_4153 pm_f@@4)) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@4) null (PredicateMaskField_4153 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4153_22229 pm_f@@4) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@4) null (PredicateMaskField_4153 pm_f@@4)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7343) (ExhaleHeap@@5 T@PolymorphicMapType_7343) (Mask@@6 T@PolymorphicMapType_7364) (pm_f@@5 T@Field_14059_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_14059_14060 Mask@@6 null pm_f@@5) (IsWandField_14059_25530 pm_f@@5)) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@17) null (WandMaskField_14059 pm_f@@5)) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@5) null (WandMaskField_14059 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@6) (IsWandField_14059_25530 pm_f@@5) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@5) null (WandMaskField_14059 pm_f@@5)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7343) (ExhaleHeap@@6 T@PolymorphicMapType_7343) (Mask@@7 T@PolymorphicMapType_7364) (pm_f@@6 T@Field_4153_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4153_14060 Mask@@7 null pm_f@@6) (IsWandField_4153_25173 pm_f@@6)) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@18) null (WandMaskField_4153 pm_f@@6)) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@6) null (WandMaskField_4153 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@7) (IsWandField_4153_25173 pm_f@@6) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@6) null (WandMaskField_4153 pm_f@@6)))
)))
(assert (forall ((xs@@2 T@Ref) (xs2 T@Ref) ) (!  (=> (= (list xs@@2) (list xs2)) (= xs@@2 xs2))
 :qid |stdinbpl.647:15|
 :skolemid |51|
 :pattern ( (list xs@@2) (list xs2))
)))
(assert (forall ((xs@@3 T@Ref) (xs2@@0 T@Ref) ) (!  (=> (= (|list#sm| xs@@3) (|list#sm| xs2@@0)) (= xs@@3 xs2@@0))
 :qid |stdinbpl.651:15|
 :skolemid |52|
 :pattern ( (|list#sm| xs@@3) (|list#sm| xs2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7343) (ExhaleHeap@@7 T@PolymorphicMapType_7343) (Mask@@8 T@PolymorphicMapType_7364) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@19) o_1 $allocated) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_14059_14060) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14059_14059 p v_1 p w))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14059_14059 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4153_14060) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7403_7403 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7403_7403 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4153_4154 next)))
(assert  (not (IsWandField_4153_4154 next)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7343) (ExhaleHeap@@8 T@PolymorphicMapType_7343) (Mask@@9 T@PolymorphicMapType_7364) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@20 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7364) (o_2@@7 T@Ref) (f_4@@7 T@Field_4153_15580) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4153_31241 f_4@@7))) (not (IsWandField_4153_31257 f_4@@7))) (<= (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7364) (o_2@@8 T@Ref) (f_4@@8 T@Field_7403_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4153_53 f_4@@8))) (not (IsWandField_4153_53 f_4@@8))) (<= (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7364) (o_2@@9 T@Ref) (f_4@@9 T@Field_7416_7417) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4153_4154 f_4@@9))) (not (IsWandField_4153_4154 f_4@@9))) (<= (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7364) (o_2@@10 T@Ref) (f_4@@10 T@Field_4153_14060) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4153_22229 f_4@@10))) (not (IsWandField_4153_25173 f_4@@10))) (<= (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7364) (o_2@@11 T@Ref) (f_4@@11 T@Field_15575_15580) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4234_30592 f_4@@11))) (not (IsWandField_4234_30608 f_4@@11))) (<= (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7364) (o_2@@12 T@Ref) (f_4@@12 T@Field_14059_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4234_53 f_4@@12))) (not (IsWandField_4234_53 f_4@@12))) (<= (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7364) (o_2@@13 T@Ref) (f_4@@13 T@Field_14059_4154) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4234_4154 f_4@@13))) (not (IsWandField_4234_4154 f_4@@13))) (<= (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7364) (o_2@@14 T@Ref) (f_4@@14 T@Field_14059_14060) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4234_4235 f_4@@14))) (not (IsWandField_14059_25530 f_4@@14))) (<= (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7364) (o_2@@15 T@Ref) (f_4@@15 T@Field_15575_15580) ) (! (= (HasDirectPerm_14059_21941 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14059_21941 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7364) (o_2@@16 T@Ref) (f_4@@16 T@Field_14059_14060) ) (! (= (HasDirectPerm_14059_14060 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14059_14060 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7364) (o_2@@17 T@Ref) (f_4@@17 T@Field_14059_53) ) (! (= (HasDirectPerm_14059_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14059_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7364) (o_2@@18 T@Ref) (f_4@@18 T@Field_14059_4154) ) (! (= (HasDirectPerm_14059_4154 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14059_4154 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7364) (o_2@@19 T@Ref) (f_4@@19 T@Field_4153_15580) ) (! (= (HasDirectPerm_4153_21001 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4153_21001 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7364) (o_2@@20 T@Ref) (f_4@@20 T@Field_4153_14060) ) (! (= (HasDirectPerm_4153_14060 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4153_14060 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7364) (o_2@@21 T@Ref) (f_4@@21 T@Field_7403_53) ) (! (= (HasDirectPerm_4153_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4153_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7364) (o_2@@22 T@Ref) (f_4@@22 T@Field_7416_7417) ) (! (= (HasDirectPerm_4153_4154 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4153_4154 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7343) (Mask@@26 T@PolymorphicMapType_7364) (xs@@4 T@Ref) (x@@0 Int) ) (!  (=> (and (state Heap@@21 Mask@@26) (< AssumeFunctionsAbove 3)) (=> (and (>= x@@0 0) (f7 Heap@@21 x@@0)) (= (f6_1 Heap@@21 xs@@4 x@@0) (ite (not (= x@@0 0)) (|f6'| Heap@@21 xs@@4 (- x@@0 1)) x@@0))))
 :qid |stdinbpl.495:15|
 :skolemid |42|
 :pattern ( (state Heap@@21 Mask@@26) (f6_1 Heap@@21 xs@@4 x@@0))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.167:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7343) (ExhaleHeap@@9 T@PolymorphicMapType_7343) (Mask@@27 T@PolymorphicMapType_7364) (o_1@@0 T@Ref) (f_2@@31 T@Field_15575_15580) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_14059_21941 Mask@@27 o_1@@0 f_2@@31) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@22) o_1@@0 f_2@@31) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@9) o_1@@0 f_2@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@9) o_1@@0 f_2@@31))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7343) (ExhaleHeap@@10 T@PolymorphicMapType_7343) (Mask@@28 T@PolymorphicMapType_7364) (o_1@@1 T@Ref) (f_2@@32 T@Field_14059_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@10 Mask@@28) (=> (HasDirectPerm_14059_14060 Mask@@28 o_1@@1 f_2@@32) (= (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@23) o_1@@1 f_2@@32) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@10) o_1@@1 f_2@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@10 Mask@@28) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@10) o_1@@1 f_2@@32))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7343) (ExhaleHeap@@11 T@PolymorphicMapType_7343) (Mask@@29 T@PolymorphicMapType_7364) (o_1@@2 T@Ref) (f_2@@33 T@Field_14059_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@11 Mask@@29) (=> (HasDirectPerm_14059_53 Mask@@29 o_1@@2 f_2@@33) (= (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@24) o_1@@2 f_2@@33) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@11) o_1@@2 f_2@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@11 Mask@@29) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@11) o_1@@2 f_2@@33))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7343) (ExhaleHeap@@12 T@PolymorphicMapType_7343) (Mask@@30 T@PolymorphicMapType_7364) (o_1@@3 T@Ref) (f_2@@34 T@Field_14059_4154) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@12 Mask@@30) (=> (HasDirectPerm_14059_4154 Mask@@30 o_1@@3 f_2@@34) (= (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@25) o_1@@3 f_2@@34) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@12) o_1@@3 f_2@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@12 Mask@@30) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@12) o_1@@3 f_2@@34))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7343) (ExhaleHeap@@13 T@PolymorphicMapType_7343) (Mask@@31 T@PolymorphicMapType_7364) (o_1@@4 T@Ref) (f_2@@35 T@Field_4153_15580) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@13 Mask@@31) (=> (HasDirectPerm_4153_21001 Mask@@31 o_1@@4 f_2@@35) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@26) o_1@@4 f_2@@35) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@13) o_1@@4 f_2@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@13 Mask@@31) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@13) o_1@@4 f_2@@35))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7343) (ExhaleHeap@@14 T@PolymorphicMapType_7343) (Mask@@32 T@PolymorphicMapType_7364) (o_1@@5 T@Ref) (f_2@@36 T@Field_4153_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@14 Mask@@32) (=> (HasDirectPerm_4153_14060 Mask@@32 o_1@@5 f_2@@36) (= (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@27) o_1@@5 f_2@@36) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@14) o_1@@5 f_2@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@14 Mask@@32) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@14) o_1@@5 f_2@@36))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7343) (ExhaleHeap@@15 T@PolymorphicMapType_7343) (Mask@@33 T@PolymorphicMapType_7364) (o_1@@6 T@Ref) (f_2@@37 T@Field_7403_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@15 Mask@@33) (=> (HasDirectPerm_4153_53 Mask@@33 o_1@@6 f_2@@37) (= (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@28) o_1@@6 f_2@@37) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@15) o_1@@6 f_2@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@15 Mask@@33) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@15) o_1@@6 f_2@@37))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7343) (ExhaleHeap@@16 T@PolymorphicMapType_7343) (Mask@@34 T@PolymorphicMapType_7364) (o_1@@7 T@Ref) (f_2@@38 T@Field_7416_7417) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@16 Mask@@34) (=> (HasDirectPerm_4153_4154 Mask@@34 o_1@@7 f_2@@38) (= (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@29) o_1@@7 f_2@@38) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@16) o_1@@7 f_2@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@16 Mask@@34) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@16) o_1@@7 f_2@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_4153_15580) ) (! (= (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_7403_53) ) (! (= (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_7416_7417) ) (! (= (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_4153_14060) ) (! (= (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_15575_15580) ) (! (= (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_14059_53) ) (! (= (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_14059_4154) ) (! (= (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_14059_14060) ) (! (= (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7343) (xs@@5 T@Ref) (x@@1 Int) ) (!  (and (= (f6_1 Heap@@30 xs@@5 x@@1) (|f6'| Heap@@30 xs@@5 x@@1)) (dummyFunction_1472 (|f6#triggerStateless| xs@@5 x@@1)))
 :qid |stdinbpl.485:15|
 :skolemid |40|
 :pattern ( (f6_1 Heap@@30 xs@@5 x@@1))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7343) (Mask@@35 T@PolymorphicMapType_7364) (i@@7 Int) ) (!  (=> (and (state Heap@@31 Mask@@35) (< AssumeFunctionsAbove 1)) (=> (>= i@@7 0) (= (f1_3 Heap@@31 i@@7) (ite (< i@@7 10) 1 (ite  (or (< (|f1'| Heap@@31 (- i@@7 1)) 4) (< (|f1'| Heap@@31 (- i@@7 3)) 6)) 1 (|f1'| Heap@@31 (- i@@7 1)))))))
 :qid |stdinbpl.241:15|
 :skolemid |26|
 :pattern ( (state Heap@@31 Mask@@35) (f1_3 Heap@@31 i@@7))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7343) (Mask@@36 T@PolymorphicMapType_7364) (y@@0 Int) ) (!  (=> (and (state Heap@@32 Mask@@36) (or (< AssumeFunctionsAbove 5) (|f7#trigger| EmptyFrame y@@0))) (|f7'| Heap@@32 y@@0))
 :qid |stdinbpl.599:15|
 :skolemid |47|
 :pattern ( (state Heap@@32 Mask@@36) (|f7'| Heap@@32 y@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7364) (SummandMask1 T@PolymorphicMapType_7364) (SummandMask2 T@PolymorphicMapType_7364) (o_2@@31 T@Ref) (f_4@@31 T@Field_4153_15580) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7364) (SummandMask1@@0 T@PolymorphicMapType_7364) (SummandMask2@@0 T@PolymorphicMapType_7364) (o_2@@32 T@Ref) (f_4@@32 T@Field_7403_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7364) (SummandMask1@@1 T@PolymorphicMapType_7364) (SummandMask2@@1 T@PolymorphicMapType_7364) (o_2@@33 T@Ref) (f_4@@33 T@Field_7416_7417) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7364) (SummandMask1@@2 T@PolymorphicMapType_7364) (SummandMask2@@2 T@PolymorphicMapType_7364) (o_2@@34 T@Ref) (f_4@@34 T@Field_4153_14060) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7364) (SummandMask1@@3 T@PolymorphicMapType_7364) (SummandMask2@@3 T@PolymorphicMapType_7364) (o_2@@35 T@Ref) (f_4@@35 T@Field_15575_15580) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7364) (SummandMask1@@4 T@PolymorphicMapType_7364) (SummandMask2@@4 T@PolymorphicMapType_7364) (o_2@@36 T@Ref) (f_4@@36 T@Field_14059_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7364) (SummandMask1@@5 T@PolymorphicMapType_7364) (SummandMask2@@5 T@PolymorphicMapType_7364) (o_2@@37 T@Ref) (f_4@@37 T@Field_14059_4154) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7364) (SummandMask1@@6 T@PolymorphicMapType_7364) (SummandMask2@@6 T@PolymorphicMapType_7364) (o_2@@38 T@Ref) (f_4@@38 T@Field_14059_14060) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7343) (Mask@@37 T@PolymorphicMapType_7364) (y@@1 Int) ) (!  (=> (state Heap@@33 Mask@@37) (= (|f7'| Heap@@33 y@@1) (|f7#frame| EmptyFrame y@@1)))
 :qid |stdinbpl.593:15|
 :skolemid |46|
 :pattern ( (state Heap@@33 Mask@@37) (|f7'| Heap@@33 y@@1))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7343) (Mask@@38 T@PolymorphicMapType_7364) (xs@@6 T@Ref) (x@@2 Int) ) (!  (=> (state Heap@@34 Mask@@38) (= (|f6'| Heap@@34 xs@@6 x@@2) (|f6#frame| (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@34) null (list xs@@6)) xs@@6 x@@2)))
 :qid |stdinbpl.502:15|
 :skolemid |43|
 :pattern ( (state Heap@@34 Mask@@38) (|f6'| Heap@@34 xs@@6 x@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7343) (y@@2 Int) ) (!  (and (= (f7 Heap@@35 y@@2) (|f7'| Heap@@35 y@@2)) (dummyFunction_2942 (|f7#triggerStateless| y@@2)))
 :qid |stdinbpl.582:15|
 :skolemid |44|
 :pattern ( (f7 Heap@@35 y@@2))
)))
(assert (forall ((xs@@7 T@Ref) ) (! (= (getPredWandId_4234_4235 (list xs@@7)) 0)
 :qid |stdinbpl.641:15|
 :skolemid |50|
 :pattern ( (list xs@@7))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_7343) (Mask@@39 T@PolymorphicMapType_7364) (i@@8 Int) ) (!  (=> (state Heap@@36 Mask@@39) (= (|f1'| Heap@@36 i@@8) (|f1#frame| EmptyFrame i@@8)))
 :qid |stdinbpl.248:15|
 :skolemid |27|
 :pattern ( (state Heap@@36 Mask@@39) (|f1'| Heap@@36 i@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_7343) (Mask@@40 T@PolymorphicMapType_7364) (i@@9 Int) ) (!  (=> (state Heap@@37 Mask@@40) (= (|f3'| Heap@@37 i@@9) (|f3#frame| EmptyFrame i@@9)))
 :qid |stdinbpl.352:15|
 :skolemid |31|
 :pattern ( (state Heap@@37 Mask@@40) (|f3'| Heap@@37 i@@9))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_7343) (Mask@@41 T@PolymorphicMapType_7364) (i@@10 Int) ) (!  (=> (state Heap@@38 Mask@@41) (= (|f4'| Heap@@38 i@@10) (|f4#frame| EmptyFrame i@@10)))
 :qid |stdinbpl.402:15|
 :skolemid |35|
 :pattern ( (state Heap@@38 Mask@@41) (|f4'| Heap@@38 i@@10))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_7343) (Mask@@42 T@PolymorphicMapType_7364) (i@@11 Int) ) (!  (=> (state Heap@@39 Mask@@42) (= (|f5'| Heap@@39 i@@11) (|f5#frame| EmptyFrame i@@11)))
 :qid |stdinbpl.452:15|
 :skolemid |39|
 :pattern ( (state Heap@@39 Mask@@42) (|f5'| Heap@@39 i@@11))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_7343) (o T@Ref) (f_3 T@Field_15575_15580) (v T@PolymorphicMapType_7892) ) (! (succHeap Heap@@40 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@40) (store (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@40) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@40) (store (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@40) o f_3 v)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_7343) (o@@0 T@Ref) (f_3@@0 T@Field_14059_14060) (v@@0 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@41) (store (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@41) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@41) (store (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@41) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_7343) (o@@1 T@Ref) (f_3@@1 T@Field_14059_4154) (v@@1 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@42) (store (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@42) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@42) (store (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@42) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_7343) (o@@2 T@Ref) (f_3@@2 T@Field_14059_53) (v@@2 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@43) (store (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@43) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@43) (store (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@43) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_7343) (o@@3 T@Ref) (f_3@@3 T@Field_4153_15580) (v@@3 T@PolymorphicMapType_7892) ) (! (succHeap Heap@@44 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@44) (store (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@44) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@44) (store (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@44) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_7343) (o@@4 T@Ref) (f_3@@4 T@Field_4153_14060) (v@@4 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@45) (store (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@45) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@45) (store (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@45) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_7343) (o@@5 T@Ref) (f_3@@5 T@Field_7416_7417) (v@@5 T@Ref) ) (! (succHeap Heap@@46 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@46) (store (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@46) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@46) (store (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@46) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_7343) (o@@6 T@Ref) (f_3@@6 T@Field_7403_53) (v@@6 Bool) ) (! (succHeap Heap@@47 (PolymorphicMapType_7343 (store (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@47) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (store (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@47) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@47)))
)))
(assert (forall ((xs@@8 T@Ref) ) (! (= (PredicateMaskField_4234 (list xs@@8)) (|list#sm| xs@@8))
 :qid |stdinbpl.633:15|
 :skolemid |48|
 :pattern ( (PredicateMaskField_4234 (list xs@@8)))
)))
(assert (forall ((o@@7 T@Ref) (f T@Field_7416_7417) (Heap@@48 T@PolymorphicMapType_7343) ) (!  (=> (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@48) o@@7 $allocated) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@48) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@48) o@@7 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@48) o@@7 f))
)))
(assert (forall ((p@@2 T@Field_14059_14060) (v_1@@1 T@FrameType) (q T@Field_14059_14060) (w@@1 T@FrameType) (r T@Field_14059_14060) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14059_14059 p@@2 v_1@@1 q w@@1) (InsidePredicate_14059_14059 q w@@1 r u)) (InsidePredicate_14059_14059 p@@2 v_1@@1 r u))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14059_14059 p@@2 v_1@@1 q w@@1) (InsidePredicate_14059_14059 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14059_14060) (v_1@@2 T@FrameType) (q@@0 T@Field_14059_14060) (w@@2 T@FrameType) (r@@0 T@Field_4153_14060) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14059_14059 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14059_7403 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14059_7403 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14059_14059 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14059_7403 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14059_14060) (v_1@@3 T@FrameType) (q@@1 T@Field_4153_14060) (w@@3 T@FrameType) (r@@1 T@Field_14059_14060) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14059_7403 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7403_14059 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14059_14059 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14059_7403 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7403_14059 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14059_14060) (v_1@@4 T@FrameType) (q@@2 T@Field_4153_14060) (w@@4 T@FrameType) (r@@2 T@Field_4153_14060) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14059_7403 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7403_7403 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14059_7403 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14059_7403 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7403_7403 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4153_14060) (v_1@@5 T@FrameType) (q@@3 T@Field_14059_14060) (w@@5 T@FrameType) (r@@3 T@Field_14059_14060) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7403_14059 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14059_14059 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7403_14059 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7403_14059 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14059_14059 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4153_14060) (v_1@@6 T@FrameType) (q@@4 T@Field_14059_14060) (w@@6 T@FrameType) (r@@4 T@Field_4153_14060) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7403_14059 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14059_7403 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7403_7403 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7403_14059 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14059_7403 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4153_14060) (v_1@@7 T@FrameType) (q@@5 T@Field_4153_14060) (w@@7 T@FrameType) (r@@5 T@Field_14059_14060) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7403_7403 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7403_14059 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7403_14059 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7403_7403 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7403_14059 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4153_14060) (v_1@@8 T@FrameType) (q@@6 T@Field_4153_14060) (w@@8 T@FrameType) (r@@6 T@Field_4153_14060) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7403_7403 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7403_7403 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7403_7403 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7403_7403 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7403_7403 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_7343) (Mask@@43 T@PolymorphicMapType_7364) (i@@12 Int) ) (!  (=> (and (state Heap@@49 Mask@@43) (< AssumeFunctionsAbove 0)) (= (f5_1 Heap@@49 i@@12) 7))
 :qid |stdinbpl.445:15|
 :skolemid |38|
 :pattern ( (state Heap@@49 Mask@@43) (f5_1 Heap@@49 i@@12))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_7343) (Mask@@44 T@PolymorphicMapType_7364) (i@@13 Int) ) (!  (=> (and (state Heap@@50 Mask@@44) (< AssumeFunctionsAbove 2)) (= (f3_2 Heap@@50 i@@13) 1))
 :qid |stdinbpl.345:15|
 :skolemid |30|
 :pattern ( (state Heap@@50 Mask@@44) (f3_2 Heap@@50 i@@13))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_7343) (Mask@@45 T@PolymorphicMapType_7364) (i@@14 Int) ) (!  (=> (and (state Heap@@51 Mask@@45) (< AssumeFunctionsAbove 4)) (= (f4_1 Heap@@51 i@@14) 1))
 :qid |stdinbpl.395:15|
 :skolemid |34|
 :pattern ( (state Heap@@51 Mask@@45) (f4_1 Heap@@51 i@@14))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_7364)
(declare-fun xs@@9 () T@Ref)
(declare-fun x@@3 () Int)
(declare-fun Heap@@52 () T@PolymorphicMapType_7343)
(declare-fun |f6#trigger| (T@FrameType T@Ref Int) Bool)
(set-info :boogie-vc-id |f6#definedness|)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon9_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| Mask@0) null (list xs@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| Mask@0) null (list xs@@9)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (>= (- x@@3 1) 0)) (=> (>= (- x@@3 1) 0) (=> (= (ControlFlow 0 5) (- 0 4)) (f7 Heap@@52 (- x@@3 1)))))))))
(let ((anon6_correct true))
(let ((anon9_Else_correct  (=> (and (|f6#trigger| (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@52) null (list xs@@9)) xs@@9 (- x@@3 1)) (= (ControlFlow 0 8) 2)) anon6_correct)))
(let ((anon8_Then_correct  (=> (not (= x@@3 0)) (and (=> (= (ControlFlow 0 9) 5) anon9_Then_correct) (=> (= (ControlFlow 0 9) 8) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (and (= x@@3 0) (= (ControlFlow 0 3) 2)) anon6_correct)))
(let ((anon7_Else_correct  (=> (and (f7 Heap@@52 x@@3) (state Heap@@52 Mask@0)) (and (=> (= (ControlFlow 0 10) 9) anon8_Then_correct) (=> (= (ControlFlow 0 10) 3) anon8_Else_correct)))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (state Heap@@52 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@52) xs@@9 $allocated) (= AssumeFunctionsAbove 3))) (and (and (= Mask@0 (PolymorphicMapType_7364 (store (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| ZeroMask) null (list xs@@9) (+ (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| ZeroMask) null (list xs@@9)) FullPerm)) (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| ZeroMask) (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| ZeroMask) (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| ZeroMask) (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| ZeroMask) (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| ZeroMask) (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| ZeroMask) (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| ZeroMask))) (state Heap@@52 Mask@0)) (and (>= x@@3 0) (state Heap@@52 Mask@0)))) (and (=> (= (ControlFlow 0 11) 1) anon7_Then_correct) (=> (= (ControlFlow 0 11) 10) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(declare-sort T@Field_7403_53 0)
(declare-sort T@Field_7416_7417 0)
(declare-sort T@Field_14059_14060 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_4153_14060 0)
(declare-sort T@Field_4153_15580 0)
(declare-sort T@Field_14059_4154 0)
(declare-sort T@Field_14059_53 0)
(declare-sort T@Field_15575_15580 0)
(declare-datatypes ((T@PolymorphicMapType_7364 0)) (((PolymorphicMapType_7364 (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| (Array T@Ref T@Field_14059_14060 Real)) (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| (Array T@Ref T@Field_7416_7417 Real)) (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| (Array T@Ref T@Field_14059_4154 Real)) (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| (Array T@Ref T@Field_14059_53 Real)) (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| (Array T@Ref T@Field_15575_15580 Real)) (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| (Array T@Ref T@Field_4153_14060 Real)) (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| (Array T@Ref T@Field_7403_53 Real)) (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| (Array T@Ref T@Field_4153_15580 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7892 0)) (((PolymorphicMapType_7892 (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| (Array T@Ref T@Field_7403_53 Bool)) (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| (Array T@Ref T@Field_7416_7417 Bool)) (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| (Array T@Ref T@Field_4153_14060 Bool)) (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| (Array T@Ref T@Field_4153_15580 Bool)) (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| (Array T@Ref T@Field_14059_53 Bool)) (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| (Array T@Ref T@Field_14059_4154 Bool)) (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| (Array T@Ref T@Field_14059_14060 Bool)) (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| (Array T@Ref T@Field_15575_15580 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7343 0)) (((PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| (Array T@Ref T@Field_7403_53 Bool)) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| (Array T@Ref T@Field_7416_7417 T@Ref)) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| (Array T@Ref T@Field_14059_14060 T@FrameType)) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| (Array T@Ref T@Field_4153_14060 T@FrameType)) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| (Array T@Ref T@Field_4153_15580 T@PolymorphicMapType_7892)) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| (Array T@Ref T@Field_14059_4154 T@Ref)) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| (Array T@Ref T@Field_14059_53 Bool)) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| (Array T@Ref T@Field_15575_15580 T@PolymorphicMapType_7892)) ) ) ))
(declare-fun $allocated () T@Field_7403_53)
(declare-fun next () T@Field_7416_7417)
(declare-fun succHeap (T@PolymorphicMapType_7343 T@PolymorphicMapType_7343) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7343 T@PolymorphicMapType_7343) Bool)
(declare-fun state (T@PolymorphicMapType_7343 T@PolymorphicMapType_7364) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7364) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7343 T@PolymorphicMapType_7343 T@PolymorphicMapType_7364) Bool)
(declare-fun IsPredicateField_4234_4235 (T@Field_14059_14060) Bool)
(declare-fun HasDirectPerm_14059_14060 (T@PolymorphicMapType_7364 T@Ref T@Field_14059_14060) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4234 (T@Field_14059_14060) T@Field_15575_15580)
(declare-fun IsPredicateField_4153_22229 (T@Field_4153_14060) Bool)
(declare-fun HasDirectPerm_4153_14060 (T@PolymorphicMapType_7364 T@Ref T@Field_4153_14060) Bool)
(declare-fun PredicateMaskField_4153 (T@Field_4153_14060) T@Field_4153_15580)
(declare-fun IsWandField_14059_25530 (T@Field_14059_14060) Bool)
(declare-fun WandMaskField_14059 (T@Field_14059_14060) T@Field_15575_15580)
(declare-fun IsWandField_4153_25173 (T@Field_4153_14060) Bool)
(declare-fun WandMaskField_4153 (T@Field_4153_14060) T@Field_4153_15580)
(declare-fun ZeroPMask () T@PolymorphicMapType_7892)
(declare-fun |f6'| (T@PolymorphicMapType_7343 T@Ref Int) Int)
(declare-fun dummyFunction_1472 (Int) Bool)
(declare-fun |f6#triggerStateless| (T@Ref Int) Int)
(declare-fun list (T@Ref) T@Field_14059_14060)
(declare-fun |f1'| (T@PolymorphicMapType_7343 Int) Int)
(declare-fun |f1#triggerStateless| (Int) Int)
(declare-fun |f3'| (T@PolymorphicMapType_7343 Int) Int)
(declare-fun |f3#triggerStateless| (Int) Int)
(declare-fun |f4'| (T@PolymorphicMapType_7343 Int) Int)
(declare-fun |f4#triggerStateless| (Int) Int)
(declare-fun |f5'| (T@PolymorphicMapType_7343 Int) Int)
(declare-fun |f5#triggerStateless| (Int) Int)
(declare-fun |f7'| (T@PolymorphicMapType_7343 Int) Bool)
(declare-fun dummyFunction_2942 (Bool) Bool)
(declare-fun |f7#triggerStateless| (Int) Bool)
(declare-fun |list#trigger_4234| (T@PolymorphicMapType_7343 T@Field_14059_14060) Bool)
(declare-fun |list#everUsed_4234| (T@Field_14059_14060) Bool)
(declare-fun f1_3 (T@PolymorphicMapType_7343 Int) Int)
(declare-fun f3_2 (T@PolymorphicMapType_7343 Int) Int)
(declare-fun f4_1 (T@PolymorphicMapType_7343 Int) Int)
(declare-fun f5_1 (T@PolymorphicMapType_7343 Int) Int)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun |list#sm| (T@Ref) T@Field_15575_15580)
(declare-fun dummyHeap () T@PolymorphicMapType_7343)
(declare-fun ZeroMask () T@PolymorphicMapType_7364)
(declare-fun InsidePredicate_14059_14059 (T@Field_14059_14060 T@FrameType T@Field_14059_14060 T@FrameType) Bool)
(declare-fun InsidePredicate_7403_7403 (T@Field_4153_14060 T@FrameType T@Field_4153_14060 T@FrameType) Bool)
(declare-fun IsPredicateField_4153_4154 (T@Field_7416_7417) Bool)
(declare-fun IsWandField_4153_4154 (T@Field_7416_7417) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4153_31241 (T@Field_4153_15580) Bool)
(declare-fun IsWandField_4153_31257 (T@Field_4153_15580) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4153_53 (T@Field_7403_53) Bool)
(declare-fun IsWandField_4153_53 (T@Field_7403_53) Bool)
(declare-fun IsPredicateField_4234_30592 (T@Field_15575_15580) Bool)
(declare-fun IsWandField_4234_30608 (T@Field_15575_15580) Bool)
(declare-fun IsPredicateField_4234_53 (T@Field_14059_53) Bool)
(declare-fun IsWandField_4234_53 (T@Field_14059_53) Bool)
(declare-fun IsPredicateField_4234_4154 (T@Field_14059_4154) Bool)
(declare-fun IsWandField_4234_4154 (T@Field_14059_4154) Bool)
(declare-fun HasDirectPerm_14059_21941 (T@PolymorphicMapType_7364 T@Ref T@Field_15575_15580) Bool)
(declare-fun HasDirectPerm_14059_53 (T@PolymorphicMapType_7364 T@Ref T@Field_14059_53) Bool)
(declare-fun HasDirectPerm_14059_4154 (T@PolymorphicMapType_7364 T@Ref T@Field_14059_4154) Bool)
(declare-fun HasDirectPerm_4153_21001 (T@PolymorphicMapType_7364 T@Ref T@Field_4153_15580) Bool)
(declare-fun HasDirectPerm_4153_53 (T@PolymorphicMapType_7364 T@Ref T@Field_7403_53) Bool)
(declare-fun HasDirectPerm_4153_4154 (T@PolymorphicMapType_7364 T@Ref T@Field_7416_7417) Bool)
(declare-fun f6_1 (T@PolymorphicMapType_7343 T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun f7 (T@PolymorphicMapType_7343 Int) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |f7#trigger| (T@FrameType Int) Bool)
(declare-fun sumMask (T@PolymorphicMapType_7364 T@PolymorphicMapType_7364 T@PolymorphicMapType_7364) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun |f7#frame| (T@FrameType Int) Bool)
(declare-fun |f6#frame| (T@FrameType T@Ref Int) Int)
(declare-fun getPredWandId_4234_4235 (T@Field_14059_14060) Int)
(declare-fun |f1#frame| (T@FrameType Int) Int)
(declare-fun |f3#frame| (T@FrameType Int) Int)
(declare-fun |f4#frame| (T@FrameType Int) Int)
(declare-fun |f5#frame| (T@FrameType Int) Int)
(declare-fun InsidePredicate_14059_7403 (T@Field_14059_14060 T@FrameType T@Field_4153_14060 T@FrameType) Bool)
(declare-fun InsidePredicate_7403_14059 (T@Field_4153_14060 T@FrameType T@Field_14059_14060 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7343) (Heap1 T@PolymorphicMapType_7343) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7343) (Mask T@PolymorphicMapType_7364) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7343) (ExhaleHeap T@PolymorphicMapType_7343) (Mask@@0 T@PolymorphicMapType_7364) (pm_f T@Field_14059_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_14059_14060 Mask@@0 null pm_f) (IsPredicateField_4234_4235 pm_f)) (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_7403_53) ) (!  (=> (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@0) o2 f_2) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_7416_7417) ) (!  (=> (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@0) o2@@0 f_2@@0) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4153_14060) ) (!  (=> (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@0) o2@@1 f_2@@1) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4153_15580) ) (!  (=> (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@0) o2@@2 f_2@@2) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_14059_53) ) (!  (=> (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@0) o2@@3 f_2@@3) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_14059_4154) ) (!  (=> (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@0) o2@@4 f_2@@4) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_14059_14060) ) (!  (=> (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@0) o2@@5 f_2@@5) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_15575_15580) ) (!  (=> (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) null (PredicateMaskField_4234 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@0) o2@@6 f_2@@6) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4234_4235 pm_f))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7343) (ExhaleHeap@@0 T@PolymorphicMapType_7343) (Mask@@1 T@PolymorphicMapType_7364) (pm_f@@0 T@Field_4153_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4153_14060 Mask@@1 null pm_f@@0) (IsPredicateField_4153_22229 pm_f@@0)) (and (and (and (and (and (and (and (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_7403_53) ) (!  (=> (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@1) o2@@7 f_2@@7) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@7 f_2@@7))
)) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_7416_7417) ) (!  (=> (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@1) o2@@8 f_2@@8) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_4153_14060) ) (!  (=> (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@1) o2@@9 f_2@@9) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_4153_15580) ) (!  (=> (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) o2@@10 f_2@@10) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_14059_53) ) (!  (=> (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@1) o2@@11 f_2@@11) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_14059_4154) ) (!  (=> (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@1) o2@@12 f_2@@12) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_14059_14060) ) (!  (=> (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@1) o2@@13 f_2@@13) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_15575_15580) ) (!  (=> (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@1) null (PredicateMaskField_4153 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@1) o2@@14 f_2@@14) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@0) o2@@14 f_2@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4153_22229 pm_f@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7343) (ExhaleHeap@@1 T@PolymorphicMapType_7343) (Mask@@2 T@PolymorphicMapType_7364) (pm_f@@1 T@Field_14059_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_14059_14060 Mask@@2 null pm_f@@1) (IsWandField_14059_25530 pm_f@@1)) (and (and (and (and (and (and (and (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_7403_53) ) (!  (=> (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@2) o2@@15 f_2@@15) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@15 f_2@@15)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@15 f_2@@15))
)) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_7416_7417) ) (!  (=> (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@2) o2@@16 f_2@@16) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@16 f_2@@16)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_4153_14060) ) (!  (=> (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@2) o2@@17 f_2@@17) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@17 f_2@@17)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_4153_15580) ) (!  (=> (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@2) o2@@18 f_2@@18) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@18 f_2@@18)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_14059_53) ) (!  (=> (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@2) o2@@19 f_2@@19) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_14059_4154) ) (!  (=> (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@2) o2@@20 f_2@@20) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_14059_14060) ) (!  (=> (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@2) o2@@21 f_2@@21) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_15575_15580) ) (!  (=> (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) null (WandMaskField_14059 pm_f@@1))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@2) o2@@22 f_2@@22) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@1) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_14059_25530 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7343) (ExhaleHeap@@2 T@PolymorphicMapType_7343) (Mask@@3 T@PolymorphicMapType_7364) (pm_f@@2 T@Field_4153_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4153_14060 Mask@@3 null pm_f@@2) (IsWandField_4153_25173 pm_f@@2)) (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_7403_53) ) (!  (=> (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@3) o2@@23 f_2@@23) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_7416_7417) ) (!  (=> (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@3) o2@@24 f_2@@24) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_4153_14060) ) (!  (=> (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@3) o2@@25 f_2@@25) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_4153_15580) ) (!  (=> (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) o2@@26 f_2@@26) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_14059_53) ) (!  (=> (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@3) o2@@27 f_2@@27) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_14059_4154) ) (!  (=> (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@3) o2@@28 f_2@@28) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_14059_14060) ) (!  (=> (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@3) o2@@29 f_2@@29) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_15575_15580) ) (!  (=> (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@3) null (WandMaskField_4153 pm_f@@2))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@3) o2@@30 f_2@@30) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@2) o2@@30 f_2@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4153_25173 pm_f@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7343) (Heap1@@0 T@PolymorphicMapType_7343) (Heap2 T@PolymorphicMapType_7343) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15575_15580) ) (!  (not (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_14059_24365#PolymorphicMapType_7892| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14059_14060) ) (!  (not (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_14059_14060#PolymorphicMapType_7892| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14059_4154) ) (!  (not (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_14059_7417#PolymorphicMapType_7892| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14059_53) ) (!  (not (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_14059_53#PolymorphicMapType_7892| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4153_15580) ) (!  (not (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_7403_23515#PolymorphicMapType_7892| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4153_14060) ) (!  (not (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_7403_14060#PolymorphicMapType_7892| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7416_7417) ) (!  (not (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_7403_7417#PolymorphicMapType_7892| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7403_53) ) (!  (not (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7892_7403_53#PolymorphicMapType_7892| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7343) (xs T@Ref) (x Int) ) (! (dummyFunction_1472 (|f6#triggerStateless| xs x))
 :qid |stdinbpl.489:15|
 :skolemid |41|
 :pattern ( (|f6'| Heap@@4 xs x))
)))
(assert (forall ((xs@@0 T@Ref) ) (! (IsPredicateField_4234_4235 (list xs@@0))
 :qid |stdinbpl.637:15|
 :skolemid |49|
 :pattern ( (list xs@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7343) (i Int) ) (! (dummyFunction_1472 (|f1#triggerStateless| i))
 :qid |stdinbpl.235:15|
 :skolemid |25|
 :pattern ( (|f1'| Heap@@5 i))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7343) (i@@0 Int) ) (! (dummyFunction_1472 (|f3#triggerStateless| i@@0))
 :qid |stdinbpl.339:15|
 :skolemid |29|
 :pattern ( (|f3'| Heap@@6 i@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7343) (i@@1 Int) ) (! (dummyFunction_1472 (|f4#triggerStateless| i@@1))
 :qid |stdinbpl.389:15|
 :skolemid |33|
 :pattern ( (|f4'| Heap@@7 i@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7343) (i@@2 Int) ) (! (dummyFunction_1472 (|f5#triggerStateless| i@@2))
 :qid |stdinbpl.439:15|
 :skolemid |37|
 :pattern ( (|f5'| Heap@@8 i@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7343) (y Int) ) (! (dummyFunction_2942 (|f7#triggerStateless| y))
 :qid |stdinbpl.586:15|
 :skolemid |45|
 :pattern ( (|f7'| Heap@@9 y))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7343) (xs@@1 T@Ref) ) (! (|list#everUsed_4234| (list xs@@1))
 :qid |stdinbpl.656:15|
 :skolemid |53|
 :pattern ( (|list#trigger_4234| Heap@@10 (list xs@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7343) (i@@3 Int) ) (!  (and (= (f1_3 Heap@@11 i@@3) (|f1'| Heap@@11 i@@3)) (dummyFunction_1472 (|f1#triggerStateless| i@@3)))
 :qid |stdinbpl.231:15|
 :skolemid |24|
 :pattern ( (f1_3 Heap@@11 i@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7343) (i@@4 Int) ) (!  (and (= (f3_2 Heap@@12 i@@4) (|f3'| Heap@@12 i@@4)) (dummyFunction_1472 (|f3#triggerStateless| i@@4)))
 :qid |stdinbpl.335:15|
 :skolemid |28|
 :pattern ( (f3_2 Heap@@12 i@@4))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7343) (i@@5 Int) ) (!  (and (= (f4_1 Heap@@13 i@@5) (|f4'| Heap@@13 i@@5)) (dummyFunction_1472 (|f4#triggerStateless| i@@5)))
 :qid |stdinbpl.385:15|
 :skolemid |32|
 :pattern ( (f4_1 Heap@@13 i@@5))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7343) (i@@6 Int) ) (!  (and (= (f5_1 Heap@@14 i@@6) (|f5'| Heap@@14 i@@6)) (dummyFunction_1472 (|f5#triggerStateless| i@@6)))
 :qid |stdinbpl.435:15|
 :skolemid |36|
 :pattern ( (f5_1 Heap@@14 i@@6))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.192:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7343) (ExhaleHeap@@3 T@PolymorphicMapType_7343) (Mask@@4 T@PolymorphicMapType_7364) (pm_f@@3 T@Field_14059_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_14059_14060 Mask@@4 null pm_f@@3) (IsPredicateField_4234_4235 pm_f@@3)) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@15) null (PredicateMaskField_4234 pm_f@@3)) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@3) null (PredicateMaskField_4234 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4234_4235 pm_f@@3) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@3) null (PredicateMaskField_4234 pm_f@@3)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7343) (ExhaleHeap@@4 T@PolymorphicMapType_7343) (Mask@@5 T@PolymorphicMapType_7364) (pm_f@@4 T@Field_4153_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4153_14060 Mask@@5 null pm_f@@4) (IsPredicateField_4153_22229 pm_f@@4)) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@16) null (PredicateMaskField_4153 pm_f@@4)) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@4) null (PredicateMaskField_4153 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4153_22229 pm_f@@4) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@4) null (PredicateMaskField_4153 pm_f@@4)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7343) (ExhaleHeap@@5 T@PolymorphicMapType_7343) (Mask@@6 T@PolymorphicMapType_7364) (pm_f@@5 T@Field_14059_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_14059_14060 Mask@@6 null pm_f@@5) (IsWandField_14059_25530 pm_f@@5)) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@17) null (WandMaskField_14059 pm_f@@5)) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@5) null (WandMaskField_14059 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@6) (IsWandField_14059_25530 pm_f@@5) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@5) null (WandMaskField_14059 pm_f@@5)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7343) (ExhaleHeap@@6 T@PolymorphicMapType_7343) (Mask@@7 T@PolymorphicMapType_7364) (pm_f@@6 T@Field_4153_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4153_14060 Mask@@7 null pm_f@@6) (IsWandField_4153_25173 pm_f@@6)) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@18) null (WandMaskField_4153 pm_f@@6)) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@6) null (WandMaskField_4153 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@7) (IsWandField_4153_25173 pm_f@@6) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@6) null (WandMaskField_4153 pm_f@@6)))
)))
(assert (forall ((xs@@2 T@Ref) (xs2 T@Ref) ) (!  (=> (= (list xs@@2) (list xs2)) (= xs@@2 xs2))
 :qid |stdinbpl.647:15|
 :skolemid |51|
 :pattern ( (list xs@@2) (list xs2))
)))
(assert (forall ((xs@@3 T@Ref) (xs2@@0 T@Ref) ) (!  (=> (= (|list#sm| xs@@3) (|list#sm| xs2@@0)) (= xs@@3 xs2@@0))
 :qid |stdinbpl.651:15|
 :skolemid |52|
 :pattern ( (|list#sm| xs@@3) (|list#sm| xs2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7343) (ExhaleHeap@@7 T@PolymorphicMapType_7343) (Mask@@8 T@PolymorphicMapType_7364) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@19) o_1 $allocated) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_14059_14060) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14059_14059 p v_1 p w))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14059_14059 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4153_14060) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7403_7403 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7403_7403 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4153_4154 next)))
(assert  (not (IsWandField_4153_4154 next)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7343) (ExhaleHeap@@8 T@PolymorphicMapType_7343) (Mask@@9 T@PolymorphicMapType_7364) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@20 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7364) (o_2@@7 T@Ref) (f_4@@7 T@Field_4153_15580) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4153_31241 f_4@@7))) (not (IsWandField_4153_31257 f_4@@7))) (<= (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7364) (o_2@@8 T@Ref) (f_4@@8 T@Field_7403_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4153_53 f_4@@8))) (not (IsWandField_4153_53 f_4@@8))) (<= (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7364) (o_2@@9 T@Ref) (f_4@@9 T@Field_7416_7417) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4153_4154 f_4@@9))) (not (IsWandField_4153_4154 f_4@@9))) (<= (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7364) (o_2@@10 T@Ref) (f_4@@10 T@Field_4153_14060) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4153_22229 f_4@@10))) (not (IsWandField_4153_25173 f_4@@10))) (<= (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7364) (o_2@@11 T@Ref) (f_4@@11 T@Field_15575_15580) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4234_30592 f_4@@11))) (not (IsWandField_4234_30608 f_4@@11))) (<= (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7364) (o_2@@12 T@Ref) (f_4@@12 T@Field_14059_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4234_53 f_4@@12))) (not (IsWandField_4234_53 f_4@@12))) (<= (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7364) (o_2@@13 T@Ref) (f_4@@13 T@Field_14059_4154) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4234_4154 f_4@@13))) (not (IsWandField_4234_4154 f_4@@13))) (<= (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7364) (o_2@@14 T@Ref) (f_4@@14 T@Field_14059_14060) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4234_4235 f_4@@14))) (not (IsWandField_14059_25530 f_4@@14))) (<= (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7364) (o_2@@15 T@Ref) (f_4@@15 T@Field_15575_15580) ) (! (= (HasDirectPerm_14059_21941 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14059_21941 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7364) (o_2@@16 T@Ref) (f_4@@16 T@Field_14059_14060) ) (! (= (HasDirectPerm_14059_14060 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14059_14060 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7364) (o_2@@17 T@Ref) (f_4@@17 T@Field_14059_53) ) (! (= (HasDirectPerm_14059_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14059_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7364) (o_2@@18 T@Ref) (f_4@@18 T@Field_14059_4154) ) (! (= (HasDirectPerm_14059_4154 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14059_4154 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7364) (o_2@@19 T@Ref) (f_4@@19 T@Field_4153_15580) ) (! (= (HasDirectPerm_4153_21001 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4153_21001 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7364) (o_2@@20 T@Ref) (f_4@@20 T@Field_4153_14060) ) (! (= (HasDirectPerm_4153_14060 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4153_14060 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7364) (o_2@@21 T@Ref) (f_4@@21 T@Field_7403_53) ) (! (= (HasDirectPerm_4153_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4153_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7364) (o_2@@22 T@Ref) (f_4@@22 T@Field_7416_7417) ) (! (= (HasDirectPerm_4153_4154 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4153_4154 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7343) (Mask@@26 T@PolymorphicMapType_7364) (xs@@4 T@Ref) (x@@0 Int) ) (!  (=> (and (state Heap@@21 Mask@@26) (< AssumeFunctionsAbove 3)) (=> (and (>= x@@0 0) (f7 Heap@@21 x@@0)) (= (f6_1 Heap@@21 xs@@4 x@@0) (ite (not (= x@@0 0)) (|f6'| Heap@@21 xs@@4 (- x@@0 1)) x@@0))))
 :qid |stdinbpl.495:15|
 :skolemid |42|
 :pattern ( (state Heap@@21 Mask@@26) (f6_1 Heap@@21 xs@@4 x@@0))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.167:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7343) (ExhaleHeap@@9 T@PolymorphicMapType_7343) (Mask@@27 T@PolymorphicMapType_7364) (o_1@@0 T@Ref) (f_2@@31 T@Field_15575_15580) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_14059_21941 Mask@@27 o_1@@0 f_2@@31) (= (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@22) o_1@@0 f_2@@31) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@9) o_1@@0 f_2@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| ExhaleHeap@@9) o_1@@0 f_2@@31))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7343) (ExhaleHeap@@10 T@PolymorphicMapType_7343) (Mask@@28 T@PolymorphicMapType_7364) (o_1@@1 T@Ref) (f_2@@32 T@Field_14059_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@10 Mask@@28) (=> (HasDirectPerm_14059_14060 Mask@@28 o_1@@1 f_2@@32) (= (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@23) o_1@@1 f_2@@32) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@10) o_1@@1 f_2@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@10 Mask@@28) (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| ExhaleHeap@@10) o_1@@1 f_2@@32))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7343) (ExhaleHeap@@11 T@PolymorphicMapType_7343) (Mask@@29 T@PolymorphicMapType_7364) (o_1@@2 T@Ref) (f_2@@33 T@Field_14059_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@11 Mask@@29) (=> (HasDirectPerm_14059_53 Mask@@29 o_1@@2 f_2@@33) (= (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@24) o_1@@2 f_2@@33) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@11) o_1@@2 f_2@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@11 Mask@@29) (select (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| ExhaleHeap@@11) o_1@@2 f_2@@33))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7343) (ExhaleHeap@@12 T@PolymorphicMapType_7343) (Mask@@30 T@PolymorphicMapType_7364) (o_1@@3 T@Ref) (f_2@@34 T@Field_14059_4154) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@12 Mask@@30) (=> (HasDirectPerm_14059_4154 Mask@@30 o_1@@3 f_2@@34) (= (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@25) o_1@@3 f_2@@34) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@12) o_1@@3 f_2@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@12 Mask@@30) (select (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| ExhaleHeap@@12) o_1@@3 f_2@@34))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7343) (ExhaleHeap@@13 T@PolymorphicMapType_7343) (Mask@@31 T@PolymorphicMapType_7364) (o_1@@4 T@Ref) (f_2@@35 T@Field_4153_15580) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@13 Mask@@31) (=> (HasDirectPerm_4153_21001 Mask@@31 o_1@@4 f_2@@35) (= (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@26) o_1@@4 f_2@@35) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@13) o_1@@4 f_2@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@13 Mask@@31) (select (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| ExhaleHeap@@13) o_1@@4 f_2@@35))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7343) (ExhaleHeap@@14 T@PolymorphicMapType_7343) (Mask@@32 T@PolymorphicMapType_7364) (o_1@@5 T@Ref) (f_2@@36 T@Field_4153_14060) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@14 Mask@@32) (=> (HasDirectPerm_4153_14060 Mask@@32 o_1@@5 f_2@@36) (= (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@27) o_1@@5 f_2@@36) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@14) o_1@@5 f_2@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@14 Mask@@32) (select (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| ExhaleHeap@@14) o_1@@5 f_2@@36))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7343) (ExhaleHeap@@15 T@PolymorphicMapType_7343) (Mask@@33 T@PolymorphicMapType_7364) (o_1@@6 T@Ref) (f_2@@37 T@Field_7403_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@15 Mask@@33) (=> (HasDirectPerm_4153_53 Mask@@33 o_1@@6 f_2@@37) (= (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@28) o_1@@6 f_2@@37) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@15) o_1@@6 f_2@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@15 Mask@@33) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| ExhaleHeap@@15) o_1@@6 f_2@@37))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7343) (ExhaleHeap@@16 T@PolymorphicMapType_7343) (Mask@@34 T@PolymorphicMapType_7364) (o_1@@7 T@Ref) (f_2@@38 T@Field_7416_7417) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@16 Mask@@34) (=> (HasDirectPerm_4153_4154 Mask@@34 o_1@@7 f_2@@38) (= (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@29) o_1@@7 f_2@@38) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@16) o_1@@7 f_2@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@16 Mask@@34) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| ExhaleHeap@@16) o_1@@7 f_2@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_4153_15580) ) (! (= (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_7403_53) ) (! (= (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_7416_7417) ) (! (= (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_4153_14060) ) (! (= (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_15575_15580) ) (! (= (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_14059_53) ) (! (= (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_14059_4154) ) (! (= (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_14059_14060) ) (! (= (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7343) (xs@@5 T@Ref) (x@@1 Int) ) (!  (and (= (f6_1 Heap@@30 xs@@5 x@@1) (|f6'| Heap@@30 xs@@5 x@@1)) (dummyFunction_1472 (|f6#triggerStateless| xs@@5 x@@1)))
 :qid |stdinbpl.485:15|
 :skolemid |40|
 :pattern ( (f6_1 Heap@@30 xs@@5 x@@1))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7343) (Mask@@35 T@PolymorphicMapType_7364) (i@@7 Int) ) (!  (=> (and (state Heap@@31 Mask@@35) (< AssumeFunctionsAbove 1)) (=> (>= i@@7 0) (= (f1_3 Heap@@31 i@@7) (ite (< i@@7 10) 1 (ite  (or (< (|f1'| Heap@@31 (- i@@7 1)) 4) (< (|f1'| Heap@@31 (- i@@7 3)) 6)) 1 (|f1'| Heap@@31 (- i@@7 1)))))))
 :qid |stdinbpl.241:15|
 :skolemid |26|
 :pattern ( (state Heap@@31 Mask@@35) (f1_3 Heap@@31 i@@7))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7343) (Mask@@36 T@PolymorphicMapType_7364) (y@@0 Int) ) (!  (=> (and (state Heap@@32 Mask@@36) (or (< AssumeFunctionsAbove 5) (|f7#trigger| EmptyFrame y@@0))) (|f7'| Heap@@32 y@@0))
 :qid |stdinbpl.599:15|
 :skolemid |47|
 :pattern ( (state Heap@@32 Mask@@36) (|f7'| Heap@@32 y@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7364) (SummandMask1 T@PolymorphicMapType_7364) (SummandMask2 T@PolymorphicMapType_7364) (o_2@@31 T@Ref) (f_4@@31 T@Field_4153_15580) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7364_4153_29417#PolymorphicMapType_7364| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7364) (SummandMask1@@0 T@PolymorphicMapType_7364) (SummandMask2@@0 T@PolymorphicMapType_7364) (o_2@@32 T@Ref) (f_4@@32 T@Field_7403_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7364_4153_53#PolymorphicMapType_7364| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7364) (SummandMask1@@1 T@PolymorphicMapType_7364) (SummandMask2@@1 T@PolymorphicMapType_7364) (o_2@@33 T@Ref) (f_4@@33 T@Field_7416_7417) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7364_4153_4154#PolymorphicMapType_7364| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7364) (SummandMask1@@2 T@PolymorphicMapType_7364) (SummandMask2@@2 T@PolymorphicMapType_7364) (o_2@@34 T@Ref) (f_4@@34 T@Field_4153_14060) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7364_4153_4235#PolymorphicMapType_7364| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7364) (SummandMask1@@3 T@PolymorphicMapType_7364) (SummandMask2@@3 T@PolymorphicMapType_7364) (o_2@@35 T@Ref) (f_4@@35 T@Field_15575_15580) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7364_4234_29086#PolymorphicMapType_7364| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7364) (SummandMask1@@4 T@PolymorphicMapType_7364) (SummandMask2@@4 T@PolymorphicMapType_7364) (o_2@@36 T@Ref) (f_4@@36 T@Field_14059_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7364_4234_53#PolymorphicMapType_7364| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7364) (SummandMask1@@5 T@PolymorphicMapType_7364) (SummandMask2@@5 T@PolymorphicMapType_7364) (o_2@@37 T@Ref) (f_4@@37 T@Field_14059_4154) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7364_4234_4154#PolymorphicMapType_7364| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7364) (SummandMask1@@6 T@PolymorphicMapType_7364) (SummandMask2@@6 T@PolymorphicMapType_7364) (o_2@@38 T@Ref) (f_4@@38 T@Field_14059_14060) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7364_4234_4235#PolymorphicMapType_7364| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7343) (Mask@@37 T@PolymorphicMapType_7364) (y@@1 Int) ) (!  (=> (state Heap@@33 Mask@@37) (= (|f7'| Heap@@33 y@@1) (|f7#frame| EmptyFrame y@@1)))
 :qid |stdinbpl.593:15|
 :skolemid |46|
 :pattern ( (state Heap@@33 Mask@@37) (|f7'| Heap@@33 y@@1))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7343) (Mask@@38 T@PolymorphicMapType_7364) (xs@@6 T@Ref) (x@@2 Int) ) (!  (=> (state Heap@@34 Mask@@38) (= (|f6'| Heap@@34 xs@@6 x@@2) (|f6#frame| (select (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@34) null (list xs@@6)) xs@@6 x@@2)))
 :qid |stdinbpl.502:15|
 :skolemid |43|
 :pattern ( (state Heap@@34 Mask@@38) (|f6'| Heap@@34 xs@@6 x@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7343) (y@@2 Int) ) (!  (and (= (f7 Heap@@35 y@@2) (|f7'| Heap@@35 y@@2)) (dummyFunction_2942 (|f7#triggerStateless| y@@2)))
 :qid |stdinbpl.582:15|
 :skolemid |44|
 :pattern ( (f7 Heap@@35 y@@2))
)))
(assert (forall ((xs@@7 T@Ref) ) (! (= (getPredWandId_4234_4235 (list xs@@7)) 0)
 :qid |stdinbpl.641:15|
 :skolemid |50|
 :pattern ( (list xs@@7))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_7343) (Mask@@39 T@PolymorphicMapType_7364) (i@@8 Int) ) (!  (=> (state Heap@@36 Mask@@39) (= (|f1'| Heap@@36 i@@8) (|f1#frame| EmptyFrame i@@8)))
 :qid |stdinbpl.248:15|
 :skolemid |27|
 :pattern ( (state Heap@@36 Mask@@39) (|f1'| Heap@@36 i@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_7343) (Mask@@40 T@PolymorphicMapType_7364) (i@@9 Int) ) (!  (=> (state Heap@@37 Mask@@40) (= (|f3'| Heap@@37 i@@9) (|f3#frame| EmptyFrame i@@9)))
 :qid |stdinbpl.352:15|
 :skolemid |31|
 :pattern ( (state Heap@@37 Mask@@40) (|f3'| Heap@@37 i@@9))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_7343) (Mask@@41 T@PolymorphicMapType_7364) (i@@10 Int) ) (!  (=> (state Heap@@38 Mask@@41) (= (|f4'| Heap@@38 i@@10) (|f4#frame| EmptyFrame i@@10)))
 :qid |stdinbpl.402:15|
 :skolemid |35|
 :pattern ( (state Heap@@38 Mask@@41) (|f4'| Heap@@38 i@@10))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_7343) (Mask@@42 T@PolymorphicMapType_7364) (i@@11 Int) ) (!  (=> (state Heap@@39 Mask@@42) (= (|f5'| Heap@@39 i@@11) (|f5#frame| EmptyFrame i@@11)))
 :qid |stdinbpl.452:15|
 :skolemid |39|
 :pattern ( (state Heap@@39 Mask@@42) (|f5'| Heap@@39 i@@11))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_7343) (o T@Ref) (f_3 T@Field_15575_15580) (v T@PolymorphicMapType_7892) ) (! (succHeap Heap@@40 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@40) (store (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@40) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@40) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@40) (store (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@40) o f_3 v)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_7343) (o@@0 T@Ref) (f_3@@0 T@Field_14059_14060) (v@@0 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@41) (store (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@41) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@41) (store (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@41) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@41) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_7343) (o@@1 T@Ref) (f_3@@1 T@Field_14059_4154) (v@@1 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@42) (store (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@42) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@42) (store (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@42) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@42) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_7343) (o@@2 T@Ref) (f_3@@2 T@Field_14059_53) (v@@2 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@43) (store (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@43) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@43) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@43) (store (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@43) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_7343) (o@@3 T@Ref) (f_3@@3 T@Field_4153_15580) (v@@3 T@PolymorphicMapType_7892) ) (! (succHeap Heap@@44 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@44) (store (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@44) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@44) (store (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@44) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@44) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_7343) (o@@4 T@Ref) (f_3@@4 T@Field_4153_14060) (v@@4 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@45) (store (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@45) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@45) (store (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@45) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@45) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_7343) (o@@5 T@Ref) (f_3@@5 T@Field_7416_7417) (v@@5 T@Ref) ) (! (succHeap Heap@@46 (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@46) (store (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@46) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@46) (store (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@46) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@46) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_7343) (o@@6 T@Ref) (f_3@@6 T@Field_7403_53) (v@@6 Bool) ) (! (succHeap Heap@@47 (PolymorphicMapType_7343 (store (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@47) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7343 (store (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@47) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4234_4235#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4153_14060#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_4153_21043#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_4154#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_53#PolymorphicMapType_7343| Heap@@47) (|PolymorphicMapType_7343_14059_21983#PolymorphicMapType_7343| Heap@@47)))
)))
(assert (forall ((xs@@8 T@Ref) ) (! (= (PredicateMaskField_4234 (list xs@@8)) (|list#sm| xs@@8))
 :qid |stdinbpl.633:15|
 :skolemid |48|
 :pattern ( (PredicateMaskField_4234 (list xs@@8)))
)))
(assert (forall ((o@@7 T@Ref) (f T@Field_7416_7417) (Heap@@48 T@PolymorphicMapType_7343) ) (!  (=> (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@48) o@@7 $allocated) (select (|PolymorphicMapType_7343_4025_53#PolymorphicMapType_7343| Heap@@48) (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@48) o@@7 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7343_4028_4029#PolymorphicMapType_7343| Heap@@48) o@@7 f))
)))
(assert (forall ((p@@2 T@Field_14059_14060) (v_1@@1 T@FrameType) (q T@Field_14059_14060) (w@@1 T@FrameType) (r T@Field_14059_14060) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14059_14059 p@@2 v_1@@1 q w@@1) (InsidePredicate_14059_14059 q w@@1 r u)) (InsidePredicate_14059_14059 p@@2 v_1@@1 r u))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14059_14059 p@@2 v_1@@1 q w@@1) (InsidePredicate_14059_14059 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14059_14060) (v_1@@2 T@FrameType) (q@@0 T@Field_14059_14060) (w@@2 T@FrameType) (r@@0 T@Field_4153_14060) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14059_14059 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14059_7403 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14059_7403 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14059_14059 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14059_7403 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14059_14060) (v_1@@3 T@FrameType) (q@@1 T@Field_4153_14060) (w@@3 T@FrameType) (r@@1 T@Field_14059_14060) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14059_7403 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7403_14059 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14059_14059 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14059_7403 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7403_14059 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14059_14060) (v_1@@4 T@FrameType) (q@@2 T@Field_4153_14060) (w@@4 T@FrameType) (r@@2 T@Field_4153_14060) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14059_7403 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7403_7403 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14059_7403 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14059_7403 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7403_7403 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4153_14060) (v_1@@5 T@FrameType) (q@@3 T@Field_14059_14060) (w@@5 T@FrameType) (r@@3 T@Field_14059_14060) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7403_14059 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14059_14059 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7403_14059 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7403_14059 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14059_14059 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4153_14060) (v_1@@6 T@FrameType) (q@@4 T@Field_14059_14060) (w@@6 T@FrameType) (r@@4 T@Field_4153_14060) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7403_14059 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14059_7403 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7403_7403 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7403_14059 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14059_7403 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4153_14060) (v_1@@7 T@FrameType) (q@@5 T@Field_4153_14060) (w@@7 T@FrameType) (r@@5 T@Field_14059_14060) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7403_7403 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7403_14059 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7403_14059 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7403_7403 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7403_14059 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4153_14060) (v_1@@8 T@FrameType) (q@@6 T@Field_4153_14060) (w@@8 T@FrameType) (r@@6 T@Field_4153_14060) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7403_7403 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7403_7403 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7403_7403 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7403_7403 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7403_7403 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_7343) (Mask@@43 T@PolymorphicMapType_7364) (i@@12 Int) ) (!  (=> (and (state Heap@@49 Mask@@43) (< AssumeFunctionsAbove 0)) (= (f5_1 Heap@@49 i@@12) 7))
 :qid |stdinbpl.445:15|
 :skolemid |38|
 :pattern ( (state Heap@@49 Mask@@43) (f5_1 Heap@@49 i@@12))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_7343) (Mask@@44 T@PolymorphicMapType_7364) (i@@13 Int) ) (!  (=> (and (state Heap@@50 Mask@@44) (< AssumeFunctionsAbove 2)) (= (f3_2 Heap@@50 i@@13) 1))
 :qid |stdinbpl.345:15|
 :skolemid |30|
 :pattern ( (state Heap@@50 Mask@@44) (f3_2 Heap@@50 i@@13))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_7343) (Mask@@45 T@PolymorphicMapType_7364) (i@@14 Int) ) (!  (=> (and (state Heap@@51 Mask@@45) (< AssumeFunctionsAbove 4)) (= (f4_1 Heap@@51 i@@14) 1))
 :qid |stdinbpl.395:15|
 :skolemid |34|
 :pattern ( (state Heap@@51 Mask@@45) (f4_1 Heap@@51 i@@14))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

