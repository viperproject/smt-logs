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
(declare-sort T@Field_3759_53 0)
(declare-sort T@Field_3772_3773 0)
(declare-sort T@Field_2026_10323 0)
(declare-sort T@Field_2026_10190 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3720 0)) (((PolymorphicMapType_3720 (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| (Array T@Ref T@Field_3772_3773 Real)) (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| (Array T@Ref T@Field_3759_53 Real)) (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| (Array T@Ref T@Field_2026_10190 Real)) (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| (Array T@Ref T@Field_2026_10323 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4248 0)) (((PolymorphicMapType_4248 (|PolymorphicMapType_4248_3759_53#PolymorphicMapType_4248| (Array T@Ref T@Field_3759_53 Bool)) (|PolymorphicMapType_4248_3759_3773#PolymorphicMapType_4248| (Array T@Ref T@Field_3772_3773 Bool)) (|PolymorphicMapType_4248_3759_10190#PolymorphicMapType_4248| (Array T@Ref T@Field_2026_10190 Bool)) (|PolymorphicMapType_4248_3759_11303#PolymorphicMapType_4248| (Array T@Ref T@Field_2026_10323 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3699 0)) (((PolymorphicMapType_3699 (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| (Array T@Ref T@Field_3759_53 Bool)) (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| (Array T@Ref T@Field_3772_3773 T@Ref)) (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| (Array T@Ref T@Field_2026_10323 T@PolymorphicMapType_4248)) (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| (Array T@Ref T@Field_2026_10190 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3759_53)
(declare-fun next () T@Field_3772_3773)
(declare-fun succHeap (T@PolymorphicMapType_3699 T@PolymorphicMapType_3699) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3699 T@PolymorphicMapType_3699) Bool)
(declare-fun state (T@PolymorphicMapType_3699 T@PolymorphicMapType_3720) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3720) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4248)
(declare-fun |f'| (T@PolymorphicMapType_3699 Int) Int)
(declare-fun dummyFunction_1370 (Int) Bool)
(declare-fun |f#triggerStateless| (Int) Int)
(declare-fun f_6 (T@PolymorphicMapType_3699 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3699 T@PolymorphicMapType_3699 T@PolymorphicMapType_3720) Bool)
(declare-fun IsPredicateField_2026_10281 (T@Field_2026_10190) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2026 (T@Field_2026_10190) T@Field_2026_10323)
(declare-fun HasDirectPerm_2026_10254 (T@PolymorphicMapType_3720 T@Ref T@Field_2026_10190) Bool)
(declare-fun IsWandField_2026_11830 (T@Field_2026_10190) Bool)
(declare-fun WandMaskField_2026 (T@Field_2026_10190) T@Field_2026_10323)
(declare-fun dummyHeap () T@PolymorphicMapType_3699)
(declare-fun ZeroMask () T@PolymorphicMapType_3720)
(declare-fun InsidePredicate_3759_3759 (T@Field_2026_10190 T@FrameType T@Field_2026_10190 T@FrameType) Bool)
(declare-fun IsPredicateField_2026_2027 (T@Field_3772_3773) Bool)
(declare-fun IsWandField_2026_2027 (T@Field_3772_3773) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2026_14764 (T@Field_2026_10323) Bool)
(declare-fun IsWandField_2026_14780 (T@Field_2026_10323) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2026_53 (T@Field_3759_53) Bool)
(declare-fun IsWandField_2026_53 (T@Field_3759_53) Bool)
(declare-fun HasDirectPerm_2026_15135 (T@PolymorphicMapType_3720 T@Ref T@Field_2026_10323) Bool)
(declare-fun HasDirectPerm_2026_53 (T@PolymorphicMapType_3720 T@Ref T@Field_3759_53) Bool)
(declare-fun HasDirectPerm_2026_2027 (T@PolymorphicMapType_3720 T@Ref T@Field_3772_3773) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3720 T@PolymorphicMapType_3720 T@PolymorphicMapType_3720) Bool)
(declare-fun |f#frame| (T@FrameType Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(assert (forall ((Heap0 T@PolymorphicMapType_3699) (Heap1 T@PolymorphicMapType_3699) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3699) (Mask T@PolymorphicMapType_3720) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3699) (Heap1@@0 T@PolymorphicMapType_3699) (Heap2 T@PolymorphicMapType_3699) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2026_10323) ) (!  (not (select (|PolymorphicMapType_4248_3759_11303#PolymorphicMapType_4248| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4248_3759_11303#PolymorphicMapType_4248| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2026_10190) ) (!  (not (select (|PolymorphicMapType_4248_3759_10190#PolymorphicMapType_4248| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4248_3759_10190#PolymorphicMapType_4248| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3772_3773) ) (!  (not (select (|PolymorphicMapType_4248_3759_3773#PolymorphicMapType_4248| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4248_3759_3773#PolymorphicMapType_4248| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3759_53) ) (!  (not (select (|PolymorphicMapType_4248_3759_53#PolymorphicMapType_4248| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4248_3759_53#PolymorphicMapType_4248| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3699) (i Int) ) (! (dummyFunction_1370 (|f#triggerStateless| i))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|f'| Heap@@0 i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3699) (i@@0 Int) ) (!  (and (= (f_6 Heap@@1 i@@0) (|f'| Heap@@1 i@@0)) (dummyFunction_1370 (|f#triggerStateless| i@@0)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (f_6 Heap@@1 i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3699) (ExhaleHeap T@PolymorphicMapType_3699) (Mask@@0 T@PolymorphicMapType_3720) (pm_f_5 T@Field_2026_10190) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2026_10254 Mask@@0 null pm_f_5) (IsPredicateField_2026_10281 pm_f_5)) (= (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@2) null (PredicateMaskField_2026 pm_f_5)) (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| ExhaleHeap) null (PredicateMaskField_2026 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_2026_10281 pm_f_5) (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| ExhaleHeap) null (PredicateMaskField_2026 pm_f_5)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3699) (ExhaleHeap@@0 T@PolymorphicMapType_3699) (Mask@@1 T@PolymorphicMapType_3720) (pm_f_5@@0 T@Field_2026_10190) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2026_10254 Mask@@1 null pm_f_5@@0) (IsWandField_2026_11830 pm_f_5@@0)) (= (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@3) null (WandMaskField_2026 pm_f_5@@0)) (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| ExhaleHeap@@0) null (WandMaskField_2026 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_2026_11830 pm_f_5@@0) (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| ExhaleHeap@@0) null (WandMaskField_2026 pm_f_5@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3699) (ExhaleHeap@@1 T@PolymorphicMapType_3699) (Mask@@2 T@PolymorphicMapType_3720) (pm_f_5@@1 T@Field_2026_10190) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_2026_10254 Mask@@2 null pm_f_5@@1) (IsPredicateField_2026_10281 pm_f_5@@1)) (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_3759_53) ) (!  (=> (select (|PolymorphicMapType_4248_3759_53#PolymorphicMapType_4248| (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@4) null (PredicateMaskField_2026 pm_f_5@@1))) o2_5 f_23) (= (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@4) o2_5 f_23) (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| ExhaleHeap@@1) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| ExhaleHeap@@1) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_3772_3773) ) (!  (=> (select (|PolymorphicMapType_4248_3759_3773#PolymorphicMapType_4248| (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@4) null (PredicateMaskField_2026 pm_f_5@@1))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@4) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| ExhaleHeap@@1) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| ExhaleHeap@@1) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_2026_10190) ) (!  (=> (select (|PolymorphicMapType_4248_3759_10190#PolymorphicMapType_4248| (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@4) null (PredicateMaskField_2026 pm_f_5@@1))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| Heap@@4) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| ExhaleHeap@@1) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| ExhaleHeap@@1) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_2026_10323) ) (!  (=> (select (|PolymorphicMapType_4248_3759_11303#PolymorphicMapType_4248| (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@4) null (PredicateMaskField_2026 pm_f_5@@1))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@4) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| ExhaleHeap@@1) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| ExhaleHeap@@1) o2_5@@2 f_23@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_2026_10281 pm_f_5@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3699) (ExhaleHeap@@2 T@PolymorphicMapType_3699) (Mask@@3 T@PolymorphicMapType_3720) (pm_f_5@@2 T@Field_2026_10190) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2026_10254 Mask@@3 null pm_f_5@@2) (IsWandField_2026_11830 pm_f_5@@2)) (and (and (and (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_3759_53) ) (!  (=> (select (|PolymorphicMapType_4248_3759_53#PolymorphicMapType_4248| (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@5) null (WandMaskField_2026 pm_f_5@@2))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@5) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| ExhaleHeap@@2) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| ExhaleHeap@@2) o2_5@@3 f_23@@3))
)) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_3772_3773) ) (!  (=> (select (|PolymorphicMapType_4248_3759_3773#PolymorphicMapType_4248| (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@5) null (WandMaskField_2026 pm_f_5@@2))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@5) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| ExhaleHeap@@2) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| ExhaleHeap@@2) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_2026_10190) ) (!  (=> (select (|PolymorphicMapType_4248_3759_10190#PolymorphicMapType_4248| (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@5) null (WandMaskField_2026 pm_f_5@@2))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| Heap@@5) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| ExhaleHeap@@2) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| ExhaleHeap@@2) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_2026_10323) ) (!  (=> (select (|PolymorphicMapType_4248_3759_11303#PolymorphicMapType_4248| (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@5) null (WandMaskField_2026 pm_f_5@@2))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@5) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| ExhaleHeap@@2) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| ExhaleHeap@@2) o2_5@@6 f_23@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_2026_11830 pm_f_5@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3699) (ExhaleHeap@@3 T@PolymorphicMapType_3699) (Mask@@4 T@PolymorphicMapType_3720) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@6) o_15 $allocated) (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| ExhaleHeap@@3) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| ExhaleHeap@@3) o_15 $allocated))
)))
(assert (forall ((p T@Field_2026_10190) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3759_3759 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3759_3759 p v_1 p w))
)))
(assert  (not (IsPredicateField_2026_2027 next)))
(assert  (not (IsWandField_2026_2027 next)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3699) (ExhaleHeap@@4 T@PolymorphicMapType_3699) (Mask@@5 T@PolymorphicMapType_3720) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3720) (o_2@@3 T@Ref) (f_4@@3 T@Field_2026_10323) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2026_14764 f_4@@3))) (not (IsWandField_2026_14780 f_4@@3))) (<= (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3720) (o_2@@4 T@Ref) (f_4@@4 T@Field_2026_10190) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2026_10281 f_4@@4))) (not (IsWandField_2026_11830 f_4@@4))) (<= (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3720) (o_2@@5 T@Ref) (f_4@@5 T@Field_3759_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2026_53 f_4@@5))) (not (IsWandField_2026_53 f_4@@5))) (<= (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3720) (o_2@@6 T@Ref) (f_4@@6 T@Field_3772_3773) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2026_2027 f_4@@6))) (not (IsWandField_2026_2027 f_4@@6))) (<= (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3720) (o_2@@7 T@Ref) (f_4@@7 T@Field_2026_10323) ) (! (= (HasDirectPerm_2026_15135 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2026_15135 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3720) (o_2@@8 T@Ref) (f_4@@8 T@Field_2026_10190) ) (! (= (HasDirectPerm_2026_10254 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2026_10254 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3720) (o_2@@9 T@Ref) (f_4@@9 T@Field_3759_53) ) (! (= (HasDirectPerm_2026_53 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2026_53 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3720) (o_2@@10 T@Ref) (f_4@@10 T@Field_3772_3773) ) (! (= (HasDirectPerm_2026_2027 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2026_2027 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6@@0 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6@@0) (ite (> p@@0 0.0) f_6@@0 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3699) (ExhaleHeap@@5 T@PolymorphicMapType_3699) (Mask@@14 T@PolymorphicMapType_3720) (o_15@@0 T@Ref) (f_23@@7 T@Field_2026_10323) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_2026_15135 Mask@@14 o_15@@0 f_23@@7) (= (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@8) o_15@@0 f_23@@7) (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| ExhaleHeap@@5) o_15@@0 f_23@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| ExhaleHeap@@5) o_15@@0 f_23@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3699) (ExhaleHeap@@6 T@PolymorphicMapType_3699) (Mask@@15 T@PolymorphicMapType_3720) (o_15@@1 T@Ref) (f_23@@8 T@Field_2026_10190) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_2026_10254 Mask@@15 o_15@@1 f_23@@8) (= (select (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| Heap@@9) o_15@@1 f_23@@8) (select (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| ExhaleHeap@@6) o_15@@1 f_23@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| ExhaleHeap@@6) o_15@@1 f_23@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3699) (ExhaleHeap@@7 T@PolymorphicMapType_3699) (Mask@@16 T@PolymorphicMapType_3720) (o_15@@2 T@Ref) (f_23@@9 T@Field_3759_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_2026_53 Mask@@16 o_15@@2 f_23@@9) (= (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@10) o_15@@2 f_23@@9) (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| ExhaleHeap@@7) o_15@@2 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| ExhaleHeap@@7) o_15@@2 f_23@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3699) (ExhaleHeap@@8 T@PolymorphicMapType_3699) (Mask@@17 T@PolymorphicMapType_3720) (o_15@@3 T@Ref) (f_23@@10 T@Field_3772_3773) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_2026_2027 Mask@@17 o_15@@3 f_23@@10) (= (select (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@11) o_15@@3 f_23@@10) (select (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| ExhaleHeap@@8) o_15@@3 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| ExhaleHeap@@8) o_15@@3 f_23@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_2026_10323) ) (! (= (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_2026_10190) ) (! (= (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3759_53) ) (! (= (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3772_3773) ) (! (= (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3720) (SummandMask1 T@PolymorphicMapType_3720) (SummandMask2 T@PolymorphicMapType_3720) (o_2@@15 T@Ref) (f_4@@15 T@Field_2026_10323) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3720) (SummandMask1@@0 T@PolymorphicMapType_3720) (SummandMask2@@0 T@PolymorphicMapType_3720) (o_2@@16 T@Ref) (f_4@@16 T@Field_2026_10190) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3720) (SummandMask1@@1 T@PolymorphicMapType_3720) (SummandMask2@@1 T@PolymorphicMapType_3720) (o_2@@17 T@Ref) (f_4@@17 T@Field_3759_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3720) (SummandMask1@@2 T@PolymorphicMapType_3720) (SummandMask2@@2 T@PolymorphicMapType_3720) (o_2@@18 T@Ref) (f_4@@18 T@Field_3772_3773) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3699) (Mask@@18 T@PolymorphicMapType_3720) (i@@1 Int) ) (!  (=> (state Heap@@12 Mask@@18) (= (|f'| Heap@@12 i@@1) (|f#frame| EmptyFrame i@@1)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@12 Mask@@18) (|f'| Heap@@12 i@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3699) (o_14 T@Ref) (f_24 T@Field_2026_10190) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_3699 (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@13) (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@13) (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@13) (store (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| Heap@@13) o_14 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3699 (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@13) (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@13) (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@13) (store (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| Heap@@13) o_14 f_24 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3699) (o_14@@0 T@Ref) (f_24@@0 T@Field_2026_10323) (v@@0 T@PolymorphicMapType_4248) ) (! (succHeap Heap@@14 (PolymorphicMapType_3699 (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@14) (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@14) (store (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@14) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3699 (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@14) (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@14) (store (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@14) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3699) (o_14@@1 T@Ref) (f_24@@1 T@Field_3772_3773) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_3699 (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@15) (store (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@15) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@15) (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3699 (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@15) (store (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@15) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@15) (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3699) (o_14@@2 T@Ref) (f_24@@2 T@Field_3759_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_3699 (store (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@16) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@16) (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@16) (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3699 (store (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@16) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@16) (|PolymorphicMapType_3699_2026_10367#PolymorphicMapType_3699| Heap@@16) (|PolymorphicMapType_3699_3759_10190#PolymorphicMapType_3699| Heap@@16)))
)))
(assert (forall ((o_14@@3 T@Ref) (f_22 T@Field_3772_3773) (Heap@@17 T@PolymorphicMapType_3699) ) (!  (=> (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@17) o_14@@3 $allocated) (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@17) (select (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@17) o_14@@3 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3699_1901_1902#PolymorphicMapType_3699| Heap@@17) o_14@@3 f_22))
)))
(assert (forall ((p@@1 T@Field_2026_10190) (v_1@@0 T@FrameType) (q T@Field_2026_10190) (w@@0 T@FrameType) (r T@Field_2026_10190) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3759_3759 p@@1 v_1@@0 q w@@0) (InsidePredicate_3759_3759 q w@@0 r u)) (InsidePredicate_3759_3759 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3759_3759 p@@1 v_1@@0 q w@@0) (InsidePredicate_3759_3759 q w@@0 r u))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3699) (Mask@@19 T@PolymorphicMapType_3720) (i@@2 Int) ) (!  (=> (and (state Heap@@18 Mask@@19) (< AssumeFunctionsAbove 0)) (= (f_6 Heap@@18 i@@2) i@@2))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap@@18 Mask@@19) (f_6 Heap@@18 i@@2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostMask@0 () T@PolymorphicMapType_3720)
(declare-fun x () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_3699)
(declare-fun Heap@@19 () T@PolymorphicMapType_3699)
(declare-fun Mask@0 () T@PolymorphicMapType_3720)
(set-info :boogie-vc-id unlink_DAG_next)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (HasDirectPerm_2026_2027 PostMask@0 x next))))
(let ((anon9_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (not (= x null)) (= PostMask@0 (PolymorphicMapType_3720 (store (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| ZeroMask) x next (+ (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| ZeroMask) x next) FullPerm)) (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| ZeroMask) (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| ZeroMask) (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 5) 3) anon10_Then_correct) (=> (= (ControlFlow 0 5) 4) anon10_Else_correct))))))
(let ((anon9_Else_correct true))
(let ((anon0_correct  (=> (and (and (and (state Heap@@19 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_3699_1898_53#PolymorphicMapType_3699| Heap@@19) x $allocated))) (and (and (not (= x null)) (= Mask@0 (PolymorphicMapType_3720 (store (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| ZeroMask) x next (+ (select (|PolymorphicMapType_3720_2026_2027#PolymorphicMapType_3720| ZeroMask) x next) FullPerm)) (|PolymorphicMapType_3720_2026_53#PolymorphicMapType_3720| ZeroMask) (|PolymorphicMapType_3720_2026_10190#PolymorphicMapType_3720| ZeroMask) (|PolymorphicMapType_3720_2026_13869#PolymorphicMapType_3720| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0)))) (and (=> (= (ControlFlow 0 6) 5) anon9_Then_correct) (=> (= (ControlFlow 0 6) 1) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
