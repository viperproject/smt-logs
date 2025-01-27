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
(declare-sort T@Field_3492_53 0)
(declare-sort T@Field_3505_3506 0)
(declare-sort T@Field_3492_7421 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3492_7437 0)
(declare-sort T@Field_7420_53 0)
(declare-sort T@Field_7420_3506 0)
(declare-sort T@Field_7420_7421 0)
(declare-sort T@Field_7432_7437 0)
(declare-datatypes ((T@PolymorphicMapType_3453 0)) (((PolymorphicMapType_3453 (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| (Array T@Ref T@Field_3492_53 Real)) (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| (Array T@Ref T@Field_3505_3506 Real)) (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| (Array T@Ref T@Field_3492_7421 Real)) (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| (Array T@Ref T@Field_3492_7437 Real)) (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| (Array T@Ref T@Field_7420_53 Real)) (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| (Array T@Ref T@Field_7420_3506 Real)) (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| (Array T@Ref T@Field_7420_7421 Real)) (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| (Array T@Ref T@Field_7432_7437 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3981 0)) (((PolymorphicMapType_3981 (|PolymorphicMapType_3981_3492_53#PolymorphicMapType_3981| (Array T@Ref T@Field_3492_53 Bool)) (|PolymorphicMapType_3981_3492_3506#PolymorphicMapType_3981| (Array T@Ref T@Field_3505_3506 Bool)) (|PolymorphicMapType_3981_3492_7421#PolymorphicMapType_3981| (Array T@Ref T@Field_3492_7421 Bool)) (|PolymorphicMapType_3981_3492_12293#PolymorphicMapType_3981| (Array T@Ref T@Field_3492_7437 Bool)) (|PolymorphicMapType_3981_7420_53#PolymorphicMapType_3981| (Array T@Ref T@Field_7420_53 Bool)) (|PolymorphicMapType_3981_7420_3506#PolymorphicMapType_3981| (Array T@Ref T@Field_7420_3506 Bool)) (|PolymorphicMapType_3981_7420_7421#PolymorphicMapType_3981| (Array T@Ref T@Field_7420_7421 Bool)) (|PolymorphicMapType_3981_7420_13143#PolymorphicMapType_3981| (Array T@Ref T@Field_7432_7437 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3432 0)) (((PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| (Array T@Ref T@Field_3492_53 Bool)) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| (Array T@Ref T@Field_3505_3506 T@Ref)) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| (Array T@Ref T@Field_3492_7421 T@FrameType)) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| (Array T@Ref T@Field_3492_7437 T@PolymorphicMapType_3981)) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| (Array T@Ref T@Field_7420_53 Bool)) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| (Array T@Ref T@Field_7420_3506 T@Ref)) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| (Array T@Ref T@Field_7420_7421 T@FrameType)) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| (Array T@Ref T@Field_7432_7437 T@PolymorphicMapType_3981)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3432 T@PolymorphicMapType_3432) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3432 T@PolymorphicMapType_3432) Bool)
(declare-fun state (T@PolymorphicMapType_3432 T@PolymorphicMapType_3453) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3453) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3432 T@PolymorphicMapType_3432 T@PolymorphicMapType_3453) Bool)
(declare-fun IsPredicateField_1824_1825 (T@Field_7420_7421) Bool)
(declare-fun HasDirectPerm_7420_7421 (T@PolymorphicMapType_3453 T@Ref T@Field_7420_7421) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_1824 (T@Field_7420_7421) T@Field_7432_7437)
(declare-fun IsPredicateField_3492_11007 (T@Field_3492_7421) Bool)
(declare-fun HasDirectPerm_3492_7421 (T@PolymorphicMapType_3453 T@Ref T@Field_3492_7421) Bool)
(declare-fun PredicateMaskField_3492 (T@Field_3492_7421) T@Field_3492_7437)
(declare-fun IsWandField_7420_14308 (T@Field_7420_7421) Bool)
(declare-fun WandMaskField_7420 (T@Field_7420_7421) T@Field_7432_7437)
(declare-fun IsWandField_3492_13951 (T@Field_3492_7421) Bool)
(declare-fun WandMaskField_3492 (T@Field_3492_7421) T@Field_3492_7437)
(declare-fun ZeroPMask () T@PolymorphicMapType_3981)
(declare-fun pred_1 () T@Field_7420_7421)
(declare-fun getPredWandId_1824_1825 (T@Field_7420_7421) Int)
(declare-fun fun (T@PolymorphicMapType_3432) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_3432)
(declare-fun ZeroMask () T@PolymorphicMapType_3453)
(declare-fun $allocated () T@Field_3492_53)
(declare-fun InsidePredicate_7420_7420 (T@Field_7420_7421 T@FrameType T@Field_7420_7421 T@FrameType) Bool)
(declare-fun InsidePredicate_3492_3492 (T@Field_3492_7421 T@FrameType T@Field_3492_7421 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7420_20063 (T@Field_7432_7437) Bool)
(declare-fun IsWandField_7420_20079 (T@Field_7432_7437) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7420_3506 (T@Field_7420_3506) Bool)
(declare-fun IsWandField_7420_3506 (T@Field_7420_3506) Bool)
(declare-fun IsPredicateField_7420_53 (T@Field_7420_53) Bool)
(declare-fun IsWandField_7420_53 (T@Field_7420_53) Bool)
(declare-fun IsPredicateField_3492_19400 (T@Field_3492_7437) Bool)
(declare-fun IsWandField_3492_19416 (T@Field_3492_7437) Bool)
(declare-fun IsPredicateField_3492_3506 (T@Field_3505_3506) Bool)
(declare-fun IsWandField_3492_3506 (T@Field_3505_3506) Bool)
(declare-fun IsPredicateField_3492_53 (T@Field_3492_53) Bool)
(declare-fun IsWandField_3492_53 (T@Field_3492_53) Bool)
(declare-fun HasDirectPerm_7420_10719 (T@PolymorphicMapType_3453 T@Ref T@Field_7432_7437) Bool)
(declare-fun HasDirectPerm_7420_3506 (T@PolymorphicMapType_3453 T@Ref T@Field_7420_3506) Bool)
(declare-fun HasDirectPerm_7420_53 (T@PolymorphicMapType_3453 T@Ref T@Field_7420_53) Bool)
(declare-fun HasDirectPerm_3492_9762 (T@PolymorphicMapType_3453 T@Ref T@Field_3492_7437) Bool)
(declare-fun HasDirectPerm_3492_3506 (T@PolymorphicMapType_3453 T@Ref T@Field_3505_3506) Bool)
(declare-fun HasDirectPerm_3492_53 (T@PolymorphicMapType_3453 T@Ref T@Field_3492_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3453 T@PolymorphicMapType_3453 T@PolymorphicMapType_3453) Bool)
(declare-fun |fun'| (T@PolymorphicMapType_3432) Bool)
(declare-fun |fun#frame| (T@FrameType) Bool)
(declare-fun dummyFunction_1315 (Bool) Bool)
(declare-fun |fun#triggerStateless| () Bool)
(declare-fun |pred#trigger_1824| (T@PolymorphicMapType_3432 T@Field_7420_7421) Bool)
(declare-fun |pred#everUsed_1824| (T@Field_7420_7421) Bool)
(declare-fun |pred#sm| () T@Field_7432_7437)
(declare-fun InsidePredicate_7420_3492 (T@Field_7420_7421 T@FrameType T@Field_3492_7421 T@FrameType) Bool)
(declare-fun InsidePredicate_3492_7420 (T@Field_3492_7421 T@FrameType T@Field_7420_7421 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3432) (Heap1 T@PolymorphicMapType_3432) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3432) (Mask T@PolymorphicMapType_3453) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3432) (ExhaleHeap T@PolymorphicMapType_3432) (Mask@@0 T@PolymorphicMapType_3453) (pm_f T@Field_7420_7421) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7420_7421 Mask@@0 null pm_f) (IsPredicateField_1824_1825 pm_f)) (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3492_53) ) (!  (=> (select (|PolymorphicMapType_3981_3492_53#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@0) null (PredicateMaskField_1824 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@0) o2 f_2) (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3505_3506) ) (!  (=> (select (|PolymorphicMapType_3981_3492_3506#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@0) null (PredicateMaskField_1824 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@0) o2@@0 f_2@@0) (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3492_7421) ) (!  (=> (select (|PolymorphicMapType_3981_3492_7421#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@0) null (PredicateMaskField_1824 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@0) o2@@1 f_2@@1) (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3492_7437) ) (!  (=> (select (|PolymorphicMapType_3981_3492_12293#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@0) null (PredicateMaskField_1824 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@0) o2@@2 f_2@@2) (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_7420_53) ) (!  (=> (select (|PolymorphicMapType_3981_7420_53#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@0) null (PredicateMaskField_1824 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@0) o2@@3 f_2@@3) (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_7420_3506) ) (!  (=> (select (|PolymorphicMapType_3981_7420_3506#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@0) null (PredicateMaskField_1824 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@0) o2@@4 f_2@@4) (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_7420_7421) ) (!  (=> (select (|PolymorphicMapType_3981_7420_7421#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@0) null (PredicateMaskField_1824 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@0) o2@@5 f_2@@5) (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_7432_7437) ) (!  (=> (select (|PolymorphicMapType_3981_7420_13143#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@0) null (PredicateMaskField_1824 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@0) o2@@6 f_2@@6) (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_1824_1825 pm_f))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3432) (ExhaleHeap@@0 T@PolymorphicMapType_3432) (Mask@@1 T@PolymorphicMapType_3453) (pm_f@@0 T@Field_3492_7421) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3492_7421 Mask@@1 null pm_f@@0) (IsPredicateField_3492_11007 pm_f@@0)) (and (and (and (and (and (and (and (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3492_53) ) (!  (=> (select (|PolymorphicMapType_3981_3492_53#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@1) null (PredicateMaskField_3492 pm_f@@0))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@1) o2@@7 f_2@@7) (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@7 f_2@@7))
)) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3505_3506) ) (!  (=> (select (|PolymorphicMapType_3981_3492_3506#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@1) null (PredicateMaskField_3492 pm_f@@0))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@1) o2@@8 f_2@@8) (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_3492_7421) ) (!  (=> (select (|PolymorphicMapType_3981_3492_7421#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@1) null (PredicateMaskField_3492 pm_f@@0))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@1) o2@@9 f_2@@9) (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_3492_7437) ) (!  (=> (select (|PolymorphicMapType_3981_3492_12293#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@1) null (PredicateMaskField_3492 pm_f@@0))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@1) o2@@10 f_2@@10) (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_7420_53) ) (!  (=> (select (|PolymorphicMapType_3981_7420_53#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@1) null (PredicateMaskField_3492 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@1) o2@@11 f_2@@11) (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_7420_3506) ) (!  (=> (select (|PolymorphicMapType_3981_7420_3506#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@1) null (PredicateMaskField_3492 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@1) o2@@12 f_2@@12) (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_7420_7421) ) (!  (=> (select (|PolymorphicMapType_3981_7420_7421#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@1) null (PredicateMaskField_3492 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@1) o2@@13 f_2@@13) (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_7432_7437) ) (!  (=> (select (|PolymorphicMapType_3981_7420_13143#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@1) null (PredicateMaskField_3492 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@1) o2@@14 f_2@@14) (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@0) o2@@14 f_2@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3492_11007 pm_f@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3432) (ExhaleHeap@@1 T@PolymorphicMapType_3432) (Mask@@2 T@PolymorphicMapType_3453) (pm_f@@1 T@Field_7420_7421) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7420_7421 Mask@@2 null pm_f@@1) (IsWandField_7420_14308 pm_f@@1)) (and (and (and (and (and (and (and (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_3492_53) ) (!  (=> (select (|PolymorphicMapType_3981_3492_53#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@2) null (WandMaskField_7420 pm_f@@1))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@2) o2@@15 f_2@@15) (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@15 f_2@@15)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@15 f_2@@15))
)) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_3505_3506) ) (!  (=> (select (|PolymorphicMapType_3981_3492_3506#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@2) null (WandMaskField_7420 pm_f@@1))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@2) o2@@16 f_2@@16) (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@16 f_2@@16)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_3492_7421) ) (!  (=> (select (|PolymorphicMapType_3981_3492_7421#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@2) null (WandMaskField_7420 pm_f@@1))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@2) o2@@17 f_2@@17) (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@17 f_2@@17)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_3492_7437) ) (!  (=> (select (|PolymorphicMapType_3981_3492_12293#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@2) null (WandMaskField_7420 pm_f@@1))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@2) o2@@18 f_2@@18) (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@18 f_2@@18)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_7420_53) ) (!  (=> (select (|PolymorphicMapType_3981_7420_53#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@2) null (WandMaskField_7420 pm_f@@1))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@2) o2@@19 f_2@@19) (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_7420_3506) ) (!  (=> (select (|PolymorphicMapType_3981_7420_3506#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@2) null (WandMaskField_7420 pm_f@@1))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@2) o2@@20 f_2@@20) (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_7420_7421) ) (!  (=> (select (|PolymorphicMapType_3981_7420_7421#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@2) null (WandMaskField_7420 pm_f@@1))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@2) o2@@21 f_2@@21) (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_7432_7437) ) (!  (=> (select (|PolymorphicMapType_3981_7420_13143#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@2) null (WandMaskField_7420 pm_f@@1))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@2) o2@@22 f_2@@22) (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@1) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_7420_14308 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3432) (ExhaleHeap@@2 T@PolymorphicMapType_3432) (Mask@@3 T@PolymorphicMapType_3453) (pm_f@@2 T@Field_3492_7421) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3492_7421 Mask@@3 null pm_f@@2) (IsWandField_3492_13951 pm_f@@2)) (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_3492_53) ) (!  (=> (select (|PolymorphicMapType_3981_3492_53#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@3) null (WandMaskField_3492 pm_f@@2))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@3) o2@@23 f_2@@23) (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_3505_3506) ) (!  (=> (select (|PolymorphicMapType_3981_3492_3506#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@3) null (WandMaskField_3492 pm_f@@2))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@3) o2@@24 f_2@@24) (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_3492_7421) ) (!  (=> (select (|PolymorphicMapType_3981_3492_7421#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@3) null (WandMaskField_3492 pm_f@@2))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@3) o2@@25 f_2@@25) (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_3492_7437) ) (!  (=> (select (|PolymorphicMapType_3981_3492_12293#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@3) null (WandMaskField_3492 pm_f@@2))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@3) o2@@26 f_2@@26) (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_7420_53) ) (!  (=> (select (|PolymorphicMapType_3981_7420_53#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@3) null (WandMaskField_3492 pm_f@@2))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@3) o2@@27 f_2@@27) (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_7420_3506) ) (!  (=> (select (|PolymorphicMapType_3981_7420_3506#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@3) null (WandMaskField_3492 pm_f@@2))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@3) o2@@28 f_2@@28) (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_7420_7421) ) (!  (=> (select (|PolymorphicMapType_3981_7420_7421#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@3) null (WandMaskField_3492 pm_f@@2))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@3) o2@@29 f_2@@29) (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_7432_7437) ) (!  (=> (select (|PolymorphicMapType_3981_7420_13143#PolymorphicMapType_3981| (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@3) null (WandMaskField_3492 pm_f@@2))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@3) o2@@30 f_2@@30) (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@2) o2@@30 f_2@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3492_13951 pm_f@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3432) (Heap1@@0 T@PolymorphicMapType_3432) (Heap2 T@PolymorphicMapType_3432) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7432_7437) ) (!  (not (select (|PolymorphicMapType_3981_7420_13143#PolymorphicMapType_3981| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3981_7420_13143#PolymorphicMapType_3981| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7420_7421) ) (!  (not (select (|PolymorphicMapType_3981_7420_7421#PolymorphicMapType_3981| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3981_7420_7421#PolymorphicMapType_3981| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7420_3506) ) (!  (not (select (|PolymorphicMapType_3981_7420_3506#PolymorphicMapType_3981| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3981_7420_3506#PolymorphicMapType_3981| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7420_53) ) (!  (not (select (|PolymorphicMapType_3981_7420_53#PolymorphicMapType_3981| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3981_7420_53#PolymorphicMapType_3981| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3492_7437) ) (!  (not (select (|PolymorphicMapType_3981_3492_12293#PolymorphicMapType_3981| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3981_3492_12293#PolymorphicMapType_3981| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3492_7421) ) (!  (not (select (|PolymorphicMapType_3981_3492_7421#PolymorphicMapType_3981| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3981_3492_7421#PolymorphicMapType_3981| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3505_3506) ) (!  (not (select (|PolymorphicMapType_3981_3492_3506#PolymorphicMapType_3981| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3981_3492_3506#PolymorphicMapType_3981| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_3492_53) ) (!  (not (select (|PolymorphicMapType_3981_3492_53#PolymorphicMapType_3981| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3981_3492_53#PolymorphicMapType_3981| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (IsPredicateField_1824_1825 pred_1))
(assert (= (getPredWandId_1824_1825 pred_1) 0))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3432) (ExhaleHeap@@3 T@PolymorphicMapType_3432) (Mask@@4 T@PolymorphicMapType_3453) (pm_f@@3 T@Field_7420_7421) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7420_7421 Mask@@4 null pm_f@@3) (IsPredicateField_1824_1825 pm_f@@3)) (= (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@4) null (PredicateMaskField_1824 pm_f@@3)) (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@3) null (PredicateMaskField_1824 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_1824_1825 pm_f@@3) (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@3) null (PredicateMaskField_1824 pm_f@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3432) (ExhaleHeap@@4 T@PolymorphicMapType_3432) (Mask@@5 T@PolymorphicMapType_3453) (pm_f@@4 T@Field_3492_7421) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3492_7421 Mask@@5 null pm_f@@4) (IsPredicateField_3492_11007 pm_f@@4)) (= (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@5) null (PredicateMaskField_3492 pm_f@@4)) (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@4) null (PredicateMaskField_3492 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3492_11007 pm_f@@4) (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@4) null (PredicateMaskField_3492 pm_f@@4)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3432) (ExhaleHeap@@5 T@PolymorphicMapType_3432) (Mask@@6 T@PolymorphicMapType_3453) (pm_f@@5 T@Field_7420_7421) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7420_7421 Mask@@6 null pm_f@@5) (IsWandField_7420_14308 pm_f@@5)) (= (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@6) null (WandMaskField_7420 pm_f@@5)) (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@5) null (WandMaskField_7420 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (IsWandField_7420_14308 pm_f@@5) (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@5) null (WandMaskField_7420 pm_f@@5)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3432) (ExhaleHeap@@6 T@PolymorphicMapType_3432) (Mask@@7 T@PolymorphicMapType_3453) (pm_f@@6 T@Field_3492_7421) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3492_7421 Mask@@7 null pm_f@@6) (IsWandField_3492_13951 pm_f@@6)) (= (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@7) null (WandMaskField_3492 pm_f@@6)) (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@6) null (WandMaskField_3492 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (IsWandField_3492_13951 pm_f@@6) (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@6) null (WandMaskField_3492 pm_f@@6)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3432) (Mask@@8 T@PolymorphicMapType_3453) ) (!  (=> (and (state Heap@@8 Mask@@8) (< AssumeFunctionsAbove 0)) (fun Heap@@8))
 :qid |stdinbpl.206:15|
 :skolemid |24|
 :pattern ( (state Heap@@8 Mask@@8) (fun Heap@@8))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3432) (ExhaleHeap@@7 T@PolymorphicMapType_3432) (Mask@@9 T@PolymorphicMapType_3453) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@9) o_1 $allocated) (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_7420_7421) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7420_7420 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7420_7420 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3492_7421) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3492_3492 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3492_3492 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3432) (ExhaleHeap@@8 T@PolymorphicMapType_3432) (Mask@@10 T@PolymorphicMapType_3453) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3453) (o_2@@7 T@Ref) (f_4@@7 T@Field_7432_7437) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_7420_20063 f_4@@7))) (not (IsWandField_7420_20079 f_4@@7))) (<= (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3453) (o_2@@8 T@Ref) (f_4@@8 T@Field_7420_7421) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_1824_1825 f_4@@8))) (not (IsWandField_7420_14308 f_4@@8))) (<= (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3453) (o_2@@9 T@Ref) (f_4@@9 T@Field_7420_3506) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| Mask@@13) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7420_3506 f_4@@9))) (not (IsWandField_7420_3506 f_4@@9))) (<= (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| Mask@@13) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| Mask@@13) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3453) (o_2@@10 T@Ref) (f_4@@10 T@Field_7420_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| Mask@@14) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_7420_53 f_4@@10))) (not (IsWandField_7420_53 f_4@@10))) (<= (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| Mask@@14) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| Mask@@14) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3453) (o_2@@11 T@Ref) (f_4@@11 T@Field_3492_7437) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| Mask@@15) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3492_19400 f_4@@11))) (not (IsWandField_3492_19416 f_4@@11))) (<= (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| Mask@@15) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| Mask@@15) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3453) (o_2@@12 T@Ref) (f_4@@12 T@Field_3492_7421) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| Mask@@16) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3492_11007 f_4@@12))) (not (IsWandField_3492_13951 f_4@@12))) (<= (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| Mask@@16) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| Mask@@16) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3453) (o_2@@13 T@Ref) (f_4@@13 T@Field_3505_3506) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| Mask@@17) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3492_3506 f_4@@13))) (not (IsWandField_3492_3506 f_4@@13))) (<= (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| Mask@@17) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| Mask@@17) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_3453) (o_2@@14 T@Ref) (f_4@@14 T@Field_3492_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| Mask@@18) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3492_53 f_4@@14))) (not (IsWandField_3492_53 f_4@@14))) (<= (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| Mask@@18) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| Mask@@18) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_3453) (o_2@@15 T@Ref) (f_4@@15 T@Field_7432_7437) ) (! (= (HasDirectPerm_7420_10719 Mask@@19 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| Mask@@19) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7420_10719 Mask@@19 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_3453) (o_2@@16 T@Ref) (f_4@@16 T@Field_7420_7421) ) (! (= (HasDirectPerm_7420_7421 Mask@@20 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| Mask@@20) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7420_7421 Mask@@20 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_3453) (o_2@@17 T@Ref) (f_4@@17 T@Field_7420_3506) ) (! (= (HasDirectPerm_7420_3506 Mask@@21 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| Mask@@21) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7420_3506 Mask@@21 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_3453) (o_2@@18 T@Ref) (f_4@@18 T@Field_7420_53) ) (! (= (HasDirectPerm_7420_53 Mask@@22 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| Mask@@22) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7420_53 Mask@@22 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_3453) (o_2@@19 T@Ref) (f_4@@19 T@Field_3492_7437) ) (! (= (HasDirectPerm_3492_9762 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3492_9762 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_3453) (o_2@@20 T@Ref) (f_4@@20 T@Field_3492_7421) ) (! (= (HasDirectPerm_3492_7421 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3492_7421 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_3453) (o_2@@21 T@Ref) (f_4@@21 T@Field_3505_3506) ) (! (= (HasDirectPerm_3492_3506 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3492_3506 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_3453) (o_2@@22 T@Ref) (f_4@@22 T@Field_3492_53) ) (! (= (HasDirectPerm_3492_53 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3492_53 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3432) (ExhaleHeap@@9 T@PolymorphicMapType_3432) (Mask@@27 T@PolymorphicMapType_3453) (o_1@@0 T@Ref) (f_2@@31 T@Field_7432_7437) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_7420_10719 Mask@@27 o_1@@0 f_2@@31) (= (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@11) o_1@@0 f_2@@31) (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@9) o_1@@0 f_2@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| ExhaleHeap@@9) o_1@@0 f_2@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3432) (ExhaleHeap@@10 T@PolymorphicMapType_3432) (Mask@@28 T@PolymorphicMapType_3453) (o_1@@1 T@Ref) (f_2@@32 T@Field_7420_7421) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@28) (=> (HasDirectPerm_7420_7421 Mask@@28 o_1@@1 f_2@@32) (= (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@12) o_1@@1 f_2@@32) (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| ExhaleHeap@@10) o_1@@1 f_2@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@28) (select (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| ExhaleHeap@@10) o_1@@1 f_2@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3432) (ExhaleHeap@@11 T@PolymorphicMapType_3432) (Mask@@29 T@PolymorphicMapType_3453) (o_1@@2 T@Ref) (f_2@@33 T@Field_7420_3506) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@29) (=> (HasDirectPerm_7420_3506 Mask@@29 o_1@@2 f_2@@33) (= (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@13) o_1@@2 f_2@@33) (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| ExhaleHeap@@11) o_1@@2 f_2@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@29) (select (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| ExhaleHeap@@11) o_1@@2 f_2@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3432) (ExhaleHeap@@12 T@PolymorphicMapType_3432) (Mask@@30 T@PolymorphicMapType_3453) (o_1@@3 T@Ref) (f_2@@34 T@Field_7420_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@30) (=> (HasDirectPerm_7420_53 Mask@@30 o_1@@3 f_2@@34) (= (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@14) o_1@@3 f_2@@34) (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| ExhaleHeap@@12) o_1@@3 f_2@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@30) (select (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| ExhaleHeap@@12) o_1@@3 f_2@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3432) (ExhaleHeap@@13 T@PolymorphicMapType_3432) (Mask@@31 T@PolymorphicMapType_3453) (o_1@@4 T@Ref) (f_2@@35 T@Field_3492_7437) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@31) (=> (HasDirectPerm_3492_9762 Mask@@31 o_1@@4 f_2@@35) (= (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@15) o_1@@4 f_2@@35) (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@13) o_1@@4 f_2@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@31) (select (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| ExhaleHeap@@13) o_1@@4 f_2@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3432) (ExhaleHeap@@14 T@PolymorphicMapType_3432) (Mask@@32 T@PolymorphicMapType_3453) (o_1@@5 T@Ref) (f_2@@36 T@Field_3492_7421) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@32) (=> (HasDirectPerm_3492_7421 Mask@@32 o_1@@5 f_2@@36) (= (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@16) o_1@@5 f_2@@36) (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| ExhaleHeap@@14) o_1@@5 f_2@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@32) (select (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| ExhaleHeap@@14) o_1@@5 f_2@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3432) (ExhaleHeap@@15 T@PolymorphicMapType_3432) (Mask@@33 T@PolymorphicMapType_3453) (o_1@@6 T@Ref) (f_2@@37 T@Field_3505_3506) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@33) (=> (HasDirectPerm_3492_3506 Mask@@33 o_1@@6 f_2@@37) (= (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@17) o_1@@6 f_2@@37) (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| ExhaleHeap@@15) o_1@@6 f_2@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@33) (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| ExhaleHeap@@15) o_1@@6 f_2@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3432) (ExhaleHeap@@16 T@PolymorphicMapType_3432) (Mask@@34 T@PolymorphicMapType_3453) (o_1@@7 T@Ref) (f_2@@38 T@Field_3492_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@34) (=> (HasDirectPerm_3492_53 Mask@@34 o_1@@7 f_2@@38) (= (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@18) o_1@@7 f_2@@38) (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap@@16) o_1@@7 f_2@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@34) (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| ExhaleHeap@@16) o_1@@7 f_2@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_7432_7437) ) (! (= (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_7420_7421) ) (! (= (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_7420_3506) ) (! (= (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_7420_53) ) (! (= (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_3492_7437) ) (! (= (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_3492_7421) ) (! (= (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3505_3506) ) (! (= (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_3492_53) ) (! (= (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3453) (SummandMask1 T@PolymorphicMapType_3453) (SummandMask2 T@PolymorphicMapType_3453) (o_2@@31 T@Ref) (f_4@@31 T@Field_7432_7437) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3453_7420_18225#PolymorphicMapType_3453| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3453) (SummandMask1@@0 T@PolymorphicMapType_3453) (SummandMask2@@0 T@PolymorphicMapType_3453) (o_2@@32 T@Ref) (f_4@@32 T@Field_7420_7421) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3453_7420_7421#PolymorphicMapType_3453| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3453) (SummandMask1@@1 T@PolymorphicMapType_3453) (SummandMask2@@1 T@PolymorphicMapType_3453) (o_2@@33 T@Ref) (f_4@@33 T@Field_7420_3506) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3453_7420_3506#PolymorphicMapType_3453| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3453) (SummandMask1@@2 T@PolymorphicMapType_3453) (SummandMask2@@2 T@PolymorphicMapType_3453) (o_2@@34 T@Ref) (f_4@@34 T@Field_7420_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3453_7420_53#PolymorphicMapType_3453| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3453) (SummandMask1@@3 T@PolymorphicMapType_3453) (SummandMask2@@3 T@PolymorphicMapType_3453) (o_2@@35 T@Ref) (f_4@@35 T@Field_3492_7437) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3453_3492_17879#PolymorphicMapType_3453| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_3453) (SummandMask1@@4 T@PolymorphicMapType_3453) (SummandMask2@@4 T@PolymorphicMapType_3453) (o_2@@36 T@Ref) (f_4@@36 T@Field_3492_7421) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3453_3492_7421#PolymorphicMapType_3453| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_3453) (SummandMask1@@5 T@PolymorphicMapType_3453) (SummandMask2@@5 T@PolymorphicMapType_3453) (o_2@@37 T@Ref) (f_4@@37 T@Field_3505_3506) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3453_3492_3506#PolymorphicMapType_3453| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_3453) (SummandMask1@@6 T@PolymorphicMapType_3453) (SummandMask2@@6 T@PolymorphicMapType_3453) (o_2@@38 T@Ref) (f_4@@38 T@Field_3492_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3453_3492_53#PolymorphicMapType_3453| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3432) (Mask@@35 T@PolymorphicMapType_3453) ) (!  (=> (state Heap@@19 Mask@@35) (= (|fun'| Heap@@19) (|fun#frame| EmptyFrame)))
 :qid |stdinbpl.213:15|
 :skolemid |25|
 :pattern ( (state Heap@@19 Mask@@35) (|fun'| Heap@@19))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3432) ) (! (dummyFunction_1315 |fun#triggerStateless|)
 :qid |stdinbpl.200:15|
 :skolemid |23|
 :pattern ( (|fun'| Heap@@20))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3432) ) (! (|pred#everUsed_1824| pred_1)
 :qid |stdinbpl.264:15|
 :skolemid |26|
 :pattern ( (|pred#trigger_1824| Heap@@21 pred_1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3432) (o T@Ref) (f_3 T@Field_7432_7437) (v T@PolymorphicMapType_3981) ) (! (succHeap Heap@@22 (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@22) (store (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@22) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@22) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@22) (store (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@22) o f_3 v)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3432) (o@@0 T@Ref) (f_3@@0 T@Field_7420_7421) (v@@0 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@23) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@23) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@23) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@23) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@23) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@23) (store (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@23) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@23) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@23) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@23) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@23) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@23) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@23) (store (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@23) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3432) (o@@1 T@Ref) (f_3@@1 T@Field_7420_3506) (v@@1 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@24) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@24) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@24) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@24) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@24) (store (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@24) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@24) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@24) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@24) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@24) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@24) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@24) (store (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@24) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@24) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3432) (o@@2 T@Ref) (f_3@@2 T@Field_7420_53) (v@@2 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@25) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@25) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@25) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@25) (store (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@25) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@25) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@25) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@25) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@25) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@25) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@25) (store (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@25) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@25) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@25) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3432) (o@@3 T@Ref) (f_3@@3 T@Field_3492_7437) (v@@3 T@PolymorphicMapType_3981) ) (! (succHeap Heap@@26 (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@26) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@26) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@26) (store (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@26) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@26) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@26) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@26) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@26) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@26) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@26) (store (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@26) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@26) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@26) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@26) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_3432) (o@@4 T@Ref) (f_3@@4 T@Field_3492_7421) (v@@4 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@27) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@27) (store (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@27) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@27) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@27) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@27) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@27) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@27) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@27) (store (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@27) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@27) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@27) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@27) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@27) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_3432) (o@@5 T@Ref) (f_3@@5 T@Field_3505_3506) (v@@5 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@28) (store (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@28) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@28) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@28) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@28) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@28) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@28) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3432 (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@28) (store (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@28) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@28) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@28) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@28) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@28) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@28) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_3432) (o@@6 T@Ref) (f_3@@6 T@Field_3492_53) (v@@6 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_3432 (store (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@29) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3432 (store (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@29) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_3492_7421#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_3492_9804#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_7420_53#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_7420_3506#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_7420_7421#PolymorphicMapType_3432| Heap@@29) (|PolymorphicMapType_3432_7420_10761#PolymorphicMapType_3432| Heap@@29)))
)))
(assert (= (PredicateMaskField_1824 pred_1) |pred#sm|))
(assert (forall ((o@@7 T@Ref) (f T@Field_3505_3506) (Heap@@30 T@PolymorphicMapType_3432) ) (!  (=> (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@30) o@@7 $allocated) (select (|PolymorphicMapType_3432_1684_53#PolymorphicMapType_3432| Heap@@30) (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@30) o@@7 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3432_1687_1688#PolymorphicMapType_3432| Heap@@30) o@@7 f))
)))
(assert (forall ((p@@2 T@Field_7420_7421) (v_1@@1 T@FrameType) (q T@Field_7420_7421) (w@@1 T@FrameType) (r T@Field_7420_7421) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7420_7420 p@@2 v_1@@1 q w@@1) (InsidePredicate_7420_7420 q w@@1 r u)) (InsidePredicate_7420_7420 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7420_7420 p@@2 v_1@@1 q w@@1) (InsidePredicate_7420_7420 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_7420_7421) (v_1@@2 T@FrameType) (q@@0 T@Field_7420_7421) (w@@2 T@FrameType) (r@@0 T@Field_3492_7421) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_7420_7420 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7420_3492 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_7420_3492 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7420_7420 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7420_3492 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_7420_7421) (v_1@@3 T@FrameType) (q@@1 T@Field_3492_7421) (w@@3 T@FrameType) (r@@1 T@Field_7420_7421) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_7420_3492 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3492_7420 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_7420_7420 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7420_3492 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3492_7420 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_7420_7421) (v_1@@4 T@FrameType) (q@@2 T@Field_3492_7421) (w@@4 T@FrameType) (r@@2 T@Field_3492_7421) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_7420_3492 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3492_3492 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_7420_3492 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7420_3492 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3492_3492 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3492_7421) (v_1@@5 T@FrameType) (q@@3 T@Field_7420_7421) (w@@5 T@FrameType) (r@@3 T@Field_7420_7421) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3492_7420 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7420_7420 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3492_7420 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3492_7420 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7420_7420 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3492_7421) (v_1@@6 T@FrameType) (q@@4 T@Field_7420_7421) (w@@6 T@FrameType) (r@@4 T@Field_3492_7421) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3492_7420 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7420_3492 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3492_3492 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3492_7420 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7420_3492 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3492_7421) (v_1@@7 T@FrameType) (q@@5 T@Field_3492_7421) (w@@7 T@FrameType) (r@@5 T@Field_7420_7421) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3492_3492 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3492_7420 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3492_7420 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3492_3492 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3492_7420 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3492_7421) (v_1@@8 T@FrameType) (q@@6 T@Field_3492_7421) (w@@8 T@FrameType) (r@@6 T@Field_3492_7421) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3492_3492 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3492_3492 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3492_3492 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3492_3492 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3492_3492 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_3432) ) (!  (and (= (fun Heap@@31) (|fun'| Heap@@31)) (dummyFunction_1315 |fun#triggerStateless|))
 :qid |stdinbpl.196:15|
 :skolemid |22|
 :pattern ( (fun Heap@@31))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |pred#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
