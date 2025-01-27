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
(declare-sort T@Field_6735_53 0)
(declare-sort T@Field_6748_6749 0)
(declare-sort T@Field_6735_18446 0)
(declare-sort T@Field_6735_18313 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6696 0)) (((PolymorphicMapType_6696 (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| (Array T@Ref T@Field_6735_53 Real)) (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| (Array T@Ref T@Field_6748_6749 Real)) (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| (Array T@Ref T@Field_6735_18313 Real)) (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| (Array T@Ref T@Field_6735_18446 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7224 0)) (((PolymorphicMapType_7224 (|PolymorphicMapType_7224_6735_53#PolymorphicMapType_7224| (Array T@Ref T@Field_6735_53 Bool)) (|PolymorphicMapType_7224_6735_6749#PolymorphicMapType_7224| (Array T@Ref T@Field_6748_6749 Bool)) (|PolymorphicMapType_7224_6735_18313#PolymorphicMapType_7224| (Array T@Ref T@Field_6735_18313 Bool)) (|PolymorphicMapType_7224_6735_19426#PolymorphicMapType_7224| (Array T@Ref T@Field_6735_18446 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6675 0)) (((PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| (Array T@Ref T@Field_6735_53 Bool)) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| (Array T@Ref T@Field_6748_6749 T@Ref)) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| (Array T@Ref T@Field_6735_18446 T@PolymorphicMapType_7224)) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| (Array T@Ref T@Field_6735_18313 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6675 T@PolymorphicMapType_6675) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6675 T@PolymorphicMapType_6675) Bool)
(declare-fun state (T@PolymorphicMapType_6675 T@PolymorphicMapType_6696) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6696) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7224)
(declare-sort T@ListDomainType 0)
(declare-fun |at'| (T@PolymorphicMapType_6675 T@ListDomainType Int) Int)
(declare-fun dummyFunction_1592 (Int) Bool)
(declare-fun |at#triggerStateless| (T@ListDomainType Int) Int)
(declare-fun |at#frame| (T@FrameType T@ListDomainType Int) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun List_tag (T@ListDomainType) Int)
(declare-fun Nil () T@ListDomainType)
(declare-fun |len'| (T@PolymorphicMapType_6675 T@ListDomainType) Int)
(declare-fun |len#triggerStateless| (T@ListDomainType) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |len#trigger| (T@FrameType T@ListDomainType) Bool)
(declare-fun len_1 (T@PolymorphicMapType_6675 T@ListDomainType) Int)
(declare-fun get_List_tail (T@ListDomainType) T@ListDomainType)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6675 T@PolymorphicMapType_6675 T@PolymorphicMapType_6696) Bool)
(declare-fun IsPredicateField_6735_18404 (T@Field_6735_18313) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6735 (T@Field_6735_18313) T@Field_6735_18446)
(declare-fun HasDirectPerm_6735_18377 (T@PolymorphicMapType_6696 T@Ref T@Field_6735_18313) Bool)
(declare-fun IsWandField_6735_19953 (T@Field_6735_18313) Bool)
(declare-fun WandMaskField_6735 (T@Field_6735_18313) T@Field_6735_18446)
(declare-fun dummyHeap () T@PolymorphicMapType_6675)
(declare-fun ZeroMask () T@PolymorphicMapType_6696)
(declare-fun $allocated () T@Field_6735_53)
(declare-fun InsidePredicate_6735_6735 (T@Field_6735_18313 T@FrameType T@Field_6735_18313 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6735_22916 (T@Field_6735_18446) Bool)
(declare-fun IsWandField_6735_22932 (T@Field_6735_18446) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6735_6749 (T@Field_6748_6749) Bool)
(declare-fun IsWandField_6735_6749 (T@Field_6748_6749) Bool)
(declare-fun IsPredicateField_6735_53 (T@Field_6735_53) Bool)
(declare-fun IsWandField_6735_53 (T@Field_6735_53) Bool)
(declare-fun HasDirectPerm_6735_23287 (T@PolymorphicMapType_6696 T@Ref T@Field_6735_18446) Bool)
(declare-fun HasDirectPerm_6735_6749 (T@PolymorphicMapType_6696 T@Ref T@Field_6748_6749) Bool)
(declare-fun HasDirectPerm_6735_53 (T@PolymorphicMapType_6696 T@Ref T@Field_6735_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun at (T@PolymorphicMapType_6675 T@ListDomainType Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_6696 T@PolymorphicMapType_6696 T@PolymorphicMapType_6696) Bool)
(declare-fun Cons (Int T@ListDomainType) T@ListDomainType)
(declare-fun |len#frame| (T@FrameType T@ListDomainType) Int)
(declare-fun get_List_head (T@ListDomainType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_6675) (Heap1 T@PolymorphicMapType_6675) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6675) (Mask T@PolymorphicMapType_6696) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6675) (Heap1@@0 T@PolymorphicMapType_6675) (Heap2 T@PolymorphicMapType_6675) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6735_18446) ) (!  (not (select (|PolymorphicMapType_7224_6735_19426#PolymorphicMapType_7224| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7224_6735_19426#PolymorphicMapType_7224| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6735_18313) ) (!  (not (select (|PolymorphicMapType_7224_6735_18313#PolymorphicMapType_7224| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7224_6735_18313#PolymorphicMapType_7224| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6748_6749) ) (!  (not (select (|PolymorphicMapType_7224_6735_6749#PolymorphicMapType_7224| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7224_6735_6749#PolymorphicMapType_7224| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6735_53) ) (!  (not (select (|PolymorphicMapType_7224_6735_53#PolymorphicMapType_7224| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7224_6735_53#PolymorphicMapType_7224| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6675) (xs T@ListDomainType) (pos Int) ) (! (dummyFunction_1592 (|at#triggerStateless| xs pos))
 :qid |stdinbpl.318:15|
 :skolemid |32|
 :pattern ( (|at'| Heap@@0 xs pos))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6675) (Mask@@0 T@PolymorphicMapType_6696) (xs@@0 T@ListDomainType) (pos@@0 Int) ) (!  (=> (state Heap@@1 Mask@@0) (= (|at'| Heap@@1 xs@@0 pos@@0) (|at#frame| EmptyFrame xs@@0 pos@@0)))
 :qid |stdinbpl.331:15|
 :skolemid |34|
 :pattern ( (state Heap@@1 Mask@@0) (|at'| Heap@@1 xs@@0 pos@@0))
)))
(assert (= (List_tag Nil) 1))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6675) (xs@@1 T@ListDomainType) ) (! (dummyFunction_1592 (|len#triggerStateless| xs@@1))
 :qid |stdinbpl.240:15|
 :skolemid |27|
 :pattern ( (|len'| Heap@@2 xs@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6675) (Mask@@1 T@PolymorphicMapType_6696) (xs@@2 T@ListDomainType) ) (!  (=> (and (state Heap@@3 Mask@@1) (or (< AssumeFunctionsAbove 1) (|len#trigger| EmptyFrame xs@@2))) (>= (|len'| Heap@@3 xs@@2) 0))
 :qid |stdinbpl.259:15|
 :skolemid |30|
 :pattern ( (state Heap@@3 Mask@@1) (|len'| Heap@@3 xs@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6675) (xs@@3 T@ListDomainType) ) (!  (and (= (len_1 Heap@@4 xs@@3) (|len'| Heap@@4 xs@@3)) (dummyFunction_1592 (|len#triggerStateless| xs@@3)))
 :qid |stdinbpl.236:15|
 :skolemid |26|
 :pattern ( (len_1 Heap@@4 xs@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6675) (Mask@@2 T@PolymorphicMapType_6696) (xs@@4 T@ListDomainType) ) (!  (=> (and (state Heap@@5 Mask@@2) (< AssumeFunctionsAbove 1)) (= (len_1 Heap@@5 xs@@4) (ite (= (List_tag xs@@4) 1) 0 (+ 1 (|len'| Heap@@5 (get_List_tail xs@@4))))))
 :qid |stdinbpl.246:15|
 :skolemid |28|
 :pattern ( (state Heap@@5 Mask@@2) (len_1 Heap@@5 xs@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6675) (ExhaleHeap T@PolymorphicMapType_6675) (Mask@@3 T@PolymorphicMapType_6696) (pm_f_1 T@Field_6735_18313) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_6735_18377 Mask@@3 null pm_f_1) (IsPredicateField_6735_18404 pm_f_1)) (= (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@6) null (PredicateMaskField_6735 pm_f_1)) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap) null (PredicateMaskField_6735 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (IsPredicateField_6735_18404 pm_f_1) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap) null (PredicateMaskField_6735 pm_f_1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6675) (ExhaleHeap@@0 T@PolymorphicMapType_6675) (Mask@@4 T@PolymorphicMapType_6696) (pm_f_1@@0 T@Field_6735_18313) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_6735_18377 Mask@@4 null pm_f_1@@0) (IsWandField_6735_19953 pm_f_1@@0)) (= (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@7) null (WandMaskField_6735 pm_f_1@@0)) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@0) null (WandMaskField_6735 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (IsWandField_6735_19953 pm_f_1@@0) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@0) null (WandMaskField_6735 pm_f_1@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6675) (ExhaleHeap@@1 T@PolymorphicMapType_6675) (Mask@@5 T@PolymorphicMapType_6696) (pm_f_1@@1 T@Field_6735_18313) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_6735_18377 Mask@@5 null pm_f_1@@1) (IsPredicateField_6735_18404 pm_f_1@@1)) (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_6735_53) ) (!  (=> (select (|PolymorphicMapType_7224_6735_53#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@8) null (PredicateMaskField_6735 pm_f_1@@1))) o2_1 f_9) (= (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@8) o2_1 f_9) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@1) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@1) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_6748_6749) ) (!  (=> (select (|PolymorphicMapType_7224_6735_6749#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@8) null (PredicateMaskField_6735 pm_f_1@@1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@8) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@1) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@1) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_6735_18313) ) (!  (=> (select (|PolymorphicMapType_7224_6735_18313#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@8) null (PredicateMaskField_6735 pm_f_1@@1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@8) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@1) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@1) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_6735_18446) ) (!  (=> (select (|PolymorphicMapType_7224_6735_19426#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@8) null (PredicateMaskField_6735 pm_f_1@@1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@8) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@1) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@1) o2_1@@2 f_9@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (IsPredicateField_6735_18404 pm_f_1@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6675) (ExhaleHeap@@2 T@PolymorphicMapType_6675) (Mask@@6 T@PolymorphicMapType_6696) (pm_f_1@@2 T@Field_6735_18313) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_6735_18377 Mask@@6 null pm_f_1@@2) (IsWandField_6735_19953 pm_f_1@@2)) (and (and (and (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_6735_53) ) (!  (=> (select (|PolymorphicMapType_7224_6735_53#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@9) null (WandMaskField_6735 pm_f_1@@2))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@9) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@2) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@2) o2_1@@3 f_9@@3))
)) (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_6748_6749) ) (!  (=> (select (|PolymorphicMapType_7224_6735_6749#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@9) null (WandMaskField_6735 pm_f_1@@2))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@9) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@2) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@2) o2_1@@4 f_9@@4))
))) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_6735_18313) ) (!  (=> (select (|PolymorphicMapType_7224_6735_18313#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@9) null (WandMaskField_6735 pm_f_1@@2))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@9) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@2) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@2) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_6735_18446) ) (!  (=> (select (|PolymorphicMapType_7224_6735_19426#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@9) null (WandMaskField_6735 pm_f_1@@2))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@9) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@2) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@2) o2_1@@6 f_9@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (IsWandField_6735_19953 pm_f_1@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6675) (ExhaleHeap@@3 T@PolymorphicMapType_6675) (Mask@@7 T@PolymorphicMapType_6696) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@7) (=> (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@10) o_4 $allocated) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@3) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@7) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@3) o_4 $allocated))
)))
(assert (forall ((p T@Field_6735_18313) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6735_6735 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6735_6735 p v_1 p w))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6675) (ExhaleHeap@@4 T@PolymorphicMapType_6675) (Mask@@8 T@PolymorphicMapType_6696) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@8) (succHeap Heap@@11 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6696) (o_2@@3 T@Ref) (f_4@@3 T@Field_6735_18446) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| Mask@@9) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6735_22916 f_4@@3))) (not (IsWandField_6735_22932 f_4@@3))) (<= (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| Mask@@9) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| Mask@@9) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6696) (o_2@@4 T@Ref) (f_4@@4 T@Field_6735_18313) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| Mask@@10) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6735_18404 f_4@@4))) (not (IsWandField_6735_19953 f_4@@4))) (<= (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| Mask@@10) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| Mask@@10) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6696) (o_2@@5 T@Ref) (f_4@@5 T@Field_6748_6749) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| Mask@@11) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6735_6749 f_4@@5))) (not (IsWandField_6735_6749 f_4@@5))) (<= (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| Mask@@11) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| Mask@@11) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6696) (o_2@@6 T@Ref) (f_4@@6 T@Field_6735_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| Mask@@12) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6735_53 f_4@@6))) (not (IsWandField_6735_53 f_4@@6))) (<= (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| Mask@@12) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| Mask@@12) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6696) (o_2@@7 T@Ref) (f_4@@7 T@Field_6735_18446) ) (! (= (HasDirectPerm_6735_23287 Mask@@13 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| Mask@@13) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6735_23287 Mask@@13 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6696) (o_2@@8 T@Ref) (f_4@@8 T@Field_6735_18313) ) (! (= (HasDirectPerm_6735_18377 Mask@@14 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| Mask@@14) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6735_18377 Mask@@14 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6696) (o_2@@9 T@Ref) (f_4@@9 T@Field_6748_6749) ) (! (= (HasDirectPerm_6735_6749 Mask@@15 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| Mask@@15) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6735_6749 Mask@@15 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6696) (o_2@@10 T@Ref) (f_4@@10 T@Field_6735_53) ) (! (= (HasDirectPerm_6735_53 Mask@@16 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| Mask@@16) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6735_53 Mask@@16 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6675) (ExhaleHeap@@5 T@PolymorphicMapType_6675) (Mask@@17 T@PolymorphicMapType_6696) (o_4@@0 T@Ref) (f_9@@7 T@Field_6735_18446) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_6735_23287 Mask@@17 o_4@@0 f_9@@7) (= (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@12) o_4@@0 f_9@@7) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@5) o_4@@0 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@5) o_4@@0 f_9@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6675) (ExhaleHeap@@6 T@PolymorphicMapType_6675) (Mask@@18 T@PolymorphicMapType_6696) (o_4@@1 T@Ref) (f_9@@8 T@Field_6735_18313) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_6735_18377 Mask@@18 o_4@@1 f_9@@8) (= (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@13) o_4@@1 f_9@@8) (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@6) o_4@@1 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@6) o_4@@1 f_9@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6675) (ExhaleHeap@@7 T@PolymorphicMapType_6675) (Mask@@19 T@PolymorphicMapType_6696) (o_4@@2 T@Ref) (f_9@@9 T@Field_6748_6749) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_6735_6749 Mask@@19 o_4@@2 f_9@@9) (= (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@14) o_4@@2 f_9@@9) (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@7) o_4@@2 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@7) o_4@@2 f_9@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6675) (ExhaleHeap@@8 T@PolymorphicMapType_6675) (Mask@@20 T@PolymorphicMapType_6696) (o_4@@3 T@Ref) (f_9@@10 T@Field_6735_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_6735_53 Mask@@20 o_4@@3 f_9@@10) (= (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@15) o_4@@3 f_9@@10) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@8) o_4@@3 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@8) o_4@@3 f_9@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6735_18446) ) (! (= (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6735_18313) ) (! (= (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6748_6749) ) (! (= (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6735_53) ) (! (= (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6675) (xs@@5 T@ListDomainType) (pos@@1 Int) ) (!  (and (= (at Heap@@16 xs@@5 pos@@1) (|at'| Heap@@16 xs@@5 pos@@1)) (dummyFunction_1592 (|at#triggerStateless| xs@@5 pos@@1)))
 :qid |stdinbpl.314:15|
 :skolemid |31|
 :pattern ( (at Heap@@16 xs@@5 pos@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6696) (SummandMask1 T@PolymorphicMapType_6696) (SummandMask2 T@PolymorphicMapType_6696) (o_2@@15 T@Ref) (f_4@@15 T@Field_6735_18446) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6696_6735_22007#PolymorphicMapType_6696| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6696) (SummandMask1@@0 T@PolymorphicMapType_6696) (SummandMask2@@0 T@PolymorphicMapType_6696) (o_2@@16 T@Ref) (f_4@@16 T@Field_6735_18313) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6696_6735_18313#PolymorphicMapType_6696| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6696) (SummandMask1@@1 T@PolymorphicMapType_6696) (SummandMask2@@1 T@PolymorphicMapType_6696) (o_2@@17 T@Ref) (f_4@@17 T@Field_6748_6749) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6696_6735_6749#PolymorphicMapType_6696| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6696) (SummandMask1@@2 T@PolymorphicMapType_6696) (SummandMask2@@2 T@PolymorphicMapType_6696) (o_2@@18 T@Ref) (f_4@@18 T@Field_6735_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6696_6735_53#PolymorphicMapType_6696| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((head_1 Int) (tail_1 T@ListDomainType) ) (! (= (List_tag (Cons head_1 tail_1)) 0)
 :qid |stdinbpl.218:15|
 :skolemid |24|
 :pattern ( (Cons head_1 tail_1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6675) (Mask@@21 T@PolymorphicMapType_6696) (xs@@6 T@ListDomainType) ) (!  (=> (state Heap@@17 Mask@@21) (= (|len'| Heap@@17 xs@@6) (|len#frame| EmptyFrame xs@@6)))
 :qid |stdinbpl.253:15|
 :skolemid |29|
 :pattern ( (state Heap@@17 Mask@@21) (|len'| Heap@@17 xs@@6))
)))
(assert (forall ((head_1@@0 Int) (tail_1@@0 T@ListDomainType) ) (! (= head_1@@0 (get_List_head (Cons head_1@@0 tail_1@@0)))
 :qid |stdinbpl.203:15|
 :skolemid |22|
 :pattern ( (Cons head_1@@0 tail_1@@0))
)))
(assert (forall ((head_1@@1 Int) (tail_1@@1 T@ListDomainType) ) (! (= tail_1@@1 (get_List_tail (Cons head_1@@1 tail_1@@1)))
 :qid |stdinbpl.209:15|
 :skolemid |23|
 :pattern ( (Cons head_1@@1 tail_1@@1))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6675) (o_3 T@Ref) (f_10 T@Field_6735_18313) (v T@FrameType) ) (! (succHeap Heap@@18 (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@18) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@18) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@18) (store (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@18) o_3 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@18) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@18) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@18) (store (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@18) o_3 f_10 v)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6675) (o_3@@0 T@Ref) (f_10@@0 T@Field_6735_18446) (v@@0 T@PolymorphicMapType_7224) ) (! (succHeap Heap@@19 (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@19) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@19) (store (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@19) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@19) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@19) (store (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@19) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6675) (o_3@@1 T@Ref) (f_10@@1 T@Field_6748_6749) (v@@1 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@20) (store (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@20) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@20) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@20) (store (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@20) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@20) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6675) (o_3@@2 T@Ref) (f_10@@2 T@Field_6735_53) (v@@2 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_6675 (store (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@21) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@21) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@21) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6675 (store (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@21) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@21) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@21) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6675) (Mask@@22 T@PolymorphicMapType_6696) (xs@@7 T@ListDomainType) (pos@@2 Int) ) (!  (=> (and (state Heap@@22 Mask@@22) (< AssumeFunctionsAbove 0)) (= (at Heap@@22 xs@@7 pos@@2) (ite  (or (= (List_tag xs@@7) 1) (< pos@@2 0)) (- 0 1) (ite (= pos@@2 0) (get_List_head xs@@7) (|at'| Heap@@22 (get_List_tail xs@@7) (- pos@@2 1))))))
 :qid |stdinbpl.324:15|
 :skolemid |33|
 :pattern ( (state Heap@@22 Mask@@22) (at Heap@@22 xs@@7 pos@@2))
)))
(assert (forall ((o_3@@3 T@Ref) (f_8 T@Field_6748_6749) (Heap@@23 T@PolymorphicMapType_6675) ) (!  (=> (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@23) o_3@@3 $allocated) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@23) (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@23) o_3@@3 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@23) o_3@@3 f_8))
)))
(assert (forall ((p@@1 T@Field_6735_18313) (v_1@@0 T@FrameType) (q T@Field_6735_18313) (w@@0 T@FrameType) (r T@Field_6735_18313) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6735_6735 p@@1 v_1@@0 q w@@0) (InsidePredicate_6735_6735 q w@@0 r u)) (InsidePredicate_6735_6735 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6735_6735 p@@1 v_1@@0 q w@@0) (InsidePredicate_6735_6735 q w@@0 r u))
)))
(assert (forall ((t_2 T@ListDomainType) ) (!  (or (= t_2 Nil) (= t_2 (Cons (get_List_head t_2) (get_List_tail t_2))))
 :qid |stdinbpl.224:15|
 :skolemid |25|
 :pattern ( (List_tag t_2))
 :pattern ( (get_List_head t_2))
 :pattern ( (get_List_tail t_2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k_16 () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_6675)
(declare-fun xs@@8 () T@ListDomainType)
(declare-fun key_2 () Int)
(declare-fun pos@@3 () Int)
(declare-fun k_19 () Int)
(declare-fun pos@0 () Int)
(declare-fun ys@0 () T@ListDomainType)
(declare-fun Heap@@24 () T@PolymorphicMapType_6675)
(declare-fun k_6 () Int)
(declare-fun k_19_1 () Int)
(declare-fun pos@1 () Int)
(declare-fun ys@1 () T@ListDomainType)
(declare-fun k_17 () Int)
(declare-fun k_15 () Int)
(declare-fun k_7 () Int)
(declare-fun k_2_2 () Int)
(declare-fun k_6_2 () Int)
(declare-fun k_4_2 () Int)
(set-info :boogie-vc-id linear_search)
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
 (=> (= (ControlFlow 0 0) 111) (let ((anon98_Then_correct true))
(let ((anon103_Then_correct true))
(let ((anon105_Then_correct true))
(let ((anon18_correct true))
(let ((anon104_Then_correct  (=> (and (<= 0 k_16) (< k_16 (len_1 PostHeap@0 xs@@8))) (and (=> (= (ControlFlow 0 99) 98) anon105_Then_correct) (=> (= (ControlFlow 0 99) 96) anon18_correct)))))
(let ((anon104_Else_correct  (=> (and (not (and (<= 0 k_16) (< k_16 (len_1 PostHeap@0 xs@@8)))) (= (ControlFlow 0 97) 96)) anon18_correct)))
(let ((anon102_Then_correct  (=> (<= 0 k_16) (and (and (=> (= (ControlFlow 0 102) 101) anon103_Then_correct) (=> (= (ControlFlow 0 102) 99) anon104_Then_correct)) (=> (= (ControlFlow 0 102) 97) anon104_Else_correct)))))
(let ((anon102_Else_correct  (=> (< k_16 0) (and (=> (= (ControlFlow 0 100) 99) anon104_Then_correct) (=> (= (ControlFlow 0 100) 97) anon104_Else_correct)))))
(let ((anon20_correct true))
(let ((anon101_Else_correct  (=> (and (forall ((k_1 Int) ) (!  (=> (and (<= 0 k_1) (< k_1 (len_1 PostHeap@0 xs@@8))) (not (= (at PostHeap@0 xs@@8 k_1) key_2)))
 :qid |stdinbpl.523:22|
 :skolemid |35|
 :pattern ( (|at#frame| EmptyFrame xs@@8 k_1))
)) (= (ControlFlow 0 95) 93)) anon20_correct)))
(let ((anon100_Then_correct  (=> (and (= pos@@3 (len_1 PostHeap@0 xs@@8)) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 103) 95) anon101_Else_correct) (=> (= (ControlFlow 0 103) 102) anon102_Then_correct)) (=> (= (ControlFlow 0 103) 100) anon102_Else_correct)))))
(let ((anon100_Else_correct  (=> (and (not (= pos@@3 (len_1 PostHeap@0 xs@@8))) (= (ControlFlow 0 94) 93)) anon20_correct)))
(let ((anon99_Then_correct true))
(let ((anon8_correct  (=> (and (or (= (at PostHeap@0 xs@@8 pos@@3) key_2) (= pos@@3 (len_1 PostHeap@0 xs@@8))) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 104) 92) anon99_Then_correct) (=> (= (ControlFlow 0 104) 103) anon100_Then_correct)) (=> (= (ControlFlow 0 104) 94) anon100_Else_correct)))))
(let ((anon97_Then_correct  (=> (not (= (at PostHeap@0 xs@@8 pos@@3) key_2)) (and (=> (= (ControlFlow 0 107) 106) anon98_Then_correct) (=> (= (ControlFlow 0 107) 104) anon8_correct)))))
(let ((anon97_Else_correct  (=> (and (= (at PostHeap@0 xs@@8 pos@@3) key_2) (= (ControlFlow 0 105) 104)) anon8_correct)))
(let ((anon96_Then_correct true))
(let ((anon95_Else_correct  (=> (<= pos@@3 (len_1 PostHeap@0 xs@@8)) (=> (and (state PostHeap@0 ZeroMask) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 108) 91) anon96_Then_correct) (=> (= (ControlFlow 0 108) 107) anon97_Then_correct)) (=> (= (ControlFlow 0 108) 105) anon97_Else_correct))))))
(let ((anon95_Then_correct true))
(let ((anon94_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (<= 0 pos@@3) (state PostHeap@0 ZeroMask)) (and (=> (= (ControlFlow 0 109) 90) anon95_Then_correct) (=> (= (ControlFlow 0 109) 108) anon95_Else_correct))))))
(let ((anon115_Then_correct true))
(let ((anon122_Then_correct true))
(let ((anon51_correct true))
(let ((anon121_Then_correct  (=> (and (<= 0 k_19) (< k_19 pos@0)) (and (=> (= (ControlFlow 0 73) 72) anon122_Then_correct) (=> (= (ControlFlow 0 73) 70) anon51_correct)))))
(let ((anon121_Else_correct  (=> (and (not (and (<= 0 k_19) (< k_19 pos@0))) (= (ControlFlow 0 71) 70)) anon51_correct)))
(let ((anon120_Else_correct true))
(let ((anon116_Else_correct  (=> (forall ((k_9_1 Int) ) (!  (=> (<= 0 k_9_1) (= (at Heap@@24 xs@@8 (+ pos@0 k_9_1)) (at Heap@@24 ys@0 k_9_1)))
 :qid |stdinbpl.626:24|
 :skolemid |38|
 :pattern ( (|at#frame| EmptyFrame ys@0 k_9_1))
)) (=> (and (state Heap@@24 ZeroMask) (state Heap@@24 ZeroMask)) (and (and (=> (= (ControlFlow 0 74) 69) anon120_Else_correct) (=> (= (ControlFlow 0 74) 73) anon121_Then_correct)) (=> (= (ControlFlow 0 74) 71) anon121_Else_correct))))))
(let ((anon119_Then_correct true))
(let ((anon118_Then_correct true))
(let ((anon46_correct true))
(let ((anon117_Then_correct  (=> (<= 0 k_6) (and (and (=> (= (ControlFlow 0 68) 66) anon118_Then_correct) (=> (= (ControlFlow 0 68) 67) anon119_Then_correct)) (=> (= (ControlFlow 0 68) 64) anon46_correct)))))
(let ((anon117_Else_correct  (=> (and (< k_6 0) (= (ControlFlow 0 65) 64)) anon46_correct)))
(let ((anon40_correct  (=> (and (state Heap@@24 ZeroMask) (state Heap@@24 ZeroMask)) (and (and (=> (= (ControlFlow 0 75) 74) anon116_Else_correct) (=> (= (ControlFlow 0 75) 68) anon117_Then_correct)) (=> (= (ControlFlow 0 75) 65) anon117_Else_correct)))))
(let ((anon115_Else_correct  (=> (and (= pos@0 (len_1 Heap@@24 xs@@8)) (= (ControlFlow 0 78) 75)) anon40_correct)))
(let ((anon114_Then_correct  (=> (and (= (List_tag ys@0) 1) (state Heap@@24 ZeroMask)) (and (=> (= (ControlFlow 0 79) 77) anon115_Then_correct) (=> (= (ControlFlow 0 79) 78) anon115_Else_correct)))))
(let ((anon114_Else_correct  (=> (and (not (= (List_tag ys@0) 1)) (= (ControlFlow 0 76) 75)) anon40_correct)))
(let ((anon113_Else_correct  (=> (and (= (+ pos@0 (len_1 Heap@@24 ys@0)) (len_1 Heap@@24 xs@@8)) (state Heap@@24 ZeroMask)) (and (=> (= (ControlFlow 0 80) 79) anon114_Then_correct) (=> (= (ControlFlow 0 80) 76) anon114_Else_correct)))))
(let ((anon113_Then_correct true))
(let ((anon112_Then_correct true))
(let ((anon111_Then_correct  (=> (<= 0 pos@0) (=> (and (state Heap@@24 ZeroMask) (state Heap@@24 ZeroMask)) (and (and (=> (= (ControlFlow 0 81) 62) anon112_Then_correct) (=> (= (ControlFlow 0 81) 63) anon113_Then_correct)) (=> (= (ControlFlow 0 81) 80) anon113_Else_correct))))))
(let ((anon80_correct true))
(let ((anon137_Else_correct  (=> (and (not (and (<= 0 k_19_1) (< k_19_1 pos@1))) (= (ControlFlow 0 48) 45)) anon80_correct)))
(let ((anon137_Then_correct  (=> (and (<= 0 k_19_1) (< k_19_1 pos@1)) (and (=> (= (ControlFlow 0 46) (- 0 47)) (not (= (at Heap@@24 xs@@8 k_19_1) key_2))) (=> (not (= (at Heap@@24 xs@@8 k_19_1) key_2)) (=> (= (ControlFlow 0 46) 45) anon80_correct))))))
(let ((anon136_Else_correct true))
(let ((anon134_Else_correct  (=> (forall ((k_18_1 Int) ) (!  (=> (<= 0 k_18_1) (= (at Heap@@24 xs@@8 (+ pos@1 k_18_1)) (at Heap@@24 ys@1 k_18_1)))
 :qid |stdinbpl.762:24|
 :skolemid |43|
 :pattern ( (|at#frame| EmptyFrame ys@1 k_18_1))
)) (and (and (=> (= (ControlFlow 0 49) 44) anon136_Else_correct) (=> (= (ControlFlow 0 49) 46) anon137_Then_correct)) (=> (= (ControlFlow 0 49) 48) anon137_Else_correct)))))
(let ((anon76_correct true))
(let ((anon135_Else_correct  (=> (and (< k_17 0) (= (ControlFlow 0 43) 40)) anon76_correct)))
(let ((anon135_Then_correct  (=> (<= 0 k_17) (and (=> (= (ControlFlow 0 41) (- 0 42)) (= (at Heap@@24 xs@@8 (+ pos@1 k_17)) (at Heap@@24 ys@1 k_17))) (=> (= (at Heap@@24 xs@@8 (+ pos@1 k_17)) (at Heap@@24 ys@1 k_17)) (=> (= (ControlFlow 0 41) 40) anon76_correct))))))
(let ((anon133_Else_correct  (=> (not (= (List_tag ys@1) 1)) (and (and (=> (= (ControlFlow 0 52) 49) anon134_Else_correct) (=> (= (ControlFlow 0 52) 41) anon135_Then_correct)) (=> (= (ControlFlow 0 52) 43) anon135_Else_correct)))))
(let ((anon133_Then_correct  (=> (= (List_tag ys@1) 1) (and (=> (= (ControlFlow 0 50) (- 0 51)) (= pos@1 (len_1 Heap@@24 xs@@8))) (=> (= pos@1 (len_1 Heap@@24 xs@@8)) (and (and (=> (= (ControlFlow 0 50) 49) anon134_Else_correct) (=> (= (ControlFlow 0 50) 41) anon135_Then_correct)) (=> (= (ControlFlow 0 50) 43) anon135_Else_correct)))))))
(let ((anon132_Else_correct  (and (=> (= (ControlFlow 0 53) (- 0 56)) (= (at Heap@@24 ys@0 0) (at Heap@@24 xs@@8 pos@0))) (=> (= (at Heap@@24 ys@0 0) (at Heap@@24 xs@@8 pos@0)) (=> (state Heap@@24 ZeroMask) (=> (and (= pos@1 (+ pos@0 1)) (state Heap@@24 ZeroMask)) (and (=> (= (ControlFlow 0 53) (- 0 55)) (<= 0 pos@1)) (=> (<= 0 pos@1) (and (=> (= (ControlFlow 0 53) (- 0 54)) (= (+ pos@1 (len_1 Heap@@24 ys@1)) (len_1 Heap@@24 xs@@8))) (=> (= (+ pos@1 (len_1 Heap@@24 ys@1)) (len_1 Heap@@24 xs@@8)) (and (=> (= (ControlFlow 0 53) 50) anon133_Then_correct) (=> (= (ControlFlow 0 53) 52) anon133_Else_correct))))))))))))
(let ((anon132_Then_correct true))
(let ((anon131_Then_correct true))
(let ((anon129_Else_correct  (=> (and (forall ((k_16_1 Int) ) (!  (=> (<= 0 k_16_1) (= (at Heap@@24 ys@0 (+ k_16_1 1)) (at Heap@@24 ys@1 k_16_1)))
 :qid |stdinbpl.718:28|
 :skolemid |42|
 :pattern ( (|at#frame| EmptyFrame ys@1 k_16_1))
)) (state Heap@@24 ZeroMask)) (and (and (=> (= (ControlFlow 0 57) 38) anon131_Then_correct) (=> (= (ControlFlow 0 57) 39) anon132_Then_correct)) (=> (= (ControlFlow 0 57) 53) anon132_Else_correct)))))
(let ((anon66_correct true))
(let ((anon130_Else_correct  (=> (and (< k_15 0) (= (ControlFlow 0 37) 34)) anon66_correct)))
(let ((anon130_Then_correct  (=> (<= 0 k_15) (and (=> (= (ControlFlow 0 35) (- 0 36)) (= (at Heap@@24 ys@0 (+ k_15 1)) (at Heap@@24 ys@1 k_15))) (=> (= (at Heap@@24 ys@0 (+ k_15 1)) (at Heap@@24 ys@1 k_15)) (=> (= (ControlFlow 0 35) 34) anon66_correct))))))
(let ((anon128_Then_correct true))
(let ((anon127_Then_correct true))
(let ((anon62_correct true))
(let ((anon126_Then_correct  (=> (<= 0 k_7) (and (and (=> (= (ControlFlow 0 33) 31) anon127_Then_correct) (=> (= (ControlFlow 0 33) 32) anon128_Then_correct)) (=> (= (ControlFlow 0 33) 29) anon62_correct)))))
(let ((anon126_Else_correct  (=> (and (< k_7 0) (= (ControlFlow 0 30) 29)) anon62_correct)))
(let ((anon56_correct  (=> (state Heap@@24 ZeroMask) (=> (and (forall ((k_12 Int) ) (!  (=> (<= 0 k_12) (= (at Heap@@24 xs@@8 (+ pos@0 k_12)) (at Heap@@24 ys@0 k_12)))
 :qid |stdinbpl.667:24|
 :skolemid |40|
 :pattern ( (|at#frame| EmptyFrame ys@0 k_12))
)) (state Heap@@24 ZeroMask)) (=> (and (and (and (forall ((k_13 Int) ) (!  (=> (and (<= 0 k_13) (< k_13 pos@0)) (not (= (at Heap@@24 xs@@8 k_13) key_2)))
 :qid |stdinbpl.672:24|
 :skolemid |41|
 :pattern ( (|at#frame| EmptyFrame xs@@8 k_13))
)) (state Heap@@24 ZeroMask)) (and (not (= (List_tag ys@0) 1)) (not (= (get_List_head ys@0) key_2)))) (and (and (state Heap@@24 ZeroMask) (state Heap@@24 ZeroMask)) (and (= ys@1 (get_List_tail ys@0)) (state Heap@@24 ZeroMask)))) (and (and (and (and (=> (= (ControlFlow 0 58) 57) anon129_Else_correct) (=> (= (ControlFlow 0 58) 35) anon130_Then_correct)) (=> (= (ControlFlow 0 58) 37) anon130_Else_correct)) (=> (= (ControlFlow 0 58) 33) anon126_Then_correct)) (=> (= (ControlFlow 0 58) 30) anon126_Else_correct)))))))
(let ((anon124_Else_correct  (=> (and (not (= (List_tag ys@0) 1)) (= (ControlFlow 0 60) 58)) anon56_correct)))
(let ((anon124_Then_correct  (=> (and (and (= (List_tag ys@0) 1) (state Heap@@24 ZeroMask)) (and (= pos@0 (len_1 Heap@@24 xs@@8)) (= (ControlFlow 0 59) 58))) anon56_correct)))
(let ((anon123_Then_correct  (=> (and (and (state Heap@@24 ZeroMask) (<= 0 pos@0)) (and (state Heap@@24 ZeroMask) (= (+ pos@0 (len_1 Heap@@24 ys@0)) (len_1 Heap@@24 xs@@8)))) (and (=> (= (ControlFlow 0 61) 59) anon124_Then_correct) (=> (= (ControlFlow 0 61) 60) anon124_Else_correct)))))
(let ((anon140_Then_correct true))
(let ((anon92_correct true))
(let ((anon143_Else_correct  (=> (and (not (and (<= 0 k_2_2) (< k_2_2 (len_1 Heap@@24 xs@@8)))) (= (ControlFlow 0 14) 11)) anon92_correct)))
(let ((anon143_Then_correct  (=> (and (<= 0 k_2_2) (< k_2_2 (len_1 Heap@@24 xs@@8))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (not (= (at Heap@@24 xs@@8 k_2_2) key_2))) (=> (not (= (at Heap@@24 xs@@8 k_2_2) key_2)) (=> (= (ControlFlow 0 12) 11) anon92_correct))))))
(let ((anon142_Else_correct true))
(let ((anon141_Then_correct  (=> (= pos@0 (len_1 Heap@@24 xs@@8)) (and (and (=> (= (ControlFlow 0 15) 10) anon142_Else_correct) (=> (= (ControlFlow 0 15) 12) anon143_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon143_Else_correct)))))
(let ((anon141_Else_correct true))
(let ((anon88_correct  (=> (state Heap@@24 ZeroMask) (and (=> (= (ControlFlow 0 16) (- 0 19)) (<= 0 pos@0)) (=> (<= 0 pos@0) (and (=> (= (ControlFlow 0 16) (- 0 18)) (<= pos@0 (len_1 Heap@@24 xs@@8))) (=> (<= pos@0 (len_1 Heap@@24 xs@@8)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (or (= (at Heap@@24 xs@@8 pos@0) key_2) (= pos@0 (len_1 Heap@@24 xs@@8)))) (=> (or (= (at Heap@@24 xs@@8 pos@0) key_2) (= pos@0 (len_1 Heap@@24 xs@@8))) (and (=> (= (ControlFlow 0 16) 15) anon141_Then_correct) (=> (= (ControlFlow 0 16) 9) anon141_Else_correct)))))))))))
(let ((anon140_Else_correct  (and (=> (= (ControlFlow 0 22) (- 0 23)) (= (at Heap@@24 ys@0 0) key_2)) (=> (= (at Heap@@24 ys@0 0) key_2) (=> (= (ControlFlow 0 22) 16) anon88_correct)))))
(let ((anon139_Then_correct  (=> (not (= (List_tag ys@0) 1)) (and (=> (= (ControlFlow 0 24) 21) anon140_Then_correct) (=> (= (ControlFlow 0 24) 22) anon140_Else_correct)))))
(let ((anon139_Else_correct  (=> (and (= (List_tag ys@0) 1) (= (ControlFlow 0 20) 16)) anon88_correct)))
(let ((anon84_correct  (=> (and (state Heap@@24 ZeroMask) (forall ((k_21_1 Int) ) (!  (=> (<= 0 k_21_1) (= (at Heap@@24 xs@@8 (+ pos@0 k_21_1)) (at Heap@@24 ys@0 k_21_1)))
 :qid |stdinbpl.792:22|
 :skolemid |45|
 :pattern ( (|at#frame| EmptyFrame ys@0 k_21_1))
))) (=> (and (and (state Heap@@24 ZeroMask) (forall ((k_22_1 Int) ) (!  (=> (and (<= 0 k_22_1) (< k_22_1 pos@0)) (not (= (at Heap@@24 xs@@8 k_22_1) key_2)))
 :qid |stdinbpl.797:22|
 :skolemid |46|
 :pattern ( (|at#frame| EmptyFrame xs@@8 k_22_1))
))) (and (state Heap@@24 ZeroMask) (state Heap@@24 ZeroMask))) (and (=> (= (ControlFlow 0 25) 24) anon139_Then_correct) (=> (= (ControlFlow 0 25) 20) anon139_Else_correct))))))
(let ((anon138_Else_correct  (=> (and (not (= (List_tag ys@0) 1)) (= (ControlFlow 0 27) 25)) anon84_correct)))
(let ((anon138_Then_correct  (=> (and (and (= (List_tag ys@0) 1) (state Heap@@24 ZeroMask)) (and (= pos@0 (len_1 Heap@@24 xs@@8)) (= (ControlFlow 0 26) 25))) anon84_correct)))
(let ((anon123_Else_correct  (=> (not (and (not (= (List_tag ys@0) 1)) (not (= (get_List_head ys@0) key_2)))) (=> (and (and (state Heap@@24 ZeroMask) (<= 0 pos@0)) (and (state Heap@@24 ZeroMask) (= (+ pos@0 (len_1 Heap@@24 ys@0)) (len_1 Heap@@24 xs@@8)))) (and (=> (= (ControlFlow 0 28) 26) anon138_Then_correct) (=> (= (ControlFlow 0 28) 27) anon138_Else_correct))))))
(let ((anon109_Else_correct  (=> (forall ((k_7_1_1 Int) ) (!  (=> (and (<= 0 k_7_1_1) (< k_7_1_1 0)) (not (= (at Heap@@24 xs@@8 k_7_1_1) key_2)))
 :qid |stdinbpl.574:24|
 :skolemid |37|
 :pattern ( (|at#frame| EmptyFrame xs@@8 k_7_1_1))
)) (and (and (=> (= (ControlFlow 0 82) 81) anon111_Then_correct) (=> (= (ControlFlow 0 82) 61) anon123_Then_correct)) (=> (= (ControlFlow 0 82) 28) anon123_Else_correct)))))
(let ((anon30_correct true))
(let ((anon110_Else_correct  (=> (and (not (and (<= 0 k_6_2) (< k_6_2 0))) (= (ControlFlow 0 8) 5)) anon30_correct)))
(let ((anon110_Then_correct  (=> (and (<= 0 k_6_2) (< k_6_2 0)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (not (= (at Heap@@24 xs@@8 k_6_2) key_2))) (=> (not (= (at Heap@@24 xs@@8 k_6_2) key_2)) (=> (= (ControlFlow 0 6) 5) anon30_correct))))))
(let ((anon107_Else_correct  (=> (forall ((k_5_1_1 Int) ) (!  (=> (<= 0 k_5_1_1) (= (at Heap@@24 xs@@8 (+ 0 k_5_1_1)) (at Heap@@24 xs@@8 k_5_1_1)))
 :qid |stdinbpl.563:24|
 :skolemid |36|
 :pattern ( (|at#frame| EmptyFrame xs@@8 k_5_1_1))
)) (and (and (=> (= (ControlFlow 0 83) 82) anon109_Else_correct) (=> (= (ControlFlow 0 83) 6) anon110_Then_correct)) (=> (= (ControlFlow 0 83) 8) anon110_Else_correct)))))
(let ((anon26_correct true))
(let ((anon108_Else_correct  (=> (and (< k_4_2 0) (= (ControlFlow 0 4) 1)) anon26_correct)))
(let ((anon108_Then_correct  (=> (<= 0 k_4_2) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (at Heap@@24 xs@@8 (+ 0 k_4_2)) (at Heap@@24 xs@@8 k_4_2))) (=> (= (at Heap@@24 xs@@8 (+ 0 k_4_2)) (at Heap@@24 xs@@8 k_4_2)) (=> (= (ControlFlow 0 2) 1) anon26_correct))))))
(let ((anon106_Else_correct  (=> (not (= (List_tag xs@@8) 1)) (and (and (=> (= (ControlFlow 0 86) 83) anon107_Else_correct) (=> (= (ControlFlow 0 86) 2) anon108_Then_correct)) (=> (= (ControlFlow 0 86) 4) anon108_Else_correct)))))
(let ((anon106_Then_correct  (=> (= (List_tag xs@@8) 1) (and (=> (= (ControlFlow 0 84) (- 0 85)) (= 0 (len_1 Heap@@24 xs@@8))) (=> (= 0 (len_1 Heap@@24 xs@@8)) (and (and (=> (= (ControlFlow 0 84) 83) anon107_Else_correct) (=> (= (ControlFlow 0 84) 2) anon108_Then_correct)) (=> (= (ControlFlow 0 84) 4) anon108_Else_correct)))))))
(let ((anon94_Else_correct  (=> (and (state Heap@@24 ZeroMask) (state Heap@@24 ZeroMask)) (and (=> (= (ControlFlow 0 87) (- 0 89)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 87) (- 0 88)) (= (+ 0 (len_1 Heap@@24 xs@@8)) (len_1 Heap@@24 xs@@8))) (=> (= (+ 0 (len_1 Heap@@24 xs@@8)) (len_1 Heap@@24 xs@@8)) (and (=> (= (ControlFlow 0 87) 84) anon106_Then_correct) (=> (= (ControlFlow 0 87) 86) anon106_Else_correct)))))))))
(let ((anon0_correct  (=> (state Heap@@24 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (>= key_2 0) (state Heap@@24 ZeroMask))) (and (=> (= (ControlFlow 0 110) 109) anon94_Then_correct) (=> (= (ControlFlow 0 110) 87) anon94_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 111) 110) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
