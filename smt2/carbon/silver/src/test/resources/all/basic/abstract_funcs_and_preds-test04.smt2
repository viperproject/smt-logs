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
(declare-sort T@Field_7641_53 0)
(declare-sort T@Field_7654_7655 0)
(declare-sort T@Field_3910_14163 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3910_14179 0)
(declare-sort T@Field_14162_3911 0)
(declare-sort T@Field_14162_53 0)
(declare-sort T@Field_14162_14163 0)
(declare-sort T@Field_14174_14179 0)
(declare-datatypes ((T@PolymorphicMapType_7602 0)) (((PolymorphicMapType_7602 (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| (Array T@Ref T@Field_7654_7655 Real)) (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| (Array T@Ref T@Field_14162_14163 Real)) (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| (Array T@Ref T@Field_3910_14163 Real)) (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| (Array T@Ref T@Field_7641_53 Real)) (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| (Array T@Ref T@Field_3910_14179 Real)) (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| (Array T@Ref T@Field_14162_3911 Real)) (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| (Array T@Ref T@Field_14162_53 Real)) (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| (Array T@Ref T@Field_14174_14179 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8130 0)) (((PolymorphicMapType_8130 (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| (Array T@Ref T@Field_7641_53 Bool)) (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| (Array T@Ref T@Field_7654_7655 Bool)) (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| (Array T@Ref T@Field_3910_14163 Bool)) (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| (Array T@Ref T@Field_3910_14179 Bool)) (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| (Array T@Ref T@Field_14162_53 Bool)) (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| (Array T@Ref T@Field_14162_3911 Bool)) (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| (Array T@Ref T@Field_14162_14163 Bool)) (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| (Array T@Ref T@Field_14174_14179 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7581 0)) (((PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| (Array T@Ref T@Field_7641_53 Bool)) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| (Array T@Ref T@Field_7654_7655 T@Ref)) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| (Array T@Ref T@Field_3910_14163 T@FrameType)) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| (Array T@Ref T@Field_3910_14179 T@PolymorphicMapType_8130)) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| (Array T@Ref T@Field_14162_3911 T@Ref)) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| (Array T@Ref T@Field_14162_53 Bool)) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| (Array T@Ref T@Field_14162_14163 T@FrameType)) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| (Array T@Ref T@Field_14174_14179 T@PolymorphicMapType_8130)) ) ) ))
(declare-fun $allocated () T@Field_7641_53)
(declare-fun f_7 () T@Field_7654_7655)
(declare-fun succHeap (T@PolymorphicMapType_7581 T@PolymorphicMapType_7581) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7581 T@PolymorphicMapType_7581) Bool)
(declare-fun state (T@PolymorphicMapType_7581 T@PolymorphicMapType_7602) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7602) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7581 T@PolymorphicMapType_7581 T@PolymorphicMapType_7602) Bool)
(declare-fun IsPredicateField_3984_3985 (T@Field_14162_14163) Bool)
(declare-fun HasDirectPerm_14162_14163 (T@PolymorphicMapType_7602 T@Ref T@Field_14162_14163) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3984 (T@Field_14162_14163) T@Field_14174_14179)
(declare-fun IsPredicateField_3910_24653 (T@Field_3910_14163) Bool)
(declare-fun HasDirectPerm_3910_14163 (T@PolymorphicMapType_7602 T@Ref T@Field_3910_14163) Bool)
(declare-fun PredicateMaskField_3910 (T@Field_3910_14163) T@Field_3910_14179)
(declare-fun IsWandField_14162_27954 (T@Field_14162_14163) Bool)
(declare-fun WandMaskField_14162 (T@Field_14162_14163) T@Field_14174_14179)
(declare-fun IsWandField_3910_27597 (T@Field_3910_14163) Bool)
(declare-fun WandMaskField_3910 (T@Field_3910_14163) T@Field_3910_14179)
(declare-fun ZeroPMask () T@PolymorphicMapType_8130)
(declare-fun file (Int) T@Field_14162_14163)
(declare-fun |fun01'| (T@PolymorphicMapType_7581 T@Ref) Int)
(declare-fun dummyFunction_1375 (Int) Bool)
(declare-fun |fun01#triggerStateless| (T@Ref) Int)
(declare-fun |fun02'| (T@PolymorphicMapType_7581 T@Ref) Bool)
(declare-fun dummyFunction_1613 (Bool) Bool)
(declare-fun |fun02#triggerStateless| (T@Ref) Bool)
(declare-fun |fun03'| (T@PolymorphicMapType_7581 T@Ref) Bool)
(declare-fun |fun03#triggerStateless| (T@Ref) Bool)
(declare-fun |file#trigger_3984| (T@PolymorphicMapType_7581 T@Field_14162_14163) Bool)
(declare-fun |file#everUsed_3984| (T@Field_14162_14163) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |fun01#trigger| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fun01 (T@PolymorphicMapType_7581 T@Ref) Int)
(declare-fun |file#sm| (Int) T@Field_14174_14179)
(declare-fun dummyHeap () T@PolymorphicMapType_7581)
(declare-fun ZeroMask () T@PolymorphicMapType_7602)
(declare-fun InsidePredicate_14162_14162 (T@Field_14162_14163 T@FrameType T@Field_14162_14163 T@FrameType) Bool)
(declare-fun InsidePredicate_7641_7641 (T@Field_3910_14163 T@FrameType T@Field_3910_14163 T@FrameType) Bool)
(declare-fun IsPredicateField_3910_3911 (T@Field_7654_7655) Bool)
(declare-fun IsWandField_3910_3911 (T@Field_7654_7655) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3984_33665 (T@Field_14174_14179) Bool)
(declare-fun IsWandField_3984_33681 (T@Field_14174_14179) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3984_53 (T@Field_14162_53) Bool)
(declare-fun IsWandField_3984_53 (T@Field_14162_53) Bool)
(declare-fun IsPredicateField_3984_3911 (T@Field_14162_3911) Bool)
(declare-fun IsWandField_3984_3911 (T@Field_14162_3911) Bool)
(declare-fun IsPredicateField_3910_33002 (T@Field_3910_14179) Bool)
(declare-fun IsWandField_3910_33018 (T@Field_3910_14179) Bool)
(declare-fun IsPredicateField_3910_53 (T@Field_7641_53) Bool)
(declare-fun IsWandField_3910_53 (T@Field_7641_53) Bool)
(declare-fun HasDirectPerm_14162_24365 (T@PolymorphicMapType_7602 T@Ref T@Field_14174_14179) Bool)
(declare-fun HasDirectPerm_14162_53 (T@PolymorphicMapType_7602 T@Ref T@Field_14162_53) Bool)
(declare-fun HasDirectPerm_14162_3911 (T@PolymorphicMapType_7602 T@Ref T@Field_14162_3911) Bool)
(declare-fun HasDirectPerm_3910_23408 (T@PolymorphicMapType_7602 T@Ref T@Field_3910_14179) Bool)
(declare-fun HasDirectPerm_3910_53 (T@PolymorphicMapType_7602 T@Ref T@Field_7641_53) Bool)
(declare-fun HasDirectPerm_3910_3911 (T@PolymorphicMapType_7602 T@Ref T@Field_7654_7655) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7602 T@PolymorphicMapType_7602 T@PolymorphicMapType_7602) Bool)
(declare-fun |fun02#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_3911 (T@Ref) T@FrameType)
(declare-fun |fun03#frame| (T@FrameType T@Ref) Bool)
(declare-fun |fun02#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |fun03#trigger| (T@FrameType T@Ref) Bool)
(declare-fun fun02 (T@PolymorphicMapType_7581 T@Ref) Bool)
(declare-fun fun03 (T@PolymorphicMapType_7581 T@Ref) Bool)
(declare-fun getPredWandId_3984_3985 (T@Field_14162_14163) Int)
(declare-fun |fun01#frame| (T@FrameType T@Ref) Int)
(declare-fun InsidePredicate_14162_7641 (T@Field_14162_14163 T@FrameType T@Field_3910_14163 T@FrameType) Bool)
(declare-fun InsidePredicate_7641_14162 (T@Field_3910_14163 T@FrameType T@Field_14162_14163 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7581) (Heap1 T@PolymorphicMapType_7581) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7581) (Mask T@PolymorphicMapType_7602) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7581) (ExhaleHeap T@PolymorphicMapType_7581) (Mask@@0 T@PolymorphicMapType_7602) (pm_f T@Field_14162_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_14162_14163 Mask@@0 null pm_f) (IsPredicateField_3984_3985 pm_f)) (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_7641_53) ) (!  (=> (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@0) o2 f_2) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_7654_7655) ) (!  (=> (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@0) o2@@0 f_2@@0) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3910_14163) ) (!  (=> (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@0) o2@@1 f_2@@1) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3910_14179) ) (!  (=> (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@0) o2@@2 f_2@@2) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_14162_53) ) (!  (=> (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@0) o2@@3 f_2@@3) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_14162_3911) ) (!  (=> (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@0) o2@@4 f_2@@4) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_14162_14163) ) (!  (=> (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@0) o2@@5 f_2@@5) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) o2@@6 f_2@@6) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3984_3985 pm_f))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7581) (ExhaleHeap@@0 T@PolymorphicMapType_7581) (Mask@@1 T@PolymorphicMapType_7602) (pm_f@@0 T@Field_3910_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3910_14163 Mask@@1 null pm_f@@0) (IsPredicateField_3910_24653 pm_f@@0)) (and (and (and (and (and (and (and (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_7641_53) ) (!  (=> (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@1) o2@@7 f_2@@7) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@7 f_2@@7))
)) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_7654_7655) ) (!  (=> (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@1) o2@@8 f_2@@8) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_3910_14163) ) (!  (=> (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@1) o2@@9 f_2@@9) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_3910_14179) ) (!  (=> (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) o2@@10 f_2@@10) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_14162_53) ) (!  (=> (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@1) o2@@11 f_2@@11) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_14162_3911) ) (!  (=> (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@1) o2@@12 f_2@@12) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_14162_14163) ) (!  (=> (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@1) o2@@13 f_2@@13) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@1) o2@@14 f_2@@14) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@14 f_2@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3910_24653 pm_f@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7581) (ExhaleHeap@@1 T@PolymorphicMapType_7581) (Mask@@2 T@PolymorphicMapType_7602) (pm_f@@1 T@Field_14162_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_14162_14163 Mask@@2 null pm_f@@1) (IsWandField_14162_27954 pm_f@@1)) (and (and (and (and (and (and (and (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_7641_53) ) (!  (=> (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@2) o2@@15 f_2@@15) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@15 f_2@@15)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@15 f_2@@15))
)) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_7654_7655) ) (!  (=> (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@2) o2@@16 f_2@@16) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@16 f_2@@16)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_3910_14163) ) (!  (=> (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@2) o2@@17 f_2@@17) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@17 f_2@@17)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_3910_14179) ) (!  (=> (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@2) o2@@18 f_2@@18) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@18 f_2@@18)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_14162_53) ) (!  (=> (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@2) o2@@19 f_2@@19) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_14162_3911) ) (!  (=> (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@2) o2@@20 f_2@@20) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_14162_14163) ) (!  (=> (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@2) o2@@21 f_2@@21) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) o2@@22 f_2@@22) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_14162_27954 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7581) (ExhaleHeap@@2 T@PolymorphicMapType_7581) (Mask@@3 T@PolymorphicMapType_7602) (pm_f@@2 T@Field_3910_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3910_14163 Mask@@3 null pm_f@@2) (IsWandField_3910_27597 pm_f@@2)) (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_7641_53) ) (!  (=> (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@3) o2@@23 f_2@@23) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_7654_7655) ) (!  (=> (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@3) o2@@24 f_2@@24) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_3910_14163) ) (!  (=> (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@3) o2@@25 f_2@@25) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_3910_14179) ) (!  (=> (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) o2@@26 f_2@@26) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_14162_53) ) (!  (=> (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@3) o2@@27 f_2@@27) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_14162_3911) ) (!  (=> (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@3) o2@@28 f_2@@28) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_14162_14163) ) (!  (=> (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@3) o2@@29 f_2@@29) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@3) o2@@30 f_2@@30) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@30 f_2@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3910_27597 pm_f@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7581) (Heap1@@0 T@PolymorphicMapType_7581) (Heap2 T@PolymorphicMapType_7581) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14174_14179) ) (!  (not (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14162_14163) ) (!  (not (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14162_3911) ) (!  (not (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14162_53) ) (!  (not (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3910_14179) ) (!  (not (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3910_14163) ) (!  (not (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7654_7655) ) (!  (not (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7641_53) ) (!  (not (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((id_2 Int) ) (! (IsPredicateField_3984_3985 (file id_2))
 :qid |stdinbpl.416:15|
 :skolemid |36|
 :pattern ( (file id_2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7581) (x T@Ref) ) (! (dummyFunction_1375 (|fun01#triggerStateless| x))
 :qid |stdinbpl.200:15|
 :skolemid |23|
 :pattern ( (|fun01'| Heap@@4 x))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7581) (x@@0 T@Ref) ) (! (dummyFunction_1613 (|fun02#triggerStateless| x@@0))
 :qid |stdinbpl.252:15|
 :skolemid |27|
 :pattern ( (|fun02'| Heap@@5 x@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7581) (x@@1 T@Ref) ) (! (dummyFunction_1613 (|fun03#triggerStateless| x@@1))
 :qid |stdinbpl.318:15|
 :skolemid |31|
 :pattern ( (|fun03'| Heap@@6 x@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7581) (id_2@@0 Int) ) (! (|file#everUsed_3984| (file id_2@@0))
 :qid |stdinbpl.435:15|
 :skolemid |40|
 :pattern ( (|file#trigger_3984| Heap@@7 (file id_2@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7581) (Mask@@4 T@PolymorphicMapType_7602) (x@@2 T@Ref) ) (!  (=> (and (state Heap@@8 Mask@@4) (or (< AssumeFunctionsAbove 1) (|fun01#trigger| EmptyFrame x@@2))) (< 0 (|fun01'| Heap@@8 x@@2)))
 :qid |stdinbpl.213:15|
 :skolemid |25|
 :pattern ( (state Heap@@8 Mask@@4) (|fun01'| Heap@@8 x@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7581) (x@@3 T@Ref) ) (!  (and (= (fun01 Heap@@9 x@@3) (|fun01'| Heap@@9 x@@3)) (dummyFunction_1375 (|fun01#triggerStateless| x@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |22|
 :pattern ( (fun01 Heap@@9 x@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7581) (ExhaleHeap@@3 T@PolymorphicMapType_7581) (Mask@@5 T@PolymorphicMapType_7602) (pm_f@@3 T@Field_14162_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_14162_14163 Mask@@5 null pm_f@@3) (IsPredicateField_3984_3985 pm_f@@3)) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@10) null (PredicateMaskField_3984 pm_f@@3)) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@3) null (PredicateMaskField_3984 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (IsPredicateField_3984_3985 pm_f@@3) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@3) null (PredicateMaskField_3984 pm_f@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7581) (ExhaleHeap@@4 T@PolymorphicMapType_7581) (Mask@@6 T@PolymorphicMapType_7602) (pm_f@@4 T@Field_3910_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_3910_14163 Mask@@6 null pm_f@@4) (IsPredicateField_3910_24653 pm_f@@4)) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@11) null (PredicateMaskField_3910 pm_f@@4)) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@4) null (PredicateMaskField_3910 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (IsPredicateField_3910_24653 pm_f@@4) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@4) null (PredicateMaskField_3910 pm_f@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7581) (ExhaleHeap@@5 T@PolymorphicMapType_7581) (Mask@@7 T@PolymorphicMapType_7602) (pm_f@@5 T@Field_14162_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_14162_14163 Mask@@7 null pm_f@@5) (IsWandField_14162_27954 pm_f@@5)) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@12) null (WandMaskField_14162 pm_f@@5)) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@5) null (WandMaskField_14162 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@7) (IsWandField_14162_27954 pm_f@@5) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@5) null (WandMaskField_14162 pm_f@@5)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7581) (ExhaleHeap@@6 T@PolymorphicMapType_7581) (Mask@@8 T@PolymorphicMapType_7602) (pm_f@@6 T@Field_3910_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_3910_14163 Mask@@8 null pm_f@@6) (IsWandField_3910_27597 pm_f@@6)) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@13) null (WandMaskField_3910 pm_f@@6)) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@6) null (WandMaskField_3910 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@8) (IsWandField_3910_27597 pm_f@@6) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@6) null (WandMaskField_3910 pm_f@@6)))
)))
(assert (forall ((id_2@@1 Int) (id2 Int) ) (!  (=> (= (file id_2@@1) (file id2)) (= id_2@@1 id2))
 :qid |stdinbpl.426:15|
 :skolemid |38|
 :pattern ( (file id_2@@1) (file id2))
)))
(assert (forall ((id_2@@2 Int) (id2@@0 Int) ) (!  (=> (= (|file#sm| id_2@@2) (|file#sm| id2@@0)) (= id_2@@2 id2@@0))
 :qid |stdinbpl.430:15|
 :skolemid |39|
 :pattern ( (|file#sm| id_2@@2) (|file#sm| id2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7581) (ExhaleHeap@@7 T@PolymorphicMapType_7581) (Mask@@9 T@PolymorphicMapType_7602) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@14) o_1 $allocated) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_14162_14163) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14162_14162 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14162_14162 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3910_14163) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7641_7641 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7641_7641 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3910_3911 f_7)))
(assert  (not (IsWandField_3910_3911 f_7)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7581) (ExhaleHeap@@8 T@PolymorphicMapType_7581) (Mask@@10 T@PolymorphicMapType_7602) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7602) (o_2@@7 T@Ref) (f_4@@7 T@Field_14174_14179) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3984_33665 f_4@@7))) (not (IsWandField_3984_33681 f_4@@7))) (<= (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7602) (o_2@@8 T@Ref) (f_4@@8 T@Field_14162_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3984_53 f_4@@8))) (not (IsWandField_3984_53 f_4@@8))) (<= (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7602) (o_2@@9 T@Ref) (f_4@@9 T@Field_14162_14163) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| Mask@@13) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3984_3985 f_4@@9))) (not (IsWandField_14162_27954 f_4@@9))) (<= (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| Mask@@13) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| Mask@@13) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7602) (o_2@@10 T@Ref) (f_4@@10 T@Field_14162_3911) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| Mask@@14) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3984_3911 f_4@@10))) (not (IsWandField_3984_3911 f_4@@10))) (<= (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| Mask@@14) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| Mask@@14) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7602) (o_2@@11 T@Ref) (f_4@@11 T@Field_3910_14179) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| Mask@@15) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3910_33002 f_4@@11))) (not (IsWandField_3910_33018 f_4@@11))) (<= (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| Mask@@15) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| Mask@@15) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7602) (o_2@@12 T@Ref) (f_4@@12 T@Field_7641_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| Mask@@16) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3910_53 f_4@@12))) (not (IsWandField_3910_53 f_4@@12))) (<= (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| Mask@@16) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| Mask@@16) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7602) (o_2@@13 T@Ref) (f_4@@13 T@Field_3910_14163) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| Mask@@17) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3910_24653 f_4@@13))) (not (IsWandField_3910_27597 f_4@@13))) (<= (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| Mask@@17) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| Mask@@17) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7602) (o_2@@14 T@Ref) (f_4@@14 T@Field_7654_7655) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@@18) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3910_3911 f_4@@14))) (not (IsWandField_3910_3911 f_4@@14))) (<= (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@@18) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@@18) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7602) (o_2@@15 T@Ref) (f_4@@15 T@Field_14174_14179) ) (! (= (HasDirectPerm_14162_24365 Mask@@19 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| Mask@@19) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14162_24365 Mask@@19 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7602) (o_2@@16 T@Ref) (f_4@@16 T@Field_14162_14163) ) (! (= (HasDirectPerm_14162_14163 Mask@@20 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| Mask@@20) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14162_14163 Mask@@20 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7602) (o_2@@17 T@Ref) (f_4@@17 T@Field_14162_53) ) (! (= (HasDirectPerm_14162_53 Mask@@21 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| Mask@@21) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14162_53 Mask@@21 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7602) (o_2@@18 T@Ref) (f_4@@18 T@Field_14162_3911) ) (! (= (HasDirectPerm_14162_3911 Mask@@22 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| Mask@@22) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14162_3911 Mask@@22 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7602) (o_2@@19 T@Ref) (f_4@@19 T@Field_3910_14179) ) (! (= (HasDirectPerm_3910_23408 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3910_23408 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7602) (o_2@@20 T@Ref) (f_4@@20 T@Field_3910_14163) ) (! (= (HasDirectPerm_3910_14163 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3910_14163 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7602) (o_2@@21 T@Ref) (f_4@@21 T@Field_7641_53) ) (! (= (HasDirectPerm_3910_53 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3910_53 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7602) (o_2@@22 T@Ref) (f_4@@22 T@Field_7654_7655) ) (! (= (HasDirectPerm_3910_3911 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3910_3911 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7581) (ExhaleHeap@@9 T@PolymorphicMapType_7581) (Mask@@27 T@PolymorphicMapType_7602) (o_1@@0 T@Ref) (f_2@@31 T@Field_14174_14179) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_14162_24365 Mask@@27 o_1@@0 f_2@@31) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@16) o_1@@0 f_2@@31) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@9) o_1@@0 f_2@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@9) o_1@@0 f_2@@31))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7581) (ExhaleHeap@@10 T@PolymorphicMapType_7581) (Mask@@28 T@PolymorphicMapType_7602) (o_1@@1 T@Ref) (f_2@@32 T@Field_14162_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@28) (=> (HasDirectPerm_14162_14163 Mask@@28 o_1@@1 f_2@@32) (= (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@17) o_1@@1 f_2@@32) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@10) o_1@@1 f_2@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@28) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@10) o_1@@1 f_2@@32))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7581) (ExhaleHeap@@11 T@PolymorphicMapType_7581) (Mask@@29 T@PolymorphicMapType_7602) (o_1@@2 T@Ref) (f_2@@33 T@Field_14162_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@29) (=> (HasDirectPerm_14162_53 Mask@@29 o_1@@2 f_2@@33) (= (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@18) o_1@@2 f_2@@33) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@11) o_1@@2 f_2@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@29) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@11) o_1@@2 f_2@@33))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7581) (ExhaleHeap@@12 T@PolymorphicMapType_7581) (Mask@@30 T@PolymorphicMapType_7602) (o_1@@3 T@Ref) (f_2@@34 T@Field_14162_3911) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@30) (=> (HasDirectPerm_14162_3911 Mask@@30 o_1@@3 f_2@@34) (= (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@19) o_1@@3 f_2@@34) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@12) o_1@@3 f_2@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@30) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@12) o_1@@3 f_2@@34))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7581) (ExhaleHeap@@13 T@PolymorphicMapType_7581) (Mask@@31 T@PolymorphicMapType_7602) (o_1@@4 T@Ref) (f_2@@35 T@Field_3910_14179) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@31) (=> (HasDirectPerm_3910_23408 Mask@@31 o_1@@4 f_2@@35) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@20) o_1@@4 f_2@@35) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@13) o_1@@4 f_2@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@31) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@13) o_1@@4 f_2@@35))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7581) (ExhaleHeap@@14 T@PolymorphicMapType_7581) (Mask@@32 T@PolymorphicMapType_7602) (o_1@@5 T@Ref) (f_2@@36 T@Field_3910_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@32) (=> (HasDirectPerm_3910_14163 Mask@@32 o_1@@5 f_2@@36) (= (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@21) o_1@@5 f_2@@36) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@14) o_1@@5 f_2@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@32) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@14) o_1@@5 f_2@@36))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7581) (ExhaleHeap@@15 T@PolymorphicMapType_7581) (Mask@@33 T@PolymorphicMapType_7602) (o_1@@6 T@Ref) (f_2@@37 T@Field_7641_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@33) (=> (HasDirectPerm_3910_53 Mask@@33 o_1@@6 f_2@@37) (= (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@22) o_1@@6 f_2@@37) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@15) o_1@@6 f_2@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@33) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@15) o_1@@6 f_2@@37))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7581) (ExhaleHeap@@16 T@PolymorphicMapType_7581) (Mask@@34 T@PolymorphicMapType_7602) (o_1@@7 T@Ref) (f_2@@38 T@Field_7654_7655) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@34) (=> (HasDirectPerm_3910_3911 Mask@@34 o_1@@7 f_2@@38) (= (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@23) o_1@@7 f_2@@38) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@16) o_1@@7 f_2@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@34) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@16) o_1@@7 f_2@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_14174_14179) ) (! (= (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_14162_53) ) (! (= (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_14162_14163) ) (! (= (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_14162_3911) ) (! (= (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_3910_14179) ) (! (= (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_7641_53) ) (! (= (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3910_14163) ) (! (= (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_7654_7655) ) (! (= (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7602) (SummandMask1 T@PolymorphicMapType_7602) (SummandMask2 T@PolymorphicMapType_7602) (o_2@@31 T@Ref) (f_4@@31 T@Field_14174_14179) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7602) (SummandMask1@@0 T@PolymorphicMapType_7602) (SummandMask2@@0 T@PolymorphicMapType_7602) (o_2@@32 T@Ref) (f_4@@32 T@Field_14162_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7602) (SummandMask1@@1 T@PolymorphicMapType_7602) (SummandMask2@@1 T@PolymorphicMapType_7602) (o_2@@33 T@Ref) (f_4@@33 T@Field_14162_14163) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7602) (SummandMask1@@2 T@PolymorphicMapType_7602) (SummandMask2@@2 T@PolymorphicMapType_7602) (o_2@@34 T@Ref) (f_4@@34 T@Field_14162_3911) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7602) (SummandMask1@@3 T@PolymorphicMapType_7602) (SummandMask2@@3 T@PolymorphicMapType_7602) (o_2@@35 T@Ref) (f_4@@35 T@Field_3910_14179) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7602) (SummandMask1@@4 T@PolymorphicMapType_7602) (SummandMask2@@4 T@PolymorphicMapType_7602) (o_2@@36 T@Ref) (f_4@@36 T@Field_7641_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7602) (SummandMask1@@5 T@PolymorphicMapType_7602) (SummandMask2@@5 T@PolymorphicMapType_7602) (o_2@@37 T@Ref) (f_4@@37 T@Field_3910_14163) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7602) (SummandMask1@@6 T@PolymorphicMapType_7602) (SummandMask2@@6 T@PolymorphicMapType_7602) (o_2@@38 T@Ref) (f_4@@38 T@Field_7654_7655) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7581) (Mask@@35 T@PolymorphicMapType_7602) (x@@4 T@Ref) ) (!  (=> (state Heap@@24 Mask@@35) (= (|fun02'| Heap@@24 x@@4) (|fun02#frame| (FrameFragment_3911 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@24) x@@4 f_7)) x@@4)))
 :qid |stdinbpl.259:15|
 :skolemid |28|
 :pattern ( (state Heap@@24 Mask@@35) (|fun02'| Heap@@24 x@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7581) (Mask@@36 T@PolymorphicMapType_7602) (x@@5 T@Ref) ) (!  (=> (state Heap@@25 Mask@@36) (= (|fun03'| Heap@@25 x@@5) (|fun03#frame| (FrameFragment_3911 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@25) x@@5 f_7)) x@@5)))
 :qid |stdinbpl.331:15|
 :skolemid |33|
 :pattern ( (state Heap@@25 Mask@@36) (|fun03'| Heap@@25 x@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7581) (Mask@@37 T@PolymorphicMapType_7602) (x@@6 T@Ref) ) (!  (=> (and (state Heap@@26 Mask@@37) (or (< AssumeFunctionsAbove 2) (|fun02#trigger| (FrameFragment_3911 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@26) x@@6 f_7)) x@@6))) (=> (= x@@6 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@26) x@@6 f_7)) (|fun02'| Heap@@26 x@@6)))
 :qid |stdinbpl.265:15|
 :skolemid |29|
 :pattern ( (state Heap@@26 Mask@@37) (|fun02'| Heap@@26 x@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7581) (Mask@@38 T@PolymorphicMapType_7602) (x@@7 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@38) (or (< AssumeFunctionsAbove 0) (|fun03#trigger| (FrameFragment_3911 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@27) x@@7 f_7)) x@@7))) (=> (= x@@7 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@27) x@@7 f_7)) (not (|fun03'| Heap@@27 x@@7))))
 :qid |stdinbpl.337:15|
 :skolemid |34|
 :pattern ( (state Heap@@27 Mask@@38) (|fun03'| Heap@@27 x@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7581) (x@@8 T@Ref) ) (!  (and (= (fun02 Heap@@28 x@@8) (|fun02'| Heap@@28 x@@8)) (dummyFunction_1613 (|fun02#triggerStateless| x@@8)))
 :qid |stdinbpl.248:15|
 :skolemid |26|
 :pattern ( (fun02 Heap@@28 x@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7581) (x@@9 T@Ref) ) (!  (and (= (fun03 Heap@@29 x@@9) (|fun03'| Heap@@29 x@@9)) (dummyFunction_1613 (|fun03#triggerStateless| x@@9)))
 :qid |stdinbpl.314:15|
 :skolemid |30|
 :pattern ( (fun03 Heap@@29 x@@9))
)))
(assert (forall ((id_2@@3 Int) ) (! (= (getPredWandId_3984_3985 (file id_2@@3)) 0)
 :qid |stdinbpl.420:15|
 :skolemid |37|
 :pattern ( (file id_2@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7581) (Mask@@39 T@PolymorphicMapType_7602) (x@@10 T@Ref) ) (!  (=> (state Heap@@30 Mask@@39) (= (|fun01'| Heap@@30 x@@10) (|fun01#frame| EmptyFrame x@@10)))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap@@30 Mask@@39) (|fun01'| Heap@@30 x@@10))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7581) (o T@Ref) (f_3 T@Field_14174_14179) (v T@PolymorphicMapType_8130) ) (! (succHeap Heap@@31 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@31) (store (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@31) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@31) (store (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@31) o f_3 v)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7581) (o@@0 T@Ref) (f_3@@0 T@Field_14162_14163) (v@@0 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@32) (store (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@32) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@32) (store (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@32) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7581) (o@@1 T@Ref) (f_3@@1 T@Field_14162_3911) (v@@1 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@33) (store (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@33) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@33) (store (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@33) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7581) (o@@2 T@Ref) (f_3@@2 T@Field_14162_53) (v@@2 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@34) (store (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@34) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@34) (store (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@34) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7581) (o@@3 T@Ref) (f_3@@3 T@Field_3910_14179) (v@@3 T@PolymorphicMapType_8130) ) (! (succHeap Heap@@35 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@35) (store (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@35) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@35) (store (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@35) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_7581) (o@@4 T@Ref) (f_3@@4 T@Field_3910_14163) (v@@4 T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@36) (store (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@36) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@36) (store (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@36) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_7581) (o@@5 T@Ref) (f_3@@5 T@Field_7654_7655) (v@@5 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@37) (store (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@37) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@37) (store (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@37) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_7581) (o@@6 T@Ref) (f_3@@6 T@Field_7641_53) (v@@6 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_7581 (store (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@38) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (store (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@38) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@38)))
)))
(assert (forall ((id_2@@4 Int) ) (! (= (PredicateMaskField_3984 (file id_2@@4)) (|file#sm| id_2@@4))
 :qid |stdinbpl.412:15|
 :skolemid |35|
 :pattern ( (PredicateMaskField_3984 (file id_2@@4)))
)))
(assert (forall ((o@@7 T@Ref) (f T@Field_7654_7655) (Heap@@39 T@PolymorphicMapType_7581) ) (!  (=> (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@39) o@@7 $allocated) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@39) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@39) o@@7 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@39) o@@7 f))
)))
(assert (forall ((p@@2 T@Field_14162_14163) (v_1@@1 T@FrameType) (q T@Field_14162_14163) (w@@1 T@FrameType) (r T@Field_14162_14163) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14162_14162 p@@2 v_1@@1 q w@@1) (InsidePredicate_14162_14162 q w@@1 r u)) (InsidePredicate_14162_14162 p@@2 v_1@@1 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14162_14162 p@@2 v_1@@1 q w@@1) (InsidePredicate_14162_14162 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14162_14163) (v_1@@2 T@FrameType) (q@@0 T@Field_14162_14163) (w@@2 T@FrameType) (r@@0 T@Field_3910_14163) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14162_14162 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14162_7641 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14162_7641 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14162_14162 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14162_7641 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14162_14163) (v_1@@3 T@FrameType) (q@@1 T@Field_3910_14163) (w@@3 T@FrameType) (r@@1 T@Field_14162_14163) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14162_7641 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7641_14162 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14162_14162 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14162_7641 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7641_14162 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14162_14163) (v_1@@4 T@FrameType) (q@@2 T@Field_3910_14163) (w@@4 T@FrameType) (r@@2 T@Field_3910_14163) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14162_7641 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7641_7641 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14162_7641 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14162_7641 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7641_7641 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3910_14163) (v_1@@5 T@FrameType) (q@@3 T@Field_14162_14163) (w@@5 T@FrameType) (r@@3 T@Field_14162_14163) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7641_14162 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14162_14162 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7641_14162 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7641_14162 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14162_14162 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3910_14163) (v_1@@6 T@FrameType) (q@@4 T@Field_14162_14163) (w@@6 T@FrameType) (r@@4 T@Field_3910_14163) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7641_14162 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14162_7641 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7641_7641 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7641_14162 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14162_7641 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3910_14163) (v_1@@7 T@FrameType) (q@@5 T@Field_3910_14163) (w@@7 T@FrameType) (r@@5 T@Field_14162_14163) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7641_7641 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7641_14162 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7641_14162 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7641_7641 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7641_14162 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3910_14163) (v_1@@8 T@FrameType) (q@@6 T@Field_3910_14163) (w@@8 T@FrameType) (r@@6 T@Field_3910_14163) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7641_7641 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7641_7641 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7641_7641 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7641_7641 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7641_7641 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_7581) (Mask@@40 T@PolymorphicMapType_7602) (x@@11 T@Ref) ) (!  (=> (and (state Heap@@40 Mask@@40) (< AssumeFunctionsAbove 0)) (= (fun03 Heap@@40 x@@11)  (not (fun02 Heap@@40 x@@11))))
 :qid |stdinbpl.324:15|
 :skolemid |32|
 :pattern ( (state Heap@@40 Mask@@40) (fun03 Heap@@40 x@@11))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@0 () T@PolymorphicMapType_7581)
(declare-fun x@@12 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_7602)
(declare-fun Heap@@41 () T@PolymorphicMapType_7581)
(declare-fun y () T@Ref)
(set-info :boogie-vc-id test04)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon12_Else_correct  (=> (= (ControlFlow 0 10) (- 0 9)) (not (fun03 Heap@0 x@@12)))))
(let ((anon12_Then_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@0) x@@12 f_7))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (= (fun03 Heap@@41 x@@12)  (not (fun02 Heap@@41 x@@12)))) (=> (= (fun03 Heap@@41 x@@12)  (not (fun02 Heap@@41 x@@12))) (=> (state Heap@@41 Mask@0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (= FullPerm (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@0) x@@12 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@0) x@@12 f_7)) (=> (and (= Heap@0 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@41) (store (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@41) x@@12 f_7 y) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@41) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@41) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@41) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@41) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@41) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@41))) (state Heap@0 Mask@0)) (and (=> (= (ControlFlow 0 11) 8) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct))))))))))
(let ((anon11_Then_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@0) x@@12 f_7))))))
(let ((anon10_Then_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@0) x@@12 f_7))))))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (not (fun03 Heap@@41 x@@12))) (=> (not (fun03 Heap@@41 x@@12)) (=> (state Heap@@41 Mask@0) (and (and (=> (= (ControlFlow 0 14) 4) anon10_Then_correct) (=> (= (ControlFlow 0 14) 6) anon11_Then_correct)) (=> (= (ControlFlow 0 14) 11) anon11_Else_correct)))))))
(let ((anon9_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@0) x@@12 f_7))))))
(let ((anon0_correct  (=> (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@41) x@@12 $allocated)) (and (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@41) y $allocated) (not (= x@@12 null)))) (and (and (= Mask@0 (PolymorphicMapType_7602 (store (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| ZeroMask) x@@12 f_7 (+ (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| ZeroMask) x@@12 f_7) FullPerm)) (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| ZeroMask) (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| ZeroMask) (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| ZeroMask) (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| ZeroMask) (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| ZeroMask) (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| ZeroMask) (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| ZeroMask))) (state Heap@@41 Mask@0)) (and (state Heap@@41 Mask@0) (state Heap@@41 Mask@0)))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_3910_3911 Mask@0 x@@12 f_7)) (=> (HasDirectPerm_3910_3911 Mask@0 x@@12 f_7) (=> (= x@@12 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@41) x@@12 f_7)) (=> (and (state Heap@@41 Mask@0) (state Heap@@41 Mask@0)) (and (=> (= (ControlFlow 0 16) 2) anon9_Then_correct) (=> (= (ControlFlow 0 16) 14) anon9_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 16) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 10) (- 9))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_7641_53 0)
(declare-sort T@Field_7654_7655 0)
(declare-sort T@Field_3910_14163 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3910_14179 0)
(declare-sort T@Field_14162_3911 0)
(declare-sort T@Field_14162_53 0)
(declare-sort T@Field_14162_14163 0)
(declare-sort T@Field_14174_14179 0)
(declare-datatypes ((T@PolymorphicMapType_7602 0)) (((PolymorphicMapType_7602 (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| (Array T@Ref T@Field_7654_7655 Real)) (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| (Array T@Ref T@Field_14162_14163 Real)) (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| (Array T@Ref T@Field_3910_14163 Real)) (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| (Array T@Ref T@Field_7641_53 Real)) (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| (Array T@Ref T@Field_3910_14179 Real)) (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| (Array T@Ref T@Field_14162_3911 Real)) (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| (Array T@Ref T@Field_14162_53 Real)) (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| (Array T@Ref T@Field_14174_14179 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8130 0)) (((PolymorphicMapType_8130 (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| (Array T@Ref T@Field_7641_53 Bool)) (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| (Array T@Ref T@Field_7654_7655 Bool)) (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| (Array T@Ref T@Field_3910_14163 Bool)) (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| (Array T@Ref T@Field_3910_14179 Bool)) (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| (Array T@Ref T@Field_14162_53 Bool)) (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| (Array T@Ref T@Field_14162_3911 Bool)) (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| (Array T@Ref T@Field_14162_14163 Bool)) (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| (Array T@Ref T@Field_14174_14179 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7581 0)) (((PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| (Array T@Ref T@Field_7641_53 Bool)) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| (Array T@Ref T@Field_7654_7655 T@Ref)) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| (Array T@Ref T@Field_3910_14163 T@FrameType)) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| (Array T@Ref T@Field_3910_14179 T@PolymorphicMapType_8130)) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| (Array T@Ref T@Field_14162_3911 T@Ref)) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| (Array T@Ref T@Field_14162_53 Bool)) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| (Array T@Ref T@Field_14162_14163 T@FrameType)) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| (Array T@Ref T@Field_14174_14179 T@PolymorphicMapType_8130)) ) ) ))
(declare-fun $allocated () T@Field_7641_53)
(declare-fun f_7 () T@Field_7654_7655)
(declare-fun succHeap (T@PolymorphicMapType_7581 T@PolymorphicMapType_7581) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7581 T@PolymorphicMapType_7581) Bool)
(declare-fun state (T@PolymorphicMapType_7581 T@PolymorphicMapType_7602) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7602) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7581 T@PolymorphicMapType_7581 T@PolymorphicMapType_7602) Bool)
(declare-fun IsPredicateField_3984_3985 (T@Field_14162_14163) Bool)
(declare-fun HasDirectPerm_14162_14163 (T@PolymorphicMapType_7602 T@Ref T@Field_14162_14163) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3984 (T@Field_14162_14163) T@Field_14174_14179)
(declare-fun IsPredicateField_3910_24653 (T@Field_3910_14163) Bool)
(declare-fun HasDirectPerm_3910_14163 (T@PolymorphicMapType_7602 T@Ref T@Field_3910_14163) Bool)
(declare-fun PredicateMaskField_3910 (T@Field_3910_14163) T@Field_3910_14179)
(declare-fun IsWandField_14162_27954 (T@Field_14162_14163) Bool)
(declare-fun WandMaskField_14162 (T@Field_14162_14163) T@Field_14174_14179)
(declare-fun IsWandField_3910_27597 (T@Field_3910_14163) Bool)
(declare-fun WandMaskField_3910 (T@Field_3910_14163) T@Field_3910_14179)
(declare-fun ZeroPMask () T@PolymorphicMapType_8130)
(declare-fun file (Int) T@Field_14162_14163)
(declare-fun |fun01'| (T@PolymorphicMapType_7581 T@Ref) Int)
(declare-fun dummyFunction_1375 (Int) Bool)
(declare-fun |fun01#triggerStateless| (T@Ref) Int)
(declare-fun |fun02'| (T@PolymorphicMapType_7581 T@Ref) Bool)
(declare-fun dummyFunction_1613 (Bool) Bool)
(declare-fun |fun02#triggerStateless| (T@Ref) Bool)
(declare-fun |fun03'| (T@PolymorphicMapType_7581 T@Ref) Bool)
(declare-fun |fun03#triggerStateless| (T@Ref) Bool)
(declare-fun |file#trigger_3984| (T@PolymorphicMapType_7581 T@Field_14162_14163) Bool)
(declare-fun |file#everUsed_3984| (T@Field_14162_14163) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |fun01#trigger| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fun01 (T@PolymorphicMapType_7581 T@Ref) Int)
(declare-fun |file#sm| (Int) T@Field_14174_14179)
(declare-fun dummyHeap () T@PolymorphicMapType_7581)
(declare-fun ZeroMask () T@PolymorphicMapType_7602)
(declare-fun InsidePredicate_14162_14162 (T@Field_14162_14163 T@FrameType T@Field_14162_14163 T@FrameType) Bool)
(declare-fun InsidePredicate_7641_7641 (T@Field_3910_14163 T@FrameType T@Field_3910_14163 T@FrameType) Bool)
(declare-fun IsPredicateField_3910_3911 (T@Field_7654_7655) Bool)
(declare-fun IsWandField_3910_3911 (T@Field_7654_7655) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3984_33665 (T@Field_14174_14179) Bool)
(declare-fun IsWandField_3984_33681 (T@Field_14174_14179) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3984_53 (T@Field_14162_53) Bool)
(declare-fun IsWandField_3984_53 (T@Field_14162_53) Bool)
(declare-fun IsPredicateField_3984_3911 (T@Field_14162_3911) Bool)
(declare-fun IsWandField_3984_3911 (T@Field_14162_3911) Bool)
(declare-fun IsPredicateField_3910_33002 (T@Field_3910_14179) Bool)
(declare-fun IsWandField_3910_33018 (T@Field_3910_14179) Bool)
(declare-fun IsPredicateField_3910_53 (T@Field_7641_53) Bool)
(declare-fun IsWandField_3910_53 (T@Field_7641_53) Bool)
(declare-fun HasDirectPerm_14162_24365 (T@PolymorphicMapType_7602 T@Ref T@Field_14174_14179) Bool)
(declare-fun HasDirectPerm_14162_53 (T@PolymorphicMapType_7602 T@Ref T@Field_14162_53) Bool)
(declare-fun HasDirectPerm_14162_3911 (T@PolymorphicMapType_7602 T@Ref T@Field_14162_3911) Bool)
(declare-fun HasDirectPerm_3910_23408 (T@PolymorphicMapType_7602 T@Ref T@Field_3910_14179) Bool)
(declare-fun HasDirectPerm_3910_53 (T@PolymorphicMapType_7602 T@Ref T@Field_7641_53) Bool)
(declare-fun HasDirectPerm_3910_3911 (T@PolymorphicMapType_7602 T@Ref T@Field_7654_7655) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7602 T@PolymorphicMapType_7602 T@PolymorphicMapType_7602) Bool)
(declare-fun |fun02#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_3911 (T@Ref) T@FrameType)
(declare-fun |fun03#frame| (T@FrameType T@Ref) Bool)
(declare-fun |fun02#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |fun03#trigger| (T@FrameType T@Ref) Bool)
(declare-fun fun02 (T@PolymorphicMapType_7581 T@Ref) Bool)
(declare-fun fun03 (T@PolymorphicMapType_7581 T@Ref) Bool)
(declare-fun getPredWandId_3984_3985 (T@Field_14162_14163) Int)
(declare-fun |fun01#frame| (T@FrameType T@Ref) Int)
(declare-fun InsidePredicate_14162_7641 (T@Field_14162_14163 T@FrameType T@Field_3910_14163 T@FrameType) Bool)
(declare-fun InsidePredicate_7641_14162 (T@Field_3910_14163 T@FrameType T@Field_14162_14163 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7581) (Heap1 T@PolymorphicMapType_7581) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7581) (Mask T@PolymorphicMapType_7602) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7581) (ExhaleHeap T@PolymorphicMapType_7581) (Mask@@0 T@PolymorphicMapType_7602) (pm_f T@Field_14162_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_14162_14163 Mask@@0 null pm_f) (IsPredicateField_3984_3985 pm_f)) (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_7641_53) ) (!  (=> (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@0) o2 f_2) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_7654_7655) ) (!  (=> (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@0) o2@@0 f_2@@0) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3910_14163) ) (!  (=> (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@0) o2@@1 f_2@@1) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3910_14179) ) (!  (=> (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@0) o2@@2 f_2@@2) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_14162_53) ) (!  (=> (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@0) o2@@3 f_2@@3) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_14162_3911) ) (!  (=> (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@0) o2@@4 f_2@@4) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_14162_14163) ) (!  (=> (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@0) o2@@5 f_2@@5) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) null (PredicateMaskField_3984 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@0) o2@@6 f_2@@6) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3984_3985 pm_f))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7581) (ExhaleHeap@@0 T@PolymorphicMapType_7581) (Mask@@1 T@PolymorphicMapType_7602) (pm_f@@0 T@Field_3910_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3910_14163 Mask@@1 null pm_f@@0) (IsPredicateField_3910_24653 pm_f@@0)) (and (and (and (and (and (and (and (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_7641_53) ) (!  (=> (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@1) o2@@7 f_2@@7) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@7 f_2@@7))
)) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_7654_7655) ) (!  (=> (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@1) o2@@8 f_2@@8) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_3910_14163) ) (!  (=> (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@1) o2@@9 f_2@@9) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_3910_14179) ) (!  (=> (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) o2@@10 f_2@@10) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_14162_53) ) (!  (=> (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@1) o2@@11 f_2@@11) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_14162_3911) ) (!  (=> (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@1) o2@@12 f_2@@12) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_14162_14163) ) (!  (=> (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@1) o2@@13 f_2@@13) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@1) null (PredicateMaskField_3910 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@1) o2@@14 f_2@@14) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@0) o2@@14 f_2@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3910_24653 pm_f@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7581) (ExhaleHeap@@1 T@PolymorphicMapType_7581) (Mask@@2 T@PolymorphicMapType_7602) (pm_f@@1 T@Field_14162_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_14162_14163 Mask@@2 null pm_f@@1) (IsWandField_14162_27954 pm_f@@1)) (and (and (and (and (and (and (and (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_7641_53) ) (!  (=> (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@2) o2@@15 f_2@@15) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@15 f_2@@15)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@15 f_2@@15))
)) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_7654_7655) ) (!  (=> (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@2) o2@@16 f_2@@16) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@16 f_2@@16)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_3910_14163) ) (!  (=> (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@2) o2@@17 f_2@@17) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@17 f_2@@17)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_3910_14179) ) (!  (=> (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@2) o2@@18 f_2@@18) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@18 f_2@@18)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_14162_53) ) (!  (=> (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@2) o2@@19 f_2@@19) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_14162_3911) ) (!  (=> (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@2) o2@@20 f_2@@20) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_14162_14163) ) (!  (=> (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@2) o2@@21 f_2@@21) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) null (WandMaskField_14162 pm_f@@1))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@2) o2@@22 f_2@@22) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@1) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_14162_27954 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7581) (ExhaleHeap@@2 T@PolymorphicMapType_7581) (Mask@@3 T@PolymorphicMapType_7602) (pm_f@@2 T@Field_3910_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3910_14163 Mask@@3 null pm_f@@2) (IsWandField_3910_27597 pm_f@@2)) (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_7641_53) ) (!  (=> (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@3) o2@@23 f_2@@23) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_7654_7655) ) (!  (=> (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@3) o2@@24 f_2@@24) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_3910_14163) ) (!  (=> (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@3) o2@@25 f_2@@25) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_3910_14179) ) (!  (=> (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) o2@@26 f_2@@26) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_14162_53) ) (!  (=> (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@3) o2@@27 f_2@@27) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_14162_3911) ) (!  (=> (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@3) o2@@28 f_2@@28) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_14162_14163) ) (!  (=> (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@3) o2@@29 f_2@@29) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@3) null (WandMaskField_3910 pm_f@@2))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@3) o2@@30 f_2@@30) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@2) o2@@30 f_2@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3910_27597 pm_f@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7581) (Heap1@@0 T@PolymorphicMapType_7581) (Heap2 T@PolymorphicMapType_7581) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14174_14179) ) (!  (not (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_14162_26789#PolymorphicMapType_8130| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14162_14163) ) (!  (not (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_14162_14163#PolymorphicMapType_8130| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14162_3911) ) (!  (not (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_14162_7655#PolymorphicMapType_8130| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14162_53) ) (!  (not (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_14162_53#PolymorphicMapType_8130| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3910_14179) ) (!  (not (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_7641_25939#PolymorphicMapType_8130| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3910_14163) ) (!  (not (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_7641_14163#PolymorphicMapType_8130| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7654_7655) ) (!  (not (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_7641_7655#PolymorphicMapType_8130| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7641_53) ) (!  (not (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8130_7641_53#PolymorphicMapType_8130| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((id_2 Int) ) (! (IsPredicateField_3984_3985 (file id_2))
 :qid |stdinbpl.416:15|
 :skolemid |36|
 :pattern ( (file id_2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7581) (x T@Ref) ) (! (dummyFunction_1375 (|fun01#triggerStateless| x))
 :qid |stdinbpl.200:15|
 :skolemid |23|
 :pattern ( (|fun01'| Heap@@4 x))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7581) (x@@0 T@Ref) ) (! (dummyFunction_1613 (|fun02#triggerStateless| x@@0))
 :qid |stdinbpl.252:15|
 :skolemid |27|
 :pattern ( (|fun02'| Heap@@5 x@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7581) (x@@1 T@Ref) ) (! (dummyFunction_1613 (|fun03#triggerStateless| x@@1))
 :qid |stdinbpl.318:15|
 :skolemid |31|
 :pattern ( (|fun03'| Heap@@6 x@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7581) (id_2@@0 Int) ) (! (|file#everUsed_3984| (file id_2@@0))
 :qid |stdinbpl.435:15|
 :skolemid |40|
 :pattern ( (|file#trigger_3984| Heap@@7 (file id_2@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7581) (Mask@@4 T@PolymorphicMapType_7602) (x@@2 T@Ref) ) (!  (=> (and (state Heap@@8 Mask@@4) (or (< AssumeFunctionsAbove 1) (|fun01#trigger| EmptyFrame x@@2))) (< 0 (|fun01'| Heap@@8 x@@2)))
 :qid |stdinbpl.213:15|
 :skolemid |25|
 :pattern ( (state Heap@@8 Mask@@4) (|fun01'| Heap@@8 x@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7581) (x@@3 T@Ref) ) (!  (and (= (fun01 Heap@@9 x@@3) (|fun01'| Heap@@9 x@@3)) (dummyFunction_1375 (|fun01#triggerStateless| x@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |22|
 :pattern ( (fun01 Heap@@9 x@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7581) (ExhaleHeap@@3 T@PolymorphicMapType_7581) (Mask@@5 T@PolymorphicMapType_7602) (pm_f@@3 T@Field_14162_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_14162_14163 Mask@@5 null pm_f@@3) (IsPredicateField_3984_3985 pm_f@@3)) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@10) null (PredicateMaskField_3984 pm_f@@3)) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@3) null (PredicateMaskField_3984 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (IsPredicateField_3984_3985 pm_f@@3) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@3) null (PredicateMaskField_3984 pm_f@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7581) (ExhaleHeap@@4 T@PolymorphicMapType_7581) (Mask@@6 T@PolymorphicMapType_7602) (pm_f@@4 T@Field_3910_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_3910_14163 Mask@@6 null pm_f@@4) (IsPredicateField_3910_24653 pm_f@@4)) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@11) null (PredicateMaskField_3910 pm_f@@4)) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@4) null (PredicateMaskField_3910 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (IsPredicateField_3910_24653 pm_f@@4) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@4) null (PredicateMaskField_3910 pm_f@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7581) (ExhaleHeap@@5 T@PolymorphicMapType_7581) (Mask@@7 T@PolymorphicMapType_7602) (pm_f@@5 T@Field_14162_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_14162_14163 Mask@@7 null pm_f@@5) (IsWandField_14162_27954 pm_f@@5)) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@12) null (WandMaskField_14162 pm_f@@5)) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@5) null (WandMaskField_14162 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@7) (IsWandField_14162_27954 pm_f@@5) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@5) null (WandMaskField_14162 pm_f@@5)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7581) (ExhaleHeap@@6 T@PolymorphicMapType_7581) (Mask@@8 T@PolymorphicMapType_7602) (pm_f@@6 T@Field_3910_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_3910_14163 Mask@@8 null pm_f@@6) (IsWandField_3910_27597 pm_f@@6)) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@13) null (WandMaskField_3910 pm_f@@6)) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@6) null (WandMaskField_3910 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@8) (IsWandField_3910_27597 pm_f@@6) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@6) null (WandMaskField_3910 pm_f@@6)))
)))
(assert (forall ((id_2@@1 Int) (id2 Int) ) (!  (=> (= (file id_2@@1) (file id2)) (= id_2@@1 id2))
 :qid |stdinbpl.426:15|
 :skolemid |38|
 :pattern ( (file id_2@@1) (file id2))
)))
(assert (forall ((id_2@@2 Int) (id2@@0 Int) ) (!  (=> (= (|file#sm| id_2@@2) (|file#sm| id2@@0)) (= id_2@@2 id2@@0))
 :qid |stdinbpl.430:15|
 :skolemid |39|
 :pattern ( (|file#sm| id_2@@2) (|file#sm| id2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7581) (ExhaleHeap@@7 T@PolymorphicMapType_7581) (Mask@@9 T@PolymorphicMapType_7602) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@14) o_1 $allocated) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_14162_14163) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14162_14162 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14162_14162 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3910_14163) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7641_7641 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7641_7641 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3910_3911 f_7)))
(assert  (not (IsWandField_3910_3911 f_7)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7581) (ExhaleHeap@@8 T@PolymorphicMapType_7581) (Mask@@10 T@PolymorphicMapType_7602) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7602) (o_2@@7 T@Ref) (f_4@@7 T@Field_14174_14179) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3984_33665 f_4@@7))) (not (IsWandField_3984_33681 f_4@@7))) (<= (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7602) (o_2@@8 T@Ref) (f_4@@8 T@Field_14162_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3984_53 f_4@@8))) (not (IsWandField_3984_53 f_4@@8))) (<= (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7602) (o_2@@9 T@Ref) (f_4@@9 T@Field_14162_14163) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| Mask@@13) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3984_3985 f_4@@9))) (not (IsWandField_14162_27954 f_4@@9))) (<= (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| Mask@@13) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| Mask@@13) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7602) (o_2@@10 T@Ref) (f_4@@10 T@Field_14162_3911) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| Mask@@14) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3984_3911 f_4@@10))) (not (IsWandField_3984_3911 f_4@@10))) (<= (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| Mask@@14) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| Mask@@14) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7602) (o_2@@11 T@Ref) (f_4@@11 T@Field_3910_14179) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| Mask@@15) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3910_33002 f_4@@11))) (not (IsWandField_3910_33018 f_4@@11))) (<= (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| Mask@@15) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| Mask@@15) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7602) (o_2@@12 T@Ref) (f_4@@12 T@Field_7641_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| Mask@@16) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3910_53 f_4@@12))) (not (IsWandField_3910_53 f_4@@12))) (<= (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| Mask@@16) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| Mask@@16) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7602) (o_2@@13 T@Ref) (f_4@@13 T@Field_3910_14163) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| Mask@@17) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3910_24653 f_4@@13))) (not (IsWandField_3910_27597 f_4@@13))) (<= (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| Mask@@17) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| Mask@@17) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7602) (o_2@@14 T@Ref) (f_4@@14 T@Field_7654_7655) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@@18) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3910_3911 f_4@@14))) (not (IsWandField_3910_3911 f_4@@14))) (<= (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@@18) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@@18) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7602) (o_2@@15 T@Ref) (f_4@@15 T@Field_14174_14179) ) (! (= (HasDirectPerm_14162_24365 Mask@@19 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| Mask@@19) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14162_24365 Mask@@19 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7602) (o_2@@16 T@Ref) (f_4@@16 T@Field_14162_14163) ) (! (= (HasDirectPerm_14162_14163 Mask@@20 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| Mask@@20) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14162_14163 Mask@@20 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7602) (o_2@@17 T@Ref) (f_4@@17 T@Field_14162_53) ) (! (= (HasDirectPerm_14162_53 Mask@@21 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| Mask@@21) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14162_53 Mask@@21 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7602) (o_2@@18 T@Ref) (f_4@@18 T@Field_14162_3911) ) (! (= (HasDirectPerm_14162_3911 Mask@@22 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| Mask@@22) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14162_3911 Mask@@22 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7602) (o_2@@19 T@Ref) (f_4@@19 T@Field_3910_14179) ) (! (= (HasDirectPerm_3910_23408 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3910_23408 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7602) (o_2@@20 T@Ref) (f_4@@20 T@Field_3910_14163) ) (! (= (HasDirectPerm_3910_14163 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3910_14163 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7602) (o_2@@21 T@Ref) (f_4@@21 T@Field_7641_53) ) (! (= (HasDirectPerm_3910_53 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3910_53 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7602) (o_2@@22 T@Ref) (f_4@@22 T@Field_7654_7655) ) (! (= (HasDirectPerm_3910_3911 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3910_3911 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7581) (ExhaleHeap@@9 T@PolymorphicMapType_7581) (Mask@@27 T@PolymorphicMapType_7602) (o_1@@0 T@Ref) (f_2@@31 T@Field_14174_14179) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_14162_24365 Mask@@27 o_1@@0 f_2@@31) (= (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@16) o_1@@0 f_2@@31) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@9) o_1@@0 f_2@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| ExhaleHeap@@9) o_1@@0 f_2@@31))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7581) (ExhaleHeap@@10 T@PolymorphicMapType_7581) (Mask@@28 T@PolymorphicMapType_7602) (o_1@@1 T@Ref) (f_2@@32 T@Field_14162_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@28) (=> (HasDirectPerm_14162_14163 Mask@@28 o_1@@1 f_2@@32) (= (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@17) o_1@@1 f_2@@32) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@10) o_1@@1 f_2@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@28) (select (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| ExhaleHeap@@10) o_1@@1 f_2@@32))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7581) (ExhaleHeap@@11 T@PolymorphicMapType_7581) (Mask@@29 T@PolymorphicMapType_7602) (o_1@@2 T@Ref) (f_2@@33 T@Field_14162_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@29) (=> (HasDirectPerm_14162_53 Mask@@29 o_1@@2 f_2@@33) (= (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@18) o_1@@2 f_2@@33) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@11) o_1@@2 f_2@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@29) (select (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| ExhaleHeap@@11) o_1@@2 f_2@@33))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7581) (ExhaleHeap@@12 T@PolymorphicMapType_7581) (Mask@@30 T@PolymorphicMapType_7602) (o_1@@3 T@Ref) (f_2@@34 T@Field_14162_3911) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@30) (=> (HasDirectPerm_14162_3911 Mask@@30 o_1@@3 f_2@@34) (= (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@19) o_1@@3 f_2@@34) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@12) o_1@@3 f_2@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@30) (select (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| ExhaleHeap@@12) o_1@@3 f_2@@34))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7581) (ExhaleHeap@@13 T@PolymorphicMapType_7581) (Mask@@31 T@PolymorphicMapType_7602) (o_1@@4 T@Ref) (f_2@@35 T@Field_3910_14179) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@31) (=> (HasDirectPerm_3910_23408 Mask@@31 o_1@@4 f_2@@35) (= (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@20) o_1@@4 f_2@@35) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@13) o_1@@4 f_2@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@31) (select (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| ExhaleHeap@@13) o_1@@4 f_2@@35))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7581) (ExhaleHeap@@14 T@PolymorphicMapType_7581) (Mask@@32 T@PolymorphicMapType_7602) (o_1@@5 T@Ref) (f_2@@36 T@Field_3910_14163) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@32) (=> (HasDirectPerm_3910_14163 Mask@@32 o_1@@5 f_2@@36) (= (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@21) o_1@@5 f_2@@36) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@14) o_1@@5 f_2@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@32) (select (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| ExhaleHeap@@14) o_1@@5 f_2@@36))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7581) (ExhaleHeap@@15 T@PolymorphicMapType_7581) (Mask@@33 T@PolymorphicMapType_7602) (o_1@@6 T@Ref) (f_2@@37 T@Field_7641_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@33) (=> (HasDirectPerm_3910_53 Mask@@33 o_1@@6 f_2@@37) (= (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@22) o_1@@6 f_2@@37) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@15) o_1@@6 f_2@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@33) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| ExhaleHeap@@15) o_1@@6 f_2@@37))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7581) (ExhaleHeap@@16 T@PolymorphicMapType_7581) (Mask@@34 T@PolymorphicMapType_7602) (o_1@@7 T@Ref) (f_2@@38 T@Field_7654_7655) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@34) (=> (HasDirectPerm_3910_3911 Mask@@34 o_1@@7 f_2@@38) (= (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@23) o_1@@7 f_2@@38) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@16) o_1@@7 f_2@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@34) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| ExhaleHeap@@16) o_1@@7 f_2@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_14174_14179) ) (! (= (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_14162_53) ) (! (= (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_14162_14163) ) (! (= (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_14162_3911) ) (! (= (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_3910_14179) ) (! (= (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_7641_53) ) (! (= (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3910_14163) ) (! (= (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_7654_7655) ) (! (= (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7602) (SummandMask1 T@PolymorphicMapType_7602) (SummandMask2 T@PolymorphicMapType_7602) (o_2@@31 T@Ref) (f_4@@31 T@Field_14174_14179) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7602_3984_31841#PolymorphicMapType_7602| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7602) (SummandMask1@@0 T@PolymorphicMapType_7602) (SummandMask2@@0 T@PolymorphicMapType_7602) (o_2@@32 T@Ref) (f_4@@32 T@Field_14162_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7602_3984_53#PolymorphicMapType_7602| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7602) (SummandMask1@@1 T@PolymorphicMapType_7602) (SummandMask2@@1 T@PolymorphicMapType_7602) (o_2@@33 T@Ref) (f_4@@33 T@Field_14162_14163) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7602_3984_3985#PolymorphicMapType_7602| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7602) (SummandMask1@@2 T@PolymorphicMapType_7602) (SummandMask2@@2 T@PolymorphicMapType_7602) (o_2@@34 T@Ref) (f_4@@34 T@Field_14162_3911) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7602_3984_3911#PolymorphicMapType_7602| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7602) (SummandMask1@@3 T@PolymorphicMapType_7602) (SummandMask2@@3 T@PolymorphicMapType_7602) (o_2@@35 T@Ref) (f_4@@35 T@Field_3910_14179) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7602_3910_31510#PolymorphicMapType_7602| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7602) (SummandMask1@@4 T@PolymorphicMapType_7602) (SummandMask2@@4 T@PolymorphicMapType_7602) (o_2@@36 T@Ref) (f_4@@36 T@Field_7641_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7602_3910_53#PolymorphicMapType_7602| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7602) (SummandMask1@@5 T@PolymorphicMapType_7602) (SummandMask2@@5 T@PolymorphicMapType_7602) (o_2@@37 T@Ref) (f_4@@37 T@Field_3910_14163) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7602_3910_3985#PolymorphicMapType_7602| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7602) (SummandMask1@@6 T@PolymorphicMapType_7602) (SummandMask2@@6 T@PolymorphicMapType_7602) (o_2@@38 T@Ref) (f_4@@38 T@Field_7654_7655) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7602_3910_3911#PolymorphicMapType_7602| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7581) (Mask@@35 T@PolymorphicMapType_7602) (x@@4 T@Ref) ) (!  (=> (state Heap@@24 Mask@@35) (= (|fun02'| Heap@@24 x@@4) (|fun02#frame| (FrameFragment_3911 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@24) x@@4 f_7)) x@@4)))
 :qid |stdinbpl.259:15|
 :skolemid |28|
 :pattern ( (state Heap@@24 Mask@@35) (|fun02'| Heap@@24 x@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7581) (Mask@@36 T@PolymorphicMapType_7602) (x@@5 T@Ref) ) (!  (=> (state Heap@@25 Mask@@36) (= (|fun03'| Heap@@25 x@@5) (|fun03#frame| (FrameFragment_3911 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@25) x@@5 f_7)) x@@5)))
 :qid |stdinbpl.331:15|
 :skolemid |33|
 :pattern ( (state Heap@@25 Mask@@36) (|fun03'| Heap@@25 x@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7581) (Mask@@37 T@PolymorphicMapType_7602) (x@@6 T@Ref) ) (!  (=> (and (state Heap@@26 Mask@@37) (or (< AssumeFunctionsAbove 2) (|fun02#trigger| (FrameFragment_3911 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@26) x@@6 f_7)) x@@6))) (=> (= x@@6 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@26) x@@6 f_7)) (|fun02'| Heap@@26 x@@6)))
 :qid |stdinbpl.265:15|
 :skolemid |29|
 :pattern ( (state Heap@@26 Mask@@37) (|fun02'| Heap@@26 x@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7581) (Mask@@38 T@PolymorphicMapType_7602) (x@@7 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@38) (or (< AssumeFunctionsAbove 0) (|fun03#trigger| (FrameFragment_3911 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@27) x@@7 f_7)) x@@7))) (=> (= x@@7 (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@27) x@@7 f_7)) (not (|fun03'| Heap@@27 x@@7))))
 :qid |stdinbpl.337:15|
 :skolemid |34|
 :pattern ( (state Heap@@27 Mask@@38) (|fun03'| Heap@@27 x@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7581) (x@@8 T@Ref) ) (!  (and (= (fun02 Heap@@28 x@@8) (|fun02'| Heap@@28 x@@8)) (dummyFunction_1613 (|fun02#triggerStateless| x@@8)))
 :qid |stdinbpl.248:15|
 :skolemid |26|
 :pattern ( (fun02 Heap@@28 x@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7581) (x@@9 T@Ref) ) (!  (and (= (fun03 Heap@@29 x@@9) (|fun03'| Heap@@29 x@@9)) (dummyFunction_1613 (|fun03#triggerStateless| x@@9)))
 :qid |stdinbpl.314:15|
 :skolemid |30|
 :pattern ( (fun03 Heap@@29 x@@9))
)))
(assert (forall ((id_2@@3 Int) ) (! (= (getPredWandId_3984_3985 (file id_2@@3)) 0)
 :qid |stdinbpl.420:15|
 :skolemid |37|
 :pattern ( (file id_2@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7581) (Mask@@39 T@PolymorphicMapType_7602) (x@@10 T@Ref) ) (!  (=> (state Heap@@30 Mask@@39) (= (|fun01'| Heap@@30 x@@10) (|fun01#frame| EmptyFrame x@@10)))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap@@30 Mask@@39) (|fun01'| Heap@@30 x@@10))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7581) (o T@Ref) (f_3 T@Field_14174_14179) (v T@PolymorphicMapType_8130) ) (! (succHeap Heap@@31 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@31) (store (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@31) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@31) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@31) (store (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@31) o f_3 v)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7581) (o@@0 T@Ref) (f_3@@0 T@Field_14162_14163) (v@@0 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@32) (store (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@32) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@32) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@32) (store (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@32) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7581) (o@@1 T@Ref) (f_3@@1 T@Field_14162_3911) (v@@1 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@33) (store (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@33) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@33) (store (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@33) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@33) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7581) (o@@2 T@Ref) (f_3@@2 T@Field_14162_53) (v@@2 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@34) (store (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@34) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@34) (store (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@34) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@34) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7581) (o@@3 T@Ref) (f_3@@3 T@Field_3910_14179) (v@@3 T@PolymorphicMapType_8130) ) (! (succHeap Heap@@35 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@35) (store (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@35) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@35) (store (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@35) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@35) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_7581) (o@@4 T@Ref) (f_3@@4 T@Field_3910_14163) (v@@4 T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@36) (store (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@36) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@36) (store (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@36) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@36) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_7581) (o@@5 T@Ref) (f_3@@5 T@Field_7654_7655) (v@@5 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@37) (store (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@37) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@37) (store (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@37) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@37) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_7581) (o@@6 T@Ref) (f_3@@6 T@Field_7641_53) (v@@6 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_7581 (store (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@38) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7581 (store (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@38) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_3910_14163#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_3910_23450#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_3911#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_53#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_14163#PolymorphicMapType_7581| Heap@@38) (|PolymorphicMapType_7581_14162_24407#PolymorphicMapType_7581| Heap@@38)))
)))
(assert (forall ((id_2@@4 Int) ) (! (= (PredicateMaskField_3984 (file id_2@@4)) (|file#sm| id_2@@4))
 :qid |stdinbpl.412:15|
 :skolemid |35|
 :pattern ( (PredicateMaskField_3984 (file id_2@@4)))
)))
(assert (forall ((o@@7 T@Ref) (f T@Field_7654_7655) (Heap@@39 T@PolymorphicMapType_7581) ) (!  (=> (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@39) o@@7 $allocated) (select (|PolymorphicMapType_7581_3782_53#PolymorphicMapType_7581| Heap@@39) (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@39) o@@7 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7581_3785_3786#PolymorphicMapType_7581| Heap@@39) o@@7 f))
)))
(assert (forall ((p@@2 T@Field_14162_14163) (v_1@@1 T@FrameType) (q T@Field_14162_14163) (w@@1 T@FrameType) (r T@Field_14162_14163) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14162_14162 p@@2 v_1@@1 q w@@1) (InsidePredicate_14162_14162 q w@@1 r u)) (InsidePredicate_14162_14162 p@@2 v_1@@1 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14162_14162 p@@2 v_1@@1 q w@@1) (InsidePredicate_14162_14162 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14162_14163) (v_1@@2 T@FrameType) (q@@0 T@Field_14162_14163) (w@@2 T@FrameType) (r@@0 T@Field_3910_14163) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14162_14162 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14162_7641 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14162_7641 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14162_14162 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14162_7641 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14162_14163) (v_1@@3 T@FrameType) (q@@1 T@Field_3910_14163) (w@@3 T@FrameType) (r@@1 T@Field_14162_14163) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14162_7641 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7641_14162 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14162_14162 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14162_7641 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7641_14162 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14162_14163) (v_1@@4 T@FrameType) (q@@2 T@Field_3910_14163) (w@@4 T@FrameType) (r@@2 T@Field_3910_14163) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14162_7641 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7641_7641 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14162_7641 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14162_7641 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7641_7641 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3910_14163) (v_1@@5 T@FrameType) (q@@3 T@Field_14162_14163) (w@@5 T@FrameType) (r@@3 T@Field_14162_14163) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7641_14162 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14162_14162 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7641_14162 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7641_14162 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14162_14162 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3910_14163) (v_1@@6 T@FrameType) (q@@4 T@Field_14162_14163) (w@@6 T@FrameType) (r@@4 T@Field_3910_14163) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7641_14162 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14162_7641 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7641_7641 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7641_14162 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14162_7641 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3910_14163) (v_1@@7 T@FrameType) (q@@5 T@Field_3910_14163) (w@@7 T@FrameType) (r@@5 T@Field_14162_14163) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7641_7641 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7641_14162 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7641_14162 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7641_7641 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7641_14162 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3910_14163) (v_1@@8 T@FrameType) (q@@6 T@Field_3910_14163) (w@@8 T@FrameType) (r@@6 T@Field_3910_14163) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7641_7641 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7641_7641 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7641_7641 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7641_7641 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7641_7641 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_7581) (Mask@@40 T@PolymorphicMapType_7602) (x@@11 T@Ref) ) (!  (=> (and (state Heap@@40 Mask@@40) (< AssumeFunctionsAbove 0)) (= (fun03 Heap@@40 x@@11)  (not (fun02 Heap@@40 x@@11))))
 :qid |stdinbpl.324:15|
 :skolemid |32|
 :pattern ( (state Heap@@40 Mask@@40) (fun03 Heap@@40 x@@11))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid

