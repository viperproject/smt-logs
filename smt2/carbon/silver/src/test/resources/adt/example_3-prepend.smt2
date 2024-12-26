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
(declare-fun len_3 (T@PolymorphicMapType_6675 T@ListDomainType) Int)
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
(declare-fun at_1 (T@PolymorphicMapType_6675 T@ListDomainType Int) Int)
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_6675) (xs@@3 T@ListDomainType) ) (!  (and (= (len_3 Heap@@4 xs@@3) (|len'| Heap@@4 xs@@3)) (dummyFunction_1592 (|len#triggerStateless| xs@@3)))
 :qid |stdinbpl.236:15|
 :skolemid |26|
 :pattern ( (len_3 Heap@@4 xs@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6675) (Mask@@2 T@PolymorphicMapType_6696) (xs@@4 T@ListDomainType) ) (!  (=> (and (state Heap@@5 Mask@@2) (< AssumeFunctionsAbove 1)) (= (len_3 Heap@@5 xs@@4) (ite (= (List_tag xs@@4) 1) 0 (+ 1 (|len'| Heap@@5 (get_List_tail xs@@4))))))
 :qid |stdinbpl.246:15|
 :skolemid |28|
 :pattern ( (state Heap@@5 Mask@@2) (len_3 Heap@@5 xs@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6675) (ExhaleHeap T@PolymorphicMapType_6675) (Mask@@3 T@PolymorphicMapType_6696) (pm_f_13 T@Field_6735_18313) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_6735_18377 Mask@@3 null pm_f_13) (IsPredicateField_6735_18404 pm_f_13)) (= (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@6) null (PredicateMaskField_6735 pm_f_13)) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap) null (PredicateMaskField_6735 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (IsPredicateField_6735_18404 pm_f_13) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap) null (PredicateMaskField_6735 pm_f_13)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6675) (ExhaleHeap@@0 T@PolymorphicMapType_6675) (Mask@@4 T@PolymorphicMapType_6696) (pm_f_13@@0 T@Field_6735_18313) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_6735_18377 Mask@@4 null pm_f_13@@0) (IsWandField_6735_19953 pm_f_13@@0)) (= (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@7) null (WandMaskField_6735 pm_f_13@@0)) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@0) null (WandMaskField_6735 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (IsWandField_6735_19953 pm_f_13@@0) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@0) null (WandMaskField_6735 pm_f_13@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6675) (ExhaleHeap@@1 T@PolymorphicMapType_6675) (Mask@@5 T@PolymorphicMapType_6696) (pm_f_13@@1 T@Field_6735_18313) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_6735_18377 Mask@@5 null pm_f_13@@1) (IsPredicateField_6735_18404 pm_f_13@@1)) (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_6735_53) ) (!  (=> (select (|PolymorphicMapType_7224_6735_53#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@8) null (PredicateMaskField_6735 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@8) o2_13 f_30) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@1) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@1) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_6748_6749) ) (!  (=> (select (|PolymorphicMapType_7224_6735_6749#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@8) null (PredicateMaskField_6735 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@8) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@1) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@1) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_6735_18313) ) (!  (=> (select (|PolymorphicMapType_7224_6735_18313#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@8) null (PredicateMaskField_6735 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@8) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@1) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@1) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_6735_18446) ) (!  (=> (select (|PolymorphicMapType_7224_6735_19426#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@8) null (PredicateMaskField_6735 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@8) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@1) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@1) o2_13@@2 f_30@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (IsPredicateField_6735_18404 pm_f_13@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6675) (ExhaleHeap@@2 T@PolymorphicMapType_6675) (Mask@@6 T@PolymorphicMapType_6696) (pm_f_13@@2 T@Field_6735_18313) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_6735_18377 Mask@@6 null pm_f_13@@2) (IsWandField_6735_19953 pm_f_13@@2)) (and (and (and (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_6735_53) ) (!  (=> (select (|PolymorphicMapType_7224_6735_53#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@9) null (WandMaskField_6735 pm_f_13@@2))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@9) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@2) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@2) o2_13@@3 f_30@@3))
)) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_6748_6749) ) (!  (=> (select (|PolymorphicMapType_7224_6735_6749#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@9) null (WandMaskField_6735 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@9) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@2) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@2) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_6735_18313) ) (!  (=> (select (|PolymorphicMapType_7224_6735_18313#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@9) null (WandMaskField_6735 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@9) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@2) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@2) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_6735_18446) ) (!  (=> (select (|PolymorphicMapType_7224_6735_19426#PolymorphicMapType_7224| (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@9) null (WandMaskField_6735 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@9) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@2) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@2) o2_13@@6 f_30@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (IsWandField_6735_19953 pm_f_13@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6675) (ExhaleHeap@@3 T@PolymorphicMapType_6675) (Mask@@7 T@PolymorphicMapType_6696) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@7) (=> (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@10) o_22 $allocated) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@3) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@7) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@3) o_22 $allocated))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_6675) (ExhaleHeap@@5 T@PolymorphicMapType_6675) (Mask@@17 T@PolymorphicMapType_6696) (o_22@@0 T@Ref) (f_30@@7 T@Field_6735_18446) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_6735_23287 Mask@@17 o_22@@0 f_30@@7) (= (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@12) o_22@@0 f_30@@7) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@5) o_22@@0 f_30@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| ExhaleHeap@@5) o_22@@0 f_30@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6675) (ExhaleHeap@@6 T@PolymorphicMapType_6675) (Mask@@18 T@PolymorphicMapType_6696) (o_22@@1 T@Ref) (f_30@@8 T@Field_6735_18313) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_6735_18377 Mask@@18 o_22@@1 f_30@@8) (= (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@13) o_22@@1 f_30@@8) (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@6) o_22@@1 f_30@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| ExhaleHeap@@6) o_22@@1 f_30@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6675) (ExhaleHeap@@7 T@PolymorphicMapType_6675) (Mask@@19 T@PolymorphicMapType_6696) (o_22@@2 T@Ref) (f_30@@9 T@Field_6748_6749) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_6735_6749 Mask@@19 o_22@@2 f_30@@9) (= (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@14) o_22@@2 f_30@@9) (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@7) o_22@@2 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| ExhaleHeap@@7) o_22@@2 f_30@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6675) (ExhaleHeap@@8 T@PolymorphicMapType_6675) (Mask@@20 T@PolymorphicMapType_6696) (o_22@@3 T@Ref) (f_30@@10 T@Field_6735_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_6735_53 Mask@@20 o_22@@3 f_30@@10) (= (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@15) o_22@@3 f_30@@10) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@8) o_22@@3 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| ExhaleHeap@@8) o_22@@3 f_30@@10))
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
(assert (forall ((Heap@@16 T@PolymorphicMapType_6675) (xs@@5 T@ListDomainType) (pos@@1 Int) ) (!  (and (= (at_1 Heap@@16 xs@@5 pos@@1) (|at'| Heap@@16 xs@@5 pos@@1)) (dummyFunction_1592 (|at#triggerStateless| xs@@5 pos@@1)))
 :qid |stdinbpl.314:15|
 :skolemid |31|
 :pattern ( (at_1 Heap@@16 xs@@5 pos@@1))
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
(assert (forall ((Heap@@18 T@PolymorphicMapType_6675) (o_35 T@Ref) (f_11 T@Field_6735_18313) (v T@FrameType) ) (! (succHeap Heap@@18 (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@18) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@18) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@18) (store (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@18) o_35 f_11 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@18) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@18) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@18) (store (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@18) o_35 f_11 v)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6675) (o_35@@0 T@Ref) (f_11@@0 T@Field_6735_18446) (v@@0 T@PolymorphicMapType_7224) ) (! (succHeap Heap@@19 (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@19) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@19) (store (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@19) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@19) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@19) (store (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@19) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6675) (o_35@@1 T@Ref) (f_11@@1 T@Field_6748_6749) (v@@1 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@20) (store (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@20) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@20) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6675 (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@20) (store (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@20) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@20) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6675) (o_35@@2 T@Ref) (f_11@@2 T@Field_6735_53) (v@@2 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_6675 (store (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@21) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@21) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@21) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6675 (store (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@21) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@21) (|PolymorphicMapType_6675_6735_18490#PolymorphicMapType_6675| Heap@@21) (|PolymorphicMapType_6675_6735_18313#PolymorphicMapType_6675| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6675) (Mask@@22 T@PolymorphicMapType_6696) (xs@@7 T@ListDomainType) (pos@@2 Int) ) (!  (=> (and (state Heap@@22 Mask@@22) (< AssumeFunctionsAbove 0)) (= (at_1 Heap@@22 xs@@7 pos@@2) (ite  (or (= (List_tag xs@@7) 1) (< pos@@2 0)) (- 0 1) (ite (= pos@@2 0) (get_List_head xs@@7) (|at'| Heap@@22 (get_List_tail xs@@7) (- pos@@2 1))))))
 :qid |stdinbpl.324:15|
 :skolemid |33|
 :pattern ( (state Heap@@22 Mask@@22) (at_1 Heap@@22 xs@@7 pos@@2))
)))
(assert (forall ((o_35@@3 T@Ref) (f_31 T@Field_6748_6749) (Heap@@23 T@PolymorphicMapType_6675) ) (!  (=> (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@23) o_35@@3 $allocated) (select (|PolymorphicMapType_6675_3871_53#PolymorphicMapType_6675| Heap@@23) (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@23) o_35@@3 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6675_3874_3875#PolymorphicMapType_6675| Heap@@23) o_35@@3 f_31))
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
(declare-fun ys@0 () T@ListDomainType)
(declare-fun v_2 () Int)
(declare-fun xs@@8 () T@ListDomainType)
(declare-fun Heap@@24 () T@PolymorphicMapType_6675)
(set-info :boogie-vc-id prepend)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (and (= ys@0 (Cons v_2 xs@@8)) (state Heap@@24 ZeroMask)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (= (get_List_head ys@0) v_2)) (=> (= (get_List_head ys@0) v_2) (=> (= (ControlFlow 0 3) (- 0 2)) (= (get_List_tail ys@0) xs@@8)))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@24 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
