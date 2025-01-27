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
(declare-sort T@Field_8422_53 0)
(declare-sort T@Field_8435_8436 0)
(declare-sort T@Field_5229_22134 0)
(declare-sort T@Field_5229_22001 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8383 0)) (((PolymorphicMapType_8383 (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| (Array T@Ref T@Field_8435_8436 Real)) (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| (Array T@Ref T@Field_8422_53 Real)) (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| (Array T@Ref T@Field_5229_22001 Real)) (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| (Array T@Ref T@Field_5229_22134 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8911 0)) (((PolymorphicMapType_8911 (|PolymorphicMapType_8911_8422_53#PolymorphicMapType_8911| (Array T@Ref T@Field_8422_53 Bool)) (|PolymorphicMapType_8911_8422_8436#PolymorphicMapType_8911| (Array T@Ref T@Field_8435_8436 Bool)) (|PolymorphicMapType_8911_8422_22001#PolymorphicMapType_8911| (Array T@Ref T@Field_5229_22001 Bool)) (|PolymorphicMapType_8911_8422_23114#PolymorphicMapType_8911| (Array T@Ref T@Field_5229_22134 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8362 0)) (((PolymorphicMapType_8362 (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| (Array T@Ref T@Field_8422_53 Bool)) (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| (Array T@Ref T@Field_8435_8436 T@Ref)) (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| (Array T@Ref T@Field_5229_22134 T@PolymorphicMapType_8911)) (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| (Array T@Ref T@Field_5229_22001 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8422_53)
(declare-fun left_2 () T@Field_8435_8436)
(declare-fun is_marked () T@Field_8422_53)
(declare-fun succHeap (T@PolymorphicMapType_8362 T@PolymorphicMapType_8362) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8362 T@PolymorphicMapType_8362) Bool)
(declare-fun state (T@PolymorphicMapType_8362 T@PolymorphicMapType_8383) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8383) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8911)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8362 T@PolymorphicMapType_8362 T@PolymorphicMapType_8383) Bool)
(declare-fun IsPredicateField_5229_22092 (T@Field_5229_22001) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5229 (T@Field_5229_22001) T@Field_5229_22134)
(declare-fun HasDirectPerm_5229_22065 (T@PolymorphicMapType_8383 T@Ref T@Field_5229_22001) Bool)
(declare-fun IsWandField_5229_23641 (T@Field_5229_22001) Bool)
(declare-fun WandMaskField_5229 (T@Field_5229_22001) T@Field_5229_22134)
(declare-fun dummyHeap () T@PolymorphicMapType_8362)
(declare-fun ZeroMask () T@PolymorphicMapType_8383)
(declare-fun InsidePredicate_8422_8422 (T@Field_5229_22001 T@FrameType T@Field_5229_22001 T@FrameType) Bool)
(declare-fun IsPredicateField_5229_5230 (T@Field_8435_8436) Bool)
(declare-fun IsWandField_5229_5230 (T@Field_8435_8436) Bool)
(declare-fun IsPredicateField_5232_3298 (T@Field_8422_53) Bool)
(declare-fun IsWandField_5232_3298 (T@Field_8422_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5229_26549 (T@Field_5229_22134) Bool)
(declare-fun IsWandField_5229_26565 (T@Field_5229_22134) Bool)
(declare-fun FullPerm () Real)
(declare-fun HasDirectPerm_5229_26920 (T@PolymorphicMapType_8383 T@Ref T@Field_5229_22134) Bool)
(declare-fun HasDirectPerm_5232_3298 (T@PolymorphicMapType_8383 T@Ref T@Field_8422_53) Bool)
(declare-fun HasDirectPerm_5229_5230 (T@PolymorphicMapType_8383 T@Ref T@Field_8435_8436) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8383 T@PolymorphicMapType_8383 T@PolymorphicMapType_8383) Bool)
(assert (distinct $allocated is_marked)
)
(assert (forall ((Heap0 T@PolymorphicMapType_8362) (Heap1 T@PolymorphicMapType_8362) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8362) (Mask T@PolymorphicMapType_8383) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8362) (Heap1@@0 T@PolymorphicMapType_8362) (Heap2 T@PolymorphicMapType_8362) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5229_22134) ) (!  (not (select (|PolymorphicMapType_8911_8422_23114#PolymorphicMapType_8911| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8911_8422_23114#PolymorphicMapType_8911| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5229_22001) ) (!  (not (select (|PolymorphicMapType_8911_8422_22001#PolymorphicMapType_8911| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8911_8422_22001#PolymorphicMapType_8911| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8435_8436) ) (!  (not (select (|PolymorphicMapType_8911_8422_8436#PolymorphicMapType_8911| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8911_8422_8436#PolymorphicMapType_8911| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8422_53) ) (!  (not (select (|PolymorphicMapType_8911_8422_53#PolymorphicMapType_8911| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8911_8422_53#PolymorphicMapType_8911| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.297:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.300:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8362) (ExhaleHeap T@PolymorphicMapType_8362) (Mask@@0 T@PolymorphicMapType_8383) (pm_f_32 T@Field_5229_22001) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5229_22065 Mask@@0 null pm_f_32) (IsPredicateField_5229_22092 pm_f_32)) (= (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@0) null (PredicateMaskField_5229 pm_f_32)) (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| ExhaleHeap) null (PredicateMaskField_5229 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5229_22092 pm_f_32) (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| ExhaleHeap) null (PredicateMaskField_5229 pm_f_32)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8362) (ExhaleHeap@@0 T@PolymorphicMapType_8362) (Mask@@1 T@PolymorphicMapType_8383) (pm_f_32@@0 T@Field_5229_22001) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5229_22065 Mask@@1 null pm_f_32@@0) (IsWandField_5229_23641 pm_f_32@@0)) (= (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@1) null (WandMaskField_5229 pm_f_32@@0)) (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| ExhaleHeap@@0) null (WandMaskField_5229 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5229_23641 pm_f_32@@0) (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| ExhaleHeap@@0) null (WandMaskField_5229 pm_f_32@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8362) (ExhaleHeap@@1 T@PolymorphicMapType_8362) (Mask@@2 T@PolymorphicMapType_8383) (pm_f_32@@1 T@Field_5229_22001) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5229_22065 Mask@@2 null pm_f_32@@1) (IsPredicateField_5229_22092 pm_f_32@@1)) (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_8422_53) ) (!  (=> (select (|PolymorphicMapType_8911_8422_53#PolymorphicMapType_8911| (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@2) null (PredicateMaskField_5229 pm_f_32@@1))) o2_32 f_54) (= (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@2) o2_32 f_54) (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| ExhaleHeap@@1) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| ExhaleHeap@@1) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_8435_8436) ) (!  (=> (select (|PolymorphicMapType_8911_8422_8436#PolymorphicMapType_8911| (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@2) null (PredicateMaskField_5229 pm_f_32@@1))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@2) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| ExhaleHeap@@1) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| ExhaleHeap@@1) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_5229_22001) ) (!  (=> (select (|PolymorphicMapType_8911_8422_22001#PolymorphicMapType_8911| (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@2) null (PredicateMaskField_5229 pm_f_32@@1))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@2) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| ExhaleHeap@@1) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| ExhaleHeap@@1) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_5229_22134) ) (!  (=> (select (|PolymorphicMapType_8911_8422_23114#PolymorphicMapType_8911| (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@2) null (PredicateMaskField_5229 pm_f_32@@1))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@2) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| ExhaleHeap@@1) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| ExhaleHeap@@1) o2_32@@2 f_54@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5229_22092 pm_f_32@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8362) (ExhaleHeap@@2 T@PolymorphicMapType_8362) (Mask@@3 T@PolymorphicMapType_8383) (pm_f_32@@2 T@Field_5229_22001) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5229_22065 Mask@@3 null pm_f_32@@2) (IsWandField_5229_23641 pm_f_32@@2)) (and (and (and (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_8422_53) ) (!  (=> (select (|PolymorphicMapType_8911_8422_53#PolymorphicMapType_8911| (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@3) null (WandMaskField_5229 pm_f_32@@2))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@3) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| ExhaleHeap@@2) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| ExhaleHeap@@2) o2_32@@3 f_54@@3))
)) (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_8435_8436) ) (!  (=> (select (|PolymorphicMapType_8911_8422_8436#PolymorphicMapType_8911| (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@3) null (WandMaskField_5229 pm_f_32@@2))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@3) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| ExhaleHeap@@2) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| ExhaleHeap@@2) o2_32@@4 f_54@@4))
))) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_5229_22001) ) (!  (=> (select (|PolymorphicMapType_8911_8422_22001#PolymorphicMapType_8911| (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@3) null (WandMaskField_5229 pm_f_32@@2))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@3) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| ExhaleHeap@@2) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| ExhaleHeap@@2) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_5229_22134) ) (!  (=> (select (|PolymorphicMapType_8911_8422_23114#PolymorphicMapType_8911| (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@3) null (WandMaskField_5229 pm_f_32@@2))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@3) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| ExhaleHeap@@2) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| ExhaleHeap@@2) o2_32@@6 f_54@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5229_23641 pm_f_32@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8362) (ExhaleHeap@@3 T@PolymorphicMapType_8362) (Mask@@4 T@PolymorphicMapType_8383) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@4) o_55 $allocated) (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| ExhaleHeap@@3) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| ExhaleHeap@@3) o_55 $allocated))
)))
(assert (forall ((p T@Field_5229_22001) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8422_8422 p v_1 p w))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8422_8422 p v_1 p w))
)))
(assert  (not (IsPredicateField_5229_5230 left_2)))
(assert  (not (IsWandField_5229_5230 left_2)))
(assert  (not (IsPredicateField_5232_3298 is_marked)))
(assert  (not (IsWandField_5232_3298 is_marked)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8362) (ExhaleHeap@@4 T@PolymorphicMapType_8362) (Mask@@5 T@PolymorphicMapType_8383) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8383) (o_2@@3 T@Ref) (f_4@@3 T@Field_5229_22134) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5229_26549 f_4@@3))) (not (IsWandField_5229_26565 f_4@@3))) (<= (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8383) (o_2@@4 T@Ref) (f_4@@4 T@Field_5229_22001) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5229_22092 f_4@@4))) (not (IsWandField_5229_23641 f_4@@4))) (<= (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8383) (o_2@@5 T@Ref) (f_4@@5 T@Field_8422_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5232_3298 f_4@@5))) (not (IsWandField_5232_3298 f_4@@5))) (<= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8383) (o_2@@6 T@Ref) (f_4@@6 T@Field_8435_8436) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5229_5230 f_4@@6))) (not (IsWandField_5229_5230 f_4@@6))) (<= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8383) (o_2@@7 T@Ref) (f_4@@7 T@Field_5229_22134) ) (! (= (HasDirectPerm_5229_26920 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5229_26920 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8383) (o_2@@8 T@Ref) (f_4@@8 T@Field_5229_22001) ) (! (= (HasDirectPerm_5229_22065 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5229_22065 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8383) (o_2@@9 T@Ref) (f_4@@9 T@Field_8422_53) ) (! (= (HasDirectPerm_5232_3298 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5232_3298 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8383) (o_2@@10 T@Ref) (f_4@@10 T@Field_8435_8436) ) (! (= (HasDirectPerm_5229_5230 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5229_5230 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.183:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8362) (ExhaleHeap@@5 T@PolymorphicMapType_8362) (Mask@@14 T@PolymorphicMapType_8383) (o_55@@0 T@Ref) (f_54@@7 T@Field_5229_22134) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_5229_26920 Mask@@14 o_55@@0 f_54@@7) (= (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@6) o_55@@0 f_54@@7) (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| ExhaleHeap@@5) o_55@@0 f_54@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| ExhaleHeap@@5) o_55@@0 f_54@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8362) (ExhaleHeap@@6 T@PolymorphicMapType_8362) (Mask@@15 T@PolymorphicMapType_8383) (o_55@@1 T@Ref) (f_54@@8 T@Field_5229_22001) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_5229_22065 Mask@@15 o_55@@1 f_54@@8) (= (select (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@7) o_55@@1 f_54@@8) (select (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| ExhaleHeap@@6) o_55@@1 f_54@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| ExhaleHeap@@6) o_55@@1 f_54@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8362) (ExhaleHeap@@7 T@PolymorphicMapType_8362) (Mask@@16 T@PolymorphicMapType_8383) (o_55@@2 T@Ref) (f_54@@9 T@Field_8422_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_5232_3298 Mask@@16 o_55@@2 f_54@@9) (= (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@8) o_55@@2 f_54@@9) (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| ExhaleHeap@@7) o_55@@2 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| ExhaleHeap@@7) o_55@@2 f_54@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8362) (ExhaleHeap@@8 T@PolymorphicMapType_8362) (Mask@@17 T@PolymorphicMapType_8383) (o_55@@3 T@Ref) (f_54@@10 T@Field_8435_8436) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_5229_5230 Mask@@17 o_55@@3 f_54@@10) (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@9) o_55@@3 f_54@@10) (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| ExhaleHeap@@8) o_55@@3 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| ExhaleHeap@@8) o_55@@3 f_54@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5229_22134) ) (! (= (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5229_22001) ) (! (= (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8422_53) ) (! (= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8435_8436) ) (! (= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8383) (SummandMask1 T@PolymorphicMapType_8383) (SummandMask2 T@PolymorphicMapType_8383) (o_2@@15 T@Ref) (f_4@@15 T@Field_5229_22134) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8383) (SummandMask1@@0 T@PolymorphicMapType_8383) (SummandMask2@@0 T@PolymorphicMapType_8383) (o_2@@16 T@Ref) (f_4@@16 T@Field_5229_22001) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8383) (SummandMask1@@1 T@PolymorphicMapType_8383) (SummandMask2@@1 T@PolymorphicMapType_8383) (o_2@@17 T@Ref) (f_4@@17 T@Field_8422_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8383) (SummandMask1@@2 T@PolymorphicMapType_8383) (SummandMask2@@2 T@PolymorphicMapType_8383) (o_2@@18 T@Ref) (f_4@@18 T@Field_8435_8436) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8362) (o_54 T@Ref) (f_8 T@Field_5229_22001) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_8362 (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@10) (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@10) (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@10) (store (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@10) o_54 f_8 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8362 (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@10) (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@10) (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@10) (store (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@10) o_54 f_8 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8362) (o_54@@0 T@Ref) (f_8@@0 T@Field_5229_22134) (v@@0 T@PolymorphicMapType_8911) ) (! (succHeap Heap@@11 (PolymorphicMapType_8362 (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@11) (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@11) (store (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@11) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8362 (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@11) (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@11) (store (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@11) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8362) (o_54@@1 T@Ref) (f_8@@1 T@Field_8435_8436) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_8362 (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@12) (store (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@12) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@12) (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8362 (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@12) (store (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@12) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@12) (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8362) (o_54@@2 T@Ref) (f_8@@2 T@Field_8422_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_8362 (store (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@13) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@13) (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@13) (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8362 (store (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@13) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@13) (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@13) (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@13)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.295:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.296:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_54@@3 T@Ref) (f_24 T@Field_8435_8436) (Heap@@14 T@PolymorphicMapType_8362) ) (!  (=> (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@14) o_54@@3 $allocated) (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@14) (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@14) o_54@@3 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@14) o_54@@3 f_24))
)))
(assert (forall ((p@@1 T@Field_5229_22001) (v_1@@0 T@FrameType) (q T@Field_5229_22001) (w@@0 T@FrameType) (r T@Field_5229_22001) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8422_8422 p@@1 v_1@@0 q w@@0) (InsidePredicate_8422_8422 q w@@0 r u)) (InsidePredicate_8422_8422 p@@1 v_1@@0 r u))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8422_8422 p@@1 v_1@@0 q w@@0) (InsidePredicate_8422_8422 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.301:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@0 () T@PolymorphicMapType_8362)
(declare-fun x_2_2 () T@Ref)
(declare-fun graph () (Array T@Ref Bool))
(declare-fun Mask@2 () T@PolymorphicMapType_8383)
(declare-fun Mask@1 () T@PolymorphicMapType_8383)
(declare-fun node () T@Ref)
(declare-fun Heap@1 () T@PolymorphicMapType_8362)
(declare-fun arg_node@0 () T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_8362)
(declare-fun QPMask@3 () T@PolymorphicMapType_8383)
(declare-fun Mask@0 () T@PolymorphicMapType_8383)
(declare-fun QPMask@1 () T@PolymorphicMapType_8383)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_8383)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun neverTriggered4 (T@Ref) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun Heap@@15 () T@PolymorphicMapType_8362)
(declare-fun PostHeap@0 () T@PolymorphicMapType_8362)
(declare-fun PostMask@0 () T@PolymorphicMapType_8383)
(declare-fun x_27 () T@Ref)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_8383)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id trav)
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
 (=> (= (ControlFlow 0 0) 51) (let ((anon18_correct true))
(let ((anon33_Else_correct  (=> (and (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) x_2_2 left_2) null) (= (ControlFlow 0 27) 23)) anon18_correct)))
(let ((anon33_Then_correct  (=> (not (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) x_2_2 left_2) null)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (select graph (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) x_2_2 left_2))) (=> (select graph (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) x_2_2 left_2)) (=> (= (ControlFlow 0 25) 23) anon18_correct))))))
(let ((anon32_Then_correct  (=> (select graph x_2_2) (and (=> (= (ControlFlow 0 28) 25) anon33_Then_correct) (=> (= (ControlFlow 0 28) 27) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (not (select graph x_2_2)) (= (ControlFlow 0 24) 23)) anon18_correct)))
(let ((anon22_correct  (=> (and (= Mask@2 (PolymorphicMapType_8383 (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| Mask@1) (store (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| Mask@1) node is_marked (- (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| Mask@1) node is_marked) FullPerm)) (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| Mask@1) (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| Mask@1))) (= (ControlFlow 0 13) (- 0 12))) (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@1) node is_marked))))
(let ((anon34_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 16) 13)) anon22_correct)))
(let ((anon34_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= FullPerm (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| Mask@1) node is_marked))) (=> (<= FullPerm (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| Mask@1) node is_marked)) (=> (= (ControlFlow 0 14) 13) anon22_correct))))))
(let ((anon20_correct  (=> (state Heap@1 Mask@1) (and (=> (= (ControlFlow 0 17) (- 0 19)) (HasDirectPerm_5232_3298 Mask@1 node is_marked)) (=> (HasDirectPerm_5232_3298 Mask@1 node is_marked) (and (=> (= (ControlFlow 0 17) (- 0 18)) (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@1) node is_marked)) (=> (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@1) node is_marked) (=> (state Heap@1 Mask@1) (and (=> (= (ControlFlow 0 17) 14) anon34_Then_correct) (=> (= (ControlFlow 0 17) 16) anon34_Else_correct))))))))))
(let ((anon31_Else_correct  (=> (forall ((x_3_1_1 T@Ref) ) (!  (=> (select graph x_3_1_1) (=> (not (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) x_3_1_1 left_2) null)) (select graph (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) x_3_1_1 left_2))))
 :qid |stdinbpl.689:26|
 :skolemid |107|
 :pattern ( (select graph x_3_1_1))
 :pattern ( (select graph (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) x_3_1_1 left_2)))
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (not (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@0) arg_node@0 is_marked))) (=> (not (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@0) arg_node@0 is_marked)) (=> (and (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 QPMask@3) (not (= arg_node@0 null))) (=> (and (and (and (= Mask@0 (PolymorphicMapType_8383 (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@3) (store (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@3) arg_node@0 is_marked (+ (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@3) arg_node@0 is_marked) FullPerm)) (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@3) (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@3))) (state ExhaleHeap@0 Mask@0)) (and (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| ExhaleHeap@0) arg_node@0 is_marked) (state ExhaleHeap@0 Mask@0))) (and (and (state ExhaleHeap@0 Mask@0) (= Mask@1 Mask@0)) (and (= Heap@1 ExhaleHeap@0) (= (ControlFlow 0 21) 17)))) anon20_correct)))))))
(let ((anon30_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) node left_2) null)) (not (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@0) (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) node left_2) is_marked))) (and (=> (= (ControlFlow 0 29) (- 0 36)) (HasDirectPerm_5229_5230 QPMask@1 node left_2)) (=> (HasDirectPerm_5229_5230 QPMask@1 node left_2) (=> (= arg_node@0 (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) node left_2)) (and (=> (= (ControlFlow 0 29) (- 0 35)) (select graph arg_node@0)) (=> (select graph arg_node@0) (and (=> (= (ControlFlow 0 29) (- 0 34)) (not (select graph null))) (=> (not (select graph null)) (and (=> (= (ControlFlow 0 29) (- 0 33)) (forall ((a_2_2 T@Ref) (a_2_3 T@Ref) ) (!  (=> (and (and (and (and (not (= a_2_2 a_2_3)) (select graph a_2_2)) (select graph a_2_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= a_2_2 a_2_3)))
 :qid |stdinbpl.605:23|
 :skolemid |95|
 :pattern ( (neverTriggered3 a_2_2) (neverTriggered3 a_2_3))
))) (=> (forall ((a_2_2@@0 T@Ref) (a_2_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= a_2_2@@0 a_2_3@@0)) (select graph a_2_2@@0)) (select graph a_2_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= a_2_2@@0 a_2_3@@0)))
 :qid |stdinbpl.605:23|
 :skolemid |95|
 :pattern ( (neverTriggered3 a_2_2@@0) (neverTriggered3 a_2_3@@0))
)) (and (=> (= (ControlFlow 0 29) (- 0 32)) (forall ((a_2_2@@1 T@Ref) ) (!  (=> (select graph a_2_2@@1) (>= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@1) a_2_2@@1 left_2) FullPerm))
 :qid |stdinbpl.612:23|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) a_2_2@@1 left_2))
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@2) a_2_2@@1 left_2))
 :pattern ( (select graph a_2_2@@1))
))) (=> (forall ((a_2_2@@2 T@Ref) ) (!  (=> (select graph a_2_2@@2) (>= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@1) a_2_2@@2 left_2) FullPerm))
 :qid |stdinbpl.612:23|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) a_2_2@@2 left_2))
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@2) a_2_2@@2 left_2))
 :pattern ( (select graph a_2_2@@2))
)) (=> (forall ((a_2_2@@3 T@Ref) ) (!  (=> (and (select graph a_2_2@@3) (< NoPerm FullPerm)) (and (qpRange3 a_2_2@@3) (= (invRecv3 a_2_2@@3) a_2_2@@3)))
 :qid |stdinbpl.618:28|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) a_2_2@@3 left_2))
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@2) a_2_2@@3 left_2))
 :pattern ( (select graph a_2_2@@3))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (select graph (invRecv3 o_9)) (and (< NoPerm FullPerm) (qpRange3 o_9))) (= (invRecv3 o_9) o_9))
 :qid |stdinbpl.622:28|
 :skolemid |98|
 :pattern ( (invRecv3 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (select graph (invRecv3 o_9@@0)) (and (< NoPerm FullPerm) (qpRange3 o_9@@0))) (and (= (invRecv3 o_9@@0) o_9@@0) (= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@2) o_9@@0 left_2) (- (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@1) o_9@@0 left_2) FullPerm)))) (=> (not (and (select graph (invRecv3 o_9@@0)) (and (< NoPerm FullPerm) (qpRange3 o_9@@0)))) (= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@2) o_9@@0 left_2) (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@1) o_9@@0 left_2))))
 :qid |stdinbpl.628:28|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@2) o_9@@0 left_2))
))) (=> (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_8422_53) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@1) o_9@@1 f_5) (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@2) o_9@@1 f_5)))
 :qid |stdinbpl.634:35|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@2) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_8435_8436) ) (!  (=> (not (= f_5@@0 left_2)) (= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@1) o_9@@2 f_5@@0) (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@2) o_9@@2 f_5@@0)))
 :qid |stdinbpl.634:35|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@2) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_5229_22001) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@1) o_9@@3 f_5@@1) (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@2) o_9@@3 f_5@@1)))
 :qid |stdinbpl.634:35|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@2) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_5229_22134) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@1) o_9@@4 f_5@@2) (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@2) o_9@@4 f_5@@2)))
 :qid |stdinbpl.634:35|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@2) o_9@@4 f_5@@2))
))) (and (=> (= (ControlFlow 0 29) (- 0 31)) (forall ((c_2_2 T@Ref) (c_2_3 T@Ref) ) (!  (=> (and (and (and (and (not (= c_2_2 c_2_3)) (select graph c_2_2)) (select graph c_2_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= c_2_2 c_2_3)))
 :qid |stdinbpl.646:23|
 :skolemid |101|
 :pattern ( (neverTriggered4 c_2_2) (neverTriggered4 c_2_3))
))) (=> (forall ((c_2_2@@0 T@Ref) (c_2_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= c_2_2@@0 c_2_3@@0)) (select graph c_2_2@@0)) (select graph c_2_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= c_2_2@@0 c_2_3@@0)))
 :qid |stdinbpl.646:23|
 :skolemid |101|
 :pattern ( (neverTriggered4 c_2_2@@0) (neverTriggered4 c_2_3@@0))
)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((c_2_2@@1 T@Ref) ) (!  (=> (select graph c_2_2@@1) (>= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@2) c_2_2@@1 is_marked) FullPerm))
 :qid |stdinbpl.653:23|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@0) c_2_2@@1 is_marked))
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@3) c_2_2@@1 is_marked))
 :pattern ( (select graph c_2_2@@1))
))) (=> (forall ((c_2_2@@2 T@Ref) ) (!  (=> (select graph c_2_2@@2) (>= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@2) c_2_2@@2 is_marked) FullPerm))
 :qid |stdinbpl.653:23|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@0) c_2_2@@2 is_marked))
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@3) c_2_2@@2 is_marked))
 :pattern ( (select graph c_2_2@@2))
)) (=> (forall ((c_2_2@@3 T@Ref) ) (!  (=> (and (select graph c_2_2@@3) (< NoPerm FullPerm)) (and (qpRange4 c_2_2@@3) (= (invRecv4 c_2_2@@3) c_2_2@@3)))
 :qid |stdinbpl.659:28|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@0) c_2_2@@3 is_marked))
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@3) c_2_2@@3 is_marked))
 :pattern ( (select graph c_2_2@@3))
)) (=> (and (forall ((o_9@@5 T@Ref) ) (!  (=> (and (select graph (invRecv4 o_9@@5)) (and (< NoPerm FullPerm) (qpRange4 o_9@@5))) (= (invRecv4 o_9@@5) o_9@@5))
 :qid |stdinbpl.663:28|
 :skolemid |104|
 :pattern ( (invRecv4 o_9@@5))
)) (forall ((o_9@@6 T@Ref) ) (!  (and (=> (and (select graph (invRecv4 o_9@@6)) (and (< NoPerm FullPerm) (qpRange4 o_9@@6))) (and (= (invRecv4 o_9@@6) o_9@@6) (= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@3) o_9@@6 is_marked) (- (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@2) o_9@@6 is_marked) FullPerm)))) (=> (not (and (select graph (invRecv4 o_9@@6)) (and (< NoPerm FullPerm) (qpRange4 o_9@@6)))) (= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@3) o_9@@6 is_marked) (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@2) o_9@@6 is_marked))))
 :qid |stdinbpl.669:28|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@3) o_9@@6 is_marked))
))) (=> (and (and (and (forall ((o_9@@7 T@Ref) (f_5@@3 T@Field_8422_53) ) (!  (=> (not (= f_5@@3 is_marked)) (= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@2) o_9@@7 f_5@@3) (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@3) o_9@@7 f_5@@3)))
 :qid |stdinbpl.675:35|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@3) o_9@@7 f_5@@3))
)) (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_8435_8436) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@2) o_9@@8 f_5@@4) (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@3) o_9@@8 f_5@@4)))
 :qid |stdinbpl.675:35|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@3) o_9@@8 f_5@@4))
))) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_5229_22001) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@2) o_9@@9 f_5@@5) (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@3) o_9@@9 f_5@@5)))
 :qid |stdinbpl.675:35|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@3) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_5229_22134) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@2) o_9@@10 f_5@@6) (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@3) o_9@@10 f_5@@6)))
 :qid |stdinbpl.675:35|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@3) o_9@@10 f_5@@6))
))) (and (and (=> (= (ControlFlow 0 29) 21) anon31_Else_correct) (=> (= (ControlFlow 0 29) 28) anon32_Then_correct)) (=> (= (ControlFlow 0 29) 24) anon32_Else_correct))))))))))))))))))))))))))
(let ((anon30_Else_correct  (=> (and (and (not (and (not (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) node left_2) null)) (not (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@0) (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) node left_2) is_marked)))) (= Mask@1 QPMask@1)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 20) 17))) anon20_correct)))
(let ((anon29_Else_correct  (=> (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) node left_2) null) (and (=> (= (ControlFlow 0 40) 29) anon30_Then_correct) (=> (= (ControlFlow 0 40) 20) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (not (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) node left_2) null)) (and (=> (= (ControlFlow 0 37) (- 0 39)) (HasDirectPerm_5229_5230 QPMask@1 node left_2)) (=> (HasDirectPerm_5229_5230 QPMask@1 node left_2) (and (=> (= (ControlFlow 0 37) (- 0 38)) (HasDirectPerm_5232_3298 QPMask@1 (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) node left_2) is_marked)) (=> (HasDirectPerm_5232_3298 QPMask@1 (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@0) node left_2) is_marked) (and (=> (= (ControlFlow 0 37) 29) anon30_Then_correct) (=> (= (ControlFlow 0 37) 20) anon30_Else_correct)))))))))
(let ((anon28_Else_correct  (and (=> (= (ControlFlow 0 41) (- 0 43)) (= FullPerm (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@1) node is_marked))) (=> (= FullPerm (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@1) node is_marked)) (=> (and (= Heap@0 (PolymorphicMapType_8362 (store (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@15) node is_marked true) (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@15) (|PolymorphicMapType_8362_5229_22178#PolymorphicMapType_8362| Heap@@15) (|PolymorphicMapType_8362_8422_22001#PolymorphicMapType_8362| Heap@@15))) (state Heap@0 QPMask@1)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (HasDirectPerm_5229_5230 QPMask@1 node left_2)) (=> (HasDirectPerm_5229_5230 QPMask@1 node left_2) (and (=> (= (ControlFlow 0 41) 37) anon29_Then_correct) (=> (= (ControlFlow 0 41) 40) anon29_Else_correct)))))))))
(let ((anon28_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (= node null))) (=> (and (and (= PostMask@0 (PolymorphicMapType_8383 (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| ZeroMask) (store (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| ZeroMask) node is_marked (+ (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| ZeroMask) node is_marked) FullPerm)) (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| ZeroMask) (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (= (ControlFlow 0 11) (- 0 10)))) (HasDirectPerm_5232_3298 PostMask@0 node is_marked)))))
(let ((anon25_Else_correct  (=> (and (forall ((x_1 T@Ref) ) (!  (=> (select graph x_1) (=> (not (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@15) x_1 left_2) null)) (select graph (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@15) x_1 left_2))))
 :qid |stdinbpl.526:20|
 :skolemid |94|
 :pattern ( (select graph x_1))
 :pattern ( (select graph (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@15) x_1 left_2)))
)) (state Heap@@15 QPMask@1)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (HasDirectPerm_5232_3298 QPMask@1 node is_marked)) (=> (HasDirectPerm_5232_3298 QPMask@1 node is_marked) (=> (and (not (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@15) node is_marked)) (state Heap@@15 QPMask@1)) (and (=> (= (ControlFlow 0 44) 11) anon28_Then_correct) (=> (= (ControlFlow 0 44) 41) anon28_Else_correct))))))))
(let ((anon8_correct true))
(let ((anon27_Else_correct  (=> (and (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@15) x_27 left_2) null) (= (ControlFlow 0 7) 3)) anon8_correct)))
(let ((anon27_Then_correct  (=> (not (= (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@15) x_27 left_2) null)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_5229_5230 QPMask@1 x_27 left_2)) (=> (HasDirectPerm_5229_5230 QPMask@1 x_27 left_2) (=> (= (ControlFlow 0 5) 3) anon8_correct))))))
(let ((anon26_Then_correct  (=> (select graph x_27) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_5229_5230 QPMask@1 x_27 left_2)) (=> (HasDirectPerm_5229_5230 QPMask@1 x_27 left_2) (and (=> (= (ControlFlow 0 8) 5) anon27_Then_correct) (=> (= (ControlFlow 0 8) 7) anon27_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (not (select graph x_27)) (= (ControlFlow 0 4) 3)) anon8_correct)))
(let ((anon24_Else_correct  (and (=> (= (ControlFlow 0 46) (- 0 47)) (forall ((c_1 T@Ref) (c_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= c_1 c_1_1)) (select graph c_1)) (select graph c_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= c_1 c_1_1)))
 :qid |stdinbpl.481:15|
 :skolemid |88|
))) (=> (forall ((c_1@@0 T@Ref) (c_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= c_1@@0 c_1_1@@0)) (select graph c_1@@0)) (select graph c_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= c_1@@0 c_1_1@@0)))
 :qid |stdinbpl.481:15|
 :skolemid |88|
)) (=> (and (and (forall ((c_1@@1 T@Ref) ) (!  (=> (and (select graph c_1@@1) (< NoPerm FullPerm)) (and (qpRange2 c_1@@1) (= (invRecv2 c_1@@1) c_1@@1)))
 :qid |stdinbpl.487:22|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@15) c_1@@1 is_marked))
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@1) c_1@@1 is_marked))
 :pattern ( (select graph c_1@@1))
)) (forall ((o_9@@11 T@Ref) ) (!  (=> (and (and (select graph (invRecv2 o_9@@11)) (< NoPerm FullPerm)) (qpRange2 o_9@@11)) (= (invRecv2 o_9@@11) o_9@@11))
 :qid |stdinbpl.491:22|
 :skolemid |90|
 :pattern ( (invRecv2 o_9@@11))
))) (and (forall ((c_1@@2 T@Ref) ) (!  (=> (select graph c_1@@2) (not (= c_1@@2 null)))
 :qid |stdinbpl.497:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@15) c_1@@2 is_marked))
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@1) c_1@@2 is_marked))
 :pattern ( (select graph c_1@@2))
)) (forall ((o_9@@12 T@Ref) ) (!  (and (=> (and (and (select graph (invRecv2 o_9@@12)) (< NoPerm FullPerm)) (qpRange2 o_9@@12)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_9@@12) o_9@@12)) (= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@1) o_9@@12 is_marked) (+ (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@0) o_9@@12 is_marked) FullPerm)))) (=> (not (and (and (select graph (invRecv2 o_9@@12)) (< NoPerm FullPerm)) (qpRange2 o_9@@12))) (= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@1) o_9@@12 is_marked) (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@0) o_9@@12 is_marked))))
 :qid |stdinbpl.503:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@1) o_9@@12 is_marked))
)))) (=> (and (and (and (and (forall ((o_9@@13 T@Ref) (f_5@@7 T@Field_8422_53) ) (!  (=> (not (= f_5@@7 is_marked)) (= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@0) o_9@@13 f_5@@7) (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@1) o_9@@13 f_5@@7)))
 :qid |stdinbpl.507:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@0) o_9@@13 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@1) o_9@@13 f_5@@7))
)) (forall ((o_9@@14 T@Ref) (f_5@@8 T@Field_8435_8436) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@0) o_9@@14 f_5@@8) (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@1) o_9@@14 f_5@@8)))
 :qid |stdinbpl.507:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@0) o_9@@14 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@1) o_9@@14 f_5@@8))
))) (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_5229_22001) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@0) o_9@@15 f_5@@9) (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@1) o_9@@15 f_5@@9)))
 :qid |stdinbpl.507:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@0) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@1) o_9@@15 f_5@@9))
))) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_5229_22134) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@0) o_9@@16 f_5@@10) (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@1) o_9@@16 f_5@@10)))
 :qid |stdinbpl.507:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@0) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@1) o_9@@16 f_5@@10))
))) (state Heap@@15 QPMask@1)) (and (and (=> (= (ControlFlow 0 46) 44) anon25_Else_correct) (=> (= (ControlFlow 0 46) 8) anon26_Then_correct)) (=> (= (ControlFlow 0 46) 4) anon26_Else_correct))))))))
(let ((anon24_Then_correct true))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 48) (- 0 49)) (forall ((a_1_1 T@Ref) (a_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= a_1_1 a_1_2)) (select graph a_1_1)) (select graph a_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= a_1_1 a_1_2)))
 :qid |stdinbpl.442:15|
 :skolemid |82|
))) (=> (forall ((a_1_1@@0 T@Ref) (a_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= a_1_1@@0 a_1_2@@0)) (select graph a_1_1@@0)) (select graph a_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= a_1_1@@0 a_1_2@@0)))
 :qid |stdinbpl.442:15|
 :skolemid |82|
)) (=> (and (and (forall ((a_1_1@@1 T@Ref) ) (!  (=> (and (select graph a_1_1@@1) (< NoPerm FullPerm)) (and (qpRange1 a_1_1@@1) (= (invRecv1 a_1_1@@1) a_1_1@@1)))
 :qid |stdinbpl.448:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@15) a_1_1@@1 left_2))
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@0) a_1_1@@1 left_2))
 :pattern ( (select graph a_1_1@@1))
)) (forall ((o_9@@17 T@Ref) ) (!  (=> (and (and (select graph (invRecv1 o_9@@17)) (< NoPerm FullPerm)) (qpRange1 o_9@@17)) (= (invRecv1 o_9@@17) o_9@@17))
 :qid |stdinbpl.452:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_9@@17))
))) (and (forall ((a_1_1@@2 T@Ref) ) (!  (=> (select graph a_1_1@@2) (not (= a_1_1@@2 null)))
 :qid |stdinbpl.458:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_8362_4927_4928#PolymorphicMapType_8362| Heap@@15) a_1_1@@2 left_2))
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@0) a_1_1@@2 left_2))
 :pattern ( (select graph a_1_1@@2))
)) (forall ((o_9@@18 T@Ref) ) (!  (and (=> (and (and (select graph (invRecv1 o_9@@18)) (< NoPerm FullPerm)) (qpRange1 o_9@@18)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_9@@18) o_9@@18)) (= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@0) o_9@@18 left_2) (+ (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| ZeroMask) o_9@@18 left_2) FullPerm)))) (=> (not (and (and (select graph (invRecv1 o_9@@18)) (< NoPerm FullPerm)) (qpRange1 o_9@@18))) (= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@0) o_9@@18 left_2) (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| ZeroMask) o_9@@18 left_2))))
 :qid |stdinbpl.464:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@0) o_9@@18 left_2))
)))) (=> (and (and (and (and (forall ((o_9@@19 T@Ref) (f_5@@11 T@Field_8422_53) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| ZeroMask) o_9@@19 f_5@@11) (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@0) o_9@@19 f_5@@11)))
 :qid |stdinbpl.468:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| ZeroMask) o_9@@19 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_8383_5232_3298#PolymorphicMapType_8383| QPMask@0) o_9@@19 f_5@@11))
)) (forall ((o_9@@20 T@Ref) (f_5@@12 T@Field_8435_8436) ) (!  (=> (not (= f_5@@12 left_2)) (= (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| ZeroMask) o_9@@20 f_5@@12) (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@0) o_9@@20 f_5@@12)))
 :qid |stdinbpl.468:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| ZeroMask) o_9@@20 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_8383_5229_5230#PolymorphicMapType_8383| QPMask@0) o_9@@20 f_5@@12))
))) (forall ((o_9@@21 T@Ref) (f_5@@13 T@Field_5229_22001) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| ZeroMask) o_9@@21 f_5@@13) (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@0) o_9@@21 f_5@@13)))
 :qid |stdinbpl.468:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| ZeroMask) o_9@@21 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_8383_5229_22001#PolymorphicMapType_8383| QPMask@0) o_9@@21 f_5@@13))
))) (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_5229_22134) ) (!  (=> true (= (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| ZeroMask) o_9@@22 f_5@@14) (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@0) o_9@@22 f_5@@14)))
 :qid |stdinbpl.468:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| ZeroMask) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_8383_5229_25668#PolymorphicMapType_8383| QPMask@0) o_9@@22 f_5@@14))
))) (state Heap@@15 QPMask@0)) (and (=> (= (ControlFlow 0 48) 2) anon24_Then_correct) (=> (= (ControlFlow 0 48) 46) anon24_Else_correct))))))))
(let ((anon23_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_8362_4924_53#PolymorphicMapType_8362| Heap@@15) node $allocated)) (and (select graph node) (not (select graph null)))) (and (=> (= (ControlFlow 0 50) 1) anon23_Then_correct) (=> (= (ControlFlow 0 50) 48) anon23_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 51) 50) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 17) (- 19))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
