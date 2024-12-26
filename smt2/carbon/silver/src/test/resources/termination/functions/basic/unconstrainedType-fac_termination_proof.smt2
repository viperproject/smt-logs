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
(declare-sort T@Field_3237_53 0)
(declare-sort T@Field_3250_3251 0)
(declare-sort T@Field_3237_8443 0)
(declare-sort T@Field_3237_8310 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3198 0)) (((PolymorphicMapType_3198 (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| (Array T@Ref T@Field_3237_53 Real)) (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| (Array T@Ref T@Field_3250_3251 Real)) (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| (Array T@Ref T@Field_3237_8310 Real)) (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| (Array T@Ref T@Field_3237_8443 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3726 0)) (((PolymorphicMapType_3726 (|PolymorphicMapType_3726_3237_53#PolymorphicMapType_3726| (Array T@Ref T@Field_3237_53 Bool)) (|PolymorphicMapType_3726_3237_3251#PolymorphicMapType_3726| (Array T@Ref T@Field_3250_3251 Bool)) (|PolymorphicMapType_3726_3237_8310#PolymorphicMapType_3726| (Array T@Ref T@Field_3237_8310 Bool)) (|PolymorphicMapType_3726_3237_9423#PolymorphicMapType_3726| (Array T@Ref T@Field_3237_8443 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3177 0)) (((PolymorphicMapType_3177 (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| (Array T@Ref T@Field_3237_53 Bool)) (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| (Array T@Ref T@Field_3250_3251 T@Ref)) (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| (Array T@Ref T@Field_3237_8443 T@PolymorphicMapType_3726)) (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| (Array T@Ref T@Field_3237_8310 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3177 T@PolymorphicMapType_3177) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3177 T@PolymorphicMapType_3177) Bool)
(declare-fun state (T@PolymorphicMapType_3177 T@PolymorphicMapType_3198) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3198) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3726)
(declare-sort T@HuhDomainType 0)
(declare-fun |fac'| (T@PolymorphicMapType_3177 Int T@HuhDomainType) Int)
(declare-fun dummyFunction_1439 (Int) Bool)
(declare-fun |fac#triggerStateless| (Int T@HuhDomainType) Int)
(declare-fun |fac#frame| (T@FrameType Int T@HuhDomainType) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3177 T@PolymorphicMapType_3177 T@PolymorphicMapType_3198) Bool)
(declare-fun IsPredicateField_3237_8401 (T@Field_3237_8310) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3237 (T@Field_3237_8310) T@Field_3237_8443)
(declare-fun HasDirectPerm_3237_8374 (T@PolymorphicMapType_3198 T@Ref T@Field_3237_8310) Bool)
(declare-fun IsWandField_3237_9950 (T@Field_3237_8310) Bool)
(declare-fun WandMaskField_3237 (T@Field_3237_8310) T@Field_3237_8443)
(declare-fun dummyHeap () T@PolymorphicMapType_3177)
(declare-fun ZeroMask () T@PolymorphicMapType_3198)
(declare-fun $allocated () T@Field_3237_53)
(declare-fun InsidePredicate_3237_3237 (T@Field_3237_8310 T@FrameType T@Field_3237_8310 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3237_12913 (T@Field_3237_8443) Bool)
(declare-fun IsWandField_3237_12929 (T@Field_3237_8443) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3237_3251 (T@Field_3250_3251) Bool)
(declare-fun IsWandField_3237_3251 (T@Field_3250_3251) Bool)
(declare-fun IsPredicateField_3237_53 (T@Field_3237_53) Bool)
(declare-fun IsWandField_3237_53 (T@Field_3237_53) Bool)
(declare-fun HasDirectPerm_3237_13284 (T@PolymorphicMapType_3198 T@Ref T@Field_3237_8443) Bool)
(declare-fun HasDirectPerm_3237_3251 (T@PolymorphicMapType_3198 T@Ref T@Field_3250_3251) Bool)
(declare-fun HasDirectPerm_3237_53 (T@PolymorphicMapType_3198 T@Ref T@Field_3237_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun fac (T@PolymorphicMapType_3177 Int T@HuhDomainType) Int)
(declare-fun sumMask (T@PolymorphicMapType_3198 T@PolymorphicMapType_3198 T@PolymorphicMapType_3198) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(assert (forall ((Heap0 T@PolymorphicMapType_3177) (Heap1 T@PolymorphicMapType_3177) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3177) (Mask T@PolymorphicMapType_3198) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3177) (Heap1@@0 T@PolymorphicMapType_3177) (Heap2 T@PolymorphicMapType_3177) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3237_8443) ) (!  (not (select (|PolymorphicMapType_3726_3237_9423#PolymorphicMapType_3726| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3726_3237_9423#PolymorphicMapType_3726| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3237_8310) ) (!  (not (select (|PolymorphicMapType_3726_3237_8310#PolymorphicMapType_3726| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3726_3237_8310#PolymorphicMapType_3726| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3250_3251) ) (!  (not (select (|PolymorphicMapType_3726_3237_3251#PolymorphicMapType_3726| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3726_3237_3251#PolymorphicMapType_3726| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3237_53) ) (!  (not (select (|PolymorphicMapType_3726_3237_53#PolymorphicMapType_3726| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3726_3237_53#PolymorphicMapType_3726| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3177) (i Int) (h_2 T@HuhDomainType) ) (! (dummyFunction_1439 (|fac#triggerStateless| i h_2))
 :qid |stdinbpl.210:15|
 :skolemid |23|
 :pattern ( (|fac'| Heap@@0 i h_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3177) (Mask@@0 T@PolymorphicMapType_3198) (i@@0 Int) (h_2@@0 T@HuhDomainType) ) (!  (=> (state Heap@@1 Mask@@0) (= (|fac'| Heap@@1 i@@0 h_2@@0) (|fac#frame| EmptyFrame i@@0 h_2@@0)))
 :qid |stdinbpl.223:15|
 :skolemid |25|
 :pattern ( (state Heap@@1 Mask@@0) (|fac'| Heap@@1 i@@0 h_2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3177) (ExhaleHeap T@PolymorphicMapType_3177) (Mask@@1 T@PolymorphicMapType_3198) (pm_f T@Field_3237_8310) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_3237_8374 Mask@@1 null pm_f) (IsPredicateField_3237_8401 pm_f)) (= (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@2) null (PredicateMaskField_3237 pm_f)) (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| ExhaleHeap) null (PredicateMaskField_3237 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_3237_8401 pm_f) (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| ExhaleHeap) null (PredicateMaskField_3237 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3177) (ExhaleHeap@@0 T@PolymorphicMapType_3177) (Mask@@2 T@PolymorphicMapType_3198) (pm_f@@0 T@Field_3237_8310) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3237_8374 Mask@@2 null pm_f@@0) (IsWandField_3237_9950 pm_f@@0)) (= (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@3) null (WandMaskField_3237 pm_f@@0)) (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| ExhaleHeap@@0) null (WandMaskField_3237 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_3237_9950 pm_f@@0) (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| ExhaleHeap@@0) null (WandMaskField_3237 pm_f@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3177) (ExhaleHeap@@1 T@PolymorphicMapType_3177) (Mask@@3 T@PolymorphicMapType_3198) (pm_f@@1 T@Field_3237_8310) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_3237_8374 Mask@@3 null pm_f@@1) (IsPredicateField_3237_8401 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3237_53) ) (!  (=> (select (|PolymorphicMapType_3726_3237_53#PolymorphicMapType_3726| (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@4) null (PredicateMaskField_3237 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@4) o2 f_2) (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3250_3251) ) (!  (=> (select (|PolymorphicMapType_3726_3237_3251#PolymorphicMapType_3726| (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@4) null (PredicateMaskField_3237 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3237_8310) ) (!  (=> (select (|PolymorphicMapType_3726_3237_8310#PolymorphicMapType_3726| (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@4) null (PredicateMaskField_3237 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3237_8443) ) (!  (=> (select (|PolymorphicMapType_3726_3237_9423#PolymorphicMapType_3726| (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@4) null (PredicateMaskField_3237 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (IsPredicateField_3237_8401 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3177) (ExhaleHeap@@2 T@PolymorphicMapType_3177) (Mask@@4 T@PolymorphicMapType_3198) (pm_f@@2 T@Field_3237_8310) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3237_8374 Mask@@4 null pm_f@@2) (IsWandField_3237_9950 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3237_53) ) (!  (=> (select (|PolymorphicMapType_3726_3237_53#PolymorphicMapType_3726| (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@5) null (WandMaskField_3237 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3250_3251) ) (!  (=> (select (|PolymorphicMapType_3726_3237_3251#PolymorphicMapType_3726| (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@5) null (WandMaskField_3237 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3237_8310) ) (!  (=> (select (|PolymorphicMapType_3726_3237_8310#PolymorphicMapType_3726| (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@5) null (WandMaskField_3237 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3237_8443) ) (!  (=> (select (|PolymorphicMapType_3726_3237_9423#PolymorphicMapType_3726| (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@5) null (WandMaskField_3237 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (IsWandField_3237_9950 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3177) (ExhaleHeap@@3 T@PolymorphicMapType_3177) (Mask@@5 T@PolymorphicMapType_3198) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3237_8310) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3237_3237 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3237_3237 p v_1 p w))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3177) (ExhaleHeap@@4 T@PolymorphicMapType_3177) (Mask@@6 T@PolymorphicMapType_3198) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3198) (o_2@@3 T@Ref) (f_4@@3 T@Field_3237_8443) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3237_12913 f_4@@3))) (not (IsWandField_3237_12929 f_4@@3))) (<= (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3198) (o_2@@4 T@Ref) (f_4@@4 T@Field_3237_8310) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3237_8401 f_4@@4))) (not (IsWandField_3237_9950 f_4@@4))) (<= (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3198) (o_2@@5 T@Ref) (f_4@@5 T@Field_3250_3251) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3237_3251 f_4@@5))) (not (IsWandField_3237_3251 f_4@@5))) (<= (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3198) (o_2@@6 T@Ref) (f_4@@6 T@Field_3237_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3237_53 f_4@@6))) (not (IsWandField_3237_53 f_4@@6))) (<= (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3198) (o_2@@7 T@Ref) (f_4@@7 T@Field_3237_8443) ) (! (= (HasDirectPerm_3237_13284 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3237_13284 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3198) (o_2@@8 T@Ref) (f_4@@8 T@Field_3237_8310) ) (! (= (HasDirectPerm_3237_8374 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3237_8374 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3198) (o_2@@9 T@Ref) (f_4@@9 T@Field_3250_3251) ) (! (= (HasDirectPerm_3237_3251 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3237_3251 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3198) (o_2@@10 T@Ref) (f_4@@10 T@Field_3237_53) ) (! (= (HasDirectPerm_3237_53 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3237_53 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3177) (ExhaleHeap@@5 T@PolymorphicMapType_3177) (Mask@@15 T@PolymorphicMapType_3198) (o_1@@0 T@Ref) (f_2@@7 T@Field_3237_8443) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_3237_13284 Mask@@15 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@8) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3177) (ExhaleHeap@@6 T@PolymorphicMapType_3177) (Mask@@16 T@PolymorphicMapType_3198) (o_1@@1 T@Ref) (f_2@@8 T@Field_3237_8310) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_3237_8374 Mask@@16 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| Heap@@9) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3177) (ExhaleHeap@@7 T@PolymorphicMapType_3177) (Mask@@17 T@PolymorphicMapType_3198) (o_1@@2 T@Ref) (f_2@@9 T@Field_3250_3251) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_3237_3251 Mask@@17 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@10) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3177) (ExhaleHeap@@8 T@PolymorphicMapType_3177) (Mask@@18 T@PolymorphicMapType_3198) (o_1@@3 T@Ref) (f_2@@10 T@Field_3237_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_3237_53 Mask@@18 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@11) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3237_8443) ) (! (= (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3237_8310) ) (! (= (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3250_3251) ) (! (= (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3237_53) ) (! (= (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3177) (i@@1 Int) (h_2@@1 T@HuhDomainType) ) (!  (and (= (fac Heap@@12 i@@1 h_2@@1) (|fac'| Heap@@12 i@@1 h_2@@1)) (dummyFunction_1439 (|fac#triggerStateless| i@@1 h_2@@1)))
 :qid |stdinbpl.206:15|
 :skolemid |22|
 :pattern ( (fac Heap@@12 i@@1 h_2@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3198) (SummandMask1 T@PolymorphicMapType_3198) (SummandMask2 T@PolymorphicMapType_3198) (o_2@@15 T@Ref) (f_4@@15 T@Field_3237_8443) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3198_3237_12004#PolymorphicMapType_3198| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3198) (SummandMask1@@0 T@PolymorphicMapType_3198) (SummandMask2@@0 T@PolymorphicMapType_3198) (o_2@@16 T@Ref) (f_4@@16 T@Field_3237_8310) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3198_3237_8310#PolymorphicMapType_3198| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3198) (SummandMask1@@1 T@PolymorphicMapType_3198) (SummandMask2@@1 T@PolymorphicMapType_3198) (o_2@@17 T@Ref) (f_4@@17 T@Field_3250_3251) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3198_3237_3251#PolymorphicMapType_3198| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3198) (SummandMask1@@2 T@PolymorphicMapType_3198) (SummandMask2@@2 T@PolymorphicMapType_3198) (o_2@@18 T@Ref) (f_4@@18 T@Field_3237_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3198_3237_53#PolymorphicMapType_3198| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3177) (o T@Ref) (f_3 T@Field_3237_8310) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_3177 (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@13) (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@13) (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@13) (store (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| Heap@@13) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3177 (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@13) (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@13) (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@13) (store (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| Heap@@13) o f_3 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3177) (o@@0 T@Ref) (f_3@@0 T@Field_3237_8443) (v@@0 T@PolymorphicMapType_3726) ) (! (succHeap Heap@@14 (PolymorphicMapType_3177 (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@14) (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@14) (store (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@14) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3177 (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@14) (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@14) (store (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@14) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3177) (o@@1 T@Ref) (f_3@@1 T@Field_3250_3251) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_3177 (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@15) (store (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@15) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@15) (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3177 (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@15) (store (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@15) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@15) (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3177) (o@@2 T@Ref) (f_3@@2 T@Field_3237_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_3177 (store (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@16) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@16) (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@16) (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3177 (store (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@16) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@16) (|PolymorphicMapType_3177_3237_8487#PolymorphicMapType_3177| Heap@@16) (|PolymorphicMapType_3177_3237_8310#PolymorphicMapType_3177| Heap@@16)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3250_3251) (Heap@@17 T@PolymorphicMapType_3177) ) (!  (=> (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@17) o@@3 $allocated) (select (|PolymorphicMapType_3177_1682_53#PolymorphicMapType_3177| Heap@@17) (select (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@17) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3177_1685_1686#PolymorphicMapType_3177| Heap@@17) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3237_8310) (v_1@@0 T@FrameType) (q T@Field_3237_8310) (w@@0 T@FrameType) (r T@Field_3237_8310) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3237_3237 p@@1 v_1@@0 q w@@0) (InsidePredicate_3237_3237 q w@@0 r u)) (InsidePredicate_3237_3237 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3237_3237 p@@1 v_1@@0 q w@@0) (InsidePredicate_3237_3237 q w@@0 r u))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3177) (Mask@@19 T@PolymorphicMapType_3198) (i@@2 Int) (h_2@@2 T@HuhDomainType) ) (!  (=> (and (state Heap@@18 Mask@@19) (< AssumeFunctionsAbove 0)) (=> (>= i@@2 0) (= (fac Heap@@18 i@@2 h_2@@2) (ite (= i@@2 0) 1 (* i@@2 (|fac'| Heap@@18 (- i@@2 1) h_2@@2))))))
 :qid |stdinbpl.216:15|
 :skolemid |24|
 :pattern ( (state Heap@@18 Mask@@19) (fac Heap@@18 i@@2 h_2@@2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i@@3 () Int)
(declare-fun decreasing_1834 (T@HuhDomainType T@HuhDomainType) Bool)
(declare-fun h_2@@3 () T@HuhDomainType)
(declare-fun bounded_1834 (T@HuhDomainType) Bool)
(declare-fun Heap@@19 () T@PolymorphicMapType_3177)
(set-info :boogie-vc-id fac_termination_proof)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon3_correct true))
(let ((anon4_Else_correct  (=> (not (= i@@3 0)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (decreasing_1834 h_2@@3 h_2@@3)) (=> (decreasing_1834 h_2@@3 h_2@@3) (and (=> (= (ControlFlow 0 3) (- 0 4)) (bounded_1834 h_2@@3)) (=> (bounded_1834 h_2@@3) (=> (and (state Heap@@19 ZeroMask) (= (ControlFlow 0 3) 1)) anon3_correct))))))))
(let ((anon4_Then_correct  (=> (and (= i@@3 0) (= (ControlFlow 0 2) 1)) anon3_correct)))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (>= i@@3 0) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 6) 2) anon4_Then_correct) (=> (= (ControlFlow 0 6) 3) anon4_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 4))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
