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
(declare-sort T@Field_8524_53 0)
(declare-sort T@Field_8537_8538 0)
(declare-sort T@Field_12216_12217 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14502_14507 0)
(declare-sort T@Field_4453_12217 0)
(declare-sort T@Field_4453_14507 0)
(declare-sort T@Field_12216_4454 0)
(declare-sort T@Field_12216_53 0)
(declare-datatypes ((T@PolymorphicMapType_8485 0)) (((PolymorphicMapType_8485 (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| (Array T@Ref T@Field_12216_12217 Real)) (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| (Array T@Ref T@Field_8537_8538 Real)) (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| (Array T@Ref T@Field_12216_4454 Real)) (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| (Array T@Ref T@Field_12216_53 Real)) (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| (Array T@Ref T@Field_14502_14507 Real)) (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| (Array T@Ref T@Field_4453_12217 Real)) (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| (Array T@Ref T@Field_8524_53 Real)) (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| (Array T@Ref T@Field_4453_14507 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9013 0)) (((PolymorphicMapType_9013 (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (Array T@Ref T@Field_8537_8538 Bool)) (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (Array T@Ref T@Field_8524_53 Bool)) (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (Array T@Ref T@Field_4453_12217 Bool)) (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (Array T@Ref T@Field_4453_14507 Bool)) (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (Array T@Ref T@Field_12216_4454 Bool)) (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (Array T@Ref T@Field_12216_53 Bool)) (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (Array T@Ref T@Field_12216_12217 Bool)) (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (Array T@Ref T@Field_14502_14507 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8464 0)) (((PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| (Array T@Ref T@Field_8524_53 Bool)) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| (Array T@Ref T@Field_8537_8538 T@Ref)) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| (Array T@Ref T@Field_12216_12217 T@FrameType)) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| (Array T@Ref T@Field_14502_14507 T@PolymorphicMapType_9013)) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| (Array T@Ref T@Field_4453_12217 T@FrameType)) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| (Array T@Ref T@Field_4453_14507 T@PolymorphicMapType_9013)) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| (Array T@Ref T@Field_12216_4454 T@Ref)) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| (Array T@Ref T@Field_12216_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_8524_53)
(declare-fun nx () T@Field_8537_8538)
(declare-fun succHeap (T@PolymorphicMapType_8464 T@PolymorphicMapType_8464) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8464 T@PolymorphicMapType_8464) Bool)
(declare-fun state (T@PolymorphicMapType_8464 T@PolymorphicMapType_8485) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8485) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8464 T@PolymorphicMapType_8464 T@PolymorphicMapType_8485) Bool)
(declare-fun IsPredicateField_4512_4513 (T@Field_12216_12217) Bool)
(declare-fun HasDirectPerm_12216_12217 (T@PolymorphicMapType_8485 T@Ref T@Field_12216_12217) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4512 (T@Field_12216_12217) T@Field_14502_14507)
(declare-fun IsPredicateField_4453_29320 (T@Field_4453_12217) Bool)
(declare-fun HasDirectPerm_4453_12217 (T@PolymorphicMapType_8485 T@Ref T@Field_4453_12217) Bool)
(declare-fun PredicateMaskField_4453 (T@Field_4453_12217) T@Field_4453_14507)
(declare-fun IsWandField_12216_32606 (T@Field_12216_12217) Bool)
(declare-fun WandMaskField_12216 (T@Field_12216_12217) T@Field_14502_14507)
(declare-fun IsWandField_4453_32249 (T@Field_4453_12217) Bool)
(declare-fun WandMaskField_4453 (T@Field_4453_12217) T@Field_4453_14507)
(declare-fun ZeroPMask () T@PolymorphicMapType_9013)
(declare-fun |integer2'| (T@PolymorphicMapType_8464 T@Ref Int) Int)
(declare-fun dummyFunction_1416 (Int) Bool)
(declare-fun |integer2#triggerStateless| (T@Ref Int) Int)
(declare-fun Peano (T@Ref) T@Field_12216_12217)
(declare-fun |integer'| (T@PolymorphicMapType_8464 T@Ref) Int)
(declare-fun |integer#triggerStateless| (T@Ref) Int)
(declare-fun |Peano#trigger_4512| (T@PolymorphicMapType_8464 T@Field_12216_12217) Bool)
(declare-fun |Peano#everUsed_4512| (T@Field_12216_12217) Bool)
(declare-fun integer (T@PolymorphicMapType_8464 T@Ref) Int)
(declare-fun |Peano#sm| (T@Ref) T@Field_14502_14507)
(declare-fun dummyHeap () T@PolymorphicMapType_8464)
(declare-fun ZeroMask () T@PolymorphicMapType_8485)
(declare-fun InsidePredicate_8524_8524 (T@Field_4453_12217 T@FrameType T@Field_4453_12217 T@FrameType) Bool)
(declare-fun InsidePredicate_4512_4512 (T@Field_12216_12217 T@FrameType T@Field_12216_12217 T@FrameType) Bool)
(declare-fun IsPredicateField_4453_4454 (T@Field_8537_8538) Bool)
(declare-fun IsWandField_4453_4454 (T@Field_8537_8538) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4453_38317 (T@Field_4453_14507) Bool)
(declare-fun IsWandField_4453_38333 (T@Field_4453_14507) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4453_53 (T@Field_8524_53) Bool)
(declare-fun IsWandField_4453_53 (T@Field_8524_53) Bool)
(declare-fun IsPredicateField_4512_37668 (T@Field_14502_14507) Bool)
(declare-fun IsWandField_4512_37684 (T@Field_14502_14507) Bool)
(declare-fun IsPredicateField_4512_53 (T@Field_12216_53) Bool)
(declare-fun IsWandField_4512_53 (T@Field_12216_53) Bool)
(declare-fun IsPredicateField_4512_4454 (T@Field_12216_4454) Bool)
(declare-fun IsWandField_4512_4454 (T@Field_12216_4454) Bool)
(declare-fun HasDirectPerm_12216_29075 (T@PolymorphicMapType_8485 T@Ref T@Field_14502_14507) Bool)
(declare-fun HasDirectPerm_12216_53 (T@PolymorphicMapType_8485 T@Ref T@Field_12216_53) Bool)
(declare-fun HasDirectPerm_12216_4454 (T@PolymorphicMapType_8485 T@Ref T@Field_12216_4454) Bool)
(declare-fun HasDirectPerm_4453_28135 (T@PolymorphicMapType_8485 T@Ref T@Field_4453_14507) Bool)
(declare-fun HasDirectPerm_4453_53 (T@PolymorphicMapType_8485 T@Ref T@Field_8524_53) Bool)
(declare-fun HasDirectPerm_4453_4454 (T@PolymorphicMapType_8485 T@Ref T@Field_8537_8538) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun integer2 (T@PolymorphicMapType_8464 T@Ref Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_8485 T@PolymorphicMapType_8485 T@PolymorphicMapType_8485) Bool)
(declare-fun |integer2#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |integer#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_4512_4513 (T@Field_12216_12217) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun InsidePredicate_8524_4512 (T@Field_4453_12217 T@FrameType T@Field_12216_12217 T@FrameType) Bool)
(declare-fun InsidePredicate_4512_8524 (T@Field_12216_12217 T@FrameType T@Field_4453_12217 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8464) (Heap1 T@PolymorphicMapType_8464) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8464) (Mask T@PolymorphicMapType_8485) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8464) (ExhaleHeap T@PolymorphicMapType_8464) (Mask@@0 T@PolymorphicMapType_8485) (pm_f_28 T@Field_12216_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12216_12217 Mask@@0 null pm_f_28) (IsPredicateField_4512_4513 pm_f_28)) (and (and (and (and (and (and (and (forall ((o2_28 T@Ref) (f_27 T@Field_8537_8538) ) (!  (=> (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28 f_27) (= (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@0) o2_28 f_27) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap) o2_28 f_27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap) o2_28 f_27))
)) (forall ((o2_28@@0 T@Ref) (f_27@@0 T@Field_8524_53) ) (!  (=> (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@0 f_27@@0) (= (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@0) o2_28@@0 f_27@@0) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap) o2_28@@0 f_27@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap) o2_28@@0 f_27@@0))
))) (forall ((o2_28@@1 T@Ref) (f_27@@1 T@Field_4453_12217) ) (!  (=> (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@1 f_27@@1) (= (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@0) o2_28@@1 f_27@@1) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap) o2_28@@1 f_27@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap) o2_28@@1 f_27@@1))
))) (forall ((o2_28@@2 T@Ref) (f_27@@2 T@Field_4453_14507) ) (!  (=> (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@2 f_27@@2) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@0) o2_28@@2 f_27@@2) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap) o2_28@@2 f_27@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap) o2_28@@2 f_27@@2))
))) (forall ((o2_28@@3 T@Ref) (f_27@@3 T@Field_12216_4454) ) (!  (=> (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@3 f_27@@3) (= (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@0) o2_28@@3 f_27@@3) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap) o2_28@@3 f_27@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap) o2_28@@3 f_27@@3))
))) (forall ((o2_28@@4 T@Ref) (f_27@@4 T@Field_12216_53) ) (!  (=> (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@4 f_27@@4) (= (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@0) o2_28@@4 f_27@@4) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap) o2_28@@4 f_27@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap) o2_28@@4 f_27@@4))
))) (forall ((o2_28@@5 T@Ref) (f_27@@5 T@Field_12216_12217) ) (!  (=> (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@5 f_27@@5) (= (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@0) o2_28@@5 f_27@@5) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap) o2_28@@5 f_27@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap) o2_28@@5 f_27@@5))
))) (forall ((o2_28@@6 T@Ref) (f_27@@6 T@Field_14502_14507) ) (!  (=> (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@6 f_27@@6) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) o2_28@@6 f_27@@6) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap) o2_28@@6 f_27@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap) o2_28@@6 f_27@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4512_4513 pm_f_28))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8464) (ExhaleHeap@@0 T@PolymorphicMapType_8464) (Mask@@1 T@PolymorphicMapType_8485) (pm_f_28@@0 T@Field_4453_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4453_12217 Mask@@1 null pm_f_28@@0) (IsPredicateField_4453_29320 pm_f_28@@0)) (and (and (and (and (and (and (and (forall ((o2_28@@7 T@Ref) (f_27@@7 T@Field_8537_8538) ) (!  (=> (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@7 f_27@@7) (= (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@1) o2_28@@7 f_27@@7) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@7 f_27@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@7 f_27@@7))
)) (forall ((o2_28@@8 T@Ref) (f_27@@8 T@Field_8524_53) ) (!  (=> (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@8 f_27@@8) (= (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@1) o2_28@@8 f_27@@8) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@8 f_27@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@8 f_27@@8))
))) (forall ((o2_28@@9 T@Ref) (f_27@@9 T@Field_4453_12217) ) (!  (=> (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@9 f_27@@9) (= (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@1) o2_28@@9 f_27@@9) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@9 f_27@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@9 f_27@@9))
))) (forall ((o2_28@@10 T@Ref) (f_27@@10 T@Field_4453_14507) ) (!  (=> (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@10 f_27@@10) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) o2_28@@10 f_27@@10) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@10 f_27@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@10 f_27@@10))
))) (forall ((o2_28@@11 T@Ref) (f_27@@11 T@Field_12216_4454) ) (!  (=> (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@11 f_27@@11) (= (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@1) o2_28@@11 f_27@@11) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@11 f_27@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@11 f_27@@11))
))) (forall ((o2_28@@12 T@Ref) (f_27@@12 T@Field_12216_53) ) (!  (=> (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@12 f_27@@12) (= (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@1) o2_28@@12 f_27@@12) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@12 f_27@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@12 f_27@@12))
))) (forall ((o2_28@@13 T@Ref) (f_27@@13 T@Field_12216_12217) ) (!  (=> (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@13 f_27@@13) (= (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@1) o2_28@@13 f_27@@13) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@13 f_27@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@13 f_27@@13))
))) (forall ((o2_28@@14 T@Ref) (f_27@@14 T@Field_14502_14507) ) (!  (=> (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@14 f_27@@14) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@1) o2_28@@14 f_27@@14) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@14 f_27@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@14 f_27@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4453_29320 pm_f_28@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8464) (ExhaleHeap@@1 T@PolymorphicMapType_8464) (Mask@@2 T@PolymorphicMapType_8485) (pm_f_28@@1 T@Field_12216_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12216_12217 Mask@@2 null pm_f_28@@1) (IsWandField_12216_32606 pm_f_28@@1)) (and (and (and (and (and (and (and (forall ((o2_28@@15 T@Ref) (f_27@@15 T@Field_8537_8538) ) (!  (=> (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@15 f_27@@15) (= (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@2) o2_28@@15 f_27@@15) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@15 f_27@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@15 f_27@@15))
)) (forall ((o2_28@@16 T@Ref) (f_27@@16 T@Field_8524_53) ) (!  (=> (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@16 f_27@@16) (= (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@2) o2_28@@16 f_27@@16) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@16 f_27@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@16 f_27@@16))
))) (forall ((o2_28@@17 T@Ref) (f_27@@17 T@Field_4453_12217) ) (!  (=> (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@17 f_27@@17) (= (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@2) o2_28@@17 f_27@@17) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@17 f_27@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@17 f_27@@17))
))) (forall ((o2_28@@18 T@Ref) (f_27@@18 T@Field_4453_14507) ) (!  (=> (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@18 f_27@@18) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@2) o2_28@@18 f_27@@18) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@18 f_27@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@18 f_27@@18))
))) (forall ((o2_28@@19 T@Ref) (f_27@@19 T@Field_12216_4454) ) (!  (=> (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@19 f_27@@19) (= (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@2) o2_28@@19 f_27@@19) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@19 f_27@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@19 f_27@@19))
))) (forall ((o2_28@@20 T@Ref) (f_27@@20 T@Field_12216_53) ) (!  (=> (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@20 f_27@@20) (= (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@2) o2_28@@20 f_27@@20) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@20 f_27@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@20 f_27@@20))
))) (forall ((o2_28@@21 T@Ref) (f_27@@21 T@Field_12216_12217) ) (!  (=> (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@21 f_27@@21) (= (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@2) o2_28@@21 f_27@@21) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@21 f_27@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@21 f_27@@21))
))) (forall ((o2_28@@22 T@Ref) (f_27@@22 T@Field_14502_14507) ) (!  (=> (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@22 f_27@@22) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) o2_28@@22 f_27@@22) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@22 f_27@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@22 f_27@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_12216_32606 pm_f_28@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8464) (ExhaleHeap@@2 T@PolymorphicMapType_8464) (Mask@@3 T@PolymorphicMapType_8485) (pm_f_28@@2 T@Field_4453_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4453_12217 Mask@@3 null pm_f_28@@2) (IsWandField_4453_32249 pm_f_28@@2)) (and (and (and (and (and (and (and (forall ((o2_28@@23 T@Ref) (f_27@@23 T@Field_8537_8538) ) (!  (=> (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@23 f_27@@23) (= (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@3) o2_28@@23 f_27@@23) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@23 f_27@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@23 f_27@@23))
)) (forall ((o2_28@@24 T@Ref) (f_27@@24 T@Field_8524_53) ) (!  (=> (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@24 f_27@@24) (= (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@3) o2_28@@24 f_27@@24) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@24 f_27@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@24 f_27@@24))
))) (forall ((o2_28@@25 T@Ref) (f_27@@25 T@Field_4453_12217) ) (!  (=> (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@25 f_27@@25) (= (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@3) o2_28@@25 f_27@@25) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@25 f_27@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@25 f_27@@25))
))) (forall ((o2_28@@26 T@Ref) (f_27@@26 T@Field_4453_14507) ) (!  (=> (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@26 f_27@@26) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) o2_28@@26 f_27@@26) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@26 f_27@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@26 f_27@@26))
))) (forall ((o2_28@@27 T@Ref) (f_27@@27 T@Field_12216_4454) ) (!  (=> (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@27 f_27@@27) (= (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@3) o2_28@@27 f_27@@27) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@27 f_27@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@27 f_27@@27))
))) (forall ((o2_28@@28 T@Ref) (f_27@@28 T@Field_12216_53) ) (!  (=> (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@28 f_27@@28) (= (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@3) o2_28@@28 f_27@@28) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@28 f_27@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@28 f_27@@28))
))) (forall ((o2_28@@29 T@Ref) (f_27@@29 T@Field_12216_12217) ) (!  (=> (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@29 f_27@@29) (= (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@3) o2_28@@29 f_27@@29) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@29 f_27@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@29 f_27@@29))
))) (forall ((o2_28@@30 T@Ref) (f_27@@30 T@Field_14502_14507) ) (!  (=> (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@30 f_27@@30) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@3) o2_28@@30 f_27@@30) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@30 f_27@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@30 f_27@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4453_32249 pm_f_28@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8464) (Heap1@@0 T@PolymorphicMapType_8464) (Heap2 T@PolymorphicMapType_8464) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14502_14507) ) (!  (not (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12216_12217) ) (!  (not (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12216_53) ) (!  (not (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12216_4454) ) (!  (not (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4453_14507) ) (!  (not (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4453_12217) ) (!  (not (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8524_53) ) (!  (not (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8537_8538) ) (!  (not (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8464) (r_1 T@Ref) (k Int) ) (! (dummyFunction_1416 (|integer2#triggerStateless| r_1 k))
 :qid |stdinbpl.323:15|
 :skolemid |28|
 :pattern ( (|integer2'| Heap@@4 r_1 k))
)))
(assert (forall ((r_1@@0 T@Ref) ) (! (IsPredicateField_4512_4513 (Peano r_1@@0))
 :qid |stdinbpl.402:15|
 :skolemid |32|
 :pattern ( (Peano r_1@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8464) (r_1@@1 T@Ref) ) (! (dummyFunction_1416 (|integer#triggerStateless| r_1@@1))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|integer'| Heap@@5 r_1@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8464) (r_1@@2 T@Ref) ) (! (|Peano#everUsed_4512| (Peano r_1@@2))
 :qid |stdinbpl.421:15|
 :skolemid |36|
 :pattern ( (|Peano#trigger_4512| Heap@@6 (Peano r_1@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8464) (r_1@@3 T@Ref) ) (!  (and (= (integer Heap@@7 r_1@@3) (|integer'| Heap@@7 r_1@@3)) (dummyFunction_1416 (|integer#triggerStateless| r_1@@3)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (integer Heap@@7 r_1@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8464) (ExhaleHeap@@3 T@PolymorphicMapType_8464) (Mask@@4 T@PolymorphicMapType_8485) (pm_f_28@@3 T@Field_12216_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12216_12217 Mask@@4 null pm_f_28@@3) (IsPredicateField_4512_4513 pm_f_28@@3)) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@8) null (PredicateMaskField_4512 pm_f_28@@3)) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@3) null (PredicateMaskField_4512 pm_f_28@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4512_4513 pm_f_28@@3) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@3) null (PredicateMaskField_4512 pm_f_28@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8464) (ExhaleHeap@@4 T@PolymorphicMapType_8464) (Mask@@5 T@PolymorphicMapType_8485) (pm_f_28@@4 T@Field_4453_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4453_12217 Mask@@5 null pm_f_28@@4) (IsPredicateField_4453_29320 pm_f_28@@4)) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@9) null (PredicateMaskField_4453 pm_f_28@@4)) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@4) null (PredicateMaskField_4453 pm_f_28@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4453_29320 pm_f_28@@4) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@4) null (PredicateMaskField_4453 pm_f_28@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8464) (ExhaleHeap@@5 T@PolymorphicMapType_8464) (Mask@@6 T@PolymorphicMapType_8485) (pm_f_28@@5 T@Field_12216_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_12216_12217 Mask@@6 null pm_f_28@@5) (IsWandField_12216_32606 pm_f_28@@5)) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@10) null (WandMaskField_12216 pm_f_28@@5)) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@5) null (WandMaskField_12216 pm_f_28@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (IsWandField_12216_32606 pm_f_28@@5) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@5) null (WandMaskField_12216 pm_f_28@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8464) (ExhaleHeap@@6 T@PolymorphicMapType_8464) (Mask@@7 T@PolymorphicMapType_8485) (pm_f_28@@6 T@Field_4453_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4453_12217 Mask@@7 null pm_f_28@@6) (IsWandField_4453_32249 pm_f_28@@6)) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@11) null (WandMaskField_4453 pm_f_28@@6)) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@6) null (WandMaskField_4453 pm_f_28@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (IsWandField_4453_32249 pm_f_28@@6) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@6) null (WandMaskField_4453 pm_f_28@@6)))
)))
(assert (forall ((r_1@@4 T@Ref) (r2 T@Ref) ) (!  (=> (= (Peano r_1@@4) (Peano r2)) (= r_1@@4 r2))
 :qid |stdinbpl.412:15|
 :skolemid |34|
 :pattern ( (Peano r_1@@4) (Peano r2))
)))
(assert (forall ((r_1@@5 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|Peano#sm| r_1@@5) (|Peano#sm| r2@@0)) (= r_1@@5 r2@@0))
 :qid |stdinbpl.416:15|
 :skolemid |35|
 :pattern ( (|Peano#sm| r_1@@5) (|Peano#sm| r2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8464) (ExhaleHeap@@7 T@PolymorphicMapType_8464) (Mask@@8 T@PolymorphicMapType_8485) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@12) o_41 $allocated) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@7) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@7) o_41 $allocated))
)))
(assert (forall ((p T@Field_4453_12217) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8524_8524 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8524_8524 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12216_12217) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4512_4512 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4512_4512 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4453_4454 nx)))
(assert  (not (IsWandField_4453_4454 nx)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8464) (ExhaleHeap@@8 T@PolymorphicMapType_8464) (Mask@@9 T@PolymorphicMapType_8485) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@13 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8485) (o_2@@7 T@Ref) (f_4@@7 T@Field_4453_14507) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4453_38317 f_4@@7))) (not (IsWandField_4453_38333 f_4@@7))) (<= (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8485) (o_2@@8 T@Ref) (f_4@@8 T@Field_8524_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4453_53 f_4@@8))) (not (IsWandField_4453_53 f_4@@8))) (<= (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8485) (o_2@@9 T@Ref) (f_4@@9 T@Field_8537_8538) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4453_4454 f_4@@9))) (not (IsWandField_4453_4454 f_4@@9))) (<= (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8485) (o_2@@10 T@Ref) (f_4@@10 T@Field_4453_12217) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4453_29320 f_4@@10))) (not (IsWandField_4453_32249 f_4@@10))) (<= (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8485) (o_2@@11 T@Ref) (f_4@@11 T@Field_14502_14507) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4512_37668 f_4@@11))) (not (IsWandField_4512_37684 f_4@@11))) (<= (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8485) (o_2@@12 T@Ref) (f_4@@12 T@Field_12216_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4512_53 f_4@@12))) (not (IsWandField_4512_53 f_4@@12))) (<= (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8485) (o_2@@13 T@Ref) (f_4@@13 T@Field_12216_4454) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4512_4454 f_4@@13))) (not (IsWandField_4512_4454 f_4@@13))) (<= (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8485) (o_2@@14 T@Ref) (f_4@@14 T@Field_12216_12217) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4512_4513 f_4@@14))) (not (IsWandField_12216_32606 f_4@@14))) (<= (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8485) (o_2@@15 T@Ref) (f_4@@15 T@Field_14502_14507) ) (! (= (HasDirectPerm_12216_29075 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12216_29075 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8485) (o_2@@16 T@Ref) (f_4@@16 T@Field_12216_12217) ) (! (= (HasDirectPerm_12216_12217 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12216_12217 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8485) (o_2@@17 T@Ref) (f_4@@17 T@Field_12216_53) ) (! (= (HasDirectPerm_12216_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12216_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8485) (o_2@@18 T@Ref) (f_4@@18 T@Field_12216_4454) ) (! (= (HasDirectPerm_12216_4454 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12216_4454 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8485) (o_2@@19 T@Ref) (f_4@@19 T@Field_4453_14507) ) (! (= (HasDirectPerm_4453_28135 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4453_28135 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8485) (o_2@@20 T@Ref) (f_4@@20 T@Field_4453_12217) ) (! (= (HasDirectPerm_4453_12217 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4453_12217 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8485) (o_2@@21 T@Ref) (f_4@@21 T@Field_8524_53) ) (! (= (HasDirectPerm_4453_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4453_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8485) (o_2@@22 T@Ref) (f_4@@22 T@Field_8537_8538) ) (! (= (HasDirectPerm_4453_4454 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4453_4454 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8464) (ExhaleHeap@@9 T@PolymorphicMapType_8464) (Mask@@26 T@PolymorphicMapType_8485) (o_41@@0 T@Ref) (f_27@@31 T@Field_14502_14507) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_12216_29075 Mask@@26 o_41@@0 f_27@@31) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@14) o_41@@0 f_27@@31) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@9) o_41@@0 f_27@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@9) o_41@@0 f_27@@31))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8464) (ExhaleHeap@@10 T@PolymorphicMapType_8464) (Mask@@27 T@PolymorphicMapType_8485) (o_41@@1 T@Ref) (f_27@@32 T@Field_12216_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_12216_12217 Mask@@27 o_41@@1 f_27@@32) (= (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@15) o_41@@1 f_27@@32) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@10) o_41@@1 f_27@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@10) o_41@@1 f_27@@32))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8464) (ExhaleHeap@@11 T@PolymorphicMapType_8464) (Mask@@28 T@PolymorphicMapType_8485) (o_41@@2 T@Ref) (f_27@@33 T@Field_12216_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_12216_53 Mask@@28 o_41@@2 f_27@@33) (= (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@16) o_41@@2 f_27@@33) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@11) o_41@@2 f_27@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@11) o_41@@2 f_27@@33))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8464) (ExhaleHeap@@12 T@PolymorphicMapType_8464) (Mask@@29 T@PolymorphicMapType_8485) (o_41@@3 T@Ref) (f_27@@34 T@Field_12216_4454) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_12216_4454 Mask@@29 o_41@@3 f_27@@34) (= (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@17) o_41@@3 f_27@@34) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@12) o_41@@3 f_27@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@12) o_41@@3 f_27@@34))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8464) (ExhaleHeap@@13 T@PolymorphicMapType_8464) (Mask@@30 T@PolymorphicMapType_8485) (o_41@@4 T@Ref) (f_27@@35 T@Field_4453_14507) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_4453_28135 Mask@@30 o_41@@4 f_27@@35) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@18) o_41@@4 f_27@@35) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@13) o_41@@4 f_27@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@13) o_41@@4 f_27@@35))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8464) (ExhaleHeap@@14 T@PolymorphicMapType_8464) (Mask@@31 T@PolymorphicMapType_8485) (o_41@@5 T@Ref) (f_27@@36 T@Field_4453_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_4453_12217 Mask@@31 o_41@@5 f_27@@36) (= (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@19) o_41@@5 f_27@@36) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@14) o_41@@5 f_27@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@14) o_41@@5 f_27@@36))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8464) (ExhaleHeap@@15 T@PolymorphicMapType_8464) (Mask@@32 T@PolymorphicMapType_8485) (o_41@@6 T@Ref) (f_27@@37 T@Field_8524_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_4453_53 Mask@@32 o_41@@6 f_27@@37) (= (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@20) o_41@@6 f_27@@37) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@15) o_41@@6 f_27@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@15) o_41@@6 f_27@@37))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8464) (ExhaleHeap@@16 T@PolymorphicMapType_8464) (Mask@@33 T@PolymorphicMapType_8485) (o_41@@7 T@Ref) (f_27@@38 T@Field_8537_8538) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_4453_4454 Mask@@33 o_41@@7 f_27@@38) (= (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@21) o_41@@7 f_27@@38) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@16) o_41@@7 f_27@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@16) o_41@@7 f_27@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_4453_14507) ) (! (= (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_8524_53) ) (! (= (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_8537_8538) ) (! (= (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_4453_12217) ) (! (= (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_14502_14507) ) (! (= (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_12216_53) ) (! (= (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_12216_4454) ) (! (= (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_12216_12217) ) (! (= (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8464) (r_1@@6 T@Ref) (k@@0 Int) ) (!  (and (= (integer2 Heap@@22 r_1@@6 k@@0) (|integer2'| Heap@@22 r_1@@6 k@@0)) (dummyFunction_1416 (|integer2#triggerStateless| r_1@@6 k@@0)))
 :qid |stdinbpl.319:15|
 :skolemid |27|
 :pattern ( (integer2 Heap@@22 r_1@@6 k@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8485) (SummandMask1 T@PolymorphicMapType_8485) (SummandMask2 T@PolymorphicMapType_8485) (o_2@@31 T@Ref) (f_4@@31 T@Field_4453_14507) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8485) (SummandMask1@@0 T@PolymorphicMapType_8485) (SummandMask2@@0 T@PolymorphicMapType_8485) (o_2@@32 T@Ref) (f_4@@32 T@Field_8524_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8485) (SummandMask1@@1 T@PolymorphicMapType_8485) (SummandMask2@@1 T@PolymorphicMapType_8485) (o_2@@33 T@Ref) (f_4@@33 T@Field_8537_8538) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8485) (SummandMask1@@2 T@PolymorphicMapType_8485) (SummandMask2@@2 T@PolymorphicMapType_8485) (o_2@@34 T@Ref) (f_4@@34 T@Field_4453_12217) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8485) (SummandMask1@@3 T@PolymorphicMapType_8485) (SummandMask2@@3 T@PolymorphicMapType_8485) (o_2@@35 T@Ref) (f_4@@35 T@Field_14502_14507) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8485) (SummandMask1@@4 T@PolymorphicMapType_8485) (SummandMask2@@4 T@PolymorphicMapType_8485) (o_2@@36 T@Ref) (f_4@@36 T@Field_12216_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8485) (SummandMask1@@5 T@PolymorphicMapType_8485) (SummandMask2@@5 T@PolymorphicMapType_8485) (o_2@@37 T@Ref) (f_4@@37 T@Field_12216_4454) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8485) (SummandMask1@@6 T@PolymorphicMapType_8485) (SummandMask2@@6 T@PolymorphicMapType_8485) (o_2@@38 T@Ref) (f_4@@38 T@Field_12216_12217) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8464) (Mask@@34 T@PolymorphicMapType_8485) (r_1@@7 T@Ref) (k@@1 Int) ) (!  (=> (state Heap@@23 Mask@@34) (= (|integer2'| Heap@@23 r_1@@7 k@@1) (|integer2#frame| (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@23) null (Peano r_1@@7)) r_1@@7 k@@1)))
 :qid |stdinbpl.336:15|
 :skolemid |30|
 :pattern ( (state Heap@@23 Mask@@34) (|integer2'| Heap@@23 r_1@@7 k@@1))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8464) (Mask@@35 T@PolymorphicMapType_8485) (r_1@@8 T@Ref) ) (!  (=> (state Heap@@24 Mask@@35) (= (|integer'| Heap@@24 r_1@@8) (|integer#frame| (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@24) null (Peano r_1@@8)) r_1@@8)))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@35) (|integer'| Heap@@24 r_1@@8))
 :pattern ( (state Heap@@24 Mask@@35) (|integer#triggerStateless| r_1@@8) (|Peano#trigger_4512| Heap@@24 (Peano r_1@@8)))
)))
(assert (forall ((r_1@@9 T@Ref) ) (! (= (getPredWandId_4512_4513 (Peano r_1@@9)) 0)
 :qid |stdinbpl.406:15|
 :skolemid |33|
 :pattern ( (Peano r_1@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8464) (o_22 T@Ref) (f_12 T@Field_14502_14507) (v T@PolymorphicMapType_9013) ) (! (succHeap Heap@@25 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@25) (store (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@25) o_22 f_12 v) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@25) (store (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@25) o_22 f_12 v) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8464) (o_22@@0 T@Ref) (f_12@@0 T@Field_12216_12217) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@26) (store (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@26) o_22@@0 f_12@@0 v@@0) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@26) (store (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@26) o_22@@0 f_12@@0 v@@0) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8464) (o_22@@1 T@Ref) (f_12@@1 T@Field_12216_4454) (v@@1 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@27) (store (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@27) o_22@@1 f_12@@1 v@@1) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@27) (store (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@27) o_22@@1 f_12@@1 v@@1) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8464) (o_22@@2 T@Ref) (f_12@@2 T@Field_12216_53) (v@@2 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@28) (store (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@28) o_22@@2 f_12@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@28) (store (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@28) o_22@@2 f_12@@2 v@@2)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8464) (o_22@@3 T@Ref) (f_12@@3 T@Field_4453_14507) (v@@3 T@PolymorphicMapType_9013) ) (! (succHeap Heap@@29 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@29) (store (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@29) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@29) (store (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@29) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8464) (o_22@@4 T@Ref) (f_12@@4 T@Field_4453_12217) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@30) (store (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@30) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@30) (store (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@30) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8464) (o_22@@5 T@Ref) (f_12@@5 T@Field_8537_8538) (v@@5 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@31) (store (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@31) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@31) (store (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@31) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8464) (o_22@@6 T@Ref) (f_12@@6 T@Field_8524_53) (v@@6 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_8464 (store (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@32) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (store (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@32) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@32)))
)))
(assert (forall ((r_1@@10 T@Ref) ) (! (= (PredicateMaskField_4512 (Peano r_1@@10)) (|Peano#sm| r_1@@10))
 :qid |stdinbpl.398:15|
 :skolemid |31|
 :pattern ( (PredicateMaskField_4512 (Peano r_1@@10)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8464) (Mask@@36 T@PolymorphicMapType_8485) (r_1@@11 T@Ref) ) (!  (=> (and (state Heap@@33 Mask@@36) (< AssumeFunctionsAbove 1)) (= (integer Heap@@33 r_1@@11) (ite (= r_1@@11 null) 0 (+ 1 (|integer'| Heap@@33 (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@33) r_1@@11 nx))))))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@33 Mask@@36) (integer Heap@@33 r_1@@11))
 :pattern ( (state Heap@@33 Mask@@36) (|integer#triggerStateless| r_1@@11) (|Peano#trigger_4512| Heap@@33 (Peano r_1@@11)))
)))
(assert (forall ((o_22@@7 T@Ref) (f_30 T@Field_8537_8538) (Heap@@34 T@PolymorphicMapType_8464) ) (!  (=> (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@34) o_22@@7 $allocated) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@34) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@34) o_22@@7 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@34) o_22@@7 f_30))
)))
(assert (forall ((p@@2 T@Field_4453_12217) (v_1@@1 T@FrameType) (q T@Field_4453_12217) (w@@1 T@FrameType) (r T@Field_4453_12217) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8524_8524 p@@2 v_1@@1 q w@@1) (InsidePredicate_8524_8524 q w@@1 r u)) (InsidePredicate_8524_8524 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8524_8524 p@@2 v_1@@1 q w@@1) (InsidePredicate_8524_8524 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_4453_12217) (v_1@@2 T@FrameType) (q@@0 T@Field_4453_12217) (w@@2 T@FrameType) (r@@0 T@Field_12216_12217) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8524_8524 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8524_4512 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8524_4512 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8524_8524 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8524_4512 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_4453_12217) (v_1@@3 T@FrameType) (q@@1 T@Field_12216_12217) (w@@3 T@FrameType) (r@@1 T@Field_4453_12217) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8524_4512 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4512_8524 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8524_8524 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8524_4512 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4512_8524 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_4453_12217) (v_1@@4 T@FrameType) (q@@2 T@Field_12216_12217) (w@@4 T@FrameType) (r@@2 T@Field_12216_12217) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8524_4512 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4512_4512 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8524_4512 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8524_4512 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4512_4512 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_12216_12217) (v_1@@5 T@FrameType) (q@@3 T@Field_4453_12217) (w@@5 T@FrameType) (r@@3 T@Field_4453_12217) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4512_8524 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8524_8524 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4512_8524 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4512_8524 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8524_8524 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_12216_12217) (v_1@@6 T@FrameType) (q@@4 T@Field_4453_12217) (w@@6 T@FrameType) (r@@4 T@Field_12216_12217) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4512_8524 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8524_4512 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4512_4512 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4512_8524 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8524_4512 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_12216_12217) (v_1@@7 T@FrameType) (q@@5 T@Field_12216_12217) (w@@7 T@FrameType) (r@@5 T@Field_4453_12217) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4512_4512 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4512_8524 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4512_8524 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4512_4512 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4512_8524 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_12216_12217) (v_1@@8 T@FrameType) (q@@6 T@Field_12216_12217) (w@@8 T@FrameType) (r@@6 T@Field_12216_12217) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4512_4512 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4512_4512 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4512_4512 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4512_4512 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4512_4512 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8464) (Mask@@37 T@PolymorphicMapType_8485) (r_1@@12 T@Ref) (k@@2 Int) ) (!  (=> (and (state Heap@@35 Mask@@37) (< AssumeFunctionsAbove 0)) (= (integer2 Heap@@35 r_1@@12 k@@2) (+ (integer Heap@@35 r_1@@12) k@@2)))
 :qid |stdinbpl.329:15|
 :skolemid |29|
 :pattern ( (state Heap@@35 Mask@@37) (integer2 Heap@@35 r_1@@12 k@@2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun r_1@@13 () T@Ref)
(declare-fun Heap@2 () T@PolymorphicMapType_8464)
(declare-fun Heap@@36 () T@PolymorphicMapType_8464)
(declare-fun Heap@0 () T@PolymorphicMapType_8464)
(declare-fun newPMask@0 () T@PolymorphicMapType_9013)
(declare-fun Heap@1 () T@PolymorphicMapType_8464)
(declare-fun |integer#trigger| (T@FrameType T@Ref) Bool)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_8485)
(declare-fun Mask@0 () T@PolymorphicMapType_8485)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_8485)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_8485)
(declare-fun FrameFragment_4431 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4454 (T@Ref) T@FrameType)
(set-info :boogie-vc-id |integer#definedness|)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon9_correct true))
(let ((anon13_Else_correct  (=> (= r_1@@13 null) (=> (and (= Heap@2 Heap@@36) (= (ControlFlow 0 5) 3)) anon9_correct))))
(let ((anon13_Then_correct  (=> (and (not (= r_1@@13 null)) (= Heap@0 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@36) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@36) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@36) (store (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@36) null (|Peano#sm| r_1@@13) (PolymorphicMapType_9013 (store (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@36) null (|Peano#sm| r_1@@13))) r_1@@13 nx true) (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@36) null (|Peano#sm| r_1@@13))) (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@36) null (|Peano#sm| r_1@@13))) (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@36) null (|Peano#sm| r_1@@13))) (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@36) null (|Peano#sm| r_1@@13))) (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@36) null (|Peano#sm| r_1@@13))) (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@36) null (|Peano#sm| r_1@@13))) (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@36) null (|Peano#sm| r_1@@13))))) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@36) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@36) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@36) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@36)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_8537_8538) ) (!  (=> (or (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| r_1@@13))) o_15 f_20) (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@0) r_1@@13 nx)))) o_15 f_20)) (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| newPMask@0) o_15 f_20))
 :qid |stdinbpl.300:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_8524_53) ) (!  (=> (or (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| r_1@@13))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@0) r_1@@13 nx)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.300:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_4453_12217) ) (!  (=> (or (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| r_1@@13))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@0) r_1@@13 nx)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.300:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_4453_14507) ) (!  (=> (or (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| r_1@@13))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@0) r_1@@13 nx)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.300:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_12216_4454) ) (!  (=> (or (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| r_1@@13))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@0) r_1@@13 nx)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.300:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_12216_53) ) (!  (=> (or (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| r_1@@13))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@0) r_1@@13 nx)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.300:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_12216_12217) ) (!  (=> (or (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| r_1@@13))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@0) r_1@@13 nx)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.300:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_14502_14507) ) (!  (=> (or (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| r_1@@13))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@0) r_1@@13 nx)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.300:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| newPMask@0) o_15@@6 f_20@@6))
))) (= Heap@1 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@0) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@0) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@0) (store (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@0) null (|Peano#sm| r_1@@13) newPMask@0) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@0) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@0) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@0) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@0)))) (and (= Heap@2 Heap@1) (= (ControlFlow 0 4) 3))) anon9_correct))))
(let ((anon12_Else_correct  (=> (|integer#trigger| (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@36) null (Peano (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@36) r_1@@13 nx))) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@36) r_1@@13 nx)) (and (=> (= (ControlFlow 0 7) 4) anon13_Then_correct) (=> (= (ControlFlow 0 7) 5) anon13_Else_correct)))))
(let ((anon11_Then_correct  (=> (= r_1@@13 null) (and (=> (= (ControlFlow 0 6) 4) anon13_Then_correct) (=> (= (ControlFlow 0 6) 5) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| UnfoldingMask@2) null (Peano (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@36) r_1@@13 nx))))))))
(let ((anon11_Else_correct  (=> (not (= r_1@@13 null)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_4453_4454 UnfoldingMask@2 r_1@@13 nx)) (=> (HasDirectPerm_4453_4454 UnfoldingMask@2 r_1@@13 nx) (and (=> (= (ControlFlow 0 8) 2) anon12_Then_correct) (=> (= (ControlFlow 0 8) 7) anon12_Else_correct)))))))
(let ((anon2_correct  (=> (state Heap@@36 UnfoldingMask@2) (and (=> (= (ControlFlow 0 10) 6) anon11_Then_correct) (=> (= (ControlFlow 0 10) 8) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (= r_1@@13 null) (=> (and (= UnfoldingMask@2 Mask@0) (= (ControlFlow 0 12) 10)) anon2_correct))))
(let ((anon10_Then_correct  (=> (not (= r_1@@13 null)) (=> (and (and (and (not (= r_1@@13 null)) (= UnfoldingMask@0 (PolymorphicMapType_8485 (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| Mask@0) (store (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| Mask@0) r_1@@13 nx (+ (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| Mask@0) r_1@@13 nx) FullPerm)) (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| Mask@0) (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| Mask@0) (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| Mask@0) (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| Mask@0) (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| Mask@0) (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| Mask@0)))) (and (state Heap@@36 UnfoldingMask@0) (= UnfoldingMask@1 (PolymorphicMapType_8485 (store (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| UnfoldingMask@0) null (Peano (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@36) r_1@@13 nx)) (+ (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| UnfoldingMask@0) null (Peano (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@36) r_1@@13 nx))) FullPerm)) (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| UnfoldingMask@0) (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| UnfoldingMask@0) (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| UnfoldingMask@0) (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| UnfoldingMask@0) (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| UnfoldingMask@0) (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| UnfoldingMask@0) (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| UnfoldingMask@0))))) (and (and (InsidePredicate_4512_4512 (Peano r_1@@13) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@36) null (Peano r_1@@13)) (Peano (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@36) r_1@@13 nx)) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@36) null (Peano (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@36) r_1@@13 nx)))) (state Heap@@36 UnfoldingMask@1)) (and (= UnfoldingMask@2 UnfoldingMask@1) (= (ControlFlow 0 11) 10)))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@36) r_1@@13 $allocated)) (and (= AssumeFunctionsAbove 1) (= Mask@0 (PolymorphicMapType_8485 (store (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| ZeroMask) null (Peano r_1@@13) (+ (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| ZeroMask) null (Peano r_1@@13)) FullPerm)) (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| ZeroMask) (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| ZeroMask) (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| ZeroMask) (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| ZeroMask) (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| ZeroMask) (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| ZeroMask) (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| ZeroMask))))) (and (and (state Heap@@36 Mask@0) (state Heap@@36 Mask@0)) (and (|Peano#trigger_4512| Heap@@36 (Peano r_1@@13)) (= (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@36) null (Peano r_1@@13)) (FrameFragment_4431 (ite (not (= r_1@@13 null)) (CombineFrames (FrameFragment_4454 (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@36) r_1@@13 nx)) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@36) null (Peano (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@36) r_1@@13 nx)))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| Mask@0) null (Peano r_1@@13))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| Mask@0) null (Peano r_1@@13)))) (and (=> (= (ControlFlow 0 13) 11) anon10_Then_correct) (=> (= (ControlFlow 0 13) 12) anon10_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
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
(declare-sort T@Field_8524_53 0)
(declare-sort T@Field_8537_8538 0)
(declare-sort T@Field_12216_12217 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14502_14507 0)
(declare-sort T@Field_4453_12217 0)
(declare-sort T@Field_4453_14507 0)
(declare-sort T@Field_12216_4454 0)
(declare-sort T@Field_12216_53 0)
(declare-datatypes ((T@PolymorphicMapType_8485 0)) (((PolymorphicMapType_8485 (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| (Array T@Ref T@Field_12216_12217 Real)) (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| (Array T@Ref T@Field_8537_8538 Real)) (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| (Array T@Ref T@Field_12216_4454 Real)) (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| (Array T@Ref T@Field_12216_53 Real)) (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| (Array T@Ref T@Field_14502_14507 Real)) (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| (Array T@Ref T@Field_4453_12217 Real)) (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| (Array T@Ref T@Field_8524_53 Real)) (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| (Array T@Ref T@Field_4453_14507 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9013 0)) (((PolymorphicMapType_9013 (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (Array T@Ref T@Field_8537_8538 Bool)) (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (Array T@Ref T@Field_8524_53 Bool)) (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (Array T@Ref T@Field_4453_12217 Bool)) (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (Array T@Ref T@Field_4453_14507 Bool)) (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (Array T@Ref T@Field_12216_4454 Bool)) (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (Array T@Ref T@Field_12216_53 Bool)) (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (Array T@Ref T@Field_12216_12217 Bool)) (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (Array T@Ref T@Field_14502_14507 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8464 0)) (((PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| (Array T@Ref T@Field_8524_53 Bool)) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| (Array T@Ref T@Field_8537_8538 T@Ref)) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| (Array T@Ref T@Field_12216_12217 T@FrameType)) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| (Array T@Ref T@Field_14502_14507 T@PolymorphicMapType_9013)) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| (Array T@Ref T@Field_4453_12217 T@FrameType)) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| (Array T@Ref T@Field_4453_14507 T@PolymorphicMapType_9013)) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| (Array T@Ref T@Field_12216_4454 T@Ref)) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| (Array T@Ref T@Field_12216_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_8524_53)
(declare-fun nx () T@Field_8537_8538)
(declare-fun succHeap (T@PolymorphicMapType_8464 T@PolymorphicMapType_8464) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8464 T@PolymorphicMapType_8464) Bool)
(declare-fun state (T@PolymorphicMapType_8464 T@PolymorphicMapType_8485) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8485) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8464 T@PolymorphicMapType_8464 T@PolymorphicMapType_8485) Bool)
(declare-fun IsPredicateField_4512_4513 (T@Field_12216_12217) Bool)
(declare-fun HasDirectPerm_12216_12217 (T@PolymorphicMapType_8485 T@Ref T@Field_12216_12217) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4512 (T@Field_12216_12217) T@Field_14502_14507)
(declare-fun IsPredicateField_4453_29320 (T@Field_4453_12217) Bool)
(declare-fun HasDirectPerm_4453_12217 (T@PolymorphicMapType_8485 T@Ref T@Field_4453_12217) Bool)
(declare-fun PredicateMaskField_4453 (T@Field_4453_12217) T@Field_4453_14507)
(declare-fun IsWandField_12216_32606 (T@Field_12216_12217) Bool)
(declare-fun WandMaskField_12216 (T@Field_12216_12217) T@Field_14502_14507)
(declare-fun IsWandField_4453_32249 (T@Field_4453_12217) Bool)
(declare-fun WandMaskField_4453 (T@Field_4453_12217) T@Field_4453_14507)
(declare-fun ZeroPMask () T@PolymorphicMapType_9013)
(declare-fun |integer2'| (T@PolymorphicMapType_8464 T@Ref Int) Int)
(declare-fun dummyFunction_1416 (Int) Bool)
(declare-fun |integer2#triggerStateless| (T@Ref Int) Int)
(declare-fun Peano (T@Ref) T@Field_12216_12217)
(declare-fun |integer'| (T@PolymorphicMapType_8464 T@Ref) Int)
(declare-fun |integer#triggerStateless| (T@Ref) Int)
(declare-fun |Peano#trigger_4512| (T@PolymorphicMapType_8464 T@Field_12216_12217) Bool)
(declare-fun |Peano#everUsed_4512| (T@Field_12216_12217) Bool)
(declare-fun integer (T@PolymorphicMapType_8464 T@Ref) Int)
(declare-fun |Peano#sm| (T@Ref) T@Field_14502_14507)
(declare-fun dummyHeap () T@PolymorphicMapType_8464)
(declare-fun ZeroMask () T@PolymorphicMapType_8485)
(declare-fun InsidePredicate_8524_8524 (T@Field_4453_12217 T@FrameType T@Field_4453_12217 T@FrameType) Bool)
(declare-fun InsidePredicate_4512_4512 (T@Field_12216_12217 T@FrameType T@Field_12216_12217 T@FrameType) Bool)
(declare-fun IsPredicateField_4453_4454 (T@Field_8537_8538) Bool)
(declare-fun IsWandField_4453_4454 (T@Field_8537_8538) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4453_38317 (T@Field_4453_14507) Bool)
(declare-fun IsWandField_4453_38333 (T@Field_4453_14507) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4453_53 (T@Field_8524_53) Bool)
(declare-fun IsWandField_4453_53 (T@Field_8524_53) Bool)
(declare-fun IsPredicateField_4512_37668 (T@Field_14502_14507) Bool)
(declare-fun IsWandField_4512_37684 (T@Field_14502_14507) Bool)
(declare-fun IsPredicateField_4512_53 (T@Field_12216_53) Bool)
(declare-fun IsWandField_4512_53 (T@Field_12216_53) Bool)
(declare-fun IsPredicateField_4512_4454 (T@Field_12216_4454) Bool)
(declare-fun IsWandField_4512_4454 (T@Field_12216_4454) Bool)
(declare-fun HasDirectPerm_12216_29075 (T@PolymorphicMapType_8485 T@Ref T@Field_14502_14507) Bool)
(declare-fun HasDirectPerm_12216_53 (T@PolymorphicMapType_8485 T@Ref T@Field_12216_53) Bool)
(declare-fun HasDirectPerm_12216_4454 (T@PolymorphicMapType_8485 T@Ref T@Field_12216_4454) Bool)
(declare-fun HasDirectPerm_4453_28135 (T@PolymorphicMapType_8485 T@Ref T@Field_4453_14507) Bool)
(declare-fun HasDirectPerm_4453_53 (T@PolymorphicMapType_8485 T@Ref T@Field_8524_53) Bool)
(declare-fun HasDirectPerm_4453_4454 (T@PolymorphicMapType_8485 T@Ref T@Field_8537_8538) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun integer2 (T@PolymorphicMapType_8464 T@Ref Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_8485 T@PolymorphicMapType_8485 T@PolymorphicMapType_8485) Bool)
(declare-fun |integer2#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |integer#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_4512_4513 (T@Field_12216_12217) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun InsidePredicate_8524_4512 (T@Field_4453_12217 T@FrameType T@Field_12216_12217 T@FrameType) Bool)
(declare-fun InsidePredicate_4512_8524 (T@Field_12216_12217 T@FrameType T@Field_4453_12217 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8464) (Heap1 T@PolymorphicMapType_8464) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8464) (Mask T@PolymorphicMapType_8485) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8464) (ExhaleHeap T@PolymorphicMapType_8464) (Mask@@0 T@PolymorphicMapType_8485) (pm_f_28 T@Field_12216_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12216_12217 Mask@@0 null pm_f_28) (IsPredicateField_4512_4513 pm_f_28)) (and (and (and (and (and (and (and (forall ((o2_28 T@Ref) (f_27 T@Field_8537_8538) ) (!  (=> (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28 f_27) (= (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@0) o2_28 f_27) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap) o2_28 f_27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap) o2_28 f_27))
)) (forall ((o2_28@@0 T@Ref) (f_27@@0 T@Field_8524_53) ) (!  (=> (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@0 f_27@@0) (= (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@0) o2_28@@0 f_27@@0) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap) o2_28@@0 f_27@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap) o2_28@@0 f_27@@0))
))) (forall ((o2_28@@1 T@Ref) (f_27@@1 T@Field_4453_12217) ) (!  (=> (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@1 f_27@@1) (= (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@0) o2_28@@1 f_27@@1) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap) o2_28@@1 f_27@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap) o2_28@@1 f_27@@1))
))) (forall ((o2_28@@2 T@Ref) (f_27@@2 T@Field_4453_14507) ) (!  (=> (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@2 f_27@@2) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@0) o2_28@@2 f_27@@2) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap) o2_28@@2 f_27@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap) o2_28@@2 f_27@@2))
))) (forall ((o2_28@@3 T@Ref) (f_27@@3 T@Field_12216_4454) ) (!  (=> (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@3 f_27@@3) (= (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@0) o2_28@@3 f_27@@3) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap) o2_28@@3 f_27@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap) o2_28@@3 f_27@@3))
))) (forall ((o2_28@@4 T@Ref) (f_27@@4 T@Field_12216_53) ) (!  (=> (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@4 f_27@@4) (= (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@0) o2_28@@4 f_27@@4) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap) o2_28@@4 f_27@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap) o2_28@@4 f_27@@4))
))) (forall ((o2_28@@5 T@Ref) (f_27@@5 T@Field_12216_12217) ) (!  (=> (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@5 f_27@@5) (= (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@0) o2_28@@5 f_27@@5) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap) o2_28@@5 f_27@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap) o2_28@@5 f_27@@5))
))) (forall ((o2_28@@6 T@Ref) (f_27@@6 T@Field_14502_14507) ) (!  (=> (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) null (PredicateMaskField_4512 pm_f_28))) o2_28@@6 f_27@@6) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@0) o2_28@@6 f_27@@6) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap) o2_28@@6 f_27@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap) o2_28@@6 f_27@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4512_4513 pm_f_28))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8464) (ExhaleHeap@@0 T@PolymorphicMapType_8464) (Mask@@1 T@PolymorphicMapType_8485) (pm_f_28@@0 T@Field_4453_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4453_12217 Mask@@1 null pm_f_28@@0) (IsPredicateField_4453_29320 pm_f_28@@0)) (and (and (and (and (and (and (and (forall ((o2_28@@7 T@Ref) (f_27@@7 T@Field_8537_8538) ) (!  (=> (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@7 f_27@@7) (= (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@1) o2_28@@7 f_27@@7) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@7 f_27@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@7 f_27@@7))
)) (forall ((o2_28@@8 T@Ref) (f_27@@8 T@Field_8524_53) ) (!  (=> (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@8 f_27@@8) (= (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@1) o2_28@@8 f_27@@8) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@8 f_27@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@8 f_27@@8))
))) (forall ((o2_28@@9 T@Ref) (f_27@@9 T@Field_4453_12217) ) (!  (=> (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@9 f_27@@9) (= (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@1) o2_28@@9 f_27@@9) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@9 f_27@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@9 f_27@@9))
))) (forall ((o2_28@@10 T@Ref) (f_27@@10 T@Field_4453_14507) ) (!  (=> (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@10 f_27@@10) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) o2_28@@10 f_27@@10) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@10 f_27@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@10 f_27@@10))
))) (forall ((o2_28@@11 T@Ref) (f_27@@11 T@Field_12216_4454) ) (!  (=> (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@11 f_27@@11) (= (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@1) o2_28@@11 f_27@@11) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@11 f_27@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@11 f_27@@11))
))) (forall ((o2_28@@12 T@Ref) (f_27@@12 T@Field_12216_53) ) (!  (=> (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@12 f_27@@12) (= (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@1) o2_28@@12 f_27@@12) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@12 f_27@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@12 f_27@@12))
))) (forall ((o2_28@@13 T@Ref) (f_27@@13 T@Field_12216_12217) ) (!  (=> (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@13 f_27@@13) (= (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@1) o2_28@@13 f_27@@13) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@13 f_27@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@13 f_27@@13))
))) (forall ((o2_28@@14 T@Ref) (f_27@@14 T@Field_14502_14507) ) (!  (=> (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@1) null (PredicateMaskField_4453 pm_f_28@@0))) o2_28@@14 f_27@@14) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@1) o2_28@@14 f_27@@14) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@14 f_27@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@0) o2_28@@14 f_27@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4453_29320 pm_f_28@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8464) (ExhaleHeap@@1 T@PolymorphicMapType_8464) (Mask@@2 T@PolymorphicMapType_8485) (pm_f_28@@1 T@Field_12216_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12216_12217 Mask@@2 null pm_f_28@@1) (IsWandField_12216_32606 pm_f_28@@1)) (and (and (and (and (and (and (and (forall ((o2_28@@15 T@Ref) (f_27@@15 T@Field_8537_8538) ) (!  (=> (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@15 f_27@@15) (= (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@2) o2_28@@15 f_27@@15) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@15 f_27@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@15 f_27@@15))
)) (forall ((o2_28@@16 T@Ref) (f_27@@16 T@Field_8524_53) ) (!  (=> (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@16 f_27@@16) (= (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@2) o2_28@@16 f_27@@16) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@16 f_27@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@16 f_27@@16))
))) (forall ((o2_28@@17 T@Ref) (f_27@@17 T@Field_4453_12217) ) (!  (=> (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@17 f_27@@17) (= (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@2) o2_28@@17 f_27@@17) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@17 f_27@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@17 f_27@@17))
))) (forall ((o2_28@@18 T@Ref) (f_27@@18 T@Field_4453_14507) ) (!  (=> (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@18 f_27@@18) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@2) o2_28@@18 f_27@@18) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@18 f_27@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@18 f_27@@18))
))) (forall ((o2_28@@19 T@Ref) (f_27@@19 T@Field_12216_4454) ) (!  (=> (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@19 f_27@@19) (= (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@2) o2_28@@19 f_27@@19) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@19 f_27@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@19 f_27@@19))
))) (forall ((o2_28@@20 T@Ref) (f_27@@20 T@Field_12216_53) ) (!  (=> (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@20 f_27@@20) (= (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@2) o2_28@@20 f_27@@20) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@20 f_27@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@20 f_27@@20))
))) (forall ((o2_28@@21 T@Ref) (f_27@@21 T@Field_12216_12217) ) (!  (=> (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@21 f_27@@21) (= (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@2) o2_28@@21 f_27@@21) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@21 f_27@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@21 f_27@@21))
))) (forall ((o2_28@@22 T@Ref) (f_27@@22 T@Field_14502_14507) ) (!  (=> (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) null (WandMaskField_12216 pm_f_28@@1))) o2_28@@22 f_27@@22) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@2) o2_28@@22 f_27@@22) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@22 f_27@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@1) o2_28@@22 f_27@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_12216_32606 pm_f_28@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8464) (ExhaleHeap@@2 T@PolymorphicMapType_8464) (Mask@@3 T@PolymorphicMapType_8485) (pm_f_28@@2 T@Field_4453_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4453_12217 Mask@@3 null pm_f_28@@2) (IsWandField_4453_32249 pm_f_28@@2)) (and (and (and (and (and (and (and (forall ((o2_28@@23 T@Ref) (f_27@@23 T@Field_8537_8538) ) (!  (=> (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@23 f_27@@23) (= (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@3) o2_28@@23 f_27@@23) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@23 f_27@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@23 f_27@@23))
)) (forall ((o2_28@@24 T@Ref) (f_27@@24 T@Field_8524_53) ) (!  (=> (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@24 f_27@@24) (= (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@3) o2_28@@24 f_27@@24) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@24 f_27@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@24 f_27@@24))
))) (forall ((o2_28@@25 T@Ref) (f_27@@25 T@Field_4453_12217) ) (!  (=> (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@25 f_27@@25) (= (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@3) o2_28@@25 f_27@@25) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@25 f_27@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@25 f_27@@25))
))) (forall ((o2_28@@26 T@Ref) (f_27@@26 T@Field_4453_14507) ) (!  (=> (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@26 f_27@@26) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) o2_28@@26 f_27@@26) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@26 f_27@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@26 f_27@@26))
))) (forall ((o2_28@@27 T@Ref) (f_27@@27 T@Field_12216_4454) ) (!  (=> (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@27 f_27@@27) (= (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@3) o2_28@@27 f_27@@27) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@27 f_27@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@27 f_27@@27))
))) (forall ((o2_28@@28 T@Ref) (f_27@@28 T@Field_12216_53) ) (!  (=> (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@28 f_27@@28) (= (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@3) o2_28@@28 f_27@@28) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@28 f_27@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@28 f_27@@28))
))) (forall ((o2_28@@29 T@Ref) (f_27@@29 T@Field_12216_12217) ) (!  (=> (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@29 f_27@@29) (= (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@3) o2_28@@29 f_27@@29) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@29 f_27@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@29 f_27@@29))
))) (forall ((o2_28@@30 T@Ref) (f_27@@30 T@Field_14502_14507) ) (!  (=> (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@3) null (WandMaskField_4453 pm_f_28@@2))) o2_28@@30 f_27@@30) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@3) o2_28@@30 f_27@@30) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@30 f_27@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@2) o2_28@@30 f_27@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4453_32249 pm_f_28@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8464) (Heap1@@0 T@PolymorphicMapType_8464) (Heap2 T@PolymorphicMapType_8464) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14502_14507) ) (!  (not (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_12216_31441#PolymorphicMapType_9013| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12216_12217) ) (!  (not (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_12216_12217#PolymorphicMapType_9013| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12216_53) ) (!  (not (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_12216_53#PolymorphicMapType_9013| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12216_4454) ) (!  (not (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_12216_4454#PolymorphicMapType_9013| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4453_14507) ) (!  (not (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_4453_30591#PolymorphicMapType_9013| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4453_12217) ) (!  (not (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_4453_12217#PolymorphicMapType_9013| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8524_53) ) (!  (not (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_4453_53#PolymorphicMapType_9013| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8537_8538) ) (!  (not (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9013_4453_4454#PolymorphicMapType_9013| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8464) (r_1 T@Ref) (k Int) ) (! (dummyFunction_1416 (|integer2#triggerStateless| r_1 k))
 :qid |stdinbpl.323:15|
 :skolemid |28|
 :pattern ( (|integer2'| Heap@@4 r_1 k))
)))
(assert (forall ((r_1@@0 T@Ref) ) (! (IsPredicateField_4512_4513 (Peano r_1@@0))
 :qid |stdinbpl.402:15|
 :skolemid |32|
 :pattern ( (Peano r_1@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8464) (r_1@@1 T@Ref) ) (! (dummyFunction_1416 (|integer#triggerStateless| r_1@@1))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|integer'| Heap@@5 r_1@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8464) (r_1@@2 T@Ref) ) (! (|Peano#everUsed_4512| (Peano r_1@@2))
 :qid |stdinbpl.421:15|
 :skolemid |36|
 :pattern ( (|Peano#trigger_4512| Heap@@6 (Peano r_1@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8464) (r_1@@3 T@Ref) ) (!  (and (= (integer Heap@@7 r_1@@3) (|integer'| Heap@@7 r_1@@3)) (dummyFunction_1416 (|integer#triggerStateless| r_1@@3)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (integer Heap@@7 r_1@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8464) (ExhaleHeap@@3 T@PolymorphicMapType_8464) (Mask@@4 T@PolymorphicMapType_8485) (pm_f_28@@3 T@Field_12216_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12216_12217 Mask@@4 null pm_f_28@@3) (IsPredicateField_4512_4513 pm_f_28@@3)) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@8) null (PredicateMaskField_4512 pm_f_28@@3)) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@3) null (PredicateMaskField_4512 pm_f_28@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4512_4513 pm_f_28@@3) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@3) null (PredicateMaskField_4512 pm_f_28@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8464) (ExhaleHeap@@4 T@PolymorphicMapType_8464) (Mask@@5 T@PolymorphicMapType_8485) (pm_f_28@@4 T@Field_4453_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4453_12217 Mask@@5 null pm_f_28@@4) (IsPredicateField_4453_29320 pm_f_28@@4)) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@9) null (PredicateMaskField_4453 pm_f_28@@4)) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@4) null (PredicateMaskField_4453 pm_f_28@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4453_29320 pm_f_28@@4) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@4) null (PredicateMaskField_4453 pm_f_28@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8464) (ExhaleHeap@@5 T@PolymorphicMapType_8464) (Mask@@6 T@PolymorphicMapType_8485) (pm_f_28@@5 T@Field_12216_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_12216_12217 Mask@@6 null pm_f_28@@5) (IsWandField_12216_32606 pm_f_28@@5)) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@10) null (WandMaskField_12216 pm_f_28@@5)) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@5) null (WandMaskField_12216 pm_f_28@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (IsWandField_12216_32606 pm_f_28@@5) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@5) null (WandMaskField_12216 pm_f_28@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8464) (ExhaleHeap@@6 T@PolymorphicMapType_8464) (Mask@@7 T@PolymorphicMapType_8485) (pm_f_28@@6 T@Field_4453_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4453_12217 Mask@@7 null pm_f_28@@6) (IsWandField_4453_32249 pm_f_28@@6)) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@11) null (WandMaskField_4453 pm_f_28@@6)) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@6) null (WandMaskField_4453 pm_f_28@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (IsWandField_4453_32249 pm_f_28@@6) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@6) null (WandMaskField_4453 pm_f_28@@6)))
)))
(assert (forall ((r_1@@4 T@Ref) (r2 T@Ref) ) (!  (=> (= (Peano r_1@@4) (Peano r2)) (= r_1@@4 r2))
 :qid |stdinbpl.412:15|
 :skolemid |34|
 :pattern ( (Peano r_1@@4) (Peano r2))
)))
(assert (forall ((r_1@@5 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|Peano#sm| r_1@@5) (|Peano#sm| r2@@0)) (= r_1@@5 r2@@0))
 :qid |stdinbpl.416:15|
 :skolemid |35|
 :pattern ( (|Peano#sm| r_1@@5) (|Peano#sm| r2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8464) (ExhaleHeap@@7 T@PolymorphicMapType_8464) (Mask@@8 T@PolymorphicMapType_8485) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@12) o_41 $allocated) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@7) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@7) o_41 $allocated))
)))
(assert (forall ((p T@Field_4453_12217) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8524_8524 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8524_8524 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12216_12217) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4512_4512 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4512_4512 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4453_4454 nx)))
(assert  (not (IsWandField_4453_4454 nx)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8464) (ExhaleHeap@@8 T@PolymorphicMapType_8464) (Mask@@9 T@PolymorphicMapType_8485) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@13 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8485) (o_2@@7 T@Ref) (f_4@@7 T@Field_4453_14507) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4453_38317 f_4@@7))) (not (IsWandField_4453_38333 f_4@@7))) (<= (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8485) (o_2@@8 T@Ref) (f_4@@8 T@Field_8524_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4453_53 f_4@@8))) (not (IsWandField_4453_53 f_4@@8))) (<= (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8485) (o_2@@9 T@Ref) (f_4@@9 T@Field_8537_8538) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4453_4454 f_4@@9))) (not (IsWandField_4453_4454 f_4@@9))) (<= (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8485) (o_2@@10 T@Ref) (f_4@@10 T@Field_4453_12217) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4453_29320 f_4@@10))) (not (IsWandField_4453_32249 f_4@@10))) (<= (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8485) (o_2@@11 T@Ref) (f_4@@11 T@Field_14502_14507) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4512_37668 f_4@@11))) (not (IsWandField_4512_37684 f_4@@11))) (<= (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8485) (o_2@@12 T@Ref) (f_4@@12 T@Field_12216_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4512_53 f_4@@12))) (not (IsWandField_4512_53 f_4@@12))) (<= (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8485) (o_2@@13 T@Ref) (f_4@@13 T@Field_12216_4454) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4512_4454 f_4@@13))) (not (IsWandField_4512_4454 f_4@@13))) (<= (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8485) (o_2@@14 T@Ref) (f_4@@14 T@Field_12216_12217) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4512_4513 f_4@@14))) (not (IsWandField_12216_32606 f_4@@14))) (<= (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8485) (o_2@@15 T@Ref) (f_4@@15 T@Field_14502_14507) ) (! (= (HasDirectPerm_12216_29075 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12216_29075 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8485) (o_2@@16 T@Ref) (f_4@@16 T@Field_12216_12217) ) (! (= (HasDirectPerm_12216_12217 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12216_12217 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8485) (o_2@@17 T@Ref) (f_4@@17 T@Field_12216_53) ) (! (= (HasDirectPerm_12216_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12216_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8485) (o_2@@18 T@Ref) (f_4@@18 T@Field_12216_4454) ) (! (= (HasDirectPerm_12216_4454 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12216_4454 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8485) (o_2@@19 T@Ref) (f_4@@19 T@Field_4453_14507) ) (! (= (HasDirectPerm_4453_28135 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4453_28135 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8485) (o_2@@20 T@Ref) (f_4@@20 T@Field_4453_12217) ) (! (= (HasDirectPerm_4453_12217 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4453_12217 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8485) (o_2@@21 T@Ref) (f_4@@21 T@Field_8524_53) ) (! (= (HasDirectPerm_4453_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4453_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8485) (o_2@@22 T@Ref) (f_4@@22 T@Field_8537_8538) ) (! (= (HasDirectPerm_4453_4454 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4453_4454 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8464) (ExhaleHeap@@9 T@PolymorphicMapType_8464) (Mask@@26 T@PolymorphicMapType_8485) (o_41@@0 T@Ref) (f_27@@31 T@Field_14502_14507) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_12216_29075 Mask@@26 o_41@@0 f_27@@31) (= (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@14) o_41@@0 f_27@@31) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@9) o_41@@0 f_27@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| ExhaleHeap@@9) o_41@@0 f_27@@31))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8464) (ExhaleHeap@@10 T@PolymorphicMapType_8464) (Mask@@27 T@PolymorphicMapType_8485) (o_41@@1 T@Ref) (f_27@@32 T@Field_12216_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_12216_12217 Mask@@27 o_41@@1 f_27@@32) (= (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@15) o_41@@1 f_27@@32) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@10) o_41@@1 f_27@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| ExhaleHeap@@10) o_41@@1 f_27@@32))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8464) (ExhaleHeap@@11 T@PolymorphicMapType_8464) (Mask@@28 T@PolymorphicMapType_8485) (o_41@@2 T@Ref) (f_27@@33 T@Field_12216_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_12216_53 Mask@@28 o_41@@2 f_27@@33) (= (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@16) o_41@@2 f_27@@33) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@11) o_41@@2 f_27@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| ExhaleHeap@@11) o_41@@2 f_27@@33))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8464) (ExhaleHeap@@12 T@PolymorphicMapType_8464) (Mask@@29 T@PolymorphicMapType_8485) (o_41@@3 T@Ref) (f_27@@34 T@Field_12216_4454) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_12216_4454 Mask@@29 o_41@@3 f_27@@34) (= (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@17) o_41@@3 f_27@@34) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@12) o_41@@3 f_27@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| ExhaleHeap@@12) o_41@@3 f_27@@34))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8464) (ExhaleHeap@@13 T@PolymorphicMapType_8464) (Mask@@30 T@PolymorphicMapType_8485) (o_41@@4 T@Ref) (f_27@@35 T@Field_4453_14507) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_4453_28135 Mask@@30 o_41@@4 f_27@@35) (= (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@18) o_41@@4 f_27@@35) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@13) o_41@@4 f_27@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| ExhaleHeap@@13) o_41@@4 f_27@@35))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8464) (ExhaleHeap@@14 T@PolymorphicMapType_8464) (Mask@@31 T@PolymorphicMapType_8485) (o_41@@5 T@Ref) (f_27@@36 T@Field_4453_12217) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_4453_12217 Mask@@31 o_41@@5 f_27@@36) (= (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@19) o_41@@5 f_27@@36) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@14) o_41@@5 f_27@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| ExhaleHeap@@14) o_41@@5 f_27@@36))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8464) (ExhaleHeap@@15 T@PolymorphicMapType_8464) (Mask@@32 T@PolymorphicMapType_8485) (o_41@@6 T@Ref) (f_27@@37 T@Field_8524_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_4453_53 Mask@@32 o_41@@6 f_27@@37) (= (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@20) o_41@@6 f_27@@37) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@15) o_41@@6 f_27@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| ExhaleHeap@@15) o_41@@6 f_27@@37))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8464) (ExhaleHeap@@16 T@PolymorphicMapType_8464) (Mask@@33 T@PolymorphicMapType_8485) (o_41@@7 T@Ref) (f_27@@38 T@Field_8537_8538) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_4453_4454 Mask@@33 o_41@@7 f_27@@38) (= (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@21) o_41@@7 f_27@@38) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@16) o_41@@7 f_27@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| ExhaleHeap@@16) o_41@@7 f_27@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_4453_14507) ) (! (= (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_8524_53) ) (! (= (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_8537_8538) ) (! (= (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_4453_12217) ) (! (= (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_14502_14507) ) (! (= (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_12216_53) ) (! (= (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_12216_4454) ) (! (= (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_12216_12217) ) (! (= (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8464) (r_1@@6 T@Ref) (k@@0 Int) ) (!  (and (= (integer2 Heap@@22 r_1@@6 k@@0) (|integer2'| Heap@@22 r_1@@6 k@@0)) (dummyFunction_1416 (|integer2#triggerStateless| r_1@@6 k@@0)))
 :qid |stdinbpl.319:15|
 :skolemid |27|
 :pattern ( (integer2 Heap@@22 r_1@@6 k@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8485) (SummandMask1 T@PolymorphicMapType_8485) (SummandMask2 T@PolymorphicMapType_8485) (o_2@@31 T@Ref) (f_4@@31 T@Field_4453_14507) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8485_4453_36493#PolymorphicMapType_8485| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8485) (SummandMask1@@0 T@PolymorphicMapType_8485) (SummandMask2@@0 T@PolymorphicMapType_8485) (o_2@@32 T@Ref) (f_4@@32 T@Field_8524_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8485_4453_53#PolymorphicMapType_8485| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8485) (SummandMask1@@1 T@PolymorphicMapType_8485) (SummandMask2@@1 T@PolymorphicMapType_8485) (o_2@@33 T@Ref) (f_4@@33 T@Field_8537_8538) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8485_4453_4454#PolymorphicMapType_8485| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8485) (SummandMask1@@2 T@PolymorphicMapType_8485) (SummandMask2@@2 T@PolymorphicMapType_8485) (o_2@@34 T@Ref) (f_4@@34 T@Field_4453_12217) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8485_4453_4513#PolymorphicMapType_8485| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8485) (SummandMask1@@3 T@PolymorphicMapType_8485) (SummandMask2@@3 T@PolymorphicMapType_8485) (o_2@@35 T@Ref) (f_4@@35 T@Field_14502_14507) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8485_4512_36162#PolymorphicMapType_8485| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8485) (SummandMask1@@4 T@PolymorphicMapType_8485) (SummandMask2@@4 T@PolymorphicMapType_8485) (o_2@@36 T@Ref) (f_4@@36 T@Field_12216_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8485_4512_53#PolymorphicMapType_8485| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8485) (SummandMask1@@5 T@PolymorphicMapType_8485) (SummandMask2@@5 T@PolymorphicMapType_8485) (o_2@@37 T@Ref) (f_4@@37 T@Field_12216_4454) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8485_4512_4454#PolymorphicMapType_8485| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8485) (SummandMask1@@6 T@PolymorphicMapType_8485) (SummandMask2@@6 T@PolymorphicMapType_8485) (o_2@@38 T@Ref) (f_4@@38 T@Field_12216_12217) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8485_4512_4513#PolymorphicMapType_8485| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8464) (Mask@@34 T@PolymorphicMapType_8485) (r_1@@7 T@Ref) (k@@1 Int) ) (!  (=> (state Heap@@23 Mask@@34) (= (|integer2'| Heap@@23 r_1@@7 k@@1) (|integer2#frame| (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@23) null (Peano r_1@@7)) r_1@@7 k@@1)))
 :qid |stdinbpl.336:15|
 :skolemid |30|
 :pattern ( (state Heap@@23 Mask@@34) (|integer2'| Heap@@23 r_1@@7 k@@1))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8464) (Mask@@35 T@PolymorphicMapType_8485) (r_1@@8 T@Ref) ) (!  (=> (state Heap@@24 Mask@@35) (= (|integer'| Heap@@24 r_1@@8) (|integer#frame| (select (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@24) null (Peano r_1@@8)) r_1@@8)))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@35) (|integer'| Heap@@24 r_1@@8))
 :pattern ( (state Heap@@24 Mask@@35) (|integer#triggerStateless| r_1@@8) (|Peano#trigger_4512| Heap@@24 (Peano r_1@@8)))
)))
(assert (forall ((r_1@@9 T@Ref) ) (! (= (getPredWandId_4512_4513 (Peano r_1@@9)) 0)
 :qid |stdinbpl.406:15|
 :skolemid |33|
 :pattern ( (Peano r_1@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8464) (o_22 T@Ref) (f_12 T@Field_14502_14507) (v T@PolymorphicMapType_9013) ) (! (succHeap Heap@@25 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@25) (store (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@25) o_22 f_12 v) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@25) (store (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@25) o_22 f_12 v) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@25) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8464) (o_22@@0 T@Ref) (f_12@@0 T@Field_12216_12217) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@26) (store (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@26) o_22@@0 f_12@@0 v@@0) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@26) (store (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@26) o_22@@0 f_12@@0 v@@0) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@26) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8464) (o_22@@1 T@Ref) (f_12@@1 T@Field_12216_4454) (v@@1 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@27) (store (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@27) o_22@@1 f_12@@1 v@@1) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@27) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@27) (store (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@27) o_22@@1 f_12@@1 v@@1) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8464) (o_22@@2 T@Ref) (f_12@@2 T@Field_12216_53) (v@@2 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@28) (store (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@28) o_22@@2 f_12@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@28) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@28) (store (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@28) o_22@@2 f_12@@2 v@@2)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8464) (o_22@@3 T@Ref) (f_12@@3 T@Field_4453_14507) (v@@3 T@PolymorphicMapType_9013) ) (! (succHeap Heap@@29 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@29) (store (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@29) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@29) (store (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@29) o_22@@3 f_12@@3 v@@3) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@29) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8464) (o_22@@4 T@Ref) (f_12@@4 T@Field_4453_12217) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@30) (store (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@30) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@30) (store (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@30) o_22@@4 f_12@@4 v@@4) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@30) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8464) (o_22@@5 T@Ref) (f_12@@5 T@Field_8537_8538) (v@@5 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@31) (store (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@31) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@31) (store (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@31) o_22@@5 f_12@@5 v@@5) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@31) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8464) (o_22@@6 T@Ref) (f_12@@6 T@Field_8524_53) (v@@6 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_8464 (store (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@32) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8464 (store (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@32) o_22@@6 f_12@@6 v@@6) (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4512_4513#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4516_14594#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4453_12217#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_4453_28177#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_12216_4454#PolymorphicMapType_8464| Heap@@32) (|PolymorphicMapType_8464_12216_53#PolymorphicMapType_8464| Heap@@32)))
)))
(assert (forall ((r_1@@10 T@Ref) ) (! (= (PredicateMaskField_4512 (Peano r_1@@10)) (|Peano#sm| r_1@@10))
 :qid |stdinbpl.398:15|
 :skolemid |31|
 :pattern ( (PredicateMaskField_4512 (Peano r_1@@10)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8464) (Mask@@36 T@PolymorphicMapType_8485) (r_1@@11 T@Ref) ) (!  (=> (and (state Heap@@33 Mask@@36) (< AssumeFunctionsAbove 1)) (= (integer Heap@@33 r_1@@11) (ite (= r_1@@11 null) 0 (+ 1 (|integer'| Heap@@33 (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@33) r_1@@11 nx))))))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@33 Mask@@36) (integer Heap@@33 r_1@@11))
 :pattern ( (state Heap@@33 Mask@@36) (|integer#triggerStateless| r_1@@11) (|Peano#trigger_4512| Heap@@33 (Peano r_1@@11)))
)))
(assert (forall ((o_22@@7 T@Ref) (f_30 T@Field_8537_8538) (Heap@@34 T@PolymorphicMapType_8464) ) (!  (=> (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@34) o_22@@7 $allocated) (select (|PolymorphicMapType_8464_4325_53#PolymorphicMapType_8464| Heap@@34) (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@34) o_22@@7 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8464_4328_4329#PolymorphicMapType_8464| Heap@@34) o_22@@7 f_30))
)))
(assert (forall ((p@@2 T@Field_4453_12217) (v_1@@1 T@FrameType) (q T@Field_4453_12217) (w@@1 T@FrameType) (r T@Field_4453_12217) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8524_8524 p@@2 v_1@@1 q w@@1) (InsidePredicate_8524_8524 q w@@1 r u)) (InsidePredicate_8524_8524 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8524_8524 p@@2 v_1@@1 q w@@1) (InsidePredicate_8524_8524 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_4453_12217) (v_1@@2 T@FrameType) (q@@0 T@Field_4453_12217) (w@@2 T@FrameType) (r@@0 T@Field_12216_12217) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8524_8524 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8524_4512 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8524_4512 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8524_8524 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8524_4512 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_4453_12217) (v_1@@3 T@FrameType) (q@@1 T@Field_12216_12217) (w@@3 T@FrameType) (r@@1 T@Field_4453_12217) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8524_4512 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4512_8524 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8524_8524 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8524_4512 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4512_8524 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_4453_12217) (v_1@@4 T@FrameType) (q@@2 T@Field_12216_12217) (w@@4 T@FrameType) (r@@2 T@Field_12216_12217) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8524_4512 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4512_4512 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8524_4512 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8524_4512 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4512_4512 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_12216_12217) (v_1@@5 T@FrameType) (q@@3 T@Field_4453_12217) (w@@5 T@FrameType) (r@@3 T@Field_4453_12217) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4512_8524 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8524_8524 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4512_8524 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4512_8524 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8524_8524 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_12216_12217) (v_1@@6 T@FrameType) (q@@4 T@Field_4453_12217) (w@@6 T@FrameType) (r@@4 T@Field_12216_12217) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4512_8524 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8524_4512 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4512_4512 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4512_8524 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8524_4512 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_12216_12217) (v_1@@7 T@FrameType) (q@@5 T@Field_12216_12217) (w@@7 T@FrameType) (r@@5 T@Field_4453_12217) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4512_4512 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4512_8524 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4512_8524 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4512_4512 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4512_8524 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_12216_12217) (v_1@@8 T@FrameType) (q@@6 T@Field_12216_12217) (w@@8 T@FrameType) (r@@6 T@Field_12216_12217) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4512_4512 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4512_4512 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4512_4512 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4512_4512 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4512_4512 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8464) (Mask@@37 T@PolymorphicMapType_8485) (r_1@@12 T@Ref) (k@@2 Int) ) (!  (=> (and (state Heap@@35 Mask@@37) (< AssumeFunctionsAbove 0)) (= (integer2 Heap@@35 r_1@@12 k@@2) (+ (integer Heap@@35 r_1@@12) k@@2)))
 :qid |stdinbpl.329:15|
 :skolemid |29|
 :pattern ( (state Heap@@35 Mask@@37) (integer2 Heap@@35 r_1@@12 k@@2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

