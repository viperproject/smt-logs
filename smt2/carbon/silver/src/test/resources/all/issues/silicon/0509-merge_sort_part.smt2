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
(declare-sort T@Field_8007_53 0)
(declare-sort T@Field_8020_8021 0)
(declare-sort T@Field_11611_11612 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_8007_11612 0)
(declare-sort T@Field_8007_13345 0)
(declare-sort T@Field_11611_53 0)
(declare-sort T@Field_11611_8021 0)
(declare-sort T@Field_13340_13345 0)
(declare-datatypes ((T@PolymorphicMapType_7968 0)) (((PolymorphicMapType_7968 (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| (Array T@Ref T@Field_11611_11612 Real)) (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| (Array T@Ref T@Field_11611_53 Real)) (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| (Array T@Ref T@Field_11611_8021 Real)) (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| (Array T@Ref T@Field_13340_13345 Real)) (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| (Array T@Ref T@Field_8007_11612 Real)) (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| (Array T@Ref T@Field_8007_53 Real)) (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| (Array T@Ref T@Field_8020_8021 Real)) (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| (Array T@Ref T@Field_8007_13345 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8496 0)) (((PolymorphicMapType_8496 (|PolymorphicMapType_8496_8007_53#PolymorphicMapType_8496| (Array T@Ref T@Field_8007_53 Bool)) (|PolymorphicMapType_8496_8007_8021#PolymorphicMapType_8496| (Array T@Ref T@Field_8020_8021 Bool)) (|PolymorphicMapType_8496_8007_11612#PolymorphicMapType_8496| (Array T@Ref T@Field_8007_11612 Bool)) (|PolymorphicMapType_8496_8007_26986#PolymorphicMapType_8496| (Array T@Ref T@Field_8007_13345 Bool)) (|PolymorphicMapType_8496_11611_53#PolymorphicMapType_8496| (Array T@Ref T@Field_11611_53 Bool)) (|PolymorphicMapType_8496_11611_8021#PolymorphicMapType_8496| (Array T@Ref T@Field_11611_8021 Bool)) (|PolymorphicMapType_8496_11611_11612#PolymorphicMapType_8496| (Array T@Ref T@Field_11611_11612 Bool)) (|PolymorphicMapType_8496_11611_27836#PolymorphicMapType_8496| (Array T@Ref T@Field_13340_13345 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7947 0)) (((PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| (Array T@Ref T@Field_8007_53 Bool)) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| (Array T@Ref T@Field_8020_8021 T@Ref)) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| (Array T@Ref T@Field_11611_11612 T@FrameType)) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| (Array T@Ref T@Field_8007_11612 T@FrameType)) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| (Array T@Ref T@Field_8007_13345 T@PolymorphicMapType_8496)) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| (Array T@Ref T@Field_11611_53 Bool)) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| (Array T@Ref T@Field_11611_8021 T@Ref)) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| (Array T@Ref T@Field_13340_13345 T@PolymorphicMapType_8496)) ) ) ))
(declare-fun $allocated () T@Field_8007_53)
(declare-fun v_35 () T@Field_8020_8021)
(declare-fun succHeap (T@PolymorphicMapType_7947 T@PolymorphicMapType_7947) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7947 T@PolymorphicMapType_7947) Bool)
(declare-fun state (T@PolymorphicMapType_7947 T@PolymorphicMapType_7968) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7968) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7947 T@PolymorphicMapType_7947 T@PolymorphicMapType_7968) Bool)
(declare-fun IsPredicateField_4426_4427 (T@Field_11611_11612) Bool)
(declare-fun HasDirectPerm_11611_11612 (T@PolymorphicMapType_7968 T@Ref T@Field_11611_11612) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4426 (T@Field_11611_11612) T@Field_13340_13345)
(declare-fun IsPredicateField_8007_25700 (T@Field_8007_11612) Bool)
(declare-fun HasDirectPerm_8007_11612 (T@PolymorphicMapType_7968 T@Ref T@Field_8007_11612) Bool)
(declare-fun PredicateMaskField_8007 (T@Field_8007_11612) T@Field_8007_13345)
(declare-fun IsWandField_11611_29001 (T@Field_11611_11612) Bool)
(declare-fun WandMaskField_11611 (T@Field_11611_11612) T@Field_13340_13345)
(declare-fun IsWandField_8007_28644 (T@Field_8007_11612) Bool)
(declare-fun WandMaskField_8007 (T@Field_8007_11612) T@Field_8007_13345)
(declare-fun ZeroPMask () T@PolymorphicMapType_8496)
(declare-fun |lookup'| (T@PolymorphicMapType_7947 T@Ref Int) Int)
(declare-fun dummyFunction_1385 (Int) Bool)
(declare-fun |lookup#triggerStateless| (T@Ref Int) Int)
(declare-fun VecI32 (T@Ref) T@Field_11611_11612)
(declare-fun |len'| (T@PolymorphicMapType_7947 T@Ref) Int)
(declare-fun |len#triggerStateless| (T@Ref) Int)
(declare-fun |VecI32#trigger_4426| (T@PolymorphicMapType_7947 T@Field_11611_11612) Bool)
(declare-fun |VecI32#everUsed_4426| (T@Field_11611_11612) Bool)
(declare-fun len_1 (T@PolymorphicMapType_7947 T@Ref) Int)
(declare-fun |VecI32#sm| (T@Ref) T@Field_13340_13345)
(declare-fun dummyHeap () T@PolymorphicMapType_7947)
(declare-fun ZeroMask () T@PolymorphicMapType_7968)
(declare-fun InsidePredicate_11611_11611 (T@Field_11611_11612 T@FrameType T@Field_11611_11612 T@FrameType) Bool)
(declare-fun InsidePredicate_8007_8007 (T@Field_8007_11612 T@FrameType T@Field_8007_11612 T@FrameType) Bool)
(declare-fun IsPredicateField_4378_4379 (T@Field_8020_8021) Bool)
(declare-fun IsWandField_4378_4379 (T@Field_8020_8021) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8007_34727 (T@Field_8007_13345) Bool)
(declare-fun IsWandField_8007_34743 (T@Field_8007_13345) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8007_53 (T@Field_8007_53) Bool)
(declare-fun IsWandField_8007_53 (T@Field_8007_53) Bool)
(declare-fun IsPredicateField_4426_34078 (T@Field_13340_13345) Bool)
(declare-fun IsWandField_4426_34094 (T@Field_13340_13345) Bool)
(declare-fun IsPredicateField_4426_8021 (T@Field_11611_8021) Bool)
(declare-fun IsWandField_4426_8021 (T@Field_11611_8021) Bool)
(declare-fun IsPredicateField_4426_53 (T@Field_11611_53) Bool)
(declare-fun IsWandField_4426_53 (T@Field_11611_53) Bool)
(declare-fun HasDirectPerm_11611_25412 (T@PolymorphicMapType_7968 T@Ref T@Field_13340_13345) Bool)
(declare-fun HasDirectPerm_11611_8021 (T@PolymorphicMapType_7968 T@Ref T@Field_11611_8021) Bool)
(declare-fun HasDirectPerm_11611_53 (T@PolymorphicMapType_7968 T@Ref T@Field_11611_53) Bool)
(declare-fun HasDirectPerm_8007_24472 (T@PolymorphicMapType_7968 T@Ref T@Field_8007_13345) Bool)
(declare-fun HasDirectPerm_8007_8021 (T@PolymorphicMapType_7968 T@Ref T@Field_8020_8021) Bool)
(declare-fun HasDirectPerm_8007_53 (T@PolymorphicMapType_7968 T@Ref T@Field_8007_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun lookup (T@PolymorphicMapType_7947 T@Ref Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_7968 T@PolymorphicMapType_7968 T@PolymorphicMapType_7968) Bool)
(declare-fun |lookup#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |len#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_4426_4427 (T@Field_11611_11612) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |len#trigger| (T@FrameType T@Ref) Bool)
(declare-fun InsidePredicate_11611_8007 (T@Field_11611_11612 T@FrameType T@Field_8007_11612 T@FrameType) Bool)
(declare-fun InsidePredicate_8007_11611 (T@Field_8007_11612 T@FrameType T@Field_11611_11612 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7947) (Heap1 T@PolymorphicMapType_7947) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7947) (Mask T@PolymorphicMapType_7968) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7947) (ExhaleHeap T@PolymorphicMapType_7947) (Mask@@0 T@PolymorphicMapType_7968) (pm_f_1 T@Field_11611_11612) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11611_11612 Mask@@0 null pm_f_1) (IsPredicateField_4426_4427 pm_f_1)) (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_8007_53) ) (!  (=> (select (|PolymorphicMapType_8496_8007_53#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@0) null (PredicateMaskField_4426 pm_f_1))) o2_1 f_9) (= (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@0) o2_1 f_9) (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_8020_8021) ) (!  (=> (select (|PolymorphicMapType_8496_8007_8021#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@0) null (PredicateMaskField_4426 pm_f_1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@0) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| ExhaleHeap) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| ExhaleHeap) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_8007_11612) ) (!  (=> (select (|PolymorphicMapType_8496_8007_11612#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@0) null (PredicateMaskField_4426 pm_f_1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@0) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| ExhaleHeap) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| ExhaleHeap) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_8007_13345) ) (!  (=> (select (|PolymorphicMapType_8496_8007_26986#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@0) null (PredicateMaskField_4426 pm_f_1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@0) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap) o2_1@@2 f_9@@2))
))) (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_11611_53) ) (!  (=> (select (|PolymorphicMapType_8496_11611_53#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@0) null (PredicateMaskField_4426 pm_f_1))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@0) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| ExhaleHeap) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| ExhaleHeap) o2_1@@3 f_9@@3))
))) (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_11611_8021) ) (!  (=> (select (|PolymorphicMapType_8496_11611_8021#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@0) null (PredicateMaskField_4426 pm_f_1))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@0) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| ExhaleHeap) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| ExhaleHeap) o2_1@@4 f_9@@4))
))) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_11611_11612) ) (!  (=> (select (|PolymorphicMapType_8496_11611_11612#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@0) null (PredicateMaskField_4426 pm_f_1))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@0) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| ExhaleHeap) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| ExhaleHeap) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_13340_13345) ) (!  (=> (select (|PolymorphicMapType_8496_11611_27836#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@0) null (PredicateMaskField_4426 pm_f_1))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@0) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap) o2_1@@6 f_9@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4426_4427 pm_f_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7947) (ExhaleHeap@@0 T@PolymorphicMapType_7947) (Mask@@1 T@PolymorphicMapType_7968) (pm_f_1@@0 T@Field_8007_11612) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8007_11612 Mask@@1 null pm_f_1@@0) (IsPredicateField_8007_25700 pm_f_1@@0)) (and (and (and (and (and (and (and (forall ((o2_1@@7 T@Ref) (f_9@@7 T@Field_8007_53) ) (!  (=> (select (|PolymorphicMapType_8496_8007_53#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@1) null (PredicateMaskField_8007 pm_f_1@@0))) o2_1@@7 f_9@@7) (= (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@1) o2_1@@7 f_9@@7) (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@7 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@7 f_9@@7))
)) (forall ((o2_1@@8 T@Ref) (f_9@@8 T@Field_8020_8021) ) (!  (=> (select (|PolymorphicMapType_8496_8007_8021#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@1) null (PredicateMaskField_8007 pm_f_1@@0))) o2_1@@8 f_9@@8) (= (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@1) o2_1@@8 f_9@@8) (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@8 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@8 f_9@@8))
))) (forall ((o2_1@@9 T@Ref) (f_9@@9 T@Field_8007_11612) ) (!  (=> (select (|PolymorphicMapType_8496_8007_11612#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@1) null (PredicateMaskField_8007 pm_f_1@@0))) o2_1@@9 f_9@@9) (= (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@1) o2_1@@9 f_9@@9) (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@9 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@9 f_9@@9))
))) (forall ((o2_1@@10 T@Ref) (f_9@@10 T@Field_8007_13345) ) (!  (=> (select (|PolymorphicMapType_8496_8007_26986#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@1) null (PredicateMaskField_8007 pm_f_1@@0))) o2_1@@10 f_9@@10) (= (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@1) o2_1@@10 f_9@@10) (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@10 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@10 f_9@@10))
))) (forall ((o2_1@@11 T@Ref) (f_9@@11 T@Field_11611_53) ) (!  (=> (select (|PolymorphicMapType_8496_11611_53#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@1) null (PredicateMaskField_8007 pm_f_1@@0))) o2_1@@11 f_9@@11) (= (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@1) o2_1@@11 f_9@@11) (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@11 f_9@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@11 f_9@@11))
))) (forall ((o2_1@@12 T@Ref) (f_9@@12 T@Field_11611_8021) ) (!  (=> (select (|PolymorphicMapType_8496_11611_8021#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@1) null (PredicateMaskField_8007 pm_f_1@@0))) o2_1@@12 f_9@@12) (= (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@1) o2_1@@12 f_9@@12) (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@12 f_9@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@12 f_9@@12))
))) (forall ((o2_1@@13 T@Ref) (f_9@@13 T@Field_11611_11612) ) (!  (=> (select (|PolymorphicMapType_8496_11611_11612#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@1) null (PredicateMaskField_8007 pm_f_1@@0))) o2_1@@13 f_9@@13) (= (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@1) o2_1@@13 f_9@@13) (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@13 f_9@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@13 f_9@@13))
))) (forall ((o2_1@@14 T@Ref) (f_9@@14 T@Field_13340_13345) ) (!  (=> (select (|PolymorphicMapType_8496_11611_27836#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@1) null (PredicateMaskField_8007 pm_f_1@@0))) o2_1@@14 f_9@@14) (= (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@1) o2_1@@14 f_9@@14) (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@14 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@0) o2_1@@14 f_9@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8007_25700 pm_f_1@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7947) (ExhaleHeap@@1 T@PolymorphicMapType_7947) (Mask@@2 T@PolymorphicMapType_7968) (pm_f_1@@1 T@Field_11611_11612) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11611_11612 Mask@@2 null pm_f_1@@1) (IsWandField_11611_29001 pm_f_1@@1)) (and (and (and (and (and (and (and (forall ((o2_1@@15 T@Ref) (f_9@@15 T@Field_8007_53) ) (!  (=> (select (|PolymorphicMapType_8496_8007_53#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@2) null (WandMaskField_11611 pm_f_1@@1))) o2_1@@15 f_9@@15) (= (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@2) o2_1@@15 f_9@@15) (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@15 f_9@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@15 f_9@@15))
)) (forall ((o2_1@@16 T@Ref) (f_9@@16 T@Field_8020_8021) ) (!  (=> (select (|PolymorphicMapType_8496_8007_8021#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@2) null (WandMaskField_11611 pm_f_1@@1))) o2_1@@16 f_9@@16) (= (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@2) o2_1@@16 f_9@@16) (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@16 f_9@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@16 f_9@@16))
))) (forall ((o2_1@@17 T@Ref) (f_9@@17 T@Field_8007_11612) ) (!  (=> (select (|PolymorphicMapType_8496_8007_11612#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@2) null (WandMaskField_11611 pm_f_1@@1))) o2_1@@17 f_9@@17) (= (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@2) o2_1@@17 f_9@@17) (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@17 f_9@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@17 f_9@@17))
))) (forall ((o2_1@@18 T@Ref) (f_9@@18 T@Field_8007_13345) ) (!  (=> (select (|PolymorphicMapType_8496_8007_26986#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@2) null (WandMaskField_11611 pm_f_1@@1))) o2_1@@18 f_9@@18) (= (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@2) o2_1@@18 f_9@@18) (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@18 f_9@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@18 f_9@@18))
))) (forall ((o2_1@@19 T@Ref) (f_9@@19 T@Field_11611_53) ) (!  (=> (select (|PolymorphicMapType_8496_11611_53#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@2) null (WandMaskField_11611 pm_f_1@@1))) o2_1@@19 f_9@@19) (= (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@2) o2_1@@19 f_9@@19) (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@19 f_9@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@19 f_9@@19))
))) (forall ((o2_1@@20 T@Ref) (f_9@@20 T@Field_11611_8021) ) (!  (=> (select (|PolymorphicMapType_8496_11611_8021#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@2) null (WandMaskField_11611 pm_f_1@@1))) o2_1@@20 f_9@@20) (= (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@2) o2_1@@20 f_9@@20) (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@20 f_9@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@20 f_9@@20))
))) (forall ((o2_1@@21 T@Ref) (f_9@@21 T@Field_11611_11612) ) (!  (=> (select (|PolymorphicMapType_8496_11611_11612#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@2) null (WandMaskField_11611 pm_f_1@@1))) o2_1@@21 f_9@@21) (= (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@2) o2_1@@21 f_9@@21) (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@21 f_9@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@21 f_9@@21))
))) (forall ((o2_1@@22 T@Ref) (f_9@@22 T@Field_13340_13345) ) (!  (=> (select (|PolymorphicMapType_8496_11611_27836#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@2) null (WandMaskField_11611 pm_f_1@@1))) o2_1@@22 f_9@@22) (= (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@2) o2_1@@22 f_9@@22) (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@22 f_9@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@1) o2_1@@22 f_9@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_11611_29001 pm_f_1@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7947) (ExhaleHeap@@2 T@PolymorphicMapType_7947) (Mask@@3 T@PolymorphicMapType_7968) (pm_f_1@@2 T@Field_8007_11612) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8007_11612 Mask@@3 null pm_f_1@@2) (IsWandField_8007_28644 pm_f_1@@2)) (and (and (and (and (and (and (and (forall ((o2_1@@23 T@Ref) (f_9@@23 T@Field_8007_53) ) (!  (=> (select (|PolymorphicMapType_8496_8007_53#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@3) null (WandMaskField_8007 pm_f_1@@2))) o2_1@@23 f_9@@23) (= (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@3) o2_1@@23 f_9@@23) (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@23 f_9@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@23 f_9@@23))
)) (forall ((o2_1@@24 T@Ref) (f_9@@24 T@Field_8020_8021) ) (!  (=> (select (|PolymorphicMapType_8496_8007_8021#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@3) null (WandMaskField_8007 pm_f_1@@2))) o2_1@@24 f_9@@24) (= (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@3) o2_1@@24 f_9@@24) (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@24 f_9@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@24 f_9@@24))
))) (forall ((o2_1@@25 T@Ref) (f_9@@25 T@Field_8007_11612) ) (!  (=> (select (|PolymorphicMapType_8496_8007_11612#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@3) null (WandMaskField_8007 pm_f_1@@2))) o2_1@@25 f_9@@25) (= (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@3) o2_1@@25 f_9@@25) (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@25 f_9@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@25 f_9@@25))
))) (forall ((o2_1@@26 T@Ref) (f_9@@26 T@Field_8007_13345) ) (!  (=> (select (|PolymorphicMapType_8496_8007_26986#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@3) null (WandMaskField_8007 pm_f_1@@2))) o2_1@@26 f_9@@26) (= (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@3) o2_1@@26 f_9@@26) (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@26 f_9@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@26 f_9@@26))
))) (forall ((o2_1@@27 T@Ref) (f_9@@27 T@Field_11611_53) ) (!  (=> (select (|PolymorphicMapType_8496_11611_53#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@3) null (WandMaskField_8007 pm_f_1@@2))) o2_1@@27 f_9@@27) (= (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@3) o2_1@@27 f_9@@27) (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@27 f_9@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@27 f_9@@27))
))) (forall ((o2_1@@28 T@Ref) (f_9@@28 T@Field_11611_8021) ) (!  (=> (select (|PolymorphicMapType_8496_11611_8021#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@3) null (WandMaskField_8007 pm_f_1@@2))) o2_1@@28 f_9@@28) (= (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@3) o2_1@@28 f_9@@28) (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@28 f_9@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@28 f_9@@28))
))) (forall ((o2_1@@29 T@Ref) (f_9@@29 T@Field_11611_11612) ) (!  (=> (select (|PolymorphicMapType_8496_11611_11612#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@3) null (WandMaskField_8007 pm_f_1@@2))) o2_1@@29 f_9@@29) (= (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@3) o2_1@@29 f_9@@29) (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@29 f_9@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@29 f_9@@29))
))) (forall ((o2_1@@30 T@Ref) (f_9@@30 T@Field_13340_13345) ) (!  (=> (select (|PolymorphicMapType_8496_11611_27836#PolymorphicMapType_8496| (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@3) null (WandMaskField_8007 pm_f_1@@2))) o2_1@@30 f_9@@30) (= (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@3) o2_1@@30 f_9@@30) (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@30 f_9@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@2) o2_1@@30 f_9@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_8007_28644 pm_f_1@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7947) (Heap1@@0 T@PolymorphicMapType_7947) (Heap2 T@PolymorphicMapType_7947) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13340_13345) ) (!  (not (select (|PolymorphicMapType_8496_11611_27836#PolymorphicMapType_8496| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8496_11611_27836#PolymorphicMapType_8496| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11611_11612) ) (!  (not (select (|PolymorphicMapType_8496_11611_11612#PolymorphicMapType_8496| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8496_11611_11612#PolymorphicMapType_8496| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11611_8021) ) (!  (not (select (|PolymorphicMapType_8496_11611_8021#PolymorphicMapType_8496| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8496_11611_8021#PolymorphicMapType_8496| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11611_53) ) (!  (not (select (|PolymorphicMapType_8496_11611_53#PolymorphicMapType_8496| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8496_11611_53#PolymorphicMapType_8496| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8007_13345) ) (!  (not (select (|PolymorphicMapType_8496_8007_26986#PolymorphicMapType_8496| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8496_8007_26986#PolymorphicMapType_8496| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8007_11612) ) (!  (not (select (|PolymorphicMapType_8496_8007_11612#PolymorphicMapType_8496| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8496_8007_11612#PolymorphicMapType_8496| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8020_8021) ) (!  (not (select (|PolymorphicMapType_8496_8007_8021#PolymorphicMapType_8496| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8496_8007_8021#PolymorphicMapType_8496| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8007_53) ) (!  (not (select (|PolymorphicMapType_8496_8007_53#PolymorphicMapType_8496| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8496_8007_53#PolymorphicMapType_8496| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7947) (self T@Ref) (index Int) ) (! (dummyFunction_1385 (|lookup#triggerStateless| self index))
 :qid |stdinbpl.260:15|
 :skolemid |27|
 :pattern ( (|lookup'| Heap@@4 self index))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_4426_4427 (VecI32 x))
 :qid |stdinbpl.333:15|
 :skolemid |30|
 :pattern ( (VecI32 x))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7947) (x@@0 T@Ref) ) (! (dummyFunction_1385 (|len#triggerStateless| x@@0))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|len'| Heap@@5 x@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7947) (x@@1 T@Ref) ) (! (|VecI32#everUsed_4426| (VecI32 x@@1))
 :qid |stdinbpl.352:15|
 :skolemid |34|
 :pattern ( (|VecI32#trigger_4426| Heap@@6 (VecI32 x@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7947) (x@@2 T@Ref) ) (!  (and (= (len_1 Heap@@7 x@@2) (|len'| Heap@@7 x@@2)) (dummyFunction_1385 (|len#triggerStateless| x@@2)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (len_1 Heap@@7 x@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7947) (ExhaleHeap@@3 T@PolymorphicMapType_7947) (Mask@@4 T@PolymorphicMapType_7968) (pm_f_1@@3 T@Field_11611_11612) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11611_11612 Mask@@4 null pm_f_1@@3) (IsPredicateField_4426_4427 pm_f_1@@3)) (= (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@8) null (PredicateMaskField_4426 pm_f_1@@3)) (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@3) null (PredicateMaskField_4426 pm_f_1@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4426_4427 pm_f_1@@3) (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@3) null (PredicateMaskField_4426 pm_f_1@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7947) (ExhaleHeap@@4 T@PolymorphicMapType_7947) (Mask@@5 T@PolymorphicMapType_7968) (pm_f_1@@4 T@Field_8007_11612) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8007_11612 Mask@@5 null pm_f_1@@4) (IsPredicateField_8007_25700 pm_f_1@@4)) (= (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@9) null (PredicateMaskField_8007 pm_f_1@@4)) (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@4) null (PredicateMaskField_8007 pm_f_1@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsPredicateField_8007_25700 pm_f_1@@4) (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@4) null (PredicateMaskField_8007 pm_f_1@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7947) (ExhaleHeap@@5 T@PolymorphicMapType_7947) (Mask@@6 T@PolymorphicMapType_7968) (pm_f_1@@5 T@Field_11611_11612) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11611_11612 Mask@@6 null pm_f_1@@5) (IsWandField_11611_29001 pm_f_1@@5)) (= (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@10) null (WandMaskField_11611 pm_f_1@@5)) (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@5) null (WandMaskField_11611 pm_f_1@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (IsWandField_11611_29001 pm_f_1@@5) (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@5) null (WandMaskField_11611 pm_f_1@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7947) (ExhaleHeap@@6 T@PolymorphicMapType_7947) (Mask@@7 T@PolymorphicMapType_7968) (pm_f_1@@6 T@Field_8007_11612) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_8007_11612 Mask@@7 null pm_f_1@@6) (IsWandField_8007_28644 pm_f_1@@6)) (= (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@11) null (WandMaskField_8007 pm_f_1@@6)) (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@6) null (WandMaskField_8007 pm_f_1@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (IsWandField_8007_28644 pm_f_1@@6) (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@6) null (WandMaskField_8007 pm_f_1@@6)))
)))
(assert (forall ((x@@3 T@Ref) (x2 T@Ref) ) (!  (=> (= (VecI32 x@@3) (VecI32 x2)) (= x@@3 x2))
 :qid |stdinbpl.343:15|
 :skolemid |32|
 :pattern ( (VecI32 x@@3) (VecI32 x2))
)))
(assert (forall ((x@@4 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|VecI32#sm| x@@4) (|VecI32#sm| x2@@0)) (= x@@4 x2@@0))
 :qid |stdinbpl.347:15|
 :skolemid |33|
 :pattern ( (|VecI32#sm| x@@4) (|VecI32#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7947) (ExhaleHeap@@7 T@PolymorphicMapType_7947) (Mask@@8 T@PolymorphicMapType_7968) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@12) o_4 $allocated) (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap@@7) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap@@7) o_4 $allocated))
)))
(assert (forall ((p T@Field_11611_11612) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11611_11611 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11611_11611 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8007_11612) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8007_8007 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8007_8007 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4378_4379 v_35)))
(assert  (not (IsWandField_4378_4379 v_35)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7947) (ExhaleHeap@@8 T@PolymorphicMapType_7947) (Mask@@9 T@PolymorphicMapType_7968) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@13 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7968) (o_2@@7 T@Ref) (f_4@@7 T@Field_8007_13345) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8007_34727 f_4@@7))) (not (IsWandField_8007_34743 f_4@@7))) (<= (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7968) (o_2@@8 T@Ref) (f_4@@8 T@Field_8020_8021) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4378_4379 f_4@@8))) (not (IsWandField_4378_4379 f_4@@8))) (<= (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7968) (o_2@@9 T@Ref) (f_4@@9 T@Field_8007_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8007_53 f_4@@9))) (not (IsWandField_8007_53 f_4@@9))) (<= (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7968) (o_2@@10 T@Ref) (f_4@@10 T@Field_8007_11612) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8007_25700 f_4@@10))) (not (IsWandField_8007_28644 f_4@@10))) (<= (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7968) (o_2@@11 T@Ref) (f_4@@11 T@Field_13340_13345) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4426_34078 f_4@@11))) (not (IsWandField_4426_34094 f_4@@11))) (<= (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7968) (o_2@@12 T@Ref) (f_4@@12 T@Field_11611_8021) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4426_8021 f_4@@12))) (not (IsWandField_4426_8021 f_4@@12))) (<= (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7968) (o_2@@13 T@Ref) (f_4@@13 T@Field_11611_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4426_53 f_4@@13))) (not (IsWandField_4426_53 f_4@@13))) (<= (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7968) (o_2@@14 T@Ref) (f_4@@14 T@Field_11611_11612) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4426_4427 f_4@@14))) (not (IsWandField_11611_29001 f_4@@14))) (<= (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7968) (o_2@@15 T@Ref) (f_4@@15 T@Field_13340_13345) ) (! (= (HasDirectPerm_11611_25412 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11611_25412 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7968) (o_2@@16 T@Ref) (f_4@@16 T@Field_11611_11612) ) (! (= (HasDirectPerm_11611_11612 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11611_11612 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7968) (o_2@@17 T@Ref) (f_4@@17 T@Field_11611_8021) ) (! (= (HasDirectPerm_11611_8021 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11611_8021 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7968) (o_2@@18 T@Ref) (f_4@@18 T@Field_11611_53) ) (! (= (HasDirectPerm_11611_53 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11611_53 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7968) (o_2@@19 T@Ref) (f_4@@19 T@Field_8007_13345) ) (! (= (HasDirectPerm_8007_24472 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8007_24472 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7968) (o_2@@20 T@Ref) (f_4@@20 T@Field_8007_11612) ) (! (= (HasDirectPerm_8007_11612 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8007_11612 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7968) (o_2@@21 T@Ref) (f_4@@21 T@Field_8020_8021) ) (! (= (HasDirectPerm_8007_8021 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8007_8021 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7968) (o_2@@22 T@Ref) (f_4@@22 T@Field_8007_53) ) (! (= (HasDirectPerm_8007_53 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8007_53 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7947) (ExhaleHeap@@9 T@PolymorphicMapType_7947) (Mask@@26 T@PolymorphicMapType_7968) (o_4@@0 T@Ref) (f_9@@31 T@Field_13340_13345) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_11611_25412 Mask@@26 o_4@@0 f_9@@31) (= (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@14) o_4@@0 f_9@@31) (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@9) o_4@@0 f_9@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| ExhaleHeap@@9) o_4@@0 f_9@@31))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7947) (ExhaleHeap@@10 T@PolymorphicMapType_7947) (Mask@@27 T@PolymorphicMapType_7968) (o_4@@1 T@Ref) (f_9@@32 T@Field_11611_11612) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_11611_11612 Mask@@27 o_4@@1 f_9@@32) (= (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@15) o_4@@1 f_9@@32) (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| ExhaleHeap@@10) o_4@@1 f_9@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| ExhaleHeap@@10) o_4@@1 f_9@@32))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7947) (ExhaleHeap@@11 T@PolymorphicMapType_7947) (Mask@@28 T@PolymorphicMapType_7968) (o_4@@2 T@Ref) (f_9@@33 T@Field_11611_8021) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_11611_8021 Mask@@28 o_4@@2 f_9@@33) (= (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@16) o_4@@2 f_9@@33) (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| ExhaleHeap@@11) o_4@@2 f_9@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| ExhaleHeap@@11) o_4@@2 f_9@@33))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7947) (ExhaleHeap@@12 T@PolymorphicMapType_7947) (Mask@@29 T@PolymorphicMapType_7968) (o_4@@3 T@Ref) (f_9@@34 T@Field_11611_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_11611_53 Mask@@29 o_4@@3 f_9@@34) (= (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@17) o_4@@3 f_9@@34) (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| ExhaleHeap@@12) o_4@@3 f_9@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| ExhaleHeap@@12) o_4@@3 f_9@@34))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7947) (ExhaleHeap@@13 T@PolymorphicMapType_7947) (Mask@@30 T@PolymorphicMapType_7968) (o_4@@4 T@Ref) (f_9@@35 T@Field_8007_13345) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_8007_24472 Mask@@30 o_4@@4 f_9@@35) (= (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@18) o_4@@4 f_9@@35) (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@13) o_4@@4 f_9@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| ExhaleHeap@@13) o_4@@4 f_9@@35))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7947) (ExhaleHeap@@14 T@PolymorphicMapType_7947) (Mask@@31 T@PolymorphicMapType_7968) (o_4@@5 T@Ref) (f_9@@36 T@Field_8007_11612) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_8007_11612 Mask@@31 o_4@@5 f_9@@36) (= (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@19) o_4@@5 f_9@@36) (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| ExhaleHeap@@14) o_4@@5 f_9@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| ExhaleHeap@@14) o_4@@5 f_9@@36))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7947) (ExhaleHeap@@15 T@PolymorphicMapType_7947) (Mask@@32 T@PolymorphicMapType_7968) (o_4@@6 T@Ref) (f_9@@37 T@Field_8020_8021) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_8007_8021 Mask@@32 o_4@@6 f_9@@37) (= (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@20) o_4@@6 f_9@@37) (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| ExhaleHeap@@15) o_4@@6 f_9@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| ExhaleHeap@@15) o_4@@6 f_9@@37))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7947) (ExhaleHeap@@16 T@PolymorphicMapType_7947) (Mask@@33 T@PolymorphicMapType_7968) (o_4@@7 T@Ref) (f_9@@38 T@Field_8007_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_8007_53 Mask@@33 o_4@@7 f_9@@38) (= (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@21) o_4@@7 f_9@@38) (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap@@16) o_4@@7 f_9@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| ExhaleHeap@@16) o_4@@7 f_9@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_8007_13345) ) (! (= (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_8020_8021) ) (! (= (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_8007_53) ) (! (= (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_8007_11612) ) (! (= (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_13340_13345) ) (! (= (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_11611_8021) ) (! (= (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_11611_53) ) (! (= (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_11611_11612) ) (! (= (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7947) (self@@0 T@Ref) (index@@0 Int) ) (!  (and (= (lookup Heap@@22 self@@0 index@@0) (|lookup'| Heap@@22 self@@0 index@@0)) (dummyFunction_1385 (|lookup#triggerStateless| self@@0 index@@0)))
 :qid |stdinbpl.256:15|
 :skolemid |26|
 :pattern ( (lookup Heap@@22 self@@0 index@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7968) (SummandMask1 T@PolymorphicMapType_7968) (SummandMask2 T@PolymorphicMapType_7968) (o_2@@31 T@Ref) (f_4@@31 T@Field_8007_13345) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7968) (SummandMask1@@0 T@PolymorphicMapType_7968) (SummandMask2@@0 T@PolymorphicMapType_7968) (o_2@@32 T@Ref) (f_4@@32 T@Field_8020_8021) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7968) (SummandMask1@@1 T@PolymorphicMapType_7968) (SummandMask2@@1 T@PolymorphicMapType_7968) (o_2@@33 T@Ref) (f_4@@33 T@Field_8007_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7968) (SummandMask1@@2 T@PolymorphicMapType_7968) (SummandMask2@@2 T@PolymorphicMapType_7968) (o_2@@34 T@Ref) (f_4@@34 T@Field_8007_11612) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7968) (SummandMask1@@3 T@PolymorphicMapType_7968) (SummandMask2@@3 T@PolymorphicMapType_7968) (o_2@@35 T@Ref) (f_4@@35 T@Field_13340_13345) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7968) (SummandMask1@@4 T@PolymorphicMapType_7968) (SummandMask2@@4 T@PolymorphicMapType_7968) (o_2@@36 T@Ref) (f_4@@36 T@Field_11611_8021) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7968) (SummandMask1@@5 T@PolymorphicMapType_7968) (SummandMask2@@5 T@PolymorphicMapType_7968) (o_2@@37 T@Ref) (f_4@@37 T@Field_11611_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7968) (SummandMask1@@6 T@PolymorphicMapType_7968) (SummandMask2@@6 T@PolymorphicMapType_7968) (o_2@@38 T@Ref) (f_4@@38 T@Field_11611_11612) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7947) (Mask@@34 T@PolymorphicMapType_7968) (self@@1 T@Ref) (index@@1 Int) ) (!  (=> (state Heap@@23 Mask@@34) (= (|lookup'| Heap@@23 self@@1 index@@1) (|lookup#frame| (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@23) null (VecI32 self@@1)) self@@1 index@@1)))
 :qid |stdinbpl.267:15|
 :skolemid |28|
 :pattern ( (state Heap@@23 Mask@@34) (|lookup'| Heap@@23 self@@1 index@@1))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7947) (Mask@@35 T@PolymorphicMapType_7968) (x@@5 T@Ref) ) (!  (=> (state Heap@@24 Mask@@35) (= (|len'| Heap@@24 x@@5) (|len#frame| (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@24) null (VecI32 x@@5)) x@@5)))
 :qid |stdinbpl.206:15|
 :skolemid |24|
 :pattern ( (state Heap@@24 Mask@@35) (|len'| Heap@@24 x@@5))
)))
(assert (forall ((x@@6 T@Ref) ) (! (= (getPredWandId_4426_4427 (VecI32 x@@6)) 0)
 :qid |stdinbpl.337:15|
 :skolemid |31|
 :pattern ( (VecI32 x@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7947) (Mask@@36 T@PolymorphicMapType_7968) (x@@7 T@Ref) ) (!  (=> (and (state Heap@@25 Mask@@36) (or (< AssumeFunctionsAbove 1) (|len#trigger| (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@25) null (VecI32 x@@7)) x@@7))) (>= (|len'| Heap@@25 x@@7) 0))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (state Heap@@25 Mask@@36) (|len'| Heap@@25 x@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7947) (o_3 T@Ref) (f_10 T@Field_13340_13345) (v T@PolymorphicMapType_8496) ) (! (succHeap Heap@@26 (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@26) (store (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@26) o_3 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@26) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@26) (store (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@26) o_3 f_10 v)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7947) (o_3@@0 T@Ref) (f_10@@0 T@Field_11611_11612) (v@@0 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@27) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@27) (store (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@27) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@27) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@27) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@27) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@27) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@27) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@27) (store (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@27) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@27) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@27) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@27) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@27) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7947) (o_3@@1 T@Ref) (f_10@@1 T@Field_11611_8021) (v@@1 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@28) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@28) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@28) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@28) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@28) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@28) (store (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@28) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@28) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@28) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@28) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@28) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@28) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@28) (store (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@28) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7947) (o_3@@2 T@Ref) (f_10@@2 T@Field_11611_53) (v@@2 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@29) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@29) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@29) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@29) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@29) (store (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@29) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@29) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@29) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@29) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@29) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@29) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@29) (store (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@29) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@29) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7947) (o_3@@3 T@Ref) (f_10@@3 T@Field_8007_13345) (v@@3 T@PolymorphicMapType_8496) ) (! (succHeap Heap@@30 (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@30) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@30) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@30) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@30) (store (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@30) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@30) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@30) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@30) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@30) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@30) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@30) (store (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@30) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@30) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@30) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7947) (o_3@@4 T@Ref) (f_10@@4 T@Field_8007_11612) (v@@4 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@31) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@31) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@31) (store (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@31) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@31) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@31) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@31) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@31) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@31) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@31) (store (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@31) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@31) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@31) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@31) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7947) (o_3@@5 T@Ref) (f_10@@5 T@Field_8020_8021) (v@@5 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@32) (store (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@32) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@32) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@32) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@32) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@32) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@32) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7947 (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@32) (store (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@32) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@32) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@32) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@32) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@32) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@32) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7947) (o_3@@6 T@Ref) (f_10@@6 T@Field_8007_53) (v@@6 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_7947 (store (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@33) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7947 (store (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@33) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_8007_11612#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_8007_24514#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_11611_53#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_11611_8021#PolymorphicMapType_7947| Heap@@33) (|PolymorphicMapType_7947_11611_25454#PolymorphicMapType_7947| Heap@@33)))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (PredicateMaskField_4426 (VecI32 x@@8)) (|VecI32#sm| x@@8))
 :qid |stdinbpl.329:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_4426 (VecI32 x@@8)))
)))
(assert (forall ((o_3@@7 T@Ref) (f_8 T@Field_8020_8021) (Heap@@34 T@PolymorphicMapType_7947) ) (!  (=> (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@34) o_3@@7 $allocated) (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@34) (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@34) o_3@@7 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7947_4253_4254#PolymorphicMapType_7947| Heap@@34) o_3@@7 f_8))
)))
(assert (forall ((p@@2 T@Field_11611_11612) (v_1@@1 T@FrameType) (q T@Field_11611_11612) (w@@1 T@FrameType) (r T@Field_11611_11612) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11611_11611 p@@2 v_1@@1 q w@@1) (InsidePredicate_11611_11611 q w@@1 r u)) (InsidePredicate_11611_11611 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11611_11611 p@@2 v_1@@1 q w@@1) (InsidePredicate_11611_11611 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_11611_11612) (v_1@@2 T@FrameType) (q@@0 T@Field_11611_11612) (w@@2 T@FrameType) (r@@0 T@Field_8007_11612) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11611_11611 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11611_8007 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_11611_8007 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11611_11611 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11611_8007 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_11611_11612) (v_1@@3 T@FrameType) (q@@1 T@Field_8007_11612) (w@@3 T@FrameType) (r@@1 T@Field_11611_11612) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11611_8007 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8007_11611 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_11611_11611 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11611_8007 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8007_11611 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_11611_11612) (v_1@@4 T@FrameType) (q@@2 T@Field_8007_11612) (w@@4 T@FrameType) (r@@2 T@Field_8007_11612) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11611_8007 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8007_8007 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_11611_8007 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11611_8007 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8007_8007 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8007_11612) (v_1@@5 T@FrameType) (q@@3 T@Field_11611_11612) (w@@5 T@FrameType) (r@@3 T@Field_11611_11612) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8007_11611 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11611_11611 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8007_11611 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8007_11611 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11611_11611 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8007_11612) (v_1@@6 T@FrameType) (q@@4 T@Field_11611_11612) (w@@6 T@FrameType) (r@@4 T@Field_8007_11612) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8007_11611 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11611_8007 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8007_8007 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8007_11611 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11611_8007 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8007_11612) (v_1@@7 T@FrameType) (q@@5 T@Field_8007_11612) (w@@7 T@FrameType) (r@@5 T@Field_11611_11612) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8007_8007 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8007_11611 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8007_11611 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8007_8007 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8007_11611 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8007_11612) (v_1@@8 T@FrameType) (q@@6 T@Field_8007_11612) (w@@8 T@FrameType) (r@@6 T@Field_8007_11612) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8007_8007 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8007_8007 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8007_8007 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8007_8007 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8007_8007 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun mid@0 () Int)
(declare-fun i_7_1 () Int)
(declare-fun j_6_2 () Int)
(declare-fun until () Int)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_7947)
(declare-fun arr () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_7968)
(declare-fun j_13 () Int)
(declare-fun i_14 () Int)
(declare-fun Mask@2 () T@PolymorphicMapType_7968)
(declare-fun Mask@1 () T@PolymorphicMapType_7968)
(declare-fun from_1 () Int)
(declare-fun Heap@@35 () T@PolymorphicMapType_7947)
(declare-fun left_value@0 () Int)
(declare-fun left_copy () T@Ref)
(declare-fun i_3_2 () Int)
(declare-fun j_3 () Int)
(declare-fun j_12 () Int)
(declare-fun i_4 () Int)
(declare-fun perm@1 () Real)
(declare-fun j_15 () Int)
(declare-fun i_3 () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_7968)
(declare-fun perm@0 () Real)
(set-info :boogie-vc-id merge_sort_part)
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
 (=> (= (ControlFlow 0 0) 65) (let ((anon36_correct true))
(let ((anon57_Else_correct  (=> (and (not (and (<= mid@0 i_7_1) (and (< i_7_1 j_6_2) (< j_6_2 until)))) (= (ControlFlow 0 52) 49)) anon36_correct)))
(let ((anon57_Then_correct  (=> (and (<= mid@0 i_7_1) (and (< i_7_1 j_6_2) (< j_6_2 until))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (<= (lookup ExhaleHeap@3 arr i_7_1) (lookup ExhaleHeap@3 arr j_6_2))) (=> (<= (lookup ExhaleHeap@3 arr i_7_1) (lookup ExhaleHeap@3 arr j_6_2)) (=> (= (ControlFlow 0 50) 49) anon36_correct))))))
(let ((anon55_Then_correct  (and (=> (= (ControlFlow 0 45) (- 0 47)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@3) null (VecI32 arr))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@3) null (VecI32 arr)))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (<= 0 j_13)) (=> (<= 0 j_13) (=> (= (ControlFlow 0 45) (- 0 44)) (< j_13 (len_1 ExhaleHeap@3 arr)))))))))
(let ((anon54_Then_correct  (and (=> (= (ControlFlow 0 41) (- 0 43)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@3) null (VecI32 arr))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@3) null (VecI32 arr)))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (<= 0 i_14)) (=> (<= 0 i_14) (=> (= (ControlFlow 0 41) (- 0 40)) (< i_14 (len_1 ExhaleHeap@3 arr)))))))))
(let ((anon32_correct true))
(let ((anon53_Then_correct  (=> (and (<= mid@0 i_14) (and (< i_14 j_13) (< j_13 until))) (and (and (=> (= (ControlFlow 0 48) 41) anon54_Then_correct) (=> (= (ControlFlow 0 48) 45) anon55_Then_correct)) (=> (= (ControlFlow 0 48) 38) anon32_correct)))))
(let ((anon53_Else_correct  (=> (and (not (and (<= mid@0 i_14) (and (< i_14 j_13) (< j_13 until)))) (= (ControlFlow 0 39) 38)) anon32_correct)))
(let ((anon56_Else_correct true))
(let ((anon26_correct  (=> (= Mask@2 (PolymorphicMapType_7968 (store (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr) (- (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr)) FullPerm)) (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| Mask@1) (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| Mask@1) (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| Mask@1) (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| Mask@1) (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| Mask@1) (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| Mask@1) (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| Mask@1))) (and (=> (= (ControlFlow 0 53) (- 0 55)) (<= 0 from_1)) (=> (<= 0 from_1) (and (=> (= (ControlFlow 0 53) (- 0 54)) (< from_1 (len_1 Heap@@35 arr))) (=> (< from_1 (len_1 Heap@@35 arr)) (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@3 Mask@2) (=> (and (= Mask@3 (PolymorphicMapType_7968 (store (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@2) null (VecI32 arr) (+ (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@2) null (VecI32 arr)) FullPerm)) (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| Mask@2) (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| Mask@2) (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| Mask@2) (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| Mask@2) (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| Mask@2) (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| Mask@2) (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| Mask@2))) (state ExhaleHeap@3 Mask@3)) (=> (and (and (and (state ExhaleHeap@3 Mask@3) (= (len_1 ExhaleHeap@3 arr) (len_1 Heap@@35 arr))) (and (state ExhaleHeap@3 Mask@3) (= (lookup ExhaleHeap@3 arr from_1) left_value@0))) (and (and (state ExhaleHeap@3 Mask@3) (forall ((i_5_1 Int) ) (!  (=> (and (<= 0 i_5_1) (and (< i_5_1 (len_1 ExhaleHeap@3 arr)) (not (= i_5_1 from_1)))) (= (lookup ExhaleHeap@3 arr i_5_1) (lookup Heap@@35 arr i_5_1)))
 :qid |stdinbpl.888:22|
 :skolemid |39|
 :pattern ( (|lookup#frame| (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| ExhaleHeap@3) null (VecI32 arr)) arr i_5_1))
))) (and (state ExhaleHeap@3 Mask@3) (state ExhaleHeap@3 Mask@3)))) (and (and (and (and (=> (= (ControlFlow 0 53) 37) anon56_Else_correct) (=> (= (ControlFlow 0 53) 50) anon57_Then_correct)) (=> (= (ControlFlow 0 53) 52) anon57_Else_correct)) (=> (= (ControlFlow 0 53) 48) anon53_Then_correct)) (=> (= (ControlFlow 0 53) 39) anon53_Else_correct))))))))))))
(let ((anon51_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 58) 53)) anon26_correct)))
(let ((anon51_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 56) (- 0 57)) (<= FullPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr)))) (=> (<= FullPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr))) (=> (= (ControlFlow 0 56) 53) anon26_correct))))))
(let ((anon50_Else_correct  (=> (and (= left_value@0 (lookup Heap@@35 left_copy 0)) (state Heap@@35 Mask@1)) (and (=> (= (ControlFlow 0 59) 56) anon51_Then_correct) (=> (= (ControlFlow 0 59) 58) anon51_Else_correct)))))
(let ((anon50_Then_correct  (and (=> (= (ControlFlow 0 34) (- 0 36)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 left_copy))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 left_copy)))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (<= 0 0)) (=> (<= 0 0) (=> (= (ControlFlow 0 34) (- 0 33)) (< 0 (len_1 Heap@@35 left_copy)))))))))
(let ((anon48_Else_correct  (=> (and (forall ((i_4_1_1 Int) (j_4_1_1 Int) ) (!  (=> (and (<= mid@0 i_4_1_1) (and (< i_4_1_1 j_4_1_1) (< j_4_1_1 until))) (<= (lookup Heap@@35 arr i_4_1_1) (lookup Heap@@35 arr j_4_1_1)))
 :qid |stdinbpl.827:20|
 :skolemid |38|
 :pattern ( (|lookup#frame| (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@35) null (VecI32 arr)) arr i_4_1_1) (|lookup#frame| (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@35) null (VecI32 arr)) arr j_4_1_1))
)) (state Heap@@35 Mask@1)) (and (=> (= (ControlFlow 0 60) 34) anon50_Then_correct) (=> (= (ControlFlow 0 60) 59) anon50_Else_correct)))))
(let ((anon21_correct true))
(let ((anon49_Else_correct  (=> (and (not (and (<= mid@0 i_3_2) (and (< i_3_2 j_3) (< j_3 until)))) (= (ControlFlow 0 32) 29)) anon21_correct)))
(let ((anon49_Then_correct  (=> (and (<= mid@0 i_3_2) (and (< i_3_2 j_3) (< j_3 until))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (<= (lookup Heap@@35 arr i_3_2) (lookup Heap@@35 arr j_3))) (=> (<= (lookup Heap@@35 arr i_3_2) (lookup Heap@@35 arr j_3)) (=> (= (ControlFlow 0 30) 29) anon21_correct))))))
(let ((anon47_Then_correct  (and (=> (= (ControlFlow 0 25) (- 0 27)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr)))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (<= 0 j_12)) (=> (<= 0 j_12) (=> (= (ControlFlow 0 25) (- 0 24)) (< j_12 (len_1 Heap@@35 arr)))))))))
(let ((anon46_Then_correct  (and (=> (= (ControlFlow 0 21) (- 0 23)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= 0 i_4)) (=> (<= 0 i_4) (=> (= (ControlFlow 0 21) (- 0 20)) (< i_4 (len_1 Heap@@35 arr)))))))))
(let ((anon17_correct true))
(let ((anon45_Then_correct  (=> (and (<= mid@0 i_4) (and (< i_4 j_12) (< j_12 until))) (and (and (=> (= (ControlFlow 0 28) 21) anon46_Then_correct) (=> (= (ControlFlow 0 28) 25) anon47_Then_correct)) (=> (= (ControlFlow 0 28) 18) anon17_correct)))))
(let ((anon45_Else_correct  (=> (and (not (and (<= mid@0 i_4) (and (< i_4 j_12) (< j_12 until)))) (= (ControlFlow 0 19) 18)) anon17_correct)))
(let ((anon43_Else_correct  (=> (< 0 (len_1 Heap@@35 left_copy)) (=> (and (state Heap@@35 Mask@1) (state Heap@@35 Mask@1)) (and (and (and (and (=> (= (ControlFlow 0 61) 60) anon48_Else_correct) (=> (= (ControlFlow 0 61) 30) anon49_Then_correct)) (=> (= (ControlFlow 0 61) 32) anon49_Else_correct)) (=> (= (ControlFlow 0 61) 28) anon45_Then_correct)) (=> (= (ControlFlow 0 61) 19) anon45_Else_correct))))))
(let ((anon43_Then_correct  (=> (= perm@1 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (= (ControlFlow 0 16) (- 0 15)) (=> (< NoPerm perm@1) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 left_copy))))))))))
(let ((anon39_Else_correct  (=> (and (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= mid@0 i_1) (and (< i_1 j_1) (< j_1 until))) (<= (lookup Heap@@35 arr i_1) (lookup Heap@@35 arr j_1)))
 :qid |stdinbpl.740:20|
 :skolemid |37|
 :pattern ( (|lookup#frame| (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@35) null (VecI32 arr)) arr i_1) (|lookup#frame| (select (|PolymorphicMapType_7947_4426_4427#PolymorphicMapType_7947| Heap@@35) null (VecI32 arr)) arr j_1))
)) (state Heap@@35 Mask@1)) (and (state Heap@@35 Mask@1) (state Heap@@35 Mask@1))) (and (=> (= (ControlFlow 0 62) 16) anon43_Then_correct) (=> (= (ControlFlow 0 62) 61) anon43_Else_correct)))))
(let ((anon42_Then_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= 0 j_15)) (=> (<= 0 j_15) (=> (= (ControlFlow 0 11) (- 0 10)) (< j_15 (len_1 Heap@@35 arr)))))))))
(let ((anon41_Then_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@1) null (VecI32 arr)))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= 0 i_3)) (=> (<= 0 i_3) (=> (= (ControlFlow 0 7) (- 0 6)) (< i_3 (len_1 Heap@@35 arr)))))))))
(let ((anon8_correct true))
(let ((anon40_Then_correct  (=> (and (<= mid@0 i_3) (and (< i_3 j_15) (< j_15 until))) (and (and (=> (= (ControlFlow 0 14) 7) anon41_Then_correct) (=> (= (ControlFlow 0 14) 11) anon42_Then_correct)) (=> (= (ControlFlow 0 14) 4) anon8_correct)))))
(let ((anon40_Else_correct  (=> (and (not (and (<= mid@0 i_3) (and (< i_3 j_15) (< j_15 until)))) (= (ControlFlow 0 5) 4)) anon8_correct)))
(let ((anon38_Else_correct  (=> (and (and (and (and (<= until (len_1 Heap@@35 arr)) (state Heap@@35 Mask@0)) (and (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@35) left_copy $allocated) (> (- until from_1) 1))) (and (and (state Heap@@35 Mask@0) (state Heap@@35 Mask@0)) (and (= mid@0 (+ from_1 (div (- until from_1) 2))) (state Heap@@35 Mask@0)))) (and (and (and (state Heap@@35 Mask@0) (state Heap@@35 Mask@0)) (and (state Heap@@35 Mask@0) (= Mask@1 (PolymorphicMapType_7968 (store (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@0) null (VecI32 left_copy) (+ (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@0) null (VecI32 left_copy)) FullPerm)) (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| Mask@0) (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| Mask@0) (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| Mask@0) (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| Mask@0) (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| Mask@0) (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| Mask@0) (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| Mask@0))))) (and (and (state Heap@@35 Mask@1) (state Heap@@35 Mask@1)) (and (state Heap@@35 Mask@1) (state Heap@@35 Mask@1))))) (and (and (=> (= (ControlFlow 0 63) 62) anon39_Else_correct) (=> (= (ControlFlow 0 63) 14) anon40_Then_correct)) (=> (= (ControlFlow 0 63) 5) anon40_Else_correct)))))
(let ((anon38_Then_correct  (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm perm@0) (< NoPerm (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| Mask@0) null (VecI32 arr))))))))))
(let ((anon0_correct  (=> (state Heap@@35 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_7947_4250_53#PolymorphicMapType_7947| Heap@@35) arr $allocated) (= Mask@0 (PolymorphicMapType_7968 (store (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| ZeroMask) null (VecI32 arr) (+ (select (|PolymorphicMapType_7968_4426_4427#PolymorphicMapType_7968| ZeroMask) null (VecI32 arr)) FullPerm)) (|PolymorphicMapType_7968_4426_53#PolymorphicMapType_7968| ZeroMask) (|PolymorphicMapType_7968_4426_8021#PolymorphicMapType_7968| ZeroMask) (|PolymorphicMapType_7968_4426_32557#PolymorphicMapType_7968| ZeroMask) (|PolymorphicMapType_7968_8007_4427#PolymorphicMapType_7968| ZeroMask) (|PolymorphicMapType_7968_8007_53#PolymorphicMapType_7968| ZeroMask) (|PolymorphicMapType_7968_8007_8021#PolymorphicMapType_7968| ZeroMask) (|PolymorphicMapType_7968_8007_32903#PolymorphicMapType_7968| ZeroMask))))) (and (and (state Heap@@35 Mask@0) (<= 0 from_1)) (and (<= from_1 until) (state Heap@@35 Mask@0)))) (and (=> (= (ControlFlow 0 64) 2) anon38_Then_correct) (=> (= (ControlFlow 0 64) 63) anon38_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 65) 64) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
