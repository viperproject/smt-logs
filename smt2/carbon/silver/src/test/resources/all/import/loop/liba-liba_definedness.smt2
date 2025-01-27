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
(declare-sort T@Field_3698_53 0)
(declare-sort T@Field_3711_3712 0)
(declare-sort T@Field_3698_9787 0)
(declare-sort T@Field_3698_9654 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3659 0)) (((PolymorphicMapType_3659 (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| (Array T@Ref T@Field_3698_53 Real)) (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| (Array T@Ref T@Field_3711_3712 Real)) (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| (Array T@Ref T@Field_3698_9654 Real)) (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| (Array T@Ref T@Field_3698_9787 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4187 0)) (((PolymorphicMapType_4187 (|PolymorphicMapType_4187_3698_53#PolymorphicMapType_4187| (Array T@Ref T@Field_3698_53 Bool)) (|PolymorphicMapType_4187_3698_3712#PolymorphicMapType_4187| (Array T@Ref T@Field_3711_3712 Bool)) (|PolymorphicMapType_4187_3698_9654#PolymorphicMapType_4187| (Array T@Ref T@Field_3698_9654 Bool)) (|PolymorphicMapType_4187_3698_10767#PolymorphicMapType_4187| (Array T@Ref T@Field_3698_9787 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3638 0)) (((PolymorphicMapType_3638 (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| (Array T@Ref T@Field_3698_53 Bool)) (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| (Array T@Ref T@Field_3711_3712 T@Ref)) (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| (Array T@Ref T@Field_3698_9787 T@PolymorphicMapType_4187)) (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| (Array T@Ref T@Field_3698_9654 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3638 T@PolymorphicMapType_3638) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3638 T@PolymorphicMapType_3638) Bool)
(declare-fun state (T@PolymorphicMapType_3638 T@PolymorphicMapType_3659) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3659) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4187)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3638 T@PolymorphicMapType_3638 T@PolymorphicMapType_3659) Bool)
(declare-fun IsPredicateField_3698_9745 (T@Field_3698_9654) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3698 (T@Field_3698_9654) T@Field_3698_9787)
(declare-fun HasDirectPerm_3698_9718 (T@PolymorphicMapType_3659 T@Ref T@Field_3698_9654) Bool)
(declare-fun IsWandField_3698_11294 (T@Field_3698_9654) Bool)
(declare-fun WandMaskField_3698 (T@Field_3698_9654) T@Field_3698_9787)
(declare-fun |liba'| (T@PolymorphicMapType_3638) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |liba#trigger| (T@FrameType) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |libb'| (T@PolymorphicMapType_3638) Bool)
(declare-fun |libb#trigger| (T@FrameType) Bool)
(declare-fun |main'| (T@PolymorphicMapType_3638) Bool)
(declare-fun |main#trigger| (T@FrameType) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_3638)
(declare-fun ZeroMask () T@PolymorphicMapType_3659)
(declare-fun $allocated () T@Field_3698_53)
(declare-fun InsidePredicate_3698_3698 (T@Field_3698_9654 T@FrameType T@Field_3698_9654 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3698_14257 (T@Field_3698_9787) Bool)
(declare-fun IsWandField_3698_14273 (T@Field_3698_9787) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3698_3712 (T@Field_3711_3712) Bool)
(declare-fun IsWandField_3698_3712 (T@Field_3711_3712) Bool)
(declare-fun IsPredicateField_3698_53 (T@Field_3698_53) Bool)
(declare-fun IsWandField_3698_53 (T@Field_3698_53) Bool)
(declare-fun HasDirectPerm_3698_14628 (T@PolymorphicMapType_3659 T@Ref T@Field_3698_9787) Bool)
(declare-fun HasDirectPerm_3698_3712 (T@PolymorphicMapType_3659 T@Ref T@Field_3711_3712) Bool)
(declare-fun HasDirectPerm_3698_53 (T@PolymorphicMapType_3659 T@Ref T@Field_3698_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3659 T@PolymorphicMapType_3659 T@PolymorphicMapType_3659) Bool)
(declare-fun |liba#frame| (T@FrameType) Bool)
(declare-fun |libb#frame| (T@FrameType) Bool)
(declare-fun |main#frame| (T@FrameType) Bool)
(declare-fun dummyFunction_1318 (Bool) Bool)
(declare-fun |liba#triggerStateless| () Bool)
(declare-fun |libb#triggerStateless| () Bool)
(declare-fun |main#triggerStateless| () Bool)
(declare-fun liba (T@PolymorphicMapType_3638) Bool)
(declare-fun libb (T@PolymorphicMapType_3638) Bool)
(declare-fun main_1 (T@PolymorphicMapType_3638) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3638) (Heap1 T@PolymorphicMapType_3638) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3638) (Mask T@PolymorphicMapType_3659) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3638) (Heap1@@0 T@PolymorphicMapType_3638) (Heap2 T@PolymorphicMapType_3638) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3698_9787) ) (!  (not (select (|PolymorphicMapType_4187_3698_10767#PolymorphicMapType_4187| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4187_3698_10767#PolymorphicMapType_4187| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3698_9654) ) (!  (not (select (|PolymorphicMapType_4187_3698_9654#PolymorphicMapType_4187| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4187_3698_9654#PolymorphicMapType_4187| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3711_3712) ) (!  (not (select (|PolymorphicMapType_4187_3698_3712#PolymorphicMapType_4187| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4187_3698_3712#PolymorphicMapType_4187| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3698_53) ) (!  (not (select (|PolymorphicMapType_4187_3698_53#PolymorphicMapType_4187| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4187_3698_53#PolymorphicMapType_4187| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3638) (ExhaleHeap T@PolymorphicMapType_3638) (Mask@@0 T@PolymorphicMapType_3659) (pm_f T@Field_3698_9654) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3698_9718 Mask@@0 null pm_f) (IsPredicateField_3698_9745 pm_f)) (= (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@0) null (PredicateMaskField_3698 pm_f)) (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| ExhaleHeap) null (PredicateMaskField_3698 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3698_9745 pm_f) (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| ExhaleHeap) null (PredicateMaskField_3698 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3638) (ExhaleHeap@@0 T@PolymorphicMapType_3638) (Mask@@1 T@PolymorphicMapType_3659) (pm_f@@0 T@Field_3698_9654) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3698_9718 Mask@@1 null pm_f@@0) (IsWandField_3698_11294 pm_f@@0)) (= (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@1) null (WandMaskField_3698 pm_f@@0)) (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| ExhaleHeap@@0) null (WandMaskField_3698 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3698_11294 pm_f@@0) (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| ExhaleHeap@@0) null (WandMaskField_3698 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3638) (Mask@@2 T@PolymorphicMapType_3659) ) (!  (=> (and (state Heap@@2 Mask@@2) (or (< AssumeFunctionsAbove 0) (|liba#trigger| EmptyFrame))) (= (|liba'| Heap@@2) (|libb'| Heap@@2)))
 :qid |stdinbpl.203:15|
 :skolemid |25|
 :pattern ( (state Heap@@2 Mask@@2) (|liba'| Heap@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3638) (Mask@@3 T@PolymorphicMapType_3659) ) (!  (=> (and (state Heap@@3 Mask@@3) (or (< AssumeFunctionsAbove 0) (|libb#trigger| EmptyFrame))) (= (|libb'| Heap@@3) (|main'| Heap@@3)))
 :qid |stdinbpl.261:15|
 :skolemid |29|
 :pattern ( (state Heap@@3 Mask@@3) (|libb'| Heap@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3638) (Mask@@4 T@PolymorphicMapType_3659) ) (!  (=> (and (state Heap@@4 Mask@@4) (or (< AssumeFunctionsAbove 0) (|main#trigger| EmptyFrame))) (= (|main'| Heap@@4) (|liba'| Heap@@4)))
 :qid |stdinbpl.319:15|
 :skolemid |33|
 :pattern ( (state Heap@@4 Mask@@4) (|main'| Heap@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3638) (ExhaleHeap@@1 T@PolymorphicMapType_3638) (Mask@@5 T@PolymorphicMapType_3659) (pm_f@@1 T@Field_3698_9654) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_3698_9718 Mask@@5 null pm_f@@1) (IsPredicateField_3698_9745 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3698_53) ) (!  (=> (select (|PolymorphicMapType_4187_3698_53#PolymorphicMapType_4187| (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@5) null (PredicateMaskField_3698 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@5) o2 f_2) (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3711_3712) ) (!  (=> (select (|PolymorphicMapType_4187_3698_3712#PolymorphicMapType_4187| (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@5) null (PredicateMaskField_3698 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@5) o2@@0 f_2@@0) (select (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3698_9654) ) (!  (=> (select (|PolymorphicMapType_4187_3698_9654#PolymorphicMapType_4187| (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@5) null (PredicateMaskField_3698 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| Heap@@5) o2@@1 f_2@@1) (select (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3698_9787) ) (!  (=> (select (|PolymorphicMapType_4187_3698_10767#PolymorphicMapType_4187| (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@5) null (PredicateMaskField_3698 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@5) o2@@2 f_2@@2) (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@5) (IsPredicateField_3698_9745 pm_f@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3638) (ExhaleHeap@@2 T@PolymorphicMapType_3638) (Mask@@6 T@PolymorphicMapType_3659) (pm_f@@2 T@Field_3698_9654) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_3698_9718 Mask@@6 null pm_f@@2) (IsWandField_3698_11294 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3698_53) ) (!  (=> (select (|PolymorphicMapType_4187_3698_53#PolymorphicMapType_4187| (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@6) null (WandMaskField_3698 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@6) o2@@3 f_2@@3) (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3711_3712) ) (!  (=> (select (|PolymorphicMapType_4187_3698_3712#PolymorphicMapType_4187| (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@6) null (WandMaskField_3698 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@6) o2@@4 f_2@@4) (select (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3698_9654) ) (!  (=> (select (|PolymorphicMapType_4187_3698_9654#PolymorphicMapType_4187| (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@6) null (WandMaskField_3698 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| Heap@@6) o2@@5 f_2@@5) (select (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3698_9787) ) (!  (=> (select (|PolymorphicMapType_4187_3698_10767#PolymorphicMapType_4187| (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@6) null (WandMaskField_3698 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@6) o2@@6 f_2@@6) (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@6) (IsWandField_3698_11294 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3638) (ExhaleHeap@@3 T@PolymorphicMapType_3638) (Mask@@7 T@PolymorphicMapType_3659) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@7) (=> (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@7) o_1 $allocated) (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@7) (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3698_9654) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3698_3698 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3698_3698 p v_1 p w))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3638) (ExhaleHeap@@4 T@PolymorphicMapType_3638) (Mask@@8 T@PolymorphicMapType_3659) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@8) (succHeap Heap@@8 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3659) (o_2@@3 T@Ref) (f_4@@3 T@Field_3698_9787) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| Mask@@9) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3698_14257 f_4@@3))) (not (IsWandField_3698_14273 f_4@@3))) (<= (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| Mask@@9) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| Mask@@9) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3659) (o_2@@4 T@Ref) (f_4@@4 T@Field_3698_9654) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| Mask@@10) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3698_9745 f_4@@4))) (not (IsWandField_3698_11294 f_4@@4))) (<= (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| Mask@@10) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| Mask@@10) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3659) (o_2@@5 T@Ref) (f_4@@5 T@Field_3711_3712) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| Mask@@11) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3698_3712 f_4@@5))) (not (IsWandField_3698_3712 f_4@@5))) (<= (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| Mask@@11) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| Mask@@11) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3659) (o_2@@6 T@Ref) (f_4@@6 T@Field_3698_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| Mask@@12) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3698_53 f_4@@6))) (not (IsWandField_3698_53 f_4@@6))) (<= (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| Mask@@12) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| Mask@@12) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3659) (o_2@@7 T@Ref) (f_4@@7 T@Field_3698_9787) ) (! (= (HasDirectPerm_3698_14628 Mask@@13 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| Mask@@13) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3698_14628 Mask@@13 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3659) (o_2@@8 T@Ref) (f_4@@8 T@Field_3698_9654) ) (! (= (HasDirectPerm_3698_9718 Mask@@14 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| Mask@@14) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3698_9718 Mask@@14 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3659) (o_2@@9 T@Ref) (f_4@@9 T@Field_3711_3712) ) (! (= (HasDirectPerm_3698_3712 Mask@@15 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| Mask@@15) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3698_3712 Mask@@15 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3659) (o_2@@10 T@Ref) (f_4@@10 T@Field_3698_53) ) (! (= (HasDirectPerm_3698_53 Mask@@16 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| Mask@@16) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3698_53 Mask@@16 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3638) (ExhaleHeap@@5 T@PolymorphicMapType_3638) (Mask@@17 T@PolymorphicMapType_3659) (o_1@@0 T@Ref) (f_2@@7 T@Field_3698_9787) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_3698_14628 Mask@@17 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@9) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3638) (ExhaleHeap@@6 T@PolymorphicMapType_3638) (Mask@@18 T@PolymorphicMapType_3659) (o_1@@1 T@Ref) (f_2@@8 T@Field_3698_9654) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_3698_9718 Mask@@18 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| Heap@@10) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3638) (ExhaleHeap@@7 T@PolymorphicMapType_3638) (Mask@@19 T@PolymorphicMapType_3659) (o_1@@2 T@Ref) (f_2@@9 T@Field_3711_3712) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_3698_3712 Mask@@19 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@11) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3638) (ExhaleHeap@@8 T@PolymorphicMapType_3638) (Mask@@20 T@PolymorphicMapType_3659) (o_1@@3 T@Ref) (f_2@@10 T@Field_3698_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_3698_53 Mask@@20 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@12) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3698_9787) ) (! (= (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3698_9654) ) (! (= (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3711_3712) ) (! (= (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3698_53) ) (! (= (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3659) (SummandMask1 T@PolymorphicMapType_3659) (SummandMask2 T@PolymorphicMapType_3659) (o_2@@15 T@Ref) (f_4@@15 T@Field_3698_9787) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3659_3698_13348#PolymorphicMapType_3659| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3659) (SummandMask1@@0 T@PolymorphicMapType_3659) (SummandMask2@@0 T@PolymorphicMapType_3659) (o_2@@16 T@Ref) (f_4@@16 T@Field_3698_9654) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3659_3698_9654#PolymorphicMapType_3659| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3659) (SummandMask1@@1 T@PolymorphicMapType_3659) (SummandMask2@@1 T@PolymorphicMapType_3659) (o_2@@17 T@Ref) (f_4@@17 T@Field_3711_3712) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3659_3698_3712#PolymorphicMapType_3659| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3659) (SummandMask1@@2 T@PolymorphicMapType_3659) (SummandMask2@@2 T@PolymorphicMapType_3659) (o_2@@18 T@Ref) (f_4@@18 T@Field_3698_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3659_3698_53#PolymorphicMapType_3659| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3638) (Mask@@21 T@PolymorphicMapType_3659) ) (!  (=> (state Heap@@13 Mask@@21) (= (|liba'| Heap@@13) (|liba#frame| EmptyFrame)))
 :qid |stdinbpl.197:15|
 :skolemid |24|
 :pattern ( (state Heap@@13 Mask@@21) (|liba'| Heap@@13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3638) (Mask@@22 T@PolymorphicMapType_3659) ) (!  (=> (state Heap@@14 Mask@@22) (= (|libb'| Heap@@14) (|libb#frame| EmptyFrame)))
 :qid |stdinbpl.255:15|
 :skolemid |28|
 :pattern ( (state Heap@@14 Mask@@22) (|libb'| Heap@@14))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3638) (Mask@@23 T@PolymorphicMapType_3659) ) (!  (=> (state Heap@@15 Mask@@23) (= (|main'| Heap@@15) (|main#frame| EmptyFrame)))
 :qid |stdinbpl.313:15|
 :skolemid |32|
 :pattern ( (state Heap@@15 Mask@@23) (|main'| Heap@@15))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3638) ) (! (dummyFunction_1318 |liba#triggerStateless|)
 :qid |stdinbpl.190:15|
 :skolemid |23|
 :pattern ( (|liba'| Heap@@16))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3638) ) (! (dummyFunction_1318 |libb#triggerStateless|)
 :qid |stdinbpl.248:15|
 :skolemid |27|
 :pattern ( (|libb'| Heap@@17))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3638) ) (! (dummyFunction_1318 |main#triggerStateless|)
 :qid |stdinbpl.306:15|
 :skolemid |31|
 :pattern ( (|main'| Heap@@18))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3638) (o T@Ref) (f_3 T@Field_3698_9654) (v T@FrameType) ) (! (succHeap Heap@@19 (PolymorphicMapType_3638 (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@19) (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@19) (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@19) (store (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| Heap@@19) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3638 (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@19) (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@19) (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@19) (store (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| Heap@@19) o f_3 v)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3638) (o@@0 T@Ref) (f_3@@0 T@Field_3698_9787) (v@@0 T@PolymorphicMapType_4187) ) (! (succHeap Heap@@20 (PolymorphicMapType_3638 (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@20) (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@20) (store (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3638 (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@20) (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@20) (store (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3638) (o@@1 T@Ref) (f_3@@1 T@Field_3711_3712) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_3638 (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@21) (store (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@21) (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3638 (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@21) (store (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@21) (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3638) (o@@2 T@Ref) (f_3@@2 T@Field_3698_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_3638 (store (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@22) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@22) (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@22) (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3638 (store (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@22) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@22) (|PolymorphicMapType_3638_3698_9831#PolymorphicMapType_3638| Heap@@22) (|PolymorphicMapType_3638_3698_9654#PolymorphicMapType_3638| Heap@@22)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3711_3712) (Heap@@23 T@PolymorphicMapType_3638) ) (!  (=> (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@23) o@@3 $allocated) (select (|PolymorphicMapType_3638_1826_53#PolymorphicMapType_3638| Heap@@23) (select (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@23) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3638_1829_1830#PolymorphicMapType_3638| Heap@@23) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3698_9654) (v_1@@0 T@FrameType) (q T@Field_3698_9654) (w@@0 T@FrameType) (r T@Field_3698_9654) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3698_3698 p@@1 v_1@@0 q w@@0) (InsidePredicate_3698_3698 q w@@0 r u)) (InsidePredicate_3698_3698 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3698_3698 p@@1 v_1@@0 q w@@0) (InsidePredicate_3698_3698 q w@@0 r u))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3638) ) (!  (and (= (liba Heap@@24) (|liba'| Heap@@24)) (dummyFunction_1318 |liba#triggerStateless|))
 :qid |stdinbpl.186:15|
 :skolemid |22|
 :pattern ( (liba Heap@@24))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3638) ) (!  (and (= (libb Heap@@25) (|libb'| Heap@@25)) (dummyFunction_1318 |libb#triggerStateless|))
 :qid |stdinbpl.244:15|
 :skolemid |26|
 :pattern ( (libb Heap@@25))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3638) ) (!  (and (= (main_1 Heap@@26) (|main'| Heap@@26)) (dummyFunction_1318 |main#triggerStateless|))
 :qid |stdinbpl.302:15|
 :skolemid |30|
 :pattern ( (main_1 Heap@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |liba#definedness|)
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
 (=> (= (ControlFlow 0 0) 4) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
