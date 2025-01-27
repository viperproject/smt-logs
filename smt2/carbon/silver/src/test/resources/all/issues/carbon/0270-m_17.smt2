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
(declare-sort T@Field_4649_53 0)
(declare-sort T@Field_4662_4663 0)
(declare-sort T@Field_4649_12710 0)
(declare-sort T@Field_4649_12577 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4610 0)) (((PolymorphicMapType_4610 (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| (Array T@Ref T@Field_4662_4663 Real)) (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| (Array T@Ref T@Field_4649_53 Real)) (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| (Array T@Ref T@Field_4649_12577 Real)) (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| (Array T@Ref T@Field_4649_12710 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5154 0)) (((PolymorphicMapType_5154 (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| (Array T@Ref T@Field_4649_53 Bool)) (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| (Array T@Ref T@Field_4662_4663 Bool)) (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| (Array T@Ref T@Field_4649_12577 Bool)) (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| (Array T@Ref T@Field_4649_12710 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4589 0)) (((PolymorphicMapType_4589 (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| (Array T@Ref T@Field_4649_53 Bool)) (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| (Array T@Ref T@Field_4662_4663 T@Ref)) (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| (Array T@Ref T@Field_4649_12710 T@PolymorphicMapType_5154)) (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| (Array T@Ref T@Field_4649_12577 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4649_53)
(declare-fun g () T@Field_4662_4663)
(declare-fun succHeap (T@PolymorphicMapType_4589 T@PolymorphicMapType_4589) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4589 T@PolymorphicMapType_4589) Bool)
(declare-fun state (T@PolymorphicMapType_4589 T@PolymorphicMapType_4610) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4610) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5154)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4589 T@PolymorphicMapType_4589 T@PolymorphicMapType_4610) Bool)
(declare-fun IsPredicateField_4649_12668 (T@Field_4649_12577) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4649 (T@Field_4649_12577) T@Field_4649_12710)
(declare-fun HasDirectPerm_4649_12641 (T@PolymorphicMapType_4610 T@Ref T@Field_4649_12577) Bool)
(declare-fun IsWandField_4649_14217 (T@Field_4649_12577) Bool)
(declare-fun WandMaskField_4649 (T@Field_4649_12577) T@Field_4649_12710)
(declare-fun IdenticalOnKnownLocationsLiberal (T@PolymorphicMapType_4589 T@PolymorphicMapType_4589 T@PolymorphicMapType_4610) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_4589)
(declare-fun ZeroMask () T@PolymorphicMapType_4610)
(declare-fun InsidePredicate_4649_4649 (T@Field_4649_12577 T@FrameType T@Field_4649_12577 T@FrameType) Bool)
(declare-fun IsPredicateField_2267_2268 (T@Field_4662_4663) Bool)
(declare-fun IsWandField_2267_2268 (T@Field_4662_4663) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2267_23197 (T@Field_4649_12710) Bool)
(declare-fun IsWandField_2267_23213 (T@Field_4649_12710) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2267_53 (T@Field_4649_53) Bool)
(declare-fun IsWandField_2267_53 (T@Field_4649_53) Bool)
(declare-fun HasDirectPerm_4649_16652 (T@PolymorphicMapType_4610 T@Ref T@Field_4649_12710) Bool)
(declare-fun HasDirectPerm_4649_4663 (T@PolymorphicMapType_4610 T@Ref T@Field_4662_4663) Bool)
(declare-fun HasDirectPerm_4649_53 (T@PolymorphicMapType_4610 T@Ref T@Field_4649_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4610 T@PolymorphicMapType_4610 T@PolymorphicMapType_4610) Bool)
(declare-fun SumHeap (T@PolymorphicMapType_4589 T@PolymorphicMapType_4589 T@PolymorphicMapType_4610 T@PolymorphicMapType_4589 T@PolymorphicMapType_4610) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4589) (Heap1 T@PolymorphicMapType_4589) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.95:15|
 :skolemid |12|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4589) (Mask T@PolymorphicMapType_4610) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.182:15|
 :skolemid |27|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4589) (Heap1@@0 T@PolymorphicMapType_4589) (Heap2 T@PolymorphicMapType_4589) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.100:15|
 :skolemid |13|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4649_12710) ) (!  (not (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4649_12577) ) (!  (not (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4662_4663) ) (!  (not (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4649_53) ) (!  (not (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4589) (ExhaleHeap T@PolymorphicMapType_4589) (Mask@@0 T@PolymorphicMapType_4610) (pm_f_1 T@Field_4649_12577) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4649_12641 Mask@@0 null pm_f_1) (IsPredicateField_4649_12668 pm_f_1)) (= (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@0) null (PredicateMaskField_4649 pm_f_1)) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap) null (PredicateMaskField_4649 pm_f_1)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4649_12668 pm_f_1) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap) null (PredicateMaskField_4649 pm_f_1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4589) (ExhaleHeap@@0 T@PolymorphicMapType_4589) (Mask@@1 T@PolymorphicMapType_4610) (pm_f_1@@0 T@Field_4649_12577) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4649_12641 Mask@@1 null pm_f_1@@0) (IsWandField_4649_14217 pm_f_1@@0)) (= (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@1) null (WandMaskField_4649 pm_f_1@@0)) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@0) null (WandMaskField_4649 pm_f_1@@0)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4649_14217 pm_f_1@@0) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@0) null (WandMaskField_4649 pm_f_1@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4589) (ExhaleHeap@@1 T@PolymorphicMapType_4589) (Mask@@2 T@PolymorphicMapType_4610) (pm_f_1@@1 T@Field_4649_12577) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4649_12641 Mask@@2 null pm_f_1@@1) (IsPredicateField_4649_12668 pm_f_1@@1)) (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_4649_53) ) (!  (=> (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@2) null (PredicateMaskField_4649 pm_f_1@@1))) o2_1 f_9) (= (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@2) o2_1 f_9) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@1) o2_1 f_9)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@1) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_4662_4663) ) (!  (=> (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@2) null (PredicateMaskField_4649 pm_f_1@@1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@2) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@1) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@1) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_4649_12577) ) (!  (=> (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@2) null (PredicateMaskField_4649 pm_f_1@@1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@2) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@1) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@1) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_4649_12710) ) (!  (=> (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@2) null (PredicateMaskField_4649 pm_f_1@@1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@2) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@1) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@1) o2_1@@2 f_9@@2))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4649_12668 pm_f_1@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4589) (ExhaleHeap@@2 T@PolymorphicMapType_4589) (Mask@@3 T@PolymorphicMapType_4610) (pm_f_1@@2 T@Field_4649_12577) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4649_12641 Mask@@3 null pm_f_1@@2) (IsWandField_4649_14217 pm_f_1@@2)) (and (and (and (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_4649_53) ) (!  (=> (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@3) null (WandMaskField_4649 pm_f_1@@2))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@3) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@2) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@2) o2_1@@3 f_9@@3))
)) (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_4662_4663) ) (!  (=> (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@3) null (WandMaskField_4649 pm_f_1@@2))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@3) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@2) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@2) o2_1@@4 f_9@@4))
))) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_4649_12577) ) (!  (=> (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@3) null (WandMaskField_4649 pm_f_1@@2))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@3) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@2) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@2) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_4649_12710) ) (!  (=> (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@3) null (WandMaskField_4649 pm_f_1@@2))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@3) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@2) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@2) o2_1@@6 f_9@@6))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4649_14217 pm_f_1@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4589) (ExhaleHeap@@3 T@PolymorphicMapType_4589) (Mask@@4 T@PolymorphicMapType_4610) (pm_f_20 T@Field_4649_12577) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_4649_12641 Mask@@4 null pm_f_20) (IsPredicateField_4649_12668 pm_f_20)) (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_4649_53) ) (!  (=> (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@4) null (PredicateMaskField_4649 pm_f_20))) o2_20 f_53) (= (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@4) o2_20 f_53) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@3) o2_20 f_53)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@3) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_4662_4663) ) (!  (=> (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@4) null (PredicateMaskField_4649 pm_f_20))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@4) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@3) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@3) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_4649_12577) ) (!  (=> (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@4) null (PredicateMaskField_4649 pm_f_20))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@4) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@3) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@3) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_4649_12710) ) (!  (=> (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@4) null (PredicateMaskField_4649 pm_f_20))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@4) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@3) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@3) o2_20@@2 f_53@@2))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4649_12668 pm_f_20))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4589) (ExhaleHeap@@4 T@PolymorphicMapType_4589) (Mask@@5 T@PolymorphicMapType_4610) (pm_f_20@@0 T@Field_4649_12577) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4649_12641 Mask@@5 null pm_f_20@@0) (IsWandField_4649_14217 pm_f_20@@0)) (and (and (and (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_4649_53) ) (!  (=> (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@5) null (WandMaskField_4649 pm_f_20@@0))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@5) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@4) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@4) o2_20@@3 f_53@@3))
)) (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_4662_4663) ) (!  (=> (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@5) null (WandMaskField_4649 pm_f_20@@0))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@5) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@4) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@4) o2_20@@4 f_53@@4))
))) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_4649_12577) ) (!  (=> (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@5) null (WandMaskField_4649 pm_f_20@@0))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@5) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@4) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@4) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_4649_12710) ) (!  (=> (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@5) null (WandMaskField_4649 pm_f_20@@0))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@5) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@4) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@4) o2_20@@6 f_53@@6))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_4649_14217 pm_f_20@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4589) (ExhaleHeap@@5 T@PolymorphicMapType_4589) (Mask@@6 T@PolymorphicMapType_4610) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@6) o_4 $allocated) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@5) o_4 $allocated)))
 :qid |stdinbpl.75:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@5) o_4 $allocated))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4589) (ExhaleHeap@@6 T@PolymorphicMapType_4589) (Mask@@7 T@PolymorphicMapType_4610) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@7) o_41 $allocated) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@6) o_41 $allocated)))
 :qid |stdinbpl.142:15|
 :skolemid |23|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@6) o_41 $allocated))
)))
(assert (forall ((p T@Field_4649_12577) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4649_4649 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_4649_4649 p v_1 p w))
)))
(assert  (not (IsPredicateField_2267_2268 g)))
(assert  (not (IsWandField_2267_2268 g)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4589) (ExhaleHeap@@7 T@PolymorphicMapType_4589) (Mask@@8 T@PolymorphicMapType_4610) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (succHeap Heap@@8 ExhaleHeap@@7))
 :qid |stdinbpl.85:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4589) (ExhaleHeap@@8 T@PolymorphicMapType_4589) (Mask@@9 T@PolymorphicMapType_4610) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@9 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@9 ExhaleHeap@@8))
 :qid |stdinbpl.90:15|
 :skolemid |11|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@9 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4589) (ExhaleHeap@@9 T@PolymorphicMapType_4589) (Mask@@10 T@PolymorphicMapType_4610) (pm_f_20@@1 T@Field_4649_12577) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_4649_12641 Mask@@10 null pm_f_20@@1) (IsPredicateField_4649_12668 pm_f_20@@1)) (and (and (and (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_4649_53) ) (!  (=> (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@10) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@9) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@7 f_53@@7))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@9) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@7 f_53@@7))
)) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_4662_4663) ) (!  (=> (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@10) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@9) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@8 f_53@@8))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@9) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@8 f_53@@8))
))) (forall ((o2_20@@9 T@Ref) (f_53@@9 T@Field_4649_12577) ) (!  (=> (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@10) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@9 f_53@@9) (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@9) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@9 f_53@@9))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@9) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@9 f_53@@9))
))) (forall ((o2_20@@10 T@Ref) (f_53@@10 T@Field_4649_12710) ) (!  (=> (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@10) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@10 f_53@@10) (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@9) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@10 f_53@@10))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@9) null (PredicateMaskField_4649 pm_f_20@@1))) o2_20@@10 f_53@@10))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@10) (IsPredicateField_4649_12668 pm_f_20@@1) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@9) null (PredicateMaskField_4649 pm_f_20@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4589) (ExhaleHeap@@10 T@PolymorphicMapType_4589) (Mask@@11 T@PolymorphicMapType_4610) (pm_f_20@@2 T@Field_4649_12577) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_4649_12641 Mask@@11 null pm_f_20@@2) (IsWandField_4649_14217 pm_f_20@@2)) (and (and (and (forall ((o2_20@@11 T@Ref) (f_53@@11 T@Field_4649_53) ) (!  (=> (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@11) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@11 f_53@@11) (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@10) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@11 f_53@@11))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_5154_4649_53#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@10) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@11 f_53@@11))
)) (forall ((o2_20@@12 T@Ref) (f_53@@12 T@Field_4662_4663) ) (!  (=> (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@11) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@12 f_53@@12) (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@10) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@12 f_53@@12))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_5154_4649_4663#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@10) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@12 f_53@@12))
))) (forall ((o2_20@@13 T@Ref) (f_53@@13 T@Field_4649_12577) ) (!  (=> (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@11) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@13 f_53@@13) (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@10) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@13 f_53@@13))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_5154_4649_12577#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@10) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@13 f_53@@13))
))) (forall ((o2_20@@14 T@Ref) (f_53@@14 T@Field_4649_12710) ) (!  (=> (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@11) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@14 f_53@@14) (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@10) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@14 f_53@@14))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_5154_4649_13690#PolymorphicMapType_5154| (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@10) null (WandMaskField_4649 pm_f_20@@2))) o2_20@@14 f_53@@14))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@11) (IsWandField_4649_14217 pm_f_20@@2) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@10) null (WandMaskField_4649 pm_f_20@@2)))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4610) (o_2@@3 T@Ref) (f_4@@3 T@Field_4649_12710) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2267_23197 f_4@@3))) (not (IsWandField_2267_23213 f_4@@3))) (<= (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4610) (o_2@@4 T@Ref) (f_4@@4 T@Field_4649_12577) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4649_12668 f_4@@4))) (not (IsWandField_4649_14217 f_4@@4))) (<= (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4610) (o_2@@5 T@Ref) (f_4@@5 T@Field_4649_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2267_53 f_4@@5))) (not (IsWandField_2267_53 f_4@@5))) (<= (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4610) (o_2@@6 T@Ref) (f_4@@6 T@Field_4662_4663) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2267_2268 f_4@@6))) (not (IsWandField_2267_2268 f_4@@6))) (<= (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4610) (o_2@@7 T@Ref) (f_4@@7 T@Field_4649_12710) ) (! (= (HasDirectPerm_4649_16652 Mask@@16 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| Mask@@16) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_4649_16652 Mask@@16 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4610) (o_2@@8 T@Ref) (f_4@@8 T@Field_4649_12577) ) (! (= (HasDirectPerm_4649_12641 Mask@@17 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| Mask@@17) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_4649_12641 Mask@@17 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4610) (o_2@@9 T@Ref) (f_4@@9 T@Field_4662_4663) ) (! (= (HasDirectPerm_4649_4663 Mask@@18 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| Mask@@18) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_4649_4663 Mask@@18 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4610) (o_2@@10 T@Ref) (f_4@@10 T@Field_4649_53) ) (! (= (HasDirectPerm_4649_53 Mask@@19 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| Mask@@19) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_4649_53 Mask@@19 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |31|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4589) (ExhaleHeap@@11 T@PolymorphicMapType_4589) (Mask@@20 T@PolymorphicMapType_4610) (o_4@@0 T@Ref) (f_9@@7 T@Field_4649_12710) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@20) (=> (HasDirectPerm_4649_16652 Mask@@20 o_4@@0 f_9@@7) (= (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@12) o_4@@0 f_9@@7) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@11) o_4@@0 f_9@@7))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@20) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@11) o_4@@0 f_9@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4589) (ExhaleHeap@@12 T@PolymorphicMapType_4589) (Mask@@21 T@PolymorphicMapType_4610) (o_4@@1 T@Ref) (f_9@@8 T@Field_4649_12577) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@21) (=> (HasDirectPerm_4649_12641 Mask@@21 o_4@@1 f_9@@8) (= (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@13) o_4@@1 f_9@@8) (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@12) o_4@@1 f_9@@8))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@21) (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@12) o_4@@1 f_9@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4589) (ExhaleHeap@@13 T@PolymorphicMapType_4589) (Mask@@22 T@PolymorphicMapType_4610) (o_4@@2 T@Ref) (f_9@@9 T@Field_4662_4663) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@22) (=> (HasDirectPerm_4649_4663 Mask@@22 o_4@@2 f_9@@9) (= (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@14) o_4@@2 f_9@@9) (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@13) o_4@@2 f_9@@9))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@22) (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@13) o_4@@2 f_9@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4589) (ExhaleHeap@@14 T@PolymorphicMapType_4589) (Mask@@23 T@PolymorphicMapType_4610) (o_4@@3 T@Ref) (f_9@@10 T@Field_4649_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@23) (=> (HasDirectPerm_4649_53 Mask@@23 o_4@@3 f_9@@10) (= (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@15) o_4@@3 f_9@@10) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@14) o_4@@3 f_9@@10))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@23) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@14) o_4@@3 f_9@@10))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4589) (ExhaleHeap@@15 T@PolymorphicMapType_4589) (Mask@@24 T@PolymorphicMapType_4610) (o_41@@0 T@Ref) (f_53@@15 T@Field_4649_12710) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@15 Mask@@24) (=> (HasDirectPerm_4649_16652 Mask@@24 o_41@@0 f_53@@15) (= (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@16) o_41@@0 f_53@@15) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@15) o_41@@0 f_53@@15))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@15 Mask@@24) (select (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| ExhaleHeap@@15) o_41@@0 f_53@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4589) (ExhaleHeap@@16 T@PolymorphicMapType_4589) (Mask@@25 T@PolymorphicMapType_4610) (o_41@@1 T@Ref) (f_53@@16 T@Field_4649_12577) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@25) (=> (HasDirectPerm_4649_12641 Mask@@25 o_41@@1 f_53@@16) (= (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@17) o_41@@1 f_53@@16) (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@16) o_41@@1 f_53@@16))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@25) (select (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| ExhaleHeap@@16) o_41@@1 f_53@@16))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4589) (ExhaleHeap@@17 T@PolymorphicMapType_4589) (Mask@@26 T@PolymorphicMapType_4610) (o_41@@2 T@Ref) (f_53@@17 T@Field_4662_4663) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@26) (=> (HasDirectPerm_4649_4663 Mask@@26 o_41@@2 f_53@@17) (= (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@18) o_41@@2 f_53@@17) (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@17) o_41@@2 f_53@@17))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@26) (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| ExhaleHeap@@17) o_41@@2 f_53@@17))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4589) (ExhaleHeap@@18 T@PolymorphicMapType_4589) (Mask@@27 T@PolymorphicMapType_4610) (o_41@@3 T@Ref) (f_53@@18 T@Field_4649_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@27) (=> (HasDirectPerm_4649_53 Mask@@27 o_41@@3 f_53@@18) (= (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@19) o_41@@3 f_53@@18) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@18) o_41@@3 f_53@@18))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@27) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| ExhaleHeap@@18) o_41@@3 f_53@@18))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4649_12710) ) (! (= (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4649_12577) ) (! (= (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_4649_53) ) (! (= (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4662_4663) ) (! (= (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4610) (SummandMask1 T@PolymorphicMapType_4610) (SummandMask2 T@PolymorphicMapType_4610) (o_2@@15 T@Ref) (f_4@@15 T@Field_4649_12710) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4610) (SummandMask1@@0 T@PolymorphicMapType_4610) (SummandMask2@@0 T@PolymorphicMapType_4610) (o_2@@16 T@Ref) (f_4@@16 T@Field_4649_12577) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4610) (SummandMask1@@1 T@PolymorphicMapType_4610) (SummandMask2@@1 T@PolymorphicMapType_4610) (o_2@@17 T@Ref) (f_4@@17 T@Field_4649_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4610) (SummandMask1@@2 T@PolymorphicMapType_4610) (SummandMask2@@2 T@PolymorphicMapType_4610) (o_2@@18 T@Ref) (f_4@@18 T@Field_4662_4663) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4589) (Heap1@@1 T@PolymorphicMapType_4589) (Mask1 T@PolymorphicMapType_4610) (Heap2@@0 T@PolymorphicMapType_4589) (Mask2 T@PolymorphicMapType_4610) ) (! (= (SumHeap Heap@@20 Heap1@@1 Mask1 Heap2@@0 Mask2)  (and (IdenticalOnKnownLocationsLiberal Heap1@@1 Heap@@20 Mask1) (IdenticalOnKnownLocationsLiberal Heap2@@0 Heap@@20 Mask2)))
 :qid |stdinbpl.150:15|
 :skolemid |24|
 :pattern ( (SumHeap Heap@@20 Heap1@@1 Mask1 Heap2@@0 Mask2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4589) (o_3 T@Ref) (f_10 T@Field_4649_12577) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_4589 (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@21) (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@21) (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@21) (store (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@21) o_3 f_10 v)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4589 (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@21) (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@21) (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@21) (store (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@21) o_3 f_10 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4589) (o_3@@0 T@Ref) (f_10@@0 T@Field_4649_12710) (v@@0 T@PolymorphicMapType_5154) ) (! (succHeap Heap@@22 (PolymorphicMapType_4589 (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@22) (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@22) (store (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@22) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@22)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4589 (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@22) (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@22) (store (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@22) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4589) (o_3@@1 T@Ref) (f_10@@1 T@Field_4662_4663) (v@@1 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_4589 (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@23) (store (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@23) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@23) (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@23)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4589 (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@23) (store (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@23) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@23) (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4589) (o_3@@2 T@Ref) (f_10@@2 T@Field_4649_53) (v@@2 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_4589 (store (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@24) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@24) (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@24) (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@24)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4589 (store (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@24) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@24) (|PolymorphicMapType_4589_4649_12754#PolymorphicMapType_4589| Heap@@24) (|PolymorphicMapType_4589_4649_12577#PolymorphicMapType_4589| Heap@@24)))
)))
(assert (forall ((o_3@@3 T@Ref) (f_8 T@Field_4662_4663) (Heap@@25 T@PolymorphicMapType_4589) ) (!  (=> (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@25) o_3@@3 $allocated) (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@25) (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@25) o_3@@3 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4589_2089_2090#PolymorphicMapType_4589| Heap@@25) o_3@@3 f_8))
)))
(assert (forall ((p@@1 T@Field_4649_12577) (v_1@@0 T@FrameType) (q T@Field_4649_12577) (w@@0 T@FrameType) (r T@Field_4649_12577) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4649_4649 p@@1 v_1@@0 q w@@0) (InsidePredicate_4649_4649 q w@@0 r u)) (InsidePredicate_4649_4649 p@@1 v_1@@0 r u))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_4649_4649 p@@1 v_1@@0 q w@@0) (InsidePredicate_4649_4649 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@0 () T@PolymorphicMapType_4589)
(declare-fun Mask@1 () T@PolymorphicMapType_4610)
(declare-fun c@0 () Int)
(declare-fun x () T@Ref)
(declare-fun LoopSumHeap@0 () T@PolymorphicMapType_4589)
(declare-fun Heap@@26 () T@PolymorphicMapType_4589)
(declare-fun Mask@0 () T@PolymorphicMapType_4610)
(declare-fun LoopSumMask@0 () T@PolymorphicMapType_4610)
(set-info :boogie-vc-id m_17)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon11_Else_correct true))
(let ((l_8_correct  (=> (state Heap@0 Mask@1) (=> (and (and (= c@0 5) (state Heap@0 Mask@1)) (and (state Heap@0 Mask@1) (= (ControlFlow 0 3) (- 0 2)))) (= (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| Mask@1) x g) (/ (to_real 0) (to_real 1)))))))
(let ((anon11_Then_correct  (=> (= c@0 5) (=> (and (SumHeap LoopSumHeap@0 Heap@@26 ZeroMask Heap@@26 Mask@0) (sumMask LoopSumMask@0 ZeroMask Mask@0)) (=> (and (and (state LoopSumHeap@0 LoopSumMask@0) (= Mask@1 LoopSumMask@0)) (and (= Heap@0 LoopSumHeap@0) (= (ControlFlow 0 5) 3))) l_8_correct)))))
(let ((anon10_Then_correct  (=> (state Heap@@26 ZeroMask) (=> (and (and (state Heap@@26 ZeroMask) (> c@0 0)) (and (state Heap@@26 ZeroMask) (state Heap@@26 ZeroMask))) (and (=> (= (ControlFlow 0 7) 5) anon11_Then_correct) (=> (= (ControlFlow 0 7) 6) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (not (> c@0 0)) (=> (and (state Heap@@26 Mask@0) (state Heap@@26 Mask@0)) (=> (and (and (state Heap@@26 Mask@0) (= Mask@1 Mask@0)) (and (= Heap@0 Heap@@26) (= (ControlFlow 0 4) 3))) l_8_correct)))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@26 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_4589_2086_53#PolymorphicMapType_4589| Heap@@26) x $allocated)) (and (state Heap@@26 ZeroMask) (not (= x null)))) (and (and (= Mask@0 (PolymorphicMapType_4610 (store (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| ZeroMask) x g (+ (select (|PolymorphicMapType_4610_2267_2268#PolymorphicMapType_4610| ZeroMask) x g) FullPerm)) (|PolymorphicMapType_4610_2267_53#PolymorphicMapType_4610| ZeroMask) (|PolymorphicMapType_4610_2267_12577#PolymorphicMapType_4610| ZeroMask) (|PolymorphicMapType_4610_2267_22302#PolymorphicMapType_4610| ZeroMask))) (state Heap@@26 Mask@0)) (and (state Heap@@26 Mask@0) (state Heap@@26 Mask@0)))) (and (and (=> (= (ControlFlow 0 8) 1) anon9_Then_correct) (=> (= (ControlFlow 0 8) 7) anon10_Then_correct)) (=> (= (ControlFlow 0 8) 4) anon10_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
