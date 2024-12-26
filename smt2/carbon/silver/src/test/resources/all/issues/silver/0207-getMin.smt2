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
(declare-sort T@Field_4611_53 0)
(declare-sort T@Field_4624_4625 0)
(declare-sort T@Field_4611_12651 0)
(declare-sort T@Field_4611_12518 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4572 0)) (((PolymorphicMapType_4572 (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| (Array T@Ref T@Field_4611_53 Real)) (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| (Array T@Ref T@Field_4624_4625 Real)) (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| (Array T@Ref T@Field_4611_12518 Real)) (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| (Array T@Ref T@Field_4611_12651 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5100 0)) (((PolymorphicMapType_5100 (|PolymorphicMapType_5100_4611_53#PolymorphicMapType_5100| (Array T@Ref T@Field_4611_53 Bool)) (|PolymorphicMapType_5100_4611_4625#PolymorphicMapType_5100| (Array T@Ref T@Field_4624_4625 Bool)) (|PolymorphicMapType_5100_4611_12518#PolymorphicMapType_5100| (Array T@Ref T@Field_4611_12518 Bool)) (|PolymorphicMapType_5100_4611_13631#PolymorphicMapType_5100| (Array T@Ref T@Field_4611_12651 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4551 0)) (((PolymorphicMapType_4551 (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| (Array T@Ref T@Field_4611_53 Bool)) (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| (Array T@Ref T@Field_4624_4625 T@Ref)) (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| (Array T@Ref T@Field_4611_12651 T@PolymorphicMapType_5100)) (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| (Array T@Ref T@Field_4611_12518 T@FrameType)) ) ) ))
(declare-sort T@BSTDomainType 0)
(declare-fun value_2 (T@BSTDomainType) Int)
(declare-fun isParent (T@BSTDomainType T@BSTDomainType) Bool)
(declare-fun left_2 (T@BSTDomainType) T@BSTDomainType)
(declare-fun nullNode () T@BSTDomainType)
(declare-fun right_2 (T@BSTDomainType) T@BSTDomainType)
(declare-fun succHeap (T@PolymorphicMapType_4551 T@PolymorphicMapType_4551) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4551 T@PolymorphicMapType_4551) Bool)
(declare-fun state (T@PolymorphicMapType_4551 T@PolymorphicMapType_4572) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4572) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5100)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4551 T@PolymorphicMapType_4551 T@PolymorphicMapType_4572) Bool)
(declare-fun IsPredicateField_4611_12609 (T@Field_4611_12518) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4611 (T@Field_4611_12518) T@Field_4611_12651)
(declare-fun HasDirectPerm_4611_12582 (T@PolymorphicMapType_4572 T@Ref T@Field_4611_12518) Bool)
(declare-fun IsWandField_4611_14158 (T@Field_4611_12518) Bool)
(declare-fun WandMaskField_4611 (T@Field_4611_12518) T@Field_4611_12651)
(declare-fun dummyHeap () T@PolymorphicMapType_4551)
(declare-fun ZeroMask () T@PolymorphicMapType_4572)
(declare-fun $allocated () T@Field_4611_53)
(declare-fun InsidePredicate_4611_4611 (T@Field_4611_12518 T@FrameType T@Field_4611_12518 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4611_17121 (T@Field_4611_12651) Bool)
(declare-fun IsWandField_4611_17137 (T@Field_4611_12651) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4611_4625 (T@Field_4624_4625) Bool)
(declare-fun IsWandField_4611_4625 (T@Field_4624_4625) Bool)
(declare-fun IsPredicateField_4611_53 (T@Field_4611_53) Bool)
(declare-fun IsWandField_4611_53 (T@Field_4611_53) Bool)
(declare-fun HasDirectPerm_4611_17492 (T@PolymorphicMapType_4572 T@Ref T@Field_4611_12651) Bool)
(declare-fun HasDirectPerm_4611_4625 (T@PolymorphicMapType_4572 T@Ref T@Field_4624_4625) Bool)
(declare-fun HasDirectPerm_4611_53 (T@PolymorphicMapType_4572 T@Ref T@Field_4611_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4572 T@PolymorphicMapType_4572 T@PolymorphicMapType_4572) Bool)
(assert (forall ((t_2 T@BSTDomainType) (c T@BSTDomainType) ) (!  (=> (and (not (= t_2 nullNode)) (and (not (= c nullNode)) (isParent (left_2 t_2) c))) (< (value_2 c) (value_2 t_2)))
 :qid |stdinbpl.218:15|
 :skolemid |23|
 :pattern ( (value_2 t_2) (value_2 c))
 :pattern ( (isParent (left_2 t_2) c))
)))
(assert (forall ((t_2@@0 T@BSTDomainType) (c@@0 T@BSTDomainType) ) (!  (=> (and (not (= t_2@@0 nullNode)) (and (not (= c@@0 nullNode)) (isParent (right_2 t_2@@0) c@@0))) (> (value_2 c@@0) (value_2 t_2@@0)))
 :qid |stdinbpl.224:15|
 :skolemid |24|
 :pattern ( (value_2 t_2@@0) (value_2 c@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_4551) (Heap1 T@PolymorphicMapType_4551) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4551) (Mask T@PolymorphicMapType_4572) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4551) (Heap1@@0 T@PolymorphicMapType_4551) (Heap2 T@PolymorphicMapType_4551) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4611_12651) ) (!  (not (select (|PolymorphicMapType_5100_4611_13631#PolymorphicMapType_5100| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_4611_13631#PolymorphicMapType_5100| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4611_12518) ) (!  (not (select (|PolymorphicMapType_5100_4611_12518#PolymorphicMapType_5100| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_4611_12518#PolymorphicMapType_5100| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4624_4625) ) (!  (not (select (|PolymorphicMapType_5100_4611_4625#PolymorphicMapType_5100| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_4611_4625#PolymorphicMapType_5100| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4611_53) ) (!  (not (select (|PolymorphicMapType_5100_4611_53#PolymorphicMapType_5100| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_4611_53#PolymorphicMapType_5100| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((t_2@@1 T@BSTDomainType) ) (!  (=> (not (= (left_2 t_2@@1) nullNode)) (> (value_2 t_2@@1) (value_2 (left_2 t_2@@1))))
 :qid |stdinbpl.212:15|
 :skolemid |22|
 :pattern ( (value_2 t_2@@1) (value_2 (left_2 t_2@@1)))
)))
(assert (forall ((t_2@@2 T@BSTDomainType) ) (!  (and (isParent t_2@@2 (left_2 t_2@@2)) (isParent t_2@@2 (right_2 t_2@@2)))
 :qid |stdinbpl.236:15|
 :skolemid |26|
 :pattern ( (isParent t_2@@2 (left_2 t_2@@2)))
 :pattern ( (isParent t_2@@2 (right_2 t_2@@2)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4551) (ExhaleHeap T@PolymorphicMapType_4551) (Mask@@0 T@PolymorphicMapType_4572) (pm_f_9 T@Field_4611_12518) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4611_12582 Mask@@0 null pm_f_9) (IsPredicateField_4611_12609 pm_f_9)) (= (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@0) null (PredicateMaskField_4611 pm_f_9)) (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| ExhaleHeap) null (PredicateMaskField_4611 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4611_12609 pm_f_9) (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| ExhaleHeap) null (PredicateMaskField_4611 pm_f_9)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4551) (ExhaleHeap@@0 T@PolymorphicMapType_4551) (Mask@@1 T@PolymorphicMapType_4572) (pm_f_9@@0 T@Field_4611_12518) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4611_12582 Mask@@1 null pm_f_9@@0) (IsWandField_4611_14158 pm_f_9@@0)) (= (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@1) null (WandMaskField_4611 pm_f_9@@0)) (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| ExhaleHeap@@0) null (WandMaskField_4611 pm_f_9@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4611_14158 pm_f_9@@0) (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| ExhaleHeap@@0) null (WandMaskField_4611 pm_f_9@@0)))
)))
(assert (forall ((p_1 T@BSTDomainType) (c@@1 T@BSTDomainType) ) (!  (=> (isParent p_1 c@@1) (and (isParent p_1 (left_2 c@@1)) (isParent p_1 (right_2 c@@1))))
 :qid |stdinbpl.242:15|
 :skolemid |27|
 :pattern ( (isParent p_1 (left_2 c@@1)))
 :pattern ( (isParent p_1 (right_2 c@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4551) (ExhaleHeap@@1 T@PolymorphicMapType_4551) (Mask@@2 T@PolymorphicMapType_4572) (pm_f_9@@1 T@Field_4611_12518) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4611_12582 Mask@@2 null pm_f_9@@1) (IsPredicateField_4611_12609 pm_f_9@@1)) (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_4611_53) ) (!  (=> (select (|PolymorphicMapType_5100_4611_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@2) null (PredicateMaskField_4611 pm_f_9@@1))) o2_9 f_24) (= (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@2) o2_9 f_24) (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| ExhaleHeap@@1) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| ExhaleHeap@@1) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_4624_4625) ) (!  (=> (select (|PolymorphicMapType_5100_4611_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@2) null (PredicateMaskField_4611 pm_f_9@@1))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@2) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| ExhaleHeap@@1) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| ExhaleHeap@@1) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_4611_12518) ) (!  (=> (select (|PolymorphicMapType_5100_4611_12518#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@2) null (PredicateMaskField_4611 pm_f_9@@1))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| Heap@@2) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| ExhaleHeap@@1) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| ExhaleHeap@@1) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_4611_12651) ) (!  (=> (select (|PolymorphicMapType_5100_4611_13631#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@2) null (PredicateMaskField_4611 pm_f_9@@1))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@2) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| ExhaleHeap@@1) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| ExhaleHeap@@1) o2_9@@2 f_24@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4611_12609 pm_f_9@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4551) (ExhaleHeap@@2 T@PolymorphicMapType_4551) (Mask@@3 T@PolymorphicMapType_4572) (pm_f_9@@2 T@Field_4611_12518) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4611_12582 Mask@@3 null pm_f_9@@2) (IsWandField_4611_14158 pm_f_9@@2)) (and (and (and (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_4611_53) ) (!  (=> (select (|PolymorphicMapType_5100_4611_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@3) null (WandMaskField_4611 pm_f_9@@2))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@3) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| ExhaleHeap@@2) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| ExhaleHeap@@2) o2_9@@3 f_24@@3))
)) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_4624_4625) ) (!  (=> (select (|PolymorphicMapType_5100_4611_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@3) null (WandMaskField_4611 pm_f_9@@2))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@3) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| ExhaleHeap@@2) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| ExhaleHeap@@2) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_4611_12518) ) (!  (=> (select (|PolymorphicMapType_5100_4611_12518#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@3) null (WandMaskField_4611 pm_f_9@@2))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| Heap@@3) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| ExhaleHeap@@2) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| ExhaleHeap@@2) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_4611_12651) ) (!  (=> (select (|PolymorphicMapType_5100_4611_13631#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@3) null (WandMaskField_4611 pm_f_9@@2))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@3) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| ExhaleHeap@@2) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| ExhaleHeap@@2) o2_9@@6 f_24@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4611_14158 pm_f_9@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4551) (ExhaleHeap@@3 T@PolymorphicMapType_4551) (Mask@@4 T@PolymorphicMapType_4572) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@4) o_27 $allocated) (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| ExhaleHeap@@3) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| ExhaleHeap@@3) o_27 $allocated))
)))
(assert (forall ((p T@Field_4611_12518) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4611_4611 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4611_4611 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4551) (ExhaleHeap@@4 T@PolymorphicMapType_4551) (Mask@@5 T@PolymorphicMapType_4572) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4572) (o_2@@3 T@Ref) (f_4@@3 T@Field_4611_12651) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4611_17121 f_4@@3))) (not (IsWandField_4611_17137 f_4@@3))) (<= (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4572) (o_2@@4 T@Ref) (f_4@@4 T@Field_4611_12518) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4611_12609 f_4@@4))) (not (IsWandField_4611_14158 f_4@@4))) (<= (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4572) (o_2@@5 T@Ref) (f_4@@5 T@Field_4624_4625) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4611_4625 f_4@@5))) (not (IsWandField_4611_4625 f_4@@5))) (<= (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4572) (o_2@@6 T@Ref) (f_4@@6 T@Field_4611_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4611_53 f_4@@6))) (not (IsWandField_4611_53 f_4@@6))) (<= (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((p_1@@0 T@BSTDomainType) (c@@2 T@BSTDomainType) ) (!  (=> (and (not (= p_1@@0 nullNode)) (and (isParent p_1@@0 c@@2) (> (value_2 p_1@@0) (value_2 c@@2)))) (and (not (= (left_2 p_1@@0) nullNode)) (isParent (left_2 p_1@@0) c@@2)))
 :qid |stdinbpl.248:15|
 :skolemid |28|
 :pattern ( (isParent (left_2 p_1@@0) c@@2))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4572) (o_2@@7 T@Ref) (f_4@@7 T@Field_4611_12651) ) (! (= (HasDirectPerm_4611_17492 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4611_17492 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4572) (o_2@@8 T@Ref) (f_4@@8 T@Field_4611_12518) ) (! (= (HasDirectPerm_4611_12582 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4611_12582 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4572) (o_2@@9 T@Ref) (f_4@@9 T@Field_4624_4625) ) (! (= (HasDirectPerm_4611_4625 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4611_4625 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4572) (o_2@@10 T@Ref) (f_4@@10 T@Field_4611_53) ) (! (= (HasDirectPerm_4611_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4611_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4551) (ExhaleHeap@@5 T@PolymorphicMapType_4551) (Mask@@14 T@PolymorphicMapType_4572) (o_27@@0 T@Ref) (f_24@@7 T@Field_4611_12651) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_4611_17492 Mask@@14 o_27@@0 f_24@@7) (= (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@6) o_27@@0 f_24@@7) (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| ExhaleHeap@@5) o_27@@0 f_24@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| ExhaleHeap@@5) o_27@@0 f_24@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4551) (ExhaleHeap@@6 T@PolymorphicMapType_4551) (Mask@@15 T@PolymorphicMapType_4572) (o_27@@1 T@Ref) (f_24@@8 T@Field_4611_12518) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_4611_12582 Mask@@15 o_27@@1 f_24@@8) (= (select (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| Heap@@7) o_27@@1 f_24@@8) (select (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| ExhaleHeap@@6) o_27@@1 f_24@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| ExhaleHeap@@6) o_27@@1 f_24@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4551) (ExhaleHeap@@7 T@PolymorphicMapType_4551) (Mask@@16 T@PolymorphicMapType_4572) (o_27@@2 T@Ref) (f_24@@9 T@Field_4624_4625) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_4611_4625 Mask@@16 o_27@@2 f_24@@9) (= (select (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@8) o_27@@2 f_24@@9) (select (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| ExhaleHeap@@7) o_27@@2 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| ExhaleHeap@@7) o_27@@2 f_24@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4551) (ExhaleHeap@@8 T@PolymorphicMapType_4551) (Mask@@17 T@PolymorphicMapType_4572) (o_27@@3 T@Ref) (f_24@@10 T@Field_4611_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_4611_53 Mask@@17 o_27@@3 f_24@@10) (= (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@9) o_27@@3 f_24@@10) (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| ExhaleHeap@@8) o_27@@3 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| ExhaleHeap@@8) o_27@@3 f_24@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4611_12651) ) (! (= (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4611_12518) ) (! (= (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_4624_4625) ) (! (= (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4611_53) ) (! (= (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4572) (SummandMask1 T@PolymorphicMapType_4572) (SummandMask2 T@PolymorphicMapType_4572) (o_2@@15 T@Ref) (f_4@@15 T@Field_4611_12651) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4572_4611_16212#PolymorphicMapType_4572| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4572) (SummandMask1@@0 T@PolymorphicMapType_4572) (SummandMask2@@0 T@PolymorphicMapType_4572) (o_2@@16 T@Ref) (f_4@@16 T@Field_4611_12518) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4572_4611_12518#PolymorphicMapType_4572| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4572) (SummandMask1@@1 T@PolymorphicMapType_4572) (SummandMask2@@1 T@PolymorphicMapType_4572) (o_2@@17 T@Ref) (f_4@@17 T@Field_4624_4625) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4572_4611_4625#PolymorphicMapType_4572| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4572) (SummandMask1@@2 T@PolymorphicMapType_4572) (SummandMask2@@2 T@PolymorphicMapType_4572) (o_2@@18 T@Ref) (f_4@@18 T@Field_4611_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4572_4611_53#PolymorphicMapType_4572| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4551) (o_20 T@Ref) (f_31 T@Field_4611_12518) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@10) (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@10) (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@10) (store (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| Heap@@10) o_20 f_31 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@10) (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@10) (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@10) (store (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| Heap@@10) o_20 f_31 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4551) (o_20@@0 T@Ref) (f_31@@0 T@Field_4611_12651) (v@@0 T@PolymorphicMapType_5100) ) (! (succHeap Heap@@11 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@11) (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@11) (store (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@11) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@11) (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@11) (store (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@11) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4551) (o_20@@1 T@Ref) (f_31@@1 T@Field_4624_4625) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@12) (store (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@12) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@12) (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@12) (store (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@12) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@12) (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4551) (o_20@@2 T@Ref) (f_31@@2 T@Field_4611_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_4551 (store (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@13) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@13) (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@13) (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (store (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@13) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@13) (|PolymorphicMapType_4551_4611_12695#PolymorphicMapType_4551| Heap@@13) (|PolymorphicMapType_4551_4611_12518#PolymorphicMapType_4551| Heap@@13)))
)))
(assert (forall ((o_20@@3 T@Ref) (f_17 T@Field_4624_4625) (Heap@@14 T@PolymorphicMapType_4551) ) (!  (=> (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@14) o_20@@3 $allocated) (select (|PolymorphicMapType_4551_2758_53#PolymorphicMapType_4551| Heap@@14) (select (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@14) o_20@@3 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4551_2761_2762#PolymorphicMapType_4551| Heap@@14) o_20@@3 f_17))
)))
(assert (forall ((p@@1 T@Field_4611_12518) (v_1@@0 T@FrameType) (q T@Field_4611_12518) (w@@0 T@FrameType) (r T@Field_4611_12518) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4611_4611 p@@1 v_1@@0 q w@@0) (InsidePredicate_4611_4611 q w@@0 r u)) (InsidePredicate_4611_4611 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4611_4611 p@@1 v_1@@0 q w@@0) (InsidePredicate_4611_4611 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((t_2@@3 T@BSTDomainType) ) (! (isParent t_2@@3 t_2@@3)
 :qid |stdinbpl.230:15|
 :skolemid |25|
 :pattern ( (isParent t_2@@3 t_2@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_4551)
(declare-fun t_2@@4 () T@BSTDomainType)
(declare-fun Heap@@15 () T@PolymorphicMapType_4551)
(set-info :boogie-vc-id getMin)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon37_Else_correct true))
(let ((anon37_Then_correct true))
(let ((anon36_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 8) 6) anon37_Then_correct) (=> (= (ControlFlow 0 8) 7) anon37_Else_correct)))))
(let ((anon36_Else_correct true))
(let ((anon35_Else_correct  (=> (and (forall ((t1_1_1 T@BSTDomainType) ) (!  (or (= t1_1_1 t_2@@4) (not (isParent t1_1_1 t_2@@4)))
 :qid |stdinbpl.317:20|
 :skolemid |29|
 :pattern ( (isParent t1_1_1 t_2@@4))
)) (state Heap@@15 ZeroMask)) (and (=> (= (ControlFlow 0 9) 8) anon36_Then_correct) (=> (= (ControlFlow 0 9) 3) anon36_Else_correct)))))
(let ((anon35_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (not (= t_2@@4 nullNode)) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 10) 1) anon35_Then_correct) (=> (= (ControlFlow 0 10) 9) anon35_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
