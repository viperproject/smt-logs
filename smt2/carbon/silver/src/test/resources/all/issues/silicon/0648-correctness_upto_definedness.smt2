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
(declare-sort T@Field_7156_53 0)
(declare-sort T@Field_7169_7170 0)
(declare-sort T@Field_10600_1380 0)
(declare-sort T@Field_4665_19709 0)
(declare-sort T@Field_4665_19576 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7117 0)) (((PolymorphicMapType_7117 (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| (Array T@Ref T@Field_10600_1380 Real)) (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| (Array T@Ref T@Field_7156_53 Real)) (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| (Array T@Ref T@Field_7169_7170 Real)) (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| (Array T@Ref T@Field_4665_19576 Real)) (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| (Array T@Ref T@Field_4665_19709 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7645 0)) (((PolymorphicMapType_7645 (|PolymorphicMapType_7645_7156_53#PolymorphicMapType_7645| (Array T@Ref T@Field_7156_53 Bool)) (|PolymorphicMapType_7645_7156_7170#PolymorphicMapType_7645| (Array T@Ref T@Field_7169_7170 Bool)) (|PolymorphicMapType_7645_7156_1380#PolymorphicMapType_7645| (Array T@Ref T@Field_10600_1380 Bool)) (|PolymorphicMapType_7645_7156_19576#PolymorphicMapType_7645| (Array T@Ref T@Field_4665_19576 Bool)) (|PolymorphicMapType_7645_7156_20887#PolymorphicMapType_7645| (Array T@Ref T@Field_4665_19709 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7096 0)) (((PolymorphicMapType_7096 (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| (Array T@Ref T@Field_7156_53 Bool)) (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| (Array T@Ref T@Field_7169_7170 T@Ref)) (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| (Array T@Ref T@Field_10600_1380 Int)) (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| (Array T@Ref T@Field_4665_19709 T@PolymorphicMapType_7645)) (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| (Array T@Ref T@Field_4665_19576 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7156_53)
(declare-fun vint_1 () T@Field_10600_1380)
(declare-fun succHeap (T@PolymorphicMapType_7096 T@PolymorphicMapType_7096) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7096 T@PolymorphicMapType_7096) Bool)
(declare-sort T@arrayDomainType 0)
(declare-fun |correctness_upto#condqp1| (T@PolymorphicMapType_7096 T@arrayDomainType T@arrayDomainType Int) Int)
(declare-fun |sk_correctness_upto#condqp1| (Int Int) Int)
(declare-fun len_1 (T@arrayDomainType) Int)
(declare-fun NoPerm () Real)
(declare-fun loc (T@arrayDomainType Int) T@Ref)
(declare-fun |correctness_upto#condqp2| (T@PolymorphicMapType_7096 T@arrayDomainType T@arrayDomainType Int) Int)
(declare-fun |sk_correctness_upto#condqp2| (Int Int) Int)
(declare-fun state (T@PolymorphicMapType_7096 T@PolymorphicMapType_7117) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7117) Bool)
(declare-fun |correctness_upto'| (T@PolymorphicMapType_7096 T@arrayDomainType T@arrayDomainType Int) Bool)
(declare-fun dummyFunction_2257 (Bool) Bool)
(declare-fun |correctness_upto#triggerStateless| (T@arrayDomainType T@arrayDomainType Int) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7645)
(declare-fun correctness_upto (T@PolymorphicMapType_7096 T@arrayDomainType T@arrayDomainType Int) Bool)
(declare-fun |correctness_invar'| (T@PolymorphicMapType_7096 T@arrayDomainType) Bool)
(declare-fun |correctness_invar#triggerStateless| (T@arrayDomainType) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7096 T@PolymorphicMapType_7096 T@PolymorphicMapType_7117) Bool)
(declare-fun IsPredicateField_4665_19667 (T@Field_4665_19576) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4665 (T@Field_4665_19576) T@Field_4665_19709)
(declare-fun HasDirectPerm_4665_19640 (T@PolymorphicMapType_7117 T@Ref T@Field_4665_19576) Bool)
(declare-fun IsWandField_4665_21414 (T@Field_4665_19576) Bool)
(declare-fun WandMaskField_4665 (T@Field_4665_19576) T@Field_4665_19709)
(declare-fun |correctness_invar#condqp3| (T@PolymorphicMapType_7096 T@arrayDomainType) Int)
(declare-fun |sk_correctness_invar#condqp3| (Int Int) Int)
(declare-fun correctness_invar (T@PolymorphicMapType_7096 T@arrayDomainType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_7096)
(declare-fun ZeroMask () T@PolymorphicMapType_7117)
(declare-fun InsidePredicate_7156_7156 (T@Field_4665_19576 T@FrameType T@Field_4665_19576 T@FrameType) Bool)
(declare-fun IsPredicateField_4665_1380 (T@Field_10600_1380) Bool)
(declare-fun IsWandField_4665_1380 (T@Field_10600_1380) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4665_24960 (T@Field_4665_19709) Bool)
(declare-fun IsWandField_4665_24976 (T@Field_4665_19709) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4665_7170 (T@Field_7169_7170) Bool)
(declare-fun IsWandField_4665_7170 (T@Field_7169_7170) Bool)
(declare-fun IsPredicateField_4665_53 (T@Field_7156_53) Bool)
(declare-fun IsWandField_4665_53 (T@Field_7156_53) Bool)
(declare-fun HasDirectPerm_4665_25414 (T@PolymorphicMapType_7117 T@Ref T@Field_4665_19709) Bool)
(declare-fun HasDirectPerm_4665_7170 (T@PolymorphicMapType_7117 T@Ref T@Field_7169_7170) Bool)
(declare-fun HasDirectPerm_4665_53 (T@PolymorphicMapType_7117 T@Ref T@Field_7156_53) Bool)
(declare-fun HasDirectPerm_4665_1380 (T@PolymorphicMapType_7117 T@Ref T@Field_10600_1380) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7117 T@PolymorphicMapType_7117 T@PolymorphicMapType_7117) Bool)
(declare-fun |correctness_upto#frame| (T@FrameType T@arrayDomainType T@arrayDomainType Int) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1727 (Int) T@FrameType)
(declare-fun |correctness_invar#frame| (T@FrameType T@arrayDomainType) Bool)
(declare-fun loc_inv_1 (T@Ref) T@arrayDomainType)
(declare-fun loc_inv_2 (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_7096) (Heap1 T@PolymorphicMapType_7096) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_7096) (Heap1Heap T@PolymorphicMapType_7096) (parent_1 T@arrayDomainType) (left_1 T@arrayDomainType) (root Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_correctness_upto#condqp1| (|correctness_upto#condqp1| Heap2Heap parent_1 left_1 root) (|correctness_upto#condqp1| Heap1Heap parent_1 left_1 root))) (< (|sk_correctness_upto#condqp1| (|correctness_upto#condqp1| Heap2Heap parent_1 left_1 root) (|correctness_upto#condqp1| Heap1Heap parent_1 left_1 root)) (len_1 left_1))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (and (<= 0 (|sk_correctness_upto#condqp1| (|correctness_upto#condqp1| Heap2Heap parent_1 left_1 root) (|correctness_upto#condqp1| Heap1Heap parent_1 left_1 root))) (< (|sk_correctness_upto#condqp1| (|correctness_upto#condqp1| Heap2Heap parent_1 left_1 root) (|correctness_upto#condqp1| Heap1Heap parent_1 left_1 root)) (len_1 left_1))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (and (<= 0 (|sk_correctness_upto#condqp1| (|correctness_upto#condqp1| Heap2Heap parent_1 left_1 root) (|correctness_upto#condqp1| Heap1Heap parent_1 left_1 root))) (< (|sk_correctness_upto#condqp1| (|correctness_upto#condqp1| Heap2Heap parent_1 left_1 root) (|correctness_upto#condqp1| Heap1Heap parent_1 left_1 root)) (len_1 left_1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap2Heap) (loc left_1 (|sk_correctness_upto#condqp1| (|correctness_upto#condqp1| Heap2Heap parent_1 left_1 root) (|correctness_upto#condqp1| Heap1Heap parent_1 left_1 root))) vint_1) (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap1Heap) (loc left_1 (|sk_correctness_upto#condqp1| (|correctness_upto#condqp1| Heap2Heap parent_1 left_1 root) (|correctness_upto#condqp1| Heap1Heap parent_1 left_1 root))) vint_1)))) (= (|correctness_upto#condqp1| Heap2Heap parent_1 left_1 root) (|correctness_upto#condqp1| Heap1Heap parent_1 left_1 root)))
 :qid |stdinbpl.283:15|
 :skolemid |30|
 :pattern ( (|correctness_upto#condqp1| Heap2Heap parent_1 left_1 root) (|correctness_upto#condqp1| Heap1Heap parent_1 left_1 root) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_7096) (Heap1Heap@@0 T@PolymorphicMapType_7096) (parent_1@@0 T@arrayDomainType) (left_1@@0 T@arrayDomainType) (root@@0 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_correctness_upto#condqp2| (|correctness_upto#condqp2| Heap2Heap@@0 parent_1@@0 left_1@@0 root@@0) (|correctness_upto#condqp2| Heap1Heap@@0 parent_1@@0 left_1@@0 root@@0))) (< (|sk_correctness_upto#condqp2| (|correctness_upto#condqp2| Heap2Heap@@0 parent_1@@0 left_1@@0 root@@0) (|correctness_upto#condqp2| Heap1Heap@@0 parent_1@@0 left_1@@0 root@@0)) (len_1 parent_1@@0))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (and (<= 0 (|sk_correctness_upto#condqp2| (|correctness_upto#condqp2| Heap2Heap@@0 parent_1@@0 left_1@@0 root@@0) (|correctness_upto#condqp2| Heap1Heap@@0 parent_1@@0 left_1@@0 root@@0))) (< (|sk_correctness_upto#condqp2| (|correctness_upto#condqp2| Heap2Heap@@0 parent_1@@0 left_1@@0 root@@0) (|correctness_upto#condqp2| Heap1Heap@@0 parent_1@@0 left_1@@0 root@@0)) (len_1 parent_1@@0))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (and (<= 0 (|sk_correctness_upto#condqp2| (|correctness_upto#condqp2| Heap2Heap@@0 parent_1@@0 left_1@@0 root@@0) (|correctness_upto#condqp2| Heap1Heap@@0 parent_1@@0 left_1@@0 root@@0))) (< (|sk_correctness_upto#condqp2| (|correctness_upto#condqp2| Heap2Heap@@0 parent_1@@0 left_1@@0 root@@0) (|correctness_upto#condqp2| Heap1Heap@@0 parent_1@@0 left_1@@0 root@@0)) (len_1 parent_1@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap2Heap@@0) (loc parent_1@@0 (|sk_correctness_upto#condqp2| (|correctness_upto#condqp2| Heap2Heap@@0 parent_1@@0 left_1@@0 root@@0) (|correctness_upto#condqp2| Heap1Heap@@0 parent_1@@0 left_1@@0 root@@0))) vint_1) (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap1Heap@@0) (loc parent_1@@0 (|sk_correctness_upto#condqp2| (|correctness_upto#condqp2| Heap2Heap@@0 parent_1@@0 left_1@@0 root@@0) (|correctness_upto#condqp2| Heap1Heap@@0 parent_1@@0 left_1@@0 root@@0))) vint_1)))) (= (|correctness_upto#condqp2| Heap2Heap@@0 parent_1@@0 left_1@@0 root@@0) (|correctness_upto#condqp2| Heap1Heap@@0 parent_1@@0 left_1@@0 root@@0)))
 :qid |stdinbpl.293:15|
 :skolemid |31|
 :pattern ( (|correctness_upto#condqp2| Heap2Heap@@0 parent_1@@0 left_1@@0 root@@0) (|correctness_upto#condqp2| Heap1Heap@@0 parent_1@@0 left_1@@0 root@@0) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_7096) (Mask T@PolymorphicMapType_7117) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7096) (Heap1@@0 T@PolymorphicMapType_7096) (Heap2 T@PolymorphicMapType_7096) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7096) (parent_1@@1 T@arrayDomainType) (left_1@@1 T@arrayDomainType) (root@@1 Int) ) (! (dummyFunction_2257 (|correctness_upto#triggerStateless| parent_1@@1 left_1@@1 root@@1))
 :qid |stdinbpl.254:15|
 :skolemid |25|
 :pattern ( (|correctness_upto'| Heap@@0 parent_1@@1 left_1@@1 root@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4665_19709) ) (!  (not (select (|PolymorphicMapType_7645_7156_20887#PolymorphicMapType_7645| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7645_7156_20887#PolymorphicMapType_7645| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4665_19576) ) (!  (not (select (|PolymorphicMapType_7645_7156_19576#PolymorphicMapType_7645| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7645_7156_19576#PolymorphicMapType_7645| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10600_1380) ) (!  (not (select (|PolymorphicMapType_7645_7156_1380#PolymorphicMapType_7645| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7645_7156_1380#PolymorphicMapType_7645| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7169_7170) ) (!  (not (select (|PolymorphicMapType_7645_7156_7170#PolymorphicMapType_7645| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7645_7156_7170#PolymorphicMapType_7645| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7156_53) ) (!  (not (select (|PolymorphicMapType_7645_7156_53#PolymorphicMapType_7645| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7645_7156_53#PolymorphicMapType_7645| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7096) (parent_1@@2 T@arrayDomainType) (left_1@@2 T@arrayDomainType) (root@@2 Int) ) (!  (and (= (correctness_upto Heap@@1 parent_1@@2 left_1@@2 root@@2) (|correctness_upto'| Heap@@1 parent_1@@2 left_1@@2 root@@2)) (dummyFunction_2257 (|correctness_upto#triggerStateless| parent_1@@2 left_1@@2 root@@2)))
 :qid |stdinbpl.250:15|
 :skolemid |24|
 :pattern ( (correctness_upto Heap@@1 parent_1@@2 left_1@@2 root@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7096) (left_1@@3 T@arrayDomainType) ) (! (dummyFunction_2257 (|correctness_invar#triggerStateless| left_1@@3))
 :qid |stdinbpl.507:15|
 :skolemid |55|
 :pattern ( (|correctness_invar'| Heap@@2 left_1@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7096) (ExhaleHeap T@PolymorphicMapType_7096) (Mask@@0 T@PolymorphicMapType_7117) (pm_f_3 T@Field_4665_19576) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4665_19640 Mask@@0 null pm_f_3) (IsPredicateField_4665_19667 pm_f_3)) (= (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@3) null (PredicateMaskField_4665 pm_f_3)) (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| ExhaleHeap) null (PredicateMaskField_4665 pm_f_3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_4665_19667 pm_f_3) (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| ExhaleHeap) null (PredicateMaskField_4665 pm_f_3)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7096) (ExhaleHeap@@0 T@PolymorphicMapType_7096) (Mask@@1 T@PolymorphicMapType_7117) (pm_f_3@@0 T@Field_4665_19576) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4665_19640 Mask@@1 null pm_f_3@@0) (IsWandField_4665_21414 pm_f_3@@0)) (= (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@4) null (WandMaskField_4665 pm_f_3@@0)) (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| ExhaleHeap@@0) null (WandMaskField_4665 pm_f_3@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsWandField_4665_21414 pm_f_3@@0) (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| ExhaleHeap@@0) null (WandMaskField_4665 pm_f_3@@0)))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_7096) (Heap1Heap@@1 T@PolymorphicMapType_7096) (left_1@@4 T@arrayDomainType) ) (!  (=> (and (=  (and (and (<= 0 (|sk_correctness_invar#condqp3| (|correctness_invar#condqp3| Heap2Heap@@1 left_1@@4) (|correctness_invar#condqp3| Heap1Heap@@1 left_1@@4))) (< (|sk_correctness_invar#condqp3| (|correctness_invar#condqp3| Heap2Heap@@1 left_1@@4) (|correctness_invar#condqp3| Heap1Heap@@1 left_1@@4)) (len_1 left_1@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (and (<= 0 (|sk_correctness_invar#condqp3| (|correctness_invar#condqp3| Heap2Heap@@1 left_1@@4) (|correctness_invar#condqp3| Heap1Heap@@1 left_1@@4))) (< (|sk_correctness_invar#condqp3| (|correctness_invar#condqp3| Heap2Heap@@1 left_1@@4) (|correctness_invar#condqp3| Heap1Heap@@1 left_1@@4)) (len_1 left_1@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (and (<= 0 (|sk_correctness_invar#condqp3| (|correctness_invar#condqp3| Heap2Heap@@1 left_1@@4) (|correctness_invar#condqp3| Heap1Heap@@1 left_1@@4))) (< (|sk_correctness_invar#condqp3| (|correctness_invar#condqp3| Heap2Heap@@1 left_1@@4) (|correctness_invar#condqp3| Heap1Heap@@1 left_1@@4)) (len_1 left_1@@4))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap2Heap@@1) (loc left_1@@4 (|sk_correctness_invar#condqp3| (|correctness_invar#condqp3| Heap2Heap@@1 left_1@@4) (|correctness_invar#condqp3| Heap1Heap@@1 left_1@@4))) vint_1) (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap1Heap@@1) (loc left_1@@4 (|sk_correctness_invar#condqp3| (|correctness_invar#condqp3| Heap2Heap@@1 left_1@@4) (|correctness_invar#condqp3| Heap1Heap@@1 left_1@@4))) vint_1)))) (= (|correctness_invar#condqp3| Heap2Heap@@1 left_1@@4) (|correctness_invar#condqp3| Heap1Heap@@1 left_1@@4)))
 :qid |stdinbpl.530:15|
 :skolemid |58|
 :pattern ( (|correctness_invar#condqp3| Heap2Heap@@1 left_1@@4) (|correctness_invar#condqp3| Heap1Heap@@1 left_1@@4) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7096) (Mask@@2 T@PolymorphicMapType_7117) (left_1@@5 T@arrayDomainType) ) (!  (=> (and (state Heap@@5 Mask@@2) (< AssumeFunctionsAbove 1)) (correctness_invar Heap@@5 left_1@@5))
 :qid |stdinbpl.513:15|
 :skolemid |56|
 :pattern ( (state Heap@@5 Mask@@2) (correctness_invar Heap@@5 left_1@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7096) (ExhaleHeap@@1 T@PolymorphicMapType_7096) (Mask@@3 T@PolymorphicMapType_7117) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@6) o_8 $allocated) (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| ExhaleHeap@@1) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| ExhaleHeap@@1) o_8 $allocated))
)))
(assert (forall ((p T@Field_4665_19576) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7156_7156 p v_1 p w))
 :qid |stdinbpl.199:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7156_7156 p v_1 p w))
)))
(assert  (not (IsPredicateField_4665_1380 vint_1)))
(assert  (not (IsWandField_4665_1380 vint_1)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7096) (ExhaleHeap@@2 T@PolymorphicMapType_7096) (Mask@@4 T@PolymorphicMapType_7117) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@7 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7117) (o_2@@4 T@Ref) (f_4@@4 T@Field_4665_19709) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4665_24960 f_4@@4))) (not (IsWandField_4665_24976 f_4@@4))) (<= (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7117) (o_2@@5 T@Ref) (f_4@@5 T@Field_4665_19576) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4665_19667 f_4@@5))) (not (IsWandField_4665_21414 f_4@@5))) (<= (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7117) (o_2@@6 T@Ref) (f_4@@6 T@Field_7169_7170) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4665_7170 f_4@@6))) (not (IsWandField_4665_7170 f_4@@6))) (<= (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7117) (o_2@@7 T@Ref) (f_4@@7 T@Field_7156_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4665_53 f_4@@7))) (not (IsWandField_4665_53 f_4@@7))) (<= (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7117) (o_2@@8 T@Ref) (f_4@@8 T@Field_10600_1380) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4665_1380 f_4@@8))) (not (IsWandField_4665_1380 f_4@@8))) (<= (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7117) (o_2@@9 T@Ref) (f_4@@9 T@Field_4665_19709) ) (! (= (HasDirectPerm_4665_25414 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4665_25414 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7117) (o_2@@10 T@Ref) (f_4@@10 T@Field_4665_19576) ) (! (= (HasDirectPerm_4665_19640 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4665_19640 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7117) (o_2@@11 T@Ref) (f_4@@11 T@Field_7169_7170) ) (! (= (HasDirectPerm_4665_7170 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4665_7170 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7117) (o_2@@12 T@Ref) (f_4@@12 T@Field_7156_53) ) (! (= (HasDirectPerm_4665_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4665_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7117) (o_2@@13 T@Ref) (f_4@@13 T@Field_10600_1380) ) (! (= (HasDirectPerm_4665_1380 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4665_1380 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7096) (ExhaleHeap@@3 T@PolymorphicMapType_7096) (Mask@@15 T@PolymorphicMapType_7117) (pm_f_3@@1 T@Field_4665_19576) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_4665_19640 Mask@@15 null pm_f_3@@1) (IsPredicateField_4665_19667 pm_f_3@@1)) (and (and (and (and (forall ((o2_3 T@Ref) (f_12 T@Field_7156_53) ) (!  (=> (select (|PolymorphicMapType_7645_7156_53#PolymorphicMapType_7645| (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@8) null (PredicateMaskField_4665 pm_f_3@@1))) o2_3 f_12) (= (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@8) o2_3 f_12) (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| ExhaleHeap@@3) o2_3 f_12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| ExhaleHeap@@3) o2_3 f_12))
)) (forall ((o2_3@@0 T@Ref) (f_12@@0 T@Field_7169_7170) ) (!  (=> (select (|PolymorphicMapType_7645_7156_7170#PolymorphicMapType_7645| (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@8) null (PredicateMaskField_4665 pm_f_3@@1))) o2_3@@0 f_12@@0) (= (select (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@8) o2_3@@0 f_12@@0) (select (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| ExhaleHeap@@3) o2_3@@0 f_12@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| ExhaleHeap@@3) o2_3@@0 f_12@@0))
))) (forall ((o2_3@@1 T@Ref) (f_12@@1 T@Field_10600_1380) ) (!  (=> (select (|PolymorphicMapType_7645_7156_1380#PolymorphicMapType_7645| (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@8) null (PredicateMaskField_4665 pm_f_3@@1))) o2_3@@1 f_12@@1) (= (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@8) o2_3@@1 f_12@@1) (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| ExhaleHeap@@3) o2_3@@1 f_12@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| ExhaleHeap@@3) o2_3@@1 f_12@@1))
))) (forall ((o2_3@@2 T@Ref) (f_12@@2 T@Field_4665_19576) ) (!  (=> (select (|PolymorphicMapType_7645_7156_19576#PolymorphicMapType_7645| (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@8) null (PredicateMaskField_4665 pm_f_3@@1))) o2_3@@2 f_12@@2) (= (select (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@8) o2_3@@2 f_12@@2) (select (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| ExhaleHeap@@3) o2_3@@2 f_12@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| ExhaleHeap@@3) o2_3@@2 f_12@@2))
))) (forall ((o2_3@@3 T@Ref) (f_12@@3 T@Field_4665_19709) ) (!  (=> (select (|PolymorphicMapType_7645_7156_20887#PolymorphicMapType_7645| (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@8) null (PredicateMaskField_4665 pm_f_3@@1))) o2_3@@3 f_12@@3) (= (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@8) o2_3@@3 f_12@@3) (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| ExhaleHeap@@3) o2_3@@3 f_12@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| ExhaleHeap@@3) o2_3@@3 f_12@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@15) (IsPredicateField_4665_19667 pm_f_3@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7096) (ExhaleHeap@@4 T@PolymorphicMapType_7096) (Mask@@16 T@PolymorphicMapType_7117) (pm_f_3@@2 T@Field_4665_19576) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_4665_19640 Mask@@16 null pm_f_3@@2) (IsWandField_4665_21414 pm_f_3@@2)) (and (and (and (and (forall ((o2_3@@4 T@Ref) (f_12@@4 T@Field_7156_53) ) (!  (=> (select (|PolymorphicMapType_7645_7156_53#PolymorphicMapType_7645| (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@9) null (WandMaskField_4665 pm_f_3@@2))) o2_3@@4 f_12@@4) (= (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@9) o2_3@@4 f_12@@4) (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| ExhaleHeap@@4) o2_3@@4 f_12@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| ExhaleHeap@@4) o2_3@@4 f_12@@4))
)) (forall ((o2_3@@5 T@Ref) (f_12@@5 T@Field_7169_7170) ) (!  (=> (select (|PolymorphicMapType_7645_7156_7170#PolymorphicMapType_7645| (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@9) null (WandMaskField_4665 pm_f_3@@2))) o2_3@@5 f_12@@5) (= (select (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@9) o2_3@@5 f_12@@5) (select (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| ExhaleHeap@@4) o2_3@@5 f_12@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| ExhaleHeap@@4) o2_3@@5 f_12@@5))
))) (forall ((o2_3@@6 T@Ref) (f_12@@6 T@Field_10600_1380) ) (!  (=> (select (|PolymorphicMapType_7645_7156_1380#PolymorphicMapType_7645| (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@9) null (WandMaskField_4665 pm_f_3@@2))) o2_3@@6 f_12@@6) (= (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@9) o2_3@@6 f_12@@6) (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| ExhaleHeap@@4) o2_3@@6 f_12@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| ExhaleHeap@@4) o2_3@@6 f_12@@6))
))) (forall ((o2_3@@7 T@Ref) (f_12@@7 T@Field_4665_19576) ) (!  (=> (select (|PolymorphicMapType_7645_7156_19576#PolymorphicMapType_7645| (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@9) null (WandMaskField_4665 pm_f_3@@2))) o2_3@@7 f_12@@7) (= (select (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@9) o2_3@@7 f_12@@7) (select (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| ExhaleHeap@@4) o2_3@@7 f_12@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| ExhaleHeap@@4) o2_3@@7 f_12@@7))
))) (forall ((o2_3@@8 T@Ref) (f_12@@8 T@Field_4665_19709) ) (!  (=> (select (|PolymorphicMapType_7645_7156_20887#PolymorphicMapType_7645| (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@9) null (WandMaskField_4665 pm_f_3@@2))) o2_3@@8 f_12@@8) (= (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@9) o2_3@@8 f_12@@8) (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| ExhaleHeap@@4) o2_3@@8 f_12@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| ExhaleHeap@@4) o2_3@@8 f_12@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@16) (IsWandField_4665_21414 pm_f_3@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.187:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7096) (ExhaleHeap@@5 T@PolymorphicMapType_7096) (Mask@@17 T@PolymorphicMapType_7117) (o_8@@0 T@Ref) (f_12@@9 T@Field_4665_19709) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_4665_25414 Mask@@17 o_8@@0 f_12@@9) (= (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@10) o_8@@0 f_12@@9) (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| ExhaleHeap@@5) o_8@@0 f_12@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| ExhaleHeap@@5) o_8@@0 f_12@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7096) (ExhaleHeap@@6 T@PolymorphicMapType_7096) (Mask@@18 T@PolymorphicMapType_7117) (o_8@@1 T@Ref) (f_12@@10 T@Field_4665_19576) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_4665_19640 Mask@@18 o_8@@1 f_12@@10) (= (select (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@11) o_8@@1 f_12@@10) (select (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| ExhaleHeap@@6) o_8@@1 f_12@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| ExhaleHeap@@6) o_8@@1 f_12@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7096) (ExhaleHeap@@7 T@PolymorphicMapType_7096) (Mask@@19 T@PolymorphicMapType_7117) (o_8@@2 T@Ref) (f_12@@11 T@Field_7169_7170) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_4665_7170 Mask@@19 o_8@@2 f_12@@11) (= (select (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@12) o_8@@2 f_12@@11) (select (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| ExhaleHeap@@7) o_8@@2 f_12@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| ExhaleHeap@@7) o_8@@2 f_12@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7096) (ExhaleHeap@@8 T@PolymorphicMapType_7096) (Mask@@20 T@PolymorphicMapType_7117) (o_8@@3 T@Ref) (f_12@@12 T@Field_7156_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_4665_53 Mask@@20 o_8@@3 f_12@@12) (= (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@13) o_8@@3 f_12@@12) (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| ExhaleHeap@@8) o_8@@3 f_12@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| ExhaleHeap@@8) o_8@@3 f_12@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7096) (ExhaleHeap@@9 T@PolymorphicMapType_7096) (Mask@@21 T@PolymorphicMapType_7117) (o_8@@4 T@Ref) (f_12@@13 T@Field_10600_1380) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_4665_1380 Mask@@21 o_8@@4 f_12@@13) (= (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@14) o_8@@4 f_12@@13) (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| ExhaleHeap@@9) o_8@@4 f_12@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| ExhaleHeap@@9) o_8@@4 f_12@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4665_19709) ) (! (= (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4665_19576) ) (! (= (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7169_7170) ) (! (= (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7156_53) ) (! (= (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10600_1380) ) (! (= (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7096) (Mask@@22 T@PolymorphicMapType_7117) (parent_1@@3 T@arrayDomainType) (left_1@@6 T@arrayDomainType) (root@@3 Int) ) (!  (=> (and (state Heap@@15 Mask@@22) (< AssumeFunctionsAbove 0)) (=> (correctness_invar Heap@@15 left_1@@6) (= (correctness_upto Heap@@15 parent_1@@3 left_1@@6 root@@3)  (and (forall ((i_2_1 Int) ) (!  (=> (and (<= 0 i_2_1) (< i_2_1 (len_1 parent_1@@3))) (= (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@15) (loc parent_1@@3 i_2_1) vint_1) 0))
 :qid |stdinbpl.262:148|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@15) (loc parent_1@@3 i_2_1) vint_1))
)) (forall ((i_3 Int) ) (!  (=> (and (<= 0 i_3) (< i_3 (len_1 parent_1@@3))) (= (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@15) (loc parent_1@@3 i_3) vint_1) 0))
 :qid |stdinbpl.265:16|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@15) (loc parent_1@@3 i_3) vint_1))
))))))
 :qid |stdinbpl.260:15|
 :skolemid |28|
 :pattern ( (state Heap@@15 Mask@@22) (correctness_upto Heap@@15 parent_1@@3 left_1@@6 root@@3))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7117) (SummandMask1 T@PolymorphicMapType_7117) (SummandMask2 T@PolymorphicMapType_7117) (o_2@@19 T@Ref) (f_4@@19 T@Field_4665_19709) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7117) (SummandMask1@@0 T@PolymorphicMapType_7117) (SummandMask2@@0 T@PolymorphicMapType_7117) (o_2@@20 T@Ref) (f_4@@20 T@Field_4665_19576) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7117) (SummandMask1@@1 T@PolymorphicMapType_7117) (SummandMask2@@1 T@PolymorphicMapType_7117) (o_2@@21 T@Ref) (f_4@@21 T@Field_7169_7170) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7117) (SummandMask1@@2 T@PolymorphicMapType_7117) (SummandMask2@@2 T@PolymorphicMapType_7117) (o_2@@22 T@Ref) (f_4@@22 T@Field_7156_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7117) (SummandMask1@@3 T@PolymorphicMapType_7117) (SummandMask2@@3 T@PolymorphicMapType_7117) (o_2@@23 T@Ref) (f_4@@23 T@Field_10600_1380) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a_2 T@arrayDomainType) ) (! (>= (len_1 a_2) 0)
 :qid |stdinbpl.230:15|
 :skolemid |23|
 :pattern ( (len_1 a_2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7096) (left_1@@7 T@arrayDomainType) ) (!  (and (= (correctness_invar Heap@@16 left_1@@7) (|correctness_invar'| Heap@@16 left_1@@7)) (dummyFunction_2257 (|correctness_invar#triggerStateless| left_1@@7)))
 :qid |stdinbpl.503:15|
 :skolemid |54|
 :pattern ( (correctness_invar Heap@@16 left_1@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7096) (Mask@@23 T@PolymorphicMapType_7117) (parent_1@@4 T@arrayDomainType) (left_1@@8 T@arrayDomainType) (root@@4 Int) ) (!  (=> (state Heap@@17 Mask@@23) (= (|correctness_upto'| Heap@@17 parent_1@@4 left_1@@8 root@@4) (|correctness_upto#frame| (CombineFrames (FrameFragment_1727 (|correctness_upto#condqp1| Heap@@17 parent_1@@4 left_1@@8 root@@4)) (FrameFragment_1727 (|correctness_upto#condqp2| Heap@@17 parent_1@@4 left_1@@8 root@@4))) parent_1@@4 left_1@@8 root@@4)))
 :qid |stdinbpl.273:15|
 :skolemid |29|
 :pattern ( (state Heap@@17 Mask@@23) (|correctness_upto'| Heap@@17 parent_1@@4 left_1@@8 root@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7096) (Mask@@24 T@PolymorphicMapType_7117) (left_1@@9 T@arrayDomainType) ) (!  (=> (state Heap@@18 Mask@@24) (= (|correctness_invar'| Heap@@18 left_1@@9) (|correctness_invar#frame| (FrameFragment_1727 (|correctness_invar#condqp3| Heap@@18 left_1@@9)) left_1@@9)))
 :qid |stdinbpl.520:15|
 :skolemid |57|
 :pattern ( (state Heap@@18 Mask@@24) (|correctness_invar'| Heap@@18 left_1@@9))
)))
(assert (forall ((a_2@@0 T@arrayDomainType) (i Int) ) (!  (and (= (loc_inv_1 (loc a_2@@0 i)) a_2@@0) (= (loc_inv_2 (loc a_2@@0 i)) i))
 :qid |stdinbpl.224:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7096) (o_7 T@Ref) (f_2 T@Field_4665_19576) (v T@FrameType) ) (! (succHeap Heap@@19 (PolymorphicMapType_7096 (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@19) (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@19) (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@19) (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@19) (store (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@19) o_7 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7096 (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@19) (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@19) (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@19) (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@19) (store (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@19) o_7 f_2 v)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7096) (o_7@@0 T@Ref) (f_2@@0 T@Field_4665_19709) (v@@0 T@PolymorphicMapType_7645) ) (! (succHeap Heap@@20 (PolymorphicMapType_7096 (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@20) (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@20) (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@20) (store (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@20) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7096 (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@20) (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@20) (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@20) (store (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@20) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7096) (o_7@@1 T@Ref) (f_2@@1 T@Field_10600_1380) (v@@1 Int) ) (! (succHeap Heap@@21 (PolymorphicMapType_7096 (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@21) (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@21) (store (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@21) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@21) (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7096 (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@21) (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@21) (store (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@21) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@21) (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7096) (o_7@@2 T@Ref) (f_2@@2 T@Field_7169_7170) (v@@2 T@Ref) ) (! (succHeap Heap@@22 (PolymorphicMapType_7096 (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@22) (store (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@22) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@22) (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@22) (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7096 (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@22) (store (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@22) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@22) (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@22) (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7096) (o_7@@3 T@Ref) (f_2@@3 T@Field_7156_53) (v@@3 Bool) ) (! (succHeap Heap@@23 (PolymorphicMapType_7096 (store (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@23) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@23) (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@23) (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@23) (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7096 (store (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@23) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@23) (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@23) (|PolymorphicMapType_7096_4665_19753#PolymorphicMapType_7096| Heap@@23) (|PolymorphicMapType_7096_7156_19576#PolymorphicMapType_7096| Heap@@23)))
)))
(assert (forall ((o_7@@4 T@Ref) (f_11 T@Field_7169_7170) (Heap@@24 T@PolymorphicMapType_7096) ) (!  (=> (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@24) o_7@@4 $allocated) (select (|PolymorphicMapType_7096_4517_53#PolymorphicMapType_7096| Heap@@24) (select (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@24) o_7@@4 f_11) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7096_4520_4521#PolymorphicMapType_7096| Heap@@24) o_7@@4 f_11))
)))
(assert (forall ((p@@1 T@Field_4665_19576) (v_1@@0 T@FrameType) (q T@Field_4665_19576) (w@@0 T@FrameType) (r T@Field_4665_19576) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7156_7156 p@@1 v_1@@0 q w@@0) (InsidePredicate_7156_7156 q w@@0 r u)) (InsidePredicate_7156_7156 p@@1 v_1@@0 r u))
 :qid |stdinbpl.194:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7156_7156 p@@1 v_1@@0 q w@@0) (InsidePredicate_7156_7156 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_6 () Int)
(declare-fun parent_1@@5 () T@arrayDomainType)
(declare-fun QPMask@1 () T@PolymorphicMapType_7117)
(declare-fun Heap@@25 () T@PolymorphicMapType_7096)
(declare-fun i_4 () Int)
(declare-fun left_1@@10 () T@arrayDomainType)
(declare-fun dummyFunction_1380 (Int) Bool)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_7117)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(set-info :boogie-vc-id |correctness_upto#definedness|)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon14_correct true))
(let ((anon23_Else_correct  (=> (and (not (and (<= 0 i_6) (< i_6 (len_1 parent_1@@5)))) (= (ControlFlow 0 16) 13)) anon14_correct)))
(let ((anon23_Then_correct  (=> (and (<= 0 i_6) (< i_6 (len_1 parent_1@@5))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_4665_1380 QPMask@1 (loc parent_1@@5 i_6) vint_1)) (=> (HasDirectPerm_4665_1380 QPMask@1 (loc parent_1@@5 i_6) vint_1) (=> (= (ControlFlow 0 14) 13) anon14_correct))))))
(let ((anon15_correct true))
(let ((anon21_Then_correct  (=> (forall ((i_14_1 Int) ) (!  (=> (and (<= 0 i_14_1) (< i_14_1 (len_1 parent_1@@5))) (= (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@25) (loc parent_1@@5 i_14_1) vint_1) 0))
 :qid |stdinbpl.473:19|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@25) (loc parent_1@@5 i_14_1) vint_1))
)) (and (and (=> (= (ControlFlow 0 17) 11) anon15_correct) (=> (= (ControlFlow 0 17) 14) anon23_Then_correct)) (=> (= (ControlFlow 0 17) 16) anon23_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not (forall ((i_14_1@@0 Int) ) (!  (=> (and (<= 0 i_14_1@@0) (< i_14_1@@0 (len_1 parent_1@@5))) (= (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@25) (loc parent_1@@5 i_14_1@@0) vint_1) 0))
 :qid |stdinbpl.473:19|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@25) (loc parent_1@@5 i_14_1@@0) vint_1))
))) (= (ControlFlow 0 12) 11)) anon15_correct)))
(let ((anon9_correct true))
(let ((anon20_Else_correct  (=> (and (not (and (<= 0 i_4) (< i_4 (len_1 parent_1@@5)))) (= (ControlFlow 0 10) 7)) anon9_correct)))
(let ((anon20_Then_correct  (=> (and (<= 0 i_4) (< i_4 (len_1 parent_1@@5))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_4665_1380 QPMask@1 (loc parent_1@@5 i_4) vint_1)) (=> (HasDirectPerm_4665_1380 QPMask@1 (loc parent_1@@5 i_4) vint_1) (=> (= (ControlFlow 0 8) 7) anon9_correct))))))
(let ((anon18_Else_correct  (=> (and (correctness_invar Heap@@25 left_1@@10) (state Heap@@25 QPMask@1)) (and (and (and (=> (= (ControlFlow 0 18) 17) anon21_Then_correct) (=> (= (ControlFlow 0 18) 12) anon21_Else_correct)) (=> (= (ControlFlow 0 18) 8) anon20_Then_correct)) (=> (= (ControlFlow 0 18) 10) anon20_Else_correct)))))
(let ((anon18_Then_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) (forall ((i_12_1 Int) ) (!  (=> (and (and (<= 0 i_12_1) (< i_12_1 (len_1 left_1@@10))) (dummyFunction_1380 (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@25) (loc left_1@@10 i_12_1) vint_1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.425:21|
 :skolemid |46|
 :pattern ( (loc left_1@@10 i_12_1))
 :pattern ( (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@25) (loc left_1@@10 i_12_1) vint_1))
))) (=> (forall ((i_12_1@@0 Int) ) (!  (=> (and (and (<= 0 i_12_1@@0) (< i_12_1@@0 (len_1 left_1@@10))) (dummyFunction_1380 (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@25) (loc left_1@@10 i_12_1@@0) vint_1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.425:21|
 :skolemid |46|
 :pattern ( (loc left_1@@10 i_12_1@@0))
 :pattern ( (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@25) (loc left_1@@10 i_12_1@@0) vint_1))
)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((i_12_1@@1 Int) (i_12_2 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@1 i_12_2)) (and (<= 0 i_12_1@@1) (< i_12_1@@1 (len_1 left_1@@10)))) (and (<= 0 i_12_2) (< i_12_2 (len_1 left_1@@10)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc left_1@@10 i_12_1@@1) (loc left_1@@10 i_12_2))))
 :qid |stdinbpl.432:21|
 :skolemid |47|
 :pattern ( (neverTriggered3 i_12_1@@1) (neverTriggered3 i_12_2))
))) (=> (forall ((i_12_1@@2 Int) (i_12_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@2 i_12_2@@0)) (and (<= 0 i_12_1@@2) (< i_12_1@@2 (len_1 left_1@@10)))) (and (<= 0 i_12_2@@0) (< i_12_2@@0 (len_1 left_1@@10)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc left_1@@10 i_12_1@@2) (loc left_1@@10 i_12_2@@0))))
 :qid |stdinbpl.432:21|
 :skolemid |47|
 :pattern ( (neverTriggered3 i_12_1@@2) (neverTriggered3 i_12_2@@0))
)) (=> (= (ControlFlow 0 4) (- 0 3)) (forall ((i_12_1@@3 Int) ) (!  (=> (and (<= 0 i_12_1@@3) (< i_12_1@@3 (len_1 left_1@@10))) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@1) (loc left_1@@10 i_12_1@@3) vint_1) NoPerm)))
 :qid |stdinbpl.439:21|
 :skolemid |48|
 :pattern ( (loc left_1@@10 i_12_1@@3))
 :pattern ( (select (|PolymorphicMapType_7096_4665_1380#PolymorphicMapType_7096| Heap@@25) (loc left_1@@10 i_12_1@@3) vint_1))
)))))))))
(let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 19) (- 0 21)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (and (<= 0 i_11_1) (< i_11_1 (len_1 parent_1@@5)))) (and (<= 0 i_11_2) (< i_11_2 (len_1 parent_1@@5)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc parent_1@@5 i_11_1) (loc parent_1@@5 i_11_2))))
 :qid |stdinbpl.375:15|
 :skolemid |39|
))) (=> (forall ((i_11_1@@0 Int) (i_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_11_1@@0 i_11_2@@0)) (and (<= 0 i_11_1@@0) (< i_11_1@@0 (len_1 parent_1@@5)))) (and (<= 0 i_11_2@@0) (< i_11_2@@0 (len_1 parent_1@@5)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc parent_1@@5 i_11_1@@0) (loc parent_1@@5 i_11_2@@0))))
 :qid |stdinbpl.375:15|
 :skolemid |39|
)) (=> (and (forall ((i_11_1@@1 Int) ) (!  (=> (and (and (<= 0 i_11_1@@1) (< i_11_1@@1 (len_1 parent_1@@5))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange2 (loc parent_1@@5 i_11_1@@1)) (= (invRecv2 (loc parent_1@@5 i_11_1@@1)) i_11_1@@1)))
 :qid |stdinbpl.381:22|
 :skolemid |40|
 :pattern ( (loc parent_1@@5 i_11_1@@1))
 :pattern ( (loc parent_1@@5 i_11_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4)) (< (invRecv2 o_4) (len_1 parent_1@@5))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4)) (= (loc parent_1@@5 (invRecv2 o_4)) o_4))
 :qid |stdinbpl.385:22|
 :skolemid |41|
 :pattern ( (invRecv2 o_4))
))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (forall ((i_11_1@@2 Int) ) (!  (=> (and (<= 0 i_11_1@@2) (< i_11_1@@2 (len_1 parent_1@@5))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.391:15|
 :skolemid |42|
 :pattern ( (loc parent_1@@5 i_11_1@@2))
 :pattern ( (loc parent_1@@5 i_11_1@@2))
))) (=> (forall ((i_11_1@@3 Int) ) (!  (=> (and (<= 0 i_11_1@@3) (< i_11_1@@3 (len_1 parent_1@@5))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.391:15|
 :skolemid |42|
 :pattern ( (loc parent_1@@5 i_11_1@@3))
 :pattern ( (loc parent_1@@5 i_11_1@@3))
)) (=> (and (forall ((i_11_1@@4 Int) ) (!  (=> (and (and (<= 0 i_11_1@@4) (< i_11_1@@4 (len_1 parent_1@@5))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (loc parent_1@@5 i_11_1@@4) null)))
 :qid |stdinbpl.397:22|
 :skolemid |43|
 :pattern ( (loc parent_1@@5 i_11_1@@4))
 :pattern ( (loc parent_1@@5 i_11_1@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (len_1 parent_1@@5))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (loc parent_1@@5 (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@1) o_4@@0 vint_1) (+ (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@0) o_4@@0 vint_1) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (len_1 parent_1@@5))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@1) o_4@@0 vint_1) (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@0) o_4@@0 vint_1))))
 :qid |stdinbpl.403:22|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@1) o_4@@0 vint_1))
))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_7156_53) ) (!  (=> true (= (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| QPMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| QPMask@1) o_4@@1 f_5)))
 :qid |stdinbpl.407:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| QPMask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| QPMask@1) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_7169_7170) ) (!  (=> true (= (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| QPMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| QPMask@1) o_4@@2 f_5@@0)))
 :qid |stdinbpl.407:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| QPMask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| QPMask@1) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_10600_1380) ) (!  (=> (not (= f_5@@1 vint_1)) (= (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@1) o_4@@3 f_5@@1)))
 :qid |stdinbpl.407:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@1) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_4665_19576) ) (!  (=> true (= (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| QPMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| QPMask@1) o_4@@4 f_5@@2)))
 :qid |stdinbpl.407:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| QPMask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| QPMask@1) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_4665_19709) ) (!  (=> true (= (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| QPMask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| QPMask@1) o_4@@5 f_5@@3)))
 :qid |stdinbpl.407:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| QPMask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| QPMask@1) o_4@@5 f_5@@3))
))) (state Heap@@25 QPMask@1)) (and (state Heap@@25 QPMask@1) (state Heap@@25 QPMask@1))) (and (=> (= (ControlFlow 0 19) 4) anon18_Then_correct) (=> (= (ControlFlow 0 19) 18) anon18_Else_correct)))))))))))
(let ((anon17_Then_correct true))
(let ((anon16_Else_correct  (and (=> (= (ControlFlow 0 22) (- 0 24)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (and (<= 0 i_9_1) (< i_9_1 (len_1 left_1@@10)))) (and (<= 0 i_9_2) (< i_9_2 (len_1 left_1@@10)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc left_1@@10 i_9_1) (loc left_1@@10 i_9_2))))
 :qid |stdinbpl.329:15|
 :skolemid |32|
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (and (<= 0 i_9_1@@0) (< i_9_1@@0 (len_1 left_1@@10)))) (and (<= 0 i_9_2@@0) (< i_9_2@@0 (len_1 left_1@@10)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (loc left_1@@10 i_9_1@@0) (loc left_1@@10 i_9_2@@0))))
 :qid |stdinbpl.329:15|
 :skolemid |32|
)) (=> (and (forall ((i_9_1@@1 Int) ) (!  (=> (and (and (<= 0 i_9_1@@1) (< i_9_1@@1 (len_1 left_1@@10))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange1 (loc left_1@@10 i_9_1@@1)) (= (invRecv1 (loc left_1@@10 i_9_1@@1)) i_9_1@@1)))
 :qid |stdinbpl.335:22|
 :skolemid |33|
 :pattern ( (loc left_1@@10 i_9_1@@1))
 :pattern ( (loc left_1@@10 i_9_1@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4@@6)) (< (invRecv1 o_4@@6) (len_1 left_1@@10))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4@@6)) (= (loc left_1@@10 (invRecv1 o_4@@6)) o_4@@6))
 :qid |stdinbpl.339:22|
 :skolemid |34|
 :pattern ( (invRecv1 o_4@@6))
))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((i_9_1@@2 Int) ) (!  (=> (and (<= 0 i_9_1@@2) (< i_9_1@@2 (len_1 left_1@@10))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.345:15|
 :skolemid |35|
 :pattern ( (loc left_1@@10 i_9_1@@2))
 :pattern ( (loc left_1@@10 i_9_1@@2))
))) (=> (forall ((i_9_1@@3 Int) ) (!  (=> (and (<= 0 i_9_1@@3) (< i_9_1@@3 (len_1 left_1@@10))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.345:15|
 :skolemid |35|
 :pattern ( (loc left_1@@10 i_9_1@@3))
 :pattern ( (loc left_1@@10 i_9_1@@3))
)) (=> (and (forall ((i_9_1@@4 Int) ) (!  (=> (and (and (<= 0 i_9_1@@4) (< i_9_1@@4 (len_1 left_1@@10))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (loc left_1@@10 i_9_1@@4) null)))
 :qid |stdinbpl.351:22|
 :skolemid |36|
 :pattern ( (loc left_1@@10 i_9_1@@4))
 :pattern ( (loc left_1@@10 i_9_1@@4))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@7)) (< (invRecv1 o_4@@7) (len_1 left_1@@10))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4@@7)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (loc left_1@@10 (invRecv1 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@0) o_4@@7 vint_1) (+ (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| ZeroMask) o_4@@7 vint_1) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@7)) (< (invRecv1 o_4@@7) (len_1 left_1@@10))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4@@7))) (= (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@0) o_4@@7 vint_1) (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| ZeroMask) o_4@@7 vint_1))))
 :qid |stdinbpl.357:22|
 :skolemid |37|
 :pattern ( (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@0) o_4@@7 vint_1))
))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_7156_53) ) (!  (=> true (= (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| ZeroMask) o_4@@8 f_5@@4) (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| QPMask@0) o_4@@8 f_5@@4)))
 :qid |stdinbpl.361:29|
 :skolemid |38|
 :pattern ( (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| ZeroMask) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_7117_4665_53#PolymorphicMapType_7117| QPMask@0) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_7169_7170) ) (!  (=> true (= (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| ZeroMask) o_4@@9 f_5@@5) (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| QPMask@0) o_4@@9 f_5@@5)))
 :qid |stdinbpl.361:29|
 :skolemid |38|
 :pattern ( (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| ZeroMask) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_7117_4665_7170#PolymorphicMapType_7117| QPMask@0) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_10600_1380) ) (!  (=> (not (= f_5@@6 vint_1)) (= (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| ZeroMask) o_4@@10 f_5@@6) (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@0) o_4@@10 f_5@@6)))
 :qid |stdinbpl.361:29|
 :skolemid |38|
 :pattern ( (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| ZeroMask) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_7117_4665_1380#PolymorphicMapType_7117| QPMask@0) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_4665_19576) ) (!  (=> true (= (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| ZeroMask) o_4@@11 f_5@@7) (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| QPMask@0) o_4@@11 f_5@@7)))
 :qid |stdinbpl.361:29|
 :skolemid |38|
 :pattern ( (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| ZeroMask) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_7117_4665_19576#PolymorphicMapType_7117| QPMask@0) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_4665_19709) ) (!  (=> true (= (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| ZeroMask) o_4@@12 f_5@@8) (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| QPMask@0) o_4@@12 f_5@@8)))
 :qid |stdinbpl.361:29|
 :skolemid |38|
 :pattern ( (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| ZeroMask) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_7117_4665_23831#PolymorphicMapType_7117| QPMask@0) o_4@@12 f_5@@8))
))) (and (state Heap@@25 QPMask@0) (state Heap@@25 QPMask@0))) (and (=> (= (ControlFlow 0 22) 2) anon17_Then_correct) (=> (= (ControlFlow 0 22) 19) anon17_Else_correct)))))))))))
(let ((anon16_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@25 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (=> (= (ControlFlow 0 25) 1) anon16_Then_correct) (=> (= (ControlFlow 0 25) 22) anon16_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 26) 25) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
