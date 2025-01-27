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
(declare-sort T@Field_3707_53 0)
(declare-sort T@Field_3720_3721 0)
(declare-sort T@Field_3707_7145 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3707_7161 0)
(declare-sort T@Field_7144_53 0)
(declare-sort T@Field_7144_3721 0)
(declare-sort T@Field_7144_7145 0)
(declare-sort T@Field_7156_7161 0)
(declare-datatypes ((T@PolymorphicMapType_3668 0)) (((PolymorphicMapType_3668 (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| (Array T@Ref T@Field_3707_53 Real)) (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| (Array T@Ref T@Field_3720_3721 Real)) (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| (Array T@Ref T@Field_3707_7145 Real)) (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| (Array T@Ref T@Field_3707_7161 Real)) (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| (Array T@Ref T@Field_7144_53 Real)) (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| (Array T@Ref T@Field_7144_3721 Real)) (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| (Array T@Ref T@Field_7144_7145 Real)) (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| (Array T@Ref T@Field_7156_7161 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4196 0)) (((PolymorphicMapType_4196 (|PolymorphicMapType_4196_3707_53#PolymorphicMapType_4196| (Array T@Ref T@Field_3707_53 Bool)) (|PolymorphicMapType_4196_3707_3721#PolymorphicMapType_4196| (Array T@Ref T@Field_3720_3721 Bool)) (|PolymorphicMapType_4196_3707_7145#PolymorphicMapType_4196| (Array T@Ref T@Field_3707_7145 Bool)) (|PolymorphicMapType_4196_3707_12732#PolymorphicMapType_4196| (Array T@Ref T@Field_3707_7161 Bool)) (|PolymorphicMapType_4196_7144_53#PolymorphicMapType_4196| (Array T@Ref T@Field_7144_53 Bool)) (|PolymorphicMapType_4196_7144_3721#PolymorphicMapType_4196| (Array T@Ref T@Field_7144_3721 Bool)) (|PolymorphicMapType_4196_7144_7145#PolymorphicMapType_4196| (Array T@Ref T@Field_7144_7145 Bool)) (|PolymorphicMapType_4196_7144_13582#PolymorphicMapType_4196| (Array T@Ref T@Field_7156_7161 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3647 0)) (((PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| (Array T@Ref T@Field_3707_53 Bool)) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| (Array T@Ref T@Field_3720_3721 T@Ref)) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| (Array T@Ref T@Field_3707_7145 T@FrameType)) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| (Array T@Ref T@Field_3707_7161 T@PolymorphicMapType_4196)) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| (Array T@Ref T@Field_7144_53 Bool)) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| (Array T@Ref T@Field_7144_3721 T@Ref)) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| (Array T@Ref T@Field_7144_7145 T@FrameType)) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| (Array T@Ref T@Field_7156_7161 T@PolymorphicMapType_4196)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3647 T@PolymorphicMapType_3647) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3647 T@PolymorphicMapType_3647) Bool)
(declare-fun state (T@PolymorphicMapType_3647 T@PolymorphicMapType_3668) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3668) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3647 T@PolymorphicMapType_3647 T@PolymorphicMapType_3668) Bool)
(declare-fun IsPredicateField_2095_2096 (T@Field_7144_7145) Bool)
(declare-fun HasDirectPerm_7144_7145 (T@PolymorphicMapType_3668 T@Ref T@Field_7144_7145) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2095 (T@Field_7144_7145) T@Field_7156_7161)
(declare-fun IsPredicateField_3707_11446 (T@Field_3707_7145) Bool)
(declare-fun HasDirectPerm_3707_7145 (T@PolymorphicMapType_3668 T@Ref T@Field_3707_7145) Bool)
(declare-fun PredicateMaskField_3707 (T@Field_3707_7145) T@Field_3707_7161)
(declare-fun IsWandField_7144_14747 (T@Field_7144_7145) Bool)
(declare-fun WandMaskField_7144 (T@Field_7144_7145) T@Field_7156_7161)
(declare-fun IsWandField_3707_14390 (T@Field_3707_7145) Bool)
(declare-fun WandMaskField_3707 (T@Field_3707_7145) T@Field_3707_7161)
(declare-fun ZeroPMask () T@PolymorphicMapType_4196)
(declare-fun test05_1 () T@Field_7144_7145)
(declare-fun getPredWandId_2095_2096 (T@Field_7144_7145) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_3647)
(declare-fun ZeroMask () T@PolymorphicMapType_3668)
(declare-fun $allocated () T@Field_3707_53)
(declare-fun InsidePredicate_7144_7144 (T@Field_7144_7145 T@FrameType T@Field_7144_7145 T@FrameType) Bool)
(declare-fun InsidePredicate_3707_3707 (T@Field_3707_7145 T@FrameType T@Field_3707_7145 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7144_20502 (T@Field_7156_7161) Bool)
(declare-fun IsWandField_7144_20518 (T@Field_7156_7161) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7144_3721 (T@Field_7144_3721) Bool)
(declare-fun IsWandField_7144_3721 (T@Field_7144_3721) Bool)
(declare-fun IsPredicateField_7144_53 (T@Field_7144_53) Bool)
(declare-fun IsWandField_7144_53 (T@Field_7144_53) Bool)
(declare-fun IsPredicateField_3707_19839 (T@Field_3707_7161) Bool)
(declare-fun IsWandField_3707_19855 (T@Field_3707_7161) Bool)
(declare-fun IsPredicateField_3707_3721 (T@Field_3720_3721) Bool)
(declare-fun IsWandField_3707_3721 (T@Field_3720_3721) Bool)
(declare-fun IsPredicateField_3707_53 (T@Field_3707_53) Bool)
(declare-fun IsWandField_3707_53 (T@Field_3707_53) Bool)
(declare-fun HasDirectPerm_7144_11158 (T@PolymorphicMapType_3668 T@Ref T@Field_7156_7161) Bool)
(declare-fun HasDirectPerm_7144_3721 (T@PolymorphicMapType_3668 T@Ref T@Field_7144_3721) Bool)
(declare-fun HasDirectPerm_7144_53 (T@PolymorphicMapType_3668 T@Ref T@Field_7144_53) Bool)
(declare-fun HasDirectPerm_3707_10201 (T@PolymorphicMapType_3668 T@Ref T@Field_3707_7161) Bool)
(declare-fun HasDirectPerm_3707_3721 (T@PolymorphicMapType_3668 T@Ref T@Field_3720_3721) Bool)
(declare-fun HasDirectPerm_3707_53 (T@PolymorphicMapType_3668 T@Ref T@Field_3707_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3668 T@PolymorphicMapType_3668 T@PolymorphicMapType_3668) Bool)
(declare-fun boo (Int Int) Bool)
(declare-fun |test05#trigger_2095| (T@PolymorphicMapType_3647 T@Field_7144_7145) Bool)
(declare-fun |test05#everUsed_2095| (T@Field_7144_7145) Bool)
(declare-fun |test05#sm| () T@Field_7156_7161)
(declare-fun InsidePredicate_7144_3707 (T@Field_7144_7145 T@FrameType T@Field_3707_7145 T@FrameType) Bool)
(declare-fun InsidePredicate_3707_7144 (T@Field_3707_7145 T@FrameType T@Field_7144_7145 T@FrameType) Bool)
(declare-fun foo_2 (Int Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3647) (Heap1 T@PolymorphicMapType_3647) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3647) (Mask T@PolymorphicMapType_3668) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3647) (ExhaleHeap T@PolymorphicMapType_3647) (Mask@@0 T@PolymorphicMapType_3668) (pm_f_4 T@Field_7144_7145) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7144_7145 Mask@@0 null pm_f_4) (IsPredicateField_2095_2096 pm_f_4)) (and (and (and (and (and (and (and (forall ((o2_4 T@Ref) (f_20 T@Field_3707_53) ) (!  (=> (select (|PolymorphicMapType_4196_3707_53#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@0) null (PredicateMaskField_2095 pm_f_4))) o2_4 f_20) (= (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@0) o2_4 f_20) (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap) o2_4 f_20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap) o2_4 f_20))
)) (forall ((o2_4@@0 T@Ref) (f_20@@0 T@Field_3720_3721) ) (!  (=> (select (|PolymorphicMapType_4196_3707_3721#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@0) null (PredicateMaskField_2095 pm_f_4))) o2_4@@0 f_20@@0) (= (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@0) o2_4@@0 f_20@@0) (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| ExhaleHeap) o2_4@@0 f_20@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| ExhaleHeap) o2_4@@0 f_20@@0))
))) (forall ((o2_4@@1 T@Ref) (f_20@@1 T@Field_3707_7145) ) (!  (=> (select (|PolymorphicMapType_4196_3707_7145#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@0) null (PredicateMaskField_2095 pm_f_4))) o2_4@@1 f_20@@1) (= (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@0) o2_4@@1 f_20@@1) (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| ExhaleHeap) o2_4@@1 f_20@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| ExhaleHeap) o2_4@@1 f_20@@1))
))) (forall ((o2_4@@2 T@Ref) (f_20@@2 T@Field_3707_7161) ) (!  (=> (select (|PolymorphicMapType_4196_3707_12732#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@0) null (PredicateMaskField_2095 pm_f_4))) o2_4@@2 f_20@@2) (= (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@0) o2_4@@2 f_20@@2) (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap) o2_4@@2 f_20@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap) o2_4@@2 f_20@@2))
))) (forall ((o2_4@@3 T@Ref) (f_20@@3 T@Field_7144_53) ) (!  (=> (select (|PolymorphicMapType_4196_7144_53#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@0) null (PredicateMaskField_2095 pm_f_4))) o2_4@@3 f_20@@3) (= (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@0) o2_4@@3 f_20@@3) (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| ExhaleHeap) o2_4@@3 f_20@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| ExhaleHeap) o2_4@@3 f_20@@3))
))) (forall ((o2_4@@4 T@Ref) (f_20@@4 T@Field_7144_3721) ) (!  (=> (select (|PolymorphicMapType_4196_7144_3721#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@0) null (PredicateMaskField_2095 pm_f_4))) o2_4@@4 f_20@@4) (= (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@0) o2_4@@4 f_20@@4) (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| ExhaleHeap) o2_4@@4 f_20@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| ExhaleHeap) o2_4@@4 f_20@@4))
))) (forall ((o2_4@@5 T@Ref) (f_20@@5 T@Field_7144_7145) ) (!  (=> (select (|PolymorphicMapType_4196_7144_7145#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@0) null (PredicateMaskField_2095 pm_f_4))) o2_4@@5 f_20@@5) (= (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@0) o2_4@@5 f_20@@5) (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| ExhaleHeap) o2_4@@5 f_20@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| ExhaleHeap) o2_4@@5 f_20@@5))
))) (forall ((o2_4@@6 T@Ref) (f_20@@6 T@Field_7156_7161) ) (!  (=> (select (|PolymorphicMapType_4196_7144_13582#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@0) null (PredicateMaskField_2095 pm_f_4))) o2_4@@6 f_20@@6) (= (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@0) o2_4@@6 f_20@@6) (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap) o2_4@@6 f_20@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap) o2_4@@6 f_20@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2095_2096 pm_f_4))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3647) (ExhaleHeap@@0 T@PolymorphicMapType_3647) (Mask@@1 T@PolymorphicMapType_3668) (pm_f_4@@0 T@Field_3707_7145) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3707_7145 Mask@@1 null pm_f_4@@0) (IsPredicateField_3707_11446 pm_f_4@@0)) (and (and (and (and (and (and (and (forall ((o2_4@@7 T@Ref) (f_20@@7 T@Field_3707_53) ) (!  (=> (select (|PolymorphicMapType_4196_3707_53#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@1) null (PredicateMaskField_3707 pm_f_4@@0))) o2_4@@7 f_20@@7) (= (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@1) o2_4@@7 f_20@@7) (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@7 f_20@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@7 f_20@@7))
)) (forall ((o2_4@@8 T@Ref) (f_20@@8 T@Field_3720_3721) ) (!  (=> (select (|PolymorphicMapType_4196_3707_3721#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@1) null (PredicateMaskField_3707 pm_f_4@@0))) o2_4@@8 f_20@@8) (= (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@1) o2_4@@8 f_20@@8) (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@8 f_20@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@8 f_20@@8))
))) (forall ((o2_4@@9 T@Ref) (f_20@@9 T@Field_3707_7145) ) (!  (=> (select (|PolymorphicMapType_4196_3707_7145#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@1) null (PredicateMaskField_3707 pm_f_4@@0))) o2_4@@9 f_20@@9) (= (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@1) o2_4@@9 f_20@@9) (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@9 f_20@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@9 f_20@@9))
))) (forall ((o2_4@@10 T@Ref) (f_20@@10 T@Field_3707_7161) ) (!  (=> (select (|PolymorphicMapType_4196_3707_12732#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@1) null (PredicateMaskField_3707 pm_f_4@@0))) o2_4@@10 f_20@@10) (= (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@1) o2_4@@10 f_20@@10) (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@10 f_20@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@10 f_20@@10))
))) (forall ((o2_4@@11 T@Ref) (f_20@@11 T@Field_7144_53) ) (!  (=> (select (|PolymorphicMapType_4196_7144_53#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@1) null (PredicateMaskField_3707 pm_f_4@@0))) o2_4@@11 f_20@@11) (= (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@1) o2_4@@11 f_20@@11) (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@11 f_20@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@11 f_20@@11))
))) (forall ((o2_4@@12 T@Ref) (f_20@@12 T@Field_7144_3721) ) (!  (=> (select (|PolymorphicMapType_4196_7144_3721#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@1) null (PredicateMaskField_3707 pm_f_4@@0))) o2_4@@12 f_20@@12) (= (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@1) o2_4@@12 f_20@@12) (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@12 f_20@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@12 f_20@@12))
))) (forall ((o2_4@@13 T@Ref) (f_20@@13 T@Field_7144_7145) ) (!  (=> (select (|PolymorphicMapType_4196_7144_7145#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@1) null (PredicateMaskField_3707 pm_f_4@@0))) o2_4@@13 f_20@@13) (= (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@1) o2_4@@13 f_20@@13) (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@13 f_20@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@13 f_20@@13))
))) (forall ((o2_4@@14 T@Ref) (f_20@@14 T@Field_7156_7161) ) (!  (=> (select (|PolymorphicMapType_4196_7144_13582#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@1) null (PredicateMaskField_3707 pm_f_4@@0))) o2_4@@14 f_20@@14) (= (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@1) o2_4@@14 f_20@@14) (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@14 f_20@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@0) o2_4@@14 f_20@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3707_11446 pm_f_4@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3647) (ExhaleHeap@@1 T@PolymorphicMapType_3647) (Mask@@2 T@PolymorphicMapType_3668) (pm_f_4@@1 T@Field_7144_7145) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7144_7145 Mask@@2 null pm_f_4@@1) (IsWandField_7144_14747 pm_f_4@@1)) (and (and (and (and (and (and (and (forall ((o2_4@@15 T@Ref) (f_20@@15 T@Field_3707_53) ) (!  (=> (select (|PolymorphicMapType_4196_3707_53#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@2) null (WandMaskField_7144 pm_f_4@@1))) o2_4@@15 f_20@@15) (= (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@2) o2_4@@15 f_20@@15) (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@15 f_20@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@15 f_20@@15))
)) (forall ((o2_4@@16 T@Ref) (f_20@@16 T@Field_3720_3721) ) (!  (=> (select (|PolymorphicMapType_4196_3707_3721#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@2) null (WandMaskField_7144 pm_f_4@@1))) o2_4@@16 f_20@@16) (= (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@2) o2_4@@16 f_20@@16) (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@16 f_20@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@16 f_20@@16))
))) (forall ((o2_4@@17 T@Ref) (f_20@@17 T@Field_3707_7145) ) (!  (=> (select (|PolymorphicMapType_4196_3707_7145#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@2) null (WandMaskField_7144 pm_f_4@@1))) o2_4@@17 f_20@@17) (= (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@2) o2_4@@17 f_20@@17) (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@17 f_20@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@17 f_20@@17))
))) (forall ((o2_4@@18 T@Ref) (f_20@@18 T@Field_3707_7161) ) (!  (=> (select (|PolymorphicMapType_4196_3707_12732#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@2) null (WandMaskField_7144 pm_f_4@@1))) o2_4@@18 f_20@@18) (= (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@2) o2_4@@18 f_20@@18) (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@18 f_20@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@18 f_20@@18))
))) (forall ((o2_4@@19 T@Ref) (f_20@@19 T@Field_7144_53) ) (!  (=> (select (|PolymorphicMapType_4196_7144_53#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@2) null (WandMaskField_7144 pm_f_4@@1))) o2_4@@19 f_20@@19) (= (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@2) o2_4@@19 f_20@@19) (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@19 f_20@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@19 f_20@@19))
))) (forall ((o2_4@@20 T@Ref) (f_20@@20 T@Field_7144_3721) ) (!  (=> (select (|PolymorphicMapType_4196_7144_3721#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@2) null (WandMaskField_7144 pm_f_4@@1))) o2_4@@20 f_20@@20) (= (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@2) o2_4@@20 f_20@@20) (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@20 f_20@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@20 f_20@@20))
))) (forall ((o2_4@@21 T@Ref) (f_20@@21 T@Field_7144_7145) ) (!  (=> (select (|PolymorphicMapType_4196_7144_7145#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@2) null (WandMaskField_7144 pm_f_4@@1))) o2_4@@21 f_20@@21) (= (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@2) o2_4@@21 f_20@@21) (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@21 f_20@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@21 f_20@@21))
))) (forall ((o2_4@@22 T@Ref) (f_20@@22 T@Field_7156_7161) ) (!  (=> (select (|PolymorphicMapType_4196_7144_13582#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@2) null (WandMaskField_7144 pm_f_4@@1))) o2_4@@22 f_20@@22) (= (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@2) o2_4@@22 f_20@@22) (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@22 f_20@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@1) o2_4@@22 f_20@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_7144_14747 pm_f_4@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3647) (ExhaleHeap@@2 T@PolymorphicMapType_3647) (Mask@@3 T@PolymorphicMapType_3668) (pm_f_4@@2 T@Field_3707_7145) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3707_7145 Mask@@3 null pm_f_4@@2) (IsWandField_3707_14390 pm_f_4@@2)) (and (and (and (and (and (and (and (forall ((o2_4@@23 T@Ref) (f_20@@23 T@Field_3707_53) ) (!  (=> (select (|PolymorphicMapType_4196_3707_53#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@3) null (WandMaskField_3707 pm_f_4@@2))) o2_4@@23 f_20@@23) (= (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@3) o2_4@@23 f_20@@23) (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@23 f_20@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@23 f_20@@23))
)) (forall ((o2_4@@24 T@Ref) (f_20@@24 T@Field_3720_3721) ) (!  (=> (select (|PolymorphicMapType_4196_3707_3721#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@3) null (WandMaskField_3707 pm_f_4@@2))) o2_4@@24 f_20@@24) (= (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@3) o2_4@@24 f_20@@24) (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@24 f_20@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@24 f_20@@24))
))) (forall ((o2_4@@25 T@Ref) (f_20@@25 T@Field_3707_7145) ) (!  (=> (select (|PolymorphicMapType_4196_3707_7145#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@3) null (WandMaskField_3707 pm_f_4@@2))) o2_4@@25 f_20@@25) (= (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@3) o2_4@@25 f_20@@25) (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@25 f_20@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@25 f_20@@25))
))) (forall ((o2_4@@26 T@Ref) (f_20@@26 T@Field_3707_7161) ) (!  (=> (select (|PolymorphicMapType_4196_3707_12732#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@3) null (WandMaskField_3707 pm_f_4@@2))) o2_4@@26 f_20@@26) (= (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@3) o2_4@@26 f_20@@26) (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@26 f_20@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@26 f_20@@26))
))) (forall ((o2_4@@27 T@Ref) (f_20@@27 T@Field_7144_53) ) (!  (=> (select (|PolymorphicMapType_4196_7144_53#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@3) null (WandMaskField_3707 pm_f_4@@2))) o2_4@@27 f_20@@27) (= (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@3) o2_4@@27 f_20@@27) (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@27 f_20@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@27 f_20@@27))
))) (forall ((o2_4@@28 T@Ref) (f_20@@28 T@Field_7144_3721) ) (!  (=> (select (|PolymorphicMapType_4196_7144_3721#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@3) null (WandMaskField_3707 pm_f_4@@2))) o2_4@@28 f_20@@28) (= (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@3) o2_4@@28 f_20@@28) (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@28 f_20@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@28 f_20@@28))
))) (forall ((o2_4@@29 T@Ref) (f_20@@29 T@Field_7144_7145) ) (!  (=> (select (|PolymorphicMapType_4196_7144_7145#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@3) null (WandMaskField_3707 pm_f_4@@2))) o2_4@@29 f_20@@29) (= (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@3) o2_4@@29 f_20@@29) (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@29 f_20@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@29 f_20@@29))
))) (forall ((o2_4@@30 T@Ref) (f_20@@30 T@Field_7156_7161) ) (!  (=> (select (|PolymorphicMapType_4196_7144_13582#PolymorphicMapType_4196| (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@3) null (WandMaskField_3707 pm_f_4@@2))) o2_4@@30 f_20@@30) (= (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@3) o2_4@@30 f_20@@30) (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@30 f_20@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@2) o2_4@@30 f_20@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3707_14390 pm_f_4@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3647) (Heap1@@0 T@PolymorphicMapType_3647) (Heap2 T@PolymorphicMapType_3647) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7156_7161) ) (!  (not (select (|PolymorphicMapType_4196_7144_13582#PolymorphicMapType_4196| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4196_7144_13582#PolymorphicMapType_4196| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7144_7145) ) (!  (not (select (|PolymorphicMapType_4196_7144_7145#PolymorphicMapType_4196| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4196_7144_7145#PolymorphicMapType_4196| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7144_3721) ) (!  (not (select (|PolymorphicMapType_4196_7144_3721#PolymorphicMapType_4196| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4196_7144_3721#PolymorphicMapType_4196| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7144_53) ) (!  (not (select (|PolymorphicMapType_4196_7144_53#PolymorphicMapType_4196| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4196_7144_53#PolymorphicMapType_4196| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3707_7161) ) (!  (not (select (|PolymorphicMapType_4196_3707_12732#PolymorphicMapType_4196| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4196_3707_12732#PolymorphicMapType_4196| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3707_7145) ) (!  (not (select (|PolymorphicMapType_4196_3707_7145#PolymorphicMapType_4196| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4196_3707_7145#PolymorphicMapType_4196| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3720_3721) ) (!  (not (select (|PolymorphicMapType_4196_3707_3721#PolymorphicMapType_4196| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4196_3707_3721#PolymorphicMapType_4196| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_3707_53) ) (!  (not (select (|PolymorphicMapType_4196_3707_53#PolymorphicMapType_4196| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4196_3707_53#PolymorphicMapType_4196| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (IsPredicateField_2095_2096 test05_1))
(assert (= (getPredWandId_2095_2096 test05_1) 0))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3647) (ExhaleHeap@@3 T@PolymorphicMapType_3647) (Mask@@4 T@PolymorphicMapType_3668) (pm_f_4@@3 T@Field_7144_7145) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7144_7145 Mask@@4 null pm_f_4@@3) (IsPredicateField_2095_2096 pm_f_4@@3)) (= (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@4) null (PredicateMaskField_2095 pm_f_4@@3)) (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@3) null (PredicateMaskField_2095 pm_f_4@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_2095_2096 pm_f_4@@3) (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@3) null (PredicateMaskField_2095 pm_f_4@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3647) (ExhaleHeap@@4 T@PolymorphicMapType_3647) (Mask@@5 T@PolymorphicMapType_3668) (pm_f_4@@4 T@Field_3707_7145) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3707_7145 Mask@@5 null pm_f_4@@4) (IsPredicateField_3707_11446 pm_f_4@@4)) (= (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@5) null (PredicateMaskField_3707 pm_f_4@@4)) (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@4) null (PredicateMaskField_3707 pm_f_4@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3707_11446 pm_f_4@@4) (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@4) null (PredicateMaskField_3707 pm_f_4@@4)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3647) (ExhaleHeap@@5 T@PolymorphicMapType_3647) (Mask@@6 T@PolymorphicMapType_3668) (pm_f_4@@5 T@Field_7144_7145) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7144_7145 Mask@@6 null pm_f_4@@5) (IsWandField_7144_14747 pm_f_4@@5)) (= (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@6) null (WandMaskField_7144 pm_f_4@@5)) (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@5) null (WandMaskField_7144 pm_f_4@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (IsWandField_7144_14747 pm_f_4@@5) (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@5) null (WandMaskField_7144 pm_f_4@@5)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3647) (ExhaleHeap@@6 T@PolymorphicMapType_3647) (Mask@@7 T@PolymorphicMapType_3668) (pm_f_4@@6 T@Field_3707_7145) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3707_7145 Mask@@7 null pm_f_4@@6) (IsWandField_3707_14390 pm_f_4@@6)) (= (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@7) null (WandMaskField_3707 pm_f_4@@6)) (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@6) null (WandMaskField_3707 pm_f_4@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (IsWandField_3707_14390 pm_f_4@@6) (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@6) null (WandMaskField_3707 pm_f_4@@6)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3647) (ExhaleHeap@@7 T@PolymorphicMapType_3647) (Mask@@8 T@PolymorphicMapType_3668) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@8) o_13 $allocated) (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap@@7) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap@@7) o_13 $allocated))
)))
(assert (forall ((p T@Field_7144_7145) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7144_7144 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7144_7144 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3707_7145) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3707_3707 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3707_3707 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3647) (ExhaleHeap@@8 T@PolymorphicMapType_3647) (Mask@@9 T@PolymorphicMapType_3668) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@9 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3668) (o_2@@7 T@Ref) (f_4@@7 T@Field_7156_7161) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_7144_20502 f_4@@7))) (not (IsWandField_7144_20518 f_4@@7))) (<= (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3668) (o_2@@8 T@Ref) (f_4@@8 T@Field_7144_7145) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2095_2096 f_4@@8))) (not (IsWandField_7144_14747 f_4@@8))) (<= (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3668) (o_2@@9 T@Ref) (f_4@@9 T@Field_7144_3721) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_7144_3721 f_4@@9))) (not (IsWandField_7144_3721 f_4@@9))) (<= (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3668) (o_2@@10 T@Ref) (f_4@@10 T@Field_7144_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7144_53 f_4@@10))) (not (IsWandField_7144_53 f_4@@10))) (<= (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3668) (o_2@@11 T@Ref) (f_4@@11 T@Field_3707_7161) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3707_19839 f_4@@11))) (not (IsWandField_3707_19855 f_4@@11))) (<= (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3668) (o_2@@12 T@Ref) (f_4@@12 T@Field_3707_7145) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3707_11446 f_4@@12))) (not (IsWandField_3707_14390 f_4@@12))) (<= (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3668) (o_2@@13 T@Ref) (f_4@@13 T@Field_3720_3721) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3707_3721 f_4@@13))) (not (IsWandField_3707_3721 f_4@@13))) (<= (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3668) (o_2@@14 T@Ref) (f_4@@14 T@Field_3707_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3707_53 f_4@@14))) (not (IsWandField_3707_53 f_4@@14))) (<= (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_3668) (o_2@@15 T@Ref) (f_4@@15 T@Field_7156_7161) ) (! (= (HasDirectPerm_7144_11158 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7144_11158 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_3668) (o_2@@16 T@Ref) (f_4@@16 T@Field_7144_7145) ) (! (= (HasDirectPerm_7144_7145 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7144_7145 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_3668) (o_2@@17 T@Ref) (f_4@@17 T@Field_7144_3721) ) (! (= (HasDirectPerm_7144_3721 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7144_3721 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_3668) (o_2@@18 T@Ref) (f_4@@18 T@Field_7144_53) ) (! (= (HasDirectPerm_7144_53 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7144_53 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_3668) (o_2@@19 T@Ref) (f_4@@19 T@Field_3707_7161) ) (! (= (HasDirectPerm_3707_10201 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3707_10201 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_3668) (o_2@@20 T@Ref) (f_4@@20 T@Field_3707_7145) ) (! (= (HasDirectPerm_3707_7145 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3707_7145 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_3668) (o_2@@21 T@Ref) (f_4@@21 T@Field_3720_3721) ) (! (= (HasDirectPerm_3707_3721 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3707_3721 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_3668) (o_2@@22 T@Ref) (f_4@@22 T@Field_3707_53) ) (! (= (HasDirectPerm_3707_53 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3707_53 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3647) (ExhaleHeap@@9 T@PolymorphicMapType_3647) (Mask@@26 T@PolymorphicMapType_3668) (o_13@@0 T@Ref) (f_20@@31 T@Field_7156_7161) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_7144_11158 Mask@@26 o_13@@0 f_20@@31) (= (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@10) o_13@@0 f_20@@31) (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@9) o_13@@0 f_20@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| ExhaleHeap@@9) o_13@@0 f_20@@31))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3647) (ExhaleHeap@@10 T@PolymorphicMapType_3647) (Mask@@27 T@PolymorphicMapType_3668) (o_13@@1 T@Ref) (f_20@@32 T@Field_7144_7145) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_7144_7145 Mask@@27 o_13@@1 f_20@@32) (= (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@11) o_13@@1 f_20@@32) (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| ExhaleHeap@@10) o_13@@1 f_20@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| ExhaleHeap@@10) o_13@@1 f_20@@32))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3647) (ExhaleHeap@@11 T@PolymorphicMapType_3647) (Mask@@28 T@PolymorphicMapType_3668) (o_13@@2 T@Ref) (f_20@@33 T@Field_7144_3721) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_7144_3721 Mask@@28 o_13@@2 f_20@@33) (= (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@12) o_13@@2 f_20@@33) (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| ExhaleHeap@@11) o_13@@2 f_20@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| ExhaleHeap@@11) o_13@@2 f_20@@33))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3647) (ExhaleHeap@@12 T@PolymorphicMapType_3647) (Mask@@29 T@PolymorphicMapType_3668) (o_13@@3 T@Ref) (f_20@@34 T@Field_7144_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_7144_53 Mask@@29 o_13@@3 f_20@@34) (= (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@13) o_13@@3 f_20@@34) (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| ExhaleHeap@@12) o_13@@3 f_20@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| ExhaleHeap@@12) o_13@@3 f_20@@34))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3647) (ExhaleHeap@@13 T@PolymorphicMapType_3647) (Mask@@30 T@PolymorphicMapType_3668) (o_13@@4 T@Ref) (f_20@@35 T@Field_3707_7161) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_3707_10201 Mask@@30 o_13@@4 f_20@@35) (= (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@14) o_13@@4 f_20@@35) (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@13) o_13@@4 f_20@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| ExhaleHeap@@13) o_13@@4 f_20@@35))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3647) (ExhaleHeap@@14 T@PolymorphicMapType_3647) (Mask@@31 T@PolymorphicMapType_3668) (o_13@@5 T@Ref) (f_20@@36 T@Field_3707_7145) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_3707_7145 Mask@@31 o_13@@5 f_20@@36) (= (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@15) o_13@@5 f_20@@36) (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| ExhaleHeap@@14) o_13@@5 f_20@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| ExhaleHeap@@14) o_13@@5 f_20@@36))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3647) (ExhaleHeap@@15 T@PolymorphicMapType_3647) (Mask@@32 T@PolymorphicMapType_3668) (o_13@@6 T@Ref) (f_20@@37 T@Field_3720_3721) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_3707_3721 Mask@@32 o_13@@6 f_20@@37) (= (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@16) o_13@@6 f_20@@37) (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| ExhaleHeap@@15) o_13@@6 f_20@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| ExhaleHeap@@15) o_13@@6 f_20@@37))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3647) (ExhaleHeap@@16 T@PolymorphicMapType_3647) (Mask@@33 T@PolymorphicMapType_3668) (o_13@@7 T@Ref) (f_20@@38 T@Field_3707_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_3707_53 Mask@@33 o_13@@7 f_20@@38) (= (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@17) o_13@@7 f_20@@38) (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap@@16) o_13@@7 f_20@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| ExhaleHeap@@16) o_13@@7 f_20@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_7156_7161) ) (! (= (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_7144_7145) ) (! (= (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_7144_3721) ) (! (= (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_7144_53) ) (! (= (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_3707_7161) ) (! (= (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_3707_7145) ) (! (= (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3720_3721) ) (! (= (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_3707_53) ) (! (= (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3668) (SummandMask1 T@PolymorphicMapType_3668) (SummandMask2 T@PolymorphicMapType_3668) (o_2@@31 T@Ref) (f_4@@31 T@Field_7156_7161) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3668_7144_18664#PolymorphicMapType_3668| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3668) (SummandMask1@@0 T@PolymorphicMapType_3668) (SummandMask2@@0 T@PolymorphicMapType_3668) (o_2@@32 T@Ref) (f_4@@32 T@Field_7144_7145) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3668_7144_7145#PolymorphicMapType_3668| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3668) (SummandMask1@@1 T@PolymorphicMapType_3668) (SummandMask2@@1 T@PolymorphicMapType_3668) (o_2@@33 T@Ref) (f_4@@33 T@Field_7144_3721) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3668_7144_3721#PolymorphicMapType_3668| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3668) (SummandMask1@@2 T@PolymorphicMapType_3668) (SummandMask2@@2 T@PolymorphicMapType_3668) (o_2@@34 T@Ref) (f_4@@34 T@Field_7144_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3668_7144_53#PolymorphicMapType_3668| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3668) (SummandMask1@@3 T@PolymorphicMapType_3668) (SummandMask2@@3 T@PolymorphicMapType_3668) (o_2@@35 T@Ref) (f_4@@35 T@Field_3707_7161) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3668_3707_18318#PolymorphicMapType_3668| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_3668) (SummandMask1@@4 T@PolymorphicMapType_3668) (SummandMask2@@4 T@PolymorphicMapType_3668) (o_2@@36 T@Ref) (f_4@@36 T@Field_3707_7145) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3668_3707_7145#PolymorphicMapType_3668| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_3668) (SummandMask1@@5 T@PolymorphicMapType_3668) (SummandMask2@@5 T@PolymorphicMapType_3668) (o_2@@37 T@Ref) (f_4@@37 T@Field_3720_3721) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3668_3707_3721#PolymorphicMapType_3668| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_3668) (SummandMask1@@6 T@PolymorphicMapType_3668) (SummandMask2@@6 T@PolymorphicMapType_3668) (o_2@@38 T@Ref) (f_4@@38 T@Field_3707_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3668_3707_53#PolymorphicMapType_3668| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((i_1 Int) ) (! (forall ((i$2 Int) ) (! (boo i_1 i$2)
 :qid |stdinbpl.214:11|
 :skolemid |26|
 :pattern ( (boo i_1 i$2))
))
 :qid |stdinbpl.212:14|
 :skolemid |27|
)))
(assert (forall ((i Int) ) (! (forall ((i$0 Int) ) (! (boo i i$0)
 :qid |stdinbpl.205:11|
 :skolemid |23|
 :pattern ( (boo i i$0))
))
 :qid |stdinbpl.203:15|
 :skolemid |24|
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3647) ) (! (|test05#everUsed_2095| test05_1)
 :qid |stdinbpl.233:15|
 :skolemid |28|
 :pattern ( (|test05#trigger_2095| Heap@@18 test05_1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3647) (o_12 T@Ref) (f_21 T@Field_7156_7161) (v T@PolymorphicMapType_4196) ) (! (succHeap Heap@@19 (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@19) (store (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@19) o_12 f_21 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@19) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@19) (store (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@19) o_12 f_21 v)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3647) (o_12@@0 T@Ref) (f_21@@0 T@Field_7144_7145) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@20) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@20) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@20) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@20) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@20) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@20) (store (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@20) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@20) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@20) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@20) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@20) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@20) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@20) (store (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@20) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3647) (o_12@@1 T@Ref) (f_21@@1 T@Field_7144_3721) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@21) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@21) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@21) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@21) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@21) (store (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@21) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@21) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@21) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@21) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@21) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@21) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@21) (store (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@21) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@21) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3647) (o_12@@2 T@Ref) (f_21@@2 T@Field_7144_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@22) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@22) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@22) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@22) (store (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@22) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@22) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@22) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@22) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@22) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@22) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@22) (store (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@22) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@22) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@22) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3647) (o_12@@3 T@Ref) (f_21@@3 T@Field_3707_7161) (v@@3 T@PolymorphicMapType_4196) ) (! (succHeap Heap@@23 (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@23) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@23) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@23) (store (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@23) o_12@@3 f_21@@3 v@@3) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@23) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@23) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@23) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@23) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@23) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@23) (store (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@23) o_12@@3 f_21@@3 v@@3) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@23) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@23) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@23) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3647) (o_12@@4 T@Ref) (f_21@@4 T@Field_3707_7145) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@24) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@24) (store (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@24) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@24) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@24) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@24) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@24) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@24) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@24) (store (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@24) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@24) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@24) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@24) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@24) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3647) (o_12@@5 T@Ref) (f_21@@5 T@Field_3720_3721) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@25) (store (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@25) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@25) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@25) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@25) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@25) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@25) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3647 (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@25) (store (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@25) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@25) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@25) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@25) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@25) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@25) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3647) (o_12@@6 T@Ref) (f_21@@6 T@Field_3707_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_3647 (store (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@26) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3647 (store (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@26) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_3707_7145#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_3707_10243#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_7144_53#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_7144_3721#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_7144_7145#PolymorphicMapType_3647| Heap@@26) (|PolymorphicMapType_3647_7144_11200#PolymorphicMapType_3647| Heap@@26)))
)))
(assert (= (PredicateMaskField_2095 test05_1) |test05#sm|))
(assert (forall ((o_12@@7 T@Ref) (f_19 T@Field_3720_3721) (Heap@@27 T@PolymorphicMapType_3647) ) (!  (=> (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@27) o_12@@7 $allocated) (select (|PolymorphicMapType_3647_1967_53#PolymorphicMapType_3647| Heap@@27) (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@27) o_12@@7 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3647_1970_1971#PolymorphicMapType_3647| Heap@@27) o_12@@7 f_19))
)))
(assert (forall ((p@@2 T@Field_7144_7145) (v_1@@1 T@FrameType) (q T@Field_7144_7145) (w@@1 T@FrameType) (r T@Field_7144_7145) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7144_7144 p@@2 v_1@@1 q w@@1) (InsidePredicate_7144_7144 q w@@1 r u)) (InsidePredicate_7144_7144 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7144_7144 p@@2 v_1@@1 q w@@1) (InsidePredicate_7144_7144 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_7144_7145) (v_1@@2 T@FrameType) (q@@0 T@Field_7144_7145) (w@@2 T@FrameType) (r@@0 T@Field_3707_7145) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_7144_7144 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7144_3707 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_7144_3707 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7144_7144 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7144_3707 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_7144_7145) (v_1@@3 T@FrameType) (q@@1 T@Field_3707_7145) (w@@3 T@FrameType) (r@@1 T@Field_7144_7145) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_7144_3707 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3707_7144 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_7144_7144 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7144_3707 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3707_7144 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_7144_7145) (v_1@@4 T@FrameType) (q@@2 T@Field_3707_7145) (w@@4 T@FrameType) (r@@2 T@Field_3707_7145) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_7144_3707 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3707_3707 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_7144_3707 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7144_3707 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3707_3707 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3707_7145) (v_1@@5 T@FrameType) (q@@3 T@Field_7144_7145) (w@@5 T@FrameType) (r@@3 T@Field_7144_7145) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3707_7144 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7144_7144 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3707_7144 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3707_7144 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7144_7144 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3707_7145) (v_1@@6 T@FrameType) (q@@4 T@Field_7144_7145) (w@@6 T@FrameType) (r@@4 T@Field_3707_7145) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3707_7144 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7144_3707 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3707_3707 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3707_7144 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7144_3707 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3707_7145) (v_1@@7 T@FrameType) (q@@5 T@Field_3707_7145) (w@@7 T@FrameType) (r@@5 T@Field_7144_7145) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3707_3707 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3707_7144 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3707_7144 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3707_3707 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3707_7144 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3707_7145) (v_1@@8 T@FrameType) (q@@6 T@Field_3707_7145) (w@@8 T@FrameType) (r@@6 T@Field_3707_7145) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3707_3707 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3707_3707 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3707_3707 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3707_3707 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3707_3707 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((i@@0 Int) ) (! (foo_2 i@@0 i@@0)
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (foo_2 i@@0 i@@0))
)))
(assert (forall ((i$1 Int) ) (! (boo 1 i$1)
 :qid |stdinbpl.209:15|
 :skolemid |25|
 :pattern ( (boo 1 i$1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@28 () T@PolymorphicMapType_3647)
(declare-fun i@@1 () Int)
(declare-fun j () Int)
(declare-fun m_18 () Int)
(set-info :boogie-vc-id test_1)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (state Heap@@28 ZeroMask) (=> (and AssumePermUpperBound (= (- i@@1 1) j)) (=> (and (and (and (state Heap@@28 ZeroMask) (state Heap@@28 ZeroMask)) (and (< 0 m_18) (state Heap@@28 ZeroMask))) (and (and (state Heap@@28 ZeroMask) (<= m_18 j)) (and (state Heap@@28 ZeroMask) (state Heap@@28 ZeroMask)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< 0 m_18)) (=> (< 0 m_18) (=> (= (ControlFlow 0 2) (- 0 1)) (<= m_18 (- i@@1 1))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
