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
(declare-sort T@Field_7011_53 0)
(declare-sort T@Field_7024_7025 0)
(declare-sort T@Field_10414_1390 0)
(declare-sort T@Field_11691_11692 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_4120_53 0)
(declare-sort T@Field_4120_7025 0)
(declare-sort T@Field_4120_1390 0)
(declare-sort T@Field_11703_11708 0)
(declare-sort T@Field_7011_4121 0)
(declare-sort T@Field_7011_11708 0)
(declare-datatypes ((T@PolymorphicMapType_6972 0)) (((PolymorphicMapType_6972 (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| (Array T@Ref T@Field_10414_1390 Real)) (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| (Array T@Ref T@Field_11691_11692 Real)) (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| (Array T@Ref T@Field_7011_4121 Real)) (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| (Array T@Ref T@Field_7011_53 Real)) (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| (Array T@Ref T@Field_7024_7025 Real)) (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| (Array T@Ref T@Field_7011_11708 Real)) (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| (Array T@Ref T@Field_4120_1390 Real)) (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| (Array T@Ref T@Field_4120_53 Real)) (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| (Array T@Ref T@Field_4120_7025 Real)) (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| (Array T@Ref T@Field_11703_11708 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7500 0)) (((PolymorphicMapType_7500 (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| (Array T@Ref T@Field_7011_53 Bool)) (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| (Array T@Ref T@Field_7024_7025 Bool)) (|PolymorphicMapType_7500_7011_1390#PolymorphicMapType_7500| (Array T@Ref T@Field_10414_1390 Bool)) (|PolymorphicMapType_7500_7011_11692#PolymorphicMapType_7500| (Array T@Ref T@Field_7011_4121 Bool)) (|PolymorphicMapType_7500_7011_23021#PolymorphicMapType_7500| (Array T@Ref T@Field_7011_11708 Bool)) (|PolymorphicMapType_7500_11691_53#PolymorphicMapType_7500| (Array T@Ref T@Field_4120_53 Bool)) (|PolymorphicMapType_7500_11691_7025#PolymorphicMapType_7500| (Array T@Ref T@Field_4120_7025 Bool)) (|PolymorphicMapType_7500_11691_1390#PolymorphicMapType_7500| (Array T@Ref T@Field_4120_1390 Bool)) (|PolymorphicMapType_7500_11691_11692#PolymorphicMapType_7500| (Array T@Ref T@Field_11691_11692 Bool)) (|PolymorphicMapType_7500_11691_24069#PolymorphicMapType_7500| (Array T@Ref T@Field_11703_11708 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6951 0)) (((PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| (Array T@Ref T@Field_7011_53 Bool)) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| (Array T@Ref T@Field_7024_7025 T@Ref)) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| (Array T@Ref T@Field_10414_1390 Int)) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| (Array T@Ref T@Field_11691_11692 T@FrameType)) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| (Array T@Ref T@Field_4120_53 Bool)) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| (Array T@Ref T@Field_4120_7025 T@Ref)) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| (Array T@Ref T@Field_4120_1390 Int)) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| (Array T@Ref T@Field_11703_11708 T@PolymorphicMapType_7500)) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| (Array T@Ref T@Field_7011_4121 T@FrameType)) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| (Array T@Ref T@Field_7011_11708 T@PolymorphicMapType_7500)) ) ) ))
(declare-fun $allocated () T@Field_7011_53)
(declare-fun Intint$$$$_E_$$$ () T@Field_10414_1390)
(declare-fun succHeap (T@PolymorphicMapType_6951 T@PolymorphicMapType_6951) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6951 T@PolymorphicMapType_6951) Bool)
(declare-fun state (T@PolymorphicMapType_6951 T@PolymorphicMapType_6972) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6972) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7500)
(declare-fun IsPredicateField_4120_4121 (T@Field_11691_11692) Bool)
(declare-fun SharedInv_4e2a3fe_F () T@Field_11691_11692)
(declare-fun getPredWandId_4120_4121 (T@Field_11691_11692) Int)
(declare-sort T@ShStruct2DomainType_10462_10463 0)
(declare-fun |witness_4e2a3fe_F'| (T@PolymorphicMapType_6951 Int) T@ShStruct2DomainType_10462_10463)
(declare-fun dummyFunction_10557 (T@ShStruct2DomainType_10462_10463) Bool)
(declare-fun |witness_4e2a3fe_F#triggerStateless| (Int) T@ShStruct2DomainType_10462_10463)
(declare-fun |witness_rev'| (T@PolymorphicMapType_6951 T@ShStruct2DomainType_10462_10463) Int)
(declare-fun dummyFunction_1801 (Int) Bool)
(declare-fun |witness_rev#triggerStateless| (T@ShStruct2DomainType_10462_10463) Int)
(declare-fun witness_4e2a3fe_F (T@PolymorphicMapType_6951 Int) T@ShStruct2DomainType_10462_10463)
(declare-fun witness_rev (T@PolymorphicMapType_6951 T@ShStruct2DomainType_10462_10463) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6951 T@PolymorphicMapType_6951 T@PolymorphicMapType_6972) Bool)
(declare-fun IsPredicateField_7011_21862 (T@Field_7011_4121) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7011 (T@Field_7011_4121) T@Field_7011_11708)
(declare-fun HasDirectPerm_7011_4121 (T@PolymorphicMapType_6972 T@Ref T@Field_7011_4121) Bool)
(declare-fun PredicateMaskField_4120 (T@Field_11691_11692) T@Field_11703_11708)
(declare-fun HasDirectPerm_4120_4121 (T@PolymorphicMapType_6972 T@Ref T@Field_11691_11692) Bool)
(declare-fun IsWandField_7011_25234 (T@Field_7011_4121) Bool)
(declare-fun WandMaskField_7011 (T@Field_7011_4121) T@Field_7011_11708)
(declare-fun IsWandField_4120_24877 (T@Field_11691_11692) Bool)
(declare-fun WandMaskField_4120 (T@Field_11691_11692) T@Field_11703_11708)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |witness_4e2a3fe_F#trigger| (T@FrameType Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_6951)
(declare-fun ZeroMask () T@PolymorphicMapType_6972)
(declare-fun InsidePredicate_11691_11691 (T@Field_11691_11692 T@FrameType T@Field_11691_11692 T@FrameType) Bool)
(declare-fun InsidePredicate_7011_7011 (T@Field_7011_4121 T@FrameType T@Field_7011_4121 T@FrameType) Bool)
(declare-fun IsPredicateField_4052_1390 (T@Field_10414_1390) Bool)
(declare-fun IsWandField_4052_1390 (T@Field_10414_1390) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4120_32166 (T@Field_11703_11708) Bool)
(declare-fun IsWandField_4120_32182 (T@Field_11703_11708) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4120_7025 (T@Field_4120_7025) Bool)
(declare-fun IsWandField_4120_7025 (T@Field_4120_7025) Bool)
(declare-fun IsPredicateField_4120_53 (T@Field_4120_53) Bool)
(declare-fun IsWandField_4120_53 (T@Field_4120_53) Bool)
(declare-fun IsPredicateField_4120_1390 (T@Field_4120_1390) Bool)
(declare-fun IsWandField_4120_1390 (T@Field_4120_1390) Bool)
(declare-fun IsPredicateField_4052_31335 (T@Field_7011_11708) Bool)
(declare-fun IsWandField_4052_31351 (T@Field_7011_11708) Bool)
(declare-fun IsPredicateField_4052_7025 (T@Field_7024_7025) Bool)
(declare-fun IsWandField_4052_7025 (T@Field_7024_7025) Bool)
(declare-fun IsPredicateField_4052_53 (T@Field_7011_53) Bool)
(declare-fun IsWandField_4052_53 (T@Field_7011_53) Bool)
(declare-fun HasDirectPerm_7011_21249 (T@PolymorphicMapType_6972 T@Ref T@Field_7011_11708) Bool)
(declare-fun HasDirectPerm_7011_1390 (T@PolymorphicMapType_6972 T@Ref T@Field_10414_1390) Bool)
(declare-fun HasDirectPerm_7011_7025 (T@PolymorphicMapType_6972 T@Ref T@Field_7024_7025) Bool)
(declare-fun HasDirectPerm_7011_53 (T@PolymorphicMapType_6972 T@Ref T@Field_7011_53) Bool)
(declare-fun HasDirectPerm_4120_20113 (T@PolymorphicMapType_6972 T@Ref T@Field_11703_11708) Bool)
(declare-fun HasDirectPerm_4120_1390 (T@PolymorphicMapType_6972 T@Ref T@Field_4120_1390) Bool)
(declare-fun HasDirectPerm_4120_7025 (T@PolymorphicMapType_6972 T@Ref T@Field_4120_7025) Bool)
(declare-fun HasDirectPerm_4120_53 (T@PolymorphicMapType_6972 T@Ref T@Field_4120_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6972 T@PolymorphicMapType_6972 T@PolymorphicMapType_6972) Bool)
(declare-fun ShStructget1of2_4055_4056 (T@ShStruct2DomainType_10462_10463) T@Ref)
(declare-fun ShStructrev1of2_4056_4055 (T@Ref) T@ShStruct2DomainType_10462_10463)
(declare-fun ShStructget0of2_4055_4056 (T@ShStruct2DomainType_10462_10463) T@Ref)
(declare-fun ShStructrev0of2_4055_4056 (T@Ref) T@ShStruct2DomainType_10462_10463)
(declare-fun |witness_4e2a3fe_F#frame| (T@FrameType Int) T@ShStruct2DomainType_10462_10463)
(declare-fun |witness_rev#frame| (T@FrameType T@ShStruct2DomainType_10462_10463) Int)
(declare-fun |SharedInv_4e2a3fe_F#trigger_4120| (T@PolymorphicMapType_6951 T@Field_11691_11692) Bool)
(declare-fun |SharedInv_4e2a3fe_F#everUsed_4120| (T@Field_11691_11692) Bool)
(declare-fun |SharedInv_4e2a3fe_F#condqp1| (T@PolymorphicMapType_6951) Int)
(declare-fun |sk_SharedInv_4e2a3fe_F#condqp1| (Int Int) Int)
(declare-fun |SharedInv_4e2a3fe_F#condqp2| (T@PolymorphicMapType_6951) Int)
(declare-fun |sk_SharedInv_4e2a3fe_F#condqp2| (Int Int) Int)
(declare-fun |SharedInv_4e2a3fe_F#sm| () T@Field_11703_11708)
(declare-fun InsidePredicate_11691_7011 (T@Field_11691_11692 T@FrameType T@Field_7011_4121 T@FrameType) Bool)
(declare-fun InsidePredicate_7011_11691 (T@Field_7011_4121 T@FrameType T@Field_11691_11692 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6951) (Heap1 T@PolymorphicMapType_6951) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6951) (Mask T@PolymorphicMapType_6972) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6951) (Heap1@@0 T@PolymorphicMapType_6951) (Heap2 T@PolymorphicMapType_6951) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11703_11708) ) (!  (not (select (|PolymorphicMapType_7500_11691_24069#PolymorphicMapType_7500| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_11691_24069#PolymorphicMapType_7500| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11691_11692) ) (!  (not (select (|PolymorphicMapType_7500_11691_11692#PolymorphicMapType_7500| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_11691_11692#PolymorphicMapType_7500| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4120_1390) ) (!  (not (select (|PolymorphicMapType_7500_11691_1390#PolymorphicMapType_7500| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_11691_1390#PolymorphicMapType_7500| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4120_7025) ) (!  (not (select (|PolymorphicMapType_7500_11691_7025#PolymorphicMapType_7500| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_11691_7025#PolymorphicMapType_7500| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4120_53) ) (!  (not (select (|PolymorphicMapType_7500_11691_53#PolymorphicMapType_7500| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_11691_53#PolymorphicMapType_7500| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7011_11708) ) (!  (not (select (|PolymorphicMapType_7500_7011_23021#PolymorphicMapType_7500| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_7011_23021#PolymorphicMapType_7500| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7011_4121) ) (!  (not (select (|PolymorphicMapType_7500_7011_11692#PolymorphicMapType_7500| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_7011_11692#PolymorphicMapType_7500| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_10414_1390) ) (!  (not (select (|PolymorphicMapType_7500_7011_1390#PolymorphicMapType_7500| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_7011_1390#PolymorphicMapType_7500| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7024_7025) ) (!  (not (select (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7011_53) ) (!  (not (select (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (IsPredicateField_4120_4121 SharedInv_4e2a3fe_F))
(assert (= (getPredWandId_4120_4121 SharedInv_4e2a3fe_F) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6951) (P0_PI0 Int) ) (! (dummyFunction_10557 (|witness_4e2a3fe_F#triggerStateless| P0_PI0))
 :qid |stdinbpl.254:15|
 :skolemid |25|
 :pattern ( (|witness_4e2a3fe_F'| Heap@@0 P0_PI0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6951) (s_2 T@ShStruct2DomainType_10462_10463) ) (! (dummyFunction_1801 (|witness_rev#triggerStateless| s_2))
 :qid |stdinbpl.312:15|
 :skolemid |29|
 :pattern ( (|witness_rev'| Heap@@1 s_2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6951) (P0_PI0@@0 Int) ) (!  (and (= (witness_4e2a3fe_F Heap@@2 P0_PI0@@0) (|witness_4e2a3fe_F'| Heap@@2 P0_PI0@@0)) (dummyFunction_10557 (|witness_4e2a3fe_F#triggerStateless| P0_PI0@@0)))
 :qid |stdinbpl.250:15|
 :skolemid |24|
 :pattern ( (witness_4e2a3fe_F Heap@@2 P0_PI0@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6951) (s_2@@0 T@ShStruct2DomainType_10462_10463) ) (!  (and (= (witness_rev Heap@@3 s_2@@0) (|witness_rev'| Heap@@3 s_2@@0)) (dummyFunction_1801 (|witness_rev#triggerStateless| s_2@@0)))
 :qid |stdinbpl.308:15|
 :skolemid |28|
 :pattern ( (witness_rev Heap@@3 s_2@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6951) (ExhaleHeap T@PolymorphicMapType_6951) (Mask@@0 T@PolymorphicMapType_6972) (pm_f_5 T@Field_7011_4121) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7011_4121 Mask@@0 null pm_f_5) (IsPredicateField_7011_21862 pm_f_5)) (= (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@4) null (PredicateMaskField_7011 pm_f_5)) (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap) null (PredicateMaskField_7011 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_7011_21862 pm_f_5) (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap) null (PredicateMaskField_7011 pm_f_5)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6951) (ExhaleHeap@@0 T@PolymorphicMapType_6951) (Mask@@1 T@PolymorphicMapType_6972) (pm_f_5@@0 T@Field_11691_11692) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4120_4121 Mask@@1 null pm_f_5@@0) (IsPredicateField_4120_4121 pm_f_5@@0)) (= (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@5) null (PredicateMaskField_4120 pm_f_5@@0)) (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@0) null (PredicateMaskField_4120 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4120_4121 pm_f_5@@0) (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@0) null (PredicateMaskField_4120 pm_f_5@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6951) (ExhaleHeap@@1 T@PolymorphicMapType_6951) (Mask@@2 T@PolymorphicMapType_6972) (pm_f_5@@1 T@Field_7011_4121) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7011_4121 Mask@@2 null pm_f_5@@1) (IsWandField_7011_25234 pm_f_5@@1)) (= (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@6) null (WandMaskField_7011 pm_f_5@@1)) (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@1) null (WandMaskField_7011 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsWandField_7011_25234 pm_f_5@@1) (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@1) null (WandMaskField_7011 pm_f_5@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6951) (ExhaleHeap@@2 T@PolymorphicMapType_6951) (Mask@@3 T@PolymorphicMapType_6972) (pm_f_5@@2 T@Field_11691_11692) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4120_4121 Mask@@3 null pm_f_5@@2) (IsWandField_4120_24877 pm_f_5@@2)) (= (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@7) null (WandMaskField_4120 pm_f_5@@2)) (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@2) null (WandMaskField_4120 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsWandField_4120_24877 pm_f_5@@2) (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@2) null (WandMaskField_4120 pm_f_5@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6951) (Mask@@4 T@PolymorphicMapType_6972) (P0_PI0@@1 Int) ) (!  (=> (and (state Heap@@8 Mask@@4) (or (< AssumeFunctionsAbove 0) (|witness_4e2a3fe_F#trigger| EmptyFrame P0_PI0@@1))) (= (witness_rev Heap@@8 (|witness_4e2a3fe_F'| Heap@@8 P0_PI0@@1)) P0_PI0@@1))
 :qid |stdinbpl.267:15|
 :skolemid |27|
 :pattern ( (state Heap@@8 Mask@@4) (|witness_4e2a3fe_F'| Heap@@8 P0_PI0@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6951) (ExhaleHeap@@3 T@PolymorphicMapType_6951) (Mask@@5 T@PolymorphicMapType_6972) (pm_f_5@@3 T@Field_7011_4121) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_7011_4121 Mask@@5 null pm_f_5@@3) (IsPredicateField_7011_21862 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_7011_53) ) (!  (=> (select (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@9) null (PredicateMaskField_7011 pm_f_5@@3))) o2_5 f_16) (= (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@9) o2_5 f_16) (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_7024_7025) ) (!  (=> (select (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@9) null (PredicateMaskField_7011 pm_f_5@@3))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@9) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_10414_1390) ) (!  (=> (select (|PolymorphicMapType_7500_7011_1390#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@9) null (PredicateMaskField_7011 pm_f_5@@3))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@9) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_7011_4121) ) (!  (=> (select (|PolymorphicMapType_7500_7011_11692#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@9) null (PredicateMaskField_7011 pm_f_5@@3))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@9) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_7011_11708) ) (!  (=> (select (|PolymorphicMapType_7500_7011_23021#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@9) null (PredicateMaskField_7011 pm_f_5@@3))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@9) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_4120_53) ) (!  (=> (select (|PolymorphicMapType_7500_11691_53#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@9) null (PredicateMaskField_7011 pm_f_5@@3))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@9) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_4120_7025) ) (!  (=> (select (|PolymorphicMapType_7500_11691_7025#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@9) null (PredicateMaskField_7011 pm_f_5@@3))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@9) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_4120_1390) ) (!  (=> (select (|PolymorphicMapType_7500_11691_1390#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@9) null (PredicateMaskField_7011 pm_f_5@@3))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@9) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_11691_11692) ) (!  (=> (select (|PolymorphicMapType_7500_11691_11692#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@9) null (PredicateMaskField_7011 pm_f_5@@3))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@9) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_11703_11708) ) (!  (=> (select (|PolymorphicMapType_7500_11691_24069#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@9) null (PredicateMaskField_7011 pm_f_5@@3))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@9) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@3) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsPredicateField_7011_21862 pm_f_5@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6951) (ExhaleHeap@@4 T@PolymorphicMapType_6951) (Mask@@6 T@PolymorphicMapType_6972) (pm_f_5@@4 T@Field_11691_11692) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_4120_4121 Mask@@6 null pm_f_5@@4) (IsPredicateField_4120_4121 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_7011_53) ) (!  (=> (select (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@10) null (PredicateMaskField_4120 pm_f_5@@4))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@10) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@9 f_16@@9))
)) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_7024_7025) ) (!  (=> (select (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@10) null (PredicateMaskField_4120 pm_f_5@@4))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@10) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_10414_1390) ) (!  (=> (select (|PolymorphicMapType_7500_7011_1390#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@10) null (PredicateMaskField_4120 pm_f_5@@4))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@10) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_7011_4121) ) (!  (=> (select (|PolymorphicMapType_7500_7011_11692#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@10) null (PredicateMaskField_4120 pm_f_5@@4))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@10) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_7011_11708) ) (!  (=> (select (|PolymorphicMapType_7500_7011_23021#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@10) null (PredicateMaskField_4120 pm_f_5@@4))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@10) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_4120_53) ) (!  (=> (select (|PolymorphicMapType_7500_11691_53#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@10) null (PredicateMaskField_4120 pm_f_5@@4))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@10) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@14 f_16@@14))
))) (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_4120_7025) ) (!  (=> (select (|PolymorphicMapType_7500_11691_7025#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@10) null (PredicateMaskField_4120 pm_f_5@@4))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@10) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@15 f_16@@15))
))) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_4120_1390) ) (!  (=> (select (|PolymorphicMapType_7500_11691_1390#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@10) null (PredicateMaskField_4120 pm_f_5@@4))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@10) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_11691_11692) ) (!  (=> (select (|PolymorphicMapType_7500_11691_11692#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@10) null (PredicateMaskField_4120 pm_f_5@@4))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@10) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_11703_11708) ) (!  (=> (select (|PolymorphicMapType_7500_11691_24069#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@10) null (PredicateMaskField_4120 pm_f_5@@4))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@10) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@4) o2_5@@18 f_16@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsPredicateField_4120_4121 pm_f_5@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6951) (ExhaleHeap@@5 T@PolymorphicMapType_6951) (Mask@@7 T@PolymorphicMapType_6972) (pm_f_5@@5 T@Field_7011_4121) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_7011_4121 Mask@@7 null pm_f_5@@5) (IsWandField_7011_25234 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_7011_53) ) (!  (=> (select (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@11) null (WandMaskField_7011 pm_f_5@@5))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@11) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@19 f_16@@19))
)) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_7024_7025) ) (!  (=> (select (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@11) null (WandMaskField_7011 pm_f_5@@5))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@11) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_10414_1390) ) (!  (=> (select (|PolymorphicMapType_7500_7011_1390#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@11) null (WandMaskField_7011 pm_f_5@@5))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@11) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_7011_4121) ) (!  (=> (select (|PolymorphicMapType_7500_7011_11692#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@11) null (WandMaskField_7011 pm_f_5@@5))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@11) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@22 f_16@@22))
))) (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_7011_11708) ) (!  (=> (select (|PolymorphicMapType_7500_7011_23021#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@11) null (WandMaskField_7011 pm_f_5@@5))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@11) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@23 f_16@@23))
))) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_4120_53) ) (!  (=> (select (|PolymorphicMapType_7500_11691_53#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@11) null (WandMaskField_7011 pm_f_5@@5))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@11) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_4120_7025) ) (!  (=> (select (|PolymorphicMapType_7500_11691_7025#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@11) null (WandMaskField_7011 pm_f_5@@5))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@11) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_4120_1390) ) (!  (=> (select (|PolymorphicMapType_7500_11691_1390#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@11) null (WandMaskField_7011 pm_f_5@@5))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@11) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_11691_11692) ) (!  (=> (select (|PolymorphicMapType_7500_11691_11692#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@11) null (WandMaskField_7011 pm_f_5@@5))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@11) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_11703_11708) ) (!  (=> (select (|PolymorphicMapType_7500_11691_24069#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@11) null (WandMaskField_7011 pm_f_5@@5))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@11) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@5) o2_5@@28 f_16@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (IsWandField_7011_25234 pm_f_5@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6951) (ExhaleHeap@@6 T@PolymorphicMapType_6951) (Mask@@8 T@PolymorphicMapType_6972) (pm_f_5@@6 T@Field_11691_11692) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_4120_4121 Mask@@8 null pm_f_5@@6) (IsWandField_4120_24877 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_7011_53) ) (!  (=> (select (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@12) null (WandMaskField_4120 pm_f_5@@6))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@12) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@29 f_16@@29))
)) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_7024_7025) ) (!  (=> (select (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@12) null (WandMaskField_4120 pm_f_5@@6))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@12) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@30 f_16@@30))
))) (forall ((o2_5@@31 T@Ref) (f_16@@31 T@Field_10414_1390) ) (!  (=> (select (|PolymorphicMapType_7500_7011_1390#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@12) null (WandMaskField_4120 pm_f_5@@6))) o2_5@@31 f_16@@31) (= (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@12) o2_5@@31 f_16@@31) (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@31 f_16@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@31 f_16@@31))
))) (forall ((o2_5@@32 T@Ref) (f_16@@32 T@Field_7011_4121) ) (!  (=> (select (|PolymorphicMapType_7500_7011_11692#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@12) null (WandMaskField_4120 pm_f_5@@6))) o2_5@@32 f_16@@32) (= (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@12) o2_5@@32 f_16@@32) (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@32 f_16@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@32 f_16@@32))
))) (forall ((o2_5@@33 T@Ref) (f_16@@33 T@Field_7011_11708) ) (!  (=> (select (|PolymorphicMapType_7500_7011_23021#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@12) null (WandMaskField_4120 pm_f_5@@6))) o2_5@@33 f_16@@33) (= (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@12) o2_5@@33 f_16@@33) (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@33 f_16@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@33 f_16@@33))
))) (forall ((o2_5@@34 T@Ref) (f_16@@34 T@Field_4120_53) ) (!  (=> (select (|PolymorphicMapType_7500_11691_53#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@12) null (WandMaskField_4120 pm_f_5@@6))) o2_5@@34 f_16@@34) (= (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@12) o2_5@@34 f_16@@34) (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@34 f_16@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@34 f_16@@34))
))) (forall ((o2_5@@35 T@Ref) (f_16@@35 T@Field_4120_7025) ) (!  (=> (select (|PolymorphicMapType_7500_11691_7025#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@12) null (WandMaskField_4120 pm_f_5@@6))) o2_5@@35 f_16@@35) (= (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@12) o2_5@@35 f_16@@35) (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@35 f_16@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@35 f_16@@35))
))) (forall ((o2_5@@36 T@Ref) (f_16@@36 T@Field_4120_1390) ) (!  (=> (select (|PolymorphicMapType_7500_11691_1390#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@12) null (WandMaskField_4120 pm_f_5@@6))) o2_5@@36 f_16@@36) (= (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@12) o2_5@@36 f_16@@36) (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@36 f_16@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@36 f_16@@36))
))) (forall ((o2_5@@37 T@Ref) (f_16@@37 T@Field_11691_11692) ) (!  (=> (select (|PolymorphicMapType_7500_11691_11692#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@12) null (WandMaskField_4120 pm_f_5@@6))) o2_5@@37 f_16@@37) (= (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@12) o2_5@@37 f_16@@37) (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@37 f_16@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@37 f_16@@37))
))) (forall ((o2_5@@38 T@Ref) (f_16@@38 T@Field_11703_11708) ) (!  (=> (select (|PolymorphicMapType_7500_11691_24069#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@12) null (WandMaskField_4120 pm_f_5@@6))) o2_5@@38 f_16@@38) (= (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@12) o2_5@@38 f_16@@38) (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@38 f_16@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@6) o2_5@@38 f_16@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (IsWandField_4120_24877 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6951) (ExhaleHeap@@7 T@PolymorphicMapType_6951) (Mask@@9 T@PolymorphicMapType_6972) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@13) o_12 $allocated) (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_11691_11692) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11691_11691 p v_1 p w))
 :qid |stdinbpl.199:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11691_11691 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_7011_4121) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7011_7011 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.199:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7011_7011 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4052_1390 Intint$$$$_E_$$$)))
(assert  (not (IsWandField_4052_1390 Intint$$$$_E_$$$)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6951) (ExhaleHeap@@8 T@PolymorphicMapType_6951) (Mask@@10 T@PolymorphicMapType_6972) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6972) (o_2@@9 T@Ref) (f_4@@9 T@Field_11703_11708) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4120_32166 f_4@@9))) (not (IsWandField_4120_32182 f_4@@9))) (<= (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6972) (o_2@@10 T@Ref) (f_4@@10 T@Field_4120_7025) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4120_7025 f_4@@10))) (not (IsWandField_4120_7025 f_4@@10))) (<= (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6972) (o_2@@11 T@Ref) (f_4@@11 T@Field_4120_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4120_53 f_4@@11))) (not (IsWandField_4120_53 f_4@@11))) (<= (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6972) (o_2@@12 T@Ref) (f_4@@12 T@Field_11691_11692) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4120_4121 f_4@@12))) (not (IsWandField_4120_24877 f_4@@12))) (<= (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6972) (o_2@@13 T@Ref) (f_4@@13 T@Field_4120_1390) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4120_1390 f_4@@13))) (not (IsWandField_4120_1390 f_4@@13))) (<= (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6972) (o_2@@14 T@Ref) (f_4@@14 T@Field_7011_11708) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4052_31335 f_4@@14))) (not (IsWandField_4052_31351 f_4@@14))) (<= (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6972) (o_2@@15 T@Ref) (f_4@@15 T@Field_7024_7025) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4052_7025 f_4@@15))) (not (IsWandField_4052_7025 f_4@@15))) (<= (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6972) (o_2@@16 T@Ref) (f_4@@16 T@Field_7011_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4052_53 f_4@@16))) (not (IsWandField_4052_53 f_4@@16))) (<= (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6972) (o_2@@17 T@Ref) (f_4@@17 T@Field_7011_4121) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7011_21862 f_4@@17))) (not (IsWandField_7011_25234 f_4@@17))) (<= (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6972) (o_2@@18 T@Ref) (f_4@@18 T@Field_10414_1390) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4052_1390 f_4@@18))) (not (IsWandField_4052_1390 f_4@@18))) (<= (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6972) (o_2@@19 T@Ref) (f_4@@19 T@Field_7011_11708) ) (! (= (HasDirectPerm_7011_21249 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7011_21249 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6972) (o_2@@20 T@Ref) (f_4@@20 T@Field_10414_1390) ) (! (= (HasDirectPerm_7011_1390 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7011_1390 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6972) (o_2@@21 T@Ref) (f_4@@21 T@Field_7024_7025) ) (! (= (HasDirectPerm_7011_7025 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7011_7025 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6972) (o_2@@22 T@Ref) (f_4@@22 T@Field_7011_53) ) (! (= (HasDirectPerm_7011_53 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7011_53 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6972) (o_2@@23 T@Ref) (f_4@@23 T@Field_7011_4121) ) (! (= (HasDirectPerm_7011_4121 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7011_4121 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6972) (o_2@@24 T@Ref) (f_4@@24 T@Field_11703_11708) ) (! (= (HasDirectPerm_4120_20113 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4120_20113 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6972) (o_2@@25 T@Ref) (f_4@@25 T@Field_4120_1390) ) (! (= (HasDirectPerm_4120_1390 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4120_1390 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6972) (o_2@@26 T@Ref) (f_4@@26 T@Field_4120_7025) ) (! (= (HasDirectPerm_4120_7025 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4120_7025 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6972) (o_2@@27 T@Ref) (f_4@@27 T@Field_4120_53) ) (! (= (HasDirectPerm_4120_53 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4120_53 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_6972) (o_2@@28 T@Ref) (f_4@@28 T@Field_11691_11692) ) (! (= (HasDirectPerm_4120_4121 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4120_4121 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.187:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6951) (ExhaleHeap@@9 T@PolymorphicMapType_6951) (Mask@@31 T@PolymorphicMapType_6972) (o_12@@0 T@Ref) (f_16@@39 T@Field_7011_11708) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_7011_21249 Mask@@31 o_12@@0 f_16@@39) (= (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@15) o_12@@0 f_16@@39) (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@9) o_12@@0 f_16@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| ExhaleHeap@@9) o_12@@0 f_16@@39))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6951) (ExhaleHeap@@10 T@PolymorphicMapType_6951) (Mask@@32 T@PolymorphicMapType_6972) (o_12@@1 T@Ref) (f_16@@40 T@Field_10414_1390) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_7011_1390 Mask@@32 o_12@@1 f_16@@40) (= (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@16) o_12@@1 f_16@@40) (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| ExhaleHeap@@10) o_12@@1 f_16@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| ExhaleHeap@@10) o_12@@1 f_16@@40))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6951) (ExhaleHeap@@11 T@PolymorphicMapType_6951) (Mask@@33 T@PolymorphicMapType_6972) (o_12@@2 T@Ref) (f_16@@41 T@Field_7024_7025) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_7011_7025 Mask@@33 o_12@@2 f_16@@41) (= (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@17) o_12@@2 f_16@@41) (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| ExhaleHeap@@11) o_12@@2 f_16@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| ExhaleHeap@@11) o_12@@2 f_16@@41))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6951) (ExhaleHeap@@12 T@PolymorphicMapType_6951) (Mask@@34 T@PolymorphicMapType_6972) (o_12@@3 T@Ref) (f_16@@42 T@Field_7011_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_7011_53 Mask@@34 o_12@@3 f_16@@42) (= (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@18) o_12@@3 f_16@@42) (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@12) o_12@@3 f_16@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| ExhaleHeap@@12) o_12@@3 f_16@@42))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6951) (ExhaleHeap@@13 T@PolymorphicMapType_6951) (Mask@@35 T@PolymorphicMapType_6972) (o_12@@4 T@Ref) (f_16@@43 T@Field_7011_4121) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_7011_4121 Mask@@35 o_12@@4 f_16@@43) (= (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@19) o_12@@4 f_16@@43) (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| ExhaleHeap@@13) o_12@@4 f_16@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| ExhaleHeap@@13) o_12@@4 f_16@@43))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6951) (ExhaleHeap@@14 T@PolymorphicMapType_6951) (Mask@@36 T@PolymorphicMapType_6972) (o_12@@5 T@Ref) (f_16@@44 T@Field_11703_11708) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_4120_20113 Mask@@36 o_12@@5 f_16@@44) (= (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@20) o_12@@5 f_16@@44) (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@14) o_12@@5 f_16@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| ExhaleHeap@@14) o_12@@5 f_16@@44))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6951) (ExhaleHeap@@15 T@PolymorphicMapType_6951) (Mask@@37 T@PolymorphicMapType_6972) (o_12@@6 T@Ref) (f_16@@45 T@Field_4120_1390) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_4120_1390 Mask@@37 o_12@@6 f_16@@45) (= (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@21) o_12@@6 f_16@@45) (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| ExhaleHeap@@15) o_12@@6 f_16@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| ExhaleHeap@@15) o_12@@6 f_16@@45))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6951) (ExhaleHeap@@16 T@PolymorphicMapType_6951) (Mask@@38 T@PolymorphicMapType_6972) (o_12@@7 T@Ref) (f_16@@46 T@Field_4120_7025) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_4120_7025 Mask@@38 o_12@@7 f_16@@46) (= (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@22) o_12@@7 f_16@@46) (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| ExhaleHeap@@16) o_12@@7 f_16@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| ExhaleHeap@@16) o_12@@7 f_16@@46))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6951) (ExhaleHeap@@17 T@PolymorphicMapType_6951) (Mask@@39 T@PolymorphicMapType_6972) (o_12@@8 T@Ref) (f_16@@47 T@Field_4120_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_4120_53 Mask@@39 o_12@@8 f_16@@47) (= (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@23) o_12@@8 f_16@@47) (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| ExhaleHeap@@17) o_12@@8 f_16@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| ExhaleHeap@@17) o_12@@8 f_16@@47))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6951) (ExhaleHeap@@18 T@PolymorphicMapType_6951) (Mask@@40 T@PolymorphicMapType_6972) (o_12@@9 T@Ref) (f_16@@48 T@Field_11691_11692) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_4120_4121 Mask@@40 o_12@@9 f_16@@48) (= (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@24) o_12@@9 f_16@@48) (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| ExhaleHeap@@18) o_12@@9 f_16@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| ExhaleHeap@@18) o_12@@9 f_16@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_11703_11708) ) (! (= (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_4120_7025) ) (! (= (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_4120_53) ) (! (= (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_11691_11692) ) (! (= (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_4120_1390) ) (! (= (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_7011_11708) ) (! (= (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_7024_7025) ) (! (= (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_7011_53) ) (! (= (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_7011_4121) ) (! (= (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_10414_1390) ) (! (= (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6972) (SummandMask1 T@PolymorphicMapType_6972) (SummandMask2 T@PolymorphicMapType_6972) (o_2@@39 T@Ref) (f_4@@39 T@Field_11703_11708) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6972) (SummandMask1@@0 T@PolymorphicMapType_6972) (SummandMask2@@0 T@PolymorphicMapType_6972) (o_2@@40 T@Ref) (f_4@@40 T@Field_4120_7025) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6972) (SummandMask1@@1 T@PolymorphicMapType_6972) (SummandMask2@@1 T@PolymorphicMapType_6972) (o_2@@41 T@Ref) (f_4@@41 T@Field_4120_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6972) (SummandMask1@@2 T@PolymorphicMapType_6972) (SummandMask2@@2 T@PolymorphicMapType_6972) (o_2@@42 T@Ref) (f_4@@42 T@Field_11691_11692) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6972) (SummandMask1@@3 T@PolymorphicMapType_6972) (SummandMask2@@3 T@PolymorphicMapType_6972) (o_2@@43 T@Ref) (f_4@@43 T@Field_4120_1390) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6972) (SummandMask1@@4 T@PolymorphicMapType_6972) (SummandMask2@@4 T@PolymorphicMapType_6972) (o_2@@44 T@Ref) (f_4@@44 T@Field_7011_11708) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6972) (SummandMask1@@5 T@PolymorphicMapType_6972) (SummandMask2@@5 T@PolymorphicMapType_6972) (o_2@@45 T@Ref) (f_4@@45 T@Field_7024_7025) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6972) (SummandMask1@@6 T@PolymorphicMapType_6972) (SummandMask2@@6 T@PolymorphicMapType_6972) (o_2@@46 T@Ref) (f_4@@46 T@Field_7011_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6972) (SummandMask1@@7 T@PolymorphicMapType_6972) (SummandMask2@@7 T@PolymorphicMapType_6972) (o_2@@47 T@Ref) (f_4@@47 T@Field_7011_4121) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6972) (SummandMask1@@8 T@PolymorphicMapType_6972) (SummandMask2@@8 T@PolymorphicMapType_6972) (o_2@@48 T@Ref) (f_4@@48 T@Field_10414_1390) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((x T@ShStruct2DomainType_10462_10463) ) (! (= (ShStructrev1of2_4056_4055 (ShStructget1of2_4055_4056 x)) x)
 :qid |stdinbpl.224:24|
 :skolemid |22|
 :pattern ( (ShStructget1of2_4055_4056 x))
)))
(assert (forall ((x@@0 T@ShStruct2DomainType_10462_10463) ) (! (= (ShStructrev0of2_4055_4056 (ShStructget0of2_4055_4056 x@@0)) x@@0)
 :qid |stdinbpl.230:24|
 :skolemid |23|
 :pattern ( (ShStructget0of2_4055_4056 x@@0))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6951) (Mask@@41 T@PolymorphicMapType_6972) (P0_PI0@@2 Int) ) (!  (=> (state Heap@@25 Mask@@41) (= (|witness_4e2a3fe_F'| Heap@@25 P0_PI0@@2) (|witness_4e2a3fe_F#frame| EmptyFrame P0_PI0@@2)))
 :qid |stdinbpl.261:15|
 :skolemid |26|
 :pattern ( (state Heap@@25 Mask@@41) (|witness_4e2a3fe_F'| Heap@@25 P0_PI0@@2))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6951) (Mask@@42 T@PolymorphicMapType_6972) (s_2@@1 T@ShStruct2DomainType_10462_10463) ) (!  (=> (state Heap@@26 Mask@@42) (= (|witness_rev'| Heap@@26 s_2@@1) (|witness_rev#frame| EmptyFrame s_2@@1)))
 :qid |stdinbpl.319:15|
 :skolemid |30|
 :pattern ( (state Heap@@26 Mask@@42) (|witness_rev'| Heap@@26 s_2@@1))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6951) ) (! (|SharedInv_4e2a3fe_F#everUsed_4120| SharedInv_4e2a3fe_F)
 :qid |stdinbpl.355:15|
 :skolemid |31|
 :pattern ( (|SharedInv_4e2a3fe_F#trigger_4120| Heap@@27 SharedInv_4e2a3fe_F))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_6951) (Heap1Heap T@PolymorphicMapType_6951) ) (!  (=> (and (= (< NoPerm (/ (to_real 1) (to_real 2))) (< NoPerm (/ (to_real 1) (to_real 2)))) (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap2Heap) (ShStructget0of2_4055_4056 (witness_4e2a3fe_F Heap2Heap (|sk_SharedInv_4e2a3fe_F#condqp1| (|SharedInv_4e2a3fe_F#condqp1| Heap2Heap) (|SharedInv_4e2a3fe_F#condqp1| Heap1Heap)))) Intint$$$$_E_$$$) (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap1Heap) (ShStructget0of2_4055_4056 (witness_4e2a3fe_F Heap1Heap (|sk_SharedInv_4e2a3fe_F#condqp1| (|SharedInv_4e2a3fe_F#condqp1| Heap2Heap) (|SharedInv_4e2a3fe_F#condqp1| Heap1Heap)))) Intint$$$$_E_$$$)))) (= (|SharedInv_4e2a3fe_F#condqp1| Heap2Heap) (|SharedInv_4e2a3fe_F#condqp1| Heap1Heap)))
 :qid |stdinbpl.366:15|
 :skolemid |32|
 :pattern ( (|SharedInv_4e2a3fe_F#condqp1| Heap2Heap) (|SharedInv_4e2a3fe_F#condqp1| Heap1Heap) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_6951) (Heap1Heap@@0 T@PolymorphicMapType_6951) ) (!  (=> (and (= (< NoPerm (/ (to_real 1) (to_real 2))) (< NoPerm (/ (to_real 1) (to_real 2)))) (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap2Heap@@0) (ShStructget1of2_4055_4056 (witness_4e2a3fe_F Heap2Heap@@0 (|sk_SharedInv_4e2a3fe_F#condqp2| (|SharedInv_4e2a3fe_F#condqp2| Heap2Heap@@0) (|SharedInv_4e2a3fe_F#condqp2| Heap1Heap@@0)))) Intint$$$$_E_$$$) (select (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap1Heap@@0) (ShStructget1of2_4055_4056 (witness_4e2a3fe_F Heap1Heap@@0 (|sk_SharedInv_4e2a3fe_F#condqp2| (|SharedInv_4e2a3fe_F#condqp2| Heap2Heap@@0) (|SharedInv_4e2a3fe_F#condqp2| Heap1Heap@@0)))) Intint$$$$_E_$$$)))) (= (|SharedInv_4e2a3fe_F#condqp2| Heap2Heap@@0) (|SharedInv_4e2a3fe_F#condqp2| Heap1Heap@@0)))
 :qid |stdinbpl.377:15|
 :skolemid |33|
 :pattern ( (|SharedInv_4e2a3fe_F#condqp2| Heap2Heap@@0) (|SharedInv_4e2a3fe_F#condqp2| Heap1Heap@@0) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6951) (o_11 T@Ref) (f_17 T@Field_11703_11708) (v T@PolymorphicMapType_7500) ) (! (succHeap Heap@@28 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@28) (store (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@28) o_11 f_17 v) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@28) (store (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@28) o_11 f_17 v) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@28) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6951) (o_11@@0 T@Ref) (f_17@@0 T@Field_11691_11692) (v@@0 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@29) (store (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@29) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@29) (store (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@29) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@29) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6951) (o_11@@1 T@Ref) (f_17@@1 T@Field_4120_1390) (v@@1 Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@30) (store (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@30) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@30) (store (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@30) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@30) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6951) (o_11@@2 T@Ref) (f_17@@2 T@Field_4120_7025) (v@@2 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@31) (store (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@31) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@31) (store (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@31) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@31) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6951) (o_11@@3 T@Ref) (f_17@@3 T@Field_4120_53) (v@@3 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@32) (store (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@32) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@32) (store (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@32) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@32) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6951) (o_11@@4 T@Ref) (f_17@@4 T@Field_7011_11708) (v@@4 T@PolymorphicMapType_7500) ) (! (succHeap Heap@@33 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@33) (store (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@33) o_11@@4 f_17@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@33) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@33) (store (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@33) o_11@@4 f_17@@4 v@@4)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6951) (o_11@@5 T@Ref) (f_17@@5 T@Field_7011_4121) (v@@5 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@34) (store (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@34) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@34) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@34) (store (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@34) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6951) (o_11@@6 T@Ref) (f_17@@6 T@Field_10414_1390) (v@@6 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@35) (store (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@35) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@35) (store (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@35) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@35) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6951) (o_11@@7 T@Ref) (f_17@@7 T@Field_7024_7025) (v@@7 T@Ref) ) (! (succHeap Heap@@36 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@36) (store (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@36) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@36) (store (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@36) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@36) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6951) (o_11@@8 T@Ref) (f_17@@8 T@Field_7011_53) (v@@8 Bool) ) (! (succHeap Heap@@37 (PolymorphicMapType_6951 (store (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@37) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (store (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@37) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@37) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@37)))
)))
(assert (= (PredicateMaskField_4120 SharedInv_4e2a3fe_F) |SharedInv_4e2a3fe_F#sm|))
(assert (forall ((o_11@@9 T@Ref) (f_10 T@Field_7024_7025) (Heap@@38 T@PolymorphicMapType_6951) ) (!  (=> (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@38) o_11@@9 $allocated) (select (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@38) (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@38) o_11@@9 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@38) o_11@@9 f_10))
)))
(assert (forall ((p@@2 T@Field_11691_11692) (v_1@@1 T@FrameType) (q T@Field_11691_11692) (w@@1 T@FrameType) (r T@Field_11691_11692) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11691_11691 p@@2 v_1@@1 q w@@1) (InsidePredicate_11691_11691 q w@@1 r u)) (InsidePredicate_11691_11691 p@@2 v_1@@1 r u))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11691_11691 p@@2 v_1@@1 q w@@1) (InsidePredicate_11691_11691 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_11691_11692) (v_1@@2 T@FrameType) (q@@0 T@Field_11691_11692) (w@@2 T@FrameType) (r@@0 T@Field_7011_4121) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11691_11691 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11691_7011 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_11691_7011 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11691_11691 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11691_7011 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_11691_11692) (v_1@@3 T@FrameType) (q@@1 T@Field_7011_4121) (w@@3 T@FrameType) (r@@1 T@Field_11691_11692) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11691_7011 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7011_11691 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_11691_11691 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11691_7011 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7011_11691 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_11691_11692) (v_1@@4 T@FrameType) (q@@2 T@Field_7011_4121) (w@@4 T@FrameType) (r@@2 T@Field_7011_4121) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11691_7011 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7011_7011 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_11691_7011 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11691_7011 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7011_7011 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_7011_4121) (v_1@@5 T@FrameType) (q@@3 T@Field_11691_11692) (w@@5 T@FrameType) (r@@3 T@Field_11691_11692) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7011_11691 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11691_11691 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7011_11691 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7011_11691 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11691_11691 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_7011_4121) (v_1@@6 T@FrameType) (q@@4 T@Field_11691_11692) (w@@6 T@FrameType) (r@@4 T@Field_7011_4121) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7011_11691 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11691_7011 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7011_7011 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7011_11691 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11691_7011 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_7011_4121) (v_1@@7 T@FrameType) (q@@5 T@Field_7011_4121) (w@@7 T@FrameType) (r@@5 T@Field_11691_11692) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7011_7011 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7011_11691 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7011_11691 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7011_7011 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7011_11691 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_7011_4121) (v_1@@8 T@FrameType) (q@@6 T@Field_7011_4121) (w@@8 T@FrameType) (r@@6 T@Field_7011_4121) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7011_7011 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7011_7011 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7011_7011 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7011_7011 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7011_7011 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_6951)
(declare-fun Mask@3 () T@PolymorphicMapType_6972)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_6972)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_6972)
(declare-fun Heap@@39 () T@PolymorphicMapType_6951)
(declare-fun Heap@0 () T@PolymorphicMapType_6951)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@2 () T@PolymorphicMapType_6972)
(declare-fun fn$$0@0 () T@ShStruct2DomainType_10462_10463)
(declare-fun id_V0 () Int)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_6972)
(declare-fun perm@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_6972)
(declare-fun id_V0_CN0 () Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1920 (Int) T@FrameType)
(set-info :boogie-vc-id processRequest_4e2a3fe_F)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon6_correct  (=> (state Heap@1 Mask@3) (and (=> (= (ControlFlow 0 3) (- 0 7)) (forall ((i_V0 Int) (i_V0_6 Int) ) (!  (=> (and (and (not (= i_V0 i_V0_6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (ShStructget0of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0)) (ShStructget0of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0_6)))))
 :qid |stdinbpl.599:15|
 :skolemid |48|
))) (=> (forall ((i_V0@@0 Int) (i_V0_6@@0 Int) ) (!  (=> (and (and (not (= i_V0@@0 i_V0_6@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (ShStructget0of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0@@0)) (ShStructget0of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0_6@@0)))))
 :qid |stdinbpl.599:15|
 :skolemid |48|
)) (=> (and (forall ((i_V0@@1 Int) ) (!  (=> (< NoPerm (/ (to_real 1) (to_real 2))) (and (qpRange3 (ShStructget0of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0@@1))) (= (invRecv3 (ShStructget0of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0@@1))) i_V0@@1)))
 :qid |stdinbpl.605:22|
 :skolemid |49|
 :pattern ( (ShStructget0of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0@@1)))
 :pattern ( (ShStructget0of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0@@1)))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange3 o_4)) (= (ShStructget0of2_4055_4056 (witness_4e2a3fe_F Heap@1 (invRecv3 o_4))) o_4))
 :qid |stdinbpl.609:22|
 :skolemid |50|
 :pattern ( (invRecv3 o_4))
))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (forall ((i_V0@@2 Int) ) (! (>= (/ (to_real 1) (to_real 2)) NoPerm)
 :qid |stdinbpl.615:15|
 :skolemid |51|
 :pattern ( (ShStructget0of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0@@2)))
 :pattern ( (ShStructget0of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0@@2)))
))) (=> (forall ((i_V0@@3 Int) ) (! (>= (/ (to_real 1) (to_real 2)) NoPerm)
 :qid |stdinbpl.615:15|
 :skolemid |51|
 :pattern ( (ShStructget0of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0@@3)))
 :pattern ( (ShStructget0of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0@@3)))
)) (=> (and (forall ((i_V0@@4 Int) ) (!  (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (not (= (ShStructget0of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0@@4)) null)))
 :qid |stdinbpl.621:22|
 :skolemid |52|
 :pattern ( (ShStructget0of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0@@4)))
 :pattern ( (ShStructget0of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0@@4)))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange3 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (ShStructget0of2_4055_4056 (witness_4e2a3fe_F Heap@1 (invRecv3 o_4@@0))) o_4@@0)) (= (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@0) o_4@@0 Intint$$$$_E_$$$) (+ (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@3) o_4@@0 Intint$$$$_E_$$$) (/ (to_real 1) (to_real 2)))))) (=> (not (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange3 o_4@@0))) (= (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@0) o_4@@0 Intint$$$$_E_$$$) (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@3) o_4@@0 Intint$$$$_E_$$$))))
 :qid |stdinbpl.627:22|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@0) o_4@@0 Intint$$$$_E_$$$))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_7011_53) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| Mask@3) o_4@@1 f_5) (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.631:29|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| Mask@3) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_7024_7025) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| Mask@3) o_4@@2 f_5@@0) (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.631:29|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| Mask@3) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_10414_1390) ) (!  (=> (not (= f_5@@1 Intint$$$$_E_$$$)) (= (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@3) o_4@@3 f_5@@1) (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.631:29|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@3) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_7011_4121) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| Mask@3) o_4@@4 f_5@@2) (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.631:29|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| Mask@3) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_7011_11708) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| Mask@3) o_4@@5 f_5@@3) (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.631:29|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| Mask@3) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_4120_53) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| Mask@3) o_4@@6 f_5@@4) (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.631:29|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| Mask@3) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| QPMask@0) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_4120_7025) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| Mask@3) o_4@@7 f_5@@5) (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| QPMask@0) o_4@@7 f_5@@5)))
 :qid |stdinbpl.631:29|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| Mask@3) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| QPMask@0) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_4120_1390) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| Mask@3) o_4@@8 f_5@@6) (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| QPMask@0) o_4@@8 f_5@@6)))
 :qid |stdinbpl.631:29|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| Mask@3) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| QPMask@0) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_11691_11692) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@3) o_4@@9 f_5@@7) (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| QPMask@0) o_4@@9 f_5@@7)))
 :qid |stdinbpl.631:29|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@3) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| QPMask@0) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_11703_11708) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| Mask@3) o_4@@10 f_5@@8) (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| QPMask@0) o_4@@10 f_5@@8)))
 :qid |stdinbpl.631:29|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| Mask@3) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| QPMask@0) o_4@@10 f_5@@8))
))) (and (state Heap@1 QPMask@0) (state Heap@1 QPMask@0))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((i_V0_1 Int) (i_V0_1_1 Int) ) (!  (=> (and (and (not (= i_V0_1 i_V0_1_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (ShStructget1of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0_1)) (ShStructget1of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0_1_1)))))
 :qid |stdinbpl.640:15|
 :skolemid |55|
))) (=> (forall ((i_V0_1@@0 Int) (i_V0_1_1@@0 Int) ) (!  (=> (and (and (not (= i_V0_1@@0 i_V0_1_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (ShStructget1of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0_1@@0)) (ShStructget1of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0_1_1@@0)))))
 :qid |stdinbpl.640:15|
 :skolemid |55|
)) (=> (and (forall ((i_V0_1@@1 Int) ) (!  (=> (< NoPerm (/ (to_real 1) (to_real 2))) (and (qpRange4 (ShStructget1of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0_1@@1))) (= (invRecv4 (ShStructget1of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0_1@@1))) i_V0_1@@1)))
 :qid |stdinbpl.646:22|
 :skolemid |56|
 :pattern ( (ShStructget1of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0_1@@1)))
 :pattern ( (ShStructget1of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0_1@@1)))
)) (forall ((o_4@@11 T@Ref) ) (!  (=> (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange4 o_4@@11)) (= (ShStructget1of2_4055_4056 (witness_4e2a3fe_F Heap@1 (invRecv4 o_4@@11))) o_4@@11))
 :qid |stdinbpl.650:22|
 :skolemid |57|
 :pattern ( (invRecv4 o_4@@11))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((i_V0_1@@2 Int) ) (! (>= (/ (to_real 1) (to_real 2)) NoPerm)
 :qid |stdinbpl.656:15|
 :skolemid |58|
 :pattern ( (ShStructget1of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0_1@@2)))
 :pattern ( (ShStructget1of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0_1@@2)))
))) (=> (forall ((i_V0_1@@3 Int) ) (! (>= (/ (to_real 1) (to_real 2)) NoPerm)
 :qid |stdinbpl.656:15|
 :skolemid |58|
 :pattern ( (ShStructget1of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0_1@@3)))
 :pattern ( (ShStructget1of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0_1@@3)))
)) (=> (and (forall ((i_V0_1@@4 Int) ) (!  (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (not (= (ShStructget1of2_4055_4056 (witness_4e2a3fe_F Heap@1 i_V0_1@@4)) null)))
 :qid |stdinbpl.662:22|
 :skolemid |59|
 :pattern ( (ShStructget1of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0_1@@4)))
 :pattern ( (ShStructget1of2_4055_4056 (|witness_4e2a3fe_F#frame| EmptyFrame i_V0_1@@4)))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange4 o_4@@12)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (ShStructget1of2_4055_4056 (witness_4e2a3fe_F Heap@1 (invRecv4 o_4@@12))) o_4@@12)) (= (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@1) o_4@@12 Intint$$$$_E_$$$) (+ (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@0) o_4@@12 Intint$$$$_E_$$$) (/ (to_real 1) (to_real 2)))))) (=> (not (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange4 o_4@@12))) (= (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@1) o_4@@12 Intint$$$$_E_$$$) (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@0) o_4@@12 Intint$$$$_E_$$$))))
 :qid |stdinbpl.668:22|
 :skolemid |60|
 :pattern ( (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@1) o_4@@12 Intint$$$$_E_$$$))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_7011_53) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| QPMask@0) o_4@@13 f_5@@9) (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| QPMask@1) o_4@@13 f_5@@9)))
 :qid |stdinbpl.672:29|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| QPMask@0) o_4@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| QPMask@1) o_4@@13 f_5@@9))
)) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_7024_7025) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| QPMask@0) o_4@@14 f_5@@10) (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| QPMask@1) o_4@@14 f_5@@10)))
 :qid |stdinbpl.672:29|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| QPMask@0) o_4@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| QPMask@1) o_4@@14 f_5@@10))
))) (forall ((o_4@@15 T@Ref) (f_5@@11 T@Field_10414_1390) ) (!  (=> (not (= f_5@@11 Intint$$$$_E_$$$)) (= (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@0) o_4@@15 f_5@@11) (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@1) o_4@@15 f_5@@11)))
 :qid |stdinbpl.672:29|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@0) o_4@@15 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| QPMask@1) o_4@@15 f_5@@11))
))) (forall ((o_4@@16 T@Ref) (f_5@@12 T@Field_7011_4121) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| QPMask@0) o_4@@16 f_5@@12) (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| QPMask@1) o_4@@16 f_5@@12)))
 :qid |stdinbpl.672:29|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| QPMask@0) o_4@@16 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| QPMask@1) o_4@@16 f_5@@12))
))) (forall ((o_4@@17 T@Ref) (f_5@@13 T@Field_7011_11708) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| QPMask@0) o_4@@17 f_5@@13) (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| QPMask@1) o_4@@17 f_5@@13)))
 :qid |stdinbpl.672:29|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| QPMask@0) o_4@@17 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| QPMask@1) o_4@@17 f_5@@13))
))) (forall ((o_4@@18 T@Ref) (f_5@@14 T@Field_4120_53) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| QPMask@0) o_4@@18 f_5@@14) (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| QPMask@1) o_4@@18 f_5@@14)))
 :qid |stdinbpl.672:29|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| QPMask@0) o_4@@18 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| QPMask@1) o_4@@18 f_5@@14))
))) (forall ((o_4@@19 T@Ref) (f_5@@15 T@Field_4120_7025) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| QPMask@0) o_4@@19 f_5@@15) (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| QPMask@1) o_4@@19 f_5@@15)))
 :qid |stdinbpl.672:29|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| QPMask@0) o_4@@19 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| QPMask@1) o_4@@19 f_5@@15))
))) (forall ((o_4@@20 T@Ref) (f_5@@16 T@Field_4120_1390) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| QPMask@0) o_4@@20 f_5@@16) (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| QPMask@1) o_4@@20 f_5@@16)))
 :qid |stdinbpl.672:29|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| QPMask@0) o_4@@20 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| QPMask@1) o_4@@20 f_5@@16))
))) (forall ((o_4@@21 T@Ref) (f_5@@17 T@Field_11691_11692) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| QPMask@0) o_4@@21 f_5@@17) (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| QPMask@1) o_4@@21 f_5@@17)))
 :qid |stdinbpl.672:29|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| QPMask@0) o_4@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| QPMask@1) o_4@@21 f_5@@17))
))) (forall ((o_4@@22 T@Ref) (f_5@@18 T@Field_11703_11708) ) (!  (=> true (= (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| QPMask@0) o_4@@22 f_5@@18) (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| QPMask@1) o_4@@22 f_5@@18)))
 :qid |stdinbpl.672:29|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| QPMask@0) o_4@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| QPMask@1) o_4@@22 f_5@@18))
))) (and (and (state Heap@1 QPMask@1) (state Heap@1 QPMask@1)) (and (state Heap@1 QPMask@1) (= (ControlFlow 0 3) (- 0 2))))) false)))))))))))))))))
(let ((anon9_Else_correct  (=> (HasDirectPerm_4120_4121 Mask@3 null SharedInv_4e2a3fe_F) (=> (and (= Heap@1 Heap@@39) (= (ControlFlow 0 9) 3)) anon6_correct))))
(let ((anon9_Then_correct  (=> (and (and (not (HasDirectPerm_4120_4121 Mask@3 null SharedInv_4e2a3fe_F)) (= Heap@0 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_3908_53#PolymorphicMapType_6951| Heap@@39) (|PolymorphicMapType_6951_3911_3912#PolymorphicMapType_6951| Heap@@39) (|PolymorphicMapType_6951_4052_1390#PolymorphicMapType_6951| Heap@@39) (store (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@39) null SharedInv_4e2a3fe_F newVersion@0) (|PolymorphicMapType_6951_4120_53#PolymorphicMapType_6951| Heap@@39) (|PolymorphicMapType_6951_4120_7025#PolymorphicMapType_6951| Heap@@39) (|PolymorphicMapType_6951_4120_1390#PolymorphicMapType_6951| Heap@@39) (|PolymorphicMapType_6951_4120_20155#PolymorphicMapType_6951| Heap@@39) (|PolymorphicMapType_6951_7011_4121#PolymorphicMapType_6951| Heap@@39) (|PolymorphicMapType_6951_7011_21291#PolymorphicMapType_6951| Heap@@39)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 8) 3))) anon6_correct)))
(let ((anon4_correct  (=> (= Mask@3 (PolymorphicMapType_6972 (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@2) (store (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@2) null SharedInv_4e2a3fe_F (- (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@2) null SharedInv_4e2a3fe_F) FullPerm)) (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| Mask@2) (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| Mask@2) (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| Mask@2) (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| Mask@2) (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| Mask@2) (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| Mask@2) (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| Mask@2) (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| Mask@2))) (and (=> (= (ControlFlow 0 10) 8) anon9_Then_correct) (=> (= (ControlFlow 0 10) 9) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 13) 10)) anon4_correct)))
(let ((anon8_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= FullPerm (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@2) null SharedInv_4e2a3fe_F))) (=> (<= FullPerm (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@2) null SharedInv_4e2a3fe_F)) (=> (= (ControlFlow 0 11) 10) anon4_correct))))))
(let ((anon7_Else_correct  (=> (and (= fn$$0@0 (witness_4e2a3fe_F Heap@@39 id_V0)) (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= (ShStructget0of2_4055_4056 fn$$0@0) null))) (= Mask@0 (PolymorphicMapType_6972 (store (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| ZeroMask) (ShStructget0of2_4055_4056 fn$$0@0) Intint$$$$_E_$$$ (+ (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| ZeroMask) (ShStructget0of2_4055_4056 fn$$0@0) Intint$$$$_E_$$$) perm@0)) (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| ZeroMask) (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| ZeroMask) (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| ZeroMask) (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| ZeroMask) (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| ZeroMask) (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| ZeroMask) (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| ZeroMask) (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| ZeroMask) (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| ZeroMask)))) (and (state Heap@@39 Mask@0) (= perm@1 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= (ShStructget1of2_4055_4056 fn$$0@0) null))) (=> (and (and (= Mask@1 (PolymorphicMapType_6972 (store (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@0) (ShStructget1of2_4055_4056 fn$$0@0) Intint$$$$_E_$$$ (+ (select (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@0) (ShStructget1of2_4055_4056 fn$$0@0) Intint$$$$_E_$$$) perm@1)) (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@0) (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| Mask@0) (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| Mask@0) (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| Mask@0) (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| Mask@0) (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| Mask@0) (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| Mask@0) (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| Mask@0) (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| Mask@0))) (state Heap@@39 Mask@1)) (and (state Heap@@39 Mask@1) (= Mask@2 (PolymorphicMapType_6972 (|PolymorphicMapType_6972_4052_1390#PolymorphicMapType_6972| Mask@1) (store (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@1) null SharedInv_4e2a3fe_F (+ (select (|PolymorphicMapType_6972_4120_4121#PolymorphicMapType_6972| Mask@1) null SharedInv_4e2a3fe_F) FullPerm)) (|PolymorphicMapType_6972_4052_4121#PolymorphicMapType_6972| Mask@1) (|PolymorphicMapType_6972_4052_53#PolymorphicMapType_6972| Mask@1) (|PolymorphicMapType_6972_4052_7025#PolymorphicMapType_6972| Mask@1) (|PolymorphicMapType_6972_4052_29463#PolymorphicMapType_6972| Mask@1) (|PolymorphicMapType_6972_4120_1390#PolymorphicMapType_6972| Mask@1) (|PolymorphicMapType_6972_4120_53#PolymorphicMapType_6972| Mask@1) (|PolymorphicMapType_6972_4120_7025#PolymorphicMapType_6972| Mask@1) (|PolymorphicMapType_6972_4120_29874#PolymorphicMapType_6972| Mask@1))))) (=> (and (and (and (state Heap@@39 Mask@2) (state Heap@@39 Mask@2)) (and (= id_V0_CN0 0) (state Heap@@39 Mask@2))) (and (and (state Heap@@39 Mask@2) (state Heap@@39 Mask@2)) (and (|SharedInv_4e2a3fe_F#trigger_4120| Heap@@39 SharedInv_4e2a3fe_F) (= (select (|PolymorphicMapType_6951_4120_4121#PolymorphicMapType_6951| Heap@@39) null SharedInv_4e2a3fe_F) (CombineFrames (FrameFragment_1920 (|SharedInv_4e2a3fe_F#condqp1| Heap@@39)) (FrameFragment_1920 (|SharedInv_4e2a3fe_F#condqp2| Heap@@39))))))) (and (=> (= (ControlFlow 0 14) 11) anon8_Then_correct) (=> (= (ControlFlow 0 14) 13) anon8_Else_correct)))))))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@39 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 17) 1) anon7_Then_correct) (=> (= (ControlFlow 0 17) 14) anon7_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 17) anon0_correct)))
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
