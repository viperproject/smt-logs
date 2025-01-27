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
(declare-sort T@Field_3812_53 0)
(declare-sort T@Field_3825_3826 0)
(declare-sort T@Field_1981_11083 0)
(declare-sort T@Field_1981_10950 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3773 0)) (((PolymorphicMapType_3773 (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| (Array T@Ref T@Field_3825_3826 Real)) (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| (Array T@Ref T@Field_3812_53 Real)) (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| (Array T@Ref T@Field_1981_10950 Real)) (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| (Array T@Ref T@Field_1981_11083 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4301 0)) (((PolymorphicMapType_4301 (|PolymorphicMapType_4301_3812_53#PolymorphicMapType_4301| (Array T@Ref T@Field_3812_53 Bool)) (|PolymorphicMapType_4301_3812_3826#PolymorphicMapType_4301| (Array T@Ref T@Field_3825_3826 Bool)) (|PolymorphicMapType_4301_3812_10950#PolymorphicMapType_4301| (Array T@Ref T@Field_1981_10950 Bool)) (|PolymorphicMapType_4301_3812_12063#PolymorphicMapType_4301| (Array T@Ref T@Field_1981_11083 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3752 0)) (((PolymorphicMapType_3752 (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| (Array T@Ref T@Field_3812_53 Bool)) (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| (Array T@Ref T@Field_3825_3826 T@Ref)) (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| (Array T@Ref T@Field_1981_11083 T@PolymorphicMapType_4301)) (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| (Array T@Ref T@Field_1981_10950 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3812_53)
(declare-fun f_7 () T@Field_3825_3826)
(declare-fun succHeap (T@PolymorphicMapType_3752 T@PolymorphicMapType_3752) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3752 T@PolymorphicMapType_3752) Bool)
(declare-fun state (T@PolymorphicMapType_3752 T@PolymorphicMapType_3773) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3773) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4301)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3752 T@PolymorphicMapType_3752 T@PolymorphicMapType_3773) Bool)
(declare-fun IsPredicateField_1981_11041 (T@Field_1981_10950) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_1981 (T@Field_1981_10950) T@Field_1981_11083)
(declare-fun HasDirectPerm_1981_11014 (T@PolymorphicMapType_3773 T@Ref T@Field_1981_10950) Bool)
(declare-fun IsWandField_1981_12590 (T@Field_1981_10950) Bool)
(declare-fun WandMaskField_1981 (T@Field_1981_10950) T@Field_1981_11083)
(declare-fun dummyHeap () T@PolymorphicMapType_3752)
(declare-fun ZeroMask () T@PolymorphicMapType_3773)
(declare-fun InsidePredicate_3812_3812 (T@Field_1981_10950 T@FrameType T@Field_1981_10950 T@FrameType) Bool)
(declare-fun IsPredicateField_1981_1982 (T@Field_3825_3826) Bool)
(declare-fun IsWandField_1981_1982 (T@Field_3825_3826) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_1981_15524 (T@Field_1981_11083) Bool)
(declare-fun IsWandField_1981_15540 (T@Field_1981_11083) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_1981_53 (T@Field_3812_53) Bool)
(declare-fun IsWandField_1981_53 (T@Field_3812_53) Bool)
(declare-fun HasDirectPerm_1981_15895 (T@PolymorphicMapType_3773 T@Ref T@Field_1981_11083) Bool)
(declare-fun HasDirectPerm_1981_53 (T@PolymorphicMapType_3773 T@Ref T@Field_3812_53) Bool)
(declare-fun HasDirectPerm_1981_1982 (T@PolymorphicMapType_3773 T@Ref T@Field_3825_3826) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3773 T@PolymorphicMapType_3773 T@PolymorphicMapType_3773) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3752) (Heap1 T@PolymorphicMapType_3752) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3752) (Mask T@PolymorphicMapType_3773) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3752) (Heap1@@0 T@PolymorphicMapType_3752) (Heap2 T@PolymorphicMapType_3752) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_1981_11083) ) (!  (not (select (|PolymorphicMapType_4301_3812_12063#PolymorphicMapType_4301| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4301_3812_12063#PolymorphicMapType_4301| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_1981_10950) ) (!  (not (select (|PolymorphicMapType_4301_3812_10950#PolymorphicMapType_4301| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4301_3812_10950#PolymorphicMapType_4301| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3825_3826) ) (!  (not (select (|PolymorphicMapType_4301_3812_3826#PolymorphicMapType_4301| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4301_3812_3826#PolymorphicMapType_4301| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3812_53) ) (!  (not (select (|PolymorphicMapType_4301_3812_53#PolymorphicMapType_4301| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4301_3812_53#PolymorphicMapType_4301| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3752) (ExhaleHeap T@PolymorphicMapType_3752) (Mask@@0 T@PolymorphicMapType_3773) (pm_f_26 T@Field_1981_10950) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_1981_11014 Mask@@0 null pm_f_26) (IsPredicateField_1981_11041 pm_f_26)) (= (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@0) null (PredicateMaskField_1981 pm_f_26)) (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| ExhaleHeap) null (PredicateMaskField_1981 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_1981_11041 pm_f_26) (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| ExhaleHeap) null (PredicateMaskField_1981 pm_f_26)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3752) (ExhaleHeap@@0 T@PolymorphicMapType_3752) (Mask@@1 T@PolymorphicMapType_3773) (pm_f_26@@0 T@Field_1981_10950) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_1981_11014 Mask@@1 null pm_f_26@@0) (IsWandField_1981_12590 pm_f_26@@0)) (= (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@1) null (WandMaskField_1981 pm_f_26@@0)) (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| ExhaleHeap@@0) null (WandMaskField_1981 pm_f_26@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_1981_12590 pm_f_26@@0) (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| ExhaleHeap@@0) null (WandMaskField_1981 pm_f_26@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3752) (ExhaleHeap@@1 T@PolymorphicMapType_3752) (Mask@@2 T@PolymorphicMapType_3773) (pm_f_26@@1 T@Field_1981_10950) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_1981_11014 Mask@@2 null pm_f_26@@1) (IsPredicateField_1981_11041 pm_f_26@@1)) (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_3812_53) ) (!  (=> (select (|PolymorphicMapType_4301_3812_53#PolymorphicMapType_4301| (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@2) null (PredicateMaskField_1981 pm_f_26@@1))) o2_26 f_51) (= (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@2) o2_26 f_51) (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| ExhaleHeap@@1) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| ExhaleHeap@@1) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_3825_3826) ) (!  (=> (select (|PolymorphicMapType_4301_3812_3826#PolymorphicMapType_4301| (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@2) null (PredicateMaskField_1981 pm_f_26@@1))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@2) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| ExhaleHeap@@1) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| ExhaleHeap@@1) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_1981_10950) ) (!  (=> (select (|PolymorphicMapType_4301_3812_10950#PolymorphicMapType_4301| (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@2) null (PredicateMaskField_1981 pm_f_26@@1))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| Heap@@2) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| ExhaleHeap@@1) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| ExhaleHeap@@1) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_1981_11083) ) (!  (=> (select (|PolymorphicMapType_4301_3812_12063#PolymorphicMapType_4301| (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@2) null (PredicateMaskField_1981 pm_f_26@@1))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@2) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| ExhaleHeap@@1) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| ExhaleHeap@@1) o2_26@@2 f_51@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_1981_11041 pm_f_26@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3752) (ExhaleHeap@@2 T@PolymorphicMapType_3752) (Mask@@3 T@PolymorphicMapType_3773) (pm_f_26@@2 T@Field_1981_10950) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_1981_11014 Mask@@3 null pm_f_26@@2) (IsWandField_1981_12590 pm_f_26@@2)) (and (and (and (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_3812_53) ) (!  (=> (select (|PolymorphicMapType_4301_3812_53#PolymorphicMapType_4301| (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@3) null (WandMaskField_1981 pm_f_26@@2))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@3) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| ExhaleHeap@@2) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| ExhaleHeap@@2) o2_26@@3 f_51@@3))
)) (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_3825_3826) ) (!  (=> (select (|PolymorphicMapType_4301_3812_3826#PolymorphicMapType_4301| (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@3) null (WandMaskField_1981 pm_f_26@@2))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@3) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| ExhaleHeap@@2) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| ExhaleHeap@@2) o2_26@@4 f_51@@4))
))) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_1981_10950) ) (!  (=> (select (|PolymorphicMapType_4301_3812_10950#PolymorphicMapType_4301| (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@3) null (WandMaskField_1981 pm_f_26@@2))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| Heap@@3) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| ExhaleHeap@@2) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| ExhaleHeap@@2) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_1981_11083) ) (!  (=> (select (|PolymorphicMapType_4301_3812_12063#PolymorphicMapType_4301| (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@3) null (WandMaskField_1981 pm_f_26@@2))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@3) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| ExhaleHeap@@2) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| ExhaleHeap@@2) o2_26@@6 f_51@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_1981_12590 pm_f_26@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3752) (ExhaleHeap@@3 T@PolymorphicMapType_3752) (Mask@@4 T@PolymorphicMapType_3773) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@4) o_38 $allocated) (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| ExhaleHeap@@3) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| ExhaleHeap@@3) o_38 $allocated))
)))
(assert (forall ((p T@Field_1981_10950) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3812_3812 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3812_3812 p v_1 p w))
)))
(assert  (not (IsPredicateField_1981_1982 f_7)))
(assert  (not (IsWandField_1981_1982 f_7)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3752) (ExhaleHeap@@4 T@PolymorphicMapType_3752) (Mask@@5 T@PolymorphicMapType_3773) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3773) (o_2@@3 T@Ref) (f_4@@3 T@Field_1981_11083) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_1981_15524 f_4@@3))) (not (IsWandField_1981_15540 f_4@@3))) (<= (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3773) (o_2@@4 T@Ref) (f_4@@4 T@Field_1981_10950) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_1981_11041 f_4@@4))) (not (IsWandField_1981_12590 f_4@@4))) (<= (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3773) (o_2@@5 T@Ref) (f_4@@5 T@Field_3812_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_1981_53 f_4@@5))) (not (IsWandField_1981_53 f_4@@5))) (<= (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3773) (o_2@@6 T@Ref) (f_4@@6 T@Field_3825_3826) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_1981_1982 f_4@@6))) (not (IsWandField_1981_1982 f_4@@6))) (<= (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3773) (o_2@@7 T@Ref) (f_4@@7 T@Field_1981_11083) ) (! (= (HasDirectPerm_1981_15895 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1981_15895 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3773) (o_2@@8 T@Ref) (f_4@@8 T@Field_1981_10950) ) (! (= (HasDirectPerm_1981_11014 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1981_11014 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3773) (o_2@@9 T@Ref) (f_4@@9 T@Field_3812_53) ) (! (= (HasDirectPerm_1981_53 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1981_53 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3773) (o_2@@10 T@Ref) (f_4@@10 T@Field_3825_3826) ) (! (= (HasDirectPerm_1981_1982 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_1981_1982 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3752) (ExhaleHeap@@5 T@PolymorphicMapType_3752) (Mask@@14 T@PolymorphicMapType_3773) (o_38@@0 T@Ref) (f_51@@7 T@Field_1981_11083) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_1981_15895 Mask@@14 o_38@@0 f_51@@7) (= (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@6) o_38@@0 f_51@@7) (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| ExhaleHeap@@5) o_38@@0 f_51@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| ExhaleHeap@@5) o_38@@0 f_51@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3752) (ExhaleHeap@@6 T@PolymorphicMapType_3752) (Mask@@15 T@PolymorphicMapType_3773) (o_38@@1 T@Ref) (f_51@@8 T@Field_1981_10950) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_1981_11014 Mask@@15 o_38@@1 f_51@@8) (= (select (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| Heap@@7) o_38@@1 f_51@@8) (select (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| ExhaleHeap@@6) o_38@@1 f_51@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| ExhaleHeap@@6) o_38@@1 f_51@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3752) (ExhaleHeap@@7 T@PolymorphicMapType_3752) (Mask@@16 T@PolymorphicMapType_3773) (o_38@@2 T@Ref) (f_51@@9 T@Field_3812_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_1981_53 Mask@@16 o_38@@2 f_51@@9) (= (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@8) o_38@@2 f_51@@9) (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| ExhaleHeap@@7) o_38@@2 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| ExhaleHeap@@7) o_38@@2 f_51@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3752) (ExhaleHeap@@8 T@PolymorphicMapType_3752) (Mask@@17 T@PolymorphicMapType_3773) (o_38@@3 T@Ref) (f_51@@10 T@Field_3825_3826) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_1981_1982 Mask@@17 o_38@@3 f_51@@10) (= (select (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@9) o_38@@3 f_51@@10) (select (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| ExhaleHeap@@8) o_38@@3 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| ExhaleHeap@@8) o_38@@3 f_51@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_1981_11083) ) (! (= (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_1981_10950) ) (! (= (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3812_53) ) (! (= (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3825_3826) ) (! (= (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3773) (SummandMask1 T@PolymorphicMapType_3773) (SummandMask2 T@PolymorphicMapType_3773) (o_2@@15 T@Ref) (f_4@@15 T@Field_1981_11083) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3773) (SummandMask1@@0 T@PolymorphicMapType_3773) (SummandMask2@@0 T@PolymorphicMapType_3773) (o_2@@16 T@Ref) (f_4@@16 T@Field_1981_10950) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3773) (SummandMask1@@1 T@PolymorphicMapType_3773) (SummandMask2@@1 T@PolymorphicMapType_3773) (o_2@@17 T@Ref) (f_4@@17 T@Field_3812_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3773) (SummandMask1@@2 T@PolymorphicMapType_3773) (SummandMask2@@2 T@PolymorphicMapType_3773) (o_2@@18 T@Ref) (f_4@@18 T@Field_3825_3826) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3752) (o_56 T@Ref) (f_22 T@Field_1981_10950) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_3752 (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@10) (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@10) (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@10) (store (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| Heap@@10) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3752 (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@10) (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@10) (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@10) (store (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| Heap@@10) o_56 f_22 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3752) (o_56@@0 T@Ref) (f_22@@0 T@Field_1981_11083) (v@@0 T@PolymorphicMapType_4301) ) (! (succHeap Heap@@11 (PolymorphicMapType_3752 (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@11) (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@11) (store (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@11) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3752 (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@11) (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@11) (store (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@11) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3752) (o_56@@1 T@Ref) (f_22@@1 T@Field_3825_3826) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_3752 (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@12) (store (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@12) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@12) (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3752 (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@12) (store (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@12) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@12) (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3752) (o_56@@2 T@Ref) (f_22@@2 T@Field_3812_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_3752 (store (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@13) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@13) (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@13) (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3752 (store (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@13) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@13) (|PolymorphicMapType_3752_1981_11127#PolymorphicMapType_3752| Heap@@13) (|PolymorphicMapType_3752_3812_10950#PolymorphicMapType_3752| Heap@@13)))
)))
(assert (forall ((o_56@@3 T@Ref) (f_3 T@Field_3825_3826) (Heap@@14 T@PolymorphicMapType_3752) ) (!  (=> (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@14) o_56@@3 $allocated) (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@14) (select (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@14) o_56@@3 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3752_1856_1857#PolymorphicMapType_3752| Heap@@14) o_56@@3 f_3))
)))
(assert (forall ((p@@1 T@Field_1981_10950) (v_1@@0 T@FrameType) (q T@Field_1981_10950) (w@@0 T@FrameType) (r T@Field_1981_10950) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3812_3812 p@@1 v_1@@0 q w@@0) (InsidePredicate_3812_3812 q w@@0 r u)) (InsidePredicate_3812_3812 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3812_3812 p@@1 v_1@@0 q w@@0) (InsidePredicate_3812_3812 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_3773)
(declare-fun x () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_3773)
(declare-fun Heap@@15 () T@PolymorphicMapType_3752)
(set-info :boogie-vc-id m2)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct  (=> (and (= (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| Mask@1) x f_7) NoPerm) (= (ControlFlow 0 2) (- 0 4))) false)))
(let ((anon2_correct  (=> (= Mask@1 (PolymorphicMapType_3773 (store (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| Mask@0) x f_7 (- (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| Mask@0) x f_7) FullPerm)) (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| Mask@0) (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| Mask@0) (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| Mask@0))) (and (=> (= (ControlFlow 0 6) 2) anon6_Then_correct) (=> (= (ControlFlow 0 6) 5) anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 9) 6)) anon2_correct)))
(let ((anon5_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= FullPerm (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| Mask@0) x f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| Mask@0) x f_7)) (=> (= (ControlFlow 0 7) 6) anon2_correct))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_3752_1853_53#PolymorphicMapType_3752| Heap@@15) x $allocated) (not (= x null)))) (and (and (= Mask@0 (PolymorphicMapType_3773 (store (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_3773_1981_1982#PolymorphicMapType_3773| ZeroMask) x f_7) FullPerm)) (|PolymorphicMapType_3773_1981_53#PolymorphicMapType_3773| ZeroMask) (|PolymorphicMapType_3773_1981_10950#PolymorphicMapType_3773| ZeroMask) (|PolymorphicMapType_3773_1981_14629#PolymorphicMapType_3773| ZeroMask))) (state Heap@@15 Mask@0)) (and (state Heap@@15 Mask@0) (state Heap@@15 Mask@0)))) (and (=> (= (ControlFlow 0 10) 7) anon5_Then_correct) (=> (= (ControlFlow 0 10) 9) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
